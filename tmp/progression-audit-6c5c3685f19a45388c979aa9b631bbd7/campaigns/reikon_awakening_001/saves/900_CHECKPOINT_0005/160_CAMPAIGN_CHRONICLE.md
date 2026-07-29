# Campaign Chronicle — Reikon Awakening 001

## Record

```yaml
id: REC-000043
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, first expedition"
  record_time: "2026-07-14T00:00:00Z"
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

## Current Chronicle Position

Daedalus has completed the upper-warehouse sweep of Warehouse 7 E-Rift. He has confirmed six creature kills (five Broodlings, one pack leader), harvested 11 cores, recovered a natural scale plate, and located the basement core chamber (not yet entered). At 60/100 Health (treated, active recovery), 7/13 Mana, and 55/100 XP, he rests at Hunters' Association headquarters with his wound healing. The Rift core remains in the basement chamber, uncleared.
