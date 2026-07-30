[CmdletBinding()]
param(
    [switch]$Quiet
)

# Tier 3 — the development regression suite (Recommendation R9).
#
# Runs every fixture and behavioural contract test. This is NOT a gameplay save
# gate: saving runs Tier 2 (`validate_checkpoint.ps1`), which is the one command
# the Save Algorithm, the save skill, the README, and the start guide name.
#
# The audit's target for this tier is under twenty seconds. It is not met, and
# this reports its own total so the gap stays visible rather than assumed.
#
# The cause is measured, not assumed, and it is not the one the audit names.
# Six hypotheses were tested and five refuted: fixture copying (~4s across the
# suite), process startup (parse 0.015s, launch 0.179s), the per-block helpers
# (0.09s + 0.08s over the real block set), per-block field regexes (0.01s over
# 492 blocks), and object-creation volume (0.1s for 5,403 allocations). Reading
# every file and extracting all 541 blocks with nine field regexes is 0.24s.
#
# One real defect was found and fixed: a quadratic line-number lookup, worth
# 16% (3.74s -> 3.14s). The residual ~3.1s has no hot spot - it is distributed
# interpretation across roughly a thousand lines of PowerShell, once per each of
# ~35 validator invocations.
#
# So incremental optimization is exhausted. Reaching the target means porting
# the collection pass to the structured parser R10 introduced, which reads all
# 492 blocks with a real YAML parser in 0.8s including interpreter startup.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$toolsRoot = $PSScriptRoot
$suites = Get-ChildItem -LiteralPath $toolsRoot -Filter "test_*.ps1" |
    Where-Object { $_.Name -ne "test_all.ps1" } |
    Sort-Object Name

if ($suites.Count -eq 0) {
    Write-Host "Tier 3 regression suite FAILED: no test_*.ps1 found in tools/" -ForegroundColor Red
    exit 1
}

$results = [System.Collections.Generic.List[object]]::new()
$total = [Diagnostics.Stopwatch]::StartNew()

foreach ($suite in $suites) {
    $watch = [Diagnostics.Stopwatch]::StartNew()
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $suite.FullName 2>&1 |
        ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $watch.Stop()
    $results.Add([pscustomobject]@{
        Suite = $suite.Name
        Passed = ($exitCode -eq 0)
        Seconds = [math]::Round($watch.Elapsed.TotalSeconds, 1)
        Output = ($output -join "`n")
    }) | Out-Null
    if ($exitCode -ne 0) {
        Write-Host "FAIL  $($suite.Name)" -ForegroundColor Red
    } elseif (-not $Quiet) {
        Write-Host ("pass  {0,-44} {1,6}s" -f $suite.Name, [math]::Round($watch.Elapsed.TotalSeconds, 1)) -ForegroundColor DarkGray
    }
}

$total.Stop()
$failures = @($results | Where-Object { -not $_.Passed })

if ($failures.Count -gt 0) {
    Write-Host ""
    foreach ($failure in $failures) {
        Write-Host "--- $($failure.Suite) ---" -ForegroundColor Red
        Write-Host $failure.Output
        Write-Host ""
    }
    Write-Host "Tier 3 regression suite FAILED ($($failures.Count) of $($results.Count) suites) in $([math]::Round($total.Elapsed.TotalSeconds,1))s" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Tier 3 regression suite PASSED ($($results.Count) suites) in $([math]::Round($total.Elapsed.TotalSeconds,1))s" -ForegroundColor Green
if ($total.Elapsed.TotalSeconds -ge 20) {
    Write-Host "  Note: over Recommendation R9's twenty-second target. Measured cause is validator scan cost over large live ledgers, not fixture copying; structured parsing (R10) is the fix." -ForegroundColor Yellow
}
exit 0
