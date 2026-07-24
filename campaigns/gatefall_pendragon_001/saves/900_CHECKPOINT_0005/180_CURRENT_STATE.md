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
- Campaign date: **2026-07-26** (inside the Frozen Gallery Gate, Chicago)
- Campaign state: session-2 in progress; two harvest jobs taken, second currently underway (two vein assignments worked, mid-job break)
- World Rule Profile: Gatefall 1.0 — **workshop draft (unfrozen); not save-trustworthy** (Rules Section 14.6, Decision 074). A restore of this checkpoint surfaces the unfrozen-profile warning.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0005/`

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~14 days).
- Status: Active, **Bearer** (System attached 2026-07-24, `EVT-000059`) — Level 2, XP 60/200, Health 40/40, Mana 20/20, 0 unspent stat points (Strength 13, Agility 12, Vitality 10, Perception 11, Intelligence 10), gold 4,250 (undeclared, private), daily-quest streak 2/7 with a pending grant (+3 stat points & full restore) unaccepted. Full detail: `100_CHARACTER_SHEET.md` `system_state`. Perceptible to him alone; unknown to anyone else.
- Location: Inside the Frozen Gallery Gate (confirmed C-grade), Chicago (`ENT-000087`), second chamber, on a short break Dale granted him mid-job.
- Condition: Health and Mana full. No lasting injury from either clear or job.
- Equipment: four E-grade items bought 2026-07-23, an E-grade armored greave from the Red Line boss drop (split undecided), and a resonance chisel bought 2026-07-25; $1,920 cash on hand, ≈$2,313 pending from the Red Line split and ≈$5,700 pending from the Cicero Scar harvest job (both 1-2 business days out); 13 C-crystals held from the Frozen Gallery job, not yet declared; active BGM E-rank license. Full detail: `120_INVENTORY_AND_OWNERSHIP.md`.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); Red Line crew contract with Tanya Voss (`REL-000063`) closed; harvest-hire standing with a corporate-adjacent contractor (`REL-000064`) — one job complete (Cicero Scar), a second in progress (Frozen Gallery).
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.

## Current Situation

The Red Line Corridor contract closed 2026-07-24; the Cicero Scar C-grade harvest job closed 2026-07-25 (`EVT-000063`), 7 declared C-crystals, ≈$5,700 pending, plus 170 gold from an undeclared private sale known to no one. Alexander signed onto a second C-grade harvest job for 2026-07-26 (`EVT-000064`) and worked it across two vein assignments (`EVT-000065`): 30 crystals mined total, 13 currently in the declarable count, 24 sold privately through the System shop in two 12-crystal sales — 4,080 gold from this job alone, on top of the 170 from Cicero Scar. He is now on a short break Dale granted him, chisel set aside, inside the second chamber; no boss engaged, no exit, no formal declaration made yet. His second daily-quest completion has already applied its XP and streak; only the +3 stat points/full-restore grant sits unaccepted.

The System is active day-to-day now: two daily quests completed (streak 2/7), one grant pending. Still unknown to anyone but him — as is the full scale of what he's been skimming.

## Current Scene Anchor

Session 2 in progress. Alexander is sitting on a short break Dale granted him, water in hand, inside the second chamber of the Frozen Gallery Gate, the rest of the harvest crew resting nearby, strike element still watching the passage ahead.

## Promotion Status

Session 2 in progress — **checkpoint `900_CHECKPOINT_0005` written** after two vein assignments at the Frozen Gallery and a second undeclared private sale, capturing all eight ledgers with a save manifest.

Ledgers promoted this session (`EVT-000065`): `100` (system_state gold field; capabilities and situation updated), `110` (unchanged this pass), `120` (13 declarable C-crystals added as a held generic holding), `130` (Dale's and `REL-000064`'s situations updated), `140` (OBJ-2 and OBJ-7 updated), `160` (chronicle `EVT-000065`), `170` (changelog), `180` (this file). Registry advanced: `EVT-000065`. Index (`system/WORLDS_AND_CAMPAIGNS.md`) updated to name the new latest checkpoint.
