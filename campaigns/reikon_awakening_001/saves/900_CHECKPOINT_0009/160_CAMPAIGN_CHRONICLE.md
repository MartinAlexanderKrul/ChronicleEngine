# Campaign Chronicle — Reikon Awakening 001

## Record

```yaml
id: REC-000043
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000034
  event_time: "Year 31 AR, Warehouse 7 basement cleared"
  record_time: "2026-07-15T09:27:58Z"
role: chronicle
scope: campaign
subjects:
  - EVT-000025
  - EVT-000026
  - EVT-000027
  - EVT-000028
  - EVT-000029
  - EVT-000030
  - EVT-000031
  - EVT-000032
  - EVT-000033
  - EVT-000034
```

## Expedition Begins

```yaml
id: EVT-000025
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, expedition morning"
  record_time: "2026-07-13T00:00:00Z"
kind: expedition-begin
importance: archived
participants:
  - ENT-000051
  - ENT-000062
description: "Captain Marissa Thorne briefs Daedalus, who accepts a solo E-grade assignment and enters the Warehouse 7 E-Rift."
```

## Broodling Combat

```yaml
id: EVT-000026
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, expedition, first combat"
  record_time: "2026-07-13T00:00:00Z"
kind: combat
importance: archived
participants:
  - ENT-000051
description: "Daedalus rolls 43 with +2 modifier steps and destroys two stationary Broodlings with Fireball, spending 12 mana and gaining 12 XP."
```

## Recovery and Observation

```yaml
id: EVT-000027
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, expedition, between combats"
  record_time: "2026-07-13T00:00:00Z"
kind: observation
importance: archived
participants:
  - ENT-000051
description: "Daedalus rests to recover mana and observes that Rift glow intensity correlates with creature movement."
```

## Swarmer Combat

```yaml
id: EVT-000028
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, expedition, second combat"
  record_time: "2026-07-13T00:00:00Z"
kind: combat
importance: archived
participants:
  - ENT-000051
description: "Daedalus rolls 61 with +1 modifier step and destroys three charging Swarmers with a led Fireball, spending 12 mana and gaining 24 XP; he later recovers to full mana."
```

## Morning Physical Training

```yaml
id: EVT-000029
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "campaigns/reikon_awakening_001/exports/play_export_0001.md"
  event_time: "Year 31 AR, expedition morning, before departure"
  record_time: "2026-07-14T18:00:00Z"
kind: training
importance: archived
participants:
  - ENT-000051
description: "Daedalus completes a 10 km run, thirty minutes of sword forms, one hundred pushups, and controlled spell drills; he commits to repeating the regimen daily."
```

## Pack-Leader Combat

```yaml
id: EVT-000030
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "user-supplied raw chat export: full_chat_export_reikon_session.md"
  event_time: "Year 31 AR, first expedition, pack-leader combat"
  record_time: "2026-07-14T18:00:00Z"
kind: combat
importance: active
participants:
  - ENT-000051
description: "Daedalus wounds the Warehouse 7 pack leader with Fireball, is raked and pinned during a sword charge, then uses his sword training to incapacitate and kill it. He ends at 60/100 Health with a moderate left shoulder/collarbone wound, 5/13 Mana after active recovery, and 55/100 XP after the D-grade 19-XP award. Surviving Broodlings retreat."
```

## Warehouse Exploration and Exit

```yaml
id: EVT-000031
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "user-supplied gameplay: /continue session 2"
  event_time: "Year 31 AR, first expedition, post-combat exploration and exit"
  record_time: "2026-07-14T20:30:00Z"
kind: exploration
importance: active
participants:
  - ENT-000051
description: "Daedalus follows a retreating Broodling downward into the warehouse basement, discovering a vast core chamber accessed via a downward-sloping concrete corridor. He maps the layout mentally for later documentation. After returning to the pack leader's corpse, he methodically harvests all looted creatures: four cores from the pack leader, a natural iridescent scale plate from its armor, and seven cores from six earlier kills (Broodlings and Swarmers). Total cores recovered: 11 (inventory now 61). He then exits Warehouse 7 and travels to Hunters' Association headquarters for medical treatment. The Association healer treats his wound, transitioning health recovery from paused/untreated to active/treated. Daedalus rests at the Association while his wound begins deterministic healing. He carries a natural scale plate of unknown crafting value. Basement core chamber confirmed but not yet accessed for final clear."
```

## Ruling — Warehouse 7 Kill Count Corrected

```yaml
id: EVT-000032
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, first expedition, post-combat exploration and exit"
  record_time: "2026-07-14T21:15:00Z"
kind: ruling
importance: archived
participants:
  - ENT-000051
description: "Explicit ruling correcting a recording error in EVT-000031, classified under Runtime Section 8.1 as a transcription error rather than a canon conflict. EVT-000031 states 'seven cores from six earlier kills'; the earlier kills are five, not six. Four independent sources establish the correct count: EVT-000026 and ENT-000052 record two Broodlings destroyed; EVT-000028 and ENT-000053 record three Swarmers destroyed; 170_CHANGELOG.md records 'five creatures defeated' for Session 1; 140_OBJECTIVES.md records 'Five earlier creatures and the pack leader'. The Session 1 transcript audit (exports/README.md) independently confirms two Broodlings and three Swarmers. Correct canon: six creature kills total for the expedition — two Broodlings, three Swarmers, and the pack leader — of which five precede the pack-leader combat. The core counts are unaffected and stand as recorded: four cores from the pack leader and seven from the five earlier kills, 11 total, corroborated by the core purse quantity of 61 (ENT-000060). The composition claim 'five Broodlings, one pack leader' in the superseded Current Chronicle Position prose was wrong on the same facts and is corrected here. EVT-000031 is immutable (011_ENGINE_DATA_MODEL.md Section 2.4) and its bytes are unchanged; it is retained as historical evidence of how the error was recorded, and this ruling governs where the two disagree."
```

