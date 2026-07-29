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
- Campaign state: session-2 in progress; two harvest jobs taken, second (Frozen Gallery) at its close — boss killed, clear window open, Alexander queued to declare
- World Rule Profile: Gatefall 1.0 — **workshop draft (unfrozen); not save-trustworthy** (Rules Section 14.6, Decision 074). A restore of this checkpoint surfaces the unfrozen-profile warning.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0007/`

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~14 days).
- Status: Active, **Bearer** (System attached 2026-07-24, `EVT-000059`) — Level 2, XP 60/200, Health 40/40, Mana 20/20, 3 unspent stat points (Strength 13, Agility 12, Vitality 10, Perception 11, Intelligence 10), gold 16,830 (undeclared, private), daily-quest streak 2/7, grant accepted. Full detail: `100_CHARACTER_SHEET.md` `system_state`. Perceptible to him alone; unknown to anyone else.
- Location: Inside the Frozen Gallery Gate (confirmed C-grade), Chicago (`ENT-000087`), near the Gate mouth, mid-way through the declaration queue, boss dead and the two-hour clear window running.
- Condition: Health and Mana full. No lasting injury from either clear or job.
- Equipment: four E-grade items bought 2026-07-23, an E-grade armored greave from the Red Line boss drop (split undecided), and a resonance chisel bought 2026-07-25; $1,920 cash on hand, ≈$2,313 pending from the Red Line split and ≈$5,700 pending from the Cicero Scar harvest job (both 1-2 business days out); 91 C-crystals held from the Frozen Gallery job, not yet declared; active BGM E-rank license. Full detail: `120_INVENTORY_AND_OWNERSHIP.md`.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); Red Line crew contract with Tanya Voss (`REL-000063`) closed; harvest-hire standing with a corporate-adjacent contractor (`REL-000064`) — one job complete (Cicero Scar), a second in progress (Frozen Gallery).
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.

## Current Situation

The Red Line Corridor contract closed 2026-07-24; the Cicero Scar C-grade harvest job closed 2026-07-25 (`EVT-000063`), 7 declared C-crystals, ≈$5,700 pending, plus 170 gold from an undeclared private sale known to no one. Alexander signed onto a second C-grade harvest job for 2026-07-26 (`EVT-000064`) and worked it across three vein assignments (`EVT-000065`–`EVT-000067`), the third to genuine exhaustion: 91 crystals currently in the declarable count, five sales sold privately through the System shop (four of 12, one of 50) — gold now 16,830, entirely private. The 50-crystal sale drew Dale's direct suspicion for the first time; Alexander's explanation (that reading a vein takes the same stillness as reading his status window) held, though Dale remains more watchful. Alexander accepted his pending daily-quest grant mid-vein (+3 unspent stat points, not yet allocated; Health/Mana were already full). During a break, he studied the strike element's held position and gained an externally-observed tactical framework, unknown to anyone. The strike element then killed the Gate's boss off-screen, opening the two-hour clear window; Alexander helped another harvester finish their vein rather than declare first, and is now mid-queue at the Gate mouth, listening to others' totals before his own declaration — no exit yet.

The System is active day-to-day now: two daily quests completed (streak 2/7), grant accepted. Still unknown to anyone but him — as is the full scale of what he's been skimming.

## Current Scene Anchor

Session 2 in progress. Alexander stands in the declaration queue near the Frozen Gallery's Gate mouth, positioned mid-line, listening to other harvesters call their totals to Dale before his own turn — 91 undeclared crystals in his pack, the two-hour clear window running.

## Promotion Status

Session 2 in progress — **checkpoint `900_CHECKPOINT_0007` written** after the third vein's exhaustion, the daily-quest grant's acceptance, a fifth undeclared sale, a near-miss with Dale, and the strike element's off-screen boss kill opening the clear window, capturing all eight ledgers with a save manifest.

Ledgers promoted this session (`EVT-000067`): `100` (system_state gold and unspent_points fields; situation updated), `110` (unchanged this pass), `120` (declarable C-crystal count updated to 91), `130` (Dale's and `REL-000064`'s situations updated), `140` (OBJ-2 and OBJ-7 updated), `160` (chronicle `EVT-000067`), `170` (changelog), `180` (this file). Registry advanced: `EVT-000067`. Index (`system/WORLDS_AND_CAMPAIGNS.md`) updated to name the new latest checkpoint.
