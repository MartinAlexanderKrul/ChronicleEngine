# Save Manifest

**Ledger Template:** `900_SAVE_MANIFEST.md`
**Instantiates:** checkpoint-local metadata of role machine-readable save — not a Persistent Object in live canon (Decision 072)

The save manifest is metadata only. It never duplicates ledger content (`010_ENGINE_RULES.md` Section 13.3). It records what was canonical at a checkpoint, which versions applied, and how to restore. It references included ledgers by identifier.

**A manifest mints no registry identifier** (Rules Section 13.3; Decision 072): it carries no `id` and no `canonical_record`, and live ledgers never reference a manifest by identifier — a checkpoint is referenced by its ordinal, label, and capture time. Manifests written before Decision 072 carry their historical `REC-` identifiers immutably; this template governs new checkpoints.

A manifest records provenance but never adjudicates its own validity: the Repository Validation Barrier is external and mechanical (Decision 054), and a manifest that self-reports a validation verdict is the Checkpoint 001 failure class.

A filled manifest must contain no placeholder tokens.

---

## Manifest

```yaml
save_identity:
  checkpoint_type: <required: e.g. manual | milestone | session-close>
  created: <generated: creation time>
  source: <required: EVT-XXXXXX of the checkpoint | ruling>
  event_time: <required: in-world time at checkpoint>
scope:
  world: <required: world name or repository path, e.g. worlds/asterra>
  campaign: <required: campaign name or repository path, e.g. campaigns/<campaign>>
  character: <required: ENT-XXXXXX of the player character>
versions:
  engine: <required: e.g. 0.2.0>
  world: <required: world version>
  world_rule_profile: <optional: exact profile name and version when active>
  campaign_schema: <required: Data Model version, e.g. 0.1.2>
  save_format: <required: e.g. 0.1.0>
lineage:
  parent_save: <optional: parent checkpoint by ordinal, e.g. 900_CHECKPOINT_0004 (pre-Decision-072 manifests may reference a historical REC-XXXXXX)>
  canonical_continuation: <required: true | false>
  branch: <optional: branch name>
included_ledgers:
  - <required: REC-XXXXXX of each ledger captured in this checkpoint>
compatibility:
  status: <required: compatible | mismatch>
  warnings: <optional: version or state warnings>
restoration_entry_point: <required: REC-XXXXXX of the current-state ledger>
```
