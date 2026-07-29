# Save Manifest — Gatefall: Pendragon — Checkpoint 0007

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0007` — Session 2, captured at the Frozen Gallery job's close: boss dead, clear window open, Alexander mid-queue to declare
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-26T14:00:00Z"
  source: EVT-000067
  event_time: "2026-07-26 — inside the Frozen Gallery Gate, Chicago, Gate mouth"
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
  parent_save: 900_CHECKPOINT_0006
  canonical_continuation: true
  branch: "session-2-main"
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

The daily-quest grant's acceptance, the third vein worked to exhaustion, a fifth undeclared private sale, a near-miss with Dale, and the strike element's off-screen boss kill opening the clear window, since Checkpoint 0006.

**`EVT-000067` — Vein's End, the Daily Grant Accepted, a Fifth Sale, a Near-Miss, and the Boss Falls (2026-07-26).** Alexander accepted his pending daily-quest grant mid-vein (+3 unspent stat points, unallocated; Health/Mana restore cosmetic, both already full). Continued mining carried the declarable count through further batches to 124, before a fifth undeclared private sale — 50 crystals this time, a natural-3 critical fumble on the concealment roll — dropped it to 74 and produced a much more visible stillness than any prior sale. Dale crossed the chamber directly and challenged Alexander outright; Alexander's explanation (that reading a vein takes the same stillness as reading his status window) held, though Dale has been visibly more watchful since. Mining resumed and continued to 91, at which point the vein read as genuinely spent. Sale total: 50 × 170 = 8,500 gold; **gold now 16,830**. While finishing up and then helping another harvester complete their own vein, the strike element killed the Frozen Gallery's boss off-screen, opening the two-hour clear window; Dale organized a declaration queue at the Gate mouth, and Alexander positioned himself deliberately mid-line, listening to others' totals before his own turn. No combat, no XP, no Health/Mana change — Health and Mana remain full (40/40, 20/20). 3 unspent stat points await allocation.

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

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifier: event `EVT-000067`, and record `REC-000084` (this manifest's position in the record sequence; the manifest itself mints no identifier per Decision 072). `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

No new entities or relationships were minted this session — Dale (`ENT-000135`) and the harvest-hire relationship (`REL-000064`) already existed.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (heed the unfrozen / not-save-trustworthy warning above) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander standing in the declaration queue near the Frozen Gallery's Gate mouth, mid-line, 91 undeclared crystals in his pack, 16,830 private gold, 3 unspent stat points, the two-hour clear window running, no exit yet.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-26T14:00:00Z
**Status:** Restore point for Session 2 — Alexander mid-queue at the Frozen Gallery's Gate mouth, boss dead, clear window open, 91 crystals awaiting declaration.
