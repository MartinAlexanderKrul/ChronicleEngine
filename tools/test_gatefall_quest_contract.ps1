$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$characterPath = Join-Path $repo "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
$checkpointPath = Join-Path $repo "campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0024/100_CHARACTER_SHEET.md"
$startupPath = Join-Path $repo "campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md"
$indexPath = Join-Path $repo "system/WORLDS_AND_CAMPAIGNS.md"
$residentPath = Join-Path $repo "docs/AI_GAMEPLAY_RESIDENT_CORE.md"
$runtimePath = Join-Path $repo "engine/012_ENGINE_RUNTIME.md"
$runtimeProfilePath = Join-Path $repo "docs/AI_GAMEPLAY_RUNTIME_PROFILE.md"
$latestCheckpointPath = Join-Path $repo "campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0029/100_CHARACTER_SHEET.md"

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
$resident = Get-Content -LiteralPath $residentPath -Raw -Encoding UTF8
$runtime = Get-Content -LiteralPath $runtimePath -Raw -Encoding UTF8
$runtimeProfile = Get-Content -LiteralPath $runtimeProfilePath -Raw -Encoding UTF8
$latestCheckpoint = Get-Content -LiteralPath $latestCheckpointPath -Raw -Encoding UTF8

Assert-True ($profile -match '(?m)^# Gatefall .+Profile 1\.27\r?$') "Gatefall Profile 1.27 is not active."
Assert-True ($profile -match 'The Bearer has \*\*1 concurrent non-daily quest slot by default\*\*') "Default non-daily capacity is not fixed at 1."
Assert-True ($profile -match 'Multitask raises this to \*\*2\*\*; Analyst raises it to \*\*3\*\*') "Multitask/Analyst capacity increases are not fixed at 2 and 3."
Assert-True ($profile -match 'The `\[DAILY\]` quest has its own reserved slot') "Daily quests do not have an explicit reserved slot."
Assert-True ($profile -match 'Class Quest and later class-evolution quest.*reserved class slot') "Class quests do not have an explicit reserved slot."
Assert-True ($profile -match 'four times the common-kill XP') "Urgent quest reward formula is missing."
Assert-True ($profile -match 'Gate-clear milestone XP for the Bearer''s System Rank') "Hidden quest reward formula is missing."
Assert-True ($profile -match 'A quest cannot complete from conduct that occurred before') "Pre-attachment retroactive completion is not prohibited."
Assert-True ($profile -match 'The Runtime may not create `\[HIDDEN\] \?\?\?` merely for atmosphere') "Decorative Hidden pointers are not prohibited."

Assert-True ($character -match 'profile_version: "1\.27"') "Live Gatefall character was not migrated to Profile 1.27."
Assert-True ($character -match '(?ms)non_daily_quests:\s+base_capacity: 1\s+multitask_bonus: 1\s+analyst_bonus: 0\s+capacity_total: 2\s+active: \[\]\s+pending_offers: \[\]') "Live Multitask quest capacity is missing or incorrect."
Assert-True ($checkpoint -match 'profile_version: "1\.12"') "Immutable Checkpoint 0024 profile version changed."
Assert-True ($checkpoint -notmatch 'non_daily_quests:') "Immutable Checkpoint 0024 was retrofitted with Profile 1.14 quest state."
Assert-True ($startup -match 'world_rule_profile: "Gatefall World Rule Profile 1\.27"') "Campaign startup does not bind Profile 1.27."
Assert-True ($startup -match 'latest_restorable_checkpoint: campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0029') "Campaign startup does not target the latest checkpoint."
Assert-True ($startup -match 'Sections 7\.1, 7\.4, 8\.4, and 14\.3 before readiness completes') "Gatefall startup does not preload the skill and proactive-trigger contracts."
Assert-True ($startup -match 'require_profile_trigger_audit: true') "Gatefall startup does not require the proactive trigger audit."
Assert-True ($index -match 'World Rule Profile 1\.27, frozen') "World index does not advertise frozen Profile 1.27."
Assert-True ($profile -match 'SKILLS[^\r\n]+ACTIVE') "Gatefall /system template does not render an ACTIVE skills group."
Assert-True ($profile -match 'SKILLS[^\r\n]+PASSIVE') "Gatefall /system template does not render a PASSIVE skills group."
Assert-True ($profile -match 'contains every skill whose ledger entry carries a Mana cost') "Gatefall /system skills do not classify ACTIVE entries from canonical Mana cost."
Assert-True ($profile -match 'contains every skill whose cost is `passive`') "Gatefall /system skills do not classify PASSIVE entries from canonical cost."
Assert-True ($latestCheckpoint -match '(?ms)non_daily_quests:\s+base_capacity: 1\s+multitask_bonus: 1\s+analyst_bonus: 0\s+capacity_total: 2') "Latest checkpoint does not capture Multitask quest capacity."

