[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")

# Why this test exists
#
# Decision 095. A Relationship's `qualities` is its standing now (Data Model
# Section 10), and the Gameplay Close already said a save should advance it
# alongside `state`. Nothing read that. By Checkpoint 0178, 36 of Gatefall's 46
# relationships carried a state newer than anything else on the record, and the
# NPC ledger showed a second-in-command as a "working source" and a guild member
# as "not committed" -- through every gate.
#
# `qualities_as_of` dates the standing. The gate compares Event numbers only:
# the latest Event the relationship record cites anywhere against the Event the
# standing was re-read at. It first read `state` alone, which left every
# relationship whose state cites no Event out of reach for good -- 32 at
# adoption. S-08 is that gap. Four properties are under test:
#
#   1. The gate FIRES: a covered relationship with no qualities_as_of, or with
#      one older than the record, is rejected -- including when the Event that
#      moved it lands outside `state`.
#   2. The gate is CORRECTLY NARROW: a relationship whose state has not moved
#      past the campaign's baseline owes nothing.
#   3. SILENCE FAILS TOWARD THE OBLIGATION: no declared baseline is full
#      coverage, never none (the Decision 092 shape).
#   4. A SEALED VOLUME KEEPS ITS SCHEMA, and nothing else does: the exemption
#      that lets a byte-frozen volume survive a schema advance must not leak to
#      live ledgers.
#
# Cases run against an isolated copy of the real repository and assert the REAL
# validator's verdict on its message text. The subject and the Events are chosen
# by property from the live ledger, never pinned.

function Invoke-Validator {
    param([string]$RepositoryRoot)

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $RepositoryRoot -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

$campaign = "gatefall_pendragon_001"
$startupRelative = "campaigns/$campaign/090_CAMPAIGN_STARTUP.md"
$ledgerRelative = "campaigns/$campaign/130_NPCS_AND_FACTIONS.md"

$startupText = Get-Content -LiteralPath (Join-Path $root $startupRelative) -Raw
if ($startupText -notmatch '(?m)^relationship_standing_baseline:[ \t]*(EVT-\d{6})[ \t]*\r?$') {
    throw "$startupRelative declares no relationship_standing_baseline; nothing below can straddle it."
}
$liveBaseline = $Matches[1]
$liveBaselineNumber = [int]$liveBaseline.Substring(4)
$justBelow = 'EVT-{0:D6}' -f ($liveBaselineNumber - 1)

# The subject: a relationship that carries a standing date and whose state cites
# at least one Event. Its own earliest cited Event is a defined identifier older
# than the baseline, which is what the "older than state" case needs.
$ledgerText = Get-Content -LiteralPath (Join-Path $root $ledgerRelative) -Raw
$subject = $null
$olderEvent = $null
foreach ($m in [regex]::Matches($ledgerText, '(?ms)^id: (?<id>REL-\d{6})\r?$(?<body>.*?)^```')) {
    $body = $m.Groups['body'].Value
    if ($body -notmatch '(?m)^qualities_as_of:') { continue }
    if ($body -notmatch '(?m)^history: "') { continue }
    $state = [regex]::Match($body, '(?ms)^state:(?<s>.*?)(?=^[a-z_]+:|\z)')
    if (-not $state.Success) { continue }
    $cited = @([regex]::Matches($state.Groups['s'].Value, 'EVT-\d{6}') | ForEach-Object { $_.Value } | Sort-Object -Unique)
    if ($cited.Count -eq 0) { continue }
    $subject = $m.Groups['id'].Value
    $olderEvent = $cited[0]
    break
}
if (-not $subject) {
    throw "No relationship in $ledgerRelative carries qualities_as_of, a quoted history, and a state citing an Event; the gate has nothing to be tested on."
}

# No relationship may already cite the baseline Event anywhere in its record,
# or moving the baseline down one would cover relationships this suite did not
# construct. The gate reads the whole record, so this guard does too.
foreach ($m in [regex]::Matches($ledgerText, '(?ms)^id: (?<id>REL-\d{6})\r?$(?<body>.*?)^```')) {
    $record = [regex]::Replace($m.Groups['body'].Value, '(?m)^qualities_as_of:[^\r\n]*', '')
    if ($record -match [regex]::Escape($liveBaseline)) {
        throw "$($m.Groups['id'].Value) already cites $liveBaseline, so the straddle below is not isolated to $subject."
    }
}

function Set-StandingBaseline {
    param([string]$FixtureRoot, [string]$BaselineId)

    $path = Join-Path $FixtureRoot $startupRelative
    $text = Get-Content -LiteralPath $path -Raw
    if ([string]::IsNullOrEmpty($BaselineId)) {
        $text = [regex]::Replace($text, '(?m)^relationship_standing_baseline:[^\r\n]*\r?\n', '')
    } else {
        $text = [regex]::Replace($text, '(?m)^relationship_standing_baseline:[^\r\n]*$', "relationship_standing_baseline: $BaselineId")
    }
    [System.IO.File]::WriteAllText($path, $text)
}

# Edit only the subject's own block, anchored on its id.
function Edit-Subject {
    param([string]$Text, [scriptblock]$Change)

    $pattern = '(?ms)(^id: ' + [regex]::Escape($subject) + '\r?$.*?)(?=^```)'
    $edited = [regex]::Replace($Text, $pattern, { param($m) & $Change $m.Groups[1].Value }, 1)
    if ($edited -eq $Text) { throw "The edit to $subject changed nothing; the case would assert an unconstructed state." }
    return $edited
}

# Move the state: make it also cite the baseline Event, inside the state field
# only. Added beside an existing citation, never in place of one -- the
# chronicle's participation audits (Decision 085) require every citation the
# record already carries.
$moveState = {
    param($block)
    $s = [regex]::Match($block, '(?ms)^state:(?<s>.*?)(?=^[a-z_]+:|\z)')
    $inner = [regex]::Replace($s.Groups['s'].Value, 'EVT-\d{6}', ('$0, ' + $liveBaseline), 1)
    return $block.Substring(0, $s.Groups['s'].Index) + $inner + $block.Substring($s.Groups['s'].Index + $s.Groups['s'].Length)
}
# Move the record OUTSIDE state: cite the baseline Event in `history` only,
# leaving state exactly as it was. This is the relationship the first version of
# the gate could never see.
$moveHistory = {
    param($block)
    return [regex]::Replace($block, '(?m)^history: "', ('history: "`' + $liveBaseline + '`. '), 1)
}
function Set-AsOf { param($block, $value)
    if ($null -eq $value) { return [regex]::Replace($block, '(?m)^qualities_as_of:[^\r\n]*\r?\n', '') }
    return [regex]::Replace($block, '(?m)^qualities_as_of:[^\r\n]*$', "qualities_as_of: $value")
}

$failures = [System.Collections.Generic.List[string]]::new()
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-standing-" + [guid]::NewGuid().ToString("N"))
$fixture = Join-Path $tempRoot "repo"

try {
    New-Item -ItemType Directory -Path $tempRoot | Out-Null
    New-FixtureRepository -SourceRoot $root -DestinationRoot $fixture | Out-Null

    $restorePoint = New-FixtureRestorePoint -Root $fixture -Paths @($startupRelative, $ledgerRelative)

    $baselineRun = Invoke-Validator $fixture
    if ($baselineRun.ExitCode -ne 0) {
        throw "The unmodified fixture does not validate, so no case below proves anything:`n$($baselineRun.Output)"
    }

    # Property 4, first half: the fixture validated WITH a sealed volume still
    # declaring an older schema, if one exists. Recorded rather than asserted when
    # there is none, since a campaign with no seal pass is a valid repository.
    $sealedOld = @(Get-ChildItem -LiteralPath (Join-Path $fixture "campaigns") -Recurse -File -Filter "*.vol*.md" -ErrorAction SilentlyContinue |
        Where-Object { $_.FullName -match '[\\/]sealed[\\/]' -and (Get-Content -LiteralPath $_.FullName -Raw) -match '(?m)^schema_version: "0\.1\.7"' })

    $cases = @(
        @{ Name = 'S-01 moved state with no standing date'
           Baseline = $justBelow; Move = $true; AsOf = $null
           ShouldFail = $true;  Expect = "records no 'qualities_as_of'" }

        @{ Name = 'S-02 standing read before the state moved'
           Baseline = $justBelow; Move = $true; AsOf = $olderEvent
           ShouldFail = $true;  Expect = 'older than' }

        @{ Name = 'S-03 standing re-read at the state it describes'
           Baseline = $justBelow; Move = $true; AsOf = $liveBaseline
           ShouldFail = $false; Expect = $null }

        @{ Name = 'S-08 moved outside state, with state untouched'
           Baseline = $justBelow; Move = $false; MoveHistory = $true; AsOf = $olderEvent
           ShouldFail = $true;  Expect = 'older than' }

        # Narrowness: a state that has not moved past the baseline owes nothing,
        # even with no standing date at all.
        @{ Name = 'S-04 state at or below the baseline owes nothing'
           Baseline = $liveBaseline; Move = $false; AsOf = $null
           ShouldFail = $false; Expect = $null }

        # Silence widens coverage to every relationship; it never disables it.
        @{ Name = 'S-05 no declared baseline means fully covered'
           Baseline = $null; Move = $false; AsOf = $null
           ShouldFail = $true;  Expect = 'engine default' }

        @{ Name = 'S-06 a baseline that is not an Event identifier'
           Baseline = 'the current save'; Move = $false; AsOf = 'keep'
           ShouldFail = $true;  Expect = 'which is not an Event identifier' }

        # Property 4, second half: the sealed exemption is scoped to sealed/.
        @{ Name = 'S-07 a live ledger object may not keep an old schema'
           Baseline = $liveBaseline; Move = $false; AsOf = 'keep'; StaleSchema = $true
           ShouldFail = $true;  Expect = 'live canon must conform' }
    )

    foreach ($case in $cases) {
        Restore-FixtureFiles -Root $fixture -RestorePoint $restorePoint
        try {
            Set-StandingBaseline -FixtureRoot $fixture -BaselineId $case.Baseline
            $staleSchema = $case.ContainsKey('StaleSchema')
            $moveHistoryCase = $case.ContainsKey('MoveHistory')
            if ($case.Move -or $moveHistoryCase -or $case.AsOf -ne 'keep' -or $staleSchema) {
                $ledgerPath = Join-Path $fixture $ledgerRelative
                $text = Get-Content -LiteralPath $ledgerPath -Raw
                $text = Edit-Subject $text {
                    param($block)
                    if ($case.Move) { $block = & $moveState $block }
                    if ($moveHistoryCase) { $block = & $moveHistory $block }
                    if ($case.AsOf -ne 'keep') { $block = Set-AsOf $block $case.AsOf }
                    if ($staleSchema) {
                        $block = [regex]::Replace($block, '(?m)^schema_version: "[^"]+"', 'schema_version: "0.1.7"', 1)
                    }
                    return $block
                }
                [System.IO.File]::WriteAllText($ledgerPath, $text)
            }
            $result = Invoke-Validator $fixture
        } finally {
            Restore-FixtureFiles -Root $fixture -RestorePoint $restorePoint
        }

        if ($case.ShouldFail) {
            if ($result.ExitCode -eq 0) {
                $failures.Add("$($case.Name): expected the validator to reject this state, but it passed.") | Out-Null
            } elseif ($result.Output -notmatch [regex]::Escape($case.Expect)) {
                $failures.Add("$($case.Name): rejected, but not for the authored reason. Expected '$($case.Expect)'. Got:`n$($result.Output)") | Out-Null
            }
        } elseif ($result.ExitCode -ne 0) {
            $failures.Add("$($case.Name): expected this state to be accepted, but the validator rejected it:`n$($result.Output)") | Out-Null
        }
    }

    $drifted = Assert-FixtureRestored -Root $fixture -RestorePoint $restorePoint
    if ($drifted.Count -gt 0) {
        $failures.Add("Fixture leak: $($drifted -join ', ') was not restored to its baseline bytes.") | Out-Null
    }
} finally {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
}

if ($failures.Count -gt 0) {
    Write-Host "Relationship standing contract FAILED ($($failures.Count) case(s))" -ForegroundColor Red
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

Write-Host "Relationship standing contract PASSED (8 cases; subject $subject, baseline straddled at $liveBaseline)"
if ($sealedOld.Count -gt 0) {
    Write-Host "  Sealed volumes validated at an older schema: $($sealedOld.Count) (the exemption is live, and S-07 shows it is scoped)."
} else {
    Write-Host "  No sealed volume holds an older schema, so the exemption is exercised by S-07 only." -ForegroundColor Yellow
}
exit 0
