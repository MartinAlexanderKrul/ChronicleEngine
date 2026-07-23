# Save Manifest — Gatefall: Pendragon — Checkpoint 0001

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0001` — Session 1, captured at the Red Line Corridor Gate entrance before entry
**Kind:** Canonical session checkpoint (first checkpoint for this campaign)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-24T09:00:00Z"
  source: EVT-000058
  event_time: "2026-07-24, 08:00 — Red Line Corridor Gate entrance, before entry"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.0"
    freeze_status: workshop-draft
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: none
  canonical_continuation: true
  branch: "session-1-main"
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
  warnings: "Captured under Gatefall World Rule Profile 1.0, a workshop draft (unfrozen). Under Rules Section 14.6 (Decision 074) an unfrozen profile is NOT save-trustworthy: restoring this checkpoint surfaces the 'unfrozen — not save-trustworthy' warning, because the profile may be revised beneath it before it is frozen. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

The first playable state of Session 1, at the threshold of Alexander's first Gate. One story event was promoted since campaign initialization.

**`EVT-000058` — Crew assembly and Gate approach (2026-07-23 → 2026-07-24).** Alexander, directed by Coalition coordinator Kesha Morrison (`ENT-000130`), committed to Tanya Voss's undersubscribed Red Line Corridor crew at the Coalition case table, signed the standard five-hunter contract, and had it witnessed and filed with BGM Region V. He bought his first hunter-grade kit at Ironbound from Diane (`ENT-000131`) — a reinforced leather jacket, an E-grade dagger, reinforced gauntlets, and shin guards, $2,000 of $4,000 spent — and trained with it. Tanya Voss (`ENT-000126`) and the sensor Marcus (`ENT-000127`) briefed him; he met Elias Voss (`ENT-000128`) and the mender Dr. Sarah Chen (`ENT-000129`) at the Gate. As of 08:00 on 2026-07-24 the five-hunter crew is assembled at the Red Line Corridor Gate entrance (unconfirmed D, timer breaking midnight 2026-07-24), about to enter. No uncertain action has been resolved and no combat has occurred; the System has not attached.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`)
- `110_WORLD_LEDGER.md` (`REC-000075`)
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`)
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`)
- `140_OBJECTIVES.md` (`REC-000078`)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`)
- `170_CHANGELOG.md` (`REC-000080`)
- `180_CURRENT_STATE.md` (`REC-000081`)

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers — entities `ENT-000126`–`ENT-000133`, event `EVT-000058`, and relationship `REL-000063`. Repository-level identity state is never copied into, or rolled back with, a checkpoint. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

**Expected divergence in `170_CHANGELOG.md`.** Live canon may carry one entry this snapshot does not: the entry recording this checkpoint's own creation, which cannot exist at capture time. A diff against live is expected to show at most that entry.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (heed the unfrozen / not-save-trustworthy warning above) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander and Voss's crew assembled at the Red Line Corridor Gate entrance, 08:00 2026-07-24, about to enter his first Gate.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-24T09:00:00Z
**Status:** Restore point for Session 1 — Alexander at the Red Line Corridor Gate entrance, about to enter his first Gate.
