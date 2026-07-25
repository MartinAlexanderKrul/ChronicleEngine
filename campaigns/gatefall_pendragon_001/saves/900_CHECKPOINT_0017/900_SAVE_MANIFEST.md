# Save Manifest — Gatefall: Pendragon — Checkpoint 0017

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0017` — Session 2, automatic context-preservation checkpoint, captured at Owen Callahan's apartment, Rogers Park, Chicago, on the night of 2026-07-30
**Kind:** Automatic context-preservation checkpoint (Resident Core, Context-Preservation Watch — scene boundary reached after roughly fifteen resolved exchanges since Checkpoint 0016)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: automatic-context-preservation
  created: "2026-07-30T22:30:00Z"
  source: EVT-000088
  event_time: "2026-07-30, evening to night — Rogers Park, Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.8"
    freeze_status: frozen
    frozen_date: "2026-07-25"
    note: "Captured under frozen Profile 1.8, unchanged since the prior checkpoint. No profile migration is required on restore."
  campaign_schema: "0.1.3"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0016
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
  warnings: "Captured under frozen Gatefall World Rule Profile 1.8 and Data Model 0.1.3 — fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes at night on 2026-07-30 at Owen Callahan's apartment, nothing scheduled until the 06:00 daily-quest issue and Daily Premium rotation on 2026-07-31."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Everything since Checkpoint 0016 — the single event `EVT-000088`, covering the walk in from the lake through dinner, Alexander's own apartment, and the night at Owen's. **No combat, no injury, no XP, no Health or Mana change, no cash movement, no equipment change, no exposure change.**

**The crew question (new `OBJ-12`).** Alexander established that Priya pays Owen no premium — standard party terms, an even fifth (Profile Section 13.2) — and that Owen's actual income is two to three clears a month with other crews, C-Rank included, a Bridgeport crew as his regular. He then proposed that **Owen build and lead a new crew with Alexander as its top hunter**, and when Owen asked directly whether the point was Owen's C-Rank card covering the strike contracts an E-Rank card bars (Section 19.4), answered *kinda both*. He deferred the whole question as an open window and said he wants the relationship to work out more than a crew or the money. Owen agreed to think about it properly; nothing has been said to Priya, Julian, or Renata.

**Gold and a third skill.** The 2026-07-30 Daily Premium cycle was opened for the first time and three of six offers bought for 4,420 g — **gold 20,255 → 15,835**: the Ascendant Hunter's Band [D-Rank] (banked **unequipped**, so effective Stats are unchanged), the Mender's Seal (banked, unused), and the Premium Rune, consumed the same evening to learn **Rupture [E-Rank]** — Mana 12, ×2.0 of the E-Rank skill-rank baseline 10, Novice mastery — privately and unwitnessed. Rupture has never been cast. Three offers (Aegis Guard Shield [E-Rank], Adaptive Watcher Head [E-Rank], Premium Crystal Key [D-Rank]) remain unbought and expire at the 2026-07-31 06:00 rotation.

**The drawer.** Priya confirmed by text that the Ashfield report was filed true and logged, payouts are processing, and the Longshot goes to an appraiser Thursday; Dale reported no board work before midweek with something larger being discussed and Alexander's name already on it. Alexander packed effectively his entire wardrobe, left his toothbrush at Owen's, and walked back through heavy rain. Owen emptied a drawer and cleared a bathroom shelf — the first he has ever given anyone — and named what he had noticed at Alexander's flat: bare walls, everything in a bag, *you live like you're about to be told to leave.*

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — gold, `skills_known` (Rupture), Daily Premium purchase flags, shop holdings, condition, situation
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged this event
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — the 2026-07-30 Daily Premium purchases and the gold restatement
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's (`ENT-000139`) location, condition and situation; `REL-000066` state and texture
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 and OBJ-11 updated, **OBJ-12 opened**
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000088` recorded and added to the record's subjects
- `170_CHANGELOG.md` (`REC-000080`) — this checkpoint and its preceding change entered
- `180_CURRENT_STATE.md` (`REC-000081`) — date, location, condition, gold, skills, Daily Premium, current situation, scene anchor, promotion status

`110` is unchanged by `EVT-000088` and is included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced in the same change for this session's one new identifier, `EVT-000088`; no entity, record, or relationship identifier was minted. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.8 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — neither profile nor schema.
4. Resume on the **night of 2026-07-30** at Owen Callahan's apartment in Rogers Park, Chicago. Level 7, XP 40/700, Health 80/80, Mana 40/40, 0 unspent stat points, gold 15,835, cash $34,381, no injury, no active daily quest until 06:00 on 2026-07-31, streak 6. Pending rewards: Ability Points +3 ×2, Status Recovery ×2, Daily Random Box ×4. Only the E-Rank Ascendant Hunter's Band is equipped; the D-Rank Band is banked unequipped. Skills: Stone Skin [D-Rank] Novice, Rupture [E-Rank] Novice, Rank-Sight (passive). Nothing is scheduled or owed; OBJ-12 is open and undecided.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-30T22:30:00Z
**Status:** Restore point for Session 2 — the crew question opened and deferred, three Daily Premium purchases, Rupture learned, and a drawer given.
