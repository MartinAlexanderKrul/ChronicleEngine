[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")

# Why this test exists
#
# Decision 093 gives the engine a yes. A player proposing a method the profile
# does not author gets it granted in the fiction, priced, and recorded as a
# provisional mechanic owing a ruling at a named barrier -- instead of the stop
# that `AGENTS.md` §2 has produced since the Foundation.
#
# The recording is the entire safety property. A grant that is written down is a
# bounded debt against a named profile section; a grant that is not is the rule
# drift `docs/400_CASE_STUDIES/401_MICTIAN_CAMPAIGN.md` records as the reference
# campaign's real failure. So the obligation cannot be prose. Two prior
# obligations in this engine were, and both are on the flag register: `F-012`'s
# mandatory offers went unsurfaced for a whole campaign, and `F-034` recorded
# that a prose obligation "will decay inside three sessions and leave no trace
# when it does."
#
# Four properties are under test, and two of them are about NOT firing:
#
#   1. The gate FIRES on an open grant whose due barrier the campaign passed.
#   2. The gate is CORRECTLY NARROW -- silent on a grant still within its
#      barrier, and on one that has been ruled on. A gate that opened red
#      against correct canon would teach the suite to be ignored, which is the
#      reasoning milestone 0.4.4 recorded for the disposition gate.
#   3. A malformed grant fails LOUDLY rather than parsing to nothing. Silent
#      degradation is `F-002`'s cause: `gatefall.board.deadline` was unreachable
#      from the day it was authored and every gate stayed green.
#   4. The resident branch and the magnitude prohibition are on the card, where
#      the failure happens (Decision 055).
#
# Fixtures are built by property, never pinned to a live figure -- the campaign's
# own latest checkpoint is read at runtime, so ordinary play cannot rot this
# suite into a false pass. That is `F-013`'s defect class, and it is live in this
# repository right now in `test_progression_audit_contract.ps1`.

$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-provisional-grant-" + [guid]::NewGuid().ToString("N"))
$utf8 = [System.Text.UTF8Encoding]::new($false)

$campaign = "gatefall_pendragon_001"
$ledgerRelative = "campaigns/$campaign/110_WORLD_LEDGER.md"
$residentRelative = "docs/AI_GAMEPLAY_RESIDENT_CORE.md"
$dataModelRelative = "engine/011_ENGINE_DATA_MODEL.md"

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw $Message }
}

function Get-Text { param([string]$Path) return [System.IO.File]::ReadAllText($Path) }
function Set-Text { param([string]$Path, [string]$Text) [System.IO.File]::WriteAllText($Path, $Text, $utf8) }

function Invoke-Validator {
    param([string]$FixtureRoot)
    $previous = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    # -CoreOnly: every assertion here is about provisional mechanics. The
    # manifest-resolving and index checks need a saves tree richer than this
    # fixture carries and would fail first on an unrelated invariant.
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $FixtureRoot -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $ErrorActionPreference = $previous
    return [pscustomobject]@{ ExitCode = $exitCode; Output = ($output -join "`n") }
}

# One fixture, restored between cases. Building the tree per case cost more than
# every assertion in this file combined.
$script:FixtureRoot = $null
$script:FixturePoint = $null

function New-Fixture {
    if ($null -eq $script:FixtureRoot) {
        $script:FixtureRoot = Join-Path $tempRoot ([guid]::NewGuid().ToString("N"))
        New-FixtureRepository -SourceRoot $root -DestinationRoot $script:FixtureRoot -IncludeSaves | Out-Null
        $script:FixturePoint = New-FixtureRestorePoint -Root $script:FixtureRoot -Paths @($ledgerRelative)
    } else {
        Restore-FixtureFiles -Root $script:FixtureRoot -RestorePoint $script:FixturePoint
    }
    return $script:FixtureRoot
}

function New-Grant {
    param([int]$DueCheckpoint, [string]$Status = 'open', [switch]$NoOwes, [switch]$NoDue, [switch]$NoStatus)

    $lines = @(
        'provisional_mechanics:'
        '  - subject: "Bind the captured core into the weapon"'
        '    granted: "The alteration takes; the item is changed in the fiction."'
        '    price: "The core is consumed and the item carries an instability."'
    )
    if (-not $NoOwes) { $lines += '    owes: "Gatefall Profile Section 12"' }
    if (-not $NoDue) { $lines += ("    due_checkpoint: {0:D4}" -f $DueCheckpoint) }
    if (-not $NoStatus) { $lines += ("    status: {0}" -f $Status) }
    $lines += '    provenance: "EVT-000001"'
    return "`n" + ($lines -join "`n") + "`n"
}

