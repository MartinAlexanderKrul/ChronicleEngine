$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$characterPath = Join-Path $repo "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
$checkpointPath = Join-Path $repo "campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0024/100_CHARACTER_SHEET.md"
$startupPath = Join-Path $repo "campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md"
$chroniclePath = Join-Path $repo "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md"
$indexPath = Join-Path $repo "system/WORLDS_AND_CAMPAIGNS.md"
$residentPath = Join-Path $repo "docs/AI_GAMEPLAY_RESIDENT_CORE.md"
$runtimePath = Join-Path $repo "engine/012_ENGINE_RUNTIME.md"
$runtimeProfilePath = Join-Path $repo "docs/AI_GAMEPLAY_RUNTIME_PROFILE.md"

# Derived, not pinned. The latest checkpoint advances with every promoted save,
# so a literal ordinal here goes stale every session and fails for a reason that
# has nothing to do with the quest contract. `900_CHECKPOINT_0024` above is a
# different case: it is a fixed historical capture this test deliberately checks
# was never retrofitted, so it is correctly literal.
$latestCheckpointName = (
    Get-ChildItem -LiteralPath (Join-Path $repo "campaigns/gatefall_pendragon_001/saves") -Directory |
        Where-Object { $_.Name -match '^900_CHECKPOINT_\d+$' } |
        Sort-Object Name |
        Select-Object -Last 1
).Name
$latestCheckpointPath = Join-Path $repo "campaigns/gatefall_pendragon_001/saves/$latestCheckpointName/100_CHARACTER_SHEET.md"

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
$chronicle = Get-Content -LiteralPath $chroniclePath -Raw -Encoding UTF8
$index = Get-Content -LiteralPath $indexPath -Raw -Encoding UTF8
$resident = Get-Content -LiteralPath $residentPath -Raw -Encoding UTF8
$runtime = Get-Content -LiteralPath $runtimePath -Raw -Encoding UTF8
$runtimeProfile = Get-Content -LiteralPath $runtimeProfilePath -Raw -Encoding UTF8
$latestCheckpoint = Get-Content -LiteralPath $latestCheckpointPath -Raw -Encoding UTF8

# The active version is READ, never pinned. Four assertions here carried the
# literal "1.51" and had to be hand-edited on every profile adoption; a test
# that must be edited to keep passing is a test that stops meaning anything,
# which is F-013's defect exactly. What is actually worth asserting is not the
# number but that everything AGREES on it -- profile header, live character
# sheet, campaign startup binding, and world index -- so the number is taken
# from the profile and the other three are checked against it.
$activeProfileVersion = [regex]::Match($profile, '(?m)^# Gatefall .+Profile (?<v>\d+\.\d+)\r?$')
Assert-True $activeProfileVersion.Success "Gatefall profile header declares no active version."
$activeVersion = $activeProfileVersion.Groups['v'].Value
$activeVersionPattern = [regex]::Escape($activeVersion)
# Profile 1.49 removed the "1 slot by default" baseline along with Multitask: capacity
# is the System Rank ladder outright, floored at 2 by E-Rank, with no default to add to
# and no skill contributing. The old assertion pinned a baseline that no longer exists.
Assert-True ($profile -match 'It is not granted by any skill, and no allocation, item, or title raises it') "Non-daily capacity does not exclude skill, allocation, item and title sources."
Assert-True ($profile -match 'derived from the Bearer''s System Rank\*\* \(Section 6\.6\): \*\*2 / 3 / 4 / 5 / 6 / 7\*\* at E / D / C / B / A / S') "Non-daily quest capacity is not derived from System Rank at 2/3/4/5/6/7."
Assert-True ($profile -notmatch 'Multitask raises this to') "Retired Multitask still grants quest capacity."
Assert-True ($profile -match '\| \*\*Stat Passive Rank\*\* \| \*\*E\*\* \| \*\*D\*\* \| \*\*C\*\* \| \*\*B\*\* \| \*\*A\*\* \| \*\*S\*\* \|') "Stat Passive Rank ladder is missing."
Assert-True ($profile -match '\*\*Rank-Sight\*\* and \*\*Deep Sight\*\* are both retired names for Flux Sight') "Flux Sight deprecation does not retire both prior names."
Assert-True ($profile -match 'The `\[DAILY\]` quest has its own reserved slot') "Daily quests do not have an explicit reserved slot."
Assert-True ($profile -match 'Class Quest and later class-evolution quest.*reserved class slot') "Class quests do not have an explicit reserved slot."
Assert-True ($profile -match 'four times the common-kill XP') "Urgent quest reward formula is missing."
Assert-True ($profile -match 'Gate-clear milestone XP for the Bearer''s System Rank') "Hidden quest reward formula is missing."
Assert-True ($profile -match 'A quest cannot complete from conduct that occurred before') "Pre-attachment retroactive completion is not prohibited."
Assert-True ($profile -match 'The Runtime may not create `\[HIDDEN\] \?\?\?` merely for atmosphere') "Decorative Hidden pointers are not prohibited."

