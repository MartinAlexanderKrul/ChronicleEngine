[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [switch]$Quiet
)

# Tier 1 — the live structural gate (Recommendation R9).
#
# One command for "is live state well-formed right now". It is the gate to run
# during ordinary work and before a checkpoint; `validate_checkpoint.ps1` is
# Tier 2 and runs this first.
#
# Before this existed, the Save Algorithm named validate_repository.ps1 while
# the save skill also required the checkpoint contract and new_checkpoint.ps1
# invoked its own pair, so four callers disagreed about what "validated" meant.
# The tiers exist so that question has one answer per level.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}
$root = (Resolve-Path -LiteralPath $RepositoryRoot).Path.TrimEnd([char[]]"\/")
$toolsRoot = $PSScriptRoot

$gates = @(
    @{ Name = "repository structure"; Script = "validate_repository.ps1" },
    @{ Name = "runtime configuration"; Script = "validate_runtime_configuration.ps1" }
)

$failed = [System.Collections.Generic.List[string]]::new()

foreach ($gate in $gates) {
    $scriptPath = Join-Path $toolsRoot $gate.Script
    if (-not (Test-Path -LiteralPath $scriptPath -PathType Leaf)) {
        Write-Host "Tier 1 live validation FAILED: missing gate $($gate.Script)" -ForegroundColor Red
        exit 1
    }
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $scriptPath `
        -RepositoryRoot $root 2>&1 | ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    if ($exitCode -ne 0) {
        $failed.Add($gate.Name) | Out-Null
        Write-Host "--- $($gate.Name): FAILED ---" -ForegroundColor Red
        $output | ForEach-Object { Write-Host $_ }
    } elseif (-not $Quiet) {
        Write-Host "--- $($gate.Name): passed ---" -ForegroundColor DarkGray
        $output | ForEach-Object { Write-Host $_ }
    }
}

if ($failed.Count -gt 0) {
    Write-Host ""
    Write-Host "Tier 1 live validation FAILED ($($failed -join ', '))" -ForegroundColor Red
    exit 1
}

if (-not $Quiet) {
    Write-Host ""
    Write-Host "Tier 1 live validation PASSED" -ForegroundColor Green
}
exit 0