Assert-True ($runtime -match '(?m)^## 2\.5 Profile-Declared Proactive Trigger Settlement\r?$') "Normative Runtime lacks proactive trigger settlement."
Assert-True ($runtime -match 'does not wait for the player to request a') "Normative Runtime still permits player-prompted-only triggers."
Assert-True ($resident -match '(?m)^# Profile-Declared Proactive Trigger Audit\r?$') "Proactive trigger audit is missing from the resident per-turn layer."
Assert-True ($resident -match 'must execute it even when the player did not ask') "Resident trigger audit is not automatic."
Assert-True ($resident -match 'before yielding every scene opening') "Resident trigger audit does not run at scene opening."
Assert-True ($resident -match 'after a resolved exchange changes a crisis, threat, deadline, proximity, clue, or discovery') "Resident trigger audit does not run after trigger-relevant exchanges."
Assert-True ($resident -match 'eligible Urgent quest produces its offer automatically') "Resident Gatefall Urgent behavior is not wired."
Assert-True ($resident -match 'eligible Hidden quest attaches automatically') "Resident Gatefall Hidden behavior is not wired."
Assert-True ($runtimeProfile -match 'execute the resident Profile-Declared Proactive Trigger Audit before the first scene opens') "Returning-session procedure does not run the proactive audit."

# --- Profile 1.27: concealed-canon supply (Sections 8.4.3, 8.4.5) ---

$knowledgePath = Join-Path $repo "worlds/gatefall/230_KNOWLEDGE_SUBJECTS.md"
$worldLedgerPath = Join-Path $repo "campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md"

Assert-True (Test-Path -LiteralPath $knowledgePath) "Gatefall concealed-canon ledger 230_KNOWLEDGE_SUBJECTS.md is missing."

$knowledge = Get-Content -LiteralPath $knowledgePath -Raw -Encoding UTF8
$worldLedger = Get-Content -LiteralPath $worldLedgerPath -Raw -Encoding UTF8

# Section 8.4.5 exists and carries the three bounds of the promotion ritual.
Assert-True ($profile -match '(?m)^### 8\.4\.5 Concealed-Canon Supply and the Promotion Ritual\r?$') "Profile lacks Section 8.4.5."
Assert-True ($profile -match 'A record authored and attached inside the same exchange is manufacturing') "Section 8.4.5 does not prohibit same-exchange authoring and attachment."
Assert-True ($profile -match 'its pointer may attach no earlier than a \*\*later scene\*\*') "Section 8.4.5 does not require time separation before attachment."
Assert-True ($profile -match 'A record \*\*never stores a reward\*\*') "Section 8.4.5 does not forbid a stored reward."
Assert-True ($profile -match 'This is an obligation to seed texture, \*\*not a quota\*\*') "Section 8.4.5 does not bound the authoring obligation against becoming a quota."
Assert-True ($profile -match 'Play never edits a world file\.') "Section 8.4.5 does not hold world records immutable against play."

# Section 8.4.3 criterion 1 now names the ledger and still requires prior authoring.
Assert-True ($profile -match 'authored under Section 8\.4\.5 in an earlier exchange than this audit') "Section 8.4.3 criterion 1 does not require the record to predate the audit."

# The supply is non-empty, and every record carries the complete field contract.
$required = @('claim','anchor','concealment','proximity_condition','clue_condition',
              'reveal_condition','objective','completion_condition','failure_or_expiry',
              'resolution_depth','bearer_knows')

function Assert-ConcealedRecords {
    param([string]$Text, [string]$Label, [int]$Minimum)

    $blocks = [regex]::Matches($Text, '(?ms)^id: (ENT-\d{6})\r?$.*?^```\r?$')
    $found = 0
    foreach ($b in $blocks) {
        if ($b.Value -notmatch 'subtype: concealed-discovery') { continue }
        $found++
        $entId = $b.Groups[1].Value
        foreach ($f in $required) {
            Assert-True ($b.Value -match ("(?m)^\s+" + $f + ":")) "$Label record $entId is missing required field '$f' (Profile Section 8.4.5)."
        }
        Assert-True ($b.Value -notmatch '(?m)^\s+reward') "$Label record $entId stores a reward; Section 8.4.3 fixes reward from System Rank at attachment."
        Assert-True ($b.Value -match '(?m)^\s+bearer_knows: false') "$Label record $entId does not default bearer_knows to false."
    }
    Assert-True ($found -ge $Minimum) "$Label holds $found concealed-discovery records; at least $Minimum are required for Section 8.4.3 to have a supply."
}

Assert-ConcealedRecords -Text $knowledge -Label "World concealed-canon ledger" -Minimum 10
Assert-ConcealedRecords -Text $worldLedger -Label "Gatefall: Pendragon world ledger" -Minimum 3

# The ledger is owner-facing and never rendered.
Assert-True ($knowledge -match 'an attached pointer renders `\?\?\?`') "Concealed-canon ledger does not state that an attached pointer still renders ???."
Assert-True ($knowledge -match 'no campaign ever edits this file') "Concealed-canon ledger does not hold itself immutable against play."

# Adoption attached no pointer: live quest state is still empty.
Assert-True ($character -match '(?ms)non_daily_quests:\s+base_capacity: 1\s+multitask_bonus: 1\s+analyst_bonus: 0\s+capacity_total: 2\s+active: \[\]\s+pending_offers: \[\]') "Profile 1.27 adoption seeded a non-daily quest; it must attach no pointer retroactively."

Write-Host "Gatefall quest contract tests PASSED" -ForegroundColor Green
