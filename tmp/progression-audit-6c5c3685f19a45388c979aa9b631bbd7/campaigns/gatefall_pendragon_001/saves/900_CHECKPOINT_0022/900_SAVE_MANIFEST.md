# Save Manifest — Gatefall: Pendragon — Checkpoint 0022

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0022` — Session 2, player-requested checkpoint, captured at Owen Callahan's apartment in Rogers Park, Chicago, on the evening of 2026-07-31, roughly 5:45 PM
**Kind:** Player-requested checkpoint (`/save`, Save Algorithm)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  created: "2026-07-31T22:45:00Z"
  source: EVT-000103
  also_promotes: [EVT-000100, EVT-000101, EVT-000102]
  event_time: "2026-07-31, evening, roughly 5:45 PM — Owen Callahan's apartment, Rogers Park, Chicago"
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
    note: "Adopted this checkpoint (EVT-000100), additive over frozen 1.10. No migration required on restore."
  campaign_schema: "0.1.3"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0021
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
  warnings: "Captured under frozen Gatefall World Rule Profile 1.11 and Data Model 0.1.3 -- fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes at Owen's apartment, dinner cooking, nothing scheduled or owed beyond payouts already processing."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Requested by the player at Owen's apartment while dinner cooked, after a self-contained stretch of solo play (a Profile adoption and a third instant-dungeon clear) followed by the evening's reunion with Owen. Four events since Checkpoint 0021. A checkpoint is complete restorable state, not a diff (Rules Section 13.1), so all eight ledgers are copied in full.

**`EVT-000100` — Profile 1.10→1.11 adoption.** Additive item-diversity advance: future boss equipment carries a Boss Imprint, future Daily Premium categories draw from a bag without replacement from the next rotation, future dropped runes/books settle duplicates by a closed rule, and a fabrication series distinguishes later Premium rotations. Nothing recomputed, no fictional time consumed.

**`EVT-000101` — The third instant dungeon: Frozen Gallery.** E-Rank instance (population 7 common/2 elite/1 boss), Mana recovery halved. Killed 5 commons, both elites, and the boss (a Carapaced, Impact-signature ice brute). The opening unseen strike on the boss fumbled naturally; its reflexive counter and a mid-combo counter both landed (Health 88→62, then 88→68 after a claimed Status Recovery), no injury tier. A calculated finishing strike ended it legendarily. Boss drop a fresh Instant-Dungeon Key [E-Rank]. +200 XP (380→580/700). Loot: 8 E-Rank crystals, 3 E-Rank cores.

**`EVT-000102` — Back on the bench.** Texted Owen and sold all 15 banked E-Rank crystals to the System shop (150 g; gold 1,965→2,115). Picked up by car — Owen's, previously unmentioned — after a grocery stop.

**`EVT-000103` — The apartment.** Two relationship-history facts settled: the boat scene (`EVT-000087`) confirmed as the first *real* kiss, distinct from the physical intimacy the night before it; and a previously blank night filled in (non-contradictory addition) — Owen stayed at Alexander's own apartment on 2026-07-28. An unplanned kiss in the kitchen answered the day's unweighed "I already miss you" text. No Stat, XP, or item change.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — profile_version, XP, Health, Mana, pending rewards, gold, shop_holdings, Rupture mastery-progress note, condition, extensive session narrative
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged by this session's events
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — third instant-dungeon section, crystal sale, gold restatement
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's location and car fact, `REL-000066` texture (first-kiss clarification, 2026-07-28 gap fill, tonight's kiss)
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 gold-cycle note
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000100` through `EVT-000103` recorded and added to the record's subjects
- `170_CHANGELOG.md` (`REC-000080`) — this checkpoint and its preceding changes entered
- `180_CURRENT_STATE.md` (`REC-000081`) — profile version, gold, Mana, effective Stats, equipment, scene anchor, promotion status

`110` is unchanged by these events and is included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced in the same change for `EVT-000100`–`EVT-000103` and `REC-000093` (this manifest's own record slot in the high-water mark). No entity or relationship identifier was minted — the car and the 2026-07-28 stay are fields/texture on existing `ENT-000139`/`REL-000066`. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.11 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — neither profile nor schema.
4. Resume on the **evening of 2026-07-31, roughly 5:45 PM**, at Owen Callahan's apartment in Rogers Park. Level 7, XP 580/700, Health 68/88, Mana 10/40, 0 unspent stat points, base Stats 30/26/22/30/20, equipped-effective 40/51/26/30/20, **gold 2,115**, cash $18,881, no injury, daily quest streak 7, next issue 06:00 on 2026-08-01. Pending rewards: Ability Points +3 ×1, Status Recovery ×2; no Daily Random Box banked. Full nine-slot loadout equipped, Ghost Quickknife [B-Rank] in the main hand. Skills: Stone Skin [D-Rank] Novice, Rupture [E-Rank] Practiced (2/3 toward Adept), Flash Step [D-Rank] Novice, Rank-Sight (passive), Overpower (passive). Inventory includes 0 E-Rank crystals (all sold), 6 E-Rank cores (unsellable to the System shop), 1 fresh Instant-Dungeon Key [E-Rank], a Stabilization Seal, a Mender's Seal. Dinner cooking; the day's story owed and not yet told.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-31T22:45:00Z
**Status:** Restore point for Session 2 — Profile 1.11 adopted, a third instant dungeon cleared solo, the day's gold cycle closed out, and the relationship's timeline both clarified and quietly deepened.
