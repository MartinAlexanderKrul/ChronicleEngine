# Save Manifest — Gatefall: Pendragon — Checkpoint 0008

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0008` — Session 2, captured at home in the evening after both harvest jobs closed
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-26T20:00:00Z"
  source: EVT-000068
  event_time: "2026-07-26 — Alexander's apartment, Chicago, evening"
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
  parent_save: 900_CHECKPOINT_0007
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

Formal declaration, exit, and the Frozen Gallery harvest-share ruling, since Checkpoint 0007.

**`EVT-000068` — Formal Declaration, Exit, and the Frozen Gallery Harvest-Share Ruling (2026-07-26).** A sixth undeclared private sale (50 crystals, 8,500 gold) drew a second, milder flash of Dale's suspicion, again deflected — **gold now 25,330**. Alexander declared 41 C-crystals at his turn, the harvest crew's highest total by a wide margin; Dale logged it without scrutiny, praised his work across both jobs, and confirmed the contractor occasionally posts B-grade harvest work, naming Alexander a strong future candidate. Alexander exited the Gate and returned home. A Runtime ruling (World Rule Profile Section 13.2, now formally authored) computed the Frozen Gallery harvest-share payout: a 5-hunter crew declaring 91 C-crystals combined, against a $273,750 total declared pool (mined + beast-drop crystals + cores at licensed rates), yields a 20% harvest share of $54,750, output-weighted — Alexander's cut ≈$24,663, his largest pending payout, alongside the Red Line split (≈$2,313) and Cicero Scar harvest share (≈$5,700). The Frozen Gallery job is closed; the declared crystals are no longer in Alexander's possession. No combat, no XP, no Health/Mana change — Health and Mana remain full (40/40, 20/20). 3 unspent stat points remain unallocated.

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

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifier: event `EVT-000068`, and record `REC-000085` (this manifest's position in the record sequence; the manifest itself mints no identifier per Decision 072). `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

No new entities or relationships were minted this session — Dale (`ENT-000135`) and the harvest-hire relationship (`REL-000064`) already existed.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (heed the unfrozen / not-save-trustworthy warning above) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander at his apartment in Chicago, evening of 2026-07-26, both harvest jobs closed, three USD payouts pending (≈$2,313, ≈$5,700, ≈$24,663), 25,330 private gold, 3 unspent stat points unallocated, no immediate obligation until the next daily quest issues at 06:00 the following morning.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-26T20:00:00Z
**Status:** Restore point for Session 2 — Alexander home for the evening, both Frozen Gallery job phases and the Cicero Scar job complete, three payouts pending.
