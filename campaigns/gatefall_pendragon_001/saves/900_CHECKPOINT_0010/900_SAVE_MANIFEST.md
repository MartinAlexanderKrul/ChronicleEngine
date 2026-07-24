# Save Manifest — Gatefall: Pendragon — Checkpoint 0010

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0010` — Session 2, captured **mid-combat** inside the Ashfield Gate
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-28T09:45:00Z"
  source: EVT-000071
  event_time: "2026-07-28 — inside the Ashfield Gate, Chicago posting, mid-combat"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.1"
    freeze_status: frozen
    frozen_date: "2026-07-24"
    note: "1.1 is an additive upgrade over frozen 1.0, adding GTF-OVR-003 (mana-borne damage against monsters). Additive means no recomputation for earlier checkpoints; this is the first checkpoint captured directly under 1.1."
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0009
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
  warnings: "Captured under Gatefall World Rule Profile 1.1, frozen (additive over 1.0, frozen 2026-07-24) — fully save-trustworthy, no qualification needed. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. IMPORTANT: this checkpoint is captured MID-COMBAT — restoring it resumes directly into an active fight against a wounded C-grade elite, with Priya wounded nearby and the Gate's boss not yet encountered. It is not a rest point."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

The Ashfield Gate's entry, first wave, Alexander's first solo kill above his own band, and the elite's breakthrough, since Checkpoint 0009.

**`EVT-000070` — The Ashfield Gate: Entry, First Wave, and Alexander's First Solo Kill Above His Band (2026-07-28).** A fourth daily quest completed en route to staging with Priya Okafor's crew (streak 4/7; grant's accept/defer prompt went unanswered, left pending). Met Julian (`ENT-000137`, graded-shotgun striker), Renata (`ENT-000138`, sensor), and Owen (`ENT-000139`, mender) for the first time; gear approved by Priya; formation set (Priya front, Julian/Renata mid, Owen/Alexander rear). The posted Gate (assessed low-confidence D) resolved **true grade C** on entry (d100 78) — a real mismatch for this five-hunter waiver-tier crew. Archetype **Ashfield** (d8 7, burn hazard). Population rolled: 12 common C beasts, 1 C elite, 1 C boss.

The front line held the first wave cleanly (4 kills); a fifth beast broke through toward Owen. Alexander fought it solo across five exchanges — critical, strong, and standard successes stacking damage, then the beast's own retaliation landing a full grade-honest hit that dropped his Health from 40 to **0**, the first genuinely lethal moment of his career. He claimed one of two then-pending daily-quest grants mid-collapse to recover instantly (HP 0→40, +3 unspent points), then finished the kill. Underdog-bonus kill XP (240) crossed the Level 2→3 threshold; the resulting level-up grant was deferred, joining the still-unanswered daily-quest grant — **two grants now banked**.

**`EVT-000071` — The Elite: Alexander's Read, Priya's Fumble, and the Dual-Dagger Counter (2026-07-28).** Alexander read the elite's attack pattern (strong success) and called it out. Priya's intercept attempt on that exact read **fumbled catastrophically** (natural 1) — she was thrown and wounded, and the elite broke through the line toward the rear. Alexander met it dual-wielding both daggers (old E-grade plus the newly summoned C-grade, Owen's second unremarked observation of the trick) using his own calculated timing: a critical success that redirected the lunge past both himself and Owen and landed a real counter-hit. The elite is badly hurt but active; Priya is recovering, wounded; the Gate's boss has not yet been encountered. **Combat is ongoing as of this checkpoint.**

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

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers: entities `ENT-000137` (Julian), `ENT-000138` (Renata), `ENT-000139` (Owen); events `EVT-000070`, `EVT-000071`; and record `REC-000087` (this manifest's position in the record sequence; the manifest itself mints no identifier per Decision 072). `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.1 (frozen, additive over 1.0) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume **mid-combat**: Alexander inside the Ashfield Gate, facing a wounded but active C-grade elite, Priya wounded and recovering nearby, Julian and Renata still engaged with the remaining common beasts, the Gate's boss not yet encountered. Two grants banked (a leftover daily-quest grant and the fresh level-up grant), 3 unspent stat points unallocated, gold 22,520. This is not a rest point — the next beat is the continuation of the fight, not a scene transition.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-28T09:45:00Z
**Status:** Restore point for Session 2 — mid-combat inside the Ashfield Gate, wounded elite active, boss unencountered.
