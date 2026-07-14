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

Assert-Contains $runtime '^# Turn-State Settlement$' 'Missing per-exchange settlement enforcement point.'
Assert-Contains $runtime 'Modifier Polarity Is Always Actor-Relative' 'Missing actor-relative modifier rule.'
Assert-Contains $runtime 'contains only repeated role labels and verbatim bodies' 'Debug export is not constrained to raw labelled messages.'
Assert-Contains $runtime 'Do not print headings such as.*Resolution Sequence' 'Debug-off mechanical narration is not prohibited.'

Assert-Contains $profile 'INVENTORY is mandatory on every render' '/system does not require inventory.'
Assert-Contains $profile '^## 9\.5 Compact State Notifications$' 'Missing one-shot System notification contract.'
Assert-Contains $profile 'Recovery settlement is mandatory after every exchange' 'Mana recovery is not settled every exchange.'
Assert-Contains $profile 'Award timing is immediate' 'XP is not awarded in the resolving exchange.'
Assert-Contains $profile 'Mana <current>/<maximum>' 'Compact Mana format missing.'
Assert-Contains $profile 'HP <current>/<maximum>' 'Compact HP format missing.'
Assert-Contains $profile 'XP <current>/<next threshold>' 'Compact XP format missing.'

Assert-Contains $character '^  xp: 55\s' 'Recovered XP is missing.'
Assert-Contains $character '^  current_mana: 5$' 'Recovered Mana is missing.'
Assert-Contains $character '^  current_health: 60$' 'Recovered Health is missing.'
Assert-Contains $character 'name: Swordsmanship' 'Sword training is missing from capabilities.'
Assert-Contains $character 'mana_recovery_remainder_seconds: 0' 'Mana recovery carry is missing.'
Assert-Contains $inventory 'bloodied after pack-leader combat' 'Sword state is missing.'
Assert-Contains $current 'pack leader (is|lies) dead' 'Recovered encounter state is missing.'

$liveLedgers = @(
    '100_CHARACTER_SHEET.md', '110_WORLD_LEDGER.md', '120_INVENTORY_AND_OWNERSHIP.md',
    '130_NPCS_AND_FACTIONS.md', '140_OBJECTIVES.md', '160_CAMPAIGN_CHRONICLE.md',
    '170_CHANGELOG.md', '180_CURRENT_STATE.md'
)
foreach ($ledger in $liveLedgers) {
    $live = Join-Path $root "campaigns/reikon_awakening_001/$ledger"
    $saved = Join-Path $root "campaigns/reikon_awakening_001/saves/900_CHECKPOINT_0003/$ledger"
    if ((Get-FileHash -Algorithm SHA256 -LiteralPath $live).Hash -ne (Get-FileHash -Algorithm SHA256 -LiteralPath $saved).Hash) {
        throw "Checkpoint 0003 differs from live ledger: $ledger"
    }
}

Write-Host "Reikon runtime contract tests PASSED" -ForegroundColor Green
