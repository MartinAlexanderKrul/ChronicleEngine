# Save Manifest — Reikon Awakening 001 — Checkpoint 0005

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0005` — Session 2 exploration and medical treatment
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000049
canonical_record: REC-000049
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000031
  event_time: "Year 31 AR, first expedition, post-combat exploration and medical treatment"
  record_time: "2026-07-14T20:30:00Z"
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: session
  created: "2026-07-14T20:30:00Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.3 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000048
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
  warnings: "No baseline checkpoint exists; /restart remains unavailable."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

Session 2 complete: warehouse exploration, loot phase, basement core-chamber discovery, and medical treatment.

At capture, Daedalus (`ENT-000051`) is at Hunters' Association headquarters resting. Health is 60/100 (treated, active recovery from moderate left shoulder/collarbone wound). Mana is 7/13 (active recovery). XP is 55/100 (unchanged). He carries 61 cores (11 harvested from Warehouse 7 creatures), a natural scale plate (ENT-000065) harvested from the pack leader, and his original expedition gear. The basement core chamber has been located but not yet entered for the final clear.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000049`) and the new entities (ENT-000065) and event (EVT-000031) allocated during this session; repository-level identity state is never copied into or rolled back with a checkpoint.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.3 and resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

Checkpoint success requires:

- Live target write/read-back for all changed canonical files, including `system/ID_REGISTRY.md`.
- Save snapshot read-back.
- Repository Validation Gate (external tool): `powershell -NoProfile -ExecutionPolicy Bypass -File tools/validate_repository.ps1`.

All live targets were read back and verified. YAML validation passed on all modified files. Checkpoint snapshot files copied and verified.

---

**Checkpoint Created:** 2026-07-14T20:30:00Z  
**Status:** READY FOR RESTORATION
