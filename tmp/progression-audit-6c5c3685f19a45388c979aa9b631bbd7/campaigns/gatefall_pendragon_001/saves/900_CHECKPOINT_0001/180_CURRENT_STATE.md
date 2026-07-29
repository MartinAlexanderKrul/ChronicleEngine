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
- Campaign date: **2026-07-24** (at Gate entrance)
- Campaign state: session-1 in progress; first checkpoint written at the Gate entrance
- World Rule Profile: Gatefall 1.0 — **workshop draft (unfrozen); not save-trustworthy** (Rules Section 14.6, Decision 074). A restore of this checkpoint surfaces the unfrozen-profile warning.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0001/`

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~1 week).
- Status: Active, pre-System.
- Location: Chicago (`ENT-000087`).
- Condition: Healthy; ordinary E-band human capability; no injuries, no Mana pool, no System.
- Equipment: four E-grade items bought 2026-07-23 (reinforced leather jacket, E-grade dagger, reinforced gauntlets, shin guards); $2,000 cash remaining; active BGM E-rank license. Full detail: `120_INVENTORY_AND_OWNERSHIP.md`.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); unaffiliated with any crew.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.

## Current Situation

Alexander has joined **Tanya Voss's crew** for the Red Line Corridor contract — an unconfirmed D-grade Gate with a timer breaking at midnight 2026-07-24. The crew consists of Tanya Voss (leader/striker), Marcus (sensor), Elias Voss (striker), and Dr. Sarah Chen (mender). Alexander has purchased E-grade gear (reinforced leather jacket, E-grade dagger, reinforced gauntlets, shin guards) from Ironbound on Milwaukee Avenue. As of 8:00 AM on 2026-07-24, the crew is assembled and standing at the Red Line Corridor Gate entrance, preparing to cross the threshold.

No System has attached to him. Nothing in this file schedules when, or whether, that changes.

## Current Scene Anchor

Session 1 in progress. Alexander is standing at the Red Line Corridor Gate entrance with his crew (8:00 AM, 2026-07-24), about to cross the threshold into the dungeon. The Gate is an unconfirmed D-grade linear corridor system with an estimated population of mid-E to low-D beasts and a boss at the end. Timer breaks at midnight the same day.

## Promotion Status

Session 1 in progress — **checkpoint `900_CHECKPOINT_0001` written at the Gate entrance before entry**, capturing all eight ledgers with a save manifest. This is the restore point if Alexander dies inside the Gate.

Ledgers promoted this session (`EVT-000058`): `120` (E-grade gear added; cash $4,000 → $2,000), `130` (crew, Coalition coordinator, and gear vendors promoted to campaign-local figures; crew-membership relationship `REL-000063`), `140` (crew-slot objective closed; Red Line clear now the live objective), `160` (chronicle `EVT-000058`), `170` (changelog), `180` (this file). `100`, `110` carry a relationship-list touch-up only. Registry advanced: `ENT-000126`–`ENT-000133`, `EVT-000058`, `REL-000063`. Index (`system/WORLDS_AND_CAMPAIGNS.md`) updated to name the new latest checkpoint.
