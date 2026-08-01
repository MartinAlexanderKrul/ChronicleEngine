[CmdletBinding()]
param(
    [string]$Campaign,
    [switch]$Check,
    [string]$RepositoryRoot
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

$python = Get-Command python -ErrorAction SilentlyContinue
if ($null -eq $python) {
    Write-Host "Validation evidence generation FAILED (Python is unavailable)." -ForegroundColor Red
    exit 2
}

$arguments = @(
    (Join-Path $PSScriptRoot "generate_validation_evidence.py"),
    "--repository-root", $RepositoryRoot
)
if (-not [string]::IsNullOrWhiteSpace($Campaign)) {
    $arguments += @("--campaign", $Campaign)
}
if ($Check) {
    $arguments += "--check"
}

& $python.Source @arguments
exit $LASTEXITCODE
