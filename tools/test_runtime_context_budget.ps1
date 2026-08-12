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
# The hard budget is enforced two ways: `$clean.ExitCode` above fails on any hard
# overage, and the bound below is checked explicitly. WARN remains an accepted
# steady state and stays visible in every report, which is the point of having a
# warning threshold at all — it is a signal to trim, not a gate. Trimming the
# resident core is owner authoring (Recommendation R14) and is not discharged by
# this ruling.
#
# The ceiling is PARSED from `system/RUNTIME_CONTEXT_BUDGETS.yaml`, never restated
# here. It used to be the literal 8,000, with a comment asserting the budget was
# "unchanged at 8,000" — and when an owner ruling moved it to 10,000 for F-020 /
# F-021, this gate failed on a repository that was correct, because a hand-copied
# constant went stale the moment its source moved. That is `F-013`'s exact defect
# class ("a validator constant that encodes a value living elsewhere, updated by
# hand"), landing on the file that measures the budget. `Get-LadderCeiling` in
# validate_repository.ps1 already took the same lesson: parse the authority.
$budgetFile = Join-Path (Split-Path -Parent $PSScriptRoot) 'system/RUNTIME_CONTEXT_BUDGETS.yaml'
$budgetText = Get-Content -LiteralPath $budgetFile -Raw
# Anchored under `surfaces:` deliberately. The file carries a second `resident:`
# key elsewhere (a category list), and an unanchored match finds that one first,
# yielding a block with no thresholds in it at all.
$residentBlock = [regex]::Match($budgetText, '(?ms)^surfaces:\r?\n.*?^  resident:\r?\n(?<body>.*?)(?=^  \w)')
Assert-True $residentBlock.Success "Cannot locate the resident surface under `surfaces:` in $budgetFile; the ceiling must be read from the file that owns it."
$residentFailMatch = [regex]::Match($residentBlock.Groups['body'].Value, '(?m)^\s*failure_tokens:\s*(?<v>\d+)')
Assert-True $residentFailMatch.Success "The resident surface declares no failure_tokens; the hard ceiling has no owner to read."
$residentFail = [int]$residentFailMatch.Groups['v'].Value
# A parse that silently yielded 0 or something absurd would make the assertion
# below vacuous or unfailable, so the parsed value is sanity-bounded rather than
# trusted.
Assert-True ($residentFail -ge 4000 -and $residentFail -le 32000) "Parsed resident failure_tokens ($residentFail) is outside any plausible range; the parse is wrong, not the card."

Assert-True ($clean.Output -match '(?:PASS|WARN) resident: (?<tokens>\d+) tokens') "Resident measurement is missing."
Assert-True ([int]$Matches["tokens"] -lt $residentFail) "Resident core is not below its declared hard ceiling of $residentFail estimated tokens (system/RUNTIME_CONTEXT_BUDGETS.yaml)."
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
# Owner ruling, 2026-08-05: that comment described an intent the code never
# implemented. `failure_tokens` was raised 35,000 -> 40,000 in the budget file
# and the literal here stayed at 35,000, so for the whole of that window the
# measurement passed the surface (`fail=40000`, and `$clean.ExitCode` with it)
# while this assertion failed it -- the precise divergence the paragraph above
# warned about, produced by the paragraph above claiming to follow a number it
# was in fact restating. The figure is now READ from the budget file, so the
# next raise cannot leave a stale copy behind. There is one authority and it is
# `readiness.failure_tokens`.
#
# This does not excuse the growth. The budget file records at that same key that
# raising the ceiling has now deferred the trimming work twice, and the readiness
# surface stands at ~38,300 against a 40,000 ceiling -- a countdown, not a margin.
# Trimming is owner authoring (Recommendation R14) and is not discharged here.
#
# WARN is therefore an accepted steady state and stays visible in every report,
# which is the point of having a warning threshold at all. The hard budget is
# still enforced two ways: `$clean.ExitCode` above fails on any hard overage,
# and the bound below is checked explicitly against the declared figure.
$budgetPath = Join-Path $root "system/RUNTIME_CONTEXT_BUDGETS.yaml"
$budgetText = Get-Content -LiteralPath $budgetPath -Raw -Encoding UTF8
# Bound the scan to the `readiness:` surface block. Without that bound the first
# `failure_tokens` in the file wins, which belongs to `resident` (8,000) and would
# silently assert a ceiling five times too tight.
$readinessBlock = [regex]::Match($budgetText, '(?ms)^  readiness:\r?\n(?<body>(?:^(?:[ \t]{4}.*)?\r?\n)*)')
Assert-True $readinessBlock.Success `
    "Could not locate the `readiness:` surface block in $budgetPath."
$declared = [regex]::Match($readinessBlock.Groups["body"].Value, '(?m)^[ \t]{4}failure_tokens:[ \t]*(?<tokens>\d+)[ \t]*$')
Assert-True $declared.Success `
    "The `readiness:` surface declares no failure_tokens in $budgetPath."
$readinessCeiling = [int]$declared.Groups["tokens"].Value
Assert-True ($clean.Output -match '(?:PASS|WARN) readiness:gatefall_pendragon_001: (?<gatefall>\d+) tokens') `
    "Gatefall readiness measurement is missing."
Assert-True ([int]$Matches["gatefall"] -lt $readinessCeiling) `
    "Gatefall readiness is not below the $readinessCeiling hard budget declared at readiness.failure_tokens (measured $($Matches['gatefall']))."
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
