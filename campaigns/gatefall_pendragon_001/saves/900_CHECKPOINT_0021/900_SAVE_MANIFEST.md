# Save Manifest — Gatefall: Pendragon — Checkpoint 0021

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0021` — Session 2, player-requested checkpoint, captured on the same park bench near Owen Callahan's apartment in Rogers Park, Chicago, on the afternoon of 2026-07-31, roughly 4:30 PM
**Kind:** Player-requested checkpoint (`/save`, Save Algorithm)

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  created: "2026-07-31T16:30:00Z"
  source: EVT-000099
  also_promotes: [EVT-000096, EVT-000097, EVT-000098]
  event_time: "2026-07-31, afternoon, roughly 4:30 PM — the same park bench near Owen Callahan's apartment, Rogers Park, Chicago"
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
    note: "No profile change since Checkpoint 0020 — still frozen 1.10. No migration required on restore."
  campaign_schema: "0.1.3"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0020
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
  warnings: "Captured under frozen Gatefall World Rule Profile 1.10 and Data Model 0.1.3 -- fully save-trustworthy, no migration required on restore. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint. Restoring resumes on the same park bench near Owen's apartment, mid-afternoon, nothing scheduled or owed beyond payouts already processing."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Requested by the player after a self-contained stretch of solo play on the same park bench: a weapon upgrade, two solo instant-dungeon clears, a resale-and-restock cycle between them, and a skill-mastery advance — none of it involving the crew, Owen, or any world-layer fact. Four events since Checkpoint 0020. A checkpoint is complete restorable state, not a diff (Rules Section 13.1), so all eight ledgers are copied in full.

**`EVT-000096` — The Ghost Quickknife, bought outright.** Bought and equipped the Ghost Quickknife [B-Rank] from the Daily Premium tab (18,000 g; gold 18,030 → 30), sold the superseded E-Rank Quickknife (25 g; gold → 55), and moved the new blade to the main hand. Effective Agility rose from 40 to 51. Scene time explicitly established at 3:00 PM by ruling.

**`EVT-000097` — The first instant dungeon: Overgrown Temple.** E-Rank instance (population 12 common/2 elite/1 boss). Killed 4 common beasts, 1 elite (shrine guardian), and the boss (an unseen weak-point dagger strike into an immediate Rupture cast). Boss-drop rune rerolled from already-known Stone Skin to Flash Step [D-Rank] (learned) under a new ruling extending the Premium Rune reroll clause to dropped runes. Archetype bonus loot: an Elixir of a Stat. **Ruling recorded:** elites and bosses also drop a crystal in addition to their core (Section 11.1) — missed live on both kills this clear, retroactively repaired. Instance closed on the boss kill (no separate looting window, Section 17); ~40 minutes elapsed. +170 XP. Loot: 6 E-Rank crystals, 2 E-Rank cores.

**`EVT-000098` — Resale and restock.** Sold all 6 crystals (60 g) and the Elixir (2,500 g); the 2 cores were not sellable — the System shop explicitly refuses cores at any price (Section 12.5). Bought a Stabilization Seal (150 g) and a second Instant-Dungeon Key [E-Rank] (500 g). Mana recovery corrected against Section 5.2's Active/Resting rates rather than flat subtraction.

**`EVT-000099` — The second instant dungeon: Hive, and Rupture's mastery.** E-Rank instance, archetype Hive (both elite slots converted to additional commons — population 19 common, 0 elite, 1 boss). Killed 6 common beasts and the boss (same unseen-strike-into-Rupture combo). Drank both Lesser Mana Potions (+20 Mana) to fund the boss approach. Boss drop: a third Instant-Dungeon Key [E-Rank]. **Rupture's mastery advanced Novice → Practiced** (Section 7.4) on this kill — its third materially-distinct contributing use; multiplier ×2.0 → ×2.15, Mana cost 12 → 11. +170 XP. Loot: 7 E-Rank crystals, 1 E-Rank core.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — gold, Mana, effective Agility, equipment (weapon slots swapped), skills_known (Flash Step added, Rupture mastery advanced), daily_premium purchased flag, session narrative
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged by this session's events
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — weapon resale, new instant-dungeon loot section, generic-holdings restatement
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — unchanged by this session's events; provenance timestamp only
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 gold-cycle note
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000096` through `EVT-000099` recorded and added to the record's subjects
- `170_CHANGELOG.md` (`REC-000080`) — this checkpoint and its preceding changes entered
- `180_CURRENT_STATE.md` (`REC-000081`) — gold, Mana, effective Stats, equipment, skills, scene anchor, promotion status

`110` and `130` are unchanged by these events and are included in full because a checkpoint is complete restorable state, not a diff.

`system/ID_REGISTRY.md` was advanced in the same change for `EVT-000096`–`EVT-000099`. No entity, record, or relationship identifier was minted — nothing this session is a new Persistent Object beyond fields on `ENT-000125`. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.10 (frozen) and resume from `180_CURRENT_STATE.md` (`REC-000081`). **No migration is required** — neither profile nor schema.
4. Resume on the **afternoon of 2026-07-31, roughly 4:30 PM**, on the same park bench near Owen Callahan's apartment in Rogers Park. Level 7, XP 380/700, Health 88/88, Mana 15/40, 0 unspent stat points, base Stats 30/26/22/30/20, equipped-effective 40/51/26/30/20, **gold 1,965**, cash $18,881, no injury, daily quest streak 7, next issue 06:00 on 2026-08-01. Pending rewards: Ability Points +3 ×1, Status Recovery ×3; no Daily Random Box banked. Full nine-slot loadout equipped, Ghost Quickknife [B-Rank] in the main hand. Skills: Stone Skin [D-Rank] Novice, Rupture [E-Rank] **Practiced**, Flash Step [D-Rank] Novice, Rank-Sight (passive), Overpower (passive). Inventory includes 7 E-Rank crystals, 3 E-Rank cores (unsellable to the System shop), 1 Instant-Dungeon Key [E-Rank], and a Stabilization Seal.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-31T16:30:00Z
**Status:** Restore point for Session 2 — a solo weapon-and-dungeon interlude, gold much lower than it was two events ago, Rupture meaningfully stronger, and three unsellable cores as the only loose end.
