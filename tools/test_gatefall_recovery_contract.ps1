$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$residentPath = Join-Path $repo "docs/AI_GAMEPLAY_RESIDENT_CORE.md"
$runtimePath = Join-Path $repo "engine/012_ENGINE_RUNTIME.md"
$characterPath = Join-Path $repo "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
$checkpointPath = Join-Path $repo "campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0024/900_SAVE_MANIFEST.md"

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) {
        throw $Message
    }
}

function Settle-Mana {
    param(
        [int64]$Current,
        [int64]$Maximum,
        [int64]$Remainder,
        [int64]$ElapsedSeconds,
        [ValidateSet("active", "resting")][string]$Mode,
        [bool]$FrozenGallery = $false
    )

    $rate = if ($Mode -eq "resting") { [int64]50 } else { [int64]20 }
    if ($FrozenGallery) { $rate = [int64]($rate / 2) }
    $total = $Remainder + ($ElapsedSeconds * $Maximum * $rate)
    $restored = [int64][math]::Floor($total / 720000)
    $next = [math]::Min($Maximum, $Current + $restored)
    $nextRemainder = if ($next -eq $Maximum) { [int64]0 } else { [int64]($total % 720000) }
    return @{ Current = [int64]$next; Remainder = $nextRemainder }
}

function Settle-Health {
    param(
        [int64]$Current,
        [int64]$Maximum,
        [int64]$Remainder,
        [int64]$ElapsedSeconds,
        [ValidateSet("resting", "light", "paused")][string]$Mode
    )

    $rate = switch ($Mode) {
        "resting" { [int64]50 }
        "light" { [int64]25 }
        default { [int64]0 }
    }
    $total = $Remainder + ($ElapsedSeconds * $Maximum * $rate)
    $restored = [int64][math]::Floor($total / 5760000)
    $next = [math]::Min($Maximum, $Current + $restored)
    $nextRemainder = if ($next -eq $Maximum) { [int64]0 } else { [int64]($total % 5760000) }
    return @{ Current = [int64]$next; Remainder = $nextRemainder }
}

$profile = Get-Content -LiteralPath $profilePath -Raw
$resident = Get-Content -LiteralPath $residentPath -Raw
$runtime = Get-Content -LiteralPath $runtimePath -Raw
$character = Get-Content -LiteralPath $characterPath -Raw
$checkpoint = Get-Content -LiteralPath $checkpointPath -Raw

Assert-True ($profile -match '(?m)^# Gatefall .+Profile 1\.23\r?$') "Gatefall Profile 1.23 is not active."
Assert-True ($profile -match 'mana_recovery_remainder_units') "Gatefall Mana carry is not declared."
Assert-True ($profile -match 'health_recovery_remainder_units') "Gatefall Health carry is not declared."
Assert-True ($resident -match 'exact last-settled campaign-time anchor') "Resident settlement does not require the exact anchor."
Assert-True ($runtime -match 'Canonical Time Settlement') "Engine Runtime lacks the canonical-time settlement contract."

Assert-True ($character -match 'campaign_time: "2026-08-04T06:00:00-05:00"') "Live Gatefall anchor is missing or incorrect."
Assert-True ($character -match 'mana_recovery_mode: resting') "Live Mana recovery mode is not resting."
Assert-True ($character -match 'health_recovery_mode: resting') "Live Health recovery mode is not resting."
Assert-True ($character -match 'mana_recovery_remainder_units: 0') "Live Mana carry was not initialized to zero."
Assert-True ($character -match 'health_recovery_remainder_units: 0') "Live Health carry was not initialized to zero."

Assert-True ($checkpoint -match 'version: "1\.12"') "Immutable Checkpoint 0024 profile version changed."
Assert-True ($checkpoint -notmatch 'recovery_remainder_units') "Immutable Checkpoint 0024 was retrofitted with Profile 1.13 state."

$manaOneSpan = Settle-Mana -Current 10 -Maximum 40 -Remainder 0 -ElapsedSeconds 10800 -Mode resting
Assert-True ($manaOneSpan.Current -eq 40) "Three resting hours did not restore Mana 10/40 to full."

$manaPartitioned = @{ Current = [int64]10; Remainder = [int64]0 }
1..3 | ForEach-Object {
    $manaPartitioned = Settle-Mana -Current $manaPartitioned.Current -Maximum 40 -Remainder $manaPartitioned.Remainder -ElapsedSeconds 3600 -Mode resting
}
Assert-True ($manaPartitioned.Current -eq $manaOneSpan.Current) "Mana differs across equivalent response partitions."
Assert-True ($manaPartitioned.Remainder -eq $manaOneSpan.Remainder) "Mana carry differs across equivalent response partitions."

$frozenMana = Settle-Mana -Current 10 -Maximum 40 -Remainder 0 -ElapsedSeconds 3600 -Mode resting -FrozenGallery $true
Assert-True ($frozenMana.Current -eq 15) "Frozen Gallery did not halve resting Mana recovery."

$healthRest = Settle-Health -Current 68 -Maximum 88 -Remainder 0 -ElapsedSeconds 28800 -Mode resting
Assert-True ($healthRest.Current -eq 88) "Eight resting hours did not restore 25% maximum Health, capped at full."

$healthLight = Settle-Health -Current 68 -Maximum 88 -Remainder 0 -ElapsedSeconds 28800 -Mode light
Assert-True ($healthLight.Current -eq 79) "Eight hours of light activity did not restore half the resting Health rate."

$healthPaused = Settle-Health -Current 68 -Maximum 88 -Remainder 12345 -ElapsedSeconds 28800 -Mode paused
Assert-True ($healthPaused.Current -eq 68) "Paused Health recovery changed Health."
Assert-True ($healthPaused.Remainder -eq 12345) "Paused Health recovery erased fractional carry."

$healthPartitioned = @{ Current = [int64]68; Remainder = [int64]0 }
1..8 | ForEach-Object {
    $healthPartitioned = Settle-Health -Current $healthPartitioned.Current -Maximum 88 -Remainder $healthPartitioned.Remainder -ElapsedSeconds 3600 -Mode resting
}
Assert-True ($healthPartitioned.Current -eq $healthRest.Current) "Health differs across equivalent response partitions."
Assert-True ($healthPartitioned.Remainder -eq $healthRest.Remainder) "Health carry differs across equivalent response partitions."

Write-Host "Gatefall recovery contract tests PASSED" -ForegroundColor Green
