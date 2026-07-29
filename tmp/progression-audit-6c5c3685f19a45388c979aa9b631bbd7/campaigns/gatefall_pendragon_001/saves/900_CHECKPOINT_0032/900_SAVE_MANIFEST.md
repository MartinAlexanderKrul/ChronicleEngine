# Save Manifest — Gatefall: Pendragon — Checkpoint 0032

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0032` — player-requested checkpoint, mid-morning of 2026-08-05, near Loyola Park
**Kind:** Player-requested checkpoint (`/save`)

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-27"
  source: EVT-000153
  game_date: "2026-08-05T10:30:00-05:00; a quiet corner near Loyola Park, Rogers Park"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.24"
    freeze_status: frozen
  campaign_schema: "0.1.5"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0031
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
  warnings: "None. Captured under frozen Profile 1.24 and Data Model 0.1.5; requires no migration on restore."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Roughly fourteen hours, 2026-08-04 20:40 through 2026-08-05 10:30, spanning `EVT-000147`–`EVT-000153`.

- **`EVT-000147`** — the night's rest (Mana 16→62/62), the twelfth daily quest completed with Owen at Loyola Park (streak 11→12), and the relationship's first mutual "I love you," over breakfast.
- **`EVT-000148`** — the morning's banked rewards claimed: a Mend rune consumed (learned), a Daily Random Box opened (+500 g), and all eight unspent Ability Points allocated (Perception +4, Intelligence +4).
- **`EVT-000149`** — solo instant dungeon (Hive): Keen Sense advanced Novice→Practiced; XP 300→670/900; loot 37 crystals, 1 core, a rune teaching Sprint (consumed).
- **`EVT-000150`** — solo instant dungeon (Ashfield): Twin Fang/Stone Skin/Bulwark/Exploit Pattern advanced Novice→Practiced, Rupture Adept→Master; **Level 9→10, System Rank E→D**; loot 26 crystals, 2 cores, a key.
- **`EVT-000151`** — solo instant dungeon (Overgrown Temple): Flash Step Adept→Expert, Dagger Mastery Practiced→Adept, Mend Novice→Practiced; XP 40→350/1000; loot 27 crystals, 4 cores, a duplicate Guard Shield, a bonus key.
- **`EVT-000152`** — solo instant dungeon (Shattered City): Keen Sense Practiced→Adept, Sprint Novice→Practiced; XP 350→610/1000; loot 22 crystals, 2 cores, a duplicate Stone Skin rune.
- **`EVT-000153`** — two long-pending payouts land (Sable & Kern $9,000, Cicero split $1,762.50; cash $10,051.00→$20,813.50); follow-up texts to Owen and Dale Pruitt.

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — level 9→10, XP 610/1000, Health 144/144, Mana 9/72, System Rank E→D, stats +6 total across allocation and level-up, gold 507, seventeen skills (eight mastery-advanced, two newly learned), full loot/inventory update
- `110_WORLD_LEDGER.md` (`REC-000075`) — opened and unchanged this checkpoint
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — cash updated, Pending Income section moved two items to Received
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — `REL-000066` texture and provenance updated (first mutual "I love you"); `REL-000070` (Denise Ferro) state updated
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 payout and dungeon-training update
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000147`–`EVT-000153` defined and linked
- `170_CHANGELOG.md` (`REC-000080`) — full session entries for all seven events plus this checkpoint line
- `180_CURRENT_STATE.md` (`REC-000081`) — full refresh, new anchor, checkpoint pointer, trigger-audit record, concurrency note

`system/ID_REGISTRY.md` carries allocation-log coverage for `EVT-000147`–`EVT-000153`; high-water marks stand at `ENT-000148` / `REC-000098` / `EVT-000153` / `REL-000070`. `REC-000098` was minted for this manifest. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0032 as the latest checkpoint.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.24 and Data Model 0.1.5. **No migration is required.**
4. Resume at 2026-08-05, 10:30, a quiet corner near Loyola Park, Rogers Park — alone, nothing owed to anyone.

State at capture: **Level 10, XP 610/1000**, Health **144/144**, Mana **9/72**, no injury, base Stats **33/32/32/38/36**, equipped-effective **43/57/36/38/36**, 5 unspent points, seventeen skills, daily streak **12** (no daily active), gold **507**, cash **$20,813.50** (≈$40,000 newly pending), twenty-two unsellable E-Rank cores, 112 unsold E-Rank crystals.

---

**Checkpoint Created:** 2026-07-27
**Status:** Restorable canonical continuation at Profile 1.24 / Data Model 0.1.5; no migration required on restore.
