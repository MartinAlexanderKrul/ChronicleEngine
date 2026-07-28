# Save Manifest — Gatefall: Pendragon — Checkpoint 0033

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0033` — player-requested checkpoint, midday of 2026-08-05, a warehouse-district street in Chicago
**Kind:** Player-requested checkpoint (`/save`)

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-28"
  source: EVT-000157
  game_date: "2026-08-05T12:15:00-05:00; a warehouse-district street outside the pawn shop, Chicago"
  label: "the pawnbroker's information trade"
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
  parent_save: 900_CHECKPOINT_0032
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
  warnings: "None. Captured under frozen Profile 1.25 and Data Model 0.1.5 — the first checkpoint at 1.25 — and requires no migration on restore."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Roughly one hour forty-five minutes of fictional time, 2026-08-05 10:30 through 12:15, spanning `EVT-000154`–`EVT-000157`. A midday of errands rather than Gates: no combat, no Gate, no instance, no die roll except one social exchange, and no skill activation.

- **`EVT-000154`** — Profile 1.24→1.25 adopted (consumable economy and sourcing), no fictional time consumed. Post-dating Checkpoint 0032, which is why it is captured here.
- **`EVT-000155`** — the Coalition call: no mining work posted anywhere; a **standing flag set with Kesha Morrison for any C-Rank-or-above mining contract**; and her correction of Alexander's "merely a spectator" account of the Cicero clear straight from **Priya Okafor's payout notes, which credit him with the finishing blow.**
- **`EVT-000156`** — Cutting Edge, first visit. Its proprietor established (`ENT-000149`). **Commissioning rules established in fiction:** the supplied core's Rank is a hard ceiling, **Rank is not additive**, and combining cores buys volume rather than power; anything genuinely unusual is a quality question and draws review near B-Rank and above. He logs core provenance without exception, which makes him permanently unusable for Alexander's private stash. Three refusals to disclose count or source, one d100 63 (partial success) that bought patience but no concession, and nothing bought, sold, or commissioned.
- **`EVT-000157`** — the pawnbroker, round two. `REL-000069` upgraded from one-off sale to a **working supplier arrangement**. **Ten private E-Rank cores paid against a nine-core price** — deliberately one over — for **information rather than cash**: the warehouse-district trust map (**Ferro's Reclamation**, `ENT-000150`, named as an informant risk), **BGM's actual undeclared-goods flagging mechanics** (paperwork gaps, declared-volume-against-recorded-clears audits, and informants — no tracer and no core detector), and **Cicero's Quiet's true provenance** (illegal cordon recovery during active quarantine, an untraced middleman, and a scavenger who stopped taking calls not long after the sale). Two threads opened: the pawnbroker's own want for **C-Rank cores and above**, for a purpose he deliberately withheld; and a brokered introduction to an **unlicensed artificer**, framed as a **consultation rather than a commission**, not yet made.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — Level 10, System Rank D-Rank, XP 610/1000, Health **144/144**, Mana **22/72**, 5 unspent stat points; base Stats 33/32/32/38/36, equipped-effective 43/57/36/38/36. Seventeen skills, all counters unchanged this span. Pending rewards: Status Recovery ×7 only.
- **Temporal anchor** — `2026-08-05T12:15:00-05:00`. Mana mode `active`, remainder 360,000; Health mode `resting`, remainder 0. Mana settled 9 → 22 across the span (300 s resting at rate 50, then 6,000 s active at rate 20).
- **Location** — a warehouse-district street outside the pawn shop (`ENT-000147`), alone, nothing owed to anyone until the daily quest at 06:00 on 2026-08-06 or crew training on 2026-08-09.
- **Holdings** — gold **507**, cash **$20,813.50** (≈$40,000 still processing), **112 E-Rank crystals** unsold, **12 E-Rank cores** (down from 22), 6 lesser healing potions, 2 antidotes, 0 instant-dungeon keys. Full nine-slot loadout equipped and unchanged. Daily streak 12, no daily active. Five live Daily Premium offers expiring 06:00 on 2026-08-06.
- **Progression audit** — `none` on all four captured events. No dangerous scene closed, no qualifying consequential-work or structured-practice scene occurred, no skill or tracked passive activated. `dimensional_weapon_control` remains `tracking` at 2/3; `nonvisual_combat_mapping` and `formation_instruction` remain `tracking` at 1/3. **No `pending-ratification` candidate exists — the readiness gate is clear.**
- **Quests** — non-daily slots **0/2**, no pending offer. No Urgent condition and no Hidden pointer condition arose this span (Sections 8.4.2, 8.4.3).

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — Mana, temporal state and settlement note, condition, core count.
- `110_WORLD_LEDGER.md` (`REC-000075`) — six new protagonist-accessible knowledge rows.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — the ten-core payment, the pending artificer consultation cost.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — `ENT-000149` and `ENT-000150` created; `ENT-000130`, `ENT-000132`, `ENT-000147` situations; `REL-000069` state and history.
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 update, **OBJ-16 opened**.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000155`, `EVT-000156`, `EVT-000157` recorded.
- `170_CHANGELOG.md` (`REC-000080`) — three change entries.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, open threads, promotion status, trigger audit.
- `system/ID_REGISTRY.md` — high-water marks advanced to `ENT-000150`, `EVT-000157`, `REC-000099`, with allocation-log coverage for each.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint and Captured date; per-campaign note for Checkpoint 0033.
