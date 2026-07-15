# Save Manifest — Reikon Awakening 001 — Checkpoint 0007

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0007` — recovered shared-chat continuation at the last rules-valid exchange
**Kind:** Mid-scene canonical checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000051
canonical_record: REC-000051
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, Warehouse 7 basement engagement"
  record_time: "2026-07-15T09:15:00Z"
  uncertainty: "Exact remaining Health of the three active Breakers and safe core-extraction requirements are unestablished."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: mid-scene
  created: "2026-07-15T09:15:00Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.4 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000050
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
  warnings: "Resume before the next player action. Fireball costs 12 Mana and is unavailable at 1/13. The rejected Health-overcast branch must not be restored. No baseline checkpoint exists; /restart remains unavailable."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

Daedalus is on the four-metre ledge inside the Warehouse 7 basement core chamber at Health 90/100, Mana 1/13, Level 1, and XP 74/100. One D-grade Breaker is dead. Three remain active: a burned climber approaching the ledge, a critically burned flank creature, and an unharmed guardian beside the suspended, unextracted core. The sword attack that killed the sentinel resolved at raw 28 plus one modifier step, effective 48; the mandatory 19-XP award is settled. The following area Fireball rolled 32, failed, and spent 12 Mana.

The transcript's next attempted Fireball is outside this checkpoint because its cost gate was unmet. The Runtime's invented Health-powered overcasting and every dependent outcome are non-canonical. The exact audit is in `exports/session_2_promotion_audit.md`.

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

`system/ID_REGISTRY.md` was updated atomically for `REC-000051`, `EVT-000033`, `ENT-000067`–`ENT-000073`, and `REL-000045`–`REL-000047`; repository-level identity state is never copied into or rolled back with a checkpoint.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.4 and resume from `180_CURRENT_STATE.md` (`REC-000045`) before the next player action.

## Validation

The Repository Validation Gate passed against live state before this immutable snapshot was created. Snapshot copies are verified externally after capture; this manifest does not self-adjudicate their result.

---

**Checkpoint Created:** 2026-07-15T09:15:00Z
**Status:** READY FOR RESTORATION
