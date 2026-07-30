[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [switch]$Quiet
)

# Tier 2 — the checkpoint production gate (Recommendation R9).
#
# This is the one command the Save Algorithm, the save skill, the README, and
# the Gameplay Start Guide name. It runs Tier 1 and then the checkpoint form,
# completeness, lineage, and index/Current-State synchronization contract.
#
# Scope note, stated rather than implied: the checkpoint contract is
# repository-wide. It validates every campaign's every checkpoint, which
# includes a checkpoint just written, so it is correct as a post-promotion
# gate — but it takes no -Campaign or -Checkpoint argument and this command
# does not pretend to offer one. Narrowing it is a change to
# test_checkpoint_contract.ps1, not a parameter this wrapper can fake.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}
$root = (Resolve-Path -LiteralPath $RepositoryRoot).Path.TrimEnd([char[]]"\/")
$toolsRoot = $PSScriptRoot

$livePath = Join-Path $toolsRoot "validate_live.ps1"
$liveArgs = @("-RepositoryRoot", $root)
if ($Quiet) { $liveArgs += "-Quiet" }
& powershell -NoProfile -ExecutionPolicy Bypass -File $livePath @liveArgs
if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Tier 2 checkpoint validation FAILED (Tier 1 did not pass)" -ForegroundColor Red
    exit 1
}

# The contract test reads the repository it lives in rather than a supplied
# root, so a non-default root has to be refused rather than silently ignored.
$contractPath = Join-Path $toolsRoot "test_checkpoint_contract.ps1"
$defaultRoot = (Resolve-Path -LiteralPath (Split-Path -Parent $PSScriptRoot)).Path.TrimEnd([char[]]"\/")
if ($root -ne $defaultRoot) {
    Write-Host ""
    Write-Host "Tier 2 checkpoint validation FAILED: the checkpoint contract validates the repository containing tools/, so -RepositoryRoot '$root' cannot be honored." -ForegroundColor Red
    exit 1
}

$output = & powershell -NoProfile -ExecutionPolicy Bypass -File $contractPath 2>&1 |
    ForEach-Object { $_.ToString() }
if ($LASTEXITCODE -ne 0) {
    Write-Host "--- checkpoint contract: FAILED ---" -ForegroundColor Red
    $output | ForEach-Object { Write-Host $_ }
    Write-Host ""
    Write-Host "Tier 2 checkpoint validation FAILED (checkpoint contract)" -ForegroundColor Red
    exit 1
}
if (-not $Quiet) {
    Write-Host "--- checkpoint contract: passed ---" -ForegroundColor DarkGray
    $output | ForEach-Object { Write-Host $_ }
    Write-Host ""
    Write-Host "Tier 2 checkpoint validation PASSED" -ForegroundColor Green
}
exit 0
