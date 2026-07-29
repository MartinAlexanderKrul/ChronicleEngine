# Save Manifest — Gatefall: Pendragon — Checkpoint 0035

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0035` — player-requested checkpoint, late morning of 2026-08-06, the Loyola Park lakefront
**Kind:** Player-requested checkpoint (`/save`)

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-28"
  source: EVT-000173
  game_date: "2026-08-06T11:15:00-05:00; the Loyola Park lakefront, Rogers Park, Chicago"
  label: "the word marry"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.30"
    freeze_status: frozen
  campaign_schema: "0.1.5"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0034
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
  warnings: "None. Captured under frozen Profile 1.30 and Data Model 0.1.5 — the same pair the live campaign already runs — and requires no migration on restore."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From the 14:40 anchor (Checkpoint 0034) through 11:15 the following morning, spanning `EVT-000169`–`EVT-000173`. No Gate, no combat, no injury; a repeated failed detection check, a dinner that raised marriage for the first time, a declined Gate booking, a full night's rest, a doubled solo daily quest, and a lake swim.

- **`EVT-000169`** — A repeat Keen Sense check on both concealed-discovery sites (🎲 d100 20, failure). Nothing new found; counters unaffected.
- **`EVT-000170`** — Dinner at Owen's apartment. Owen said "Marry me"; Alexander answered "Yes. Eventually. Du'h" — the first time either has raised marriage. "I love you" repeated. The held Lakefront booking was explicitly declined by text to Kesha Morrison (`OBJ-17` closed). Owen fell asleep on the couch and was walked to bed.
- **`EVT-000171`** — An uneventful overnight rest; Mana settled to its maximum. The thirteenth daily quest issued at 06:00.
- **`EVT-000172`** — The thirteenth daily quest completed solo, doubled at Alexander's own request. Streak 12→13. Three new pending rewards.
- **`EVT-000173`** — A solo lake swim that Owen joined; Owen revealed he lifeguarded the same stretch of water in college. Owen's question about Alexander's plans for the day left unanswered.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — Level 10, System Rank D-Rank, XP 610/1000, Health **144/144**, Mana **72/72 (full)**, 5 unspent stat points; base Stats unchanged at 33/32/32/38/36, equipped-effective 43/57/36/38/36. Seventeen skills, all unchanged this span (the repeated Keen Sense check failed and does not count as a qualifying use). Pending rewards: **Ability Points +3 ×1 · Status Recovery ×8 · Daily Random Box ×1**.
- **Temporal anchor** — `2026-08-06T11:15:00-05:00`. Mana mode `active`, remainder 0; Health mode `light`, remainder 0.
- **Location** — the Loyola Park lakefront, Rogers Park (`ENT-000087`), in the water with Owen Callahan.
- **Holdings** — gold 507 (unchanged), cash **$20,806.50** (unchanged), 112 E-Rank crystals, 12 E-Rank cores, unchanged equipment loadout.
- **New canon this checkpoint** — no new Entities or Relationships; the marriage exchange and Owen's lifeguard background are recorded as texture within `ENT-000139`'s and `REL-000066`'s existing records.
- **Objectives** — `OBJ-17` closed (declined; the Lakefront Gate reposts publicly 2026-08-06 morning).
- **Progression audit** — the repeated Keen Sense check is a non-contributing failed use, not a formation candidate. `dimensional_weapon_control` remains `tracking` at 2/3; `nonvisual_combat_mapping` and `formation_instruction` remain `tracking` at 1/3. **No `pending-ratification` candidate exists — the readiness gate is clear.**
- **Quests** — non-daily slots **0/2**, no pending offer. No Urgent condition and no Hidden pointer attached this span (Sections 8.4.2, 8.4.3).
- **Trigger telemetry** — `hidden_pointers_attached: 0`, `urgent_offers_issued: 0`, both dry counts **15** days from campaign start; `concealed_records_available: 15`, `tracked_postings: 4` — unchanged supply, healthy zero.

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — Mana, temporal state, pending rewards, daily-quest streak, and a corrected stale `daily_quest` block.
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged this span; opened and confirmed no target.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — unchanged this span; opened and confirmed no target.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's (`ENT-000139`) location and situation texture; `REL-000066`'s state field extended with the marriage exchange.
- `140_OBJECTIVES.md` (`REC-000078`) — `OBJ-17` closed.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000169`–`EVT-000173` recorded.
- `170_CHANGELOG.md` (`REC-000080`) — five change entries.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, open threads, promotion status, trigger telemetry, trigger audit.
- `system/ID_REGISTRY.md` — high-water mark advanced to `EVT-000173`, with allocation-log coverage for each new event.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint and per-campaign note for Checkpoint 0035.
