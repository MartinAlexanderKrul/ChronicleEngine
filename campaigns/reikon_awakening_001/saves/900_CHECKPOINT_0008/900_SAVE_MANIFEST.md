# Save Manifest — Reikon Awakening 001 — Checkpoint 0008

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0008` — complete owner-approved shared-chat continuation
**Kind:** Canonical post-combat checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000052
canonical_record: REC-000052
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000034
  event_time: "Year 31 AR, Warehouse 7 basement cleared"
  record_time: "2026-07-15T09:27:58Z"
  uncertainty: "Safe energetic severance or sealing of the suspended core, and the cause of the D-grade guardians, remain unestablished."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: post-combat
  created: "2026-07-15T09:27:58Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.5 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000051
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
  warnings: "The EVT-000034 life-burn anomaly expired with the fourth Breaker's death and cannot be offered or inferred again. No baseline checkpoint exists; /restart remains unavailable."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

The complete owner-approved shared-chat continuation. Daedalus is Level 2 at 31/130 XP, 88/105 Health, and 7/14 Mana in the cleared Warehouse 7 basement chamber. All four D-grade Breakers are dead; their D-cores (`ENT-000074`–`ENT-000077`) are harvested. Mana Affinity is 14 and Fireball Strength is 1. One full mana vial and one half-vial remain, along with one healing potion and one energy tonic.

The System's finite life-burn anomaly permitted Fireball and Flame Shield to substitute 1 Health per missing Mana only during this Breaker engagement. It expired with the core guardian's death and is neither an Ability nor precedent. The burgundy Rift core remains suspended and energetically bonded after a failed direct extraction attempt; Daedalus has documented it for specialist consultation.

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

`system/ID_REGISTRY.md` was updated atomically for `ENT-000074`–`ENT-000077`, `EVT-000034`, and this manifest (`REC-000052`). Repository-level identity state is never copied into or rolled back with a checkpoint.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.5 and resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

The Repository Validation Gate passed against live state before this immutable snapshot was created. Snapshot copies are verified externally after capture; this manifest does not self-adjudicate their result.

---

**Checkpoint Created:** 2026-07-15T09:27:58Z
**Status:** READY FOR RESTORATION
