# Save Manifest — Gatefall: Pendragon — Checkpoint 0042

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0042` — player-requested checkpoint, 15:15 of 2026-08-08, warehouse district
**Kind:** Player-requested checkpoint (`/save`), reconstructed from the supplied gameplay export with the normal save algorithm

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-29"
  source: EVT-000214
  game_date: "2026-08-08T15:15:00-05:00; warehouse district, walking toward home"
  label: "recovered gameplay export"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.36"
    freeze_status: frozen
  campaign_schema: "0.1.5"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0041
  canonical_continuation: true
  branch: main
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
  warnings: "The recovered transcript overstated D-Rank Keen Sense as a full item appraisal. EVT-000214 preserves the trade and observed operating methods while recording both item Ranks and hidden origins as unconfirmed; reliable item Rank/full appraisal requires Flux Sight at B-Rank. EVT-000210's fictional timestamp is also corrected to the 13:15 prior anchor. No resolved action, roll, counter, item transfer, or resource balance is reopened."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From Checkpoint 0041's 13:15 anchor through 15:15 the same day, spanning `EVT-000210`-`EVT-000214`.

- **`EVT-000210`** — adoption of the Gatefall World Rule Profile 1.30→1.36 chain, consuming no fictional time.
- **`EVT-000211`** — Alexander accepted Keen Sense's standing breakthrough offer: E-Rank Master → D-Rank Adept, scope held at five subjects, Mana cost 1→2, gaining the intent-and-method category.
- **`EVT-000212`** — at Walt Adamik's, a real d100 roll of 91 produced a legendary Keen Sense operating-method read; Alexander traded all fifteen private E-Rank cores for the suppression emitter and awakened lockpick set.
- **`EVT-000213`** — Ada Reyes confirmed the C-Rank harvest job staging 2026-08-09 at 09:00 by the old freight yards; `OBJ-24` opened.
- **`EVT-000214`** — promotion barrier: explicit no skill-formation result, item-appraisal boundary reconciled, and `EVT-000210`'s fictional timestamp corrected.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — Level 11, System Rank D-Rank, XP **1095/1100**, Health **132/148**, Mana **36/74**, 10 unspent stat points; Stats unchanged at 34/33/33/39/37, equipped-effective 44/58/37/39/37.
- **Temporal anchor** — `2026-08-08T15:15:00-05:00`.
- **Location** — warehouse district, walking toward home, alone and safe; field kit stowed at his apartment.
- **Holdings** — gold **1,532**, cash **$60,806.50**, 14 E-Rank crystals, **0 E-Rank cores**, 4 private D-Rank crystals, 8 lesser healing potions, 2 lesser mana potions.
- **New items** — Suppression Emitter [Rank unconfirmed] and Unlicensed Lockpick Set [Rank unconfirmed], both unused. Their operating methods are known; their Ranks and hidden origins are not.
- **Keen Sense** — D-Rank Adept, Mana 2, scope floor 5, successful uses 17, qualifying scenes 13, mastery progress 1/3 toward Expert, rank ascensions 1.
- **Dagger Mastery** — E-Rank Expert, +0.25 passive multiplier under Profile 1.31 as adopted in the 1.36 chain; each Quickknife chassis resolves at ×1.00.
- **Objective** — `OBJ-24` confirmed and unstarted: C-Rank harvest job, 2026-08-09 09:00, estimated $4,000–9,000 and ending approximately 13:00–15:00, clear of the 18:00 crew training.
- **No immediate danger** — no roll, exchange, or ratification is pending.

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — current condition, Health/Mana recovery, Keen Sense breakthrough and counters, Profile 1.36 Dagger Mastery ruling, core disposition, and the two new items.
- `110_WORLD_LEDGER.md` (`REC-000075`) — no semantic change this span; copied unchanged for checkpoint completeness.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — fifteen-core trade and ownership/appraisal status of both new items.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Ada Reyes's confirmed posting and Walt Adamik's third visit.
- `140_OBJECTIVES.md` (`REC-000078`) — new `OBJ-24`.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000210`-`EVT-000214`, including counter deltas and the explicit progression audit.
- `170_CHANGELOG.md` (`REC-000080`) — recovered session change entry and promotion reconciliation.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, state, holdings, open threads, promotion status, and trigger telemetry.
- `system/ID_REGISTRY.md` — Event high-water mark advanced through `EVT-000214`.
- `system/WORLDS_AND_CAMPAIGNS.md` and `090_CAMPAIGN_STARTUP.md` — restore target advanced to Checkpoint 0042.

---

## External Validation Commands

The save algorithm verifies this checkpoint outside its manifest with:

```powershell
powershell -ExecutionPolicy Bypass -File tools\validate_repository.ps1
powershell -ExecutionPolicy Bypass -File tools\test_checkpoint_contract.ps1
```
