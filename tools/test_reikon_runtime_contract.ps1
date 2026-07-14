[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

function Assert-Contains {
    param([string]$RelativePath, [string]$Pattern, [string]$Message)
    $path = Join-Path $root $RelativePath
    if (-not (Select-String -LiteralPath $path -Pattern $Pattern -Quiet)) {
        throw "$Message ($RelativePath)"
    }
}

$runtime = 'docs/AI_GAMEPLAY_RUNTIME_PROFILE.md'
$profile = 'worlds/reikon/206_WORLD_RULE_PROFILE.md'
$character = 'campaigns/reikon_awakening_001/100_CHARACTER_SHEET.md'
$inventory = 'campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md'
$current = 'campaigns/reikon_awakening_001/180_CURRENT_STATE.md'
$startup = 'campaigns/reikon_awakening_001/090_CAMPAIGN_STARTUP.md'
$lore = 'worlds/reikon/205_THE_LEDGER.md'

Assert-Contains $runtime '^# Turn-State Settlement$' 'Missing per-exchange settlement enforcement point.'
Assert-Contains $runtime 'Modifier Polarity Is Always Actor-Relative' 'Missing actor-relative modifier rule.'
Assert-Contains $runtime 'contains only repeated role labels and verbatim bodies' 'Debug export is not constrained to raw labelled messages.'
Assert-Contains $runtime 'Do not print headings such as.*Resolution Sequence' 'Debug-off mechanical narration is not prohibited.'

Assert-Contains $profile 'INVENTORY is mandatory on every render' '/system does not require inventory.'
Assert-Contains $profile '^## 9\.5 Compact State Notifications$' 'Missing one-shot System notification contract.'
Assert-Contains $profile 'Recovery settlement is mandatory after every exchange' 'Mana recovery is not settled every exchange.'
Assert-Contains $profile '^## 7\.3 Health Restoration and Injury Recovery$' 'Missing deterministic Health-recovery contract.'
Assert-Contains $profile 'hp_restored = floor\(total_units / 17,280,000\)' 'Health recovery lacks exact integer settlement.'
Assert-Contains $profile 'standard Reikon healing potion restores.*0\.25.*max_health' 'Healing potion magnitude is undefined.'
Assert-Contains $profile 'preserve absolute missing Health' 'Maximum-Health change behavior is undefined.'
Assert-Contains $profile 'Award timing is immediate' 'XP is not awarded in the resolving exchange.'
Assert-Contains $profile 'Mana <current>/<maximum>' 'Compact Mana format missing.'
Assert-Contains $profile 'HP <current>/<maximum>' 'Compact HP format missing.'
Assert-Contains $profile 'XP <current>/<next threshold>' 'Compact XP format missing.'
Assert-Contains $startup '^## `/system` Pre-Render Gate$' 'Campaign startup does not intercept /system before free-form rendering.'
Assert-Contains $startup '120_INVENTORY_AND_OWNERSHIP\.md' '/system startup gate does not require the live inventory ledger.'
Assert-Contains $startup 'verify the response contains `STATS`, `SKILLS & ABILITIES`, `INVENTORY`, `QUESTS`, and `PATHS & MARKS`' '/system startup gate does not validate every fixed section.'
Assert-Contains $startup 'THE LEDGER.*not an allowed title' '/system startup gate does not reject the observed alternate title.'
Assert-Contains $startup 'Never send a partial status panel' '/system startup gate does not block incomplete output.'
Assert-Contains $lore 'title of this lore file.*is not a `/system` window title' 'Reikon lore still permits its file title to steer /system rendering.'

Assert-Contains $character '^  xp: 55\s' 'Recovered XP is missing.'
Assert-Contains $character '^  current_mana: 5$' 'Recovered Mana is missing.'
Assert-Contains $character '^  current_health: 60$' 'Recovered Health is missing.'
Assert-Contains $character '^  health_recovery_mode: paused$' 'Health recovery mode is missing.'
Assert-Contains $character '^  health_recovery_care: untreated$' 'Health recovery care is missing.'
Assert-Contains $character '^  health_recovery_injury_severity: moderate$' 'Health recovery severity is missing.'
Assert-Contains $character '^  health_recovery_remainder_units: 0$' 'Health recovery carry is missing.'
Assert-Contains $character 'name: Swordsmanship' 'Sword training is missing from capabilities.'
Assert-Contains $character 'mana_recovery_remainder_seconds: 0' 'Mana recovery carry is missing.'
Assert-Contains $inventory 'bloodied after pack-leader combat' 'Sword state is missing.'
Assert-Contains $current 'pack leader (is|lies) dead' 'Recovered encounter state is missing.'

function Get-HealthRecovery {
    param(
        [long]$ElapsedSeconds,
        [long]$MaxHealth,
        [long]$DailyPercent,
        [ValidateSet(0, 1, 2)][long]$ModeFactor,
        [long]$Remainder = 0
    )
    [long]$total = $Remainder + ($ElapsedSeconds * $MaxHealth * $DailyPercent * $ModeFactor)
    return @{
        Restored = [math]::Floor($total / 17280000)
        Remainder = $total % 17280000
    }
}

if ((Get-HealthRecovery 4320 100 20 2).Restored -ne 1) { throw 'Untreated moderate resting recovery arithmetic drifted.' }
if ((Get-HealthRecovery 4319 100 20 2).Restored -ne 0) { throw 'Fractional Health recovery rounds early.' }
if ((Get-HealthRecovery 8640 100 20 1).Restored -ne 1) { throw 'Light-activity Health recovery arithmetic drifted.' }
if ((Get-HealthRecovery 1728 100 50 2).Restored -ne 1) { throw 'Treated moderate recovery arithmetic drifted.' }
if ((Get-HealthRecovery 86400 100 20 0).Restored -ne 0) { throw 'Paused Health recovery restored HP.' }
if ([math]::Ceiling(0.25 * 101) -ne 26) { throw 'Healing potion rounding drifted.' }
$missingHealth = 100 - 60
if ([math]::Max(0, [math]::Min(105, 105 - $missingHealth)) -ne 65) { throw 'Maximum-Health migration did not preserve missing HP.' }

$liveLedgers = @(
    '100_CHARACTER_SHEET.md', '110_WORLD_LEDGER.md', '120_INVENTORY_AND_OWNERSHIP.md',
    '130_NPCS_AND_FACTIONS.md', '140_OBJECTIVES.md', '160_CAMPAIGN_CHRONICLE.md',
    '170_CHANGELOG.md', '180_CURRENT_STATE.md'
)
foreach ($ledger in $liveLedgers) {
    $live = Join-Path $root "campaigns/reikon_awakening_001/$ledger"
    $saved = Join-Path $root "campaigns/reikon_awakening_001/saves/900_CHECKPOINT_0004/$ledger"
    if ((Get-FileHash -Algorithm SHA256 -LiteralPath $live).Hash -ne (Get-FileHash -Algorithm SHA256 -LiteralPath $saved).Hash) {
        throw "Checkpoint 0004 differs from live ledger: $ledger"
    }
}

Write-Host "Reikon runtime contract tests PASSED" -ForegroundColor Green
