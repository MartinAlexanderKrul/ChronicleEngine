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
  source: EVT-000081
  event_time: "2026-07-29"
  record_time: "2026-07-29T14:11:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile 1.6)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.2
- Start city: Chicago
- Campaign date: **2026-07-29, 14:11** (Alexander's studio apartment, Chicago)
- Campaign state: session-2 in progress; Ashfield Gate cleared, filing strategy agreed with Priya by phone, crew meeting at the Coalition **tonight at 18:00**
- World Rule Profile: Gatefall **1.6**, frozen 2026-07-29 (Rules Section 14.6, Decision 074) — migrated 1.1→1.2 (`EVT-000072`), 1.2→1.3 (`EVT-000073`), 1.3→1.4 (`EVT-000074`), 1.4→1.5 (`EVT-000078`), and 1.5→1.6 (`EVT-000082`). Profile 1.6 changes the daily deadline from 24 hours after issuance to midnight on the issue date; Alexander's active fifth daily retained all progress and now expires at 2026-07-30 00:00 local. The migration consumed no fictional time and re-resolved no past exchange.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0013/` — captured under frozen Profile **1.5** in Alexander's apartment on the afternoon of 2026-07-29, between the Gate's clear and the crew's filing meeting. Restoring it now requires the explicit **1.5→1.6 migration** recorded in `EVT-000082`; the live ledgers have already adopted it. Earlier checkpoints remain immutable: `0012` sits at the bar immediately after the clear; `0011` predates the 1.5 migration and the boss fight; `0010` is a 1.1 capture needing the full 1.1→1.2→1.3→1.4→1.5→1.6 chain.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~16 days).
- Status: Active, **Bearer** (System attached 2026-07-24, `EVT-000059`) — **Level 7 / System tier E**, XP **40/700**, Health **80/80**, Mana **38/38**, **15 unspent stat points**; base Stats **Strength 25 / Agility 23 / Vitality 17 / Perception 20 / Intelligence 19**; equipped-effective Stats **Strength 25 / Agility 32 / Vitality 20 / Perception 20 / Intelligence 19** (`EVT-000080`). Three level-ups settled in one instant on the boss kill. Pending daily rewards: Ability Points +3 and **three unopened Daily Random Boxes** — the Status Recovery was **claimed and spent** mid-fight (`EVT-000079`). No level-up grant remains pending. Gold 22,520 (undeclared, private, unchanged this clear); consecutive daily streak **4**. Full detail: `100_CHARACTER_SHEET.md` `system_state`. Perceptible to him alone.
- Location: His own studio apartment, Chicago, 14:11 on 2026-07-29 — alone; Owen left around 13:20 to change and eat.
- Condition: Health and Mana full under the Level 7 maxima. **No injury** — the Severe left-rib wound the boss inflicted was cleared outright by Owen's mender touch under Profile 1.5 (`EVT-000080`), the first exercise of that rule. Rested (roughly fourteen hours' sleep) and freshly worked out; sweating, unshowered, and unfed beyond eggs.
- Equipment: **C Quickknife main hand (Agility +7, weapon power 7), E Quickknife off hand (Agility +2, weapon power 2 — recovered from the boss's shoulder seam at the clear), E Bastion jacket/gauntlets/shin guards equipped (Vitality +3 total; three multiplicative 3% reductions = 8.7327%, display 8.7%)**. A higher-grade weapon adds power to Alexander's own Strength-based magnitude; it does not lend C-grade Health, defense, accuracy, or rank. Head, feet, and both accessories empty. The E Bastion armored greave remains stored, unequipped, ownership-undecided; an E Channeling Focus (Intelligence +2, focus power 2) sits banked and unequipped — main hand occupied, and no skill known that would use focus power. **The resonance chisel is broken** (`EVT-000080`) and needs replacing at $80. Also held: 9 lesser healing potions (one given to Priya), 2 antidotes, E instant-dungeon key; $1,920 cash and ≈$2,313 / ≈$5,700 / ≈$24,663 pending across three prior jobs; active BGM E-rank license. **Crew loot pending split, not yet his:** 16 C-crystals, 2 C-cores, Longshot [C]. Full detail: `100_CHARACTER_SHEET.md` and `120_INVENTORY_AND_OWNERSHIP.md`.
- Daily Premium: **the cycle rotated at 06:00 on 2026-07-29 and its new stock has not been viewed** — the Section 12.5 rolls resolve when Alexander next opens `/system shop`. The previous cycle (Spellthread Focus [E], Adaptive Watcher Torso [C], Ascendant Heartward Sigil [D], Quicksilver Phial, Dagger Mastery Rune [E], Runic Key [D]) lapsed **entirely unpurchased**.
- Daily quest: the fifth issued 06:00 on 2026-07-29 and was dismissed unanswered while he slept. Calisthenics completed at 13:30 — **push-ups 100/100, sit-ups 100/100, squats 100/100; the 10 km run remains outstanding**. Profile 1.6 migrated its deadline to **midnight tonight, 2026-07-30 00:00 America/Chicago** (`EVT-000082`). Streak 4 advances only on completion; incomplete at midnight resets it and triggers the penalty-zone transfer at his System tier.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); Red Line crew contract with Tanya Voss (`REL-000063`) closed; harvest-hire standing with a corporate-adjacent contractor (`REL-000064`); fifth-slot membership on striker Priya Okafor's crew (`ENT-000136`, `REL-000065`), its contract complete and unfiled. **New: a personal relationship with Owen (`ENT-000139`, `REL-000066`)** — the crew's C-rank mender, the man who cleared his injury, and the only person alive who knows there is something about Alexander to know.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.
- **Exposure note — partially answered, and now personal.** Owen (`ENT-000139`) has witnessed four unexplained things: the C-grade dagger appearing with no draw (twice), a killing hit walked off with no mender's touch, a potion produced from nowhere, and — by his own hands — a genuinely broken rib in a body that read as unharmed. He laid all of it out unprompted (`EVT-000080`), stating he is **not confused** and will not later invent an explanation. **Alexander answered him in part** (`EVT-000081`): that something happened to him and he does not understand it either — the closest he has come to naming the System to anyone. Owen refused to press, observed that nobody in this world knows what awakening *is* (including him, about his own gift), and **released Alexander from his promise to explain**, substituting "when you want to, if you want to." The System itself remains unknown to him and to everyone (Section 14.4). The thread is now carried inside a personal relationship (`REL-000066`) rather than between colleagues, which makes it heavier rather than safer.

