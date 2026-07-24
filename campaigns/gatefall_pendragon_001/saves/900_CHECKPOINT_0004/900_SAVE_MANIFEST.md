# Save Manifest — Gatefall: Pendragon — Checkpoint 0004

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0004` — Session 2, captured mid-way through the Frozen Gallery C-grade harvest job, after the Cicero Scar job's full resolution
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-26T09:00:00Z"
  source: EVT-000064
  event_time: "2026-07-26 — inside the Frozen Gallery Gate, Chicago"
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
  parent_save: 900_CHECKPOINT_0003
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

The Cicero Scar C-grade harvest job's complete resolution, the harvest-share correction, and the start of a second C-grade harvest job. Two story events were promoted since Checkpoint 0003.

**`EVT-000063` — The Cicero Scar C-Grade Harvest Job (2026-07-25).** Alexander bought a resonance chisel from Diane at Ironbound ($80; cash $2,000→$1,920) and took a confirmed C-grade harvest slot under logistics coordinator Ada Reyes (`ENT-000134`). Full roll-by-roll mining sequence: partial success (55), partial success after watching veteran technique (59), strong success (89), a natural-critical-fumble that shattered a rushed cut (2), partial success at a new position (47), a private undeclared sale to the System shop (53, 170 gold — real theft under the harvest contract, unknown to any NPC), a legendary-success batch of three (100), and a final success (77) — 8 crystals mined, 7 declared. All 6 unspent stat points allocated: Strength 11→13, Vitality 8→10, Intelligence 8→10 (the latter two crossing modifier-step thresholds). Declared 7 C-crystals to Ada; her off-the-cuff $1,500–2,500 estimate was reworked against actual rates to a corrected, canonical **≈$5,700** pending, no scene required. Signed onto a second C-grade harvest slot for 2026-07-26 through Kesha Morrison, declining the never-confirmed D-grade rail-yard interest.

**`EVT-000064` — The Second Daily Quest and the Frozen Gallery C-Grade Job (2026-07-26).** Second daily quest issued 06:00, completed the same morning under a 2-hour staging deadline (push-ups/sit-ups alternated, 10 km run doubled as commute in full gear). Per Section 3.9, XP and streak applied automatically on completion (+10 XP → 60/200, streak → 2/7); only the +3 stat points/full-restore grant was left deliberately unaccepted. Entered the Frozen Gallery Gate (confirmed C-grade; population 8 common C beasts, 2 C elites, 1 C boss) behind the strike element with logistics coordinator Dale (`ENT-000135`). No mining resolved yet at this site.

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

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers: entities `ENT-000134` (Ada Reyes) and `ENT-000135` (Dale), relationship `REL-000064`, and events `EVT-000063` and `EVT-000064`. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

**Expected divergence in `170_CHANGELOG.md`.** Live canon may carry one entry this snapshot does not: the entry recording this checkpoint's own creation, which cannot exist at capture time. A diff against live is expected to show at most that entry.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (heed the unfrozen / not-save-trustworthy warning above) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander inside the Frozen Gallery Gate, just behind the strike element's secured ground, chisel in hand, about to start work on a fresh vein assignment from Dale — no mining resolved yet at this site, second daily-quest grant still unaccepted.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-26T09:00:00Z
**Status:** Restore point for Session 2 — Alexander inside the Frozen Gallery Gate, harvest work about to begin, second daily-quest grant unaccepted.
