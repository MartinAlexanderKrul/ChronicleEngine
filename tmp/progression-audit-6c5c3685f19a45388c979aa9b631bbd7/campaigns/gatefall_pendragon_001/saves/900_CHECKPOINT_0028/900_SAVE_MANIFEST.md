# Save Manifest — Gatefall: Pendragon — Checkpoint 0028

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0028` — player-requested checkpoint on the walk to Owen Callahan's apartment, the Cicero Gate cleared
**Kind:** Player-requested session checkpoint

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-26T23:58:12+02:00"
  source: EVT-000121
  game_date: "2026-08-03T16:00:00-05:00; evening, walking to Rogers Park"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.15"
    freeze_status: frozen
  campaign_schema: "0.1.4"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0027
  canonical_continuation: true
  branch: session-3-main
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
  warnings: "None. Captured under frozen Profile 1.15 and Data Model 0.1.4; requires no migration on restore."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Three hours, 2026-08-03 13:00 through 16:00, spanning `EVT-000119`–`EVT-000121`.

- **`EVT-000119`** — the Cicero Gate's entry and corridor clear. Archetype rolled **Beast Den** (two boss-Rank alphas instead of one); population rolled 8 common/1 elite/2 boss-Rank. Owen's first solo kills; a delegated sweep clearing the remaining commons; the isolated elite killed unseen.
- **`EVT-000120`** — the alpha pair's defeat and the Gate's clear. A shared tactical read identified both alphas' weak points; both hunters fought back to back exactly as planned. Boss drops yielded the skill **Bulwark** for Alexander and a Boss-Imprinted Quickknife, given outright to Owen as his first weapon.
- **`EVT-000121`** — exit, the core declaration, and the truth about pocket gates. Declaring the haul surfaced Alexander's private, unregulated core stash; asked to launder all eleven cores blind, Owen refused and was told the truth about his private instant-dungeon clears. Owen set his own boundary on helping (a plausible number, not the whole eleven) and corrected the report himself. Declared pool $3,525, split 50/50 (≈$1,762.50 each, pending).

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — Mana 21/60, XP 570/800, Bulwark learned, condition, session narrative
- `110_WORLD_LEDGER.md` (`REC-000075`) — opened and unchanged this checkpoint
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — declared loot, core count (11→9), the Quickknife's transfer to Owen, corrected stale cash figures
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's first combat, first weapon, and the pocket-gate disclosure; `REL-000066` state and texture
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-13 complete, OBJ-10 escalated, OBJ-2 financial note
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000119`–`EVT-000121` defined and linked
- `170_CHANGELOG.md` (`REC-000080`) — full session entry with every roll and price
- `180_CURRENT_STATE.md` (`REC-000081`) — full refresh, new anchor, checkpoint pointer, trigger-audit record

`system/ID_REGISTRY.md` carries allocation-log coverage for `EVT-000119`–`EVT-000121`; the Event high-water mark stands at `EVT-000121`. No Entity, Record, or Relationship identifier was minted this checkpoint — the Boss-Imprinted Quickknife is inventory content on `ENT-000139`'s ledger entry, not a new Persistent Object. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0028 as the latest checkpoint.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.15 and Data Model 0.1.4. **No migration is required.**
4. Resume at 2026-08-03, roughly 16:00, walking to Owen Callahan's apartment in Rogers Park — nothing owed until the next daily issues at 06:00 on 2026-08-04.

State at capture: **Level 8, XP 570/800**, Health **116/116**, Mana **21/60**, no injury, base Stats **31/30/25/31/30**, equipped-effective **41/55/29/31/30**, 0 unspent points, ten skills (including the newly learned Bulwark), daily streak **10**, gold **12**, cash **$9,831**, pending rewards **Ability Points +3 ×1 · Status Recovery ×5 · Daily Random Box ×1**, one unused Runic Key, nine unsellable E-Rank cores.

---

**Checkpoint Created:** 2026-07-26T23:58:12+02:00
**Status:** Restorable canonical continuation at Profile 1.15 / Data Model 0.1.4; no migration required on restore.
