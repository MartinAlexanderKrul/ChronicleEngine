[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [switch]$Quiet,
    # Run the structural scan only, skipping the three composite gates this
    # script otherwise spawns as separate processes: generated-index
    # synchronization, runtime configuration, and runtime context budgets.
    #
    # For fixture tests this is the difference between 5.2s and about 1.2s per
    # invocation, because each composite gate costs a PowerShell launch plus a
    # Python launch. It loses no coverage: every one of the three is the
    # subject of its own suite (test_runtime_index_generation,
    # test_runtime_configuration, test_runtime_context_budget), so running them
    # again inside an unrelated fixture is duplicate work, not defence in depth.
    #
    # No production caller passes this. validate_live.ps1, new_checkpoint.ps1,
    # and /validate all run the full set.
    [switch]$CoreOnly
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$failures = [System.Collections.Generic.List[string]]::new()
$currentSchemaVersion = "0.1.5"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

function Add-Failure {
    param([string]$Message)
    $failures.Add($Message)
}

try {
    $root = (Resolve-Path -LiteralPath $RepositoryRoot).Path.TrimEnd([char[]]"\\/")
} catch {
    Write-Error "Repository root does not exist: $RepositoryRoot"
    exit 2
}

function Get-RelativePath {
    param([string]$Path)

    return $Path.Substring($root.Length).TrimStart([char[]]"\\/").Replace('\', '/')
}

# Line numbers are resolved from a per-file index rather than by re-scanning.
#
# The previous implementation took Substring(0, $Index) and counted newlines in
# it, once per match. That is O(n) per lookup over a copy of everything before
# the match, and the scan performs one lookup per identifier reference: 5,400+
# of them across the live set, against files up to 259 KB. The quadratic term
# was measured at 3.2 s of a 3.5 s run - the single largest cost in repository
# validation, and one that grows with every session played, because it scales
# with chronicle size on a gate that runs at every save.
#
# Building the newline offsets once per file and binary-searching them makes
# each lookup O(log n).
function New-LineIndex {
    param([string]$Text)

    $offsets = [System.Collections.Generic.List[int]]::new()
    foreach ($match in [regex]::Matches($Text, "`n")) {
        $offsets.Add($match.Index) | Out-Null
    }
    return , $offsets.ToArray()
}

function Get-LineNumber {
    param(
        [int[]]$LineIndex,
        [int]$Index
    )

    if ($Index -le 0) {
        return 1
    }
    # Count the newlines strictly before $Index; the line number is that plus one.
    $low = 0
    $high = $LineIndex.Length
    while ($low -lt $high) {
        # Floor, not [int]: PowerShell's [int] cast rounds to even, so
        # [int](3/2) is 2. That breaks the middle-below-high invariant and the
        # loop never terminates.
        $middle = [int][math]::Floor(($low + $high) / 2)
        if ($LineIndex[$middle] -lt $Index) {
            $low = $middle + 1
        } else {
            $high = $middle
        }
    }
    return $low + 1
}

function Get-IndentedSection {
    param(
        [string]$Block,
        [string]$Name
    )

    $lines = $Block -split "\r?\n"
    for ($index = 0; $index -lt $lines.Count; $index++) {
        if ($lines[$index] -notmatch "^([ \t]*)$([regex]::Escape($Name)):[ \t]*$") {
            continue
        }

        $baseIndent = $Matches[1].Length
        $captured = [System.Collections.Generic.List[string]]::new()
        for ($child = $index + 1; $child -lt $lines.Count; $child++) {
            $line = $lines[$child]
            if ([string]::IsNullOrWhiteSpace($line)) {
                $captured.Add($line)
                continue
            }
            $indent = ([regex]::Match($line, '^[ \t]*')).Value.Length
            if ($indent -le $baseIndent) {
                break
            }
            $captured.Add($line)
        }
        return ($captured -join "`n")
    }
    return $null
}

function Get-ListEntries {
    param([string]$Section)

    $entries = [System.Collections.Generic.List[string]]::new()
    if ([string]::IsNullOrWhiteSpace($Section)) {
        return $entries
    }

    $lines = $Section -split "\r?\n"
    $itemIndent = $null
    foreach ($line in $lines) {
        if ($line -match '^([ \t]*)-[ \t]+') {
            $itemIndent = $Matches[1].Length
            break
        }
    }
    if ($null -eq $itemIndent) {
        return $entries
    }

    $current = [System.Collections.Generic.List[string]]::new()
    foreach ($line in $lines) {
        if ($line -match '^([ \t]*)-[ \t]+' -and $Matches[1].Length -eq $itemIndent) {
            if ($current.Count -gt 0) {
                $entries.Add(($current -join "`n"))
                $current.Clear()
            }
        }
        if ($current.Count -gt 0 -or ($line -match '^([ \t]*)-[ \t]+' -and $Matches[1].Length -eq $itemIndent)) {
            $current.Add($line)
        }
    }
    if ($current.Count -gt 0) {
        $entries.Add(($current -join "`n"))
    }
    return $entries
}

function Get-EntryValue {
    param(
        [string]$Entry,
        [string]$Name
    )

    $pattern = '(?m)(?:^|[,{])[ \t-]*' + [regex]::Escape($Name) + ':[ \t]*"?([^,"}\r\n#]+)'
    $match = [regex]::Match($Entry, $pattern)
    if (-not $match.Success) {
        return $null
    }
    return $match.Groups[1].Value.Trim().Trim('"')
}

$registryPath = Join-Path $root "system/ID_REGISTRY.md"
if (-not (Test-Path -LiteralPath $registryPath -PathType Leaf)) {
    Add-Failure "Missing identifier registry: system/ID_REGISTRY.md"
} else {
    $registryText = Get-Content -Raw -LiteralPath $registryPath
}

$prefixForKind = @{
    Entity = "ENT"
    Record = "REC"
    Event = "EVT"
    Relationship = "REL"
}
$highWater = @{}
$allocationCoverage = @{
    ENT = @{}
    REC = @{}
    EVT = @{}
    REL = @{}
}

if (Test-Path -LiteralPath $registryPath -PathType Leaf) {
    $highWaterPattern = '(?m)^\|\s*(Entity|Record|Event|Relationship)\s*\|.*\|\s*((?:ENT|REC|EVT|REL)-(\d{6})|none)\s*\|\s*$'
    foreach ($match in [regex]::Matches($registryText, $highWaterPattern)) {
        $kind = $match.Groups[1].Value
        $prefix = $prefixForKind[$kind]
        $value = $match.Groups[2].Value

        if ($highWater.ContainsKey($prefix)) {
            Add-Failure "Registry contains more than one high-water mark for $prefix."
            continue
        }

        if ($value -eq "none") {
            $highWater[$prefix] = 0
        } elseif (-not $value.StartsWith("$prefix-")) {
            Add-Failure "Registry kind $kind uses the wrong prefix in high-water mark $value."
        } else {
            $highWater[$prefix] = [int]$match.Groups[3].Value
        }
    }

    foreach ($prefix in $allocationCoverage.Keys) {
        if (-not $highWater.ContainsKey($prefix)) {
            Add-Failure "Registry is missing the $prefix high-water mark."
        }
    }

    $allocationSection = [regex]::Match($registryText, '(?ms)^# Allocation Log\s*(.*?)(?=^# )')
    if (-not $allocationSection.Success) {
        Add-Failure "Registry is missing the Allocation Log section."
    } else {
        $rowPattern = '(?m)^\|\s*([^|]+?)\s*\|.*$'
        foreach ($row in [regex]::Matches($allocationSection.Groups[1].Value, $rowPattern)) {
            $rangeCell = $row.Groups[1].Value.Trim()
            $ids = [regex]::Matches($rangeCell, '(ENT|REC|EVT|REL)-(\d{6})')
            if ($ids.Count -eq 0) {
                continue
            }

            if ($ids.Count -gt 2) {
                Add-Failure "Allocation-log range has more than two endpoints: $rangeCell"
                continue
            }

            $prefix = $ids[0].Groups[1].Value
            $start = [int]$ids[0].Groups[2].Value
            $end = $start
            if ($ids.Count -eq 2) {
                if ($ids[1].Groups[1].Value -ne $prefix) {
                    Add-Failure "Allocation-log range crosses identifier kinds: $rangeCell"
                    continue
                }
                $end = [int]$ids[1].Groups[2].Value
            }

            if ($start -lt 1 -or $end -lt $start) {
                Add-Failure "Allocation-log range is invalid: $rangeCell"
                continue
            }

            for ($number = $start; $number -le $end; $number++) {
                if (-not $allocationCoverage[$prefix].ContainsKey($number)) {
                    $allocationCoverage[$prefix][$number] = [System.Collections.Generic.List[string]]::new()
                }
                $allocationCoverage[$prefix][$number].Add($rangeCell)
            }
        }
    }
}

$canonicalFiles = [System.Collections.Generic.List[System.IO.FileInfo]]::new()
foreach ($directoryName in @("worlds", "campaigns")) {
    $directory = Join-Path $root $directoryName
    if (-not (Test-Path -LiteralPath $directory -PathType Container)) {
        continue
    }

    # Immutable snapshots (saves) and durable transcripts (exports) are excluded from
    # live canon. Saves intentionally copy earlier object definitions (Decision 054).
    # Exports are primary evidence, not state: they establish no canon, run no
    # validation gate, and must record identifiers allocated during a session --
    # including sessions whose canon was never promoted (Decision 061).
    foreach ($file in Get-ChildItem -LiteralPath $directory -Recurse -File -Filter "*.md") {
        $relativePath = Get-RelativePath $file.FullName
        if ($relativePath -match '(^|/)(saves|\.saves|checkpoints|exports)(/|$)') {
            continue
        }
        $canonicalFiles.Add($file)
    }
}

# A resumable live campaign must use the standard ledger set. This prevents a
# prose-only campaign from passing merely because it contains no parseable
# object blocks to validate.
$campaignsRoot = Join-Path $root "campaigns"
if (Test-Path -LiteralPath $campaignsRoot -PathType Container) {
    $requiredCampaignLedgers = @(
        "100_CHARACTER_SHEET.md",
        "110_WORLD_LEDGER.md",
        "120_INVENTORY_AND_OWNERSHIP.md",
        "130_NPCS_AND_FACTIONS.md",
        "140_OBJECTIVES.md",
        "160_CAMPAIGN_CHRONICLE.md",
        "170_CHANGELOG.md",
        "180_CURRENT_STATE.md"
    )

    foreach ($campaignDirectory in Get-ChildItem -LiteralPath $campaignsRoot -Directory) {
        $entryPoint = Join-Path $campaignDirectory.FullName "180_CURRENT_STATE.md"
        if (-not (Test-Path -LiteralPath $entryPoint -PathType Leaf)) {
            continue
        }

        foreach ($ledgerName in $requiredCampaignLedgers) {
            $ledgerPath = Join-Path $campaignDirectory.FullName $ledgerName
            $relativeLedgerPath = Get-RelativePath $ledgerPath
            if (-not (Test-Path -LiteralPath $ledgerPath -PathType Leaf)) {
                Add-Failure "$($campaignDirectory.Name) is a live campaign but is missing required ledger $relativeLedgerPath."
                continue
            }

            $ledgerText = Get-Content -Raw -LiteralPath $ledgerPath
            if (-not [regex]::IsMatch($ledgerText, '(?m)^[ \t]*id:[ \t]*REC-\d{6}[ \t]*(?:#.*)?\r?$')) {
                Add-Failure "$relativeLedgerPath does not define its Canonical Record; prose-only ledgers are not conforming live canon."
            }
        }
    }
}

# The Engine Welcome Page renders its worlds-and-campaigns listing from
# system/WORLDS_AND_CAMPAIGNS.md. A campaign missing from that index is invisible
# at startup even when it is complete and committed, so coverage is mechanical.
# This proves every world and campaign is listed and that each row resolves; it
# cannot know whether a row's status or protagonist is still true.
$indexPath = Join-Path $root "system/WORLDS_AND_CAMPAIGNS.md"
if (-not (Test-Path -LiteralPath $indexPath -PathType Leaf)) {
    Add-Failure "Missing worlds and campaigns index: system/WORLDS_AND_CAMPAIGNS.md"
} else {
    $indexText = Get-Content -Raw -LiteralPath $indexPath

    $indexedWorlds = @{}
    $worldRowPattern = '(?m)^\|\s*`worlds/([^/`]+)/`\s*\|'
    foreach ($match in [regex]::Matches($indexText, $worldRowPattern)) {
        $name = $match.Groups[1].Value
        if ($indexedWorlds.ContainsKey($name)) {
            Add-Failure "system/WORLDS_AND_CAMPAIGNS.md lists world worlds/$name/ more than once."
            continue
        }
        $indexedWorlds[$name] = $true

        if (-not (Test-Path -LiteralPath (Join-Path $root "worlds/$name") -PathType Container)) {
            Add-Failure "system/WORLDS_AND_CAMPAIGNS.md lists worlds/$name/, which does not exist."
        }
    }

    $worldsRoot = Join-Path $root "worlds"
    if (Test-Path -LiteralPath $worldsRoot -PathType Container) {
        foreach ($worldDirectory in Get-ChildItem -LiteralPath $worldsRoot -Directory) {
            if (-not $indexedWorlds.ContainsKey($worldDirectory.Name)) {
                Add-Failure "worlds/$($worldDirectory.Name)/ has no row in system/WORLDS_AND_CAMPAIGNS.md; it would not appear on the Engine Welcome Page."
            }
        }
    }

    $indexedCampaigns = @{}
    $campaignRowPattern = '(?m)^\|\s*`campaigns/([^/`]+)/`\s*\|\s*`worlds/([^/`]+)/`\s*\|[^|]*\|[^|]*\|\s*(?:`([^`]+)`|none)\s*\|'
    foreach ($match in [regex]::Matches($indexText, $campaignRowPattern)) {
        $name = $match.Groups[1].Value
        if ($indexedCampaigns.ContainsKey($name)) {
            Add-Failure "system/WORLDS_AND_CAMPAIGNS.md lists campaign campaigns/$name/ more than once."
            continue
        }
        $indexedCampaigns[$name] = $true

        if (-not (Test-Path -LiteralPath (Join-Path $root "campaigns/$name") -PathType Container)) {
            Add-Failure "system/WORLDS_AND_CAMPAIGNS.md lists campaigns/$name/, which does not exist."
            continue
        }

        $worldName = $match.Groups[2].Value
        if (-not (Test-Path -LiteralPath (Join-Path $root "worlds/$worldName") -PathType Container)) {
            Add-Failure "system/WORLDS_AND_CAMPAIGNS.md gives campaigns/$name/ the world worlds/$worldName/, which does not exist."
        }

        if ($match.Groups[3].Success) {
            $checkpoint = $match.Groups[3].Value
            $checkpointPath = Join-Path $root "campaigns/$name/saves/$checkpoint"
            if (-not (Test-Path -LiteralPath $checkpointPath -PathType Container)) {
                Add-Failure "system/WORLDS_AND_CAMPAIGNS.md gives campaigns/$name/ the latest checkpoint $checkpoint, which is absent from campaigns/$name/saves/."
            }
        }
    }

    if (Test-Path -LiteralPath $campaignsRoot -PathType Container) {
        foreach ($campaignDirectory in Get-ChildItem -LiteralPath $campaignsRoot -Directory) {
            $entryPoint = Join-Path $campaignDirectory.FullName "180_CURRENT_STATE.md"
            if (-not (Test-Path -LiteralPath $entryPoint -PathType Leaf)) {
                continue
            }

            if (-not $indexedCampaigns.ContainsKey($campaignDirectory.Name)) {
                Add-Failure "campaigns/$($campaignDirectory.Name)/ is a live campaign but has no row in system/WORLDS_AND_CAMPAIGNS.md; it would not appear on the Engine Welcome Page."
            }
        }
    }

    $repositoryIndexGenerator = Join-Path $root "tools/generate_runtime_index.py"
    if (
        -not $CoreOnly -and
        $indexText -match '(?m)^\*\*Generated by:\*\* `tools/generate_runtime_index\.ps1`\s*$' -and
        (Test-Path -LiteralPath $repositoryIndexGenerator -PathType Leaf)
    ) {
        $indexGenerator = Join-Path $PSScriptRoot "generate_runtime_index.ps1"
        $previousErrorAction = $ErrorActionPreference
        $ErrorActionPreference = "Continue"
        $generationOutput = & powershell -NoProfile -ExecutionPolicy Bypass `
            -File $indexGenerator -RepositoryRoot $root -Check 2>&1 |
            ForEach-Object { $_.ToString() }
        $generationExitCode = $LASTEXITCODE
        $ErrorActionPreference = $previousErrorAction
        if ($generationExitCode -ne 0) {
            Add-Failure (
                "Generated runtime index is not synchronized (exit {0}): {1}" -f
                $generationExitCode,
                ($generationOutput -join " ")
            )
        }
    }
}

$definitions = @{}
$references = [System.Collections.Generic.List[object]]::new()
$objectCount = 0
# Decision 076: Relationship Texture coverage. Entity types are collected on the
# main pass; Relationship blocks are stashed and checked afterward, because a
# relationship's endpoints may be defined in a file read later than its own.
$entityTypes = @{}
$relationshipBlocks = [System.Collections.Generic.List[object]]::new()
$trackedCounters = @{}
$counterDeltas = [System.Collections.Generic.List[object]]::new()
$progressionBaselines = [System.Collections.Generic.List[object]]::new()
$progressionCandidates = [System.Collections.Generic.List[object]]::new()
$eventAuditData = [System.Collections.Generic.List[object]]::new()

# Progression ratification policy is world-authored, not validator-owned. Each World
# Rule Profile's trigger manifest declares, per progression domain, the evidence
# threshold and which candidate keys it has already authored complete results for.
# Reading it here is what lets a world author a second pre-authored result without
# touching this file. Only the two operational fields are read; eligibility meaning
# stays in the profile's own prose.
function Get-ProgressionRatificationPolicy {
    param([string]$RepositoryRoot)

    $policy = @{}
    $worldsRoot = Join-Path $RepositoryRoot "worlds"
    if (-not (Test-Path -LiteralPath $worldsRoot -PathType Container)) {
        return $policy
    }
    foreach ($worldDirectory in Get-ChildItem -LiteralPath $worldsRoot -Directory) {
        $profilePath = Join-Path $worldDirectory.FullName "206_WORLD_RULE_PROFILE.md"
        if (-not (Test-Path -LiteralPath $profilePath -PathType Leaf)) {
            continue
        }
        $profileText = Get-Content -LiteralPath $profilePath -Raw -Encoding UTF8
        # Scope the scan to the fenced trigger manifest. Without that bound a domain
        # body runs on through the rest of the profile's prose.
        $fencePattern = '(?ms)^```ya?ml[ \t]*\r?\n(?<manifest>.*?)^```[ \t]*$'
        $manifests = @(
            [regex]::Matches($profileText, $fencePattern) |
                Where-Object { $_.Groups['manifest'].Value -match 'trigger_manifest_version' } |
                ForEach-Object { $_.Groups['manifest'].Value }
        )
        # Each domain block runs from its 2-space key to the next 2-space key or the
        # end of the manifest. Deliberately not singleline: with `s` set, `.` matches
        # newlines and one domain body swallows every domain after it.
        $domainPattern = '(?m)^  (?<domain>[A-Za-z][\w.]*):\r?\n(?<body>(?:^    .*\r?\n?)*)'
        foreach ($domainMatch in ($manifests | ForEach-Object { [regex]::Matches($_, $domainPattern) })) {
            $body = $domainMatch.Groups['body'].Value
            if ($body -notmatch '(?m)^    settlement:\s*progression_audit\s*$') {
                continue
            }
            $threshold = $null
            if ($body -match '(?m)^      evidence_threshold:\s*(\d+)\s*$') {
                $threshold = [int]$Matches[1]
            }
            $preAuthored = @{}
            if ($body -match '(?ms)^      pre_authored_result_keys:\r?\n(?<keys>(?:^        - .*\r?\n)*)') {
                foreach ($keyLine in [regex]::Matches($Matches['keys'], '(?m)^        - (?<key>\S+)\s*$')) {
                    $preAuthored[$keyLine.Groups['key'].Value] = $true
                }
            }
            $settlementKinds = [System.Collections.Generic.List[string]]::new()
            if ($body -match '(?ms)^      settlement_event_kinds:\r?\n(?<kinds>(?:^        - .*\r?\n)*)') {
                foreach ($kindLine in [regex]::Matches($Matches['kinds'], '(?m)^        - (?<kind>\S+)\s*$')) {
                    $settlementKinds.Add($kindLine.Groups['kind'].Value) | Out-Null
                }
            }
            $policy[$domainMatch.Groups['domain'].Value] = [pscustomobject]@{
                EvidenceThreshold = $threshold
                PreAuthoredKeys = $preAuthored
                SettlementKinds = $settlementKinds
                SourcePath = "worlds/$($worldDirectory.Name)/206_WORLD_RULE_PROFILE.md"
            }
        }
    }
    return $policy
}

$progressionPolicy = Get-ProgressionRatificationPolicy -RepositoryRoot $root
# Personal relationship types require Texture. This is an allowlist rather than an
# institutional denylist on purpose: relationship type is free-form world vocabulary
# ("working-contact", "research-collaboration", "harvest-hire"), so a denylist can
# never keep up and would fail closed campaigns for using their own words. A
# coverage gate that under-fires is recoverable; one that fires falsely blocks all
# validation and gets deleted. Worlds add their own personal types here.
$personalRelationshipTypes = @(
    "personal", "family", "romantic", "friendship", "mentorship", "kinship"
)
$placeholderPattern = '(ENT|REC|EVT|REL)-XXXXXX|<(required|optional|generated):'
$identifierPattern = '(?<![A-Z0-9-])(ENT|REC|EVT|REL)-(\d{6})(?!\d)'
$definitionPattern = '(?m)^[ \t]*id:[ \t]*((ENT|REC|EVT|REL)-(\d{6}))[ \t]*(?:#.*)?\r?$'
$objectBlockPattern = '(?ms)^```ya?ml[ \t]*\r?\n(.*?)^```[ \t]*\r?$'

foreach ($file in $canonicalFiles) {
    $relativePath = Get-RelativePath $file.FullName
    $text = Get-Content -Raw -LiteralPath $file.FullName
    $lineIndex = New-LineIndex $text

    foreach ($match in [regex]::Matches($text, $placeholderPattern)) {
        $line = Get-LineNumber $lineIndex $match.Index
        Add-Failure "$relativePath`:$line contains unresolved placeholder $($match.Value)."
    }

    foreach ($match in [regex]::Matches($text, $identifierPattern)) {
        # Offset now, line number only if a failure needs to name one. The
        # consumer deduplicates by identifier and reports on a handful, so
        # resolving all 5,400+ eagerly cost thousands of calls for nothing.
        $references.Add([pscustomobject]@{
            Id = $match.Value
            Prefix = $match.Groups[1].Value
            Number = [int]$match.Groups[2].Value
            Path = $relativePath
            Index = $match.Index
            LineIndex = $lineIndex
        })
    }

    foreach ($match in [regex]::Matches($text, $definitionPattern)) {
        $id = $match.Groups[1].Value
        if (-not $definitions.ContainsKey($id)) {
            $definitions[$id] = [System.Collections.Generic.List[object]]::new()
        }
        $definitions[$id].Add([pscustomobject]@{
            Path = $relativePath
            Line = Get-LineNumber $lineIndex $match.Index
        })
    }

    foreach ($blockMatch in [regex]::Matches($text, $objectBlockPattern)) {
        $block = $blockMatch.Groups[1].Value
        $idMatch = [regex]::Match($block, $definitionPattern)
        if (-not $idMatch.Success) {
            continue
        }

        $objectCount++
        $id = $idMatch.Groups[1].Value
        $line = Get-LineNumber $lineIndex ($blockMatch.Index + $idMatch.Index)
        foreach ($field in @("canonical_record", "schema_version", "status", "provenance")) {
            if (-not [regex]::IsMatch($block, "(?m)^[ \\t]*$field[ \\t]*:")) {
                Add-Failure "$relativePath`:$line object $id is missing required field '$field'."
            }
        }

        foreach ($field in @("game_date", "real_date")) {
            if (-not [regex]::IsMatch($block, "(?m)^[ \\t]+$field[ \\t]*:")) {
                Add-Failure "$relativePath`:$line object $id provenance is missing required field '$field'."
            }
        }
        foreach ($legacyField in @("event_time", "record_time")) {
            if ([regex]::IsMatch($block, "(?m)^[ \\t]+$legacyField[ \\t]*:")) {
                Add-Failure "$relativePath`:$line object $id uses legacy provenance field '$legacyField'; Data Model 0.1.5 requires game_date/real_date."
            }
        }

        $schemaVersion = [regex]::Match($block, '(?m)^[ \t]*schema_version:[ \t]*"?([^"\s#]+)"?[ \t]*(?:#.*)?\r?$')
        if ($schemaVersion.Success -and $schemaVersion.Groups[1].Value -ne $currentSchemaVersion) {
            Add-Failure "$relativePath`:$line object $id declares schema_version '$($schemaVersion.Groups[1].Value)' but live canon must conform to current Data Model $currentSchemaVersion. Immutable checkpoints are excluded; restore and migrate older schemas explicitly before play."
        }

        $canonicalRecord = [regex]::Match($block, '(?m)^[ \t]*canonical_record:[ \t]*(REC-\d{6})[ \t]*(?:#.*)?\r?$')
        if (-not $canonicalRecord.Success) {
            Add-Failure "$relativePath`:$line object $id does not have one valid REC canonical_record reference."
        } elseif ($id.StartsWith("REC-") -and $canonicalRecord.Groups[1].Value -ne $id) {
            Add-Failure "$relativePath`:$line Canonical Record $id must reference itself as canonical_record."
        }

        # Decisions 079-080: collect typed counter and progression evidence.
        if ($id.StartsWith("ENT-")) {
            foreach ($entry in (Get-ListEntries (Get-IndentedSection $block "tracked_counters"))) {
                $path = Get-EntryValue $entry "path"
                $baselineValue = Get-EntryValue $entry "baseline_value"
                $baselineAsOf = Get-EntryValue $entry "baseline_as_of"
                $currentValue = Get-EntryValue $entry "current_value"
                if ([string]::IsNullOrWhiteSpace($path) -or
                    $baselineValue -notmatch '^-?\d+$' -or
                    $baselineAsOf -notmatch '^EVT-\d{6}$' -or
                    $currentValue -notmatch '^-?\d+$') {
                    Add-Failure "$relativePath`:$line entity $id has a malformed tracked_counters entry; path, integer baseline/current values, and baseline Event are required (Decision 079)."
                    continue
                }
                $key = "$id|$path"
                if ($trackedCounters.ContainsKey($key)) {
                    Add-Failure "$relativePath`:$line entity $id declares tracked counter '$path' more than once."
                    continue
                }
                $trackedCounters[$key] = [pscustomobject]@{
                    Subject = $id
                    Path = $path
                    BaselineValue = [int]$baselineValue
                    BaselineAsOf = $baselineAsOf
                    BaselineNumber = [int]$baselineAsOf.Substring(4)
                    CurrentValue = [int]$currentValue
                    SourcePath = $relativePath
                    SourceLine = $line
                }
            }

            # Profile 1.31 Section 7.2: every scope-axis skill carries a
            # scope_floor, so the ratchet has a value to hold. The list is the
            # Section 7.3 category-ladder table; a skill absent from the ledger
            # is not required to carry one.
            $scopeSkills = @('keen_sense', 'silent_step', 'exploit_pattern', 'field_command', 'resonance_extraction')
            $counterPaths = @(Get-ListEntries (Get-IndentedSection $block "tracked_counters") |
                ForEach-Object { Get-EntryValue $_ "path" })
            foreach ($skill in $scopeSkills) {
                if ($counterPaths -contains "skills.$skill.successful_uses" -and
                    $counterPaths -notcontains "skills.$skill.scope_floor") {
                    Add-Failure "$relativePath`:$line entity $id knows $skill but is missing a scope_floor tracked_counters entry (Gatefall Profile 1.31 Section 7.2)."
                }
            }

            # Gatefall Profile 1.35 Section 7.2: a skill may not stand at a Rank
            # its Section 7.3 ladder does not author. Ascension eligibility
            # withholds the offer, so a Rank above the authored ceiling can only
            # mean the guard was bypassed -- and the mastery an ascension spends
            # cannot be returned (Rules Section 13.2). Both the scope ladder and
            # the capability ladder top out at C-Rank today; Section 20.3 authors
            # higher rungs at the checkpoint where each becomes reachable, and
            # this ceiling moves with them.
            $ladderVersionMatch = [regex]::Match($block, 'profile_version:[ \t]*"(\d+\.\d+)"')
            if ($id -eq "ENT-000125" -and $ladderVersionMatch.Success -and
                [version]$ladderVersionMatch.Groups[1].Value -ge [version]"1.35") {
                $ladderSkills = @(
                    "Keen Sense", "Silent Step", "Exploit Pattern", "Field Command",
                    "Resonance Extraction", "Sprint", "Flash Step"
                )
                $ladderRankOrder = @("E", "D", "C", "B", "A", "S")
                $highestAuthoredIndex = [array]::IndexOf($ladderRankOrder, "C")
                $ladderSection = Get-IndentedSection $block "skills_known"
                foreach ($ladderSkill in $ladderSkills) {
                    $ladderMatch = [regex]::Match($ladderSection, '"' + [regex]::Escape($ladderSkill) + ' \[([EDCBAS])-Rank\]')
                    if (-not $ladderMatch.Success) { continue }
                    $heldRank = $ladderMatch.Groups[1].Value
                    if ([array]::IndexOf($ladderRankOrder, $heldRank) -gt $highestAuthoredIndex) {
                        Add-Failure "$relativePath`:$line entity $id holds $ladderSkill at $heldRank-Rank, which exceeds its authored category ladder (Gatefall Profile 1.35 Section 7.2; Section 7.3 authors through C-Rank)."
                    }
                }
            }

            # Gatefall Profile 1.33 Section 4.4: Stat Passive Rank is derived
            # from the governing base Stat and clamped to System Rank + 1.
            # The rendered skill row must agree with that derivation, and the
            # class may carry successful_uses but no mastery/ascension state.
            $profileVersionMatch = [regex]::Match($block, 'profile_version:[ \t]*"(\d+\.\d+)"')
            if ($id -eq "ENT-000125" -and
                $profileVersionMatch.Success -and
                [version]$profileVersionMatch.Groups[1].Value -ge [version]"1.33") {
                $statSection = Get-IndentedSection $block "stats"
                $skillsSection = Get-IndentedSection $block "skills_known"
                $systemRankMatch = [regex]::Match($block, '(?m)^[ \t]+system_rank:[ \t]*([EDCBAS])(?:-Rank)?[ \t]*$')
                if ([string]::IsNullOrWhiteSpace($statSection) -or
                    [string]::IsNullOrWhiteSpace($skillsSection) -or
                    -not $systemRankMatch.Success) {
                    Add-Failure "$relativePath`:$line Gatefall Profile 1.33 Bearer is missing base Stats, skills_known, or System Rank needed to derive Stat Passives."
                } else {
                    $rankLadder = @("E", "D", "C", "B", "A", "S")
                    $thresholds = @(30, 36, 44, 54, 66, 80)
                    $systemRankIndex = [array]::IndexOf($rankLadder, $systemRankMatch.Groups[1].Value)
                    $ceilingIndex = [math]::Min($rankLadder.Count - 1, $systemRankIndex + 1)
                    # Profile 1.36 Section 4.4 adds a second clamp beside the
                    # ceiling: a Stat Passive may not stand at a Rank its own
                    # ladder does not author. Unlike an ascension there is no
                    # offer to withhold here -- the Rank rises on its own when
                    # the Stat crosses a threshold -- so without this the skill
                    # would hold a Rank whose grant does not exist. Flux Sight
                    # is authored to S; the four that absorbed the old Stat-50
                    # skills are authored through C until Section 20.3 reaches
                    # higher, and this clamp moves with them.
                    $statPassives = @(
                        @{ Name = "Flux Sight"; Key = "flux_sight"; Stat = "perception"; Authored = "S" },
                        @{ Name = "Overpower"; Key = "overpower"; Stat = "strength"; Authored = "C" },
                        @{ Name = "Pre-empt"; Key = "pre_empt"; Stat = "agility"; Authored = "C" },
                        @{ Name = "Multitask"; Key = "multitask"; Stat = "intelligence"; Authored = "C" },
                        @{ Name = "Shrug Off"; Key = "shrug_off"; Stat = "vitality"; Authored = "C" }
                    )

                    foreach ($passive in $statPassives) {
                        $statMatch = [regex]::Match($statSection, "(?m)^[ \t]+$($passive.Stat):[ \t]*(\d+)[ \t]*$")
                        if (-not $statMatch.Success) {
                            Add-Failure "$relativePath`:$line Stat Passive '$($passive.Name)' has no numeric base $($passive.Stat) value."
                            continue
                        }

                        $statValue = [int]$statMatch.Groups[1].Value
                        $derivedIndex = -1
                        for ($thresholdIndex = 0; $thresholdIndex -lt $thresholds.Count; $thresholdIndex++) {
                            if ($statValue -ge $thresholds[$thresholdIndex]) {
                                $derivedIndex = $thresholdIndex
                            }
                        }
                        if ($derivedIndex -lt 0) {
                            Add-Failure "$relativePath`:$line Stat Passive '$($passive.Name)' is present below its E-Rank threshold."
                            continue
                        }

                        $authoredIndex = [array]::IndexOf($rankLadder, $passive.Authored)
                        $expectedIndex = [math]::Min([math]::Min($derivedIndex, $ceilingIndex), $authoredIndex)
                        $expectedRank = $rankLadder[$expectedIndex]
                        $renderPattern = [regex]::Escape($passive.Name) + " \[$expectedRank-Rank\][^\r\n]+Stat Passive"
                        if ($skillsSection -notmatch $renderPattern) {
                            Add-Failure "$relativePath`:$line Stat Passive '$($passive.Name)' does not render derived Rank $expectedRank with the Stat Passive class label."
                        }

                        $usePath = "skills.$($passive.Key).successful_uses"
                        if ($counterPaths -notcontains $usePath) {
                            Add-Failure "$relativePath`:$line Stat Passive '$($passive.Name)' is missing its successful_uses counter."
                        }
                        foreach ($forbiddenSuffix in @("rank", "mastery_level", "mastery_progress", "qualifying_scenes_total", "rank_ascensions", "scope_floor")) {
                            if ($counterPaths -contains "skills.$($passive.Key).$forbiddenSuffix") {
                                Add-Failure "$relativePath`:$line Stat Passive '$($passive.Name)' carries forbidden stored $forbiddenSuffix state."
                            }
                        }
                    }

                    if (@($counterPaths | Where-Object { $_ -like "skills.rank_sight.*" }).Count -gt 0) {
                        Add-Failure "$relativePath`:$line retired Rank-Sight counter path survives Profile 1.33 migration."
                    }
                }
            }

            foreach ($entry in (Get-ListEntries (Get-IndentedSection $block "progression_audit_baselines"))) {
                $domain = Get-EntryValue $entry "domain"
                $baselineAsOf = Get-EntryValue $entry "baseline_as_of"
                if ([string]::IsNullOrWhiteSpace($domain) -or $baselineAsOf -notmatch '^EVT-\d{6}$') {
                    Add-Failure "$relativePath`:$line entity $id has a malformed progression_audit_baselines entry."
                    continue
                }
                $progressionBaselines.Add([pscustomobject]@{
                    Subject = $id
                    Domain = $domain
                    BaselineAsOf = $baselineAsOf
                    BaselineNumber = [int]$baselineAsOf.Substring(4)
                    SourcePath = $relativePath
                    SourceLine = $line
                })
            }

            foreach ($entry in (Get-ListEntries (Get-IndentedSection $block "progression_candidates"))) {
                $domain = Get-EntryValue $entry "domain"
                $candidateKey = Get-EntryValue $entry "key"
                $signature = Get-EntryValue $entry "signature"
                $candidateStatus = Get-EntryValue $entry "status"
                $resolutionEvent = Get-EntryValue $entry "resolution_event"
                $resultRef = Get-EntryValue $entry "result_ref"
                $rejectionReason = Get-EntryValue $entry "rejection_reason"
                $evidence = @([regex]::Matches($entry, '(EVT-\d{6})#([a-z0-9][a-z0-9._-]*)') | ForEach-Object { $_.Value })
                if ([string]::IsNullOrWhiteSpace($domain) -or
                    [string]::IsNullOrWhiteSpace($candidateKey) -or
                    [string]::IsNullOrWhiteSpace($signature) -or
                    @("tracking", "pending-classification", "pending-ratification", "ratified", "rejected") -notcontains $candidateStatus) {
                    Add-Failure "$relativePath`:$line entity $id has a malformed progression candidate."
                    continue
                }
                if (@($evidence | Select-Object -Unique).Count -ne @($evidence).Count) {
                    Add-Failure "$relativePath`:$line progression candidate '$domain/$candidateKey' repeats an Event-and-scene evidence reference."
                }
                if ($candidateStatus -eq "ratified" -and
                    ($resolutionEvent -notmatch '^EVT-\d{6}$' -or [string]::IsNullOrWhiteSpace($resultRef))) {
                    Add-Failure "$relativePath`:$line ratified progression candidate '$domain/$candidateKey' requires resolution_event and result_ref."
                }
                if ($candidateStatus -eq "rejected" -and [string]::IsNullOrWhiteSpace($rejectionReason)) {
                    Add-Failure "$relativePath`:$line rejected progression candidate '$domain/$candidateKey' requires rejection_reason."
                }
                $progressionCandidates.Add([pscustomobject]@{
                    Subject = $id
                    Domain = $domain
                    Key = $candidateKey
                    Status = $candidateStatus
                    Evidence = $evidence
                    SourcePath = $relativePath
                    SourceLine = $line
                })
            }
        } elseif ($id.StartsWith("EVT-")) {
            $eventNumber = [int]$id.Substring(4)
            foreach ($entry in (Get-ListEntries (Get-IndentedSection $block "counter_deltas"))) {
                $subject = Get-EntryValue $entry "subject"
                $counter = Get-EntryValue $entry "counter"
                $delta = Get-EntryValue $entry "delta"
                if ($subject -notmatch '^ENT-\d{6}$' -or [string]::IsNullOrWhiteSpace($counter) -or
                    $delta -notmatch '^-?\d+$' -or [int]$delta -eq 0) {
                    Add-Failure "$relativePath`:$line Event $id has a malformed counter_deltas entry."
                    continue
                }
                # Gatefall Profile 1.33 renamed the five Stat Passive use
                # paths without changing identity or values. Historical
                # Events retain the path current when they occurred; map
                # those legacy names onto the live counter for arithmetic.
                if ($subject -eq "ENT-000125") {
                    $statPassiveCounterAliases = @{
                        "skills.rank_sight.successful_material_applications" = "skills.flux_sight.successful_uses"
                        "skills.overpower.successful_material_applications" = "skills.overpower.successful_uses"
                        "skills.pre_empt.successful_material_applications" = "skills.pre_empt.successful_uses"
                        "skills.multitask.successful_material_applications" = "skills.multitask.successful_uses"
                        "skills.shrug_off.successful_material_applications" = "skills.shrug_off.successful_uses"
                    }
                    if ($statPassiveCounterAliases.ContainsKey($counter)) {
                        $counter = $statPassiveCounterAliases[$counter]
                    }
                }
                $counterDeltas.Add([pscustomobject]@{
                    Event = $id
                    EventNumber = $eventNumber
                    Subject = $subject
                    Counter = $counter
                    Delta = [int]$delta
                    SourcePath = $relativePath
                    SourceLine = $line
                })
            }

            $audits = [System.Collections.Generic.List[object]]::new()
            foreach ($entry in (Get-ListEntries (Get-IndentedSection $block "progression_audits"))) {
                $subject = Get-EntryValue $entry "subject"
                $domain = Get-EntryValue $entry "domain"
                $result = Get-EntryValue $entry "result"
                $candidate = Get-EntryValue $entry "candidate"
                $scene = Get-EntryValue $entry "scene"
                $disposition = Get-EntryValue $entry "disposition"
                $valid = $subject -match '^ENT-\d{6}$' -and
                    -not [string]::IsNullOrWhiteSpace($domain) -and
                    @("none", "evidence-recorded", "pending-classification") -contains $result
                if ($result -eq "none") {
                    $valid = $valid -and [string]::IsNullOrWhiteSpace($candidate) -and
                        [string]::IsNullOrWhiteSpace($scene) -and [string]::IsNullOrWhiteSpace($disposition)
                } else {
                    $valid = $valid -and -not [string]::IsNullOrWhiteSpace($candidate) -and
                        -not [string]::IsNullOrWhiteSpace($scene) -and
                        @("qualifying", "ambiguous") -contains $disposition
                    if ($result -eq "evidence-recorded") {
                        $valid = $valid -and $disposition -eq "qualifying"
                    } elseif ($result -eq "pending-classification") {
                        $valid = $valid -and $disposition -eq "ambiguous"
                    }
                }
                if (-not $valid) {
                    Add-Failure "$relativePath`:$line Event $id has a malformed progression_audits entry."
                    continue
                }
                $audits.Add([pscustomobject]@{ Subject = $subject; Domain = $domain; Result = $result })
            }
            $sourceMatch = [regex]::Match($block, '(?m)^[ \t]+source:[ \t]*([^#\r\n]+)')
            $kindMatch = [regex]::Match($block, '(?m)^[ \t]*kind:[ \t]*([^#\r\n]+)')
            $eventAuditData.Add([pscustomobject]@{
                Event = $id
                EventNumber = $eventNumber
                Source = if ($sourceMatch.Success) { $sourceMatch.Groups[1].Value.Trim().Trim('"') } else { "" }
                Kind = if ($kindMatch.Success) { $kindMatch.Groups[1].Value.Trim().Trim('"') } else { "" }
                Block = $block
                Audits = $audits
                SourcePath = $relativePath
                SourceLine = $line
            })
        }

        # Presence invariants (Decision 073; 011_ENGINE_DATA_MODEL.md Sections 7.1, 9.2, 12.3).
        # Presence has exactly one structural owner: the entity's canonical_state.location.
        $locationLines = [regex]::Matches($block, '(?m)^[ \t]*location[ \t]*:[ \t]*(.*?)[ \t]*\r?$')
        if ($locationLines.Count -gt 1) {
            Add-Failure "$relativePath`:$line object $id declares more than one location; presence has exactly one owner (Decision 073)."
        }
        foreach ($locationLine in $locationLines) {
            $locationValue = $locationLine.Groups[1].Value.Trim().Trim('"')
            if ($locationValue -match 'carried by' -and $locationValue -notmatch '^carried by ENT-\d{6}$') {
                Add-Failure "$relativePath`:$line object $id has a carried-by location that is not the bare 'carried by ENT-######' form; presence-by-possession names the possessor alone and asserts no place of its own (Decision 073)."
            }
        }
        if ($relativePath -match '^campaigns/' -and
            [regex]::IsMatch($block, '(?m)^[ \t]*type:[ \t]*Character[ \t]*\r?$') -and
            [regex]::IsMatch($block, '(?m)^[ \t]*status:[ \t]*active[ \t]*\r?$') -and
            $locationLines.Count -ne 1) {
            Add-Failure "$relativePath`:$line active Character $id must declare exactly one canonical_state.location; presence is owned by the entity's own record (Decision 073)."
        }

        # Decision 076: gather what the Relationship Texture check needs.
        if ($id.StartsWith("ENT-")) {
            $entityType = [regex]::Match($block, '(?m)^[ \t]*type:[ \t]*(.+?)[ \t]*\r?$')
            if ($entityType.Success) {
                $entityTypes[$id] = $entityType.Groups[1].Value.Trim().Trim('"')
            }
        } elseif ($id.StartsWith("REL-")) {
            $relationshipBlocks.Add([pscustomobject]@{
                Id = $id
                Block = $block
                Path = $relativePath
                Line = $line
            })
        }
    }
}

# Decision 079 - every declared counter is arithmetic, not trusted prose.
foreach ($delta in $counterDeltas) {
    $key = "$($delta.Subject)|$($delta.Counter)"
    if (-not $trackedCounters.ContainsKey($key)) {
        Add-Failure "$($delta.SourcePath)`:$($delta.SourceLine) Event $($delta.Event) changes undeclared tracked counter '$($delta.Counter)' on $($delta.Subject)."
        continue
    }
    if ($delta.EventNumber -le $trackedCounters[$key].BaselineNumber) {
        Add-Failure "$($delta.SourcePath)`:$($delta.SourceLine) Event $($delta.Event) declares a delta at or before counter '$($delta.Counter)' baseline $($trackedCounters[$key].BaselineAsOf)."
    }
}

foreach ($entry in $trackedCounters.GetEnumerator()) {
    $counter = $entry.Value
    if (-not $definitions.ContainsKey($counter.BaselineAsOf)) {
        Add-Failure "$($counter.SourcePath)`:$($counter.SourceLine) tracked counter '$($counter.Path)' uses undefined baseline Event $($counter.BaselineAsOf)."
    }
    $sum = 0
    foreach ($delta in $counterDeltas) {
        if ($delta.Subject -eq $counter.Subject -and $delta.Counter -eq $counter.Path -and
            $delta.EventNumber -gt $counter.BaselineNumber) {
            $sum += $delta.Delta
        }
    }
    $expected = $counter.BaselineValue + $sum
    if ($counter.CurrentValue -ne $expected) {
        Add-Failure "$($counter.SourcePath)`:$($counter.SourceLine) tracked counter '$($counter.Path)' on $($counter.Subject) is $($counter.CurrentValue), but baseline $($counter.BaselineValue) plus Event deltas $sum requires $expected (Decision 079)."
    }
}

# Decision 080 - candidate evidence and post-baseline audit coverage.
$baselineKeys = @{}
foreach ($baseline in $progressionBaselines) {
    $key = "$($baseline.Subject)|$($baseline.Domain)"
    if ($baselineKeys.ContainsKey($key)) {
        Add-Failure "$($baseline.SourcePath)`:$($baseline.SourceLine) repeats progression audit baseline '$($baseline.Domain)' for $($baseline.Subject)."
    } else {
        $baselineKeys[$key] = $baseline
    }
    if (-not $definitions.ContainsKey($baseline.BaselineAsOf)) {
        Add-Failure "$($baseline.SourcePath)`:$($baseline.SourceLine) progression baseline '$($baseline.Domain)' uses undefined Event $($baseline.BaselineAsOf)."
    }
}

$candidateKeys = @{}
foreach ($candidate in $progressionCandidates) {
    $key = "$($candidate.Subject)|$($candidate.Domain)|$($candidate.Key)"
    if ($candidateKeys.ContainsKey($key)) {
        Add-Failure "$($candidate.SourcePath)`:$($candidate.SourceLine) repeats progression candidate '$($candidate.Domain)/$($candidate.Key)' for $($candidate.Subject)."
    } else {
        $candidateKeys[$key] = $true
    }
    foreach ($evidenceRef in $candidate.Evidence) {
        $eventId = $evidenceRef.Split('#')[0]
        if (-not $definitions.ContainsKey($eventId)) {
            Add-Failure "$($candidate.SourcePath)`:$($candidate.SourceLine) progression candidate '$($candidate.Domain)/$($candidate.Key)' cites undefined evidence Event $eventId."
        }
    }
    $domainPolicy = $progressionPolicy[$candidate.Domain]
    if ($null -ne $domainPolicy -and $null -ne $domainPolicy.EvidenceThreshold) {
        $threshold = $domainPolicy.EvidenceThreshold
        $evidenceCount = @($candidate.Evidence).Count
        if ($evidenceCount -ge $threshold -and $candidate.Status -eq "tracking") {
            Add-Failure "$($candidate.SourcePath)`:$($candidate.SourceLine) candidate '$($candidate.Domain)/$($candidate.Key)' has at least $threshold distinct evidence references but remains tracking; $($domainPolicy.SourcePath) requires pending-ratification or a resolved state."
        }
        if ($domainPolicy.PreAuthoredKeys.ContainsKey($candidate.Key) -and
            $evidenceCount -ge $threshold -and $candidate.Status -ne "ratified") {
            Add-Failure "$($candidate.SourcePath)`:$($candidate.SourceLine) candidate '$($candidate.Domain)/$($candidate.Key)' is declared pre-authored and has at least $threshold evidence references; $($domainPolicy.SourcePath) requires automatic ratification."
        }
    }
}

foreach ($baseline in $progressionBaselines) {
    $domainPolicy = $progressionPolicy[$baseline.Domain]
    if ($null -eq $domainPolicy -or $domainPolicy.SettlementKinds.Count -eq 0) {
        continue
    }
    foreach ($eventData in $eventAuditData) {
        $isProgressionSettlement = $eventData.Kind -in $domainPolicy.SettlementKinds
        if ($eventData.EventNumber -le $baseline.BaselineNumber -or
            -not $isProgressionSettlement -or
            -not [regex]::IsMatch($eventData.Block, "(?m)^[ \t]*-[ \t]*$([regex]::Escape($baseline.Subject))[ \t]*\r?$")) {
            continue
        }
        $covered = @($eventData.Audits | Where-Object {
            $_.Subject -eq $baseline.Subject -and $_.Domain -eq $baseline.Domain
        })
        if (@($covered).Count -eq 0) {
            Add-Failure "$($eventData.SourcePath)`:$($eventData.SourceLine) Event $($eventData.Event) closes a post-baseline qualifying scene involving $($baseline.Subject) but has no '$($baseline.Domain)' progression audit (Decision 080 / $($domainPolicy.SourcePath))."
        }
    }
}

# --- The promotion barrier owes a settlement Event -------------------------
#
# Profile Section 7.1 splits the audit in two: a dangerous scene settles at its
# own close under `kind: dangerous-scene-settlement`, while consequential work
# and structured practice only *seal* notes and are classified in one batch at
# the next promotion barrier, which "creates one canon-bearing
# progression-batch-settlement Event containing the Bearer and the required
# progression_audits entries" and records "one explicit none" when nothing
# qualifies.
#
# The check above verifies those Events when they exist. Nothing verified that
# the barrier ever produced one -- and across four campaigns and thirty-five
# Gatefall checkpoints, neither kind has ever been written. The deferred half of
# the audit had therefore never run: sealed notes had nowhere to go, and a
# practice scene that opened a candidate was indistinguishable from one that did
# not. It surfaced only when an owner re-read a drill scene by hand
# (`EVT-000174`, the Milo footwork drill of `EVT-000167`).
#
# So this asserts the writer's obligation rather than the record's shape: at
# rest, no play Event may sit newer than the newest settlement Event. One
# settlement per barrier discharges it, which is what the profile already asks
# for and costs one Event per checkpoint rather than an audit per scene.
#
# Bookkeeping kinds are exempt because they close no scene and seal no notes.
# The set is closed and listed here rather than inferred, so adding a kind is a
# deliberate act.
$progressionExemptKinds = @(
    'ruling', 'correction', 'settlement-correction', 'canon-continuity-repair',
    'profile-adoption', 'system-profile-adoption', 'profile-migration',
    'profile-additive-upgrade', 'rules-migration', 'world-rule-migration',
    'schema-and-profile-migration', 'system-shop-rotation', 'campaign-start',
    'world-fact', 'detection', 'allocation', 'escalation', 'briefing', 're-ranking'
)
foreach ($baseline in $progressionBaselines) {
    $domainPolicy = $progressionPolicy[$baseline.Domain]
    if ($null -eq $domainPolicy -or $domainPolicy.SettlementKinds.Count -eq 0) { continue }
    $progressionSettlementKinds = $domainPolicy.SettlementKinds

    $subjectPattern = "(?m)^[ \t]*-[ \t]*$([regex]::Escape($baseline.Subject))[ \t]*$"
    $relevant = @($eventAuditData | Where-Object {
        $_.EventNumber -gt $baseline.BaselineNumber -and
        [regex]::IsMatch($_.Block, $subjectPattern)
    })
    if ($relevant.Count -eq 0) { continue }

    $settlements = @($relevant | Where-Object { $_.Kind -in $progressionSettlementKinds })
    $lastSettlement = $baseline.BaselineNumber
    if ($settlements.Count -gt 0) {
        $lastSettlement = ($settlements | Sort-Object EventNumber -Descending | Select-Object -First 1).EventNumber
    }

    $unsettled = @($relevant | Where-Object {
        $_.Kind -notin $progressionExemptKinds -and
        $_.Kind -notin $progressionSettlementKinds -and
        $_.EventNumber -gt $lastSettlement
    } | Sort-Object EventNumber)

    if ($unsettled.Count -gt 0) {
        $first = $unsettled[0]
        $names = (($unsettled | Select-Object -First 5 | ForEach-Object { $_.Event }) -join ', ')
        if ($unsettled.Count -gt 5) { $names += ", ... ($($unsettled.Count) total)" }
        Add-Failure "$($first.SourcePath)`:$($first.SourceLine) $($unsettled.Count) play Event(s) involving $($baseline.Subject) sit after the last '$($baseline.Domain)' settlement: $names. Profile Section 7.1 requires the promotion barrier to classify sealed work/practice notes in one 'progression-batch-settlement' Event carrying the required audits, including an explicit 'none' when nothing qualifies. Write that Event at the checkpoint."
    }
}

# Decision 076 — Relationship Texture coverage.
# A relationship between two Characters that is not institutional records how the
# two behave toward one another. This is a PRESENCE check only: it never inspects
# the content, for the reason Decision 071 gives when declining to adjudicate
# whether an index row is still true.
foreach ($relationship in $relationshipBlocks) {
    $typeMatch = [regex]::Match($relationship.Block, '(?m)^[ \t]*type:[ \t]*(.+?)[ \t]*\r?$')
    if (-not $typeMatch.Success) {
        continue
    }
    $relationshipType = $typeMatch.Groups[1].Value.Trim().Trim('"')
    if ($personalRelationshipTypes -notcontains $relationshipType) {
        continue
    }

    $endpointIds = @([regex]::Matches($relationship.Block, '(?m)^[ \t]*-[ \t]*(ENT-\d{6})[ \t]*\r?$') |
        ForEach-Object { $_.Groups[1].Value })
    if ($endpointIds.Count -ne 2) {
        continue
    }

    $bothCharacters = $true
    foreach ($endpointId in $endpointIds) {
        if (-not $entityTypes.ContainsKey($endpointId) -or $entityTypes[$endpointId] -ne "Character") {
            $bothCharacters = $false
        }
    }
    if (-not $bothCharacters) {
        continue
    }

    if (-not [regex]::IsMatch($relationship.Block, '(?m)^[ \t]*texture[ \t]*:[ \t]*\S')) {
        Add-Failure "$($relationship.Path)`:$($relationship.Line) Relationship $($relationship.Id) is type '$relationshipType' between two Characters, so it must record a non-empty 'texture' - how these two behave toward one another (Decision 076; 011_ENGINE_DATA_MODEL.md Section 10). If the manner was never captured, say so in the field rather than inventing it."
    }
}

foreach ($entry in $definitions.GetEnumerator()) {
    if ($entry.Value.Count -gt 1) {
        $locations = ($entry.Value | ForEach-Object { "$($_.Path):$($_.Line)" }) -join ", "
        Add-Failure "Identifier $($entry.Key) is defined more than once in live canon: $locations."
    }
}

foreach ($prefix in $allocationCoverage.Keys) {
    if (-not $highWater.ContainsKey($prefix)) {
        continue
    }

    for ($number = 1; $number -le $highWater[$prefix]; $number++) {
        if (-not $allocationCoverage[$prefix].ContainsKey($number)) {
            Add-Failure ("Registry allocation log does not cover {0}-{1:D6}." -f $prefix, $number)
        } elseif ($allocationCoverage[$prefix][$number].Count -gt 1) {
            $rows = $allocationCoverage[$prefix][$number] -join ", "
            Add-Failure ("Registry allocation log covers {0}-{1:D6} more than once: {2}." -f $prefix, $number, $rows)
        }
    }
}

$checkedReferences = @{}
foreach ($reference in $references) {
    if ($checkedReferences.ContainsKey($reference.Id)) {
        continue
    }
    $checkedReferences[$reference.Id] = $true

    if ($reference.Number -lt 1) {
        Add-Failure "$($reference.Path):$(Get-LineNumber $reference.LineIndex $reference.Index) references invalid identifier $($reference.Id)."
        continue
    }

    if (-not $highWater.ContainsKey($reference.Prefix)) {
        continue
    }

    if ($reference.Number -gt $highWater[$reference.Prefix]) {
        Add-Failure "$($reference.Path):$(Get-LineNumber $reference.LineIndex $reference.Index) references $($reference.Id), above registry high-water mark $($reference.Prefix)-$($highWater[$reference.Prefix].ToString('D6'))."
    }

    if (-not $allocationCoverage[$reference.Prefix].ContainsKey($reference.Number)) {
        Add-Failure "$($reference.Path):$(Get-LineNumber $reference.LineIndex $reference.Index) references $($reference.Id), which has no allocation-log entry."
    }

    if (-not $definitions.ContainsKey($reference.Id)) {
        Add-Failure "$($reference.Path):$(Get-LineNumber $reference.LineIndex $reference.Index) references $($reference.Id), which has no live object definition."
    }
}

# Structured object-block gate (R10). The scan above proves required fields are
# present by pattern; this proves each block is well-formed YAML with no
# duplicate keys, one object per block, and correctly typed required fields.
$blockValidator = Join-Path $PSScriptRoot "validate_object_blocks.ps1"
if (-not $CoreOnly -and (Test-Path -LiteralPath $blockValidator -PathType Leaf)) {
    $blockOutput = & powershell -NoProfile -ExecutionPolicy Bypass -File $blockValidator `
        -RepositoryRoot $root -Quiet 2>&1 | ForEach-Object { $_.ToString() }
    if ($LASTEXITCODE -ne 0) {
        foreach ($detail in @($blockOutput | Where-Object { $_ -match '^\s+-\s+(.+)$' })) {
            Add-Failure ("Object blocks: " + $detail.Trim().TrimStart([char[]]'- '))
        }
        if (-not @($blockOutput | Where-Object { $_ -match '^\s+-\s+' })) {
            Add-Failure ("Object block validation failed: " + ($blockOutput -join ' '))
        }
    }
}

$runtimeValidator = Join-Path $PSScriptRoot "validate_runtime_configuration.ps1"
$runtimeExitCode = 0
$runtimeOutput = @()
if (-not $CoreOnly) {
    $runtimeOutput = & powershell -NoProfile -ExecutionPolicy Bypass -File $runtimeValidator `
        -RepositoryRoot $root -Quiet 2>&1 | ForEach-Object { $_.ToString() }
    $runtimeExitCode = $LASTEXITCODE
}
if ($runtimeExitCode -ne 0) {
    $runtimeDetails = @(
        $runtimeOutput |
            Where-Object { $_ -match '^\s+-\s+(.+)$' } |
            ForEach-Object { $Matches[1] }
    )
    if ($runtimeDetails.Count -eq 0) {
        Add-Failure (
            "Runtime configuration validation could not complete (exit {0}): {1}" -f
            $runtimeExitCode,
            ($runtimeOutput -join " ")
        )
    } else {
        foreach ($detail in $runtimeDetails) {
            Add-Failure "Runtime configuration: $detail"
        }
    }
}

$contextBudget = Join-Path $root "system/RUNTIME_CONTEXT_BUDGETS.yaml"
$contextBootstrap = Join-Path $root "README.md"
$contextResident = Join-Path $root "docs/AI_GAMEPLAY_RESIDENT_CORE.md"
if (
    -not $CoreOnly -and
    (Test-Path -LiteralPath $contextBudget) -and
    (Test-Path -LiteralPath $contextBootstrap) -and
    (Test-Path -LiteralPath $contextResident)
) {
    $contextMeasure = Join-Path $PSScriptRoot "measure_runtime_context.ps1"
    $contextOutput = & powershell -NoProfile -ExecutionPolicy Bypass -File $contextMeasure `
        -RepositoryRoot $root 2>&1 | ForEach-Object { $_.ToString() }
    $contextExitCode = $LASTEXITCODE
    if ($contextExitCode -ne 0) {
        Add-Failure (
            "Runtime context budget measurement could not pass (exit {0}): {1}" -f
            $contextExitCode,
            ($contextOutput -join " ")
        )
    }
}

if ($failures.Count -gt 0) {
    Write-Host "Repository validation FAILED ($($failures.Count) error(s))" -ForegroundColor Red
    foreach ($failure in $failures) {
        Write-Host "  - $failure"
    }
    exit 1
}

if (-not $Quiet) {
    Write-Host "Repository validation PASSED" -ForegroundColor Green
    Write-Host "  Live Markdown files: $($canonicalFiles.Count)"
    Write-Host "  Persistent-object blocks: $objectCount"
    Write-Host "  Unique identifiers referenced: $($checkedReferences.Count)"
    Write-Host "  Registry high-water marks: ENT-$($highWater.ENT.ToString('D6')), REC-$($highWater.REC.ToString('D6')), EVT-$($highWater.EVT.ToString('D6')), REL-$($highWater.REL.ToString('D6'))"
}

exit 0
