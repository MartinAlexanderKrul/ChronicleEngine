# Save Manifest — Reikon Awakening 001 — Checkpoint 0004

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0004` — deterministic Health-recovery migration
**Kind:** Canonical migration restore point

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000048
canonical_record: REC-000048
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000030
  event_time: "Year 31 AR, first expedition, post-pack-leader state"
  record_time: "2026-07-14T20:00:00Z"
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: migration
  created: "2026-07-14T20:00:00Z"
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
  parent_save: REC-000047
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

This checkpoint migrates the live post-pack-leader state to Reikon World Rule Profile 0.3 without advancing fictional time or changing Daedalus's Health.

At capture, Daedalus (`ENT-000051`) remains inside Warehouse 7 (`ENT-000064`) beside the dead pack leader at 60/100 Health, 5/13 Mana, and 55/100 XP. His moderate left shoulder/collarbone wound is self-stabilized but untreated. Health recovery is `paused` with zero fractional recovery units while the active Rift threat continues. Surviving Broodlings are retreating and the Rift core remains ahead.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000048`); repository-level identity state is never copied into or rolled back with a checkpoint.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.3 and resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

This manifest records no validation verdict of its own. The Repository Validation Barrier is the external exit status of `tools/validate_repository.ps1`. Snapshot conformance is established by byte-identical read-back against the validated live ledgers.
