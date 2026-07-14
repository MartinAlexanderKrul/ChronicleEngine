[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
$invalidFixture = Join-Path $PSScriptRoot "tests/fixtures/missing_campaign_ledgers"

& powershell -NoProfile -ExecutionPolicy Bypass -File $validator -RepositoryRoot $repositoryRoot -Quiet
if ($LASTEXITCODE -ne 0) {
    throw "Expected the repository conformance fixture to pass."
}

& powershell -NoProfile -ExecutionPolicy Bypass -File $validator -RepositoryRoot $invalidFixture -Quiet
if ($LASTEXITCODE -eq 0) {
    throw "Expected the prose-only campaign fixture to fail."
}

Write-Host "Validator regression tests PASSED" -ForegroundColor Green
