[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$Campaign,
    [string]$Operation = "continue",
    [string]$RepositoryRoot
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

$python = Get-Command python -ErrorAction SilentlyContinue
if ($null -eq $python) {
    Write-Host "Operation plan FAILED (Python is unavailable)." -ForegroundColor Red
    exit 2
}

& $python.Source (Join-Path $PSScriptRoot "resolve_operation_plan.py") `
    "--repository-root" $RepositoryRoot `
    "--campaign" $Campaign `
    "--operation" $Operation
exit $LASTEXITCODE
