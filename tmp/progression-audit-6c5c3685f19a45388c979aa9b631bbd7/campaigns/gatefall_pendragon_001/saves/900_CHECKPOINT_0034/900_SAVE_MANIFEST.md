# Save Manifest — Gatefall: Pendragon — Checkpoint 0034

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0034` — player-requested checkpoint, early afternoon of 2026-08-05, the Coalition's staging lot at the Lakefront Gate Corridor
**Kind:** Player-requested checkpoint (`/save`)

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-28"
  source: EVT-000167
  game_date: "2026-08-05T14:40:00-05:00; the Coalition's staging lot, Lakefront Gate Corridor, Chicago"
  label: "cones and coffee"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.25"
    freeze_status: frozen
  campaign_schema: "0.1.5"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0033
  canonical_continuation: true
  branch: session-3-main
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
  warnings: "None. Captured under frozen Profile 1.25 and Data Model 0.1.5 — same pair as Checkpoint 0033 — and requires no migration on restore. The live campaign has since adopted the additive 1.26/1.27/1.28/1.29 steps at readiness with no recomputation, per `180_CURRENT_STATE.md`."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From the 12:15 anchor (Checkpoint 0033) through 14:40, spanning `EVT-000162`–`EVT-000167`. No Gate, no combat, no injury; two Keen Sense investigations and a round of conversations.

- **`EVT-000162`** — Rank Ascension: Rupture breakthrough, E-Rank Master → D-Rank Adept, accepted at readiness. No fictional time consumed.
- **`EVT-000163`** — A text to Owen and an unhurried walk through the warehouse district; a new unresolved detail noticed (a "CLOSED" storefront with a freshly-worn loading ramp).
- **`EVT-000164`** — Keen Sense confirms the storefront as an active, unlicensed intake point for raw Gate material (legendary success). Concealed-discovery `ENT-000165` authored, not attached.
- **`EVT-000165`** — Storefront door confirmed locked; a second Keen Sense read confirms a separate fenced warehouse as a real, capital-backed secured site. Concealed-discovery `ENT-000167` (and its anchor `ENT-000166`) authored, not attached.
- **`EVT-000166`** — Coffee, a conversation with Kesha Morrison, and a held Lakefront Gate Corridor booking (Owen as sponsor, pending his answer by 22:00 tonight or it posts publicly). `OBJ-17` opened.
- **`EVT-000167`** — A brief chat with Denise Ferro (no work today) and two rounds of a reaction-footwork drill with a new acquaintance, Milo (`ENT-000168`).

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — Level 10, System Rank D-Rank, XP 610/1000, Health **144/144**, Mana **35/72**, 5 unspent stat points; base Stats unchanged at 33/32/32/38/36, equipped-effective 43/57/36/38/36. Seventeen skills: Rupture now D-Rank Adept (ascended this checkpoint); Keen Sense advanced 6→8 successful uses, 6→8 qualifying scenes, mastery progress 0→2/3 toward Expert. Pending rewards: Status Recovery ×7 only.
- **Temporal anchor** — `2026-08-05T14:40:00-05:00`. Mana mode `active`, remainder 648,000; Health mode `resting`, remainder 0.
- **Location** — the Windy City Hunters Coalition's staging lot at the Lakefront Gate Corridor (`ENT-000102`), alone, empty coffee cup in hand.
- **Holdings** — gold 507 (unchanged), cash **$20,806.50** (−$7.00 for coffee), 112 E-Rank crystals, 12 E-Rank cores, unchanged equipment loadout.
- **New canon this checkpoint** — `ENT-000166`/`ENT-000167` (the fenced warehouse and its concealed discovery), `ENT-000168` (Milo). Two concealed-discovery records now stand authored-not-attached alongside the earlier storefront one; none has an attached Hidden pointer.
- **Objectives** — `OBJ-17` opened (confirm the Lakefront booking with Kesha by 22:00 tonight or it posts publicly).
- **Progression audit** — Keen Sense's two uses this checkpoint are ordinary use-counter settlement on an already-ratified skill, not formation candidates. `dimensional_weapon_control` remains `tracking` at 2/3; `nonvisual_combat_mapping` and `formation_instruction` remain `tracking` at 1/3. **No `pending-ratification` candidate exists — the readiness gate is clear.**
- **Quests** — non-daily slots **0/2**, no pending offer. No Urgent condition and no Hidden pointer attached this span (Sections 8.4.2, 8.4.3).

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — Mana, temporal state, Keen Sense counters, Rupture's ascended entry, a qualitative capability note.
- `110_WORLD_LEDGER.md` (`REC-000075`) — `ENT-000166`, `ENT-000167` authored.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — the coffee purchase.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — `ENT-000168` created; Denise Ferro's and Kesha Morrison's `situation` fields updated with today's in-person exchanges.
- `140_OBJECTIVES.md` (`REC-000078`) — `OBJ-17` opened.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000165`, `EVT-000166`, `EVT-000167` recorded.
- `170_CHANGELOG.md` (`REC-000080`) — three change entries.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, open threads, promotion status, trigger audit.
- `system/ID_REGISTRY.md` — high-water marks advanced to `ENT-000168`, `EVT-000167`, with allocation-log coverage for each.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint and Captured date; per-campaign note for Checkpoint 0034.
