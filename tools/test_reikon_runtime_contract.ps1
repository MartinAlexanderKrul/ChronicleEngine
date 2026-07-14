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
$resident = 'docs/AI_GAMEPLAY_RESIDENT_CORE.md'
$profile = 'worlds/reikon/206_WORLD_RULE_PROFILE.md'
$character = 'campaigns/reikon_awakening_001/100_CHARACTER_SHEET.md'
$inventory = 'campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md'
$current = 'campaigns/reikon_awakening_001/180_CURRENT_STATE.md'
$startup = 'campaigns/reikon_awakening_001/090_CAMPAIGN_STARTUP.md'
$lore = 'worlds/reikon/205_THE_LEDGER.md'

# Per-turn obligations live in the resident core (Decision 070). Asserting them
# against the resident file is what keeps the split honest: if a resident rule
# drifts back into the fetched profile, these fail.
Assert-Contains $resident '^# Turn-State Settlement$' 'Missing per-exchange settlement enforcement point.'
Assert-Contains $resident 'Modifier Polarity Is Always Actor-Relative' 'Missing actor-relative modifier rule.'
Assert-Contains $resident 'Do not print headings such as.*Resolution Sequence' 'Debug-off mechanical narration is not prohibited.'

# Chat Debug Export is invoked on demand and stays in the fetched profile.
Assert-Contains $runtime 'contains only repeated role labels and verbatim bodies' 'Debug export is not constrained to raw labelled messages.'

# The fetched profile must point at the resident core, or a session can boot
# with the command table and no agency contract.
Assert-Contains $runtime 'docs/AI_GAMEPLAY_RESIDENT_CORE\.md' 'Runtime Profile does not point at the resident core.'

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

# --- Repair regression: assert against the IMMUTABLE checkpoint, not live canon ---
#
# Decisions 065 and 066 repaired Daedalus's state and captured the result in
# Checkpoint 0004. These assertions verify that repair still exists.
#
# They deliberately read the checkpoint, which is immutable (Rules Section 13.2),
# rather than the live ledgers, which are supposed to change every session. An
# earlier revision pinned these values against live canon; that made the test a
# freeze on the campaign — Session 2 legitimately moved mana 5 -> 7 and health
# recovery paused/untreated -> active/treated, and the gate failed for it. A
# conformance test must not forbid play. The repaired values are permanent facts
# about the checkpoint; they were never permanent facts about the character.
$cp = 'campaigns/reikon_awakening_001/saves/900_CHECKPOINT_0004'
$cpCharacter = "$cp/100_CHARACTER_SHEET.md"
$cpInventory = "$cp/120_INVENTORY_AND_OWNERSHIP.md"
$cpCurrent = "$cp/180_CURRENT_STATE.md"

Assert-Contains $cpCharacter '^  xp: 55\s' 'Repaired XP missing from Checkpoint 0004.'
Assert-Contains $cpCharacter '^  current_mana: 5$' 'Repaired Mana missing from Checkpoint 0004.'
Assert-Contains $cpCharacter '^  current_health: 60$' 'Repaired Health missing from Checkpoint 0004.'
Assert-Contains $cpCharacter '^  health_recovery_mode: paused$' 'Health recovery mode missing from Checkpoint 0004.'
Assert-Contains $cpCharacter '^  health_recovery_care: untreated$' 'Health recovery care missing from Checkpoint 0004.'
Assert-Contains $cpCharacter '^  health_recovery_injury_severity: moderate$' 'Health recovery severity missing from Checkpoint 0004.'
Assert-Contains $cpCharacter '^  health_recovery_remainder_units: 0$' 'Health recovery carry missing from Checkpoint 0004.'
Assert-Contains $cpCharacter 'mana_recovery_remainder_seconds: 0' 'Mana recovery carry missing from Checkpoint 0004.'
Assert-Contains $cpInventory 'bloodied after pack-leader combat' 'Sword state missing from Checkpoint 0004.'
Assert-Contains $cpCurrent 'pack leader (is|lies) dead' 'Encounter state missing from Checkpoint 0004.'

# --- Live-canon invariants: true of the campaign at any point in its life ---
#
# These are structural, not snapshot values. Swordsmanship was promoted as
# capability by Decision 065 (EVT-000029) and cannot be un-learned by play; the
# recovery fields must exist on the sheet whatever their current values are.
Assert-Contains $character 'name: Swordsmanship' 'Sword training lost from live capabilities.'
Assert-Contains $character '^  health_recovery_mode: \w+$' 'Live sheet lost the health_recovery_mode field.'
Assert-Contains $character '^  health_recovery_care: \w+$' 'Live sheet lost the health_recovery_care field.'
Assert-Contains $character '^  health_recovery_remainder_units: \d+$' 'Live sheet lost the health recovery carry field.'
Assert-Contains $character '^  mana_recovery_remainder_seconds: \d+$' 'Live sheet lost the mana recovery carry field.'

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

# --- Checkpoint completeness ---
#
# A checkpoint must carry the full ledger set to be restorable (Rules Section
# 13.2; the Reikon Checkpoint 0001 failure class, Decision 061).
#
# This replaces an earlier live-versus-Checkpoint-0004 byte-identity check. That
# check verified read-back at the moment 0004 was written — a valid one-time
# verification that was left in place permanently, where it asserted that live
# canon must equal a fixed checkpoint forever. As a standing gate it meant the
# campaign could never be played again, and Session 2 duly broke it. Read-back
# belongs at the save barrier (Runtime Section 5.4), which runs when a checkpoint
# is created; it cannot be a static test.
$requiredLedgers = @(
    '100_CHARACTER_SHEET.md', '110_WORLD_LEDGER.md', '120_INVENTORY_AND_OWNERSHIP.md',
    '130_NPCS_AND_FACTIONS.md', '140_OBJECTIVES.md', '160_CAMPAIGN_CHRONICLE.md',
    '170_CHANGELOG.md', '180_CURRENT_STATE.md'
)
foreach ($checkpoint in @('900_CHECKPOINT_0004', '900_CHECKPOINT_0005')) {
    foreach ($ledger in $requiredLedgers) {
        $saved = Join-Path $root "campaigns/reikon_awakening_001/saves/$checkpoint/$ledger"
        if (-not (Test-Path -LiteralPath $saved)) {
            throw "$checkpoint is missing a required ledger: $ledger"
        }
    }
    $manifest = Join-Path $root "campaigns/reikon_awakening_001/saves/$checkpoint/900_SAVE_MANIFEST.md"
    if (-not (Test-Path -LiteralPath $manifest)) {
        throw "$checkpoint is missing its save manifest."
    }
}

Write-Host "Reikon runtime contract tests PASSED" -ForegroundColor Green
