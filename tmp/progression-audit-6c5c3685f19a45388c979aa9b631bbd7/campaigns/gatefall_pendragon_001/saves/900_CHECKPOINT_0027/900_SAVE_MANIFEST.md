# Save Manifest — Gatefall: Pendragon — Checkpoint 0027

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0027` — player-requested checkpoint on Michigan Avenue, three hours before the two-person Cicero entry
**Kind:** Player-requested session checkpoint

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-26T21:44:54+02:00"
  source: EVT-000118
  game_date: "2026-08-03T09:40:00-05:00; mid-morning, Michigan Avenue, Chicago"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.15"
    freeze_status: frozen
  campaign_schema: "0.1.4"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0026
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
  warnings: "None. Captured under frozen Profile 1.15 and Data Model 0.1.4; requires no migration on restore. Checkpoints 0026 and 0025 are Profile 1.14 captures needing only the additive 1.14 to 1.15 adoption at readiness; 0024 and earlier run their full recorded chains."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

One morning, 2026-08-03 06:00 through 09:40, spanning `EVT-000117` and `EVT-000118`.

- **`EVT-000117`** — adoption of frozen **Profile 1.15**, the additive **high-Rank sponsor exception** (Section 9.4) ruled in by the owner: a **confirmed** E-Rank contract may be staffed at any party size behind a **C-Rank** licence, a confirmed D-Rank contract behind a **B-Rank** licence. Confirmed assessments only; a sponsored posting is sanctioned and therefore insured. Nothing recomputed.
- **`EVT-000118`** — the morning it bought. The **Umbral cycle expired 0/6** and the **Verdant** cycle rolled; six potions and the Quickstep Charm were sold to fund the **Runic Key [E-Rank]** at 1,000 g (**gold 920 → 12**). The **tenth daily** completed on the lakefront with Owen (**streak 9 → 10**), banking Ability Points +3, a fifth Status Recovery, and a Daily Random Box. Alexander proposed a two-person clear, told Owen its real purpose — *to answer your questions with actually no need to answer them* — and answered Owen's warning about the cost of knowing with **"I trust you."** Owen wrote the rule of engagement and Alexander accepted it. Owen booked the **Cicero substation service-tunnel Gate (confirmed E-Rank)** as **sponsor of record**, 50/50, mouth by 13:00, and told Kesha Morrison about the relationship on the same call. The **≈$9,450 Ashfield share landed**, and **$18,500 of protective gear** was bought for Owen at Horizon Outfitters (**cash $18,881 → $28,331 → $9,831**).

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — anchor, pools, gold, daily state, premium cycle, Runic Key, session narrative
- `110_WORLD_LEDGER.md` (`REC-000075`) — opened and unchanged this checkpoint
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — the Runic Key, both resales, all cash movement, and **Owen's three gear pieces recorded as his property**
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen (sponsor of record, first armour, the agreement to be shown), Kesha Morrison (the posting, and now knowing), `REL-000066` texture
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-2 payout and spend, new **OBJ-13** (show Owen what he is, inside a Gate)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000117` and `EVT-000118` defined and linked
- `170_CHANGELOG.md` (`REC-000080`) — both entries, with every roll and price
- `180_CURRENT_STATE.md` (`REC-000081`) — full refresh, new anchor, checkpoint pointer, trigger-audit record

`system/ID_REGISTRY.md` carries allocation-log coverage for `EVT-000117` and `EVT-000118`; the Event high-water mark stands at `EVT-000118`. No Entity, Record, or Relationship identifier was minted — the Horizon clerk is unnamed scene colour. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0027 as the latest checkpoint and the world row carries Profile 1.15.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.15 and Data Model 0.1.4. **No migration is required.**
4. Resume at 2026-08-03, roughly 09:40, on Michigan Avenue outside Horizon Outfitters — licences due to the Coalition before 11:00, Gate mouth in Cicero at 13:00.

State at capture: **Level 8, XP 400/800**, Health **116/116**, Mana **60/60**, no injury, base Stats **31/30/25/31/30**, equipped-effective **41/55/29/31/30**, 0 unspent points, nine skills, daily streak **10**, gold **12**, cash **$9,831**, pending rewards **Ability Points +3 ×1 · Status Recovery ×5 · Daily Random Box ×1**, one unused **Runic Key [E-Rank]**, eleven unsellable E-Rank cores, four Lesser Healing Potions, non-daily quest slots **0/2**.

---

**Checkpoint Created:** 2026-07-26T21:44:54+02:00
**Status:** Restorable canonical continuation at Profile 1.15 / Data Model 0.1.4; no migration required on restore.
