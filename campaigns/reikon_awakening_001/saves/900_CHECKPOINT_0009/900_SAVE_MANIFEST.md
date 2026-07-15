# Save Manifest — Reikon Awakening 001 — Checkpoint 0009

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0009` — Profile 0.6 recurrent-intervention and succession migration
**Kind:** Canonical profile-migration checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000053
canonical_record: REC-000053
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Profile 0.6 migration; no fictional time elapsed"
  record_time: "2026-07-15T10:20:48Z"
  uncertainty: "The timing and form of the next System intervention are unresolved until an eligible trigger is checked."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: profile-migration
  created: "2026-07-15T10:20:48Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.6 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000052
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
  warnings: "No active System intervention exists at capture. The Warehouse 7 life-burn anomaly is expired. No baseline checkpoint exists; /restart remains unavailable."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

The complete post-combat state of Checkpoint 0008 with Reikon Profile 0.6 declared and no fictional time elapsed. Daedalus remains Level 2 at 31/130 XP, 88/105 Health, and 7/14 Mana in the cleared Warehouse 7 basement chamber. All four D-cores are harvested and the suspended Rift core remains energetically bonded and unextracted.

The System intervention counter begins at zero and no finite intervention is active. Profile 0.6 may later produce directives, one-use techniques, trial-Rift offers, or rare compulsory displacement at declared triggers. It grants no free XP or assured survival. If Daedalus dies, his campaign is terminal and a later System Bearer begins as a new character.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000053`). Repository-level identity state is never copied into or rolled back with a checkpoint.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.6 and resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

The Repository Validation Gate passed against live state before this immutable snapshot was created. Snapshot copies are verified externally after capture; this manifest does not self-adjudicate their result.

---

**Checkpoint Created:** 2026-07-15T10:20:48Z
**Status:** READY FOR RESTORATION
