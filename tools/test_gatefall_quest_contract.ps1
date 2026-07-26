$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$characterPath = Join-Path $repo "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
$checkpointPath = Join-Path $repo "campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0024/100_CHARACTER_SHEET.md"
$startupPath = Join-Path $repo "campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md"
$indexPath = Join-Path $repo "system/WORLDS_AND_CAMPAIGNS.md"

function Assert-True {
    param(
        [bool]$Condition,
        [string]$Message
    )

    if (-not $Condition) {
        throw $Message
    }
}

$profile = Get-Content -LiteralPath $profilePath -Raw -Encoding UTF8
$character = Get-Content -LiteralPath $characterPath -Raw -Encoding UTF8
$checkpoint = Get-Content -LiteralPath $checkpointPath -Raw -Encoding UTF8
$startup = Get-Content -LiteralPath $startupPath -Raw -Encoding UTF8
$index = Get-Content -LiteralPath $indexPath -Raw -Encoding UTF8

Assert-True ($profile -match '(?m)^# Gatefall .+Profile 1\.14\r?$') "Gatefall Profile 1.14 is not active."
Assert-True ($profile -match 'The Bearer has \*\*1 concurrent non-daily quest slot by default\*\*') "Default non-daily capacity is not fixed at 1."
Assert-True ($profile -match 'Multitask raises this to \*\*2\*\*; Analyst raises it to \*\*3\*\*') "Multitask/Analyst capacity increases are not fixed at 2 and 3."
Assert-True ($profile -match 'The `\[DAILY\]` quest has its own reserved slot') "Daily quests do not have an explicit reserved slot."
Assert-True ($profile -match 'Class Quest and later class-evolution quest.*reserved class slot') "Class quests do not have an explicit reserved slot."
Assert-True ($profile -match 'four times the common-kill XP') "Urgent quest reward formula is missing."
Assert-True ($profile -match 'Gate-clear milestone XP for the Bearer''s System Rank') "Hidden quest reward formula is missing."
Assert-True ($profile -match 'A quest cannot complete from conduct that occurred before') "Pre-attachment retroactive completion is not prohibited."
Assert-True ($profile -match 'The Runtime may not create `\[HIDDEN\] \?\?\?` merely for atmosphere') "Decorative Hidden pointers are not prohibited."

Assert-True ($character -match 'profile_version: "1\.14"') "Live Gatefall character was not migrated to Profile 1.14."
Assert-True ($character -match '(?ms)non_daily_quests:\s+base_capacity: 1\s+multitask_bonus: 1\s+analyst_bonus: 0\s+capacity_total: 2\s+active: \[\]\s+pending_offers: \[\]') "Live Multitask quest capacity is missing or incorrect."
Assert-True ($checkpoint -match 'profile_version: "1\.12"') "Immutable Checkpoint 0024 profile version changed."
Assert-True ($checkpoint -notmatch 'non_daily_quests:') "Immutable Checkpoint 0024 was retrofitted with Profile 1.14 quest state."
Assert-True ($startup -match 'world_rule_profile: "Gatefall World Rule Profile 1\.14"') "Campaign startup does not bind Profile 1.14."
Assert-True ($index -match 'World Rule Profile 1\.14, frozen') "World index does not advertise frozen Profile 1.14."

Write-Host "Gatefall quest contract tests PASSED" -ForegroundColor Green
