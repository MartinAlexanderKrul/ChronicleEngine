# Save Manifest — Fixture — Checkpoint 0002

Regression-fixture manifest. Declares `900_CHECKPOINT_0001` as its parent so
Contract 8 compares the pair by recorded lineage rather than ordinal
adjacency.

```yaml
save_identity:
  checkpoint_type: fixture
  real_date: "2026-07-27T00:00:00+00:00"
  game_date: "fixture"
scope:
  campaign: campaigns/stale_skill_counters
versions:
  world_rule_profile:
    world: Fixture
    version: "1.0"
    freeze_status: frozen
lineage:
  parent_save: 900_CHECKPOINT_0001
  canonical_continuation: true
```
