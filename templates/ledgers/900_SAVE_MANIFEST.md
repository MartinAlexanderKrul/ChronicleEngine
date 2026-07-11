# Save Manifest

**Ledger Template:** `900_SAVE_MANIFEST.md`
**Instantiates:** Canonical Record (`011` Section 8) of role machine-readable save

The save manifest is metadata only. It never duplicates ledger content (`010_ENGINE_RULES.md` Section 13.3). It records what was canonical at a checkpoint, which versions applied, and how to restore. It references included ledgers by identifier.

A filled manifest must contain no placeholder tokens.

---

## Record

```yaml
id: <generated: REC-XXXXXX>
canonical_record: <generated: same as id>
schema_version: "0.1.0"
status: active
provenance:
  source: <required: EVT-XXXXXX of the checkpoint>
  event_time: <required: in-world time at checkpoint>
  record_time: <generated: time the checkpoint was written>
  uncertainty: <optional: unresolved uncertainty>
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: <required: e.g. manual | milestone | session-close>
  created: <generated: creation time>
scope:
  world: <required: world identifier>
  campaign: <required: campaign identifier>
  character: <required: ENT-XXXXXX of the player character>
versions:
  engine: <required: e.g. 0.1.3>
  world: <required: world version>
  campaign_schema: <required: Data Model version, e.g. 0.1.0>
  save_format: <required: e.g. 0.1.0>
lineage:
  parent_save: <optional: REC-XXXXXX of the checkpoint this branched from>
  canonical_continuation: <required: true | false>
  branch: <optional: branch name>
included_ledgers:
  - <required: REC-XXXXXX of each ledger captured in this checkpoint>
compatibility:
  status: <required: compatible | mismatch>
  warnings: <optional: version or state warnings>
restoration_entry_point: <required: REC-XXXXXX of the current-state ledger>
```
