# Save Manifest — Gatefall: Pendragon — Checkpoint 0014

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0014` — Session 2, automatic context-preservation checkpoint, captured at Owen Callahan's apartment on the morning of 2026-07-30
**Kind:** Automatic context-preservation checkpoint (Resident Core, Context-Preservation Watch)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: automatic-context-preservation
  created: "2026-07-30T09:00:00Z"
  source: EVT-000083
  event_time: "2026-07-30 morning — Owen Callahan's apartment, Rogers Park, Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.6"
    freeze_status: frozen
    frozen_date: "2026-07-29"
    note: "Captured under frozen Profile 1.6. No migration is required on restore."
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0013
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
  warnings: "Captured under frozen Gatefall World Rule Profile 1.6 — fully save-trustworthy, no migration required. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes at a genuinely quiet interval: Alexander is at Owen's apartment the morning after, nothing scheduled, nothing owed, no daily quest currently active. His combat gear (both Quickknives, the Adaptive Bastion Torso, gauntlets, and shin guards) is stored, not equipped — only the Ascendant Hunter's Band is currently worn."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Everything since Checkpoint 0013 (`EVT-000083`) — the full span from the apartment interval on 2026-07-29 afternoon through the following morning.

**Rewards, allocation, and gearing.** Claimed the pending Ability Points +3 and one Daily Random Box (d100 36 → System gold, +500 g). Allocated all 18 unspent stat points (Strength +4, Vitality +3, Perception +10, Intelligence +1). Opened `/system shop`, rolling the unviewed 2026-07-29 Daily Premium cycle for real (twelve dice), and bought the Ascendant Hunter's Band [E] (equipped) and a Premium Rune teaching Stone Skin [D] (consumed, learned), then the Adaptive Bastion Torso [E] (equipped, replacing the sold Reinforced Leather Jacket). Activated Stone Skin once to test it, then dropped it. Unequipped everything but the Hunter's Band before dressing civilian for the evening — that loadout has held since.

**The chisel errand and the payout fix.** Routed the outstanding 10 km daily-quest run through a newly-established outfitter, Vanguard Trade & Gear (`ENT-000140`), buying two replacement resonance chisels with cash; the run completed the fifth daily quest in full (streak 4→5). At the Coalition, Kesha Morrison traced an apparent processing discrepancy on three long-pending payouts to a stale account-sync issue; fixing it released all three at once (cash $1,705 → $34,381).

**The crew debrief and split.** Alexander delivered the agreed "no hero" account of the Ashfield clear to Julian and Renata, who both accepted it. After a negotiation over Priya's leader's share, she ceded him future tactical/strategic field command outright by explicit ruling, keeping the contractual lead and 10% share. The Ashfield crystal/core pool ($52,500) split under standard terms; the Longshot [C] will sell and split once appraised.

**The dinner and the night.** A crew dinner surfaced real backgrounds for Julian, Renata, Priya, and Owen, and set a recurring training schedule. Alexander and Owen (`REL-000066`) spent their first night together, both naming the relationship plainly for the first time.

No combat, injury, or XP this event.

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

`110` was unchanged this event — no new world-layer facts — and is included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers: event `EVT-000083`, entity `ENT-000140` (Vanguard Trade & Gear), and the record high-water mark for this checkpoint's position in the record sequence (the manifest itself mints no identifier, per Decision 072). `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.6 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required.**
4. Resume on the **morning of 2026-07-30** at Owen Callahan's apartment, Rogers Park, Chicago. Level 7, XP 40/700, Health 80/80, Mana 36/40, 0 unspent stat points, gold 20,255, no injury, no active daily quest. Only the Ascendant Hunter's Band is equipped — both Quickknives, the Adaptive Bastion Torso, gauntlets, and shin guards are all stored. Nothing is scheduled or owed today: the Ashfield report is in Priya's hands, the loot split is agreed, and the next crew training session is only loosely set for "in 2–3 days." Open threads: Alexander's ≈$9,450 Ashfield split share and the Longshot's eventual sale, both pending Priya's filing; the Horizon Reacharm, Clarity Phial, and Runic Key remain on the Daily Premium tab until the next 06:00 rotation.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) is run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-30T09:00:00Z
**Status:** Restore point for Session 2 — automatic context-preservation trigger, crew debrief and split resolved, first night with Owen, no pressure pending.
