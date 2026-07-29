# Save Manifest — Gatefall: Pendragon — Checkpoint 0025

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0025` — player-requested checkpoint at Alexander's own apartment, ninety minutes before the crew's first training session
**Kind:** Player-requested session checkpoint

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-26T16:11:36+02:00"
  source: EVT-000114
  game_date: "2026-08-02T16:20:00-05:00; mid-afternoon at Alexander Pendragon's studio apartment in Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.14"
    freeze_status: frozen
  campaign_schema: "0.1.4"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0024
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
  warnings: "None. This checkpoint is captured under frozen Profile 1.14 and Data Model 0.1.4 and requires no migration on restore — the first such checkpoint since 0016. Checkpoint 0024 and all earlier captures remain immutable and run their own recorded readiness chains; 0024 requires the Profile 1.12 to 1.13 to 1.14 chain."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Two in-fiction days, 2026-08-01 morning through 2026-08-02 mid-afternoon, spanning events `EVT-000108` through `EVT-000114`, plus the concurrent Architect-mode Profile 1.14 adoption `EVT-000115` recorded at the same anchor.

- **`EVT-000108`** — the eighth daily quest completed with Owen Callahan (streak 7→8); **Owen gave Alexander a key to his apartment**; **Owen's birthday established as 14 September**; Renata's sensor rig diagnosed as a fractured resonance crystal, and Alexander committed to buying Owen a full licensed rig as a birthday present.
- **`EVT-000109`** — fourth solo instant dungeon, archetype **Crypt**. All 12 commons, the elite, and the boss killed without taking a single hit. **Level 7 → 8**; **Rupture advanced Practiced → Adept** (×2.15 → ×2.30, Mana 11 → 10). Loot 14 crystals, 2 cores, boss drop a fresh Instant-Dungeon Key.
- **`EVT-000110`** — the lake. Three jet-ski heats on Owen's boat, and the first time the two of them slept together there. No mechanical change.
- **`EVT-000111`** — the ninth daily completed (streak 8→9) after Alexander granted Owen an exemption from the run and then quietly walked him past it into the longest run of his life; a standing breakfast arrangement struck; **the crew's first training session fixed for 18:00 that evening**, closing OBJ-11's four-day drift; the Umbral Premium cycle rotated in as the 2026-08-01 cycle expired 0/6, taking a 50,000 g C-Rank Rupture rune with it.
- **`EVT-000112`** — an afternoon writing per-member tactical dossiers on Priya, Julian, and Renata, each carrying a private *worth building around* evaluation box with only Owen's already ticked.
- **`EVT-000113`** — fifth solo instant dungeon, archetype **Flooded Mine**. All 15 killed without taking a hit. **Flash Step advanced Novice → Practiced** (Mana 8 → 7), an advance earned in play and settled at this promotion barrier rather than in the moment it fired.
- **`EVT-000114`** — the settlement sitting: sales, both banked Daily Random Boxes opened, all three banked Ability Points awards claimed and all 14 points allocated, granting the stat-milestone skills **Pre-empt** (Agility 30) and **Multitask** (Intelligence 30); two standard-catalogue runes bought teaching **Keen Sense** and **Dagger Mastery**.
- **`EVT-000115`** — the Profile 1.13 → 1.14 Urgent/Hidden quest repair, adopted at the same anchor by a separate Architect-mode writer. See the concurrency note below.

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — level, XP, stats, pools, nine skills, gold, premium cycle, daily quest, session narrative
- `110_WORLD_LEDGER.md` (`REC-000075`) — Coalition trading field and sensor-rig knowledge rows added
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — both clears, all sales, the Quickstep Charm, both runes, banked totals
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's state and training trend, `REL-000065` training session, `REL-000066` texture
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 gold and the gift commitment, OBJ-10 fifth filed impossibility, OBJ-11 scheduled and prepared
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000108`–`EVT-000114` defined and linked; `EVT-000107`'s contradictory `game_date` repaired
- `170_CHANGELOG.md` (`REC-000080`) — seven session entries plus the concurrency note
- `180_CURRENT_STATE.md` (`REC-000081`) — full state refresh, new anchor, latest checkpoint pointer

`system/ID_REGISTRY.md` carries allocation-log coverage for `EVT-000108`–`EVT-000114`; the Event high-water mark stands at `EVT-000115`. No Entity, Record, or Relationship identifier was minted this session. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0025 as the latest checkpoint.

## Concurrency Note

This checkpoint was interrupted mid-algorithm by a second, unrelated Architect-mode writer performing the Profile 1.13 → 1.14 quest repair. The gameplay session halted before writing the chronicle, changelog, current state, registry, or checkpoint, reported a partial checkpoint to the player, and resumed only after that writer had finished — so the two write sets are **sequential, not interleaved**. The Architect writer deliberately allocated `EVT-000115`, leaving `EVT-000108`–`EVT-000114` free for this session, and amended rather than overwrote the gameplay session's live-ledger edits; no gameplay write was lost. One incidental defect introduced during the overlap was corrected during reconciliation: `EVT-000107`'s top-level `game_date` had been changed to 2026-08-02 16:20, contradicting both its own `provenance.game_date` and its description, and was restored to 2026-07-31 23:00 -05:00.

The one-exclusive-writer-during-play requirement (Runtime Profile, Persistence Preflight) has now been breached twice in this campaign.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.14 and Data Model 0.1.4. **No migration is required.**
4. Resume at 2026-08-02, roughly 16:20, at Alexander's studio apartment — dossiers finished, ninety minutes before the crew's first training session at 18:00 at the Coalition trading field.

State at capture: **Level 8, XP 400/800**, Health **116/116**, Mana **43/60**, no injury, base Stats **31/30/25/31/30**, equipped-effective **41/55/29/31/30**, **0 unspent points**, nine skills, daily streak **9**, gold **920**, cash **$18,881**, pending rewards **Status Recovery ×4** only, eleven unsellable E-Rank cores, no instant-dungeon key, and the full nine-slot loadout equipped.

---

**Checkpoint Created:** 2026-07-26T16:11:36+02:00
**Status:** Restorable canonical continuation at Profile 1.14 / Data Model 0.1.4; no migration required on restore.
