[CmdletBinding()]
param(
    [string[]]$Campaign,
    [string]$RepositoryRoot,
    [string]$BudgetFile = "system/RUNTIME_CONTEXT_BUDGETS.yaml",
    [switch]$StaticOnly
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

$python = Get-Command python -ErrorAction SilentlyContinue
if ($null -eq $python) {
    Write-Host "Runtime context measurement FAILED (Python is unavailable)." -ForegroundColor Red
    exit 2
}

$arguments = @(
    (Join-Path $PSScriptRoot "measure_runtime_context.py"),
    "--repository-root", $RepositoryRoot,
    "--budget-file", $BudgetFile
)
foreach ($name in $Campaign) {
    $arguments += @("--campaign", $name)
}
if ($StaticOnly) {
    $arguments += "--static-only"
}

& $python.Source @arguments
exit $LASTEXITCODE
