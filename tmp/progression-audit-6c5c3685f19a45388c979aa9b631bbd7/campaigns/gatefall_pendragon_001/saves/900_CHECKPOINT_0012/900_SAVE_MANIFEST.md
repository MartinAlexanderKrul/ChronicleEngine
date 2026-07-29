# Save Manifest — Gatefall: Pendragon — Checkpoint 0012

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0012` — Session 2, captured **after the Ashfield Gate's full clear**, out of the Gate
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-28T12:30:00Z"
  source: EVT-000080
  event_time: "2026-07-28 — a bar four blocks from the collapsed Ashfield Gate site, Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.5"
    freeze_status: frozen
    frozen_date: "2026-07-28"
    note: "First checkpoint captured under frozen Profile 1.5, which authors a mender's resolved treatment touch as clearing an injury's severity outright, rank-gated. The live ledgers were migrated 1.4→1.5 under EVT-000078 before the boss fight concluded; this checkpoint therefore requires no migration on restore."
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0011
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
  warnings: "Captured under Gatefall World Rule Profile 1.5, frozen 2026-07-28 — fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes OUT of the Gate at a quiet conversation, not a fight: Alexander is in a bar with Owen, who has just laid out everything unexplainable he has witnessed and is waiting on a reply Alexander has not given. Two live obligations sit unresolved — the BGM report on a Gate posted E-D that was truly C, and the crew's unsplit loot, both time-boxed to a 2026-07-29 18:00 reconvene."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

The Profile 1.5 migration, the Ashfield boss fight from first contact to the kill, the Gate's clear and harvest, the exit, the deferred report, and the bar conversation — since Checkpoint 0011.

**`EVT-000078` — Gatefall Profile 1.4 → 1.5 Mender-Treatment Migration.** Adopted by owner ruling at an out-of-character pause mid-boss-fight. A mender's resolved treatment touch now **clears an injury's severity outright**, rank-gated (E/D/C/B+ clearing Minor/Moderate/Severe/Critical), costing one per-clear touch; one touch either restores Health or clears one injury, never both. Section 6.4's Health/severity independence is preserved and clarified. No fictional time consumed; no prior resolution changed. Alexander's Severe injury was preserved at its recorded severity rather than retroactively erased.

**`EVT-000079` — The Ashfield Boss: The Plan, the Ambush, and Alexander's Severe Injury.** The crew's agreed plan against each member's stated objection; a potion drawn from the dimensional inventory for Priya (his first banked item produced before witnesses); an unseen approach (d100 50 → 90, strong success); an ambush strike (83, strong) and a weak-point critical (100) that pulled the boss off Priya. Then a **natural 1** put him on one knee inside its reach; the boss's retaliation dealt 57 (**Health 68 → 12**) and inflicted a **Severe left-rib injury** under Section 6.3. He claimed his pending Status Recovery (12 → 68/68), and a **second natural fumble (5)** on a body that could not plant carried him into the open. He evaded the resulting charge (68, success).

**`EVT-000080` — The Gate Cleared.** Owen's C-rank treatment touch **cleared the Severe injury outright** — the first exercise of the Profile 1.5 rule, costing one touch and the tactical window. Alexander read the boss's dead limb as making every left turn slow, ordered denial fire beside Owen, and levered the shoulder seam apart (81, strong success), collapsing its front-left quarter. A throat strike (69) failed to finish it; the boss heaved its mass sideways as a collapse aimed like an attack. Alexander **allocated 5 points to Agility** and evaded forward through the gap (67, success), leaving the boss pinned beneath its own weight. The finishing blow **resolved automatically** (Rules Section 4.2). **Boss killed; Gate cleared.**

Kill XP 960 (C boss 240 × underdog ×4) plus the C-grade clear milestone 320 = **1,280 XP**, crossing three thresholds in one settlement: **Level 4 → 7**, all base Stats +3, **+15 unspent points**, pools re-derived and restored to 80/80 and 38/38.

Renata's post-kill read (legendary success) found seven common beasts alive and contained by the standing barrier (Section 9.8 — only a break releases a population, and a cleared Gate never breaks); the crew declined them. Alexander extracted the boss core clean (92, strong success) and recovered his E Quickknife; the **boss drop** rolled a **Longshot [C]**. A harvest near the aperture gave 10 crystals before the shallow ground failed, and pushing it produced **two more natural fumbles**, shattering a crystal and **breaking the resonance chisel**. Haul: **16 C-crystals, 2 C-cores, Longshot [C]**, unsold and unsplit.

Outside, Priya raised the filing problem. Alexander advised delay, clarifying under pushback that he never proposed falsification; Priya refused falsification but accepted delay and will file a true account of a mis-posted Gate; Renata established that the C-grade loot declares the grade to any appraiser; Owen noted he alone carries no legal risk. **Nothing filed, sold, or split before 2026-07-29 18:00.** Over the promised beer Owen laid out all four unexplainable things he has witnessed, said he is not confused and will not later invent an explanation, reaffirmed he will not ask, and left the door open. **Alexander has not answered.**

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

`110` was unchanged this session — no new world-layer facts — and is included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers: events `EVT-000078`, `EVT-000079`, `EVT-000080`; and record `REC-000089` (this manifest's position in the record sequence; the manifest itself mints no identifier per Decision 072). No entity or relationship identifier was minted — every participant already existed. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest and to record the world's Profile 1.5 version.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.5 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required.**
4. Resume **out of the Gate**, midday 2026-07-28, in a bar four blocks from the collapsed Ashfield Gate site. Alexander is at Level 7 (XP 40/700, Health 80/80, Mana 38/38, 15 unspent stat points, gold 22,520, no injury) sitting with Owen, who has just finished stating everything he has witnessed and is waiting on a reply that has not been given. The rest of the crew has dispersed. Two obligations are open and time-boxed to **2026-07-29 18:00**: Priya's true filing of the mis-posted Gate with BGM Region V, and the crew's split of 16 C-crystals, 2 C-cores, and the Longshot [C]. Nothing may be sold before then by the crew's own agreement. The next daily quest issues 2026-07-29 06:00 (streak 4).

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-28T12:30:00Z
**Status:** Restore point for Session 2 — Ashfield Gate cleared, Level 7, report and split deferred, Owen's question unanswered.
