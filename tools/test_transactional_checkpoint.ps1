[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$command = Join-Path $PSScriptRoot "new_checkpoint.ps1"
$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoots = [System.Collections.Generic.List[string]]::new()

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) {
        throw $Message
    }
}

function Write-Utf8 {
    param([string]$Path, [string]$Value)
    $parent = Split-Path -Parent $Path
    if ($parent -and -not (Test-Path -LiteralPath $parent)) {
        New-Item -ItemType Directory -Path $parent -Force | Out-Null
    }
    [System.IO.File]::WriteAllText($Path, $Value, [System.Text.UTF8Encoding]::new($false))
}

function New-Fixture {
    $fixture = Join-Path $temporaryParent ("chronicle-checkpoint-" + [guid]::NewGuid().ToString("N"))
    $temporaryRoots.Add($fixture)
    foreach ($directory in @(
        "campaigns/example/saves/900_CHECKPOINT_0001",
        "docs/430_RUNTIME_PERSISTENCE_VALIDATION",
        "engine",
        "system",
        "tools",
        "worlds/example"
    )) {
        New-Item -ItemType Directory -Path (Join-Path $fixture $directory) -Force | Out-Null
    }

    Write-Utf8 (Join-Path $fixture "engine/000_ENGINE_MANIFEST.md") @"
# Chronicle Engine
**Engine Version:** 0.2.0
"@
    Write-Utf8 (Join-Path $fixture "engine/011_ENGINE_DATA_MODEL.md") @"
# Engine Data Model
**Data Model Version:** 0.1.7
"@
    Write-Utf8 (Join-Path $fixture "worlds/example/200_WORLD_BIBLE.md") @"
# Example
**World Version:** 0.1
"@
    Write-Utf8 (Join-Path $fixture "worlds/example/206_WORLD_RULE_PROFILE.md") @"
# Example Profile
**Profile Version:** 1.0
**Compatibility Status:** frozen
"@
    Write-Utf8 (Join-Path $fixture "campaigns/example/090_CAMPAIGN_STARTUP.md") @"
# Campaign Startup

``````yaml
startup_version: "1.0"
campaign: campaigns/example
world: worlds/example
world_rule_profile: "Example 1.0"
default_protagonist: ENT-000001
initialization_state: resumable
latest_restorable_checkpoint: campaigns/example/saves/900_CHECKPOINT_0001
canonical_entry_point: campaigns/example/180_CURRENT_STATE.md
``````
"@

    $ledgers = @(
        "100_CHARACTER_SHEET.md",
        "110_WORLD_LEDGER.md",
        "120_INVENTORY_AND_OWNERSHIP.md",
        "130_NPCS_AND_FACTIONS.md",
        "140_OBJECTIVES.md",
        "160_CAMPAIGN_CHRONICLE.md",
        "170_CHANGELOG.md",
        "180_CURRENT_STATE.md"
    )
    for ($index = 0; $index -lt $ledgers.Count; $index++) {
        $record = "REC-{0:D6}" -f ($index + 1)
        $content = @"
# $($ledgers[$index])

``````yaml
id: $record
canonical_record: $record
schema_version: "0.1.7"
status: active
provenance:
  source: EVT-000001
  game_date: "2026-01-01"
  real_date: "2026-07-27"
role: canonical ledger
scope: campaign
subjects: []
``````
"@
        if ($ledgers[$index] -eq "130_NPCS_AND_FACTIONS.md") {
            $content += "`n" + ("large-ledger-byte-copy-proof`n" * 6000)
        }
        if ($ledgers[$index] -eq "100_CHARACTER_SHEET.md") {
            $content = $content -replace 'subjects: \[\]', "subjects: []`nsystem_state:`n  temporal_state:`n    campaign_time: `"2026-01-01T12:00:00+00:00`""
        }
        if ($ledgers[$index] -in @("160_CAMPAIGN_CHRONICLE.md", "170_CHANGELOG.md", "180_CURRENT_STATE.md")) {
            $content = $content -replace 'game_date: "2026-01-01"', 'game_date: "2026-01-01T12:00:00+00:00"'
        }
        if ($ledgers[$index] -eq "180_CURRENT_STATE.md") {
            $content += @"

## Bindings

- **Latest restorable checkpoint:** ``saves/900_CHECKPOINT_0001/`` — fixture parent.
"@
        }
        Write-Utf8 (Join-Path $fixture "campaigns/example/$($ledgers[$index])") $content
    }
    Write-Utf8 (Join-Path $fixture "campaigns/example/saves/900_CHECKPOINT_0001/900_SAVE_MANIFEST.md") @"
# Parent

``````yaml
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Example
    version: "1.0"
    freeze_status: frozen
  campaign_schema: "0.1.7"
  save_format: "0.1.0"
``````
"@
    Write-Utf8 (Join-Path $fixture "system/WORLDS_AND_CAMPAIGNS.md") "generated:900_CHECKPOINT_0001`n"

    # The evidence block is derived from the campaign's own save directories,
    # so promoting a checkpoint staleness-marks it. The fixture models that
    # coupling -- generator plus a validator that actually checks it -- because
    # a fixture that stubbed only the tools the helper already called is what
    # let the helper ship unable to pass its own post-promotion gate (F-010).
    Write-Utf8 (Join-Path $fixture "docs/430_RUNTIME_PERSISTENCE_VALIDATION/432_GATEFALL_PROTOTYPE_LOG.md") "checkpoints:1`n"
    Write-Utf8 (Join-Path $fixture "tools/generate_validation_evidence.py") "# fixture marker: presence gates the helper's evidence phase`n"
    Write-Utf8 (Join-Path $fixture "tools/generate_validation_evidence.ps1") @'
[CmdletBinding()]
param([string]$RepositoryRoot, [string]$Campaign, [switch]$Check)
$root = if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) { Split-Path -Parent $PSScriptRoot } else { $RepositoryRoot }
$saves = Join-Path $root "campaigns/example/saves"
$count = @(Get-ChildItem -LiteralPath $saves -Directory | Where-Object { -not $_.Name.StartsWith(".") }).Count
$evidence = Join-Path $root "docs/430_RUNTIME_PERSISTENCE_VALIDATION/432_GATEFALL_PROTOTYPE_LOG.md"
$expected = "checkpoints:$count`n"
if ($Check) {
    if ([System.IO.File]::ReadAllText($evidence) -ne $expected) {
        Write-Host "fixture evidence block is not synchronized"
        exit 1
    }
} else {
    [System.IO.File]::WriteAllText($evidence, $expected, [System.Text.UTF8Encoding]::new($false))
}
Write-Host "fixture evidence generation PASSED"
exit 0
'@
    Write-Utf8 (Join-Path $fixture "tools/validate_repository.ps1") @'
[CmdletBinding()]
param([string]$RepositoryRoot)
$root = if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) { Split-Path -Parent $PSScriptRoot } else { $RepositoryRoot }
$saves = Join-Path $root "campaigns/example/saves"
$count = @(Get-ChildItem -LiteralPath $saves -Directory | Where-Object { -not $_.Name.StartsWith(".") }).Count
$evidence = Join-Path $root "docs/430_RUNTIME_PERSISTENCE_VALIDATION/432_GATEFALL_PROTOTYPE_LOG.md"
if ([System.IO.File]::ReadAllText($evidence) -ne "checkpoints:$count`n") {
    Write-Host "fixture repository validation FAILED: generated validation evidence block is not synchronized"
    exit 1
}
Write-Host "fixture repository validation PASSED"
exit 0
'@
    Write-Utf8 (Join-Path $fixture "tools/validate_runtime_configuration.ps1") @'
[CmdletBinding()]
param([string]$RepositoryRoot)
Write-Host "fixture runtime configuration validation PASSED"
exit 0
'@
    Write-Utf8 (Join-Path $fixture "tools/generate_runtime_index.ps1") @'
[CmdletBinding()]
param([string]$RepositoryRoot, [switch]$Check)
$startup = Get-Content -LiteralPath (Join-Path $RepositoryRoot "campaigns/example/090_CAMPAIGN_STARTUP.md") -Raw
$match = [regex]::Match($startup, '(?m)^latest_restorable_checkpoint:\s*campaigns/example/saves/(\S+)')
if (-not $match.Success) { Write-Host "fixture index generation FAILED"; exit 1 }
$expected = "generated:$($match.Groups[1].Value)`n"
$index = Join-Path $RepositoryRoot "system/WORLDS_AND_CAMPAIGNS.md"
if ($Check) {
    if ([System.IO.File]::ReadAllText($index) -ne $expected) {
        Write-Host "fixture index synchronization FAILED"
        exit 1
    }
} else {
    [System.IO.File]::WriteAllText($index, $expected, [System.Text.UTF8Encoding]::new($false))
}
Write-Host "fixture index generation PASSED"
exit 0
'@
    Write-Utf8 (Join-Path $fixture "tools/test_checkpoint_contract.ps1") @'
[CmdletBinding()]
param()
$root = Split-Path -Parent $PSScriptRoot
if (Test-Path -LiteralPath (Join-Path $root ".fail-checkpoint-gate")) {
    Write-Host "fixture checkpoint contract FAILED"
    exit 9
}
$checkpoint = Join-Path $root "campaigns/example/saves/900_CHECKPOINT_0002"
$required = @(
    "100_CHARACTER_SHEET.md", "110_WORLD_LEDGER.md",
    "120_INVENTORY_AND_OWNERSHIP.md", "130_NPCS_AND_FACTIONS.md",
    "140_OBJECTIVES.md", "160_CAMPAIGN_CHRONICLE.md",
    "170_CHANGELOG.md", "180_CURRENT_STATE.md", "900_SAVE_MANIFEST.md"
)
foreach ($name in $required) {
    if (-not (Test-Path -LiteralPath (Join-Path $checkpoint $name) -PathType Leaf)) {
        Write-Host "fixture checkpoint contract FAILED: missing $name"
        exit 1
    }
}
Write-Host "fixture checkpoint contract PASSED"
exit 0
'@
    return $fixture
}

