[CmdletBinding()]
param(
    [string[]]$Campaign,
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
    Write-Host "Campaign cast generation FAILED (Python is unavailable)." -ForegroundColor Red
    exit 2
}

$arguments = @(
    (Join-Path $PSScriptRoot "generate_campaign_cast.py"),
    "--repository-root", $RepositoryRoot
)
foreach ($name in $Campaign) {
    $arguments += @("--campaign", $name)
}
if ($Check) {
    $arguments += "--check"
}

& $python.Source @arguments
exit $LASTEXITCODE
