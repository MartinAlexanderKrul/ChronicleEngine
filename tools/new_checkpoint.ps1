[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Campaign,

    [Parameter(Mandatory = $true)]
    [string]$CheckpointType,

    [Parameter(Mandatory = $true)]
    [string]$Label,

    [Parameter(Mandatory = $true)]
    [string]$ExpectedParent,

    [Parameter(Mandatory = $true)]
    [string]$MutationReceipt,

    [string]$RepositoryRoot
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

$python = Get-Command python -ErrorAction SilentlyContinue
if ($null -eq $python) {
    Write-Host "Transactional checkpoint FAILED (Python is unavailable)." -ForegroundColor Red
    exit 2
}

& $python.Source `
    (Join-Path $PSScriptRoot "new_checkpoint.py") `
    "--repository-root" $RepositoryRoot `
    "--campaign" $Campaign `
    "--checkpoint-type" $CheckpointType `
    "--label" $Label `
    "--expected-parent" $ExpectedParent `
    "--mutation-receipt" $MutationReceipt
exit $LASTEXITCODE
