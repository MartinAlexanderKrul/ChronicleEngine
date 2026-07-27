# Save Manifest — Gatefall: Pendragon — Checkpoint 0031

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0031` — automatic-context-preservation checkpoint, evening of 2026-08-04, Owen Callahan's apartment
**Kind:** Automatic context-preservation checkpoint

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: automatic-context-preservation
  real_date: "2026-07-27"
  source: EVT-000146
  game_date: "2026-08-04T20:40:00-05:00; Owen Callahan's apartment, Rogers Park, over dinner"
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
  parent_save: 900_CHECKPOINT_0030
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

Roughly ten hours and twenty-five minutes, 2026-08-04 10:15 through 20:40, spanning `EVT-000140`–`EVT-000146`.

- **`EVT-000140`** — a C-Rank harvest job at a warehouse-district rail-corridor site under new Coalition-run crew lead Denise Ferro (`ENT-000148`, new): twenty crystals declared (six from a resonance-guided pocket via Resonance Extraction's first actual use, fourteen from ordinary work), standard 80/20 split, ≈$40,000 net pending. New relationship `REL-000070`.
- **`EVT-000141`** — pending rewards claimed: both Ability Points +3 awards allocated (Vitality 25→30, crossing the milestone — **Shrug Off** learned; Perception 31→32), maximum Health re-derived 116→136; both Daily Random Boxes opened (500 g gold purse; Arcanist Legs armor [E-Rank]).
- **`EVT-000142`** — a solo E-Rank instant-dungeon clear (Shattered City): Twin Fang's first-ever use, Rupture's third qualifying scene at Adept advancing it to Expert, boss killed in one strike. XP +270 crossed the Level 8→9 threshold — all Stats +1, +5 unspent points, Health/Mana re-derived and restored (140/140, 62/62), excess XP to 40/900. Loot: 27 crystals, 3 cores, a Guard Shield [E-Rank] boss drop, a guaranteed rune teaching Flash Step [D-Rank] (already known, unconsumed).
- **`EVT-000143`** — the 27 crystals sold (gold 1,532→1,802); travel to Owen's; a recap conversation surfacing real uncertainty about the pawn-shop core sale and Wade Bishop's recruitment pitch.
- **`EVT-000144`** — a second E-Rank instant-dungeon clear (Crypt), Owen present for the first time: a full-power demonstration (Rupture, Twin Fang, Stone Skin, Flash Step, Bulwark, Exploit Pattern all applied); Dagger Mastery advanced to Practiced, Flash Step to Adept; Mana spent to zero and partially restored (+16) by a potion materialized in front of Owen. XP +260 (40→300/900, no further level-up). Loot: 26 crystals, 2 cores, a rune teaching Mend [E-Rank] (unknown, unconsumed).
- **`EVT-000145`** — **the largest disclosure of the campaign**: Alexander named the System outright to Owen (*I am a Hunter who levels up*), explaining the status window, stats, kill counts, and daily quests.
- **`EVT-000146`** — Alexander: *I am never losing you*; Owen confirmed the same. Alexander proposed moving in together; both affirmed wanting it while pausing on timing. New objective `OBJ-15`, open.

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — level 8→9, XP 300/900, Health 140/140, Mana 16/62, stats +1 each plus the Vitality/Perception allocation, 5 unspent points, gold 12→1,282, skill counters (Rupture Expert, Flash Step Adept, Dagger Mastery Practiced, Twin Fang/Keen Sense/Stone Skin/Bulwark/Exploit Pattern/Resonance Extraction progress), new Shrug Off skill, new banked items (Guard Shield, Arcanist Legs, two unconsumed runes)
- `110_WORLD_LEDGER.md` (`REC-000075`) — opened and unchanged this checkpoint
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — new Pending Income entry (≈$40,000 harvest share)
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — new `ENT-000148` (Denise Ferro) block, new `REL-000070`; `REL-000066` (Owen) state and texture gain tonight's disclosure and the moving-in conversation
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 harvest/sales update, OBJ-10 status transformed (System named), OBJ-13 closed, new OBJ-15 (the moving-in question)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000140`–`EVT-000146` defined and linked, with counter_deltas and progression_audits per Data Model 0.1.5
- `170_CHANGELOG.md` (`REC-000080`) — full session entries for all seven events plus this checkpoint line
- `180_CURRENT_STATE.md` (`REC-000081`) — full refresh, new anchor, checkpoint pointer, trigger-audit record, concurrency note

`system/ID_REGISTRY.md` carries allocation-log coverage for `ENT-000148`, `EVT-000140`–`EVT-000146`, and `REL-000070`; high-water marks stand at `ENT-000148` / `REC-000097` / `EVT-000146` / `REL-000070`. `REC-000097` was minted for this manifest. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0031 as the latest checkpoint.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.24 and Data Model 0.1.5. **No migration is required.**
4. Resume at 2026-08-04, 20:40, Owen Callahan's apartment in Rogers Park, over dinner — both present, the moving-in question open and unresolved.

State at capture: **Level 9, XP 300/900**, Health **140/140**, Mana **16/62**, no injury, base Stats **32/31/31/33/31**, equipped-effective **42/56/35/33/31**, 5 unspent points, fifteen skills, daily streak **11** (no daily active), gold **1,282**, cash **$10,051** (≈$40,000 newly pending), thirteen unsellable E-Rank cores, two unconsumed runes.

---

**Checkpoint Created:** 2026-07-27
**Status:** Restorable canonical continuation at Profile 1.24 / Data Model 0.1.5; no migration required on restore.
