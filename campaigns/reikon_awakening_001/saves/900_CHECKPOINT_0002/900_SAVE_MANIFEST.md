# Save Manifest — Reikon Awakening 001 — Checkpoint 0002

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0002` — pack-leader standoff, Warehouse 7 E-Rift
**Kind:** Manual restore point

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000046
canonical_record: REC-000046
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000028
  event_time: "Year 31 AR, first expedition, mid-clear"
  record_time: "2026-07-14T00:00:00Z"
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-14T00:00:00Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.1 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: none
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
  warnings: "No baseline checkpoint exists for this campaign; /restart (Redo, Decision 053) is unavailable. The earlier Checkpoint 001 is quarantined and non-restorable; see ../README.md."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Is

The first conforming checkpoint for this campaign, and its current restore point.

It captures live canon at the pack-leader standoff: Daedalus (`ENT-000051`) solo inside Warehouse 7 (`ENT-000064`), roughly 40–50 metres from a waiting pack leader, at full health and mana with 36/100 XP and the clear in progress. Authoritative values live in the ledgers listed above; this manifest deliberately restates none of them.

The captured state was reconstructed on 2026-07-14 from a malformed earlier snapshot and has since been **verified against the Session 1 gameplay transcript** (`../../exports/play_export_0001.md`; audit in `../../exports/README.md`). This is the first Reikon checkpoint whose contents are corroborated by tier-2 evidence rather than asserted.

## Lineage

`parent_save` is `none` because no representable parent exists:

- This campaign has **no baseline checkpoint** (`900_CHECKPOINT_0000/`), contrary to Decision 053. It was never captured, and Session 1 is already played, so it cannot now be captured honestly.
- The earlier `900_CHECKPOINT_001/` is quarantined as non-restorable and carries no `REC-` identifier, so it cannot be referenced as a parent by identifier as Rules Section 13.3 and the Data Model require.

This checkpoint therefore opens the campaign's conforming lineage rather than continuing one. It is a canonical continuation of play (`canonical_continuation: true`) — the state is unbroken — but not of any prior conforming checkpoint.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture (Rules Section 13.1):

- `100_CHARACTER_SHEET.md` (`REC-000038`)
- `110_WORLD_LEDGER.md` (`REC-000039`)
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000040`)
- `130_NPCS_AND_FACTIONS.md` (`REC-000041`)
- `140_OBJECTIVES.md` (`REC-000042`)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000043`)
- `170_CHANGELOG.md` (`REC-000044`)
- `180_CURRENT_STATE.md` (`REC-000045`)

Non-canonical artifacts are not snapshotted: `090_CAMPAIGN_STARTUP.md` (operational configuration), `exports/` (derived session records), and the legacy presentation files `050_CAMPAIGN_LOG.md`, `100_CHARACTER_DAEDALUS.md`, and `CHECKPOINT_000.md`.

`system/ID_REGISTRY.md` was a required write target in the same persistence change (allocating `REC-000046` for this manifest). It is repository-level state, is not copied here, and must not be rolled back on restore.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do **not** reset `system/ID_REGISTRY.md`. Allocated identifiers remain issued or retired regardless of restore (Data Model Invariant 3).
3. Resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

This manifest records **no** validation verdict of its own. A manifest may record that the gate ran; it may not adjudicate its own result. The Repository Validation Barrier is external and mechanical (Decision 054), and its authority is the exit status of `tools/validate_repository.ps1` run against live state — not any claim written here.

The outcome of the run associated with this checkpoint is recorded in `engine/030_ENGINE_CHANGELOG.md` and `170_CHANGELOG.md`.

Note the standing limitation: the validator currently excludes `saves/` from its scan, so **this checkpoint's own contents are not mechanically checked**. Its conformance was established by construction — byte-identical copies of ledgers that pass validation live, plus hash-verified read-back — not by the gate. Closing that gap is proposed engine work.
