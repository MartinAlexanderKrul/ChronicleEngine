# Save Manifest — Reikon Awakening 001 — Checkpoint 0003

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0003` — pack leader defeated, Warehouse 7 E-Rift
**Kind:** Recovered canonical restore point

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000047
canonical_record: REC-000047
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000030
  event_time: "Year 31 AR, first expedition, pack-leader combat"
  record_time: "2026-07-14T18:00:00Z"
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: recovered
  created: "2026-07-14T18:00:00Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.2 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000046
  canonical_continuation: true
  branch: "session-1-main"
included_ledgers:
  - REC-000038
  - REC-000039
  - REC-000040
  - REC-000041
  - REC-000042
  - REC-000043
  - REC-000044
  - REC-000045
compatibility:
  status: compatible
  warnings: "No baseline checkpoint exists; /restart remains unavailable. Checkpoint 001 remains quarantined."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

This checkpoint re-promotes state attested by the owner-supplied raw Session 2 chat and repairs training attested by `../../exports/play_export_0001.md` but omitted from the canonical character capability field.

At capture, Daedalus (`ENT-000051`) is inside Warehouse 7 (`ENT-000064`) beside the dead pack leader. He has 60/100 Health, 5/13 Mana, 55/100 XP, a moderate left shoulder/collarbone wound, and a bloodied but serviceable sword. Surviving Broodlings are retreating and the Rift core remains ahead. His morning sword, aerobic, and bodyweight training is recorded qualitatively, with foundational Swordsmanship demonstrated during the pack-leader fight.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000038`)
- `110_WORLD_LEDGER.md` (`REC-000039`)
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000040`)
- `130_NPCS_AND_FACTIONS.md` (`REC-000041`)
- `140_OBJECTIVES.md` (`REC-000042`)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000043`)
- `170_CHANGELOG.md` (`REC-000044`)
- `180_CURRENT_STATE.md` (`REC-000045`)

`system/ID_REGISTRY.md` was updated atomically for `EVT-000029`, `EVT-000030`, and this manifest (`REC-000047`); repository-level identity state is never copied into or rolled back with a checkpoint.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

This manifest records no validation verdict of its own. The Repository Validation Barrier is the external exit status of `tools/validate_repository.ps1`. Snapshot conformance is established by byte-identical read-back against the validated live ledgers.