## Current Situation

Alexander's rest day (2026-07-26 evening into 2026-07-27) closed with a confirmed crew slot on striker Priya Okafor's five-hunter crew, arranged through Kesha Morrison, for a distinct posted Gate contract (assessed unconfirmed low-confidence D). On 2026-07-28 he completed a fourth daily quest en route to staging (streak 4/7; the grant's accept/defer prompt went unanswered when the scene moved on — left pending), met the rest of the crew for the first time (Julian, `ENT-000137`, graded-shotgun striker; Renata, `ENT-000138`, sensor; Owen, `ENT-000139`, mender), had his gear approved by Priya, and entered the Gate at 9 AM in the agreed rear support position beside Owen.

The Gate resolved **true grade C** on entry — one grade above the posting, a genuine mismatch for this waiver-tier crew — with archetype **Ashfield** (lingering burn-hazard air) and a population of 12 common C beasts, 1 C elite, and 1 C boss. The front line held the first wave cleanly (4 kills); a fifth beast broke through and Alexander fought it solo across five exchanges, taking a full grade-honest hit that dropped him to 0 Health — the first genuinely lethal moment of his career — before claiming one of his two then-pending daily-quest grants to recover instantly and finish the kill. The underdog-bonus kill XP (240) crossed him to **Level 3**; the resulting grant was deferred, joining the unanswered one from this morning (two grants banked at the time).

The Gate's elite closed next. Alexander read its attack pattern (a telegraphed lunge every third stride) and called it out; Priya's intercept attempt on that read **fumbled catastrophically**, leaving her wounded and the elite breaking through toward the rear. Alexander met it dual-wielding both daggers — old E-grade and the newly summoned C-grade — using his own calculated timing, landing a real counter-hit that stopped it short of both himself and Owen.

Before resuming the fight, Alexander allocated his 10 migration-era unspent stat points and opened one of four pending Daily Random Boxes, winning an unequipped E-grade Channeling Focus (`EVT-000075`). He then killed the elite across three further exchanges plus an automatic finishing blow, crossing to **Level 4** (`EVT-000076`). In the aftermath (`EVT-000077`) he confronted the crew over the earlier near-death; Owen apologized, Priya took formal responsibility for the formation gap, crew ranks were established (Priya D, Julian/Renata E, Owen **C**), and his rapport with Owen deepened markedly.

**The boss (`EVT-000079`, `EVT-000080`).** Alexander proposed finishing the Gate, took each crew member's objection seriously, and built the plan they adopted: unseen approach on Renata's exclusive read, Julian holding fire until the go, he and Priya rotating the boss's attention between them, Owen held back. He drew a healing potion from his dimensional inventory for Priya — his first banked item produced in front of witnesses. The approach and ambush went perfectly; a weak-point critical pulled the boss entirely off Priya. Then **two natural critical fumbles**: the first put him on one knee inside its reach for a 57-damage hit (**Health 68→12**) and a **Severe rib injury**, survived by claiming his pending Status Recovery; the second, on a body that could not plant, carried him into the open. He evaded, and **Owen cleared the injury outright** — the first exercise of the mender rule authored minutes earlier as Profile 1.5.

Whole again, Alexander read the boss's dead front limb as making every left turn slow and wide, ordered Julian to deny the ground beside Owen, and levered the shoulder seam apart when the boss turned onto that limb. It collapsed, tried to crush him with its own falling mass, and he went forward through the gap instead — pinning its last good limb beneath itself. The finishing blow needed no roll. **Boss killed; Gate cleared.** 1,280 XP crossed three thresholds at once: **Level 7, all base Stats +3, +15 unspent points, pools restored.**

Seven common beasts remained alive at the north wall, held absolutely by the standing barrier (Section 9.8), and the crew chose to leave them. Alexander extracted the boss core clean, recovered his E Quickknife, and led a harvest near the aperture that gave out fast — pushing the spent seam cost him two more fumbles, a shattered crystal, and his **resonance chisel**. Total haul: 16 C-crystals, 2 C-cores, and a **Longshot [C]** boss drop that Julian tried to hand straight to Priya and Alexander coldly redirected into the split.

**The report is deliberately unfiled.** Outside the collapsed Gate, Priya raised the problem: posted E–D, truly C, her signature on the line. Alexander advised against filing while everyone was spent, clarifying under pushback that he meant delay rather than falsification. Priya refused falsification outright but accepted delay and intends to file a **true** account of a mis-posted Gate — BGM's failure, not the crew's. Renata supplied the binding constraint: the C-grade loot declares the grade to any appraiser, so they can lie on the form or sell the material, never both. Owen noted he alone carries no legal risk and was not comfortable being quiet about it. **Nobody files, nobody sells, nothing splits until 2026-07-29 18:00.**

The System is active day-to-day. All four completed daily quests are normalized to the Profile 1.4 regimen: the missing squat sets were performed off-screen during the same recorded exercise periods. The streak remains 4 and continues to advance on completion or reset on failure, but grants no cache or multiplier. Dailies award no XP. The old pending bundle became Ability Points +3 and one Status Recovery, still unclaimed; three Daily Random Boxes remain unopened. Still unknown to anyone but him — as is the full scale of what he's been skimming.

## Current Scene Anchor

Session 2 in progress, **quiet, between obligations**. Alexander is alone in his studio at 14:11 on 2026-07-29, sweating from a just-completed calisthenics set, having taken Priya's call and secured her agreement to the "no hero" filing. Owen left around 13:20 to change and eat and will be at the Coalition by 17:50. Nothing is pressing yet.

Outstanding before 18:00: the **10 km run** to complete the daily quest, a shower, food, and a replacement **resonance chisel** from Diane at Ironbound on Milwaukee Avenue (twenty minutes on the Blue Line — a route he has previously made do double duty as the daily run). Also untouched and available: **15 unspent stat points**, three unopened Daily Random Boxes, and a Daily Premium cycle whose new stock he has not looked at.

At 18:00 at the Coalition: brief Julian and Renata in person as Priya required, settle the crew split, and let Priya file.

## Promotion Status

Session 2 in progress — **checkpoint `900_CHECKPOINT_0013` written** in the apartment at a quiet interval, capturing all eight ledgers with a save manifest.

Promoted checkpoint 0013 (`EVT-000081`) remains the latest immutable restore point, captured under frozen Profile 1.5. Live canon then adopted Profile **1.6** through `EVT-000082`: the fifth daily's progress stayed 100/100/100 and 0/10 km while its deadline moved to midnight. Registry is advanced through `EVT-000082` and `REL-000066`. Restoring checkpoint 0013 requires the explicit 1.5→1.6 readiness migration before play resumes; no new checkpoint was created by the rule migration.
