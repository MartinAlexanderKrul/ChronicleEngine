# Save Manifest — Gatefall: Pendragon — Checkpoint 0019

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0019` — Session 2, player-requested checkpoint, captured at Loyola Park on the Chicago lakefront on the morning of 2026-07-31, minutes after Checkpoint 0018
**Kind:** Player-requested checkpoint (`/save`, Save Algorithm)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  created: "2026-07-31T07:55:00Z"
  source: EVT-000091
  also_promotes: EVT-000090
  event_time: "2026-07-31, morning — Loyola Park, Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.9"
    freeze_status: frozen
    frozen_date: "2026-07-26"
    note: "First capture of this campaign under frozen Profile 1.9. The additive 1.8 -> 1.9 economy advance was adopted at this pause (EVT-000090); nothing was recomputed. No profile migration is required on restore."
  campaign_schema: "0.1.3"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0018
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
  warnings: "Captured under frozen Gatefall World Rule Profile 1.9 and Data Model 0.1.3 — fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes on the morning of 2026-07-31 at Loyola Park with the daily quest already complete and nothing scheduled until the 06:00 issue and Daily Premium rotation on 2026-08-01."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Requested by the player minutes after Checkpoint 0018, to promote **only** what had happened since it. A checkpoint is nonetheless complete restorable state, not a diff (Rules Section 13.1), so all eight ledgers are copied in full — but the canon promoted here is exactly two events, and **no fiction advanced between them**: no combat, no XP, no injury, no Stat change, no equipment change, no cash movement, no location change, no exposure event.

**`EVT-000090` — Profile 1.8 → 1.9 adopted.** Gatefall's World Rule Profile advanced to frozen **1.9** (repository date 2026-07-26) while this session was live, and the advance was surfaced and adopted at the campaign's natural pause under Rules Sections 13.5, 14.4 and 14.6. It authors **Section 12.8.1, Licensed Resale of Ranked Gear**: the licensed mundane settlement price of an ordinary ranked item is **5× the same-Rank crystal price** (E ≈$750, D ≈$3,000, C ≈$12,500, B ≈$55,000, A ≈$250,000, S auction-only; Prague at the standing 70% factor), derived from Section 12.8's existing core-plus-forging-fee anchors. Broken or Destroyed gear has no settlement price. **Equipment of System-shop origin carries no licensed provenance, has no mundane-currency price at all, and cannot take Section 12.2's black-market +40%** — buying with gold and reselling for money is explicitly not an exchange path. Named artificer work and Section 11.6 artifacts trade above the generic anchor and are authored per transaction, never rolled.

The adoption is **additive and recomputes nothing**: no stored field, threshold, magnitude, probability, timer, System-shop price, repurchase rule, or resolved outcome changed, and no earlier transaction was repriced. `system_state.profile_version` moved 1.8 → 1.9. Two things it settles in play: the crew's **Longshot [C-Rank]** now has a figure for Priya's Thursday appraisal — **≈$12,500**, splitting to ≈$3,500 for her and ≈$2,250 each for the other four — and the exclusion bites on Alexander, whose C-Rank Quickknife, both Ascendant Hunter's Bands, Adaptive Bastion Torso and Titan Boots are all shop-origin and can never become money.

**`EVT-000091` — the seventh daily's Daily Random Box opened.** On the break wall at Loyola Park with Owen beside him, Alexander claimed and opened the box the morning's quest had produced. **d100 53 → System gold**, an E-Rank purse at 500 g: **gold 16,835 → 17,335.** No box remains banked; **Ability Points +3 ×1 and Status Recovery ×3 stay pending.** The purse cuts the **Ghost Quickknife [B-Rank]** shortfall from 1,165 g to **665 g** against a tab that expires at the 06:00 rotation on 2026-08-01 — a gap the shop's own repurchase terms can now cover from any two of the C-Rank Quickknife (500 g), the Mender's Seal (300 g), the unused E-Rank key (250 g), or the never-equipped D-Rank Band (180 g). No decision was taken.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — gold, pending rewards, `profile_version` 1.9 and its adoption event, situation
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged by both events
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — gold restatement
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — unchanged by both events
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2's gold balance and the revised premium-offer gap
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000090` and `EVT-000091` recorded and added to the record's subjects
- `170_CHANGELOG.md` (`REC-000080`) — this checkpoint and its preceding change entered
- `180_CURRENT_STATE.md` (`REC-000081`) — profile binding, gold, pending rewards, latest restorable checkpoint, scene anchor, promotion status

`110` and `130` are unchanged by these events and are included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced in the same change for `EVT-000090` and `EVT-000091`; no entity, record, or relationship identifier was minted. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.9 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — neither profile nor schema.
4. Resume on the **morning of 2026-07-31**, roughly 07:55, on the break wall at Loyola Park, Owen Callahan beside him with a finished coffee, having just been told there will be no breakfast because there are errands. Level 7, XP 40/700, Health 88/88, Mana 40/40, 0 unspent stat points, base Stats 30/26/22/30/20, equipped-effective 34/26/22/30/20, **gold 17,335**, cash $34,381, no injury, daily quest complete, streak 7, next issue 06:00 on 2026-08-01. Pending rewards: Ability Points +3 ×1, Status Recovery ×3; no Daily Random Box banked. Only the E-Rank Ascendant Hunter's Band is equipped. Skills: Stone Skin [D-Rank] Novice, Rupture [E-Rank] Novice, Rank-Sight (passive), Overpower (passive). The Daily Premium tab holds six unbought offers until 06:00 on 2026-08-01, including a Ghost Quickknife [B-Rank] at 18,000 g against a balance 665 g short of it.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-31T07:55:00Z
**Status:** Restore point for Session 2 — the first at frozen Profile 1.9, with ranked gear finally priced and one more purse in the balance.
