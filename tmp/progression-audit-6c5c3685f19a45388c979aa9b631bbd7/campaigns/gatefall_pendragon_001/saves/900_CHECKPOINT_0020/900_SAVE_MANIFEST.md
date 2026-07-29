# Save Manifest — Gatefall: Pendragon — Checkpoint 0020

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0020` — Session 2, player-requested checkpoint, captured on a park bench near Owen Callahan's apartment in Rogers Park, Chicago, on the afternoon of 2026-07-31
**Kind:** Player-requested checkpoint (`/save`, Save Algorithm)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  created: "2026-07-31T15:30:00Z"
  source: EVT-000095
  also_promotes: [EVT-000092, EVT-000093, EVT-000094]
  event_time: "2026-07-31, afternoon — a park bench near Owen Callahan's apartment, Rogers Park, Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.10"
    freeze_status: frozen
    frozen_date: "2026-07-26"
    note: "First capture of this campaign under frozen Profile 1.10. The additive 1.9 -> 1.10 streak-reward advance was adopted at this session's readiness pause (EVT-000092); nothing was recomputed, and the already-completed streak-7 Daily Random Box (EVT-000091) was not reopened. No profile migration is required on restore."
  campaign_schema: "0.1.3"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0019
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
  warnings: "Captured under frozen Gatefall World Rule Profile 1.10 and Data Model 0.1.3 -- fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes on the afternoon of 2026-07-31 on a park bench near Owen's apartment, nothing scheduled or owed beyond payouts already processing."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Requested by the player after a quiet stretch of play covering four promoted events since Checkpoint 0019: a profile adoption, a Coalition-referred harvest job, a gear purchase, and a relationship texture moment. A checkpoint is complete restorable state, not a diff (Rules Section 13.1), so all eight ledgers are copied in full.

**`EVT-000092` — Profile 1.9 → 1.10 streak-reward adoption.** Additive advance authoring Section 8.1's Seven-Day Streak Upgrade (a daily completion landing on a positive multiple of seven upgrades that completion's Daily Random Box to two resolved rolls, one chosen). Nothing recomputed; the already-completed streak-7 box (`EVT-000091`) is not reopened. Next eligible upgrade: streak 14.

**`EVT-000093` — Coalition referral to Sable & Kern, and an unweighed text.** Kesha Morrison referred Alexander to a first-time-posting contractor for a same-day confirmed C-Rank harvest job at the Halsted Depot site. Mid-conversation, unprompted, Alexander texted Owen "I already miss you" — recorded as a `REL-000066` texture first. Four new campaign-local figures introduced: Sable, Kern, Ruth, Denny (`ENT-000141`-`ENT-000144`), plus the contractor institution `ENT-000145`.

**`EVT-000094` — Horizon Outfitters purchase.** Bought Horizon Gale Gauntlets [C-Rank] ($12,500) and Horizon Gale Coif [D-Rank] ($3,000), $15,500 total (cash $34,381 -> $18,881). Sold the superseded Reinforced Gauntlets [E-Rank] to the System shop for 15 g. Equipped the entire stored loadout, including both Ascendant Hunter's Bands together in the two accessory slots (Strength +9 total) -- the full nine-slot loadout worn for the first time this campaign. Effective Stats: Strength 40 / Agility 40 / Vitality 26 / Perception 30 / Intelligence 20.

**`EVT-000095` — The Halsted Depot job.** Worked the shared first vein with Ruth, then a second and rushed third vein solo: 10 C-Rank crystals mined, 4 sold privately (680 g, undeclared -- the same private-skimming pattern as the Frozen Gallery job), 6 declared to the crew pool. Crew total: 16 crystals declared, $40,000 gross, Sable & Kern's 10% cut, remaining split four ways -- Alexander's ~$9,000 share pending. Gold 17,335 -> 18,030. New relationship `REL-000067` (Sable & Kern harvest-hire standing) formed.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — profile_version 1.10, gold, full equipped loadout, effective Stats, condition, situation
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged by this session's events
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — Horizon purchases, sold gauntlets, Sable & Kern job section, cash, gold restatement, pending income
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — `ENT-000141`-`ENT-000145` and `REL-000067` defined, Owen's location and `REL-000066` texture updated
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 cash/gold restated, OBJ-7 new-contractor note
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000092` through `EVT-000095` recorded and added to the record's subjects
- `170_CHANGELOG.md` (`REC-000080`) — this checkpoint and its preceding changes entered
- `180_CURRENT_STATE.md` (`REC-000081`) — profile binding, gold, equipment, location, scene anchor, promotion status

`110` is unchanged by these events and is included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced in the same change for `EVT-000092`-`EVT-000095`, `ENT-000141`-`ENT-000145`, and `REL-000067`. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.10 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — neither profile nor schema.
4. Resume on the **afternoon of 2026-07-31**, on a park bench near Owen Callahan's apartment in Rogers Park, having just closed out the Sable & Kern harvest job and the Horizon Outfitters gear-up. Level 7, XP 40/700, Health 88/88, Mana 40/40, 0 unspent stat points, base Stats 30/26/22/30/20, equipped-effective 40/40/26/30/20, **gold 18,030**, cash $18,881, no injury, daily quest streak 7, next issue 06:00 on 2026-08-01. Pending rewards: Ability Points +3 ×1, Status Recovery ×3; no Daily Random Box banked. Full nine-slot loadout equipped. Skills: Stone Skin [D-Rank] Novice, Rupture [E-Rank] Novice, Rank-Sight (passive), Overpower (passive). The Daily Premium tab still holds the Ghost Quickknife [B-Rank] at 18,000 g, now affordable against the current gold balance.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-31T15:30:00Z
**Status:** Restore point for Session 2 — the first at frozen Profile 1.10, full loadout equipped, gold clear of every pressure it was under that morning.
