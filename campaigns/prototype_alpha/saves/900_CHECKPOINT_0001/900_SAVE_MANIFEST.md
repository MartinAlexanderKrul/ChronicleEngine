# Save Manifest — Prototype Alpha, Checkpoint 0001 (Terminal Re-issue)

Checkpoint-local metadata (`010_ENGINE_RULES.md` Section 13.3; Decision 072). This manifest mints no registry identifier and is referenced by ordinal, label, and capture time only.

```yaml
save_identity:
  checkpoint_type: terminal-reissue
  label: "terminal state — campaign closed on protagonist execution"
  created: "2026-07-23T12:00:00Z"
  source: ruling
  event_time: "Year 312 RR, late spring, Day 17 — execution; campaign closed"
scope:
  world: worlds/verra
  campaign: campaigns/prototype_alpha
  character: ENT-000018
versions:
  engine: "0.1.5 (Foundation Release — the campaign's binding at close)"
  world: "0.1 (Prototype)"
  world_rule_profile: "none — Verra declares no profile"
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: "900_CHECKPOINT_0000 (baseline)"
  canonical_continuation: true
  branch: main
included_ledgers:
  - REC-000009
  - REC-000010
  - REC-000011
  - REC-000012
  - REC-000013
  - REC-000014
  - REC-000015
  - REC-000016
compatibility:
  status: compatible
  warnings: "Terminal campaign: the protagonist is deceased and the campaign is closed. Restoring this checkpoint restores the terminal record for reading or world-line forking, not for continuation. Re-issued 2026-07-23 from live terminal canon under Decision 072; the four .saves/*.yaml manifest-only records remain evidence, not checkpoints."
restoration_entry_point: REC-000016
```

This checkpoint was produced by re-promotion under Decision 072 (Save Layer Unification): the campaign closed on 2026-07-13 with its terminal state fully promoted into the live ledgers, and those ledgers — unchanged since except for the Decision 073 schema migration — are copied here byte-identically so the terminal save-point is restorable in the one canonical checkpoint form. No validation verdict is recorded here: the Repository Validation Barrier is external and mechanical (Decision 054).
