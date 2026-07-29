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
  source: EVT-000071
  event_time: "2026-07-28"
  record_time: "2026-07-28T09:45:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile 1.1)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.2
- Start city: Chicago
- Campaign date: **2026-07-28** (inside the Ashfield Gate, mid-combat, Chicago)
- Campaign state: session-2 in progress; mid-fight inside a Gate that resolved a full grade heavier than posted
- World Rule Profile: Gatefall **1.1**, frozen 2026-07-24 (Rules Section 14.6, Decision 074) — an **additive** upgrade over frozen 1.0, adding `GTF-OVR-003` (mana-borne damage against monsters: mundane firearms/blades/explosives deal ×0 damage to a monster; only an awakened wielder's strike or a mana-bearing weapon lands). Additive means no recomputation: checkpoints 0001–0009, captured under 1.0, restore under 1.1 unchanged. This checkpoint is the first captured directly under 1.1.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0010/` — captured **mid-combat**; restoring it resumes directly into the fight with the wounded elite still active.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~16 days).
- Status: Active, **Bearer** (System attached 2026-07-24, `EVT-000059`) — **Level 3**, XP 110/300, Health 40/40, Mana 20/20, 3 unspent stat points (Strength 16, Agility 12, Vitality 10, Perception 11, Intelligence 10), **two** grants banked (a leftover daily-quest grant and the fresh level-up grant, both +3 stat points/full restore, unclaimed), gold 22,520 (undeclared, private), daily-quest streak 4/7. Full detail: `100_CHARACTER_SHEET.md` `system_state`. Perceptible to him alone; unknown to anyone else.
- Location: Inside the Ashfield Gate (archetype), a Chicago posting, mid-morning 2026-07-28.
- Condition: Health and Mana full, restored via a claimed grant after taking a near-lethal hit (0/40) fighting a C-grade beast above his own band. No lasting injury.
- Equipment: four E-grade items bought 2026-07-23, an E-grade armored greave from the Red Line boss drop (split undecided), a resonance chisel bought 2026-07-25, and — banked in the dimensional inventory, private — 10 lesser healing potions, 2 antidotes, a C-grade dagger (now proven in combat, dual-wielded alongside the old E-grade one), and an instant-dungeon key [E-band]; $1,920 cash on hand, ≈$2,313 / ≈$5,700 / ≈$24,663 pending across three prior jobs; active BGM E-rank license. Full detail: `120_INVENTORY_AND_OWNERSHIP.md`.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); Red Line crew contract with Tanya Voss (`REL-000063`) closed; harvest-hire standing with a corporate-adjacent contractor (`REL-000064`); **active** fifth-slot membership on striker Priya Okafor's crew (`ENT-000136`, `REL-000065`) — confirmed and underway, mid-Gate.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.
- **Exposure note:** Owen (`ENT-000139`) has twice directly observed the C-grade dagger materialize in Alexander's hand with no draw, and separately watched him take a fatal hit and simply not be hurt — unremarked so far, but an accumulating, unconfirmed exposure thread (Profile Section 19).

## Current Situation

Alexander's rest day (2026-07-26 evening into 2026-07-27) closed with a confirmed crew slot on striker Priya Okafor's five-hunter crew, arranged through Kesha Morrison, for a distinct posted Gate contract (assessed unconfirmed low-confidence D). On 2026-07-28 he completed a fourth daily quest en route to staging (streak 4/7; the grant's accept/defer prompt went unanswered when the scene moved on — left pending), met the rest of the crew for the first time (Julian, `ENT-000137`, graded-shotgun striker; Renata, `ENT-000138`, sensor; Owen, `ENT-000139`, mender), had his gear approved by Priya, and entered the Gate at 9 AM in the agreed rear support position beside Owen.

The Gate resolved **true grade C** on entry — one grade above the posting, a genuine mismatch for this waiver-tier crew — with archetype **Ashfield** (lingering burn-hazard air) and a population of 12 common C beasts, 1 C elite, and 1 C boss. The front line held the first wave cleanly (4 kills); a fifth beast broke through and Alexander fought it solo across five exchanges, taking a full grade-honest hit that dropped him to 0 Health — the first genuinely lethal moment of his career — before claiming one of his two then-pending daily-quest grants to recover instantly and finish the kill. The underdog-bonus kill XP (240) crossed him to **Level 3**; the resulting grant was deferred, joining the unanswered one from this morning (two grants now banked).

The Gate's elite closed next. Alexander read its attack pattern (a telegraphed lunge every third stride) and called it out; Priya's intercept attempt on that read **fumbled catastrophically**, leaving her wounded and the elite breaking through toward the rear. Alexander met it dual-wielding both daggers — old E-grade and the newly summoned C-grade — using his own calculated timing, landing a real counter-hit that stopped it short of both himself and Owen. The elite is badly hurt but still active; Priya is recovering, wounded; the boss has not yet been encountered. Combat is ongoing.

The System is active day-to-day: four daily quests completed (streak 4/7), two grants banked unclaimed, three unspent stat points sitting unallocated. Still unknown to anyone but him — as is the full scale of what he's been skimming, and now compounded by Owen's two unremarked, unexplained observations this clear.

## Current Scene Anchor

Session 2 in progress, **mid-combat**. Alexander is inside the Ashfield Gate, elite wounded and active in front of him, Priya recovering nearby, Julian/Renata still engaged with whatever remains of the pack, boss unencountered. No exchange has resolved past the dual-dagger counter-strike.

## Promotion Status

Session 2 in progress — **checkpoint `900_CHECKPOINT_0010` written mid-fight** after the Gate's entry, the first-wave clear, Alexander's first solo kill above his own band and resulting level-up, and the elite's breakthrough and counter, capturing all eight ledgers with a save manifest.

Ledgers promoted this session (`EVT-000070`, `EVT-000071`): `100` (level/XP/unspent-points/pending-grants/daily-quest fields, extensive notes), `110` (unchanged this pass), `120` (unchanged this pass), `130` (Priya's entry updated; Julian, Renata, Owen added; `REL-000065` activated), `140` (OBJ-8 updated to in-progress with full Gate detail), `160` (chronicle `EVT-000070`, `EVT-000071`), `170` (changelog), `180` (this file). Registry advanced: `ENT-000137`, `ENT-000138`, `ENT-000139`, `EVT-000070`, `EVT-000071`. Index (`system/WORLDS_AND_CAMPAIGNS.md`) updated to name the new latest checkpoint.
