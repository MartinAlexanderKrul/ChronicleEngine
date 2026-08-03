[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$measure = Join-Path $PSScriptRoot "measure_runtime_context.ps1"

function Invoke-Measurement {
    param([string]$BudgetFile = "system/RUNTIME_CONTEXT_BUDGETS.yaml")

    $previous = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $measure `
        -RepositoryRoot $root -BudgetFile $BudgetFile 2>&1 |
        ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $ErrorActionPreference = $previous
    return [pscustomobject]@{
        ExitCode = $exitCode
        Output = ($output -join "`n")
    }
}

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) {
        throw $Message
    }
}

$clean = Invoke-Measurement
Assert-True ($clean.ExitCode -eq 0) "The checked-in context plan exceeds a hard budget:`n$($clean.Output)"
Assert-True ($clean.Output -match 'PASS resident: (?<tokens>\d+) tokens') "Resident measurement is missing."
Assert-True ([int]$Matches["tokens"] -lt 8000) "Resident core is not below 8,000 estimated tokens."
Assert-True ($clean.Output -match 'PASS bootstrap: (?<tokens>\d+) tokens') "Bootstrap measurement is missing."
Assert-True ([int]$Matches["tokens"] -lt 16000) "Bootstrap is not below 16,000 estimated tokens."
# Gatefall readiness is asserted against the hard budget, not the warning line.
#
# Owner ruling, 2026-07-29. The audit's own success metric (Section 22) is that
# readiness stays below 30,000 estimated tokens before situation-specific
# fetches; 20,000 is the warning threshold, and pinning the test there made a
# growing campaign fail a gate the architecture does not actually set. Alexander
# is Level 11 with seventeen skills and a live Hidden quest, and that state is
# legitimately larger than it was when this number was first written.
#
# WARN is therefore an accepted steady state and stays visible in every report,
# which is the point of having a warning threshold at all. The hard budget is
# still enforced two ways: `$clean.ExitCode` above fails on any hard overage,
# and the bound below is checked explicitly.
Assert-True ($clean.Output -match '(?:PASS|WARN) readiness:gatefall_pendragon_001: (?<gatefall>\d+) tokens') `
    "Gatefall readiness measurement is missing."
Assert-True ([int]$Matches["gatefall"] -lt 30000) `
    "Gatefall readiness is not below the 30,000 hard budget (measured $($Matches['gatefall']))."
Assert-True ($clean.Output -match '100_CHARACTER_SHEET\.md\[object:ENT-000125\]\[fields:21\]') "Gatefall protagonist loading is not field-bounded."
# Assert the baseline mechanism reports, not that some surface happens to sit
# exactly on its baseline. The old form required a delta of zero somewhere, so
# an edit anywhere could break it for reasons unrelated to budgets - which it
# did, when a six-byte syntax repair moved the one surface that qualified.
Assert-True ($clean.Output -match 'PASS resident: \d+ tokens[^\r\n]*baseline=\d+ delta=[+-]\d+') `
    "Baseline comparison is missing from the resident measurement."

# Outside the repository, under a unique name. This used to be a fixed
# directory under tools/, which meant the one suite that mutates a budget was
# creating and deleting a directory inside the tree other suites recursively
# copy -- harmless while the runner was serial, a race as soon as it is not.
$temporaryDirectory = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-context-budget-" + [guid]::NewGuid().ToString("N"))
$temporaryBudget = Join-Path $temporaryDirectory "RUNTIME_CONTEXT_BUDGETS.yaml"
try {
    New-Item -ItemType Directory -Path $temporaryDirectory | Out-Null
    $source = Get-Content -LiteralPath (Join-Path $root "system/RUNTIME_CONTEXT_BUDGETS.yaml") -Raw -Encoding UTF8
    $overload = @"
      - file: docs/AI_GAMEPLAY_RUNTIME_PROFILE.md
        whole_file: true
        reason: injected full fetched document
"@
    $mutated = $source -replace '(?m)^  readiness:', ($overload + "`n  readiness:")
    Set-Content -LiteralPath $temporaryBudget -Value $mutated -Encoding UTF8

    $failed = Invoke-Measurement -BudgetFile $temporaryBudget
    Assert-True ($failed.ExitCode -ne 0) "Adding a full fetched document to bootstrap did not fail."
    Assert-True ($failed.Output -match 'FAIL bootstrap:') "Injected bootstrap overload did not identify the failing surface."
    Assert-True ($failed.Output -match 'docs/AI_GAMEPLAY_RUNTIME_PROFILE\.md') "Failure report did not name the exact contributor."
} finally {
    if (Test-Path -LiteralPath $temporaryDirectory) {
        Remove-Item -LiteralPath $temporaryDirectory -Recurse -Force
    }
}

Write-Host "Runtime context budget regression tests PASSED" -ForegroundColor Green
exit 0
