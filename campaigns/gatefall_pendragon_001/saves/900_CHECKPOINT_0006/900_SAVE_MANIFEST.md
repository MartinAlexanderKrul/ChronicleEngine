# Save Manifest — Gatefall: Pendragon — Checkpoint 0006

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0006` — Session 2, captured mid-way through the Frozen Gallery C-grade harvest job, on a mandatory break Dale ordered
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-26T12:30:00Z"
  source: EVT-000066
  event_time: "2026-07-26 — inside the Frozen Gallery Gate, Chicago, third chamber"
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
  parent_save: 900_CHECKPOINT_0005
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

A third vein assignment at the Frozen Gallery, two further undeclared System-shop sales, a performed-exhaustion complication, and a tactical observation of the strike element, since Checkpoint 0005.

**`EVT-000066` — The Third Vein, a Third and Fourth Undeclared Sale, and a Read on the Strike Line (2026-07-26).** Following distant, unthreatening combat noise, the harvest crew advanced with the strike element into a new chamber; Dale assigned Alexander the deepest, richest vein of the job so far. An extended mining sequence (net +2 practiced technique, occasionally dropping to +1 under fatigue and recovering via a deliberate recalibration) yielded 74 crystals, including a 16-crystal stretch resolved under explicit player delegation. Two further undeclared private sales of 12 crystals each (4,080 gold total) brought private gold to **8,330**. A deliberately performed exhaustion worked completely — Dale pulled Alexander off the vein for a genuine mandatory 15-minute break, no suspicion attached. During that break, Alexander studied the strike element's held position and gained an externally-observed tactical framework (formation geometry, then pre-emptive timing), recorded as qualitative capability growth with no mechanical effect. No combat, no XP, no Health/Mana change — Health and Mana remain full (40/40, 20/20). Running totals: 104 crystals mined at the Frozen Gallery across three veins, 63 in the current declarable count, 48 sold privately across four sales. The pending daily-quest grant remains unaccepted.

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

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifier: event `EVT-000066`, and record `REC-000083` (this manifest's position in the record sequence; the manifest itself mints no identifier per Decision 072). `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

No new entities or relationships were minted this session — Dale (`ENT-000135`) and the harvest-hire relationship (`REL-000064`) already existed.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (heed the unfrozen / not-save-trustworthy warning above) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander on the mandatory 15-minute break Dale ordered, inside the third chamber of the Frozen Gallery Gate, having just finished studying the strike element's tactics, 63 crystals held in the current declarable count, 8,330 private gold, job not yet complete — no boss engaged, no exit, no formal declaration made.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-26T12:30:00Z
**Status:** Restore point for Session 2 — Alexander on a mandatory break inside the Frozen Gallery Gate, third vein worked, two further undeclared sales made, a tactical observation gained, 63 crystals in the current declarable count.
