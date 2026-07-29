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
  source: EVT-000069
  event_time: "2026-07-27"
  record_time: "2026-07-27T09:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile 1.0, frozen 2026-07-24)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.2
- Start city: Chicago
- Campaign date: **2026-07-27** (Alexander's apartment and a nearby park, Chicago)
- Campaign state: session-2 in progress; rest day taken, third daily quest complete, a crew slot pending confirmation for the next day
- World Rule Profile: Gatefall 1.0 — **frozen 2026-07-24** (Rules Section 14.6, Decision 074): an immutable behavioral contract as of that date. `900_CHECKPOINT_0008` was captured 2026-07-26, after the freeze, but its manifest still carries the pre-freeze "workshop draft (unfrozen)" warning text written before the freeze was declared in the repository — a stale label on an otherwise-valid checkpoint, not a live contradiction. This checkpoint (`900_CHECKPOINT_0009`) is captured cleanly under the frozen profile.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0009/`

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~15 days).
- Status: Active, **Bearer** (System attached 2026-07-24, `EVT-000059`) — Level 2, XP 70/200, Health 40/40, Mana 20/20, 0 unspent stat points (Strength 16, Agility 12, Vitality 10, Perception 11, Intelligence 10), one deferred daily-quest grant banked (+3 stat points, full restore), gold 22,520 (undeclared, private), daily-quest streak 3/7. Full detail: `100_CHARACTER_SHEET.md` `system_state`. Perceptible to him alone; unknown to anyone else.
- Location: His apartment, Chicago (`ENT-000087`), morning, 2026-07-27.
- Condition: Health and Mana full. No lasting injury from either clear or job.
- Equipment: four E-grade items bought 2026-07-23, an E-grade armored greave from the Red Line boss drop (split undecided), a resonance chisel bought 2026-07-25, and — banked in the dimensional inventory, private — 10 lesser healing potions, 2 antidotes, a C-grade dagger, and an instant-dungeon key [E-band] bought 2026-07-26/27; $1,920 cash on hand, ≈$2,313 pending from the Red Line split, ≈$5,700 pending from the Cicero Scar harvest job, and ≈$24,663 pending from the Frozen Gallery harvest job (all 1-2 business days out); active BGM E-rank license. Full detail: `120_INVENTORY_AND_OWNERSHIP.md`.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); Red Line crew contract with Tanya Voss (`REL-000063`) closed; harvest-hire standing with a corporate-adjacent contractor (`REL-000064`) — two jobs complete; a pending fifth-slot arrangement with striker Priya Okafor's crew (`ENT-000136`, `REL-000065`) for a distinct unconfirmed E-D Gate, not yet confirmed or signed.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.

## Current Situation

The Red Line Corridor contract closed 2026-07-24; both C-grade harvest jobs (Cicero Scar, Frozen Gallery) closed 2026-07-25/26, with three USD payouts pending (≈$2,313, ≈$5,700, ≈$24,663) and 25,330 private System-shop gold accumulated across seven undeclared sales, entirely unknown to anyone. Alexander took a rest day on 2026-07-26 evening into 2026-07-27: he called the Coalition about striker/combat openings, bought a C-grade dagger and an instant-dungeon key from the System shop (gold 25,020 → 22,520), and privately drilled two techniques — confirming the pocket-dimension exchange is truly instantaneous, and rehearsing an unnoticeable mid-flourish switch from his old E-grade dagger to the new C-grade one. Neither was witnessed by anyone.

His third daily quest (issued 2026-07-27, 06:00) was completed at home and at a nearby park; its XP and streak applied automatically (streak 3/7, XP 70/200) while its stat/full-restore grant was deliberately deferred, banked for later. Separately, his 3 already-held unspent points went entirely into Strength (13 → 16). Mid-run, Kesha Morrison called back as promised: two E-D waiver-tier crew slots were open, and Alexander committed to striker Priya Okafor's crew for a distinct unconfirmed E-D Gate (timer breaking 2026-07-29 midnight), asking for a 9 AM staging time for the tentative 2026-07-28 start. Kesha is relaying the request and will confirm; nothing is signed yet.

The System is active day-to-day now: three daily quests completed (streak 3/7), one grant banked unclaimed. Still unknown to anyone but him — as is the full scale of what he's been skimming.

## Current Scene Anchor

Session 2 in progress. Alexander has finished his rest-day run and daily quest, 2026-07-27 morning, gold 22,520, 0 unspent stat points, one deferred grant banked, and a pending crew slot with Priya Okafor awaiting Kesha's confirmation — tentatively staging 2026-07-28 around 9 AM.

## Promotion Status

Session 2 in progress — **checkpoint `900_CHECKPOINT_0009` written** after the rest-day shop purchases, private practice, the third daily quest, the stat allocation, and the arranged (pending) crew slot with Priya Okafor, capturing all eight ledgers with a save manifest.

Ledgers promoted this session (`EVT-000069`): `100` (system_state stats/gold/XP/daily-quest/pending-grants fields, shop_holdings, notes), `120` (gold figure in prose updated), `130` (Priya Okafor `ENT-000136` added, `REL-000065` added), `140` (OBJ-8 opened), `160` (chronicle `EVT-000069`), `170` (changelog), `180` (this file). Registry advanced: `ENT-000136`, `REL-000065`, `EVT-000069`. Index (`system/WORLDS_AND_CAMPAIGNS.md`) updated to name the new latest checkpoint.