function Get-LatestCheckpoint {
    param([string]$FixtureRoot)
    $savesRoot = Join-Path $FixtureRoot "campaigns/$campaign/saves"
    $latest = 0
    foreach ($checkpoint in @(Get-ChildItem -LiteralPath $savesRoot -Directory -ErrorAction SilentlyContinue)) {
        $ordinal = [regex]::Match($checkpoint.Name, '^900_CHECKPOINT_(?<n>\d{4})$')
        if ($ordinal.Success) {
            $value = [int]$ordinal.Groups['n'].Value
            if ($value -gt $latest) { $latest = $value }
        }
    }
    return $latest
}

try {
    New-Item -ItemType Directory -Path $tempRoot -Force | Out-Null

    $fixture = New-Fixture
    $latest = Get-LatestCheckpoint -FixtureRoot $fixture
    Assert-True ($latest -gt 1) "Test precondition failed: the fixture campaign has no usable checkpoint history (latest read as $latest)."

    $ledgerPath = Join-Path $fixture $ledgerRelative
    $baseLedger = Get-Text $ledgerPath

    # --- Control: the untouched fixture validates -----------------------------
    # Every result below is a difference from this. Without it a fixture broken
    # for its own reasons would be scored as a gate firing correctly.
    $control = Invoke-Validator $fixture
    Assert-True ($control.ExitCode -eq 0) "The untouched fixture does not validate, so nothing below can be attributed to a mutation:`n$($control.Output)"

    # --- P-01: an open grant past its barrier is a finding ---------------------
    Set-Text $ledgerPath ($baseLedger + (New-Grant -DueCheckpoint ($latest - 1)))
    $overdue = Invoke-Validator $fixture
    Assert-True ($overdue.ExitCode -ne 0) "An open provisional mechanic owed a ruling at an already-passed barrier was accepted; the construct is unenforced and Decision 093 is prose:`n$($overdue.Output)"
    Assert-True ($overdue.Output -like "*still open at checkpoint*") "The overdue grant failed for the wrong reason:`n$($overdue.Output)"

    # --- P-02: correctly narrow, one -- a grant still within its barrier -------
    New-Fixture | Out-Null
    Set-Text $ledgerPath ($baseLedger + (New-Grant -DueCheckpoint ($latest + 1)))
    $withinBarrier = Invoke-Validator $fixture
    Assert-True ($withinBarrier.ExitCode -eq 0) "An open grant still inside its due barrier was rejected. A gate that fires on correct canon gets routed around:`n$($withinBarrier.Output)"

    # --- P-03: correctly narrow, two -- a settled grant is not chased ----------
    # `ratified` here, but the branch is on status being anything but `open`, so
    # `replaced`, `bounded` and `revoked` take the same path.
    New-Fixture | Out-Null
    Set-Text $ledgerPath ($baseLedger + (New-Grant -DueCheckpoint ($latest - 1) -Status 'ratified'))
    $settled = Invoke-Validator $fixture
    Assert-True ($settled.ExitCode -eq 0) "A grant that has been ruled on was still reported as owing a ruling:`n$($settled.Output)"

    # --- P-04: a grant with no due barrier fails loudly ------------------------
    # F-002: silent degradation to "no obligation" is how an authored rule became
    # unreachable on the day it was written while every gate stayed green.
    New-Fixture | Out-Null
    Set-Text $ledgerPath ($baseLedger + (New-Grant -DueCheckpoint $latest -NoDue))
    $noDue = Invoke-Validator $fixture
    Assert-True ($noDue.ExitCode -ne 0) "An open grant naming no due_checkpoint was accepted, so a grant can be recorded in a form nothing will ever surface:`n$($noDue.Output)"
    Assert-True ($noDue.Output -like "*no due_checkpoint*") "The undated grant failed for the wrong reason:`n$($noDue.Output)"

    # --- P-05: a grant with no owing section fails loudly ----------------------
    New-Fixture | Out-Null
    Set-Text $ledgerPath ($baseLedger + (New-Grant -DueCheckpoint ($latest + 1) -NoOwes))
    $noOwes = Invoke-Validator $fixture
    Assert-True ($noOwes.ExitCode -ne 0) "An open grant naming no owing profile section was accepted. A debt with no creditor is indistinguishable from a rule somebody invented:`n$($noOwes.Output)"
    Assert-True ($noOwes.Output -like "*no*owes*section*") "The uncredited grant failed for the wrong reason:`n$($noOwes.Output)"

    # --- P-06: a grant with no status fails loudly -----------------------------
    New-Fixture | Out-Null
    Set-Text $ledgerPath ($baseLedger + (New-Grant -DueCheckpoint ($latest + 1) -NoStatus))
    $noStatus = Invoke-Validator $fixture
    Assert-True ($noStatus.ExitCode -ne 0) "A provisional mechanic with no status was accepted, so an unsettled grant is indistinguishable from a settled one:`n$($noStatus.Output)"

    # --- P-07: the fixture is left clean --------------------------------------
    # Not decoration. Without it a restore that quietly stops working turns every
    # later case into an assertion about unknown state.
    New-Fixture | Out-Null
    $drifted = Assert-FixtureRestored -Root $script:FixtureRoot -RestorePoint $script:FixturePoint
    Assert-True ($drifted.Count -eq 0) ("Fixture files did not restore between cases: " + ($drifted -join ', '))
    $restored = Invoke-Validator $fixture
    Assert-True ($restored.ExitCode -eq 0) "The restored fixture does not validate, so a case wrote a file nobody captured:`n$($restored.Output)"

    # --- P-08: the branch is resident, and bounded -----------------------------
    # Decision 055: the Runtime Profile is fetched material and a fetched-only
    # guardrail does not fire. This failure happens at narration time.
    $resident = Get-Text (Join-Path $root $residentRelative)
    Assert-True ($resident -match 'A \*\*proposed capability\*\*') "The third branch is not on the resident card; the yes-path is fetched-only and will not fire at narration time (Decision 055)."
    Assert-True ($resident -match 'grant it in the fiction now, priced') "The resident layer does not state the grant as an instruction to act."
    Assert-True ($resident -match 'Record it the same turn as a provisional mechanic') "The resident layer does not require the grant to be recorded, which is the whole safety property."
    Assert-True ($resident -match 'a grant you cannot record is not grantable') "The resident layer leaves an unrecorded grant available, which is the silently-invented rule the stop exists to prevent."

    # The magnitude prohibition is what separates this from rule drift, and it is
    # asserted separately from the grant itself so that weakening one cannot be
    # mistaken for editing the other.
    Assert-True ($resident -match 'concedes capability and consequence, never magnitude') "The resident layer does not forbid conceding magnitude; without that line the third branch IS rule drift."
    Assert-True ($resident -match 'Needing a new number to narrate the grant means you have left this branch') "The resident layer does not send a Runtime needing a new number back to the mechanical-value stop."

    # --- P-09: the construct is defined where records are defined --------------
    $dataModel = Get-Text (Join-Path $root $dataModelRelative)
    Assert-True ($dataModel -match '(?m)^## 7\.10 Provisional Mechanic$') "Data Model Section 7.10 is missing; the resident card would require recording into a construct the engine does not define."
    Assert-True ($dataModel -match 'It may not concede \*\*magnitude\*\*') "Section 7.10 does not carry the magnitude prohibition, so the card and the Data Model could drift on the one property that makes this safe."
    Assert-True ($dataModel -match 'tracked state under Section 7\.3') "Section 7.10 no longer declares a provisional mechanic as tracked state, which is what keeps it off a schema advance (Decision 093 condition (c))."

    Write-Host "Provisional grant contract tests PASSED" -ForegroundColor Green
    Write-Host "  9 cases; fixture campaign latest checkpoint $($latest.ToString('D4'))"
    Write-Host "  NOTE: no live campaign records a provisional mechanic yet, so the"
    Write-Host "  validator leg is vacuous against real canon. It is proven by fixture"
    Write-Host "  only until play makes the first grant (milestone 0.4.5)."
    exit 0
}
finally {
    if (Test-Path -LiteralPath $tempRoot) {
        Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}
