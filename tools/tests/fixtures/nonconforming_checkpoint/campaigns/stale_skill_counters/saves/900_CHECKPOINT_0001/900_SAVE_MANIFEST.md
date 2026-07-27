# Save Manifest — Fixture — Checkpoint 0001

Regression-fixture manifest. Exists so Contract 8 can establish lineage; the
checkpoint deliberately omits the required ledger set, which other contracts
report and this fixture does not assert on.

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
  parent_save: none
  canonical_continuation: true
```
