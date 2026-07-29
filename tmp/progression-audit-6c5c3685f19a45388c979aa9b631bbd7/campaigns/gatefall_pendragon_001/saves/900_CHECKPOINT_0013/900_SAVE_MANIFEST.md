# Save Manifest — Gatefall: Pendragon — Checkpoint 0013

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0013` — Session 2, captured in Alexander's apartment on the afternoon of 2026-07-29
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-29T14:11:00Z"
  source: EVT-000081
  event_time: "2026-07-29 14:11 — Alexander Pendragon's studio apartment, Chicago"
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
    note: "Captured under frozen Profile 1.5. No migration is required on restore."
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0012
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
  warnings: "Captured under Gatefall World Rule Profile 1.5, frozen 2026-07-28 — fully save-trustworthy, no migration required. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes at a quiet interval, not a fight: Alexander is alone in his apartment mid-afternoon with four hours before a crew meeting. Three obligations are open and time-bound — the daily quest's 10 km run (window closes 2026-07-30 06:00, failure means a penalty zone), a replacement resonance chisel from Ironbound, and the 18:00 filing meeting at the Coalition where Julian and Renata must be briefed in person before Priya files."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Everything between the bar and the following afternoon — since Checkpoint 0012.

**`EVT-000081` — The Half-Answer, the Night, and the Agreed Filing.**

**The half-answer.** Alexander did not use the luck story. He told Owen that something had happened to him and that **he does not understand it either** — the closest he has come to naming the System to anyone. Owen refused to press, offered a permanent exit from the topic, observed that **nobody in this world knows what awakening is** (including him, about his own gift), and **released Alexander from his promise to explain**, substituting "when you want to, if you want to." The System remains unknown to every character (Section 14.4).

**The relationship — `REL-000066`, newly minted.** Drinks in place of thanks; Owen asleep in the booth; Alexander paying the whole tab and taking him home rather than leaving him; roughly fourteen hours' sleep; the relationship explicitly personal and physical the following morning. Owen disclosed ordinary biography — Rogers Park, awakened at twenty-two, twice declined Horizon Guild because "guilds put you where the money is, not where the people are." Alexander's apartment has held no one else since he awakened three months ago.

**The filing strategy.** Alexander established the legal position himself: the contract was posted E–D, everyone signed something legal, and the true grade resolved only *on entry*, so no rank cap was breached. Owen conceded and named the real exposure — Region V will ask **how a D/E/E/E/C crew survived**, and the honest answer names Alexander. Alexander proposed that *Owen* take credit for the boss kill; **Owen said he would sign it and then argued it down** (a non-combatant mender killing a C-grade boss is more interesting than a striker doing it, would open a file on him instead, needs four people to hold one lie, and Renata lies badly). Adopted instead: **"no hero"** — the crew killed the boss in a long coordinated fight; Alexander was the support striker who was badly hurt and treated. A lie of emphasis, not of fact.

**Kesha's notice and Priya's agreement.** Kesha Morrison relayed that Region V's monitoring registered the Gate's closure and the Coalition has been asked when the report is coming — routine, not accusatory. Priya set the meeting for that evening, spent the morning at a clinic on her side, and invited Alexander's thoughts beforehand. On his call (d100 62, net +1, effective 82, **strong success**) she accepted, revealing she had spent two hours drafting honest sentences that all made her sound like a passenger on her own clear. Her limits are exact: she will **not** write that Alexander was absent or did not fight, and she will answer any direct Region V question honestly. She requires Julian and Renata briefed by Alexander in the same room before she files.

**The fifth daily quest.** Issued 2026-07-29 06:00, dismissed unanswered while asleep. Calisthenics completed at 13:30 — 100 push-ups, 100 sit-ups, 100 squats — resolved automatically as demonstrated competence (Rules Section 4.2). **The 10 km run remains outstanding.** The Daily Premium cycle rotated into stock not yet viewed; its Section 12.5 rolls resolve when the shop is next opened. The prior cycle lapsed entirely unpurchased.

No combat, injury, XP, Health, Mana, or gold change. **15 unspent stat points** and three unopened Daily Random Boxes remain untouched; the resonance chisel is still broken.

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

`110` and `120` were unchanged this event — no new world-layer facts, and no property or currency movement — and are included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers: event `EVT-000081`, relationship `REL-000066`, and the record high-water mark for this checkpoint's position in the record sequence (the manifest itself mints no identifier, per Decision 072). `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.5 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required.**
4. Resume at **14:11 on 2026-07-29** in Alexander's studio apartment, alone, sweating from a just-finished calisthenics set. Level 7, XP 40/700, Health 80/80, Mana 38/38, 15 unspent stat points, gold 22,520, no injury. Owen left around 13:20 to change and eat and will be at the Coalition by 17:50. Open before 18:00: the daily quest's 10 km run, a shower, food, and a replacement chisel from Diane at Ironbound on Milwaukee Avenue (a route previously made to double as the daily run). At 18:00 at the Coalition: brief Julian and Renata as Priya required, settle the split of 16 C-crystals / 2 C-cores / the Longshot [C], and let Priya file. Nothing may be sold beforehand.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-29T14:11:00Z
**Status:** Restore point for Session 2 — Gate cleared, filing strategy agreed, four hours before the crew meeting.
