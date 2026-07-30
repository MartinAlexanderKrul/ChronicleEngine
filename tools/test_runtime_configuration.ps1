[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_runtime_configuration.ps1"
$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-runtime-config-" + [guid]::NewGuid().ToString("N"))

function Invoke-Validator {
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $temporaryRoot 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

function Set-MutatedContent {
    param(
        [string]$RelativePath,
        [string]$Original,
        [string]$OldValue,
        [string]$NewValue
    )

    if (-not $Original.Contains($OldValue)) {
        throw "Test precondition failed: '$OldValue' is absent from $RelativePath."
    }
    $target = Join-Path $temporaryRoot $RelativePath
    Set-Content -LiteralPath $target -Value $Original.Replace($OldValue, $NewValue) -Encoding UTF8
}

function Assert-Rejected {
    param(
        [string]$Name,
        [string]$Expected
    )

    $result = Invoke-Validator
    if ($result.ExitCode -eq 0) {
        throw "$Name was accepted, but the validator should have rejected it."
    }
    if ($result.Output -notlike "*$Expected*") {
        throw "$Name failed for the wrong reason.`nExpected: $Expected`nActual:`n$($result.Output)"
    }
}

try {
    New-Item -ItemType Directory -Path $temporaryRoot | Out-Null
    foreach ($directory in @("campaigns", "system", "worlds")) {
        Copy-Item -LiteralPath (Join-Path $repositoryRoot $directory) -Destination $temporaryRoot -Recurse
    }

    $baseline = Invoke-Validator
    if ($baseline.ExitCode -ne 0) {
        throw "The copied live configuration must pass before mutations.`n$($baseline.Output)"
    }

    $reikonPath = "campaigns/reikon_awakening_001/090_CAMPAIGN_STARTUP.md"
    $reikonOriginal = Get-Content -LiteralPath (Join-Path $temporaryRoot $reikonPath) -Raw
    Set-MutatedContent -RelativePath $reikonPath -Original $reikonOriginal `
        -OldValue 'world_rule_profile: "Reikon 0.11"' `
        -NewValue 'world_rule_profile: "Reikon 0.10"'
    Assert-Rejected -Name "stale World Rule Profile binding" -Expected "does not bind active"
    Set-Content -LiteralPath (Join-Path $temporaryRoot $reikonPath) -Value $reikonOriginal -Encoding UTF8

    $gatefallPath = "campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md"
    $gatefallOriginal = Get-Content -LiteralPath (Join-Path $temporaryRoot $gatefallPath) -Raw
    # Derived, not pinned: the live checkpoint advances with every promoted save.
    if ($gatefallOriginal -notmatch 'latest_restorable_checkpoint: (?<path>\S+/900_CHECKPOINT_(?<n>\d+))') {
        throw "Test precondition failed: Gatefall startup declares no latest checkpoint."
    }
    $liveCheckpoint = $Matches["path"]
    $stalePredecessor = $liveCheckpoint -replace '\d+$', ('{0:0000}' -f ([int]$Matches["n"] - 1))
    Set-MutatedContent -RelativePath $gatefallPath -Original $gatefallOriginal `
        -OldValue "latest_restorable_checkpoint: $liveCheckpoint" `
        -NewValue "latest_restorable_checkpoint: $stalePredecessor"
    Assert-Rejected -Name "stale latest-checkpoint binding" -Expected "disagrees with Current State"
    Set-Content -LiteralPath (Join-Path $temporaryRoot $gatefallPath) -Value $gatefallOriginal -Encoding UTF8

    Set-MutatedContent -RelativePath $gatefallPath -Original $gatefallOriginal `
        -OldValue "      - canonical_state.system_state.shop_holdings" `
        -NewValue "      - canonical_state.system_state.missing_shop_holdings"
    Assert-Rejected -Name "stale deferred protagonist field" -Expected "must resolve exactly once; found 0"
    Set-Content -LiteralPath (Join-Path $temporaryRoot $gatefallPath) -Value $gatefallOriginal -Encoding UTF8

    $betaPath = "campaigns/prototype_beta/090_CAMPAIGN_STARTUP.md"
    $betaOriginal = Get-Content -LiteralPath (Join-Path $temporaryRoot $betaPath) -Raw
    Set-MutatedContent -RelativePath $betaPath -Original $betaOriginal `
        -OldValue "initialization_state: resumable" `
        -NewValue "initialization_state: initialized-no-save"
    Assert-Rejected -Name "initialization-state drift" -Expected "conflicts with 1 conforming checkpoint"
    Set-Content -LiteralPath (Join-Path $temporaryRoot $betaPath) -Value $betaOriginal -Encoding UTF8

    Set-MutatedContent -RelativePath $reikonPath -Original $reikonOriginal `
        -OldValue "worlds/reikon/205_THE_LEDGER.md" `
        -NewValue "worlds/reikon/205_MISSING_LEDGER.md"
    Assert-Rejected -Name "missing required source" -Expected "required source does not exist"
    Set-Content -LiteralPath (Join-Path $temporaryRoot $reikonPath) -Value $reikonOriginal -Encoding UTF8

    Set-MutatedContent -RelativePath $reikonPath -Original $reikonOriginal `
        -OldValue "  first_session_requires_save: false" `
        -NewValue "  first_session_requires_save: false`n  imaginary_gate: true"
    Assert-Rejected -Name "unknown validation flag" -Expected "unknown validation flag 'imaginary_gate'"
    Set-Content -LiteralPath (Join-Path $temporaryRoot $reikonPath) -Value $reikonOriginal -Encoding UTF8

    $gatefallProfilePath = "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
    $gatefallProfileOriginal = Get-Content -LiteralPath (Join-Path $temporaryRoot $gatefallProfilePath) -Raw
    Set-MutatedContent -RelativePath $gatefallProfilePath -Original $gatefallProfileOriginal `
        -OldValue 'eligibility_heading: "8.4.2 Urgent Quests"' `
        -NewValue 'eligibility_heading: "8.4.2 Missing Urgent Selector"'
    Assert-Rejected -Name "stale trigger eligibility selector" -Expected "must resolve exactly once; found 0"
    Set-Content -LiteralPath (Join-Path $temporaryRoot $gatefallProfilePath) -Value $gatefallProfileOriginal -Encoding UTF8

    $profileNewline = if ($gatefallProfileOriginal.Contains("`r`n")) { "`r`n" } else { "`n" }
    Set-MutatedContent -RelativePath $gatefallProfilePath -Original $gatefallProfileOriginal `
        -OldValue ("      - nearby_threat.changed" + $profileNewline + "      - actionable_route.changed") `
        -NewValue ("      - nearby_threat.changed" + $profileNewline + "      - nearby_threat.changed")
    Assert-Rejected -Name "duplicate trigger delta selector" -Expected "candidate_deltas contains a duplicate selector"
    Set-Content -LiteralPath (Join-Path $temporaryRoot $gatefallProfilePath) -Value $gatefallProfileOriginal -Encoding UTF8

    Set-MutatedContent -RelativePath $gatefallProfilePath -Original $gatefallProfileOriginal `
        -OldValue "capacity_notice_repeat: first_blocked_audit_then_capacity_change" `
        -NewValue "capacity_notice_repeat: every_audit"
    Assert-Rejected -Name "unbounded capacity-warning repeat" -Expected "must declare the capacity-notice repeat policy"

    Write-Host "Runtime configuration regression tests PASSED" -ForegroundColor Green
    exit 0
}
finally {
    $resolvedTemporaryParent = [System.IO.Path]::GetFullPath($temporaryParent)
    $resolvedTemporaryRoot = [System.IO.Path]::GetFullPath($temporaryRoot)
    if (
        $resolvedTemporaryRoot.StartsWith($resolvedTemporaryParent, [System.StringComparison]::OrdinalIgnoreCase) -and
        (Split-Path -Leaf $resolvedTemporaryRoot).StartsWith("chronicle-runtime-config-")
    ) {
        Remove-Item -LiteralPath $resolvedTemporaryRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}
