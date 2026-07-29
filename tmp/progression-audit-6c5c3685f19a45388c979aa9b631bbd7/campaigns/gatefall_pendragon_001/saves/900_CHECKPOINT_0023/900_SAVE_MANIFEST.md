# Save Manifest — Gatefall: Pendragon — Checkpoint 0023

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0023` — Session 2, player-requested checkpoint, captured with both Alexander and Owen asleep at Owen Callahan's apartment in Rogers Park, Chicago, late night 2026-07-31 into 2026-08-01
**Kind:** Player-requested checkpoint (`/save`, Save Algorithm)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  created: "2026-08-01T04:00:00Z"
  source: EVT-000104
  also_promotes: []
  event_time: "2026-07-31, night, asleep — Owen Callahan's apartment, Rogers Park, Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.11"
    freeze_status: frozen
    frozen_date: "2026-07-26"
    note: "No profile change since Checkpoint 0022 — still frozen 1.11. No migration required on restore."
  campaign_schema: "0.1.3"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0022
  canonical_continuation: true
  branch: "session-2-main"
included_ledgers:
  - REC-000074
  - REC-000075
  - REC-000076
  - REC-000077
  - REC-000078
  - REC-000079
  - REC-000080
  - REC-000081
compatibility:
  status: compatible
  warnings: "Captured under frozen Gatefall World Rule Profile 1.11 and Data Model 0.1.3 -- fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. The player explicitly requested the next session resume at the following morning's wake-up rather than in-scene at the lake — the Runtime should honor that on restore rather than opening directly into the planned jet-ski/lake scene."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Requested by the player immediately after the day's closing scene — dinner, the largest voluntary disclosure of the relationship to date, a restated gear commitment, and a weekend plan — with an explicit instruction that the next session should resume at the following morning's wake-up rather than skip ahead to the planned lake outing. One event since Checkpoint 0022. A checkpoint is complete restorable state, not a diff (Rules Section 13.1), so all eight ledgers are copied in full.

**`EVT-000104` — Dinner: three bosses, a weekend, and a line neither planned.** Over dinner, Alexander told Owen he had killed three bosses that afternoon, alone — the largest true fact he has volunteered about himself, still short of naming the System. Owen's reaction was genuine alarm, an unbidden mender's read finding nothing wrong, and the held promise not to ask how. Alexander restated, as a funded plan, his intent to properly equip Owen (hands, boots, real protection) and proposed a future Dale-brokered mining job. Weekend plans set: jet skis and the lake tomorrow, contingent on Owen looking at Renata's sensor rig and giving Priya a firm training date, both still owed. Cleaning up, Alexander said, off guard, "I'll give you all the evenings." Showered and went to bed together. No Stat, XP, gold, or item change.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — condition (asleep, Health 68/88, Mana recovering overnight), extensive session narrative through the night's close
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged by this session's events
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — unchanged by this event
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's location (asleep, two pending tasks), `REL-000066` texture (the three-boss disclosure, the gear conversation, the weekend plan, the unweighed line)
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-10 disclosure progress, OBJ-11 gear commitment note
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000104` recorded and added to the record's subjects
- `170_CHANGELOG.md` (`REC-000080`) — this checkpoint and its preceding changes entered
- `180_CURRENT_STATE.md` (`REC-000081`) — scene anchor (asleep, next session resumes at morning wake-up), promotion status

`110` and `120` are unchanged by this event and are included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced in the same change for `EVT-000104` and `REC-000094` (this manifest's own record slot in the high-water mark). No entity or relationship identifier was minted. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.11 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — neither profile nor schema.
4. **Resume at the following morning's wake-up** at Owen's apartment in Rogers Park — per explicit player instruction, do not open directly into the planned jet-ski/lake scene. Level 7, XP 580/700, Health 68/88 (recovering), Mana recovering overnight from 10/40 toward full (exact value settles on wake), 0 unspent stat points, base Stats 30/26/22/30/20, equipped-effective 40/51/26/30/20, gold 2,115, cash $18,881, no injury, daily quest streak 7 (an eighth quest issues 06:00 on 2026-08-01 and has not yet been addressed in fiction). Pending rewards: Ability Points +3 ×1, Status Recovery ×2. Full nine-slot loadout equipped, Ghost Quickknife [B-Rank] in the main hand. Skills unchanged from Checkpoint 0022. Inventory: 0 E-Rank crystals, 6 E-Rank cores (unsellable), 1 Instant-Dungeon Key [E-Rank]. Owen owes Renata a look at her sensor rig and Priya a firm training date, both short and pending; jet skis and the lake are planned for the day ahead once those are handled or set aside.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-08-01T04:00:00Z
**Status:** Restore point for Session 2 — the day's biggest voluntary disclosure made, a gear commitment funded, a weekend planned, and the day closed on an unweighed true thing. Next session opens at the morning after, not the lake itself.
