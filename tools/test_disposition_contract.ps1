[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")

# Why this test exists
#
# Decision 091 made Want, Fear, Secret and Voice REQUIRED canonical state on any
# Character a Runtime will play, and nothing read the requirement. That is the
# shape `docs/DEVELOPMENT_WORKFLOW.md` names as this repository's most-repeated
# defect and Decision 055 sites structurally: an obligation with no enforcement
# point holds only by assumption, and at rest it is indistinguishable from a
# mechanism that is simply quiet. F-028 recorded the same thing from the other
# side -- the loading machinery was correct and there was nothing to load.
#
# Two properties are under test and they pull against each other, which is the
# reason for every case below:
#
#   1. The gate FIRES. A Character inside a declared coverage set that carries
#      no disposition and does not declare itself a referent is rejected.
#   2. The gate is CORRECTLY NARROW. It is silent on a world that declared
#      nothing, on a Character below the baseline, and on a declared referent --
#      because a gate that opened red against every existing cast would be
#      switched off, and backfilling a cast is play's work under save
#      discipline, not a validator's.
#
# Cases run against isolated copies of the real repository and assert the REAL
# validator's verdict on its durable message text. A gate whose firing has never
# been demonstrated is indistinguishable from one that cannot fire.

function Invoke-Validator {
    param([string]$RepositoryRoot)

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $RepositoryRoot -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

# The subject world and campaign. The baseline is resolved from the ledger
# rather than pinned: it is set immediately below a real active Character so
# that one entity falls inside coverage and its predecessors fall outside. A
# hardcoded identifier would rot into a false pass the first time the cast
# grows past it -- F-013's defect class, which this version found in five more
# places than F-013 recorded.
$world = "gatefall"
$campaign = "gatefall_pendragon_001"
$profileRelative = "worlds/$world/206_WORLD_RULE_PROFILE.md"
$ledgerRelative = "campaigns/$campaign/130_NPCS_AND_FACTIONS.md"

$ledgerText = Get-Content -LiteralPath (Join-Path $root $ledgerRelative) -Raw
$characterIds = @(
    [regex]::Matches($ledgerText, '(?ms)^id: (?<id>ENT-\d{6})\r?$(?<body>.*?)^```') |
        Where-Object { $_.Groups['body'].Value -match '(?m)^type:[ \t]*Character[ \t]*$' -and
                       $_.Groups['body'].Value -match '(?m)^status:[ \t]*active[ \t]*$' } |
        ForEach-Object { $_.Groups['id'].Value } |
        Sort-Object
)
if ($characterIds.Count -lt 2) {
    throw "Fewer than two active Characters in $ledgerRelative; the prospective-coverage cases have nothing to straddle."
}
$subject = $characterIds[-1]                       # inside coverage
$below = $characterIds[0]                          # outside coverage
$baseline = 'ENT-{0:D6}' -f ([int]$subject.Substring(4) - 1)

function New-CoverageManifest {
    param([string]$BaselineId, [switch]$OmitBaseline)

    $lines = @('', '```yaml', 'disposition_coverage_version: "1.0"', 'disposition_coverage:')
    if (-not $OmitBaseline) { $lines += "  baseline_as_of: $BaselineId" }
    $lines += '```'
    $lines += ''
    return ($lines -join "`n")
}

# Insert lines into a named entity's canonical_state. Anchored on the entity's
# own id so the edit cannot silently land in a neighbouring block if the ledger
# is reordered.
function Add-CanonicalStateLines {
    param([string]$Text, [string]$EntityId, [string[]]$Lines)

    $pattern = '(?ms)(^id: ' + [regex]::Escape($EntityId) + '\r?$.*?^canonical_state:\r?$)'
    $inserted = [regex]::Replace($Text, $pattern, { param($m) $m.Groups[1].Value + "`n" + ($Lines -join "`n") }, 1)
    if ($inserted -eq $Text) {
        throw "Could not find a canonical_state block for $EntityId in the fixture ledger."
    }
    return $inserted
}

$disposition = @(
    '  want: "To get back on the boards without being a body on someone else''s roster."',
    '  fear: "That the shoulder never comes right, and eleven months becomes the rest of it."',
    '  secret: "She has not told anyone how bad the shoulder still is. **Known to:** nobody."',
    '  voice: "Short sentences, no hedging. Names the practical objection and stops talking."'
)

$failures = [System.Collections.Generic.List[string]]::new()
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-disposition-" + [guid]::NewGuid().ToString("N"))
$fixture = Join-Path $tempRoot "repo"

try {
    New-Item -ItemType Directory -Path $tempRoot | Out-Null
    New-FixtureRepository -SourceRoot $root -DestinationRoot $fixture | Out-Null

    $restorePoint = New-FixtureRestorePoint -Root $fixture -Paths @($profileRelative, $ledgerRelative)

    $baselineRun = Invoke-Validator $fixture
    if ($baselineRun.ExitCode -ne 0) {
        throw "The unmodified fixture does not validate, so no case below proves anything:`n$($baselineRun.Output)"
    }

    # Every case is (coverage manifest?) x (what the subject's record carries).
    # `Expect` is asserted on message text, never on the exit code alone.
    $cases = @(
        @{ Name = 'D-01 covered Character with no disposition'
           Coverage = $true;  Target = $subject; Lines = @()
           ShouldFail = $true;  Expect = 'is missing want, fear, secret, voice' }

        @{ Name = 'D-02 covered Character with all four fields'
           Coverage = $true;  Target = $subject; Lines = $disposition
           ShouldFail = $false; Expect = $null }

        @{ Name = 'D-03 covered Character declaring itself a referent'
           Coverage = $true;  Target = $subject; Lines = @('  disposition_class: referent')
           ShouldFail = $false; Expect = $null }

        @{ Name = 'D-04 disposition_class outside the vocabulary'
           Coverage = $true;  Target = $subject; Lines = @('  disposition_class: bystander')
           ShouldFail = $true;  Expect = 'it is one of played or referent' }

        @{ Name = 'D-05 partial disposition names only what is missing'
           Coverage = $true;  Target = $subject; Lines = @($disposition[0], $disposition[3])
           ShouldFail = $true;  Expect = 'is missing fear, secret' }

        @{ Name = 'D-06 an empty required field is not a present one'
           Coverage = $true;  Target = $subject
           Lines = @($disposition[0], $disposition[1], $disposition[3], '  secret: ""')
           ShouldFail = $true;  Expect = 'is missing secret' }

        # The narrowness half. Each of these three would, if it failed, mean the
        # gate had turned a documented backlog into a build break.
        @{ Name = 'D-07 no world declares coverage'
           Coverage = $false; Target = $subject; Lines = @()
           ShouldFail = $false; Expect = $null }

        # Prospectivity, isolated. Coverage is live and the one Character inside
        # it is satisfied, so the run's verdict is entirely about the cast below
        # the baseline -- every one of which carries no disposition in live
        # canon. Acceptance here is the property; `MustNotMention` makes it an
        # assertion rather than an absence of noise, since a pass would look
        # identical if the gate had simply stopped running.
        @{ Name = 'D-08 the cast below the baseline carries no obligation'
           Coverage = $true;  Target = $subject; Lines = $disposition
           ShouldFail = $false; Expect = $null; MustNotMention = $below }

        @{ Name = 'D-09 an explicitly played Character still owes the fields'
           Coverage = $true;  Target = $subject; Lines = @('  disposition_class: played')
           ShouldFail = $true;  Expect = 'is missing want, fear, secret, voice' }
    )

    foreach ($case in $cases) {
        Restore-FixtureFiles -Root $fixture -RestorePoint $restorePoint
        try {
            if ($case.Coverage) {
                Add-Content -LiteralPath (Join-Path $fixture $profileRelative) -Value (New-CoverageManifest $baseline)
            }
            if ($case.Lines.Count -gt 0) {
                $ledgerPath = Join-Path $fixture $ledgerRelative
                $text = Get-Content -LiteralPath $ledgerPath -Raw
                [System.IO.File]::WriteAllText($ledgerPath, (Add-CanonicalStateLines $text $case.Target $case.Lines))
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

        if ($case.ContainsKey('MustNotMention') -and $result.Output -match [regex]::Escape($case.MustNotMention)) {
            $failures.Add("$($case.Name): the validator named $($case.MustNotMention), which sits below the declared baseline and owes nothing:`n$($result.Output)") | Out-Null
        }
    }

    # A malformed manifest must fail loudly rather than parse to "no coverage".
    # Silent degradation to a null policy is exactly how a gate becomes
    # unreachable without anyone noticing -- F-002's cause, one layer down.
    Restore-FixtureFiles -Root $fixture -RestorePoint $restorePoint
    try {
        Add-Content -LiteralPath (Join-Path $fixture $profileRelative) -Value (New-CoverageManifest $baseline -OmitBaseline)
        $malformed = Invoke-Validator $fixture
    } finally {
        Restore-FixtureFiles -Root $fixture -RestorePoint $restorePoint
    }
    if ($malformed.ExitCode -eq 0) {
        $failures.Add("D-10 coverage manifest without a baseline: expected rejection, but a manifest declaring an obligation and naming no baseline passed as though it declared nothing.") | Out-Null
    } elseif ($malformed.Output -notmatch 'without a baseline_as_of entity identifier') {
        $failures.Add("D-10 coverage manifest without a baseline: rejected for the wrong reason:`n$($malformed.Output)") | Out-Null
    }

    $drifted = Assert-FixtureRestored -Root $fixture -RestorePoint $restorePoint
    if ($drifted.Count -gt 0) {
        $failures.Add("Fixture leak: $($drifted -join ', ') was not restored to its baseline bytes, so every case after the first ran against unknown state.") | Out-Null
    }
    $residual = Invoke-Validator $fixture
    if ($residual.ExitCode -ne 0) {
        $failures.Add("Fixture leak: the shared fixture no longer validates after the cases ran:`n$($residual.Output)") | Out-Null
    }
} finally {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
}

if ($failures.Count -gt 0) {
    Write-Host "Disposition contract FAILED ($($failures.Count) case(s))" -ForegroundColor Red
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

Write-Host "Disposition contract PASSED (10 cases; baseline straddled at $baseline)"

# Vacuity is reported, never implied. Version 0.3 spent a version learning that
# a green suite implying coverage which does not exist is worse than a red one.
$adopted = @(
    Get-ChildItem -LiteralPath (Join-Path $root "worlds") -Directory |
        Where-Object {
            $profile = Join-Path $_.FullName "206_WORLD_RULE_PROFILE.md"
            (Test-Path -LiteralPath $profile -PathType Leaf) -and
            (Get-Content -LiteralPath $profile -Raw) -match '(?m)^disposition_coverage_version:'
        } | ForEach-Object { $_.Name }
)
if ($adopted.Count -eq 0) {
    Write-Host "  Note: no world declares disposition coverage, so the gate is vacuous against real state." -ForegroundColor Yellow
    Write-Host "  Decision 091 authored the model; adopting it is world authoring and belongs to a play session."
} else {
    Write-Host "  Coverage declared by: $($adopted -join ', ')"
}
exit 0
