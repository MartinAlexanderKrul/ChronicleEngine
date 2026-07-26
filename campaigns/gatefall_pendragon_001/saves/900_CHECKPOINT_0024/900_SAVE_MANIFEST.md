# Save Manifest — Gatefall: Pendragon — Checkpoint 0024

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0024` — corrective canonical continuation at the same late-night scene anchor as Checkpoint 0023
**Kind:** Player-requested canon repair and checkpoint

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested-canon-repair
  real_date: "2026-07-26T11:52:59+02:00"
  source: EVT-000106
  game_date: "2026-07-31, late night into 2026-08-01; asleep at Owen Callahan's apartment"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.12"
    freeze_status: frozen
  campaign_schema: "0.1.4"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0023
  canonical_continuation: true
  branch: session-2-main
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
  warnings: "Checkpoints 0022 and 0023 remain immutable historical captures. This checkpoint carries the later transcript-backed continuity repair and supersedes them only as the latest restore target."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

This is a corrective continuation, not a rewrite of Checkpoint 0022 or 0023. It preserves Checkpoint 0023's present scene anchor and all mechanical state while adding two live-state advances:

- **`EVT-000105` — Profile 1.12 skill tracking.** The already-adopted, evidence-backed skill counters and Data Model 0.1.4 provenance migration are captured in a restorable checkpoint for the first time.
- **`EVT-000106` — transcript-backed first-night continuity repair.** The supplied durable Claude-session export confirms that immediately after the 2026-07-28 true-C-Rank Ashfield clear, Alexander and Owen drank beer together; Owen fell asleep in the booth; Alexander paid the tab, took him by taxi to Alexander's studio, put him in Alexander's bed, lay beside him, and slept with an arm around him for roughly fourteen hours. The following morning included their pillow fight, shared shower, teasing, and report discussion. This was their first overnight and established romantic/physical intimacy. The following night at Owen's was the later milestone when they mutually named what they wanted, not their first overnight.

The repair corrects later framing in `EVT-000103` and relationship prose; it changes no fictional event, present location, XP, Stats, Health, Mana, inventory, objective, NPC knowledge, or elapsed fictional time.

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — unchanged by the repair; included for complete restoration
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged by the repair; included for complete restoration
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — unchanged by the repair; included for complete restoration
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — `REL-000066` first-overnight chronology repaired
- `140_OBJECTIVES.md` (`REC-000078`) — unchanged by the repair; included for complete restoration
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000106` defined and linked
- `170_CHANGELOG.md` (`REC-000080`) — repair and allocation recorded
- `180_CURRENT_STATE.md` (`REC-000081`) — latest checkpoint pointer and continuity note

`system/ID_REGISTRY.md` advances the Event high-water mark through `EVT-000106`. No Entity, Record, or Relationship identifier was minted. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0024 as the latest checkpoint.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.12 and Data Model 0.1.4. No migration is required.
4. Resume at the following morning's wake-up at Owen's Rogers Park apartment, preserving the player's explicit request not to skip directly to the planned lake outing.

State at capture remains: Level 7, XP 580/700, Health 68/88, Mana recovering overnight from 10/40, no injury, base Stats 30/26/22/30/20, equipped-effective Stats 40/51/26/30/20, gold 2,115, cash $18,881, and the full nine-slot loadout equipped.

---

**Checkpoint Created:** 2026-07-26T11:52:59+02:00
**Status:** Corrective restorable continuation; first-night canon made explicit from the supplied durable transcript while historical checkpoints remain unchanged.
