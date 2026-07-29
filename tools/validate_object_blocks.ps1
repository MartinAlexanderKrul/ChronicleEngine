[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [switch]$Quiet
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

$python = Get-Command python -ErrorAction SilentlyContinue
if ($null -eq $python) {
    Write-Host "Object block validation FAILED (Python is unavailable)." -ForegroundColor Red
    exit 2
}

$arguments = @(
    (Join-Path $PSScriptRoot "validate_object_blocks.py"),
    "--repository-root",
    $RepositoryRoot
)
if ($Quiet) {
    $arguments += "--quiet"
}

& $python.Source @arguments
exit $LASTEXITCODE
