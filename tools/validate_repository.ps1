[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [switch]$Quiet
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$failures = [System.Collections.Generic.List[string]]::new()

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

function Get-LineNumber {
    param(
        [string]$Text,
        [int]$Index
    )

    if ($Index -le 0) {
        return 1
    }

    return ([regex]::Matches($Text.Substring(0, $Index), "\n").Count + 1)
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
}

$definitions = @{}
$references = [System.Collections.Generic.List[object]]::new()
$objectCount = 0
$placeholderPattern = '(ENT|REC|EVT|REL)-XXXXXX|<(required|optional|generated):'
$identifierPattern = '(?<![A-Z0-9-])(ENT|REC|EVT|REL)-(\d{6})(?!\d)'
$definitionPattern = '(?m)^[ \t]*id:[ \t]*((ENT|REC|EVT|REL)-(\d{6}))[ \t]*(?:#.*)?\r?$'
$objectBlockPattern = '(?ms)^```ya?ml[ \t]*\r?\n(.*?)^```[ \t]*\r?$'

foreach ($file in $canonicalFiles) {
    $relativePath = Get-RelativePath $file.FullName
    $text = Get-Content -Raw -LiteralPath $file.FullName

    foreach ($match in [regex]::Matches($text, $placeholderPattern)) {
        $line = Get-LineNumber $text $match.Index
        Add-Failure "$relativePath`:$line contains unresolved placeholder $($match.Value)."
    }

    foreach ($match in [regex]::Matches($text, $identifierPattern)) {
        $references.Add([pscustomobject]@{
            Id = $match.Value
            Prefix = $match.Groups[1].Value
            Number = [int]$match.Groups[2].Value
            Path = $relativePath
            Line = Get-LineNumber $text $match.Index
        })
    }

    foreach ($match in [regex]::Matches($text, $definitionPattern)) {
        $id = $match.Groups[1].Value
        if (-not $definitions.ContainsKey($id)) {
            $definitions[$id] = [System.Collections.Generic.List[object]]::new()
        }
        $definitions[$id].Add([pscustomobject]@{
            Path = $relativePath
            Line = Get-LineNumber $text $match.Index
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
        $line = Get-LineNumber $text ($blockMatch.Index + $idMatch.Index)
        foreach ($field in @("canonical_record", "schema_version", "status", "provenance")) {
            if (-not [regex]::IsMatch($block, "(?m)^[ \\t]*$field[ \\t]*:")) {
                Add-Failure "$relativePath`:$line object $id is missing required field '$field'."
            }
        }

        $canonicalRecord = [regex]::Match($block, '(?m)^[ \t]*canonical_record:[ \t]*(REC-\d{6})[ \t]*(?:#.*)?\r?$')
        if (-not $canonicalRecord.Success) {
            Add-Failure "$relativePath`:$line object $id does not have one valid REC canonical_record reference."
        } elseif ($id.StartsWith("REC-") -and $canonicalRecord.Groups[1].Value -ne $id) {
            Add-Failure "$relativePath`:$line Canonical Record $id must reference itself as canonical_record."
        }
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
        Add-Failure "$($reference.Path):$($reference.Line) references invalid identifier $($reference.Id)."
        continue
    }

    if (-not $highWater.ContainsKey($reference.Prefix)) {
        continue
    }

    if ($reference.Number -gt $highWater[$reference.Prefix]) {
        Add-Failure "$($reference.Path):$($reference.Line) references $($reference.Id), above registry high-water mark $($reference.Prefix)-$($highWater[$reference.Prefix].ToString('D6'))."
    }

    if (-not $allocationCoverage[$reference.Prefix].ContainsKey($reference.Number)) {
        Add-Failure "$($reference.Path):$($reference.Line) references $($reference.Id), which has no allocation-log entry."
    }

    if (-not $definitions.ContainsKey($reference.Id)) {
        Add-Failure "$($reference.Path):$($reference.Line) references $($reference.Id), which has no live object definition."
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