function New-Receipt {
    param([string]$Fixture, [switch]$BadHash)
    $entries = foreach ($name in @(
        "160_CAMPAIGN_CHRONICLE.md",
        "170_CHANGELOG.md",
        "180_CURRENT_STATE.md"
    )) {
        $path = Join-Path $Fixture "campaigns/example/$name"
        $hash = (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant()
        if ($BadHash -and $name -eq "160_CAMPAIGN_CHRONICLE.md") {
            $hash = "0" * 64
        }
        @{
            path = "campaigns/example/$name"
            sha256 = $hash
            read_back_verified = $true
        }
    }
    $receipt = @{
        receipt_version = "1.0"
        campaign = "campaigns/example"
        promotion_barrier_passed = $true
        updated_live_files = @($entries)
        manifest = @{
            source = "EVT-000001"
            game_date = "2026-01-01T12:00:00+00:00"
            branch = "fixture-main"
            canonical_continuation = $true
            compatibility_status = "compatible"
            compatibility_warnings = "None."
        }
    }
    $path = Join-Path $Fixture "mutation-receipt.json"
    Write-Utf8 $path ($receipt | ConvertTo-Json -Depth 8)
    return $path
}

function Invoke-Checkpoint {
    param(
        [string]$Fixture,
        [string]$Receipt,
        [string]$ExpectedParent = "900_CHECKPOINT_0001"
    )
    $previous = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $command `
        -RepositoryRoot $Fixture `
        -Campaign "campaigns/example" `
        -CheckpointType "test" `
        -Label "transaction fixture" `
        -ExpectedParent $ExpectedParent `
        -MutationReceipt $Receipt 2>&1 | ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $ErrorActionPreference = $previous
    return [pscustomobject]@{
        ExitCode = $exitCode
        Output = ($output -join "`n")
    }
}

try {
    # Success: complete copy, manifest, synchronized pointers, gates, compact receipt.
    $successRoot = New-Fixture
    $successReceipt = New-Receipt $successRoot
    $largeSource = Join-Path $successRoot "campaigns/example/130_NPCS_AND_FACTIONS.md"
    $largeHash = (Get-FileHash -LiteralPath $largeSource -Algorithm SHA256).Hash
    Assert-True ((Get-Item -LiteralPath $largeSource).Length -gt 130000) "Large-ledger fixture is below 130 KB."
    $success = Invoke-Checkpoint $successRoot $successReceipt
    Assert-True ($success.ExitCode -eq 0) "Successful checkpoint fixture failed:`n$($success.Output)"
    Assert-True ($success.Output -match 'CHECKPOINT_RECEIPT_JSON=.*"status":"created"') "Success emitted no machine receipt."
    Assert-True ($success.Output -match 'fixture checkpoint contract PASSED') "Exact checkpoint-gate output was not emitted."
    $checkpoint = Join-Path $successRoot "campaigns/example/saves/900_CHECKPOINT_0002"
    Assert-True (Test-Path -LiteralPath $checkpoint -PathType Container) "Checkpoint 0002 was not promoted."
    Assert-True ((Get-ChildItem -LiteralPath $checkpoint -File).Count -eq 9) "Checkpoint does not contain eight ledgers plus manifest."
    $largeCopyHash = (Get-FileHash -LiteralPath (Join-Path $checkpoint "130_NPCS_AND_FACTIONS.md") -Algorithm SHA256).Hash
    Assert-True ($largeHash -eq $largeCopyHash) "Large unchanged ledger was not copied byte-for-byte."
    Assert-True ((Get-Content -LiteralPath (Join-Path $successRoot "campaigns/example/090_CAMPAIGN_STARTUP.md") -Raw) -match '900_CHECKPOINT_0002') "Startup pointer was not updated."
    Assert-True ((Get-Content -LiteralPath (Join-Path $successRoot "campaigns/example/180_CURRENT_STATE.md") -Raw) -match '900_CHECKPOINT_0002') "Current State pointer was not updated."
    Assert-True (-not (Test-Path -LiteralPath (Join-Path $successRoot ".tmp/checkpoint-writer.lock"))) "Writer lock remained after success."

    # Receipt drift: fail before staging.
    $hashRoot = New-Fixture
    $badReceipt = New-Receipt $hashRoot -BadHash
    $badHash = Invoke-Checkpoint $hashRoot $badReceipt
    Assert-True ($badHash.ExitCode -ne 0) "A stale mutation receipt hash was accepted."
    Assert-True ($badHash.Output -match 'changed after read-back') "Stale receipt failed without the hash diagnosis."
    Assert-True (@(Get-ChildItem -LiteralPath (Join-Path $hashRoot "campaigns/example/saves") -Directory -Filter "*.staging-*").Count -eq 0) "Receipt failure allocated staging."

    # Receipt time drift: the helper binds manifest identity to canonical time
    # before allocating an ordinal. Checkpoint 0070 carried a 16:30 character
    # anchor under a 16:45 manifest because the two were never compared.
    $timeRoot = New-Fixture
    $timeReceipt = New-Receipt $timeRoot
    $timeJson = Get-Content -LiteralPath $timeReceipt -Raw | ConvertFrom-Json
    $timeJson.manifest.game_date = "2026-01-01T12:01:00+00:00"
    Write-Utf8 $timeReceipt ($timeJson | ConvertTo-Json -Depth 8)
    $badTime = Invoke-Checkpoint $timeRoot $timeReceipt
    Assert-True ($badTime.ExitCode -ne 0) "A manifest game_date that disagrees with canonical campaign_time was accepted."
    Assert-True ($badTime.Output -match 'manifest.game_date does not match canonical campaign_time') "Time drift failed without the anchor diagnosis."
    Assert-True (@(Get-ChildItem -LiteralPath (Join-Path $timeRoot "campaigns/example/saves") -Directory -Filter "*.staging-*").Count -eq 0) "Time drift allocated staging."

    $sourceRoot = New-Fixture
    $sourceChronicle = Join-Path $sourceRoot "campaigns/example/160_CAMPAIGN_CHRONICLE.md"
    Write-Utf8 $sourceChronicle ((Get-Content -LiteralPath $sourceChronicle -Raw) -replace 'source: EVT-000001', 'source: EVT-000002')
    $sourceReceipt = New-Receipt $sourceRoot
    $badSource = Invoke-Checkpoint $sourceRoot $sourceReceipt
    Assert-True ($badSource.ExitCode -ne 0) "An always-promoted ledger whose provenance source disagrees with the manifest was accepted."
    Assert-True ($badSource.Output -match 'provenance source.*does not match manifest.source') "Source drift failed without the provenance diagnosis."

    # Parent drift: fail before ordinal allocation.
    $parentRoot = New-Fixture
    $parentReceipt = New-Receipt $parentRoot
    $badParent = Invoke-Checkpoint $parentRoot $parentReceipt -ExpectedParent "900_CHECKPOINT_0099"
    Assert-True ($badParent.ExitCode -ne 0) "A stale expected parent was accepted."
    Assert-True ($badParent.Output -match 'does not match live parent') "Parent drift failed without diagnosis."

    # Concurrent writer: the lock refuses before allocation.
    $lockRoot = New-Fixture
    $lockReceipt = New-Receipt $lockRoot
    New-Item -ItemType Directory -Path (Join-Path $lockRoot ".tmp") -Force | Out-Null
    Write-Utf8 (Join-Path $lockRoot ".tmp/checkpoint-writer.lock") '{"holder":"fixture"}'
    $locked = Invoke-Checkpoint $lockRoot $lockReceipt
    Assert-True ($locked.ExitCode -ne 0) "A concurrent writer lock was ignored."
    Assert-True ($locked.Output -match 'refusing before ordinal allocation') "Lock refusal did not name its timing guarantee."
    Assert-True (-not (Test-Path -LiteralPath (Join-Path $lockRoot "campaigns/example/saves/900_CHECKPOINT_0002"))) "Locked call allocated a checkpoint."

    # Post-promotion gate failure: pointers roll back and recovery remains non-canonical staging.
    $rollbackRoot = New-Fixture
    $rollbackReceipt = New-Receipt $rollbackRoot
    Write-Utf8 (Join-Path $rollbackRoot ".fail-checkpoint-gate") "fail"
    $startupHash = (Get-FileHash -LiteralPath (Join-Path $rollbackRoot "campaigns/example/090_CAMPAIGN_STARTUP.md") -Algorithm SHA256).Hash
    $currentHash = (Get-FileHash -LiteralPath (Join-Path $rollbackRoot "campaigns/example/180_CURRENT_STATE.md") -Algorithm SHA256).Hash
    $indexHash = (Get-FileHash -LiteralPath (Join-Path $rollbackRoot "system/WORLDS_AND_CAMPAIGNS.md") -Algorithm SHA256).Hash
    $evidenceHash = (Get-FileHash -LiteralPath (Join-Path $rollbackRoot "docs/430_RUNTIME_PERSISTENCE_VALIDATION/432_GATEFALL_PROTOTYPE_LOG.md") -Algorithm SHA256).Hash
    $rollback = Invoke-Checkpoint $rollbackRoot $rollbackReceipt
    Assert-True ($rollback.ExitCode -ne 0) "A failing final checkpoint gate was reported as success."
    Assert-True ($rollback.Output -match '"status":"failed"') "Failure emitted no machine receipt."
    Assert-True (-not (Test-Path -LiteralPath (Join-Path $rollbackRoot "campaigns/example/saves/900_CHECKPOINT_0002"))) "Failed transaction left a canonical checkpoint directory."
    $staging = @(Get-ChildItem -LiteralPath (Join-Path $rollbackRoot "campaigns/example/saves") -Directory | Where-Object { $_.Name -like ".900_CHECKPOINT_0002.staging-*" })
    Assert-True ($staging.Count -eq 1) "Failed transaction did not retain exactly one recoverable staging directory."
    Assert-True ($startupHash -eq (Get-FileHash -LiteralPath (Join-Path $rollbackRoot "campaigns/example/090_CAMPAIGN_STARTUP.md") -Algorithm SHA256).Hash) "Startup pointer did not roll back byte-for-byte."
    Assert-True ($currentHash -eq (Get-FileHash -LiteralPath (Join-Path $rollbackRoot "campaigns/example/180_CURRENT_STATE.md") -Algorithm SHA256).Hash) "Current State did not roll back byte-for-byte."
    Assert-True ($indexHash -eq (Get-FileHash -LiteralPath (Join-Path $rollbackRoot "system/WORLDS_AND_CAMPAIGNS.md") -Algorithm SHA256).Hash) "Generated index did not roll back byte-for-byte."
    Assert-True ($evidenceHash -eq (Get-FileHash -LiteralPath (Join-Path $rollbackRoot "docs/430_RUNTIME_PERSISTENCE_VALIDATION/432_GATEFALL_PROTOTYPE_LOG.md") -Algorithm SHA256).Hash) "Generated validation evidence did not roll back byte-for-byte, and would stale-fail the next preflight."
    Assert-True (-not (Test-Path -LiteralPath (Join-Path $rollbackRoot ".tmp/checkpoint-writer.lock"))) "Writer lock remained after rollback."
}
finally {
    $resolvedParent = [System.IO.Path]::GetFullPath($temporaryParent)
    foreach ($temporaryRoot in $temporaryRoots) {
        $resolvedRoot = [System.IO.Path]::GetFullPath($temporaryRoot)
        if (
            $resolvedRoot.StartsWith($resolvedParent, [System.StringComparison]::OrdinalIgnoreCase) -and
            (Split-Path -Leaf $resolvedRoot).StartsWith("chronicle-checkpoint-")
        ) {
            Remove-Item -LiteralPath $resolvedRoot -Recurse -Force -ErrorAction SilentlyContinue
        }
    }
}

Write-Host "Transactional checkpoint regression tests PASSED" -ForegroundColor Green
exit 0
