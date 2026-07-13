# Save Manifest - Prototype Beta - Checkpoint 0001

**Campaign:** Prototype Beta - **World:** Verra (`worlds/verra/`)
**Checkpoint:** `900_CHECKPOINT_0001` - First lower-passage watch
**Kind:** Play checkpoint
**Purpose:** Restore point after Kael's first job search, Order hiring, first watch, fever-door incident, and wrong-stair alert.

---

```yaml
checkpoint_manifest:
  checkpoint_id: "900_CHECKPOINT_0001"
  label: "first-lower-passage-watch"
  campaign: "Prototype Beta"
  world: "Verra"
  kind: play-checkpoint
  captured_from_commit: "71bf117"
  event_time: "Year 312 RR, early summer"
  provenance_events:
    - "EVT-000015"
    - "EVT-000016"
    - "EVT-000017"
  record_time: "2026-07-13T00:00:00Z"
  validation_gate: "Repository Validation Gate required after live writes/read-back and before reporting checkpoint success."
```

## What This Checkpoint Is

This checkpoint captures Prototype Beta after Kael Travis's first live-play sequence in Halden.

Kael failed to secure the merchant escort contact after alarming Tollen Var and scattering his books, then accepted day-hire lower-passage security work from the Order hospice. On first watch, he held the family line against Lysa Vale, encountered an unidentified wrong-stair man, blocked Edrin Vale's attempted exit from the marked fever room, suffered possible fever-contact exposure through sleeve contact and coughing near/against his front, washed under Sister Avel's direction, removed the contaminated shirt without additional neck/jaw exposure, and remained on post with Brant.

## Restore State

- **Protagonist:** Kael Travis (`ENT-000021`).
- **Location:** Order hospice lower passage in Halden (`ENT-000002`).
- **Immediate prompt:** Sister Avel has asked whether Kael can keep the line with Brant while she locks the stair; Kael has answered "Understood."
- **Condition:** Possible fever-contact exposure; no symptoms observed; contaminated shirt set aside; bare-chested unless/until he changes into a clean shirt.
- **Duty:** Active day-hire lower-passage watch for the Order (`REL-000024`).
- **Open pressure:** Wrong-stair man (`ENT-000028`) may still be inside the Order house.

## Contents

Full copies of the canonical campaign ledgers at checkpoint 0001:

- `100_CHARACTER_SHEET.md`
- `110_WORLD_LEDGER.md`
- `120_INVENTORY_AND_OWNERSHIP.md`
- `130_NPCS_AND_FACTIONS.md`
- `140_OBJECTIVES.md`
- `160_CAMPAIGN_CHRONICLE.md`
- `170_CHANGELOG.md`
- `180_CURRENT_STATE.md`

`system/ID_REGISTRY.md` was updated as a required checkpoint write target in the same persistence change. The registry is not copied into this checkpoint directory; it remains repository-level state and must not be rolled back during restore.

## Restore Procedure

To restore this checkpoint:

1. Copy every ledger in this directory back over its live counterpart in `campaigns/prototype_beta/`.
2. Do **not** reset `system/ID_REGISTRY.md`. Allocated identifiers remain retired/issued even if a checkpoint is restored.
3. Resume from `campaigns/prototype_beta/180_CURRENT_STATE.md`.

## Validation

Checkpoint success requires:

- Live target write/read-back for all changed canonical files, including `system/ID_REGISTRY.md`.
- Save snapshot read-back.
- Repository Validation Gate: `powershell -NoProfile -ExecutionPolicy Bypass -File tools/validate_repository.ps1`.
