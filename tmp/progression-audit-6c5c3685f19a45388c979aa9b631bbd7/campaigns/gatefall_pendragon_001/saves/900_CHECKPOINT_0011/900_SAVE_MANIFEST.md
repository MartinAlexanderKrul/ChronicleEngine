# Save Manifest — Gatefall: Pendragon — Checkpoint 0011

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0011` — Session 2, captured **after the elite's defeat**, at a decision-point pause
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-28T10:05:00Z"
  source: EVT-000077
  event_time: "2026-07-28 — inside the Ashfield Gate, Chicago posting, regrouped after the elite's defeat"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.4"
    freeze_status: frozen
    frozen_date: "2026-07-25"
    note: "First checkpoint captured directly under frozen Profile 1.4. The live ledgers were migrated 1.1→1.2→1.3→1.4 under EVT-000072 through EVT-000074 before any play resumed; this checkpoint therefore needs no migration on restore, unlike Checkpoint 0010."
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0010
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
  warnings: "Captured under Gatefall World Rule Profile 1.4, frozen 2026-07-25 — fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes inside an uncleared Gate: the elite is dead but the C-grade boss has not been encountered or located, the remaining common-beast pack's status is unconfirmed, and crew lead Priya Okafor is wounded and awaiting the protagonist's answer on the crew's next move. It is a decision point, not a rest point and not mid-exchange."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

The stat allocation, one opened Daily Random Box, the elite's defeat and resulting level-up, and the crew's aftermath, since Checkpoint 0010 and the Profile 1.4 migration.

**`EVT-000075` — Stat Allocation and a Daily Random Box (2026-07-28).** All 10 unspent points from the 1.4 migration allocated: Strength +3 (18→21), Perception +3 (13→16), Intelligence +3 (12→15), Vitality +1 (12→13); Health re-derived 60→64/64 and Mana 24→30/30, both refilled to their new maxima. One of four pending Daily Random Boxes opened: contents d100 **85** → graded gear at System tier E; chassis d20 **8** → **Channeling Focus [E]** (Intelligence +2, focus power 2), banked unequipped. Pending boxes 4→3.

**`EVT-000076` — The Elite's Defeat (2026-07-28).** Three further exchanges against the wounded elite: a partial-success graze (d100 37, net +1, effective 57, 11 damage), a critical-success weak-point strike (d100 58, net +2, effective 98, 84 damage), and a strong-success repeat on the same seam (d100 30, net +3, effective 90, 42 damage) that collapsed it. The finishing blow resolved automatically under Rules Section 4.2 against the defenceless creature. **Elite confirmed dead.** Kill XP: C-grade base 60 × elite ×2 × underdog ×4 = **480**, crossing the Level 3→4 threshold. Level 4, XP 260/400; the level-up package settled immediately — all five base Stats +1 (22/15/14/17/16), +5 unspent points, Health/Mana re-derived and fully restored (68/68, 32/32). System tier remains E.

**`EVT-000077` — Aftermath: Crew Regroup, Rank Reveals, and the Northeast Read (2026-07-28).** Alexander raised the earlier near-death directly; Owen apologized for being too slow to reach him, and Priya took formal responsibility for the rear-pair formation gap, asking to be told in future rather than finding out after. Alexander's rapport with Owen deepened markedly — an owed-beer joke, declining Owen's healing offer so as to bank it for worse need, and a friendly arm around the shoulder, the first smile the crew has seen from him — while Owen put the twice-observed dagger-summoning on the record without pressing it. Crew ranks established: Priya **D**, Julian and Renata **E**, Owen **C** (the reason a waiver-tier crew could field a real mender); Owen's practical healing capacity is roughly four to five people per clear, as few as two if severe. A Perception read (d100 40, net +1, effective 60, partial success) found burn-scarring density climbing **northeast** — a genuine lead toward the unlocated boss and den, with the complication that the terrain appears to worsen that direction rather than ease. Priya has asked Alexander directly for the crew's next move and is waiting on his answer.

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

`110` and `120` were unchanged this session — no new world-layer facts and no mundane physical-property changes — and are included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers: events `EVT-000075`, `EVT-000076`, `EVT-000077`; and record `REC-000088` (this manifest's position in the record sequence; the manifest itself mints no identifier per Decision 072). No entity or relationship identifier was minted — every participating NPC and the crew relationship already existed. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.4 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — unlike Checkpoint 0010, this snapshot was captured under 1.4 directly.
4. Resume at the **decision point**: Alexander inside the Ashfield Gate with the elite dead at his feet, Priya wounded but standing and asking him directly whether the crew pushes northeast on his tactical read, falls back to treat her wound, or splits off to sweep the remaining common-beast pack. The Gate's C-grade boss has not been encountered or located; the remaining common beasts' status is unconfirmed; Owen is uninjured with his kit unused and his healing deliberately held in reserve at Alexander's request. Level 4, XP 260/400, Health 68/68, Mana 32/32, 5 unspent stat points, gold 22,520, three unopened Daily Random Boxes plus Ability Points +3 and one Status Recovery pending.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-28T10:05:00Z
**Status:** Restore point for Session 2 — elite defeated, boss unencountered, crew awaiting the protagonist's next decision.