## Recovery, Research, and Basement Engagement

```yaml
id: EVT-000033
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "owner-supplied full shared-chat transcript, promoted only through the last rules-valid exchange"
  event_time: "Year 31 AR, return to Warehouse 7"
  record_time: "2026-07-15T09:15:00Z"
kind: combat
importance: active
participants:
  - ENT-000051
  - ENT-000062
  - ENT-000071
  - ENT-000072
  - ENT-000073
description: "Daedalus bought four healing potions, two energy tonics, and wound salve for 15 E-cores; used one healing potion and three salve applications during recovery; completed two additional 10 km runs, one additional sword-form session, one additional pushup session, and further spell practice; and consulted Dr. Kalens, Dr. Soren, and Marta before returning to Warehouse 7. In the basement core chamber he found a suspended deep-red core guarded by four D-grade Breakers. With an active energy tonic, his ledge-sentinel sword attack rolled 28 raw plus one modifier step, effective 48, a partial success that killed the sentinel; the mandatory D-grade award adds 19 XP, moving 55 to 74. His first area Fireball then rolled 32 with no modifier, failed, and spent 12 Mana, moving 13 to 1. At the valid closing anchor Daedalus is on the four-metre ledge at 90/100 Health, 1/13 Mana, Level 1, and 74/100 XP; a burned Breaker is climbing toward him, a critically burned Breaker thrashes on the flank, and an unharmed guardian remains beside the unextracted core. The transcript's next attempted Fireball is not promotable because its 12-Mana gate is unmet; the Runtime's invented Health-powered overcast and everything causally downstream are non-canonical."
```

## Owner Ruling — Life-Burn Anomaly and Basement Clear

```yaml
id: EVT-000034
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "owner ruling applied to the complete shared-chat transcript"
  event_time: "Year 31 AR, Warehouse 7 Breaker engagement and aftermath"
  record_time: "2026-07-15T09:27:58Z"
kind: ruling-and-combat
importance: active
participants:
  - ENT-000051
description: "Owner ruling under Reikon Profile 0.5 supersedes EVT-000033's rejection boundary and authors one finite System anomaly. Bearer: Daedalus. Eligible Abilities: Fireball and Flame Shield. Conversion: each missing Mana costs 1 Health in the same exchange. Start: the first post-ledge Fireball attempt when Daedalus had 11 of the required 12 Mana. Expiry: immediate on the fourth Breaker's death. Health may not be reduced below 1. The anomaly is not an Ability, cannot be invoked again, and creates no ordinary overcasting precedent. Canonical continuation: half of one mana vial raises Mana 1→11; Fireball rolls 67, −1 step, effective 47, partial success, spends 11 Mana plus 1 Health and inflicts 22 close-blast Health damage, leaving 67/100. The remaining half-vial restores 10 Mana; a healing potion restores 25 Health to 92; a second Fireball rolls 73, succeeds, spends 10 Mana plus 2 Health, kills the flank and climbing Breakers, and awards 38 XP. XP 74→112 crosses T(1)=100 immediately: Daedalus reaches Level 2 with 12 XP carried toward T(2)=130; max Mana becomes 14 and max Health 105 while preserving the 10-HP deficit, so Health becomes 95/105. Half of a second mana vial restores 10 Mana. Flame Shield is sustained for four seconds at its correct 2 Mana/second cost, leaving 2 Mana. The four-metre jump and sword attack roll 58, −1 step, effective 38, failure; settled impact and rake damage leave 67/105. Daedalus then sustains Flame Shield for approximately three further seconds through the anomaly, paying the 6-Mana deficit with 6 Health, and charges. The sword attack rolls 84, +1 step from the burned guardian's impairment and the shield's pressure, effective 100 after the 01–100 clamp, critical success; the core guardian dies, awarding 19 XP and expiring the anomaly. XP becomes 31/130 at Level 2. A healing potion restores 27 Health to 88/105; one additional salve application redresses the shoulder. Daedalus rests and records detailed chamber observations, recovers Mana to 7/14, harvests four D-cores, then fails a direct extraction attempt at raw 42 with −1 step, effective 22. Study establishes that the core is energetically bonded and requires specialist severance or sealing. He allocates the Ascension's two points irreversibly: Mana Affinity 13→14 and Fireball Strength 0→1."
```

## Current Chronicle Position

Daedalus stands in the cleared Warehouse 7 basement core chamber at Level 2, 31/130 XP, 88/105 Health, and 7/14 Mana. All four D-grade Breakers are dead and their D-cores harvested. The owner-authored life-burn anomaly expired with the final kill and cannot recur. The metre-tall burgundy Rift core remains suspended, energetically bonded, and unextracted after a failed direct attempt; the immediate decision is whether to report and await specialists, attempt sealing, or pursue another properly resolved approach.
