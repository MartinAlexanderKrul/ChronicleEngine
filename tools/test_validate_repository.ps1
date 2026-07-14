[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
$fixtureRoot = Join-Path $PSScriptRoot "tests/fixtures"

function Invoke-Validator {
    param([string]$Root)

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator -RepositoryRoot $Root 2>&1 |
        ForEach-Object { $_.ToString() }

    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

function Assert-Contains {
    param([string]$Text, [string]$Expected, [string]$Because)

    if ($Text -notlike "*$Expected*") {
        throw "$Because`nExpected output to contain:`n  $Expected`nActual output:`n$Text"
    }
}

function Assert-NotContains {
    param([string]$Text, [string]$Unexpected, [string]$Because)

    if ($Text -like "*$Unexpected*") {
        throw "$Because`nExpected output NOT to contain:`n  $Unexpected`nActual output:`n$Text"
    }
}

# The live repository must pass.
$live = Invoke-Validator -Root $repositoryRoot
if ($live.ExitCode -ne 0) {
    throw "Expected the live repository to pass validation.`n$($live.Output)"
}

# A prose-only campaign with no standard ledgers must fail -- and must fail for
# that reason alone. The fixture carries a complete index and world so that an
# unrelated gate cannot keep this test green after the ledger checks regress.
$proseOnly = Invoke-Validator -Root (Join-Path $fixtureRoot "missing_campaign_ledgers")
if ($proseOnly.ExitCode -eq 0) {
    throw "Expected the prose-only campaign fixture to fail."
}
Assert-Contains -Text $proseOnly.Output -Expected "is missing required ledger" `
    -Because "The prose-only fixture must fail on the required campaign ledger set."
Assert-Contains -Text $proseOnly.Output -Expected "does not define its Canonical Record" `
    -Because "The prose-only fixture must fail on the missing Canonical Record."
Assert-NotContains -Text $proseOnly.Output -Unexpected "WORLDS_AND_CAMPAIGNS" `
    -Because "The prose-only fixture must not trip the index gate; that would mask a ledger-check regression."

# A live campaign absent from the worlds-and-campaigns index must fail. This is
# the observed startup failure: the campaign is complete and committed, and the
# Engine Welcome Page never lists it because nothing looked for it.
$unindexed = Invoke-Validator -Root (Join-Path $fixtureRoot "unindexed_campaign")
if ($unindexed.ExitCode -eq 0) {
    throw "Expected the unindexed-campaign fixture to fail."
}
Assert-Contains -Text $unindexed.Output -Expected "campaigns/example/ is a live campaign but has no row in system/WORLDS_AND_CAMPAIGNS.md" `
    -Because "A live campaign missing from the index must be named by the gate."
Assert-NotContains -Text $unindexed.Output -Unexpected "worlds/example_world/ has no row" `
    -Because "The fixture lists its world; only the campaign row is under test."

Write-Host "Validator regression tests PASSED" -ForegroundColor Green
exit 0
