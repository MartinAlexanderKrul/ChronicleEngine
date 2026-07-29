# Current State - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8). This is the live operational ledger - read first at session start.

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile 1.0)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.2
- Start city: Chicago
- Campaign date: **2026-07-25** (Windy City Hunters Coalition, Chicago)
- Campaign state: session-1 in progress; Red Line contract closed and paid pending, deciding next work
- World Rule Profile: Gatefall 1.0 — **workshop draft (unfrozen); not save-trustworthy** (Rules Section 14.6, Decision 074). A restore of this checkpoint surfaces the unfrozen-profile warning.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0003/`

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~12 days).
- Status: Active, **Bearer** (System attached 2026-07-24, `EVT-000059`) — Level 2, XP 50/200, Health 40/40, Mana 20/20, 6 unspent stat points, daily-quest streak 1/7. Full detail: `100_CHARACTER_SHEET.md` `system_state`. Perceptible to him alone; unknown to his crew.
- Location: Windy City Hunters Coalition (`ENT-000102`), Chicago (`ENT-000087`).
- Condition: Health and Mana full. No lasting injury tier recorded from the Red Line clear.
- Equipment: four E-grade items bought 2026-07-23 (reinforced leather jacket, E-grade dagger, reinforced gauntlets, shin guards) plus an E-grade armored greave from the boss drop (split undecided); $2,000 cash on hand, ≈$2,313 pending from the Red Line split (1-2 business days); active BGM E-rank license; no mining tool owned. Full detail: `120_INVENTORY_AND_OWNERSHIP.md`.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); Red Line Corridor crew contract with Tanya Voss (`REL-000063`) closed, crew dispersed, invited back for the next posting in a few days.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.

## Current Situation

The Red Line Corridor contract is fully closed (`EVT-000059`, `EVT-000060`): Gate cleared, loot mined and declared, crew exited, standard split filed, payment pending. Alexander is deciding his next move: a confirmed D-grade rail-yard harvest slot filed for 2026-07-26, 07:00 (`EVT-000061`); two open E-D waiver-tier crew slots; or waiting a few days for Tanya's crew to post again. Only strike/combat contracts at C-grade and above are legally closed to him on his carded E-rank — harvest work at any grade is legally open to him (`EVT-000062`), though none has been specifically named to him yet. He does not yet own a mining tool.

The System is active day-to-day now: its first daily quest issued 2026-07-25 at 06:00 and was completed the same morning (streak 1/7). Still unknown to anyone but him.

## Current Scene Anchor

Session 1 in progress. Alexander is at the Windy City Hunters Coalition case-table floor, having just finished discussing payout timing and the job board with Kesha Morrison. Nothing has been decided yet about the rail-yard posting, a crew slot, or buying a mining tool.

## Promotion Status

Session 1 in progress — **checkpoint `900_CHECKPOINT_0003` written** after the Gate exit, loot split, the System's first daily quest, the Coalition board review (with a same-day correction to the E-card contract-tier cap folded in before capture), capturing all eight ledgers with a save manifest.

Ledgers promoted this session (`EVT-000060`, `EVT-000061`, `EVT-000062`): `100` (system_state XP/points/daily-quest fields; capabilities and situation updated, then corrected), `110` (unchanged this pass), `120` (armored greave added; pending-income note added), `130` (Tanya's, Marcus's, and Kesha's situations updated, Kesha's corrected; `REL-000063` state updated to contract-closed), `140` (OBJ-5 complete, OBJ-2 updated, OBJ-6 opened then corrected), `160` (chronicle `EVT-000060`, `EVT-000061`, `EVT-000062`), `170` (changelog), `180` (this file). Registry advanced: `EVT-000060`, `EVT-000061`, `EVT-000062`; no new entities, records, or relationships. Index (`system/WORLDS_AND_CAMPAIGNS.md`) updated to name the new latest checkpoint.
