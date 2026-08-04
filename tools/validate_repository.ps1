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
$currentSchemaVersion = "0.1.6"
# campaign name -> world name, read from the generated worlds/campaigns index so
# a campaign-scoped block can be judged against its own world's rule profile.
$campaignWorlds = @{}

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
#
# Building that index is itself the scan's hot spot if written the obvious way.
# `[regex]::Matches` allocates a Match object per newline, and `| Out-Null`
# constructs a pipeline per newline to discard what List.Add returns -- 34,658
# of each across the live canonical set. That was measured at 2.65 s of a 5.7 s
# run, which is 83% of the scan and the largest remaining cost in validation.
# String.IndexOf with the return value assigned away produces a byte-identical
# offset array in 0.04 s.
function New-LineIndex {
    param([string]$Text)

    $offsets = [System.Collections.Generic.List[int]]::new()
    $index = $Text.IndexOf("`n")
    while ($index -ge 0) {
        $offsets.Add($index)
        $index = $Text.IndexOf("`n", $index + 1)
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
        $campaignWorlds[$name] = $worldName

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

    # A stale cast roster is worse than no roster: readiness would carry a
    # confident list of who exists that silently omits whoever entered the
    # campaign most recently, which is exactly who a live session is about to
    # meet. Coverage is mechanical here for the same reason the index's is.
    $castGenerator = Join-Path $root "tools/generate_campaign_cast.py"
    if (-not $CoreOnly -and (Test-Path -LiteralPath $castGenerator -PathType Leaf)) {
        $castRunner = Join-Path $PSScriptRoot "generate_campaign_cast.ps1"
        $previousErrorAction = $ErrorActionPreference
        $ErrorActionPreference = "Continue"
        $castOutput = & powershell -NoProfile -ExecutionPolicy Bypass `
            -File $castRunner -RepositoryRoot $root -Check 2>&1 |
            ForEach-Object { $_.ToString() }
        $castExitCode = $LASTEXITCODE
        $ErrorActionPreference = $previousErrorAction
        if ($castExitCode -ne 0) {
            Add-Failure (
                "Generated campaign cast roster is not synchronized (exit {0}): {1}" -f
                $castExitCode,
                ($castOutput -join " ")
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
$objectBlocks = @{}
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

function Get-ParticipationPolicy {
    param([string]$RepositoryRoot)

    # Decision 085. A world opts into participation auditing by declaring a
    # baseline Event and the Event kinds inside coverage. A world that declares
    # nothing carries no obligation, which is why this returns a null policy
    # rather than a default set: an engine-general default would impose the
    # writer cost on every world on one world's evidence (Decision 069).
    $policy = @{}
    $worldsRoot = Join-Path $RepositoryRoot "worlds"
    if (-not (Test-Path -LiteralPath $worldsRoot -PathType Container)) {
        return $policy
    }
    foreach ($worldDirectory in (Get-ChildItem -LiteralPath $worldsRoot -Directory | Sort-Object Name)) {
        $profilePath = Join-Path $worldDirectory.FullName "206_WORLD_RULE_PROFILE.md"
        if (-not (Test-Path -LiteralPath $profilePath -PathType Leaf)) {
            continue
        }
        $profileText = Get-Content -LiteralPath $profilePath -Raw -Encoding UTF8
        $fencePattern = '(?ms)^```ya?ml[ \t]*\r?\n(?<manifest>.*?)^```[ \t]*$'
        foreach ($fence in [regex]::Matches($profileText, $fencePattern)) {
            $manifest = $fence.Groups['manifest'].Value
            if ($manifest -notmatch '(?m)^participation_coverage_version:') {
                continue
            }
            $baseline = $null
            if ($manifest -match '(?m)^  baseline_as_of:\s*(EVT-\d{6})\s*$') {
                $baseline = $Matches[1]
            }
            $kinds = [System.Collections.Generic.List[string]]::new()
            if ($manifest -match '(?ms)^  event_kinds:\r?\n(?<kinds>(?:^    - .*\r?\n?)*)') {
                foreach ($kindLine in [regex]::Matches($Matches['kinds'], '(?m)^    - (?<kind>\S+)\s*$')) {
                    $kinds.Add($kindLine.Groups['kind'].Value) | Out-Null
                }
            }
            if ($null -eq $baseline -or $kinds.Count -eq 0) {
                Add-Failure "worlds/$($worldDirectory.Name)/206_WORLD_RULE_PROFILE.md declares a participation coverage manifest without both a baseline_as_of Event and a non-empty event_kinds list (Decision 085)."
                continue
            }
            $policy[$worldDirectory.Name] = [pscustomobject]@{
                Baseline = $baseline
                BaselineNumber = [int]$baseline.Substring(4)
                Kinds = $kinds
                SourcePath = "worlds/$($worldDirectory.Name)/206_WORLD_RULE_PROFILE.md"
            }
        }
    }
    return $policy
}

function Get-SkillCreditPolicy {
    param([string]$RepositoryRoot)

    # Decision 090. A resolved dangerous scene credits the Bearer's skills or
    # explicitly credits none; an empty counter_deltas asserts nothing and is
    # indistinguishable from nobody having looked (F-012, where two complete
    # solo dungeon clears carried counter_deltas: [] through a green
    # checkpoint). Coverage is declared per world for the same reason
    # participation coverage is: an engine-general default would impose the
    # writer cost on every world on one world's evidence (Decision 069).
    #
    # Note what coverage keys on. F-012 proposed keying it on `kind: combat`,
    # and that was measured against the live record before this shape was
    # chosen: it catches NEITHER EVT-000327 nor EVT-000332, because both were
    # filed `kind: scene`. The classification is therefore itself a profile
    # rule -- a resolved dangerous scene carries a danger-bearing kind -- and
    # this gate reads it. A scene misfiled as `scene` still escapes; that
    # residue is real and is recorded in Decision 090 rather than implied away.
    $policy = @{}
    $worldsRoot = Join-Path $RepositoryRoot "worlds"
    if (-not (Test-Path -LiteralPath $worldsRoot -PathType Container)) {
        return $policy
    }
    foreach ($worldDirectory in (Get-ChildItem -LiteralPath $worldsRoot -Directory | Sort-Object Name)) {
        $profilePath = Join-Path $worldDirectory.FullName "206_WORLD_RULE_PROFILE.md"
        if (-not (Test-Path -LiteralPath $profilePath -PathType Leaf)) {
            continue
        }
        $profileText = Get-Content -LiteralPath $profilePath -Raw -Encoding UTF8
        $fencePattern = '(?ms)^```ya?ml[ \t]*\r?\n(?<manifest>.*?)^```[ \t]*$'
        foreach ($fence in [regex]::Matches($profileText, $fencePattern)) {
            $manifest = $fence.Groups['manifest'].Value
            if ($manifest -notmatch '(?m)^skill_credit_coverage_version:') {
                continue
            }
            $baseline = $null
            if ($manifest -match '(?m)^  baseline_as_of:\s*(EVT-\d{6})\s*$') {
                $baseline = $Matches[1]
            }
            $kinds = [System.Collections.Generic.List[string]]::new()
            if ($manifest -match '(?ms)^  event_kinds:\r?\n(?<kinds>(?:^    - .*\r?\n?)*)') {
                foreach ($kindLine in [regex]::Matches($Matches['kinds'], '(?m)^    - (?<kind>\S+)\s*$')) {
                    $kinds.Add($kindLine.Groups['kind'].Value) | Out-Null
                }
            }
            if ($null -eq $baseline -or $kinds.Count -eq 0) {
                Add-Failure "worlds/$($worldDirectory.Name)/206_WORLD_RULE_PROFILE.md declares a skill credit coverage manifest without both a baseline_as_of Event and a non-empty event_kinds list (Decision 090)."
                continue
            }
            $policy[$worldDirectory.Name] = [pscustomobject]@{
                Baseline = $baseline
                BaselineNumber = [int]$baseline.Substring(4)
                Kinds = $kinds
                # The negative assertion reuses Decision 080's progression_audits
                # block for its existing meaning rather than adding a Data Model
                # block, which is what keeps this a refinement under Decision 069.
                Domain = "$($worldDirectory.Name).skill_credit"
                SourcePath = "worlds/$($worldDirectory.Name)/206_WORLD_RULE_PROFILE.md"
            }
        }
    }
    return $policy
}

$progressionPolicy = Get-ProgressionRatificationPolicy -RepositoryRoot $root
$participationPolicy = Get-ParticipationPolicy -RepositoryRoot $root
$skillCreditPolicy = Get-SkillCreditPolicy -RepositoryRoot $root
# Decision 090: the coverage obligation falls on the Bearer, who is the only
# subject in these worlds carrying a mastery-tracked skill set. Read from the
# entity's own declared system_state rather than hardcoding an identifier, so a
# second campaign or a second Bearer is governed without editing this file.
$bearerEntities = @{}
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

# Hidden quest reward siting. A world's own profile owns both halves of this:
# a concealed-discovery record never stores a reward, and the reward a Hidden
# quest does carry is the Gate-clear milestone XP for the Bearer's System Rank
# at attachment. Both facts are read out of the profile rather than restated
# here -- a validator that hardcoded the ladder would become a second copy of
# the exact derived value the rule exists to keep in one place, and would drift
# silently the first time a world repriced a Rank. A world whose profile does
# not state these sentences is simply not governed by this check.
$script:questRewardFactsCache = @{}
function Get-QuestRewardFacts {
    param([string]$Root, [string]$WorldName)

    if ($script:questRewardFactsCache.ContainsKey($WorldName)) {
        return $script:questRewardFactsCache[$WorldName]
    }

    $facts = [pscustomobject]@{
        ForbidsStoredReward = $false
        Ladder              = @{}
        SourcePath          = "worlds/$WorldName/206_WORLD_RULE_PROFILE.md"
    }

    $profilePath = Join-Path $Root "worlds/$WorldName/206_WORLD_RULE_PROFILE.md"
    if (Test-Path -LiteralPath $profilePath -PathType Leaf) {
        $profileText = Get-Content -LiteralPath $profilePath -Raw -Encoding UTF8
        $facts.ForbidsStoredReward = $profileText -match 'never stores a reward'
        $ladderSentence = [regex]::Match(
            $profileText, 'Gate-clear milestone XP for the Bearer[^.]*')
        if ($ladderSentence.Success) {
            foreach ($pair in [regex]::Matches(
                $ladderSentence.Value, '([EDCBAS])-Rank[ \t]+([\d,]+)')) {
                $facts.Ladder[$pair.Groups[1].Value] =
                    [int]($pair.Groups[2].Value -replace ',', '')
            }
        }
    }

    $script:questRewardFactsCache[$WorldName] = $facts
    return $facts
}

# The authored extent of a world's Section 7.3 category ladders, read from the
# tables themselves. Every ladder table's header carries its Rank columns
# (`| Skill | E (native) | D | C | B | A |`), so the deepest authored rung is
# the highest Rank letter appearing as a column heading across them. A world
# whose profile has no such table returns $null and is simply not governed.
#
# This closes what F-013 left open. The ceiling lived here as a hand-maintained
# literal, moved by hand at 1.51 and 1.53, and checked only against a contract
# test derived from the same literal -- so the guard and its test could agree
# with each other while both disagreed with the profile, which is exactly what
# happened.
$script:ladderCeilingCache = @{}
function Get-LadderCeiling {
    param([string]$Root, [string]$WorldName)

    if (-not $WorldName) { return $null }
    if ($script:ladderCeilingCache.ContainsKey($WorldName)) {
        return $script:ladderCeilingCache[$WorldName]
    }

    $ceiling = $null
    $profilePath = Join-Path $Root "worlds/$WorldName/206_WORLD_RULE_PROFILE.md"
    if (Test-Path -LiteralPath $profilePath -PathType Leaf) {
        $profileText = Get-Content -LiteralPath $profilePath -Raw -Encoding UTF8
        $rankOrder = @("E", "D", "C", "B", "A", "S")
        $best = -1
        foreach ($header in [regex]::Matches($profileText, '(?m)^\|[ \t]*Skill[ \t]*\|.*\|[ \t]*$')) {
            foreach ($cell in $header.Value.Trim('|').Split('|')) {
                # "E (native)" and a bare "D" both name a Rank column; effect
                # columns ("Native effect", "Rank's magnitude grant") do not.
                $rankCell = [regex]::Match($cell.Trim(), '^(?<rank>[EDCBAS])(?:[ \t]*\(native\))?$')
                if (-not $rankCell.Success) { continue }
                $index = [array]::IndexOf($rankOrder, $rankCell.Groups['rank'].Value)
                if ($index -gt $best) { $best = $index }
            }
        }
        if ($best -ge 0) { $ceiling = $rankOrder[$best] }
    }

    $script:ladderCeilingCache[$WorldName] = $ceiling
    return $ceiling
}

function Resolve-WorldForPath {
    param([string]$RelativePath, [hashtable]$CampaignWorlds)

    $worldMatch = [regex]::Match($RelativePath, '^worlds/([^/]+)/')
    if ($worldMatch.Success) { return $worldMatch.Groups[1].Value }

    $campaignMatch = [regex]::Match($RelativePath, '^campaigns/([^/]+)/')
    if ($campaignMatch.Success -and
        $CampaignWorlds.ContainsKey($campaignMatch.Groups[1].Value)) {
        return $CampaignWorlds[$campaignMatch.Groups[1].Value]
    }
    return $null
}

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
                Add-Failure "$relativePath`:$line object $id uses legacy provenance field '$legacyField'; Data Model 0.1.4 and later require game_date/real_date."
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
            # Profile 1.52 authored Broken Rhythm's mastery track as the scope
            # axis (Section 7.2, Ratified Earned Technique), so it joins the
            # ratchet's coverage. Before that it had no mastery axis at all.
            $scopeSkills = @('keen_sense', 'silent_step', 'exploit_pattern', 'field_command',
                'resonance_extraction', 'broken_rhythm')
            $counterPaths = @(Get-ListEntries (Get-IndentedSection $block "tracked_counters") |
                ForEach-Object { Get-EntryValue $_ "path" })
            foreach ($skill in $scopeSkills) {
                if ($counterPaths -contains "skills.$skill.successful_uses" -and
                    $counterPaths -notcontains "skills.$skill.scope_floor") {
                    Add-Failure "$relativePath`:$line entity $id knows $skill but is missing a scope_floor tracked_counters entry (Gatefall Profile 1.31 Section 7.2)."
                }
            }

            # Decision 090 point 6. Profile Section 7.5: once ascension can reset
            # mastery while qualifying_scenes_total never does, mastery_level
            # stops being derivable from the scene count and becomes
            # authoritative stored state -- "a world-declared tracked_counters
            # entry alongside the others" -- and rank_ascensions rides with it.
            # The EVT-000158 adoption wrote both for every skill known at the
            # time and nothing has claimed them since, so two skills acquired
            # afterward (Mana Bolt at EVT-000303, Broken Rhythm at EVT-000308)
            # carried neither for two months. That is F-012's shape exactly:
            # state nobody claimed cannot disagree with anything, so every gate
            # stayed green over a missing value.
            #
            # The skill list is derived, never enumerated. A skill is
            # mastery-tracked precisely when it stores qualifying_scenes_total;
            # a Section 4.4 Stat Passive has no mastery track and stores only
            # successful_uses (Section 7.2), so it is excluded by its own
            # storage rather than by a name this file would have to maintain.
            foreach ($counterPath in $counterPaths) {
                $masteryMatch = [regex]::Match(
                    $counterPath, '^skills\.(?<skill>[a-z0-9_]+)\.qualifying_scenes_total$')
                if (-not $masteryMatch.Success) { continue }
                $masterySkill = $masteryMatch.Groups['skill'].Value
                foreach ($required in @("mastery_level", "rank_ascensions")) {
                    if ($counterPaths -notcontains "skills.$masterySkill.$required") {
                        Add-Failure "$relativePath`:$line entity $id tracks $masterySkill as a mastery-tracked skill but is missing a skills.$masterySkill.$required tracked_counters entry; Section 7.5 makes it authoritative stored state, not a derived value (Decision 090)."
                    }
                }
            }

            # Gatefall Profile 1.35 Section 7.2: a skill may not stand at a Rank
            # its Section 7.3 ladder does not author. Ascension eligibility
            # withholds the offer, so a Rank above the authored ceiling can only
            # mean the guard was bypassed -- and the mastery an ascension spends
            # cannot be returned (Rules Section 13.2). Both ladders now author
            # through B-Rank: Section 7.3 states "the reachable band is set out
            # below through B-Rank", its scope table carries a B column for all
            # five scope skills, and Flash Step's B rung is explicitly "now
            # closed and no longer the gap it once was". A-Rank and S-Rank remain
            # the open question Section 20.3 answers at the checkpoint where each
            # becomes reachable, and this ceiling moves with them. It read C
            # until Profile 1.51, where a B-Rank Keen Sense ascension found it
            # stale (see F-013).
            $ladderVersionMatch = [regex]::Match($block, 'profile_version:[ \t]*"(\d+\.\d+)"')
            if ($id -eq "ENT-000125" -and $ladderVersionMatch.Success -and
                [version]$ladderVersionMatch.Groups[1].Value -ge [version]"1.35") {
                # Profile 1.52 adds the magnitude-axis ladder (Section 7.3,
                # Decision 090), so the five skills that previously sat in no
                # table are now authored through B-Rank like the rest and come
                # under the same ceiling guard. Stone Skin is native D-Rank and
                # Flash Step native D-Rank; the guard is a ceiling, not a floor,
                # so a native Rank above E needs no special case here.
                $ladderSkills = @(
                    "Keen Sense", "Silent Step", "Exploit Pattern", "Field Command",
                    "Resonance Extraction", "Sprint", "Flash Step",
                    "Dagger Mastery", "Stone Skin", "Bulwark", "Twin Fang", "Broken Rhythm"
                )
                # The ceiling is now PARSED from the profile's own ladder tables
                # rather than carried as a constant here. F-013 recorded the
                # constant going stale against the profile and left this exact
                # repair open: "parsing the authored extent out of Section 7.3's
                # own tables at validation time would make the guard
                # self-updating and remove this class entirely." It read "C"
                # until 1.51 and "B" until 1.53, needing a hand edit each time,
                # with only a contract test derived from the same hand-edited
                # value to check it -- two copies of one fact, agreeing until
                # they did not.
                #
                # 1.53 made this possible by giving all three tables absolute
                # Rank column headers (E/D/C/B/A) instead of "First/Second/Third
                # Rank above native", which put one skill's A-Rank in a
                # different column from another's. The authored extent is now
                # simply the highest Rank appearing as a column header.
                $ladderRankOrder = @("E", "D", "C", "B", "A", "S")
                $ladderCeiling = Get-LadderCeiling $root (Resolve-WorldForPath $relativePath $campaignWorlds)
                if (-not $ladderCeiling) {
                    Add-Failure "$relativePath`:$line entity $id declares a Section 7.3 ladder profile, but no ladder table with Rank column headers could be read from it; the ceiling guard cannot run."
                }
                $highestAuthoredIndex = [array]::IndexOf($ladderRankOrder, $ladderCeiling)
                $ladderSection = Get-IndentedSection $block "skills_known"
                foreach ($ladderSkill in $ladderSkills) {
                    $ladderMatch = [regex]::Match($ladderSection, '"' + [regex]::Escape($ladderSkill) + ' \[([EDCBAS])-Rank\]')
                    if (-not $ladderMatch.Success) { continue }
                    $heldRank = $ladderMatch.Groups[1].Value
                    if ([array]::IndexOf($ladderRankOrder, $heldRank) -gt $highestAuthoredIndex) {
                        Add-Failure "$relativePath`:$line entity $id holds $ladderSkill at $heldRank-Rank, which exceeds its authored category ladder (Section 7.2; Section 7.3's tables author through $ladderCeiling-Rank)."
                    }
                }
            }

            # Hidden quest reward siting, both halves, against the governing
            # world's own profile. This ran only in a contract test before, and
            # a contract test is not one of the checkpoint's gates -- a record
            # carrying a reward it may never carry went into a promoted
            # checkpoint green. The gate is the place a rule has to live if a
            # save is supposed to be unable to break it.
            $blockWorld = Resolve-WorldForPath $relativePath $campaignWorlds
            if ($blockWorld) {
                $questFacts = Get-QuestRewardFacts $root $blockWorld

                # Negative half: the record describes a concealed fact and
                # exists before, and independently of, any attachment. There is
                # no Rank to price a reward from at authoring time, so storing
                # one is either a guess or a duplicate of quest state.
                if ($questFacts.ForbidsStoredReward -and
                    $block -match '(?m)^[ \t]*subtype:[ \t]*concealed-discovery[ \t]*\r?$') {
                    $storedReward = [regex]::Match($block, '(?m)^[ \t]*(reward[a-z_]*):')
                    if ($storedReward.Success) {
                        Add-Failure "$relativePath`:$line concealed-discovery record $id stores '$($storedReward.Groups[1].Value)'; $($questFacts.SourcePath) states a record never stores a reward, which is fixed from the Bearer's System Rank at attachment and belongs in Hidden quest state."
                    }
                }

                # Positive half, which nothing checked anywhere: an attached
                # Hidden quest must actually carry the reward, and the XP must
                # be the milestone figure for the Rank recorded beside it. A
                # present-but-wrong figure passed every gate before this.
                $questSection = Get-IndentedSection $block "non_daily_quests"
                if (-not [string]::IsNullOrWhiteSpace($questSection)) {
                    $questChunks = [regex]::Split($questSection, '(?m)^[ \t]*-[ \t]+quest_key:[ \t]*')
                    for ($qi = 1; $qi -lt $questChunks.Count; $qi++) {
                        $chunk = $questChunks[$qi]
                        $questKey = ([regex]::Match($chunk, '^"?([^"\r\n]+)"?')).Groups[1].Value.Trim()
                        if ($chunk -notmatch '(?m)^[ \t]*type:[ \t]*hidden[ \t]*\r?$') { continue }
                        if ($chunk -notmatch '(?m)^[ \t]*status:[ \t]*attached[ \t]*\r?$') { continue }

                        $rankMatch = [regex]::Match($chunk, '(?m)^[ \t]*reward_rank:[ \t]*([EDCBAS])-Rank[ \t]*\r?$')
                        $xpMatch = [regex]::Match($chunk, '(?m)^[ \t]*reward_xp:[ \t]*(\d+)[ \t]*\r?$')

                        if (-not $rankMatch.Success) {
                            Add-Failure "$relativePath`:$line attached Hidden quest '$questKey' on $id records no reward_rank; $($questFacts.SourcePath) requires the reward Rank recorded in canonical Hidden quest state before notification."
                            continue
                        }
                        if (-not $xpMatch.Success) {
                            Add-Failure "$relativePath`:$line attached Hidden quest '$questKey' on $id records no reward_xp beside reward_rank $($rankMatch.Groups[1].Value)-Rank."
                            continue
                        }
                        $heldRank = $rankMatch.Groups[1].Value
                        if ($questFacts.Ladder.ContainsKey($heldRank)) {
                            $expectedXp = $questFacts.Ladder[$heldRank]
                            if ([int]$xpMatch.Groups[1].Value -ne $expectedXp) {
                                Add-Failure "$relativePath`:$line attached Hidden quest '$questKey' on $id pays $($xpMatch.Groups[1].Value) XP at $heldRank-Rank, but $($questFacts.SourcePath) fixes the Gate-clear milestone for $heldRank-Rank at $expectedXp."
                            }
                        }
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
                    # would hold a Rank whose grant does not exist. Profile
                    # 1.48 authored the twelve rungs the four that absorbed the
                    # old Stat-50 skills were missing, so all five are now
                    # authored to S and this clamp no longer binds any of them.
                    # It is retained rather than deleted: it is the mechanism
                    # for the next Stat Passive a version adds, and deleting it
                    # would make that skill's Rank unvalidated on arrival.
                    $statPassives = @(
                        @{ Name = "Flux Sight"; Key = "flux_sight"; Stat = "perception"; Authored = "S" },
                        @{ Name = "Overpower"; Key = "overpower"; Stat = "strength"; Authored = "S" },
                        @{ Name = "Pre-empt"; Key = "pre_empt"; Stat = "agility"; Authored = "S" },
                        @{ Name = "Conduit"; Key = "conduit"; Stat = "intelligence"; Authored = "S" },
                        @{ Name = "Shrug Off"; Key = "shrug_off"; Stat = "vitality"; Authored = "S" }
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

            # Gatefall Profile 1.50 Section 15.3.2: the dimensional inventory is
            # grouped into five named kinds, and /system gear takes each STORED
            # group's printed line count from that kind's list length. The count
            # is only trustworthy while the grouping is structural, so a sixth
            # kind, a missing kind, or a holding sitting loose under inventory
            # is a defect rather than a formatting choice.
            #
            # This check exists because the unstructured field really did lose an
            # item: a /system gear render dropped the Gate Direction Finder while
            # the sheet carried it correctly (EVT-000366). Nothing asserted the
            # field's shape, so nothing objected. An empty kind is kept rather
            # than omitted -- Section 15.3.2 requires a group with no live
            # holdings to render 'none', and a kind absent from state cannot.
            if ($id -eq "ENT-000125" -and
                $profileVersionMatch.Success -and
                [version]$profileVersionMatch.Groups[1].Value -ge [version]"1.50") {
                $inventorySection = Get-IndentedSection $block "inventory"
                if ([string]::IsNullOrWhiteSpace($inventorySection)) {
                    Add-Failure "$relativePath`:$line Gatefall Profile 1.50 Bearer has no system_state.inventory section."
                } else {
                    $allowedKinds = @("keys", "consumables", "special", "gear", "materials")
                    $declaredKinds = @([regex]::Matches($inventorySection, '(?m)^[ \t]{6}([a-z_]+):[ \t]*$') |
                        ForEach-Object { $_.Groups[1].Value })

                    foreach ($declaredKind in $declaredKinds) {
                        if ($allowedKinds -notcontains $declaredKind) {
                            Add-Failure "$relativePath`:$line system_state.inventory declares kind '$declaredKind', which Profile Section 15.3.2 does not name (allowed: $($allowedKinds -join ', '))."
                        }
                    }
                    foreach ($requiredKind in $allowedKinds) {
                        if ($declaredKinds -notcontains $requiredKind) {
                            Add-Failure "$relativePath`:$line system_state.inventory omits the '$requiredKind' kind, which Profile Section 15.3.2 retains even when empty so its group can render 'none'."
                        }
                    }
                    if ($declaredKinds.Count -ne @($declaredKinds | Select-Object -Unique).Count) {
                        Add-Failure "$relativePath`:$line system_state.inventory declares the same kind twice, so a holding's group is ambiguous."
                    }
                    $ungroupedCount = @([regex]::Matches($inventorySection, '(?m)^[ \t]{6}-[ \t]')).Count
                    if ($ungroupedCount -gt 0) {
                        Add-Failure "$relativePath`:$line system_state.inventory holds $ungroupedCount entry/entries directly under the field rather than inside one of Section 15.3.2's five kinds."
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
                        # Multitask was retired at Profile 1.49 and replaced by Conduit. Its
                        # alias stays because immutable checkpoints still carry the counter
                        # under both historical names, and a restore reads them.
                        "skills.multitask.successful_material_applications" = "skills.multitask.successful_uses"
                        "skills.conduit.successful_material_applications" = "skills.conduit.successful_uses"
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

            # Decision 085 - who was in this Event, and what the promotion did
            # about each of them.
            $participants = [System.Collections.Generic.List[string]]::new()
            foreach ($entry in (Get-ListEntries (Get-IndentedSection $block "participants"))) {
                # Entries keep their own "- " prefix, so match past it rather
                # than trimming: a bare Trim() leaves the dash and the identifier
                # never matches.
                if ($entry -match '(?m)^[ \t]*-[ \t]+"?(ENT-\d{6})') {
                    $participants.Add($Matches[1]) | Out-Null
                }
            }
            $participationAudits = [System.Collections.Generic.List[object]]::new()
            $seenParticipationSubjects = @{}
            foreach ($entry in (Get-ListEntries (Get-IndentedSection $block "participation_audits"))) {
                $subject = Get-EntryValue $entry "subject"
                $result = Get-EntryValue $entry "result"
                $record = Get-EntryValue $entry "record"
                if ($subject -notmatch '^ENT-\d{6}$' -or
                    @("record-updated", "no-change") -notcontains $result) {
                    Add-Failure "$relativePath`:$line Event $id has a malformed participation_audits entry; subject must be an entity identifier and result must be record-updated or no-change (Decision 085)."
                    continue
                }
                if ($result -eq "record-updated") {
                    if ($record -notmatch '^(ENT|REC|REL)-\d{6}$') {
                        Add-Failure "$relativePath`:$line Event $id records a participation audit for $subject as record-updated but names no valid moved record (Decision 085)."
                        continue
                    }
                } elseif (-not [string]::IsNullOrWhiteSpace($record)) {
                    Add-Failure "$relativePath`:$line Event $id records a no-change participation audit for $subject but also names a moved record (Decision 085)."
                    continue
                }
                if ($seenParticipationSubjects.ContainsKey($subject)) {
                    Add-Failure "$relativePath`:$line Event $id records more than one participation audit for $subject (Decision 085)."
                    continue
                }
                $seenParticipationSubjects[$subject] = $true
                if ($participants.Count -gt 0 -and $participants -notcontains $subject) {
                    Add-Failure "$relativePath`:$line Event $id audits participation for $subject, which is not among its own participants (Decision 085)."
                    continue
                }
                $participationAudits.Add([pscustomobject]@{
                    Subject = $subject
                    Result = $result
                    Record = $record
                })
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
                Participants = $participants
                ParticipationAudits = $participationAudits
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

        # Decision 085: the record-updated cross-check needs the moved object's
        # own text, which $definitions does not carry (it holds locations only).
        $objectBlocks[$id] = $block

        # Decision 076: gather what the Relationship Texture check needs.
        if ($id.StartsWith("ENT-")) {
            $entityType = [regex]::Match($block, '(?m)^[ \t]*type:[ \t]*(.+?)[ \t]*\r?$')
            if ($entityType.Success) {
                $entityTypes[$id] = $entityType.Groups[1].Value.Trim().Trim('"')
            }
            # Decision 090: who the skill-credit obligation falls on, declared
            # by the entity rather than assumed by this file.
            if ($relativePath -match '^campaigns/[^/]+/[^/]+$' -and
                $block -match '(?m)^[ \t]*bearer:[ \t]*true[ \t]*\r?$') {
                $bearerEntities[$id] = $true
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

# Decision 085 - a claimed promotion is checkable; a claimed non-promotion is not.
#
# This is the half of the audit that has teeth. `record-updated` names the object
# the promotion moved, and that object must actually cite this Event -- which
# catches the Decision 076 failure directly: a checkpoint that passed two
# validators twice while the content it claimed to promote was gone.
#
# `no-change` is deliberately unverifiable and is not pretended otherwise. It
# earns its place by making coverage decidable: without it there is no way to
# distinguish "nothing moved" from "nobody looked".
foreach ($eventData in $eventAuditData) {
    foreach ($audit in $eventData.ParticipationAudits) {
        if ($audit.Result -ne "record-updated") {
            continue
        }
        if (-not $definitions.ContainsKey($audit.Record)) {
            Add-Failure "$($eventData.SourcePath)`:$($eventData.SourceLine) Event $($eventData.Event) claims to have moved undefined record $($audit.Record) for $($audit.Subject) (Decision 085)."
            continue
        }
        $movedBlock = $objectBlocks[$audit.Record]
        if (-not [string]::IsNullOrWhiteSpace($movedBlock) -and
            $movedBlock -notmatch [regex]::Escape($eventData.Event)) {
            Add-Failure "$($eventData.SourcePath)`:$($eventData.SourceLine) Event $($eventData.Event) claims it moved $($audit.Record) for $($audit.Subject), but $($audit.Record) does not reference that Event; the promotion was claimed and not made (Decision 085)."
        }
    }
}

# Coverage. Prospective only: an Event at or before the declared baseline carries
# no obligation, so adoption backfills nothing and no historical Event is rewritten.
foreach ($worldName in $participationPolicy.Keys) {
    $policy = $participationPolicy[$worldName]
    foreach ($eventData in $eventAuditData) {
        if ($eventData.EventNumber -le $policy.BaselineNumber -or
            $policy.Kinds -notcontains $eventData.Kind) {
            continue
        }
        foreach ($participant in $eventData.Participants) {
            if ($entityTypes.ContainsKey($participant) -and $entityTypes[$participant] -ne "Character") {
                continue
            }
            $covered = @($eventData.ParticipationAudits | Where-Object { $_.Subject -eq $participant })
            if ($covered.Count -eq 0) {
                Add-Failure "$($eventData.SourcePath)`:$($eventData.SourceLine) Event $($eventData.Event) is in the participation coverage set and names $participant, but records no participation audit for them; state record-updated or an explicit no-change (Decision 085 / $($policy.SourcePath))."
            }
        }
    }
}

# --- Decision 090: a resolved dangerous scene asserts its skill credit -------
#
# Within the declared coverage, an Event naming a Bearer carries either at
# least one skills.* counter delta for him, or the explicit negative assertion
# -- a progression_audits entry in the world's skill_credit domain with
# result: none. The positive case needs no separate audit block, because the
# deltas themselves are the assertion; only "nothing applied" needs saying out
# loud, which is Decision 080's negative-assertion rationale unchanged.
#
# What this does not do, stated plainly: it cannot prove a settlement counted
# correctly, and a Runtime under load can write `none` as easily as it can do
# the work. What it converts is a SILENT omission into an ASSERTED one, which
# is the whole distinction F-012 turned on -- what was missing was never
# claimed, so nothing could disagree with it.
foreach ($worldName in $skillCreditPolicy.Keys) {
    $policy = $skillCreditPolicy[$worldName]
    foreach ($eventData in $eventAuditData) {
        if ($eventData.EventNumber -le $policy.BaselineNumber -or
            $policy.Kinds -notcontains $eventData.Kind) {
            continue
        }
        foreach ($participant in $eventData.Participants) {
            if (-not $bearerEntities.ContainsKey($participant)) { continue }
            $credited = @($counterDeltas | Where-Object {
                $_.Event -eq $eventData.Event -and
                $_.Subject -eq $participant -and
                $_.Counter -like "skills.*"
            })
            if ($credited.Count -gt 0) { continue }
            $asserted = @($eventData.Audits | Where-Object {
                $_.Subject -eq $participant -and
                $_.Domain -eq $policy.Domain -and
                $_.Result -eq "none"
            })
            if ($asserted.Count -eq 0) {
                Add-Failure "$($eventData.SourcePath)`:$($eventData.SourceLine) Event $($eventData.Event) is kind '$($eventData.Kind)' in the skill credit coverage set and names Bearer $participant, but credits no skills.* counter and records no explicit none; a resolved dangerous scene asserts its skill credit either way (Decision 090 / $($policy.SourcePath))."
            }
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

# --- A boss kill must record the drops the profile makes automatic ----------
#
# Gatefall Section 11.1 says elites and bosses *always* drop one core, and
# Section 11.2 says that on the boss kill, *in addition to its core*, the boss
# drop is rolled on a d100. Neither is discretionary and neither was checked.
#
# F-010: the B-Rank trial Gate (EVT-000338-EVT-000342) killed 24 commons and a
# boss and recorded no crystal, no core, and no drop roll -- the words do not
# appear anywhere in the clear. Only the mined deposit was tracked, because
# mining is narrated and drops are bookkeeping. It took the player asking
# months later to notice, which is exactly the failure mode a gate exists for.
#
# WHY THE WINDOW. This campaign does not always record the kill and its loot in
# one Event: EVT-000183 kills the boss and EVT-000184 carries the drop roll. A
# per-Event assertion would fail on a correct record, so the evidence is sought
# across the killing Event and the two that follow it. That is how the ledger is
# actually written, not a concession.
#
# WHY THE TRIGGER IS NARROW. Descriptions are prose, so this reads idiom rather
# than structure. The alternatives were measured against the live chronicle: a
# bare mention of "boss" fires on Boss-Imprinted weapons and on Section 17's
# "closes on the boss kill" clause, and would fail a good repository. The
# phrases below match every boss kill this campaign has recorded and nothing
# else. A future Event phrased around all of them slips through -- this narrows
# the failure, it does not close it -- and that is the right trade when the cost
# of a false positive is blocking validation on a correct record.
$bossKillPattern = 'kill(s|ed|ing) the boss|killing the boss|\bboss killed\b|\bboss kill xp\b|the boss[^.\r\n]{0,60}\b(dies|died|is dead)\b'
$bossDropPattern = 'boss[- ]drop|boss loot'

foreach ($chronicleFile in @(Get-ChildItem -LiteralPath (Join-Path $root "campaigns") -Recurse -File -Filter "160_CAMPAIGN_CHRONICLE.md" -ErrorAction SilentlyContinue |
    Where-Object { $_.FullName -notmatch '[\\/]\.?saves[\\/]' })) {

    $chronicleText = Get-Content -LiteralPath $chronicleFile.FullName -Raw
    $chronicleRelative = $chronicleFile.FullName.Substring($root.Length + 1).Replace('\', '/')
    $eventBlocks = @([regex]::Matches($chronicleText, '(?s)```yaml\r?\n(id: (EVT-\d{6}).*?)\r?\n```'))

    for ($blockIndex = 0; $blockIndex -lt $eventBlocks.Count; $blockIndex++) {
        $eventBody = $eventBlocks[$blockIndex].Groups[1].Value
        if ($eventBody -notmatch '(?m)^kind:[ \t]*combat[ \t]*$') { continue }
        if ($eventBody -notmatch $bossKillPattern) { continue }

        $eventId = $eventBlocks[$blockIndex].Groups[2].Value
        $windowEnd = [math]::Min($eventBlocks.Count - 1, $blockIndex + 2)
        $window = ($eventBlocks[$blockIndex..$windowEnd] | ForEach-Object { $_.Groups[1].Value }) -join "`n"

        # An omission already on the books is not the failure this gate is for.
        # `pending_rewards.unresolved_gate_loot` is readiness-loaded protagonist
        # state, so an acknowledgement recorded there is raised at the start of
        # every session until it is settled -- which is the outcome wanted, and
        # strictly better than a suppression list, because the debt keeps
        # announcing itself instead of going quiet the moment it is catalogued.
        # The acknowledgement must name the Event, so it cannot be a blanket
        # waiver for whatever else goes missing later.
        $sheetPath = Join-Path $chronicleFile.DirectoryName "100_CHARACTER_SHEET.md"
        $acknowledged = $false
        if (Test-Path -LiteralPath $sheetPath -PathType Leaf) {
            $sheetText = Get-Content -LiteralPath $sheetPath -Raw
            $acknowledgement = [regex]::Match($sheetText, '(?m)^[ \t]*unresolved_gate_loot:[ \t]*"(.*?)"[ \t]*$')
            $acknowledged = $acknowledgement.Success -and $acknowledgement.Groups[1].Value -match [regex]::Escape($eventId)
        }
        if ($acknowledged) { continue }

        if ($window -notmatch '\bcores?\b') {
            Add-Failure "$chronicleRelative $eventId resolves a boss kill and neither it nor the two Events after it record the core Section 11.1 makes automatic."
        }
        if ($window -notmatch $bossDropPattern) {
            Add-Failure "$chronicleRelative $eventId resolves a boss kill and neither it nor the two Events after it record the Section 11.2 boss drop."
        }
    }
}

# --- A commitment that came due must have been settled ----------------------
#
# Decision 082 specified in full how a pending world-side commitment is settled
# and Runtime Section 2.4 says no status view, checkpoint or session close may
# be "the first operation that notices a commitment has come due". Nothing
# checked it. F-002 is the same failure one layer over, in a mechanism that owed
# no roll and no discretion: three tracked-board deadlines passed unsettled and
# it took a human reading the ledger to notice.
#
# This adds no shape. Data Model Section 7.3 already makes tracked state canon
# that lives inside a holding record, Section 7.4 already requires `Due` and
# fixes the five statuses, and Decision 078 already puts an exact campaign
# anchor in live state. The check is arithmetic over contracts that exist.
#
# It is deliberately vacuous where a campaign records no commitments, which is
# every campaign today: Decisions 082 and 083 built a settler and no writer, so
# the construct has zero live instances. That is honest rather than useful --
# the gate bites the moment a play session records the first one, and until
# then it proves nothing. Making absence itself fail would require a declared
# serialization home in Section 7.4, which is foundational and an owner ruling.
$commitmentStatuses = @('pending', 'met', 'partially-met', 'lapsed', 'deferred')
$commitmentOpenStatuses = @('pending', 'deferred')

foreach ($campaignDirectory in @(Get-ChildItem -LiteralPath (Join-Path $root "campaigns") -Directory -ErrorAction SilentlyContinue)) {
    $campaignName = $campaignDirectory.Name

    # The anchor is Decision 078's exact campaign clock. Without one there is
    # nothing to compare against, so the staleness half is skipped and the shape
    # checks below still run.
    $anchor = $null
    foreach ($anchorFile in @(Get-ChildItem -LiteralPath $campaignDirectory.FullName -Filter "1*.md" -File)) {
        $anchorMatch = [regex]::Match(
            (Get-Content -LiteralPath $anchorFile.FullName -Raw),
            '(?m)^[ \t]*campaign_time:[ \t]*"?([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9:]{8}[+-][0-9:]{5})"?')
        if ($anchorMatch.Success) {
            $parsed = [datetimeoffset]::MinValue
            if ([datetimeoffset]::TryParse($anchorMatch.Groups[1].Value, [ref]$parsed)) {
                if ($null -eq $anchor -or $parsed -gt $anchor) { $anchor = $parsed }
            }
        }
    }

    foreach ($ledger in @(Get-ChildItem -LiteralPath $campaignDirectory.FullName -Filter "*.md" -File)) {
        $ledgerText = Get-Content -LiteralPath $ledger.FullName -Raw
        if ($ledgerText -notmatch 'pending_commitments:') { continue }
        $ledgerRelative = Get-RelativePath $ledger.FullName
        $ledgerIndex = New-LineIndex $ledgerText

        foreach ($entry in (Get-ListEntries (Get-IndentedSection $ledgerText "pending_commitments"))) {
            $owner = Get-EntryValue $entry "owner"
            $subject = Get-EntryValue $entry "subject"
            $due = Get-EntryValue $entry "due"
            $status = Get-EntryValue $entry "status"
            $reason = Get-EntryValue $entry "reason"
            $entryLine = Get-LineNumber $ledgerIndex ($ledgerText.IndexOf($entry))

            if ($owner -notmatch '^(ENT|REC)-\d{6}$') {
                Add-Failure "$ledgerRelative`:$entryLine pending commitment names no defined owner; a commitment is owed by an identified entity or institution (Data Model Section 7.4, Decision 082)."
                continue
            }
            if ([string]::IsNullOrWhiteSpace($subject)) {
                Add-Failure "$ledgerRelative`:$entryLine pending commitment owned by $owner records no subject; what was undertaken is required (Data Model Section 7.4)."
                continue
            }
            if ($commitmentStatuses -notcontains $status) {
                Add-Failure "$ledgerRelative`:$entryLine pending commitment owned by $owner has status '$status'; it must be one of $($commitmentStatuses -join ', ') (Data Model Section 7.4)."
                continue
            }

            # Section 7.4: "`Due` is required. An undertaking with no time a clock
            # can reach is not recordable as a commitment, which is deliberate."
            $dueParsed = [datetimeoffset]::MinValue
            if ([string]::IsNullOrWhiteSpace($due) -or -not [datetimeoffset]::TryParse($due, [ref]$dueParsed)) {
                Add-Failure "$ledgerRelative`:$entryLine pending commitment owned by $owner has no clock-reachable due time; an intention without one cannot be settled and is not recordable (Data Model Section 7.4, Decision 082)."
                continue
            }

            # "A lapse is a settlement, not an absence": a lapsed commitment
            # records the grounded reason it lapsed.
            if ($status -eq 'lapsed' -and [string]::IsNullOrWhiteSpace($reason)) {
                Add-Failure "$ledgerRelative`:$entryLine pending commitment owned by $owner is lapsed but records no grounded reason; a lapse is a settlement, not an absence (Data Model Section 7.4)."
                continue
            }

            # The load-bearing check. An open commitment whose due time is behind
            # the campaign's own anchor was never settled, and the settlement
            # obligation is not discharged by the player failing to ask.
            if ($null -ne $anchor -and $commitmentOpenStatuses -contains $status -and $dueParsed -lt $anchor) {
                Add-Failure "$ledgerRelative`:$entryLine pending commitment owned by $owner is still '$status' with a due time of $due, behind the campaign anchor $($anchor.ToString('o')); elapsed time reaching a commitment's due time must settle it from the owner's own state (Runtime Section 2.4, Decision 082)."
            }
        }
    }
}

# --- Two live entities may not answer to the same current name --------------
#
# F-009, raised within a day of the Runtime being told to author entailed
# subjects on demand rather than withhold them (Section 1.4). A newly authored
# grey-market contact was named "Reyes" into a campaign already carrying
# ENT-000134, Ada Reyes, an established contractor coordinator with her own
# relationship record and history in the same campaign -- and the collision came
# a few exchanges after that character's own job was narrated. The name that
# surfaces while authoring is disproportionately one the session just used, so
# this is likelier than chance rather than unlucky.
#
# Only the EXACT collision is mechanical. Two people sharing a surname is
# ordinary in a city of millions and the flag says so; that case stays a
# judgment the Runtime makes at authoring time against the cast roster, and the
# barrier does not adjudicate it. What no campaign wants is two live entities
# answering to the same full name, which is decidable and almost always an
# authoring slip.
#
# Scope is per campaign: the same name in two campaigns is two unrelated
# fictions, not a collision.
foreach ($campaignDirectory in @(Get-ChildItem -LiteralPath (Join-Path $root "campaigns") -Directory -ErrorAction SilentlyContinue)) {
    $namesSeen = @{}

    foreach ($ledger in @(Get-ChildItem -LiteralPath $campaignDirectory.FullName -Filter "*.md" -File)) {
        $ledgerRelative = Get-RelativePath $ledger.FullName
        $ledgerText = Get-Content -LiteralPath $ledger.FullName -Raw
        $ledgerLines = $ledgerText -split "\r?\n"

        $currentId = $null
        $currentStatus = $null
        for ($index = 0; $index -lt $ledgerLines.Count; $index++) {
            $line = $ledgerLines[$index]

            if ($line -match '^[ \t]*id:[ \t]*"?(ENT-\d{6})') {
                $currentId = $Matches[1]
                $currentStatus = $null
                continue
            }
            if ($null -eq $currentId) { continue }
            if ($line -match '^[ \t]*status:[ \t]*"?([a-z-]+)') { $currentStatus = $Matches[1] }

            # An alias counts only when it is the entity's current name; former
            # and alternate names are deliberately allowed to collide, because
            # that is how identity continuity records a rename.
            if ($line -match '^[ \t]*-[ \t]+name:[ \t]*"([^"]+)"') {
                $candidate = $Matches[1].Trim()
                $quality = $null
                if ($index + 1 -lt $ledgerLines.Count -and
                    $ledgerLines[$index + 1] -match '^[ \t]*quality:[ \t]*"?([a-z-]+)') {
                    $quality = $Matches[1]
                }
                if ($quality -ne 'current' -or $currentStatus -eq 'retired') { continue }

                $key = $candidate.ToLowerInvariant()
                if ($namesSeen.ContainsKey($key) -and $namesSeen[$key].Id -ne $currentId) {
                    $first = $namesSeen[$key]
                    Add-Failure "$ledgerRelative`:$(Get-LineNumber (New-LineIndex $ledgerText) ($ledgerText.IndexOf($line))) $currentId carries the current name `"$candidate`", which $($first.Id) already carries in $($first.Path); two live entities in one campaign may not answer to the same full name (F-009)."
                } elseif (-not $namesSeen.ContainsKey($key)) {
                    $namesSeen[$key] = [pscustomobject]@{ Id = $currentId; Path = $ledgerRelative }
                }
            }
        }
    }
}

# The validation record's derivable half must match the manifests it describes.
#
# Version 0.3 postmortem, Finding 4. The prototype log drifted twenty-eight
# checkpoints and five decisions behind live state, inside the document the
# postmortem depends on -- and then drifted four checkpoints further within a
# day of being reconciled by hand. Counts, ranges and partitions are derivable
# from the save manifests; verdicts and evidence classes are not and stay
# hand-written outside the generated markers.
# --- A standing need that came due must have been settled ------------------
#
# Decision 088, Version 0.4 milestone 0.4.1. The mirror of the commitment check
# above, and it exists for the same reason: Runtime Section 2.4 obliges a need
# to settle at the clock boundary, and an obligation with no enforcement point
# holds only by assumption (Decision 055).
#
# Data Model Section 7.6 already fixes the shape, the five statuses, and the
# rule that an `unmet` need records why in `Outcome`. This adds no structure --
# it is arithmetic over a contract accepted at the Architecture Freeze.
#
# Like the commitment gate this is vacuous where a campaign records no needs,
# which is every campaign at implementation time. That is honest rather than
# useful: the gate bites when a world adopts the construct.
$needStatuses = @('open', 'met', 'partially-met', 'unmet', 'withdrawn')

foreach ($campaignDirectory in @(Get-ChildItem -LiteralPath (Join-Path $root "campaigns") -Directory -ErrorAction SilentlyContinue)) {
    $anchor = $null
    foreach ($anchorFile in @(Get-ChildItem -LiteralPath $campaignDirectory.FullName -Filter "1*.md" -File)) {
        $anchorMatch = [regex]::Match(
            (Get-Content -LiteralPath $anchorFile.FullName -Raw),
            '(?m)^[ \t]*campaign_time:[ \t]*"?([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9:]{8}[+-][0-9:]{5})"?')
        if ($anchorMatch.Success) {
            $parsed = [datetimeoffset]::MinValue
            if ([datetimeoffset]::TryParse($anchorMatch.Groups[1].Value, [ref]$parsed)) {
                if ($null -eq $anchor -or $parsed -gt $anchor) { $anchor = $parsed }
            }
        }
    }

    foreach ($ledger in @(Get-ChildItem -LiteralPath $campaignDirectory.FullName -Filter "*.md" -File)) {
        $ledgerText = Get-Content -LiteralPath $ledger.FullName -Raw
        if ($ledgerText -notmatch 'standing_needs:') { continue }
        $ledgerRelative = Get-RelativePath $ledger.FullName
        $ledgerIndex = New-LineIndex $ledgerText

        foreach ($entry in (Get-ListEntries (Get-IndentedSection $ledgerText "standing_needs"))) {
            $holder = Get-EntryValue $entry "holder"
            $subject = Get-EntryValue $entry "subject"
            $due = Get-EntryValue $entry "due"
            $status = Get-EntryValue $entry "status"
            $outcome = Get-EntryValue $entry "outcome"
            $entryLine = Get-LineNumber $ledgerIndex ($ledgerText.IndexOf($entry))

            # Section 7.6: the holder is an entity that already exists in canon.
            # This is the line that keeps a need out of population simulation,
            # so it is the one worth failing on.
            if ($holder -notmatch '^(ENT|REC)-\d{6}$') {
                Add-Failure "$ledgerRelative`:$entryLine standing need names no defined holder; a need is a property of an actor already in canon, never of an aggregate (Data Model Section 7.6, Decision 088)."
                continue
            }
            if ([string]::IsNullOrWhiteSpace($subject)) {
                Add-Failure "$ledgerRelative`:$entryLine standing need held by $holder records no subject; what is needed is required (Data Model Section 7.6)."
                continue
            }
            if ($needStatuses -notcontains $status) {
                Add-Failure "$ledgerRelative`:$entryLine standing need held by $holder has status '$status'; it must be one of $($needStatuses -join ', ') (Data Model Section 7.6)."
                continue
            }
            if ([string]::IsNullOrWhiteSpace($due)) {
                Add-Failure "$ledgerRelative`:$entryLine standing need held by $holder records no due time or cadence; a need nothing can reach cannot be settled (Data Model Section 7.6)."
                continue
            }

            # "An `unmet` need records why, in `Outcome`" -- Decision 080's
            # negative-assertion discipline. A settled failure is information;
            # an unexplained one is indistinguishable from one nobody carried.
            if ($status -eq 'unmet' -and [string]::IsNullOrWhiteSpace($outcome)) {
                Add-Failure "$ledgerRelative`:$entryLine standing need held by $holder is unmet but records no outcome; a settled failure states why (Data Model Section 7.6, Decision 088)."
                continue
            }

            # `Due` may be a cadence rather than a date, so staleness is checked
            # only where it is clock-reachable. A cadence is not a deadline.
            $dueParsed = [datetimeoffset]::MinValue
            if ($null -ne $anchor -and $status -eq 'open' -and
                [datetimeoffset]::TryParse($due, [ref]$dueParsed) -and $dueParsed -lt $anchor) {
                Add-Failure "$ledgerRelative`:$entryLine standing need held by $holder is still 'open' with a due time of $due, behind the campaign anchor $($anchor.ToString('o')); elapsed time reaching a need's due time must settle it from the holder's own state (Runtime Section 2.4, Decision 088)."
            }
        }
    }
}

$evidenceGenerator = Join-Path $root "tools/generate_validation_evidence.py"
if (-not $CoreOnly -and (Test-Path -LiteralPath $evidenceGenerator -PathType Leaf)) {
    $evidenceRunner = Join-Path $PSScriptRoot "generate_validation_evidence.ps1"
    $previousErrorAction = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $evidenceOutput = & powershell -NoProfile -ExecutionPolicy Bypass `
        -File $evidenceRunner -RepositoryRoot $root -Check 2>&1 |
        ForEach-Object { $_.ToString() }
    $evidenceExitCode = $LASTEXITCODE
    $ErrorActionPreference = $previousErrorAction
    if ($evidenceExitCode -ne 0) {
        Add-Failure (
            "Generated validation evidence block is not synchronized (exit {0}): {1}" -f
            $evidenceExitCode,
            ($evidenceOutput -join " ")
        )
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
