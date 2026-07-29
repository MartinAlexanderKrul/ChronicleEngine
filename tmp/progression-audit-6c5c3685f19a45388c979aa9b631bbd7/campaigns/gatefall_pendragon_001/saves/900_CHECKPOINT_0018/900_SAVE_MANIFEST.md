# Save Manifest — Gatefall: Pendragon — Checkpoint 0018

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0018` — Session 2, automatic context-preservation checkpoint, captured at Loyola Park on the Chicago lakefront on the morning of 2026-07-31, at the end of the day's training session
**Kind:** Automatic context-preservation checkpoint (Resident Core, Context-Preservation Watch — scene boundary reached past the fallback threshold of resolved exchanges since Checkpoint 0017)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: automatic-context-preservation
  created: "2026-07-31T07:50:00Z"
  source: EVT-000089
  event_time: "2026-07-30, night to 2026-07-31, morning — Rogers Park and Loyola Park, Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.8"
    freeze_status: frozen
    frozen_date: "2026-07-25"
    note: "Captured under frozen Profile 1.8, unchanged since the prior checkpoint. No profile migration is required on restore."
  campaign_schema: "0.1.3"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0017
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
  warnings: "Captured under frozen Gatefall World Rule Profile 1.8 and Data Model 0.1.3 — fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes on the morning of 2026-07-31 at Loyola Park with the daily quest already complete and nothing scheduled until the 06:00 issue and Daily Premium rotation on 2026-08-01."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Everything since Checkpoint 0017 — the single event `EVT-000089`, covering a quiet night at Owen Callahan's apartment, the small-hours settlement of banked System rewards, the 06:00 Daily Premium rotation, and the seventh daily quest at Loyola Park. **No combat, no injury, no XP, no cash movement, no equipment equipped or unequipped, no exposure event reported or investigated.**

**Six stat points and a second milestone skill.** Both banked **Ability Points +3** awards were claimed and all six points allocated in one settlement (Section 3.9, Section 4.2): **Strength 29 → 30, Vitality 20 → 22, Agility 23 → 26**; unspent 0 → 6 → 0. Base Strength reaching 30 fired the Section 4.4 stat milestone and granted **Overpower** — grapple, pin, or bull-rush a foe up to one Rank above the Bearer's System Rank, currently D-Rank — his fourth skill and second milestone. The Vitality rise re-derived maximum Health to `4 × 22 = 88` and the pool filled, there being no missing amount to carry (Section 4.1). Mana unchanged at 40/40.

**Four Daily Random Boxes opened**, each a real d100 at System Rank E (Section 8.1): **19** → potion cache (2 lesser mana potions, 1 lesser healing potion; the mana potions are his first), **43** → 500 g, **82** → ranked gear (d20 10 → armor; slot d5 5 → feet; style d5 2 → Titan) = **Titan Boots [E-Rank]**, banked unequipped, **56** → 500 g. **Gold 15,835 → 16,835.** The banked-box line is now empty.

**The rotation, and a knife out of reach.** The 2026-07-30 cycle expired uncarried. The 2026-07-31 cycle rolled its twelve required rolls; the weapon Rank roll came up **97 — three Ranks above him** — producing a **Ghost Quickknife [B-Rank]** (Agility +13, weapon power 11, ×0.75, +1 step on a first unseen attack) at **18,000 g**. The tab was opened and **nothing was bought**: the balance of 16,835 leaves a **1,165 g gap**, a total liquidation of everything the shop would repurchase raises only ≈1,580 g, and no dollars can cross (Section 12.5, the no-exchange rule). The cycle expires at 06:00 on 2026-08-01.

**The seventh daily quest**, issued 06:00 and completed in full by roughly 07:40 at Loyola Park — the second consecutive coached two-person session, Owen negotiating himself to 4 km plus a scaled 30/30/30 and completing it. **Streak 6 → 7**, three rewards pending as separate entries, no XP. Alexander finished not visibly winded two and a half days after a near-lethal C-Rank clear; Owen watched, read him, and again said nothing — the same silence he kept the previous night when Alexander tore a shirt apart one-handed.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — stats, Health, skills (+Overpower), gold, pending rewards, shop holdings, Daily Premium cycle, daily-quest streak, condition, situation
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged this event
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — Daily Random Box contents and the gold restatement
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's (`ENT-000139`) location, condition and situation; `REL-000066` texture
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 updated with the gold balance and the new premium-offer pressure
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000089` recorded and added to the record's subjects
- `170_CHANGELOG.md` (`REC-000080`) — this checkpoint and its preceding change entered
- `180_CURRENT_STATE.md` (`REC-000081`) — date, location, protagonist state, Daily Premium, daily quest, scene anchor, promotion status

`110` is unchanged by `EVT-000089` and is included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced in the same change for this session's one new identifier, `EVT-000089`; no entity, record, or relationship identifier was minted. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.8 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — neither profile nor schema.
4. Resume on the **morning of 2026-07-31**, roughly 07:50, at Loyola Park on the Chicago lakefront. Level 7, XP 40/700, Health 88/88, Mana 40/40, 0 unspent stat points, base Stats 30/26/22/30/20, equipped-effective 34/26/22/30/20, gold 16,835, cash $34,381, no injury, daily quest complete, streak 7, next issue 06:00 on 2026-08-01. Pending rewards: Ability Points +3 ×1, Status Recovery ×3, Daily Random Box ×1. Only the E-Rank Ascendant Hunter's Band is equipped; everything else, including the new Titan Boots, is stored. Skills: Stone Skin [D-Rank] Novice, Rupture [E-Rank] Novice, Rank-Sight (passive), Overpower (passive). The Daily Premium tab holds six unbought offers until 06:00 on 2026-08-01, including a Ghost Quickknife [B-Rank] at 18,000 g against a balance of 16,835.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-31T07:50:00Z
**Status:** Restore point for Session 2 — six points spent, Overpower earned, four boxes opened, and a B-Rank knife on the tab he is 1,165 gold short of.
