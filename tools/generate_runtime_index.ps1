[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [switch]$Check
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

$python = Get-Command python -ErrorAction SilentlyContinue
if ($null -eq $python) {
    Write-Host "Runtime index generation FAILED (Python is unavailable)." -ForegroundColor Red
    exit 2
}

$arguments = @(
    (Join-Path $PSScriptRoot "generate_runtime_index.py"),
    "--repository-root", $RepositoryRoot
)
if ($Check) {
    $arguments += "--check"
}

& $python.Source @arguments
exit $LASTEXITCODE