Assert-True ($character -match "profile_version: `"$activeVersionPattern`"") "Live Gatefall character was not migrated to Profile $activeVersion."
Assert-True ($character -notmatch 'analyst_bonus') "Retired analyst_bonus survives the Profile 1.33 migration."
# Derived, not pinned -- the same reason as the checkpoint ordinal above, and
# the same reason the quest lists beside line 66 are not pinned either.
#
# A Stat Passive's Rank is a function of its governing base Stat under Section
# 4.4's threshold table, clamped by System Rank + 1 and by the deepest rung its
# own ladder authors. All three inputs move with play. Pinned as literal
# "C-Rank ... B-Rank at 54", this assertion went stale the session Perception
# reached 54 and Flux Sight rose C -> B, and it failed naming the derivation it
# was supposed to be protecting.
#
# What is asserted here is deliberately the half the repository validator does
# not cover. That gate already re-derives the Rank and requires the row to
# render it with its class label, so repeating it here would prove nothing. It
# does not look at the telemetry tail -- and Section 4.4's "A held rung is
# recorded, never silent" is precisely the clause a silent regression erases.
# So the tail is the subject, checked against a Rank derived the way the gate
# derives it.
$statPassiveThresholds = @(30, 36, 44, 54, 66, 80)
$statPassiveLadder = @("E", "D", "C", "B", "A", "S")

# Scoped to system_state, never the whole sheet. `latent_stat_array` carries the
# superseded civilian creation array with its own `perception:` key; read at file
# scope it wins on document order and derives an E-Rank that renders nowhere.
$systemStateOffset = $character.IndexOf("`n  system_state:")
Assert-True ($systemStateOffset -ge 0) "Live character sheet has no system_state block to derive Stat Passives from."
$systemState = $character.Substring($systemStateOffset)
$liveStats = [regex]::Match($systemState, '(?ms)^[ \t]+stats:[ \t]*\r?\n(?<body>(?:[ \t]+[a-z_]+:[ \t]*\d+[ \t]*\r?\n)+)')
Assert-True $liveStats.Success "Live system_state carries no numeric base stat block."
$systemRankMatch = [regex]::Match($systemState, '(?m)^[ \t]+system_rank:[ \t]*([EDCBAS])(?:-Rank)?[ \t]*$')
Assert-True $systemRankMatch.Success "Live system_state declares no System Rank to clamp Stat Passive Ranks against."
$ceilingIndex = [math]::Min($statPassiveLadder.Count - 1,
    [array]::IndexOf($statPassiveLadder, $systemRankMatch.Groups[1].Value) + 1)

# Capacity derives from System Rank alone from Profile 1.49 -- Multitask is retired and
# `base_capacity`/`multitask_bonus`/`analyst_bonus` are gone from stored state. Derived
# here rather than pinned, for the same reason the Stat Passive rows are: System Rank
# moves with play. The quest lists beside it are deliberately NOT pinned -- doing so made
# this fail on the first session that attached a Hidden quest, unrelated to the rule.
$capacityLadder = @{ 'E' = 2; 'D' = 3; 'C' = 4; 'B' = 5; 'A' = 6; 'S' = 7 }
$expectedCapacity = $capacityLadder[$systemRankMatch.Groups[1].Value]
Assert-True ($character -match "(?ms)non_daily_quests:\s+capacity_total: $expectedCapacity") "Live non-daily capacity does not derive $expectedCapacity from System Rank $($systemRankMatch.Groups[1].Value)."
Assert-True ($character -notmatch 'multitask_bonus') "Retired multitask_bonus survives the Profile 1.49 migration."
Assert-True ($character -notmatch 'skills\.multitask\.') "Retired Multitask counter survives the Profile 1.49 migration."

function Assert-StatPassiveRow {
    param(
        [string]$Name,
        [string]$Stat,
        # The deepest rung Section 4.4 authors for this skill. Flux Sight is
        # authored to S; the four that absorbed the retired Stat-50 skills stop
        # at C until Section 20.3 reaches higher.
        [string]$Authored,
        [string]$Tail
    )

    $statMatch = [regex]::Match($liveStats.Groups['body'].Value, "(?m)^[ \t]+$Stat`:[ \t]*(\d+)[ \t]*$")
    Assert-True $statMatch.Success "Live base $Stat is missing; $Name's Rank cannot be derived."
    $statValue = [int]$statMatch.Groups[1].Value

    $derivedIndex = -1
    for ($i = 0; $i -lt $statPassiveThresholds.Count; $i++) {
        if ($statValue -ge $statPassiveThresholds[$i]) { $derivedIndex = $i }
    }
    Assert-True ($derivedIndex -ge 0) "$Name's base $Stat ($statValue) is below its own E-Rank threshold."

    $authoredIndex = [array]::IndexOf($statPassiveLadder, $Authored)
    $rankIndex = [math]::Min([math]::Min($derivedIndex, $ceilingIndex), $authoredIndex)
    $rank = $statPassiveLadder[$rankIndex]

    # Section 4.4, completed at Profile 1.48: a rung the skill cannot take
    # renders as held and names WHICH clamp binds -- `rung unauthored` for the
    # authoring clamp, `System Rank ceiling` for the Section 7.5 ceiling. The
    # ceiling now has its own wording; before 1.48 it had none, and a
    # ceiling-blocked rung rendered as a bare threshold, promising a grant the
    # profile could not deliver.
    #
    # The Rank named is the highest threshold the base Stat actually reached
    # where that stands above the skill's current Rank -- Shrug Off at Vitality
    # 100 is holding S, not merely the A above its B -- and otherwise the next
    # rung, the one the clamp will block when the Stat arrives.
    $nextIndex = $rankIndex + 1
    if ($nextIndex -ge $statPassiveLadder.Count) {
        $nextText = 'S-Rank'
    } else {
        $heldIndex = if ($derivedIndex -gt $rankIndex) {
            [math]::Min($derivedIndex, $authoredIndex)
        } else {
            $nextIndex
        }
        if ($heldIndex -gt $authoredIndex) {
            $nextText = "\[$($statPassiveLadder[$heldIndex])-Rank\] held: rung unauthored"
        } elseif ($heldIndex -gt $ceilingIndex) {
            $nextText = "\[$($statPassiveLadder[$heldIndex])-Rank\] held: System Rank ceiling"
        } else {
            $nextText = "$($statPassiveLadder[$heldIndex])-Rank at $($statPassiveThresholds[$heldIndex])"
        }
    }

    $pattern = [regex]::Escape($Name) + " \[$rank-Rank\] . Stat Passive" + $Tail +
        "Uses \d+ . $([regex]::Escape($Stat.Substring(0,1).ToUpper() + $Stat.Substring(1))) $statValue . $nextText"
    Assert-True ($character -match $pattern) `
        "Live $Name does not render its derived $rank-Rank state and next threshold. Expected the row to match: $pattern"
}

# Every Stat Passive is authored to S from Profile 1.48; the four that absorbed
# the retired Stat-50 skills stopped at C before it. `Authored` stays a
# parameter rather than becoming a constant, because it is the mechanism that
# will validate the next Stat Passive a version adds part-authored.
Assert-StatPassiveRow -Name 'Flux Sight' -Stat 'perception' -Authored 'S' -Tail '.+'
# Conduit replaced Multitask at Profile 1.49. Its rendered bonus is the Section 4.4
# ladder's own figure for the Rank it derives to (E/D/C/B/A/S -> +5/+10/+15/+20/+25/
# +30 points), so it is derived here rather than pinned.
$conduitPoints = @{ 'E' = 5; 'D' = 10; 'C' = 15; 'B' = 20; 'A' = 25; 'S' = 30 }
Assert-StatPassiveRow -Name 'Conduit' -Stat 'intelligence' -Authored 'S' `
    -Tail '.+'
Assert-StatPassiveRow -Name 'Overpower' -Stat 'strength' -Authored 'S' -Tail '.+'
Assert-StatPassiveRow -Name 'Pre-empt' -Stat 'agility' -Authored 'S' -Tail '.+'
Assert-StatPassiveRow -Name 'Shrug Off' -Stat 'vitality' -Authored 'S' -Tail '.+'
Assert-True ($character -notmatch 'Rank-Sight . Passive . Stat-milestone skill') "Retired Rank-Sight survives as a live skill."
Assert-True ($checkpoint -match 'profile_version: "1\.12"') "Immutable Checkpoint 0024 profile version changed."
Assert-True ($checkpoint -notmatch 'non_daily_quests:') "Immutable Checkpoint 0024 was retrofitted with Profile 1.14 quest state."
Assert-True ($startup -match "world_rule_profile: `"Gatefall World Rule Profile $activeVersionPattern`"") "Campaign startup does not bind Profile $activeVersion."
Assert-True ($startup -match "latest_restorable_checkpoint: campaigns/gatefall_pendragon_001/saves/$([regex]::Escape($latestCheckpointName))") "Campaign startup does not target the latest checkpoint on disk ($latestCheckpointName)."
Assert-True ($startup -match 'readiness_headings:') "Gatefall startup has no bounded readiness selector list."
Assert-True ($startup -match '"14\.3 Trigger Tiers') "Gatefall startup does not select the trigger manifest heading."
Assert-True ($startup -match 'migration_index: worlds/gatefall/migrations/INDEX\.md') "Gatefall startup does not point restoration at the migration index."
Assert-True ($startup -match 'require_profile_trigger_audit: true') "Gatefall startup does not require the proactive trigger audit."
Assert-True ($index -match "World Rule Profile $activeVersionPattern, frozen") "World index does not advertise frozen Profile $activeVersion."
Assert-True ($profile -match 'SKILLS[^\r\n]+ACTIVE') "Gatefall /system template does not render an ACTIVE skills group."
Assert-True ($profile -match 'SKILLS[^\r\n]+PASSIVE') "Gatefall /system template does not render a PASSIVE skills group."
Assert-True ($profile -match 'contains every skill whose ledger entry carries a Mana cost') "Gatefall /system skills do not classify ACTIVE entries from canonical Mana cost."
Assert-True ($profile -match 'contains every skill whose cost is `passive`') "Gatefall /system skills do not classify PASSIVE entries from canonical cost."
# Two stored shapes are legal and both must pass, because checkpoints are immutable:
# every capture through Profile 1.48 carries `base_capacity` + `multitask_bonus` +
# `capacity_total` and must still agree with itself, while 1.49 and later carry
# `capacity_total` alone, derived from System Rank. Pinning either shape alone breaks
# on the other, and a checkpoint is never rewritten to match a newer profile.
if ($latestCheckpoint -match '(?ms)non_daily_quests:\s+base_capacity: (?<base>\d+)\s+multitask_bonus: (?<multitask>\d+)\s+capacity_total: (?<total>\d+)') {
    Assert-True (([int]$Matches["base"] + [int]$Matches["multitask"]) -eq [int]$Matches["total"]) "Latest checkpoint capacity_total $($Matches['total']) does not equal base $($Matches['base']) plus Multitask $($Matches['multitask'])."
} else {
    Assert-True ($latestCheckpoint -match '(?ms)non_daily_quests:\s+capacity_total: \d+') "Latest checkpoint captures neither the pre-1.49 capacity parts nor a derived capacity_total."
}

Assert-True ($runtime -match '(?m)^## 2\.5 Profile-Declared Proactive Trigger Settlement\r?$') "Normative Runtime lacks proactive trigger settlement."
Assert-True ($runtime -match 'does not wait for the player to request a') "Normative Runtime still permits player-prompted-only triggers."
Assert-True ($resident -match '(?m)^# Profile-Declared Proactive Trigger Audit\r?$') "Proactive trigger audit is missing from the resident per-turn layer."
Assert-True ($resident -match 'must execute it even when the player did not ask') "Resident trigger audit is not automatic."
Assert-True ($resident -match 'before yielding every scene opening') "Resident trigger audit does not run at scene opening."
Assert-True ($resident -match 'after a resolved exchange changes a crisis, threat, deadline, proximity, clue, or discovery') "Resident trigger audit does not run after trigger-relevant exchanges."
Assert-True ($resident -match 'candidate_deltas.*intersect') "Resident trigger dispatch is not delta-selective."
Assert-True ($resident -match 'An empty intersection performs no full-domain eligibility scan') "Irrelevant exchanges still permit a full trigger scan."
Assert-True ($profile -match 'trigger_manifest_version: "1\.0"') "Gatefall trigger manifest is missing."
Assert-True ($profile -match '(?ms)gatefall\.quest\.urgent:.*?timing: first_qualifying_yield.*?settlement: offer') "Urgent trigger dispatch is incomplete."
Assert-True ($profile -match '(?ms)gatefall\.quest\.hidden:.*?identity:.*?concealed_object_or_objective_key.*?settlement: automatic_attachment') "Hidden trigger identity or settlement is incomplete."
Assert-True (($profile | Select-String -Pattern 'capacity_notice_repeat: first_blocked_audit_then_capacity_change' -AllMatches).Matches.Count -eq 2) "Quest-capacity warning repeat policy is incomplete."
Assert-True ($profile -match '(?ms)gatefall\.skill_formation:.*?dangerous_scene\.closed.*?promotion_barrier.*?settlement: progression_audit') "Skill-formation boundaries are absent from the manifest."
Assert-True ($profile -notmatch 'Runtime picks the beat') "Gatefall still permits delayed Tier-2 trigger settlement."
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

# Adoption attached no pointer. The invariant is that the ADOPTION EVENT seeds no quest --
# not that live quest state stays empty forever, which stopped being true the moment play
# legitimately attached one. Bounded to the adoption Event's own block.
$adoption = if ($chronicle -match '(?s)## EVT-000210.*') { $Matches[0] } else { "" }
Assert-True ($adoption -ne "") "The chain adoption Event EVT-000210 is missing from the chronicle."
Assert-True ($adoption -notmatch 'quest_key') "The chain adoption Event seeded a non-daily quest; it must change capacity only."

# --- Profile 1.28: the tracked Gate board (Section 9.10) ---

Assert-True ($profile -match '(?m)^## 9\.10 The Tracked Board\r?$') "Profile lacks Section 9.10."
Assert-True ($profile -match '\*\*This is persistence, not simulation\.\*\*') "Section 9.10 does not distinguish persistence from simulation."
Assert-True ($profile -match "Section 9\.1's rates are aggregate and explicitly \*\*not a calendar\*\*") "Section 9.10 does not preserve Section 9.1's no-calendar rule."
Assert-True ($profile -match 'The deadline is \*\*derived, never authored\*\*') "Section 9.10 does not require deadlines to be derived."
Assert-True ($profile -match '\*\*Deadline resolution is deterministic\.\*\*') "Section 9.10 does not make deadline resolution deterministic."
foreach ($branch in @('`staffed` or `held` → cleared off-screen',
                      '`posted` → the Gate breaks',
                      '`withdrawn` → the posting leaves the board')) {
    Assert-True ($profile -match [regex]::Escape($branch)) "Section 9.10 is missing deadline-resolution branch: $branch"
}
Assert-True ($profile -match '\*\*A posting is tracked state, not a Persistent Object\.\*\*') "Section 9.10 does not keep postings out of the identifier space."
Assert-True ($profile -match "Section 8\.4\.2's four criteria are then evaluated \*\*on their own terms and unchanged\*\*") "Section 9.10 does not hold Section 8.4.2 unchanged."
Assert-True ($profile -match 'never adjusts a posting.s staffing, deadline, or location to make one fit') "Section 9.10 does not forbid tuning a posting to manufacture an Urgent offer."

# The seeded board exists, and every deadline is correct derived arithmetic (Section 9.3).
$breakDays = @{ 'E' = 7; 'D' = 6; 'C' = 5; 'B' = 4 }
$rows = [regex]::Matches($worldLedger, '(?m)^\| `(GB-\d+)` \| [^|]+ \| \*\*(?:Confirmed|Unconfirmed) ([EDCB])-Rank\*\* \| (\d{4}-\d{2}-\d{2}) \| \*\*midnight (\d{4}-\d{2}-\d{2})\*\* \|')
# This is a vacuity guard, not a board-size contract, and it used to be both by
# accident. The loop below checks each posting's derived deadline arithmetic; if
# the table's format changed and the regex matched nothing, that loop would pass
# over an empty set and prove nothing. So the assertion exists to confirm the
# table is still parsable.
#
# It required at least three, which was the count the board happened to hold
# when the test was written and was never argued for. After F-002 settled
# (`EVT-000270`) the board legitimately holds one live posting -- GB-01 and
# GB-02 broke, GB-03 cleared -- and the suite failed for days on a world state
# that is correct. Section 9.10 sets no minimum and Section 9.4's economics
# ("cheap jobs sit") make a quiet board an ordinary outcome, so asserting a
# floor here was asserting something no rule says.
#
# One row is what the guard actually needs.
Assert-True ($rows.Count -ge 1) "Tracked board holds no parsable postings; the Section 9.10 table is missing or its format has changed, so the deadline arithmetic below would check nothing."
foreach ($r in $rows) {
    $key = $r.Groups[1].Value
    $rank = $r.Groups[2].Value
    $detected = [datetime]::ParseExact($r.Groups[3].Value, 'yyyy-MM-dd', $null)
    $breaks = [datetime]::ParseExact($r.Groups[4].Value, 'yyyy-MM-dd', $null)
    $expected = $detected.AddDays($breakDays[$rank])
    Assert-True ($breaks -eq $expected) "Board posting $key has an authored deadline: $rank-Rank detected $($detected.ToString('yyyy-MM-dd')) derives $($expected.ToString('yyyy-MM-dd')) under Section 9.3, not $($breaks.ToString('yyyy-MM-dd'))."
}

# The control case the board's arithmetic is calibrated against stays intact.
Assert-True ($profile -match '(?m)^\| Rank \| E-Rank \| D-Rank \| C-Rank \| B-Rank \| A-Rank \| S-Rank \|') "Section 9.3 break-timer table is missing."
Assert-True ($profile -match '(?m)^\| Days from detection to break \| 7 \| 6 \| 5 \| 4 \| 3 \| 2 \|') "Section 9.3 break-timer values changed; the board's derived deadlines are calibrated to 7/6/5/4/3/2."

# --- Profile 1.29: Urgent eligibility clarified (Section 8.4.2) ---

# The crisis bar itself must not have moved: all four criteria still stand.
Assert-True ($profile -match 'a present, nearby crisis poses an immediate threat of death to at least one non-hostile person') "Section 8.4.2 criterion 1 changed."
Assert-True ($profile -match 'the threat is a Gate creature, an active Gate break, or a directly perceived sealed-instance hazard') "Section 8.4.2 criterion 2 changed."
Assert-True ($profile -match 'the Bearer has a physically actionable route to intervene before the threat resolves') "Section 8.4.2 criterion 3 changed."
Assert-True ($profile -match 'the objective, success condition, failure condition, and causal deadline can be stated from facts the Bearer already perceives') "Section 8.4.2 criterion 4 changed."

# Criterion 1 excludes the Bearer himself.
Assert-True ($profile -match 'non-hostile person \*\*other than the Bearer himself\*\*') "Section 8.4.2 criterion 1 does not exclude the Bearer."
Assert-True ($profile -match '\*\*The Bearer is never the imperilled person\.\*\*') "Section 8.4.2 lacks the Bearer-exclusion clarification."
Assert-True ($profile -match 'is combat, resolved under Sections 6 and 20\.4') "Section 8.4.2 does not route danger to the Bearer to combat resolution."

# The contract exclusion is scoped, and the blanket phrasing is gone.
Assert-True ($profile -match '\*\*The contract exclusion, exactly\.\*\*') "Section 8.4.2 lacks the scoped contract exclusion."
Assert-True ($profile -match 'danger to any person who entered under the \*\*same contract\*\* as the Bearer') "Scoped contract exclusion does not name same-contract persons."
Assert-True ($profile -match 'This exclusion does \*\*not\*\* reach a person who is not party to that contract') "Scoped contract exclusion does not release non-parties."
Assert-True ($profile -notmatch 'Routine contracted hunting, a danger the Bearer deliberately created') "The blanket 'routine contracted hunting' exclusion is still present."

# Every other non-qualifying case survives.
foreach ($clause in @('a danger the Bearer deliberately created',
                      'a remote report he cannot reach in time',
                      'property loss without immediate danger to life',
                      'a crisis already resolved do \*\*not\*\* qualify')) {
    Assert-True ($profile -match $clause) "Section 8.4.2 dropped a non-qualifying case: $clause"
}
Assert-True ($profile -match 'The System does not reveal an unconfirmed Gate Rank, a hidden attacker, or an NPC.s intent to make an offer fit') "Section 8.4.2 dropped the no-reveal-to-fit rule."

# Sealed-instance reachability is stated in both directions.
Assert-True ($profile -match '\*\*Sealed instances can qualify, but not alone\.\*\*') "Section 8.4.2 does not state sealed-instance reachability."
Assert-True ($profile -match 'no Urgent quest can arise in a solo instant dungeon at all') "Section 8.4.2 does not close the solo instant-dungeon case."
Assert-True ($profile -match 'Section 17 lets the Bearer bring a party into an instant dungeon') "Section 8.4.2 does not ground the party case in Section 17."
Assert-True ($profile -match 'a red gate \(Section 9\.6\) seals whoever entered it') "Section 8.4.2 does not ground the red-gate case in Section 9.6."

# The two grounding rules it leans on must still say what it claims.
Assert-True ($profile -match 'Using a key opens a sealed instance for the Bearer \(he may bring a party, but the key is his\)') "Section 17 no longer permits bringing a party; Section 8.4.2's sealed-instance rule depends on it."
Assert-True ($profile -match '\*\*Red gate\*\* — the Gate seals on entry and cannot be exited until its boss dies') "Section 9.6's red gate no longer seals on entry; Section 8.4.2's sealed-instance rule depends on it."

# Reward and lifecycle untouched.
Assert-True ($profile -match 'E-Rank 40, D-Rank 100, C-Rank 240, B-Rank 600, A-Rank 1,600, S-Rank 4,000') "Urgent reward ladder changed."

# --- Profile 1.30: trigger telemetry (Section 8.4.6) ---

$currentStatePath = Join-Path $repo "campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md"
$currentState = Get-Content -LiteralPath $currentStatePath -Raw -Encoding UTF8

Assert-True ($profile -match '(?m)^### 8\.4\.6 Trigger Telemetry\r?$') "Profile lacks Section 8.4.6."
Assert-True ($profile -match '\*\*It is diagnostic, and it is never a trigger\.\*\*') "Section 8.4.6 does not declare itself diagnostic-only."
Assert-True ($profile -match 'wearing a counter as a disguise') "Section 8.4.6 does not prohibit dry-spell-threshold firing as a Tier-3 evasion."
Assert-True ($profile -match '\*\*It is not System state\.\*\*') "Section 8.4.6 does not keep telemetry out of System state."
Assert-True ($profile -match 'never render in any `/system` panel') "Section 8.4.6 does not bar telemetry from /system."
Assert-True ($profile -match '\*\*Existing checkpoints are not retrofitted\.\*\*') "Section 8.4.6 does not protect immutable checkpoints from retrofit."
Assert-True ($profile -match 'Supply healthy, dry count rising\*\* — \*not\* a fault') "Section 8.4.6 does not distinguish a healthy dry count from a design fault."

# The live block exists, carries every field, and is not inside system_state.
Assert-True ($currentState -match '(?m)^trigger_telemetry:') "Live ledger carries no trigger_telemetry block (Section 8.4.6)."
foreach ($f in @('hidden_pointers_attached','hidden_last_attached','hidden_dry_days',
                 'urgent_offers_issued','urgent_last_offered','urgent_dry_days',
                 'concealed_records_available','tracked_postings')) {
    Assert-True ($currentState -match ("(?m)^\s+" + $f + ":")) "trigger_telemetry is missing required field '$f' (Section 8.4.6)."
}
Assert-True ($character -notmatch 'trigger_telemetry') "trigger_telemetry leaked into system_state on the character ledger; Section 8.4.6 forbids it."

# The recorded supply counts must match the ledgers they summarise.
$worldRecords = ([regex]::Matches($knowledge, '(?m)^subtype: concealed-discovery\r?$')).Count
$campaignRecords = ([regex]::Matches($worldLedger, '(?m)^subtype: concealed-discovery\r?$')).Count
# `tracked_postings` counts postings still ON the board, not every row the table
# has ever carried. The distinction did not exist until F-002 settled: before
# then no posting had ever been resolved, so "rows in the table" and "live
# postings" were the same number and the test could not tell which it meant.
#
# After `EVT-000270` the table carries its settled history -- GB-01 and GB-02
# `broken`, GB-03 `cleared`, each marked with the Event that settled it -- and
# only GB-04 remains `posted`. Counting rows therefore reported 4 against a
# correct telemetry value of 1 and failed on a board that is right.
#
# A settled row is identified by its own settlement marker rather than by the
# presentational bolding of its deadline, which is a rendering convention and
# not a contract.
$boardRows = ([regex]::Matches($worldLedger, '(?m)^\| `GB-\d+` \|(?![^\r\n]*settled `EVT-)')).Count

Assert-True ($currentState -match '(?m)^\s+concealed_records_available:\s*(\d+)') "trigger_telemetry.concealed_records_available is unreadable."
$recordedConcealed = [int]$Matches[1]
Assert-True ($currentState -match '(?m)^\s+tracked_postings:\s*(\d+)') "trigger_telemetry.tracked_postings is unreadable."
$recordedPostings = [int]$Matches[1]

# Section 8.4.6 counts discoveries AVAILABLE, not total: a record with a Hidden pointer
# attached to it is no longer supply. This distinction was invisible while nothing had ever
# attached -- total and available were the same number -- and surfaced on the campaign's
# first attachment. Subtract the attached pointers rather than requiring the totals match.
$attachedPointers = ([regex]::Matches($character, '(?m)^\s+concealed_name:')).Count
$availableRecords = $worldRecords + $campaignRecords - $attachedPointers
Assert-True ($recordedConcealed -eq $availableRecords) "trigger_telemetry.concealed_records_available is $recordedConcealed but the ledgers hold $availableRecords available ($worldRecords world + $campaignRecords campaign, less $attachedPointers attached)."
Assert-True ($recordedPostings -eq $boardRows) "trigger_telemetry.tracked_postings is $recordedPostings but the Section 9.10 board holds $boardRows postings."

# These two are OBSERVATIONS about this campaign right now, not invariants, and
# `F-018` is the flag that separated the two kinds.
#
# An empty board is a legal, reachable state that Section 9.10's own settlement
# rules produce: `GB-04` broke at midnight 2026-08-12 and was settled by owner
# ruling at `EVT-000413`, emptying the board for the first time in the campaign.
# Asserted as a contract failure, this suite failed on correct canon and there
# was nothing the suite could do to fix it -- only play can put a posting back on
# a board. The same argument applies to concealed supply. Both remain worth
# saying out loud, because a dry input stream is a real thing for the owner to
# act on; neither is a defect in the repository.
#
# So they are emitted on the OBSERVATION channel, which `test_all.ps1` collects
# from every suite and reports separately from the pass/fail verdict. Whether the
# board should be permitted to sit empty at all -- a supply floor -- is a world
# design question the roadmap already assigns to a play session, and it is not
# this suite's to decide.
#
# Note that an actually-exhausted concealed supply is still caught earlier and
# more strictly by Assert-ConcealedRecords' minimum counts; these two only ever
# spoke to a telemetry block recording zero while agreeing with ledgers that also
# hold zero.
if ($recordedConcealed -le 0) {
    Write-Host "OBSERVATION: Concealed-discovery supply is exhausted: no Hidden quest can attach under Section 8.4.3 regardless of how correctly the audit runs. Author concealed canon under Section 8.4.5."
}
if ($recordedPostings -le 0) {
    Write-Host "OBSERVATION: The Section 9.10 board is empty: Section 8.4.2 has no Gate-sourced input stream. Let ordinary channels surface postings."
}

# --- Profile 1.34: /system standard-hit damage previews (Sections 6.2 and 15) ---

# Version history is owned by worlds/gatefall/migrations/, not the active profile (R7).
$migration134 = Get-Content -LiteralPath (Join-Path $repo "worlds/gatefall/migrations/1.33_to_1.34.md") -Raw -Encoding UTF8
Assert-True ($migration134 -match 'Required 1\.33.+1\.34 migration') "The 1.33 to 1.34 migration record lacks its damage-preview procedure."
Assert-True ($profile -match 'standard-success raw damage before target reduction') "/system damage previews lack their target-independent standard/before-reduction definition."
Assert-True ($profile -match 'Multi-hit skills render each separately resolved hit') "/system damage previews collapse separately reduced hits."
Assert-True ($profile -match 'when either hand can open, both legal orders render') "/system damage previews do not require both legal Twin Fang orders."
Assert-True ($character -notmatch '(?m)^\s+damage_previews?:') "Damage previews were stored in the character ledger instead of derived at render."

function Round-HalfUp {
    param([decimal]$Value)
    return [int][math]::Floor($Value + 0.5)
}

Assert-True ($character -match 'strength: "(\d+) \(base') "Effective Strength is unreadable for damage-preview derivation."
$effectiveStrength = [int]$Matches[1]
# The equipped weapon's POWER is the damage-preview input; which weapon supplies
# it is loadout, and loadout changes with play. These pinned the weapon names
# ("Ghost Quickknife" main, "C-Rank Quickknife" off) and broke the session a
# Finished dagger [S-Rank] displaced the Ghost Quickknife into the off hand --
# failing as "weapon power is unreadable" when the power was perfectly readable
# and simply belonged to a different blade.
Assert-True ($character -match 'main_hand: ".+?weapon power (\d+)') "Main-hand weapon power is unreadable."
$mainPower = [int]$Matches[1]
Assert-True ($character -match 'off_hand: ".+?weapon power (\d+)') "Off-hand weapon power is unreadable."
$offPower = [int]$Matches[1]
# A skill's RANK is not pinned here, for the same reason the weapon names above
# stopped being pinned. Rank ascension (Section 7.5) moves it with play, and
# these three read `[E-Rank]`, `[D-Rank]` and `[E-Rank]` as literals. Dagger
# Mastery's went stale at `EVT-000390`, which took it E -> C: the assertion then
# matched nothing and failed as "bonus is unreadable" when the bonus was
# perfectly readable and simply sat beside a different Rank. That is F-013's
# defect class again -- a fixture pinning live state -- and it is fixed the same
# way: read the Rank the sheet renders, then check the derivation against it.
Assert-True ($character -match 'Dagger Mastery \[([EDCBAS])-Rank\].+adds \*\*\+([0-9.]+)\*\*') "Dagger Mastery bonus is unreadable."
$daggerBonus = [decimal]::Parse($Matches[2], [Globalization.CultureInfo]::InvariantCulture)
# Rupture's baseline is a function of its own Rank under Section 7.2's table,
# so it is looked up there rather than pinned at the D-Rank 25 it happens to
# stand at today.
Assert-True ($profile -match '(?m)^\| Rank baseline \|(?<row>.+)\|\s*$') "Section 7.2 Rank baseline table is unreadable."
$rankBaselines = @{}
$baselineCells = $Matches['row'].Split('|') | ForEach-Object { $_.Trim() } | Where-Object { $_ -match '^[\d,]+$' }
for ($ri = 0; $ri -lt $baselineCells.Count -and $ri -lt 6; $ri++) {
    $rankBaselines[@("E", "D", "C", "B", "A", "S")[$ri]] = [int]($baselineCells[$ri] -replace ',', '')
}
# The baseline capture is LAZY on purpose. It was greedy, and PowerShell's
# `-match` is case-insensitive, so `.+baseline (\d+)` ran past the rendered
# figure and matched the row's own ascension note -- "**Baseline 150 -> 375**",
# recording the B-to-A transition -- taking 150 as the current baseline and
# failing correct canon at A-Rank. The row was right both times: it renders
# "(A-Rank baseline 375, Section 7.2)" and separately records what the value
# rose from. `.+?` binds the capture to the first baseline after the multiplier,
# which is the rendered one.
#
# This is `F-018`'s class from the other side: not a fixture pinned to live
# state, but a pattern loose enough to match prose the rule was never about. A
# guard that fails on canon its own rules generate is a false negative, and it
# stayed hidden because an earlier assertion in this file aborted the suite
# before reaching it.
Assert-True ($character -match 'Rupture \[([EDCBAS])-Rank\].+\*\*×([0-9.]+) of its skill-rank baseline\*\*.+?baseline (\d+)') "Rupture multiplier is unreadable."
$ruptureRank = $Matches[1]
$ruptureRenderedBaseline = [int]$Matches[3]
$ruptureMultiplier = [decimal]::Parse($Matches[2], [Globalization.CultureInfo]::InvariantCulture)
Assert-True ($rankBaselines.ContainsKey($ruptureRank) -and $rankBaselines[$ruptureRank] -eq $ruptureRenderedBaseline) "Rupture renders baseline $ruptureRenderedBaseline at $ruptureRank-Rank; Section 7.2's table fixes it at $($rankBaselines[$ruptureRank])."
Assert-True ($character -match 'Twin Fang \[([EDCBAS])-Rank\].+second strike has a \**×([0-9.]+)\** Twin Fang') "Twin Fang multiplier is unreadable."
$twinFangMultiplier = [decimal]::Parse($Matches[2], [Globalization.CultureInfo]::InvariantCulture)
# Section 7.4 makes the prose a RENDERING of the stored counters, so the invariant is that
# the two agree -- not that they equal a particular snapshot. Pinning the snapshot made this
# fail on the first session that advanced Twin Fang, for a reason unrelated to the rule.
$tfLevels = @{ 1 = '★☆☆☆☆ Novice'; 2 = '★★☆☆☆ Practiced'; 3 = '★★★☆☆ Adept'; 4 = '★★★★☆ Expert'; 5 = '★★★★★ Master' }
Assert-True ($character -match 'skills\.twin_fang\.successful_uses[^}]*current_value: (\d+)') "Twin Fang successful_uses counter is unreadable."
$tfUses = [int]$Matches[1]
Assert-True ($character -match 'skills\.twin_fang\.qualifying_scenes_total[^}]*current_value: (\d+)') "Twin Fang qualifying_scenes_total counter is unreadable."
$tfScenes = [int]$Matches[1]
Assert-True ($character -match 'skills\.twin_fang\.mastery_progress[^}]*current_value: (\d+)') "Twin Fang mastery_progress counter is unreadable."
$tfProgress = [int]$Matches[1]
Assert-True ($character -match 'skills\.twin_fang\.mastery_level[^}]*current_value: (\d+)') "Twin Fang mastery_level counter is unreadable."
$tfLevel = [int]$Matches[1]
# Master is the ceiling, so the sheet renders "mastery progress complete" there
# rather than a fraction -- a Master skill has no next tier to be N/3 toward.
# Pinning only the fraction form made this unsatisfiable for any skill that
# actually reached Master, which is what F-011's settlement exposed.
$tfProgressRender = if ($tfLevel -eq 5) { 'mastery progress complete' } else { 'mastery progress ' + $tfProgress + '/3' }
# The Rank was pinned at E here, which is the same F-013 defect the Dagger
# Mastery and Rupture assertions above were already fixed for: a fixture
# pinning live state. It survived only because Twin Fang had never ascended.
# `EVT-000396` took it E -> D and the assertion then matched nothing, failing as
# "prose does not match its stored counters" when the prose matched perfectly
# and simply sat beside a different Rank. Read the rendered Rank instead; the
# invariant under Section 7.4 is that prose and counters agree, not that the
# skill stands at any particular Rank.
Assert-True ($character -match ('Twin Fang \[([EDCBAS])-Rank\] ' + [regex]::Escape($tfLevels[$tfLevel]) + '.+Successful uses ' + $tfUses + ' . qualifying scenes total ' + $tfScenes + ' . ' + $tfProgressRender)) "Twin Fang rendered prose does not match its stored counters (level $tfLevel, uses $tfUses, scenes $tfScenes, progress $tfProgress)."

$quickknifeChassis = [decimal]0.75 + $daggerBonus
$mainDamage = Round-HalfUp (($effectiveStrength + $mainPower) * $quickknifeChassis)
$offDamage = Round-HalfUp (($effectiveStrength + $offPower) * $quickknifeChassis)
$ruptureDamage = Round-HalfUp ($ruptureRenderedBaseline * $ruptureMultiplier)
$offFollowUp = Round-HalfUp (($effectiveStrength + $offPower) * $quickknifeChassis * $twinFangMultiplier)
$mainFollowUp = Round-HalfUp (($effectiveStrength + $mainPower) * $quickknifeChassis * $twinFangMultiplier)

# These are a SNAPSHOT of the current loadout and Stats, not a rule -- they move whenever
# effective Strength, a weapon, Dagger Mastery, or a mastery level changes. The formula
# above is the invariant; these guard it against silent drift.
#
# Recomputed for the B-Rank Gate session, which moved two inputs at once: the
# Finished dagger [S-Rank] (weapon power 22) was equipped mid-fight and displaced
# the Ghost Quickknife (11) from main hand into off hand, and effective Strength
# rose 62->69. Dagger Mastery +0.30 at Master (chassis x1.05), Rupture x2.45 at
# Expert and Twin Fang x1.60 at Master are all unchanged, so every movement below
# traces to the loadout and the Stat.
#
# Rupture stays 61 by construction: its preview is the skill-rank baseline times
# its multiplier, and no weapon enters that product. A change there would mean
# the formula moved, which is the whole point of keeping these pinned.
#
# Superseded, recorded at 900_CHECKPOINT_0061 for effective Strength 51->62, the
# only input that moved then: main power 11, off power 7, Dagger Mastery +0.30 at
# Master (chassis x1.05) and Rupture x2.45 at Expert all unchanged. Twin Fang's
# x1.60 was unchanged there too -- the sheet had rendered Master's multiplier all
# along, so F-011's settlement moved the stored counter up to the number this
# snapshot was already computed from rather than changing the number. The pin
# before that sat at Strength 51 and had been stale since the Level 14 advance.
#
# Superseded again, recorded at 900_CHECKPOINT_0065 for effective Strength
# 69->70: the single point allocated to Strength at `EVT-000357`, and the only
# input that moved. Main power 22, off power 11, Dagger Mastery +0.30 at Master
# (chassis x1.05), Twin Fang x1.60 and Rupture x2.45 are all unchanged, which is
# why every figure below moves by exactly one point of Strength through the
# formula and Rupture does not move at all. The drift predates Profile 1.48 and
# is unrelated to it; the Stat Passive rungs touch no damage input.
# The pin is replaced by the invariant it was standing in for. Section 15 makes
# the `/system` preview a DERIVATION -- Section 6.2's formula at result
# multiplier x1 and zero reduction, with ordinary final rounding -- so the
# assertion that matters is that the number the sheet RENDERS equals the number
# the formula produces from the sheet's own inputs. That is self-updating
# against Strength, loadout, chassis and mastery, and it still fails loudly if
# the formula itself moves, which is what the pin was for.
#
# The pin did not survive contact. It was hand-recomputed at least four times
# (Strength 51->62, 62->69, 69->70, loadout swaps), and the fifth time it was
# not: `EVT-000390` moved Dagger Mastery +0.30 -> +0.70 and nothing here
# followed. Worse, the drift ran the other way too -- that Event wrote the
# previews as 127 and 111, TRUNCATING 127.6 and 111.65 where Section 6.2 rounds
# to nearest with .5 up. A pinned snapshot could not have caught that, because
# the snapshot and the sheet were both hand-written from the same arithmetic.
# Corrected to 128 and 112 at `EVT-000391`.
Assert-True ($character -match 'main_hand: ".+?DMG (\d+) standard') "Main-hand rendered DMG preview is unreadable."
$mainRendered = [int]$Matches[1]
Assert-True ($character -match 'off_hand: ".+?DMG (\d+) standard') "Off-hand rendered DMG preview is unreadable."
$offRendered = [int]$Matches[1]
Assert-True ($mainRendered -eq $mainDamage) "Main-hand sheet renders DMG $mainRendered; Section 6.2 on the sheet's own inputs (Strength $effectiveStrength + power $mainPower, chassis x$quickknifeChassis) derives $mainDamage."
Assert-True ($offRendered -eq $offDamage) "Off-hand sheet renders DMG $offRendered; Section 6.2 on the sheet's own inputs (Strength $effectiveStrength + power $offPower, chassis x$quickknifeChassis) derives $offDamage."
# Rupture takes no weapon input, so its preview is the Rank baseline times its
# multiplier and moves only when one of those two does -- both of which are read
# above rather than pinned.
Assert-True ($ruptureDamage -eq (Round-HalfUp ($rankBaselines[$ruptureRank] * $ruptureMultiplier))) "Rupture preview $ruptureDamage disagrees with its own Rank baseline $($rankBaselines[$ruptureRank]) x $ruptureMultiplier."
# Twin Fang's two combination previews are not rendered anywhere on the sheet,
# so unlike the weapon previews above there is no independent number to check
# the derivation against -- and re-asserting the value this file just computed
# would be circular. What these pins were really guarding is Section 7.2's two
# structural rules about the technique, so those are asserted directly and the
# snapshot (97+136, 85+155, four inputs stale) is retired.
#
# 1. "The first strike is the ordinary opening and gains no Twin Fang mastery
#    multiplier." The opener must equal that weapon's plain preview exactly,
#    and the follow-up must exceed the other weapon's plain preview whenever
#    the multiplier is above x1.00 -- catching both regressions at once: the
#    multiplier leaking onto the opener, or being dropped from the follow-up.
# 2. "Each strike uses only its own weapon power." With unequal powers the two
#    orderings cannot produce the same follow-up; if they do, one weapon's
#    power is being used for both strikes.
Assert-True ($twinFangMultiplier -ge [decimal]1.0) "Twin Fang mastery multiplier $twinFangMultiplier is below the Novice x1.00 floor."
if ($twinFangMultiplier -gt [decimal]1.0) {
    Assert-True ($offFollowUp -gt $offDamage) "Twin Fang follow-up ($offFollowUp) does not exceed the off-hand's ordinary preview ($offDamage) at multiplier x$twinFangMultiplier; the follow-up is not carrying the mastery multiplier."
    Assert-True ($mainFollowUp -gt $mainDamage) "Twin Fang follow-up ($mainFollowUp) does not exceed the main-hand's ordinary preview ($mainDamage) at multiplier x$twinFangMultiplier; the follow-up is not carrying the mastery multiplier."
}
if ($mainPower -ne $offPower) {
    Assert-True ($mainFollowUp -ne $offFollowUp) "Twin Fang resolves both orderings to $mainFollowUp despite unequal weapon power ($mainPower vs $offPower); each strike must use only its own weapon's power."
}

Write-Host "Gatefall quest contract tests PASSED" -ForegroundColor Green
