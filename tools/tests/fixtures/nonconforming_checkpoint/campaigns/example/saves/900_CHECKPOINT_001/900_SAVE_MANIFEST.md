# Save Manifest — Fixture: the 900_CHECKPOINT_001 failure class

This fixture reproduces the narrated-gate original (Decisions 054, 072): a
three-digit ordinal, required ledgers silently omitted, and a manifest that
adjudicates its own validation result. The checkpoint contract test must fail
all three.

```yaml
save_identity:
  checkpoint_type: session-close
  created: "2026-07-13T00:00:00Z"
scope:
  world: worlds/example_world
  campaign: campaigns/example
  character: ENT-000001
versions:
  engine: "0.1.5"
  campaign_schema: "0.1.0"
  save_format: "0.1.0"
included_ledgers:
  - "180_CURRENT_STATE.md (partial capture)"
compatibility:
  status: compatible
restoration_entry_point: "180_CURRENT_STATE.md"
validation:
  repository_deterministic_validator: "PASS — all eleven checks confirmed"
```
