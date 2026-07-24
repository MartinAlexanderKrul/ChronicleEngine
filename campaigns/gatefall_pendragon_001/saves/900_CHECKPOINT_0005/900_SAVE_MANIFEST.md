# Save Manifest — Gatefall: Pendragon — Checkpoint 0005

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0005` — Session 2, captured mid-way through the Frozen Gallery C-grade harvest job, on a short break Dale granted
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-26T11:00:00Z"
  source: EVT-000065
  event_time: "2026-07-26 — inside the Frozen Gallery Gate, Chicago, second chamber"
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
  parent_save: 900_CHECKPOINT_0004
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

Two vein assignments worked at the Frozen Gallery and a second undeclared System-shop sale, since Checkpoint 0004.

**`EVT-000065` — The Frozen Gallery Harvest: Two Veins and a Second Undeclared Sale (2026-07-26).** Alexander worked a first vein assigned by Dale through a full roll-by-roll sequence (successes, strong successes, a deliberate deeper push, a recalibration after the vein's structure changed, a run of strong/legendary cuts, and a late thinning stretch ending in a major failure on a spent pocket) for 17 declared crystals. Moved with the crew to a second chamber and worked a wider, richer vein Dale offered near the edge: another long sequence of successes (several capped-100 legendary cuts, one natural-2 critical fumble) brought the running total to 23, at which point Alexander sold 12 crystals privately through `/system shop` while continuing to appear to work (declarable count 20→8 mid-sequence before further cuts; 2,040 gold). Continued mining pushed the count back up to 23, at which point a **second** undeclared sale of 12 crystals (2,040 gold) was made with Dale actively making rounds nearby, resolved by a natural critical success. Final two cuts at reduced net (fatigue, thinning vein) brought the current declarable count to **13**. Total gold from this job: 4,080; combined with the 170 carried in from the Cicero Scar, **current gold: 4,250**, entirely private. Alexander then asked Dale for a short break, which Dale granted without suspicion. No combat, no XP, no Health/Mana change — mining awards no kill XP under Section 3; Health and Mana remain full (40/40, 20/20). The pending daily-quest grant remains unaccepted.

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

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifier: event `EVT-000065`, and record `REC-000082` (this manifest, consumed for the high-water mark though the manifest itself mints no identifier per Decision 072 — the advance covers the manifest file's position in the record sequence). `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

No new entities or relationships were minted this session — Dale (`ENT-000135`) and the harvest-hire relationship (`REL-000064`) already existed.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (heed the unfrozen / not-save-trustworthy warning above) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander on a short break Dale granted him, inside the second chamber of the Frozen Gallery Gate, 13 crystals held in the current declarable count, 4,250 private gold, job not yet complete — no boss engaged, no exit, no formal declaration made.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-26T11:00:00Z
**Status:** Restore point for Session 2 — Alexander on a break inside the Frozen Gallery Gate, second vein worked, second undeclared sale made, 13 crystals in the current declarable count.
