# Save Manifest — Gatefall: Pendragon — Checkpoint 0016

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0016` — Session 2, automatic context-preservation checkpoint, captured walking toward a noodle restaurant near Owen Callahan's apartment, Rogers Park, Chicago, early evening on 2026-07-30
**Kind:** Automatic context-preservation checkpoint (Resident Core, Context-Preservation Watch)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: automatic-context-preservation
  created: "2026-07-30T19:30:00Z"
  source: EVT-000087
  event_time: "2026-07-30, morning through evening — Rogers Park, Chicago"
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
    note: "Captured under frozen Profile 1.8, the version already live at close of the prior checkpoint (via EVT-000085/EVT-000086). No profile migration is required on restore — the first checkpoint of this campaign for which that is true."
  campaign_schema: "0.1.3"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0015
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
  warnings: "Captured under frozen Gatefall World Rule Profile 1.8 and Data Model 0.1.3 — fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes mid-conversation, early evening, walking toward dinner near Owen's apartment with the rest of the night still open."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Everything since Checkpoint 0015 (`EVT-000084`) through `EVT-000087` — the same diner conversation continuing, then a full day off. **No combat, no injury, no XP, no gold or cash movement, no equipment change.**

**The collision, answered.** Owen restated the command-versus-relationship collision he raised over breakfast. Alexander answered it: in a Gate, they operate as crew members, not partners, and neither acts on a whim — the weekly crew training already scheduled (`OBJ-11`) doubling as rehearsal for exactly this. Owen accepted the principle but was honest he doesn't know if it survives actually watching Alexander go down again in person; Alexander admitted the same fear runs the other way. Provisional, not solved — both said so.

**A day off.** Rather than a job or more training, the two of them took the day fully off: changed at both apartments (Owen's, then Alexander's), took Owen's long-unused boat out on the lake for the afternoon — a hand-me-down from an uncle who moved to Arizona — talked, dozed, shared their first kiss, and spent hours with no agenda at all. The first stretch of time since Alexander's onset owed to neither the System nor the crew. They stayed until sundown and are now walking toward a noodle restaurant near Owen's apartment for dinner, the rest of the evening open.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — unchanged this event (no Stat, XP, Health, Mana, or equipment change)
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged this event
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — unchanged this event
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's (`ENT-000139`) location, condition, and situation updated
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-10 and OBJ-11 updated with the collision's provisional resolution
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000087` recorded, added to the record's subjects
- `170_CHANGELOG.md` (`REC-000080`) — this checkpoint and its preceding change entered
- `180_CURRENT_STATE.md` (`REC-000081`) — location, current situation, scene anchor, and promotion status updated

`100`, `110`, and `120` are unchanged by `EVT-000087` itself and are included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced in the same change for this session's one new identifier, `EVT-000087`; no entity, record, or relationship identifier was minted beyond this manifest's own `REC-000092`. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.8 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — neither profile nor schema.
4. Resume in the **early evening of 2026-07-30**, walking with Owen from the lake launch toward a noodle restaurant near his apartment in Rogers Park, Chicago. Level 7, XP 40/700, Health 80/80, Mana 40/40, 0 unspent stat points, gold 20,255, cash $34,381, no injury, no active daily quest until 06:00 on 2026-07-31, streak 6. Pending rewards: Ability Points +3 ×2, Status Recovery ×2, Daily Random Box ×4. Only the Ascendant Hunter's Band is equipped. The command-versus-relationship collision has been talked through and provisionally settled; the evening — dinner, then whichever apartment — is open.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-30T19:30:00Z
**Status:** Restore point for Session 2 — automatic context-preservation trigger, the collision provisionally answered, a full day off taken, heading to dinner.
