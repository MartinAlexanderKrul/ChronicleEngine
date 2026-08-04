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
# Resident is asserted against the hard budget, not the warning line — the same
# ruling the Gatefall readiness assertion below already carries, and for the same
# reason.
#
# Owner ruling, 2026-08-04. The resident core stood at 5,991 tokens against a
# 6,000 warning line: nine tokens of headroom, so *any* addition to the per-turn
# guardrail card failed this gate regardless of merit. Decision 090 added two
# per-turn invariants — a mandatory threshold is re-checked from stored state at
# every boundary, and a counter that moves no rendered value is still written —
# and Decision 055's finding is precisely that an obligation carried only by
# fetched instruction does not reliably fire, which is how `F-012` happened. The
# rules belong resident; the warning line was measuring the wrong thing when it
# blocked them.
#
# The hard budget is unchanged at 8,000 and is still enforced two ways:
# `$clean.ExitCode` above fails on any hard overage, and the bound below is
# checked explicitly. WARN remains an accepted steady state and stays visible in
# every report, which is the point of having a warning threshold at all — it is
# a signal to trim, not a gate. Trimming the resident core is owner authoring
# (Recommendation R14) and is not discharged by this ruling.
Assert-True ($clean.Output -match '(?:PASS|WARN) resident: (?<tokens>\d+) tokens') "Resident measurement is missing."
Assert-True ([int]$Matches["tokens"] -lt 8000) "Resident core is not below 8,000 estimated tokens."
Assert-True ($clean.Output -match 'PASS bootstrap: (?<tokens>\d+) tokens') "Bootstrap measurement is missing."
Assert-True ([int]$Matches["tokens"] -lt 16000) "Bootstrap is not below 16,000 estimated tokens."
# Gatefall readiness is asserted against the hard budget, not the warning line.
#
# Owner ruling, 2026-07-29. The audit's own success metric (Section 22) is that
# readiness stays below the hard budget before situation-specific fetches;
# 20,000 is the warning threshold, and pinning the test there made a growing
# campaign fail a gate the architecture does not actually set. Alexander is
# Level 11 with seventeen skills and a live Hidden quest, and that state is
# legitimately larger than it was when this number was first written.
#
# Owner ruling, 2026-08-03: the hard budget moves 30,000 -> 35,000, and this
# figure follows it rather than restating it. The reasoning, and what it does
# not excuse, are recorded once at `readiness.failure_tokens` in
# `system/RUNTIME_CONTEXT_BUDGETS.yaml`; two copies of a number that must agree
# is how this suite came to fail on a repository the measurement had passed.
#
# WARN is therefore an accepted steady state and stays visible in every report,
# which is the point of having a warning threshold at all. The hard budget is
# still enforced two ways: `$clean.ExitCode` above fails on any hard overage,
# and the bound below is checked explicitly.
Assert-True ($clean.Output -match '(?:PASS|WARN) readiness:gatefall_pendragon_001: (?<gatefall>\d+) tokens') `
    "Gatefall readiness measurement is missing."
Assert-True ([int]$Matches["gatefall"] -lt 35000) `
    "Gatefall readiness is not below the 35,000 hard budget (measured $($Matches['gatefall']))."
Assert-True ($clean.Output -match '100_CHARACTER_SHEET\.md\[object:ENT-000125\]\[fields:21\]') "Gatefall protagonist loading is not field-bounded."
# Assert the baseline mechanism reports, not that some surface happens to sit
# exactly on its baseline. The old form required a delta of zero somewhere, so
# an edit anywhere could break it for reasons unrelated to budgets - which it
# did, when a six-byte syntax repair moved the one surface that qualified.
# `PASS|WARN` for the same reason as the resident assertion above: this checks
# that the baseline mechanism *reports*, and it reports identically in either
# state. Pinning PASS made it a second copy of the warn-line gate, so the
# 2026-08-04 ruling had to be applied in both places or it was applied in
# neither — which is what happened on the first attempt.
Assert-True ($clean.Output -match '(?:PASS|WARN) resident: \d+ tokens[^\r\n]*baseline=\d+ delta=[+-]\d+') `
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
