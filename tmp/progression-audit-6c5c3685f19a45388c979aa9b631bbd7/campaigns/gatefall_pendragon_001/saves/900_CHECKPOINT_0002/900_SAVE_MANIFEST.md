# Save Manifest — Gatefall: Pendragon — Checkpoint 0002

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0002` — Session 1, captured after the Red Line Corridor Gate clear, in the post-boss two-hour window
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-24T12:00:00Z"
  source: EVT-000059
  event_time: "2026-07-24 — Red Line Corridor Gate, boss chamber, post-boss window"
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
  parent_save: 900_CHECKPOINT_0001
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

The Red Line Corridor Gate clear and System onset. One story event was promoted since Checkpoint 0001.

**`EVT-000059` — The Red Line Corridor Clear and System Onset (2026-07-24).** The crew entered the Gate at 08:00; true grade resolved E (one below the unconfirmed D assessment), archetype Shattered City, population 9 common E beasts + 1 E elite + 1 E boss. Full population cleared with no crew casualties: an ambush (3 common beasts), an open engagement (6 common beasts and the elite), and the boss kill, in which Alexander's tactical reads materially opened both the elite kill and the boss kill. Alexander took two Severe wounds (a common beast's hit, the boss's opening leap), both addressed by Sarah Chen's field-touches (2 of her 3 per-clear touches spent). His first genuine wound triggered System onset per World Rule Profile Section 14.7 — the System attached mid-fight, unknown to his crew. He ends the clear at Level 2, XP 40/200, Health 40/40, Mana 20/20, 3 unspent stat points, via setup-credit kill XP (Section 3.8) for the elite, a common beast, and the boss, plus the E-Gate clear milestone. Full roll-by-roll detail is recorded in `EVT-000059`. Loot has not yet been collected; the crew has not yet exited the Gate.

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

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifier: event `EVT-000059`. No new entities, records, or relationships were minted — the System is not a Persistent Entity (World Rule Profile Section 14.1) and lives entirely in `ENT-000125`'s `canonical_state`. Repository-level identity state is never copied into, or rolled back with, a checkpoint. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

**Expected divergence in `170_CHANGELOG.md`.** Live canon may carry one entry this snapshot does not: the entry recording this checkpoint's own creation, which cannot exist at capture time. A diff against live is expected to show at most that entry.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (heed the unfrozen / not-save-trustworthy warning above) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander and the crew in the boss chamber, post-boss two-hour clear window, about to loot and treat wounds before walking out.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-24T12:00:00Z
**Status:** Restore point for Session 1 — Alexander and the crew in the Red Line Corridor Gate's boss chamber, post-boss window, about to loot and exit.
