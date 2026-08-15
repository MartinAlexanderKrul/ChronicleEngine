# Save Manifest — Gatefall Pendragon 001 — 900_CHECKPOINT_0098

**Campaign:** `campaigns/gatefall_pendragon_001/` · **World:** `worlds/gatefall/`
**Checkpoint:** `900_CHECKPOINT_0098` — Profile 1.80, and a call that found nothing
**Kind:** manual

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  real_date: '2026-08-15T10:07:38+02:00'
  source: EVT-000562
  game_date: '2026-08-20T10:38:00-05:00'
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: 0.3.0
  world: '0.1'
  world_rule_profile:
    world: Gatefall
    version: '1.80'
    freeze_status: frozen
  campaign_schema: 0.1.6
  save_format: 0.1.0
lineage:
  parent_save: 900_CHECKPOINT_0097
  canonical_continuation: true
  branch: canonical
included_ledgers:
- REC-000074
- REC-000075
- REC-000076
- REC-000077
- REC-000078
- REC-000079
- REC-000080
- REC-000081
compatibility:
  status: compatible
  warnings: None.
restoration_entry_point: REC-000081
```
