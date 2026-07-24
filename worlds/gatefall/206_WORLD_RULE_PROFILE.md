# Gatefall — World Rule Profile 1.0

**File:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`
**Class:** World rule content (Decision 062): authoritative on behavior in its declared scope; owns no Persistent Object.
**World:** Gatefall
**Profile Version:** 1.0
**Engine Compatibility:** 0.2.0; Data Model 0.1.2
**Status:** Active
**Compatibility Status:** workshop draft (Rules Section 14.6) — version 1.0 remains mutable while authoring iterates; a checkpoint captured under it carries an explicit *unfrozen — not save-trustworthy* warning. Freezing at the current version is a one-line owner declaration whenever iteration settles.

**1.0 authors the System in full — the mechanical law of a gate-and-System world of awakened hunters.** Gatefall is a world where every hunter's rank is fixed at Awakening and only one person in the world grows: the **Bearer** of the System. This profile governs how the Bearer levels, what stats and skills do, how mana and health resolve, how the daily quest and its penalty enforce the grind, and how the world's Gates, loot, and economy behave. It is authored across three parts; this file is the whole document as it stands. Sections 1–8 fix the progression core.

---

This document is Gatefall's declared **World Rule Profile** under `010_ENGINE_RULES.md` Section 14 and Decision 059.

It is **world rule content**: authoritative on behavior within its declared scope, owning no Persistent Object and carrying no identifier — as the Engine Rules are authoritative and identifier-free, and for the same reason. Rules are not state (Decision 062).

`200_WORLD_BIBLE.md` is this world's narrative canon. It describes; this document governs. Where the two disagree on a number or a mechanic, **this document is authoritative** (Rules Section 14.5).

Gatefall inherits Chronicle Engine behavior except where an override below declares otherwise. Undeclared behavior uses the engine default. **An undeclared conflict is a contradiction, not an override** (Rules Section 14.1).

Grades everywhere in this world are **E, D, C, B, A, S**, weakest to strongest.

---

# 1. Declared Overrides

## GTF-OVR-001 — Causal System Progression

- **Replaces/refines:** Rules Sections 5.3 and 5.7; Decisions 012, 013, 051, and 057 where they prohibit levels, XP, or a System from causing capability growth.
- **Scope:** The **Bearer** alone — the single living holder of Gatefall's diegetic System. Not awakened hunters generally: they do not level and nothing counts their growth (Section 2).
- **Activation:** Active while the character bears Gatefall's System.
- **Replacement:** Experience (XP) awarded for genuine resolved challenge is causal canonical state. Crossing a threshold causes a **level-up**, which grants allocatable **stat points** and restores Health and Mana in full. A spent stat point directly and permanently changes canonical capability. Skills acquired by rune, skill book, or ratified practice are canonical capability.
- **State/provenance:** The Bearer's character ledger records level, current XP, next threshold, unspent stat points, every stat and its allocations, the Mana pool maximum, every known skill, and the event or resolved challenge that awarded each XP gain.
- **Resolution:** Growth changes capability — and therefore modifier steps, costs, magnitudes, prerequisites, and available methods. **It never supplies the outcome of an uncertain action.** Uncertain actions still resolve on the d100 through Rules Section 4 and Decision 058. A level is never spent to buy a result.

## GTF-OVR-002 — System Vitality

- **Replaces/refines:** Rules Sections 6.8–6.10 and Decision 018 where they reject a universal health-point pool for a character.
- **Scope:** The Bearer's Health and Mana. Every other hunter, and every monster, uses the engine's **band health** for its effective grade (Section 6) and the engine injury model; only the Bearer carries a growing Mana pool (Section 5).
- **Activation:** Active while the character bears Gatefall's System.
- **Replacement:** The Bearer's Health and Mana are canonical current/maximum numeric pools. Damage removes Health after applicable reductions; casting and skill use remove Mana. At zero Health the Bearer is incapacitated and receives an outcome appropriate to the attack and established fiction — and in Gatefall, where death is final (Section 6.5), zero Health is where a campaign can end.
- **State/provenance:** The Bearer's character ledger records current/maximum Health, current/maximum Mana, active conditions, and the event provenance of each change.
- **Resolution:** The die resolves whether an uncertain attack or defense succeeds and its result band; established capability and protection then determine damage **after** that result. Vitality never reaches action resolution.

## Interaction

`GTF-OVR-001` and `GTF-OVR-002` are independent and compose without conflict. Progression (001) sets the capability values that vitality (002) consumes. Neither touches the die.

---

# 2. Scope: Who the Overrides Bind

Gatefall has one legendary exception and everyone else. The overrides bind only the exception.

| | Grows in play? | Governed by |
|---|---|---|
| **The unawakened** | No | Engine defaults |
| **Awakened hunters** (E–S rank) | No — rank is fixed at Awakening; capability is their rank band | Engine defaults |
| **The Bearer** | Yes — levels, stats, skills, growing pools | `GTF-OVR-001` and `GTF-OVR-002` |

There is exactly **one Bearer alive** in a world-line. Who that is, is campaign canon, not world rule content: this profile binds *the Bearer role*, and each campaign's ledgers name the entity that holds it. A forked world-line has its own Bearer with its own identifier (Decision 053) and inherits this profile unchanged.

**Every other character resolves as an ordinary engine character whose capability is their fixed rank band.** An NPC hunter is not given a stat sheet, a level, an XP total, or a Mana curve. "This is a licensed B-rank" is a complete mechanical description: it sets the band the character acts at (Section 6, Section 13) and nothing further is authored. Monsters likewise are described by grade alone. This scoping is the world's whole premise — Gatefall is not a world where the engine's progression model is replaced wholesale; it is a world that otherwise obeys the engine and contains one person the System is levelling.

---

# 3. Levels and Experience

Level, XP, and the next threshold are **tracked canonical Bearer state** (Decision 057). They are computed and recorded from the rules below, never estimated to a plausible figure. XP is awarded only for genuine resolved challenge (Section 6 of the engine; the die must have been live). There is **no level cap**.

## 3.1 The XP Threshold

The XP required to advance from level **L** to level **L+1** is:

```
threshold(L) = L × 100
```

Level 1→2 costs **100**, level 2→3 costs **200**, level 3→4 costs **300**, and so on. Excess XP carries into the next level; a level-up spends exactly the threshold and the remainder counts toward the following level.

| L→L+1 | 1 | 2 | 3 | 4 | 5 | 10 | 25 | 50 |
|---|---|---|---|---|---|---|---|---|
| XP to advance | 100 | 200 | 300 | 400 | 500 | 1,000 | 2,500 | 5,000 |

## 3.2 The Level-Up Grant

Crossing a threshold is a **level-up**. Each level-up **offers a grant** (Section 3.9 — the Bearer accepts or defers it; it is never applied automatically):

- **+3 stat points** (Section 4), allocatable by the Bearer once the grant is accepted; and
- **full restoration of Health and Mana** to their new maxima, applied at the moment of acceptance.

Stat points come from three sources and nowhere else: the level-up grant (+3), the **daily-quest completion grant (+3, Section 8.1)**, and item/title/skill rewards that state a specific bonus.

## 3.3 Kill XP by Threat Grade

Defeating a monster awards XP by the monster's threat grade. **Elite** monsters award ×2; a **boss** awards ×4.

| Grade | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| Kill XP | 10 | 25 | 60 | 150 | 400 | 1000 |

An elite of grade G awards twice the row value; a boss of grade G awards four times it (an E boss = 40, a C elite = 120).

**The underdog bonus.** Killing something stronger than you should be pays for the danger of it. The kill XP above is multiplied by a factor set by how far the slain creature's grade stands **above the Bearer's effective band** (the level ladder, Section 6.6) — the multiplier **doubles for each full grade of gap**:

| Creature's grade vs Bearer's effective band | Kill XP × |
|---|---|
| At or below the Bearer's band | ×1 (no bonus) |
| **+1 grade** above | **×2** |
| **+2 grades** above | **×4** |
| **+3 grades** above | **×8** |
| **+4 grades** above | **×16** |
| **+5 grades** (an E-band Bearer felling an S) | **×32** |

The factor applies to the creature's full kill value, elite and boss multipliers included, and is computed per creature at the moment of the kill. Worked examples for an **E-band** Bearer: a D common (25) at +1 → `25 × 2 = 50`; a C common (60) at +2 → `60 × 4 = 240`; a D boss (`25 × 4 = 100`) at +1 → `100 × 2 = 200`. A creature **at or below** the Bearer's band carries no bonus — an E-band Bearer killing an E gets the flat 10, and once he reaches C-band the E and D kills that once paid a premium pay only their base.

The bonus is self-limiting: a creature two or more grades above the Bearer hits far above his Health (Section 6.2) and can end him in an exchange, so the largest multipliers are earned at the edge of death — which is the point. It shrinks automatically as the Bearer's effective band climbs, so punching up stays a low-level engine of explosive growth and fades into ordinary kill XP as he becomes the thing others punch up against. The **Gate-clear milestone (Section 3.4) is not affected** — it is fixed by the Gate's grade and paid once, underdog or not.

## 3.4 Gate-Clear Milestone XP

Clearing a Gate — killing its boss, which collapses the Gate — awards a one-time **milestone** bonus in addition to the per-kill XP earned fighting through it. It is awarded **once per Gate**, on the boss kill, and never per attempt or per re-entry.

| Grade | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| Milestone XP | 70 | 150 | 320 | 700 | 1500 | 3200 |

## 3.5 Daily XP

The daily quest (Section 8) awards, on each completed day, **+10 XP** and a **daily grant of +3 stat points and a full Health/Mana restore** (offered, not auto-applied — Section 3.9). A **7-consecutive-day streak** additionally delivers a **Weekly Cache** — a reward box of items (Section 8.1). The streak resets on a miss. Full daily-quest, cache, and penalty rules are in Section 8.

## 3.6 Award Timing

XP is added the instant the exchange that resolves the challenge settles. The same exchange adds the XP, checks the threshold, registers any level-up, and fires the notification. If one action resolves several monsters, aggregate that action's XP and notify once. There is no pending-XP state and no later reconciliation. **A level-up's *grant* (stat points and full restore), by contrast, is a pending offer** the Bearer accepts or defers under Section 3.9 — the level and its threshold advance immediately, but the grant waits on acceptance.

## 3.7 Worked Example — A Fresh Bearer Clears an E-Gate

A newly awakened Bearer at **level 1** (XP 0/100, Mana 20/20) enters a confirmed E-Gate. Its population, rolled on the standard formula (Section 8 restates it; the full Gate rules are Section 9), comes up **10 common E beasts, 1 E elite, 1 E boss**.

- Ten common E kills: `10 × 10 = 100 XP`.
- One E elite (×2): `10 × 2 = 20 XP`.
- One E boss (×4): `10 × 4 = 40 XP`.
- E-Gate clear milestone (boss kill, once): `70 XP`.

Total earned in the clear: **230 XP**. Tracking against the thresholds: the first 100 crosses level 1→2 (a level-up — its grant of **+3 stat points** and a full Health/Mana restore is now *offered*, Section 3.9); the remaining **130** carries toward level 3, whose threshold is 200. The Bearer is now **level 2, XP 130/200**, with a **pending level-up grant**. If he accepts it mid-fight, he gains three unspent stat points and full pools that instant; if he defers, the grant waits and his pools stay where the fight left them — a real choice, since a banked grant is a full heal held in reserve.

During the fight the Bearer spends Mana on a skill (Section 7); a representative inline notification stream (Section 8 fixes the format) reads:

```text
Mana: 20 → 14/20
XP: 0 → 100/100
[SYSTEM] LEVEL UP — you are now Level 2. Grant available: +3 stat points · full Health/Mana restore. (accept / defer)
XP: 0 → 130/200
```

During the same fight an E beast lands a standard hit — one E standard-hit baseline, about a quarter of the Bearer's Health (Section 6.2). Because that single hit removes under 50% of his remaining Health and does not drop him below 25% of maximum, it inflicts **no injury** (Section 6.3); he takes the damage and fights on. Every number here is derived from Sections 3.1–3.4, 6.2–6.3, and the population formula; a Runtime resolves the whole clear — kills, XP, level-up, Mana spend, and whether a hit wounds — without a ruling.

## 3.8 Party XP Credit

Most clears are party clears, and the Bearer earns from them on the same genuine-challenge test that governs all XP (Section 3, opening): the die must have been live and the Bearer must have been a real participant in the fight.

- **Kill XP** (Section 3.3) goes to the Bearer for **any kill his live-die actions materially contributed to** — a killing blow, a landed hit, a skill, or a control or setup action the resolved exchange turned on. He need not land the last hit; he must have taken a genuine, resolved part in bringing the creature down. A kill he took no live-die part in awards him nothing, even when an ally in his party made it.
- **The Gate-clear milestone** (Section 3.4) settles on **any clear the Bearer fought through** — if he was a materially contributing member of the party that killed the boss, the once-per-Gate milestone is his, exactly as it would be on a solo clear. He need not strike the boss's own killing blow.
- **Pure spectating awards nothing.** A Bearer who stands back and lets a party clear around him has met no genuine challenge (Section 3, opening) and earns neither kill XP nor the milestone. Presence is not participation; the live die is the test.

## 3.9 Grants Are Offered — Accept or Defer

A **grant** is a bundle the System *offers* the Bearer; it is never applied on its own. Two grants exist, and both carry the same bundle — **+3 stat points and a full Health/Mana restore**: the **level-up grant** (Section 3.2) and the **daily-quest completion grant** (Section 8.1). A Weekly Cache (Section 8.1) is opened by the same accept action.

The offer renders as a System prompt the Bearer answers:

```text
[SYSTEM] LEVEL UP — you are now Level 2.
Grant available: +3 stat points · Health and Mana restored to full.
Accept now, or defer? (accept / defer)
```

- **The level and its threshold advance immediately** on crossing (Section 3.6); only the *grant* waits.
- **Accept** applies the whole bundle at that instant: stat points land in the unspent pool (Section 4.2), and Health and Mana refill to their maxima. Both the level-up grant and the daily grant carry the full restore.
- **Defer** leaves the grant **pending**; it does not expire. The Bearer may accept a pending grant at any later moment — between exchanges, after the fight, on a quiet night. Multiple pending grants may stack and be accepted together or one at a time.
- **Why it is a choice, not a formality:** a level-up grant holds a **full heal in reserve**, and accepting mid-fight is a tactical act — a clutch recovery timed to a killing exchange, or held back so a penalty-zone run or a boss's second phase still has it available. Deferring never loses anything; it trades an immediate refill for a heal on the Bearer's own clock.
- The System never force-applies a grant, never allocates points for the Bearer (allocation is always his, Section 4.2), and never heals him without acceptance. Pending grants appear in the `/system` status panel until claimed.

Only the Bearer's own System grants work this way; nothing about an NPC hunter changes (Section 13.1).

---

# 4. Stats

## 4.1 The Five Stats

The Bearer has five stats:

| Stat | Governs |
|---|---|
| **Strength** | Physical force: melee damage, lifting, grappling, breaking. |
| **Agility** | Speed and reaction: initiative, evasion, closing or breaking distance, acting first. |
| **Vitality** | Endurance and resistance: shrugging wounds, surviving hazards, holding out. |
| **Perception** | Senses and appraisal: detection, reading ambush and anomaly, gauging a Gate's true grade. |
| **Intelligence** | Mental acuity and System interface: analysis, appraisal of items, concurrent quest capacity. |

An ordinary awakened adult sits at a **baseline of 10 per stat**. The Bearer begins at campaign-creation values — the **authored creation array** — and raises stats only by spending stat points thereafter.

**The creation array.** At campaign creation the Bearer's five stats are set from a fixed civilian-range array: **five stats, each in the range 8–12, summing to exactly 50, with none above 12.** The average is the ordinary-adult baseline of 10, and the ±2 spread is the pre-System human variation the protagonist starts with — below the point where any modifier-step contribution or capability unlock (Sections 4.3–4.4) has yet been earned. No creation stat sits above 12: the Bearer opens as a civilian, and every point beyond that spread is growth the System has not yet granted.

## 4.2 Stat Points

A **stat point** is the allocatable unit of growth. Its sources are the **level-up grant** (+3, Section 3.2) and the **daily-quest completion grant** (+3, Section 8.1) — both offered under Section 3.9 — plus any item, title, or skill that states a specific point bonus. One stat point raises one stat by **1**. Allocation is permanent canonical capability; there is no respec unless a future authored in-world mechanism adds one with a cost. Points from an accepted grant sit in the Bearer's **unspent pool** until he allocates them; allocation may happen any time and is not itself an offer.

## 4.3 The Modifier-Step Rule

A **modifier step** is one 20-percentile-point adjustment to a d100 resolution, composed under engine rules (Rules Section 4.4; Decision 058). Stats feed the die through exactly one rule:

> **+1 modifier step per full 10 points in the stat that governs the action.**

At the baseline of 10 the governing stat contributes **+1 step**; at 20, **+2**; at 30, **+3**; fractional remainders below the next full 10 contribute nothing (a stat of 25 gives the same +2 as a stat of 20). Exactly one stat — the one whose domain the action falls in (Section 4.1) — supplies this contribution; an action outside all five domains takes no stat step. This contribution composes with band-gap and circumstance modifiers, and **the engine's net modifier remains capped at ±3** (Decision 058); the die still resolves the outcome. **Stats never replace the roll** — they establish how well the Bearer is positioned, not whether an uncertain action succeeds.

**The band-gap modifier.** When actor and opponent stand in different effective bands (Section 6.1, Section 6.6), the gap feeds the die directly: **−1 modifier step per full band the opponent stands above the actor, and +1 per full band below.** A same-band contest takes no band-gap step; a C actor against an A foe takes **−2**, and a C actor against an E foe takes **+2**. This step composes with the governing-stat step above and any circumstance step into the engine's **net ±3 cap** (Decision 058) — it never bypasses the die. Where Section 18.4 and any other section name a "band-gap modifier" or "band-gap penalty," this is the rule they invoke.

## 4.4 Capability Unlocks

At **30** and **50** in a stat, the Bearer crosses a **capability unlock**: a named, off-die ability that widens what actions are *possible*, distinct from the modifier-step contribution above. Unlocks are permanent once reached. Each of the five stats has one unlock at 30 and one at 50:

| Stat | At 30 | At 50 |
|---|---|---|
| **Perception** | **Grade-Sight** — read the true grade of any Gate at or below the Bearer's own effective band, converting an unconfirmed reading to confirmed by capability. | **Deep Sight** — read the true grade of a Gate up to one full grade above the Bearer's band. |
| **Agility** | **Pre-empt** — act on an ambush warning before the ambush lands, taking a normal action in the surprise exchange rather than being caught flat. | **Slipstream** — disengage or reposition once per exchange without granting an opponent a reactive strike. |
| **Strength** | **Overpower** — grapple, pin, or bull-rush a foe up to one band above the Bearer's own. | **Titan's Grip** — overpower or restrain a foe up to two bands above, and wield oversized or two-handed arms one-handed. |
| **Vitality** | **Shrug Off** — ignore the effect of minor wounds, continuing to act without their modifier-step penalty. | **Iron Constitution** — suppress the penalty of one serious wound until the scene ends, and halve the onset rate of grade-appropriate environmental hazards. |
| **Intelligence** | **Multitask** — hold +1 concurrent System quest slot beyond the default. | **Analyst** — hold a further +1 concurrent quest slot, and appraise the full effect of an unidentified rune, skill book, or core before use. |

Perception's two unlocks (Grade-Sight, Deep Sight) turn the Gate-assessment problem into a capability the Bearer can grow past; the world otherwise re-measures a Gate's grade only by instrument survey (Section 9). The "own effective band" both unlocks read against is the level ladder of Section 6.6 — Grade-Sight covers Gates at or below that band, Deep Sight one grade above it, so the range climbs each time the ladder does.

---

# 5. Mana

Mana is **tracked canonical Bearer state** (Decision 057): every cost and every tick of recovery is computed from the rules below and recorded, never estimated. Only the Bearer carries a Mana pool of this kind; other hunters' capacity is subsumed in their fixed rank band.

## 5.1 The Pool

The Bearer's maximum Mana is a closed-form function of level:

```
max_mana(L) = 20 + 5 × (L − 1)
```

Level 1 opens at **20**; each level adds **5** (level 2 = 25, level 5 = 40, level 10 = 65). The formula depends only on level, so any Runtime computes the maximum at any level directly, without replaying prior level-ups. The maximum is canonical state, recorded with the level-up event that caused it.

## 5.2 Recovery

- **Active** (moving, fighting, or under threat): **10% of the pool per hour**.
- **Resting** (safe, still, unpressed): **25% of the pool per hour**.
- **Level-up**: full restoration, immediately (Section 3.2).

Recovery is a percentage of the *maximum* pool, so a larger pool refills more total Mana per hour but takes the same wall-clock fraction to top off. Recovery is settled from elapsed fictional time before the next action reads available Mana; a narrated span of rest produces one settled Mana figure, not a tick-by-tick stream.

## 5.3 Running Dry

- A casting or skill whose cost exceeds current Mana is **unavailable** — it cannot be attempted until the Bearer has the Mana to pay it.
- At **0 Mana**, the Bearer suffers **−1 modifier step on all actions** until Mana recovers **above 25% of the pool**. This is exhaustion, not merely an empty counter, and it applies to physical actions as well as castings.

Mana gates whether a skill can be *attempted*; it never decides the result. The die resolves the attempt (Rules Section 4).

---

# 6. Vitality

## 6.1 Band Health

Every combatant in Gatefall — the Bearer, every NPC hunter, every monster — has **band health**: the engine's canonical current/maximum Health pool sized to its **effective grade band**. A creature's grade is a complete description of its durability; a "C-grade beast" has C-band health, a "B-rank hunter" has B-band health, and nothing further is authored per creature (Decision 020). The Bearer's effective band is the band his own capability sits in; NPC hunters and monsters use the band of their fixed grade.

This is the single vitality quantity the world runs on. `GTF-OVR-002` makes the Bearer's Health a growing tracked pool, but its *scale* is still band health for his effective band — the override governs how his Health is recorded and restored, not a separate numbering system. Damage, healing, and injury are all expressed as fractions of band health, so the world resolves combat in relative terms and needs no per-creature stat block (Decision 020).

**The band health table is canonical.** Each grade's band health is fixed at:

| Band | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| Band health | 40 | 100 | 250 | 600 | 1,500 | 4,000 |

The scale climbs **roughly ×2.5 per grade** — each band about two and a half times the one below — so a hit that is a fixed fraction of the attacker's band lands far harder as the attacker's grade rises. These are the canonical maxima a full-Health combatant of each grade carries. The **E-band 40** is the same figure Section 8.2's `HP: … /40` lines and Ren's `/system` panels (Section 15) already use; those remain correct as E-band readings. The Bearer's own maximum is read from this table for his current effective band (Section 6.6), restored in full on level-up (Section 3.2).

## 6.2 Damage

A hit's damage is built from the attacker's grade, the skill or strike that lands it, and the quality of the d100 result:

```text
damage = standard_hit_baseline(attacker's effective grade)   # ¼ of the attacker's band health
       × skill_multiplier                                    # the skill or strike ratio (Section 7)
       × result_multiplier                                   # by degree of success, below
       × (1 − total_reduction)                               # applied last, per GTF-OVR-002
```

- **Standard-hit baseline.** The baseline of a single ordinary hit is **one-quarter of the attacker's grade band health** (`band_health ÷ 4`). Damage rides the *attacker's* own band: a grade-C attacker's every hit scales to C-band health, a grade-A attacker's to A-band. Because a same-grade target has the same band health, a standard hit at standard success removes about **a quarter of a same-grade foe's Health** — so a matched fight takes roughly four clean hits, and the whole model resolves in relative terms without an authored HP table. **Cross-band, the baseline is read from the attacker's band on the canonical table (Section 6.1).** Worked one-liner: an E-Bearer with 40 Health (E-band) struck by a grade-D beast — say, in a mis-graded Gate — takes `¼ × 100 = 25` on a standard hit — 25 removed from his 40, which by Section 6.3 also inflicts an injury (over 50% of remaining Health). The beast's damage rode the D band because its baseline is a quarter of D-band health, not of the Bearer's.
- **Skill multiplier.** A skill or strike states its damage as a multiplier on the standard-hit baseline (Section 7): an unarmed or improvised strike is **×0.5**, a competent armed strike **×0.75**, and an authored skill carries its own ratio (Mana Bolt **×1.0**, and so on). A multiplier of ×1.0 *is* the standard-hit baseline.
- **Result multiplier — by degree of success.** The degree of success the d100 yields (Rules Section 4; Decision 011) scales the hit:

| Degree of success | Name | Multiplier |
|---|---|---|
| Partial success | graze | ×0.5 |
| Success | standard | ×1 |
| Strong success | strong | ×2 |
| Critical success | critical | ×4 |

A miss deals no damage. **Critical tails are always live** (Decision 052): a natural critical is a critical hit that no modifier can remove, and a natural fumble lands nothing.

- **Reductions apply last, and compose with `GTF-OVR-002`.** The die first resolves whether the hit lands and its degree; the multipliers above then set the raw magnitude; and only then is damage removed from Health **after** applicable reductions — exactly the "damage after reductions" order `GTF-OVR-002` declares. Reductions **multiply, never add** (`total_reduction = 1 − Π(1 − rᵢ)`, Section 7), so no stack of protections reaches immunity.

Healing reuses the same unit: a skill that "restores one standard-hit baseline" restores `band_health ÷ 4` Health.

## 6.3 Injuries

Losing Health is not the same as taking a lasting **injury**. A hit inflicts an injury when it is heavy enough to mark the body:

> A single hit that removes **≥ 50% of the target's remaining Health**, **or** drops the target **below 25% of its maximum Health**, inflicts an injury.

The Runtime assigns the injury's **severity** from the engine's four-tier taxonomy (`010_ENGINE_RULES.md` Section 6.8 — **Minor · Moderate · Severe · Critical**) given the hit's magnitude and the established fiction, and tracks it under the engine injury model (location, type, ongoing effect, treatment). An injury's modifier-step and capability consequences (Rules Section 6.9) persist until it is healed; restoring Health does not by itself clear it.

Untreated injuries heal on a tiered clock; professional (hospital) treatment **halves** the time at every tier. A healing-touch **mender's** care counts as professional care for this halving, priced as a hired session in Section 12.7:

| Severity | Untreated | Hospital / professional care |
|---|---|---|
| **Minor** | 1 day | ½ day |
| **Moderate** | 1 week | ½ week |
| **Severe** | 1 month | ½ month |
| **Critical** | 3 months, **with death risk absent treatment** | 6 weeks |

A **Critical** injury left untreated may kill the target before it heals — stabilization is not optional. Healing potions restore Health directly on the schedule authored in the economy (Section 12.5, per Anchor A7); a potion controls immediate bleeding and restores Health but does not by itself clear a wound's severity, which advances only through elapsed time and care.

## 6.4 Treatment Interaction

Direct Health restoration (a potion, a skill, a facility) and severity recovery are independent: restoring Health to full does not automatically clear an injury condition, and clearing a condition does not automatically restore Health. A fictional label ("bandaged", "rested") never upgrades care on its own; care advances only through a resolved treatment appropriate to the injury. New damage applies immediately and may worsen severity.

## 6.5 Death Is Final

**Death is death.** No resurrection, revival, or reincarnation exists in Gatefall at Profile 1.0. When the Bearer dies, the death is resolved and recorded normally, all System state remains with the dead Bearer and transfers to no one, and **the campaign hard-ends** — it becomes terminal under the Engine Rules. The System is patient on a scale its host is not; that a successor may one day be chosen is a matter for the world's hidden canon, never a continuation of the dead character and never a promise play may rely on. A Bearer who dies in an E-Gate is as dead as one who dies in an S-Gate. A **Critical** injury (Section 6.3) that goes untreated is one of the ordinary roads to that end.

## 6.6 The Effective Band Ladder

The Bearer's **effective band** — the grade band his own capability sits in (Section 6.1) — is set by his **level** on a fixed ladder. It is not his carded rank (which stays E until re-assessed, Section 19) and not a stat; it is the single derived grade the System resolves every band-relative quantity against.

| Level reached | Effective band |
|---|---|
| Creation (level 1) | **E** |
| 10 | **D** |
| 20 | **C** |
| 30 | **B** |
| 40 | **A** |
| 50 | **S** |

The band advances the instant the level-up that reaches a threshold settles (Section 3.2); between rungs it holds at the last band reached (a level-14 Bearer is D-band, a level-29 Bearer is C-band). The effective band is **canonical derived state**, read from level and never estimated.

The effective band is **normative** for every band-relative quantity the profile resolves for the Bearer:

- **Band health** (Section 6.1) — his Health pool is sized to his effective band on the canonical table.
- **The standard-hit baseline of his own strikes** (Section 6.2) — ¼ of his effective band's health.
- **Threat-color designation** (Section 14.6) — every creature is colored against his effective band.
- **Penalty-zone grade** (Section 8.3) — the sealed instance runs at his effective band.
- **Class-trial grade** (Section 18.2) — the trial's waves and final foe stand at his effective band.
- **Instant-dungeon "own band" keys** (Section 17, Section 12.5) — a shop key opens at his effective band.
- **Grade-Sight / Deep Sight range** (Section 4.4) — read relative to his effective band.
- **Band-gap modifier** (Section 4.3) — computed from his effective band against the opponent's.
- **What a Section 19.2 re-measurement reads** — the instrument reads the mana capacity his effective band carries, which is why it reads above his card.

Wherever any of those touch-points names "the Bearer's own band" or "his effective band," it means this ladder.

---

# 7. Skills

A **skill** is a named, canonical capability the Bearer has learned. Skills are the Bearer's active and passive techniques; each carries a name, a rank, a Mana cost (or "passive"), and an effect stated in modifier-step or damage-band terms so a Runtime resolves it without a ruling.

## 7.1 Acquisition

A skill enters the Bearer's ledger by one of three routes, and only these:

1. **Rune.** A rune dropped as loot (Section 11) teaches one authored skill on use, consumed in the teaching. Runes found at E- and D-tier Gates teach from the starting skill table below.
2. **Skill book.** A rarer drop teaching a specific authored skill, likewise consumed; skill books can carry skills above the rune tier (the full skill-book table is authored with loot in Section 11).
3. **Earned by doing.** An approach the Bearer uses **successfully in at least three distinct dangerous scenes** may be **ratified by the System as a skill** — the System recognizes a proven practice and formalizes it. Ratification requires genuine, resolved, at-risk use each time; trivial repetition does not count, and the three scenes must be materially distinct, not one tactic replayed. On ratification the skill is authored into the ledger with a name, rank, cost, and effect at the time it is granted.

## 7.2 Skill Entries

Every skill entry carries: **name · rank (E–S) · Mana cost · effect**. Effects are expressed as a modifier-step change, a multiple of the **standard-hit baseline** for damage or healing (Section 6.2), a damage-reduction fraction, or a stated capability — the same vocabulary the rest of this profile uses, so no skill needs a bespoke subsystem. Active skills cost Mana and are gated by it (Section 5.3); passive skills cost 0 and are always in effect.

## 7.3 Starting Skill Table

These eight skills are what a rune can teach at E- and D-tier. Costs are in Mana; effects resolve under Sections 4.3 (modifier steps) and 6.1 (band health).

| Skill | Rank | Mana cost | Effect |
|---|---|---|---|
| **Sprint** | E | 3 | +1 modifier step on movement, pursuit, and distance-closing actions for one exchange. |
| **Dagger Mastery** | E | Passive | Bladed light-weapon strikes deal a **×0.75** skill multiplier on the standard-hit baseline (Section 6.2), up from the ×0.5 of an improvised strike. |
| **Mend** | E | 6 | Restore Health equal to **one standard-hit baseline** (¼ band health, Section 6.2); controls bleeding but does not clear a wound's severity. |
| **Stone Skin** | D | 4 | 30% physical damage reduction while sustained; ends when Mana lapses or the Bearer drops it. |
| **Flash Step** | D | 8 | Close or break line-of-sight distance instantly once, granting +1 modifier step to the follow-up action. |
| **Keen Sense** | E | 2 | +1 modifier step on detection: spotting ambush, hidden foes, or anomaly for the scene. |
| **Silent Step** | E | 3 | +1 modifier step on stealth and unseen-approach actions for the scene. |
| **Mana Bolt** | E | 5 | A ranged bolt with a **×1.0** skill multiplier — one standard-hit baseline (Section 6.2) on a standard success; the die resolves whether it lands and its degree. |

Reductions from Stone Skin and any other source **multiply, never add** (`total = 1 − Π(1 − rᵢ)`), so no stack of skills reaches immunity.

## 7.4 Skill Mastery

A skill is not fixed the day it is learned — it **grows in the Bearer's hands with use.** Every skill is held at a **mastery level, 1 through 5** — Novice, Practiced, Adept, Expert, Master — starting at **Novice** when acquired. This is the Bearer's **second growth axis beside stats**: a much-used skill becomes formidable even at a low rank, the way a hunter's signature deepens over a career.

**Advancing.** A skill rises **one mastery level** after it has **materially contributed to the resolution of three distinct dangerous scenes at its current level** — the earned-by-doing rigor of Section 7.1: genuine, resolved, at-risk use each time; trivial repetition does not count, and the three scenes must be materially distinct. Reaching Master therefore takes twelve qualifying scenes across a skill's life. The System advances mastery automatically on the third qualifying scene and fires a Tier-1 notification (`[SYSTEM] SKILL MASTERY — Mana Bolt is now Adept.`).

**What each level above Novice improves** — two axes, both closed-form:

- **Magnitude**, by one grade of the skill's own effect per level:
  - a **damage or healing** skill's multiplier rises **+0.15** (Mana Bolt ×1.0 at Novice → **×1.6 at Master**; Mend heals ¼ band → ~0.4 band at Master);
  - a **reduction** skill's fraction rises **+5 points** (Stone Skin 30% → **50% at Master**);
  - a **modifier-step or utility** skill — already capped at +1 step (Section 4.3) — instead **lengthens**, its effect covering one further exchange per level and reaching the **whole scene at Master**, or widening to one stated additional target.
- **Mana cost**, **−10% per level** (rounded, minimum 1): a 5-cost skill runs 5 → **3 at Master**; passive skills stay 0.

**Rendering.** The `/system` skills line carries the mastery: `Mana Bolt [E] ★★★★☆ · Mana 4 · ×1.45` (Expert, four of five). Mastery is read from the skill's ledger entry like every other value (Section 15) and is never estimated.

Mastery raises a skill's power, never its **rank** — an E-rank Mana Bolt mastered is still an E-rank skill, just a lethal one. Rank reflects the tier it was learned at (Section 7.1); mastery reflects the hands that carry it.

---

# 8. The Daily Quest and Penalty Zones

The System issues the Bearer a **daily quest** — a training regimen with a hard deadline and a real cost for failure. It is the world's mechanism for keeping the Bearer growing between Gates, and its penalty is the sharpest edge the System shows in ordinary play.

## 8.1 The Daily Quest

Once per in-fiction day the System issues the quest, rendered in a bracketed System block:

```text
[SYSTEM] QUEST ISSUED — DAILY TRAINING
Objectives: 100 push-ups 0/100 · 100 sit-ups 0/100 · 10 km run 0/10
Reward: +3 stat points · full restore · +10 XP · streak 4/7 → Weekly Cache at 7
Warning: failure to complete within 24 h transfers you to a penalty zone.
```

- **The regimen** is fixed: **100 push-ups, 100 sit-ups, and a 10 km run**, completed within a **24-hour window** from issuance.
- **Reward on completion:** a **daily grant of +3 stat points and a full Health/Mana restore** (offered under Section 3.9, not auto-applied) and **+10 XP** (Section 3.5), and progress on the **streak**.
- **Streak → Weekly Cache:** every **7 consecutive completed days** delivers a **Weekly Cache** on the seventh, and again every further seven days. **A single missed day resets the streak to zero.**

Completion is genuine effort, not a checkbox — the objectives are physical work the Bearer must actually do in the fiction. The System tracks progress against each objective (the `0/100` counters advance as the work is done) and resolves the quest as completed or failed at the window's close.

### The Weekly Cache

A Weekly Cache is a System reward box — it must be **opened** (accepted, Section 3.9), and on opening it rolls its contents on a d100 at the Bearer's **effective band** (Section 6.6). Items arrive at that band and follow their own sections (potions Section 12.5, runes and skill books Section 11, elixirs Section 12.5's lifetime cap):

| d100 | Weekly Cache yields |
|---|---|
| 01–35 | A **potion cache** — 3 potions at the Bearer's band tier (healing/mana mix). |
| 36–60 | **System gold** — a purse of `500 × band-tier` gold (E=500, D=2,000, C=8,500 …, scaling with the shop's core buy price, Section 12.5). |
| 61–80 | A **rune** teaching one authored skill (Section 11.3 table) at the Bearer's band. |
| 81–93 | A piece of **graded gear** at the Bearer's band (Section 11.5). |
| 94–99 | A **skill book** (Section 11.3) — a fuller technique with a growth path. |
| 00 | An **elixir** (+1 permanent to one stat, Section 12.5's lifetime cap applies). |

The cache is the Bearer's alone (no other hunter earns one), and a milestone streak — every **28th day** (a fourth consecutive cache) — rolls **twice and keeps the better**. Cache contents are authored here and adjustable by owner ruling; nothing in a cache exceeds what the loot and shop tables already price, so it enriches progression without breaking the economy.

## 8.2 Inline System Notifications

During prose, ordinary numeric changes render as compact single lines showing the change and the new standing:

```text
XP: 40 → 90/300
Mana: 25 → 13/45
HP: 34 → 21/40
```

Each shows `before → current/maximum` (for XP, `current/next threshold`). Render each changed quantity once per resolved action. The full daily-quest and level-up blocks retain their bracketed form because they communicate more than a number. (The complete System-voice contract and every `/system` panel are authored in a later section.)

## 8.3 The Penalty Zone

If the 24-hour window closes with the quest incomplete, the System **transfers the Bearer into a penalty zone**: a sealed survival instance he does not choose to enter and cannot leave early.

- **Duration:** a **4-hour survival instance**. The Bearer survives it or dies in it; there is no other exit and no retreat.
- **Grade:** the instance runs at the **Bearer's own effective band** (the level ladder, Section 6.6) — it scales with him, so it never stops being dangerous as he grows.
- **Population:** populated per the standard Gate population formula at the Bearer's effective grade **G**:

  ```text
  3d6 common beasts (grade G)
  + 1d2 elites (grade G, ×2 band health)
  + 1 boss (grade G, ×4 band health)
  ```

  (Section 9 restates this formula as the general rule for all Gates; it is reproduced here because a penalty zone must be fully resolvable from this section alone.)
- **XP and leveling are full and normal.** Every kill in the penalty zone awards its ordinary kill XP (Section 3.3) and that XP counts toward leveling exactly as anywhere else: thresholds cross, level-ups register, and their grants (+3 stat points and a full restore) are offered under Section 3.9 in the instance itself. The penalty zone is dangerous, not barren — a Bearer who fights hard climbs out of it stronger, which is the trap's other edge.
- **No material loot.** What the zone withholds is *loot*, not growth: it drops **no crystals, cores, runes, gear, keys, or currency**. There is nothing to sell and nothing to carry home — only levels earned in blood. It punishes by making the Bearer pay in risk for XP he could have earned safely by doing his push-ups.
- **Exit:** the instance ends and returns the Bearer to the world on **surviving the full four hours**, or **early on killing the zone's boss** — a boss kill collapses the instance like any Gate (Section 9.7) and awards the **Gate-clear milestone XP at grade G** (Section 3.4), the one milestone the zone does pay. Death inside it is death (Section 6.5), and the campaign ends there.

The penalty is deliberately not a fine or a debuff: missing the daily quest drops the Bearer, alone, into a fight at his own band that he did not pick. That is the System being indifferent to his convenience — the daily quest is an order, and refusal has teeth. That the teeth also make him stronger is exactly the System's logic: it does not fine failure, it *forces the training the Bearer skipped*, at knifepoint.

**Deferred transfer from inside a sealed instance.** If the 24-hour window closes while the Bearer is inside a **sealed instance** — a red gate (Section 9.6), an instant dungeon (Section 17), or the class trial (Section 18.2) — the penalty transfer **cannot fire** while that seal holds: there is no exit, and the System does not drop him into a second sealed instance atop the first. The failed quest is recorded and the transfer **defers**; the instant the Bearer exits the sealed instance, the penalty-zone transfer **fires immediately**, before the next daily quest issues. The deferral spares him nothing — it only waits for a door.

---

# 9. Gates

A **Gate** is a breach between the world and a dungeon instance. Every Gate has a grade (E–S), a detection timestamp, an interior archetype (Section 10), and a population (below). This section fixes how a Gate is measured, staffed, resolved, and — if it is left too long — how it breaks.

## 9.1 Spawn Rates

Gates open continuously; the two campaign cities open at very different rates.

| Metro | Gates per week (approx.) |
|---|---|
| **Chicago metro** | ≈ **35** |
| **Prague** | ≈ **8** |

These are aggregate rates across the metro, not a schedule; the Runtime distributes them into the fiction as needed and does not roll a fixed calendar.

## 9.2 Grade Frequency

When a Gate opens, its true grade follows this distribution:

| Grade | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| Frequency | 50% | 25% | 15% | 7% | 2.5% | 0.5% |

Most Gates are E and D; an S-Gate is a once-in-a-long-while, world-news event.

## 9.3 Break Timers

From detection, an uncleared Gate runs a countdown to a **dungeon break** (Section 9.8). Higher-grade Gates break faster — the pressure behind them is greater.

| Grade | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| Days from detection to break | 7 | 6 | 5 | 4 | 3 | 2 |

The timer starts at detection, not at first entry. A Gate cleared before its timer expires closes safely on the boss kill; a Gate whose timer runs out breaks.

**Why the worst Gates give the least warning.** The timer is not a schedule; it is the barrier failing. A Gate's countdown is read from its mana pressure (the same reading that grades it), and a higher-grade interior strains harder against the barrier that contains it — an E-Gate is a sealed jar, an S-Gate an overpressured boiler. This is the single fact the world's hunter politics is built on: no state can *assemble* an S-response inside two days, so an S-Gate is answered by whoever is already in range — which is why S-ranks are pre-positioned strategic assets counted by name, why the S-rank draft binds them to emergency mobilization, why a state with one S-rank guards where that one sleeps, and why an S-Gate beyond the reach of a standing response becomes a Jiu Valley. An S-Gate response is never "every S-rank in the country"; it is the nearest adequate force plus military containment of whatever the force cannot reach in time.

## 9.4 Party Minimums — Law and Practice

Regulation sets the minimum sanctioned party to legally enter a Gate by grade; the trade's posting floors sit above the law at every grade. Entering under the **legal minimum** is an offense in both jurisdictions (Section 13). **Posting floors** are enforced by the boards themselves: no licensed board — BGM auction, co-op desk, or guild dispatch — posts a contract below its floor, and none accepts a solo bid on an unconfirmed Gate or any Gate assessed D or above.

**The legal minimum is a *combat* requirement.** Every count in the "legal minimum" column below means **combat-rated hunters of adequate rank** — the strike element that must be able to fight the Gate's population (Section 9.7). It says nothing about the total headcount that walks through the mouth.

| Grade | Legal minimum — combat-rated hunters | Posting floor (total, incl. support) |
|---|---|---|
| **E–D** | None (a lone licensed hunter may enter) | **8** — a strike element of ≥5 plus support (waiver floor: 5, see below) |
| **C** | 4 (rank C-capable) | 10–12, strike + support |
| **B** | 8 (rank B-capable, incl. ≥1 B) | 14–18 |
| **A** | 16 (incl. at least one A-rank) | 24–32 |
| **S** | National-asset operation (state-directed) | State-directed |

The gap between the columns is deliberate: the legal floor is the fighting strength; the posting floor is the fighting strength **plus the support crew who make a clear pay.**

**Support crew may be any rank — even far below the Gate's grade.** Miners, harvesters, and porters do not fight, so they are not held to the combat requirement. They ride in **under the strike element's protection**: they cross the mouth after the line has secured ground, work only in the zones the fighters have cleared, and withdraw the moment the line moves or bends. An **E-rank can legally and sensibly work a C- or B-Gate** — cutting crystal worth a fortune he could never earn fighting — precisely because he is not there to fight. The strike element carries the combat rating for everyone; the support crew carries the tonnage out. This is the arrangement that puts a weak hunter on a strong Gate and pays him for it.

**This is what most low-rank hunters actually do.** The world's floor is not a floor of weak *fighters* — it is a support tier. Most E- and D-ranks make their living as **miners, harvesters, and gear-porters** on higher-grade clears, not as front-line strikers expected to trade blows with beasts that would kill them. Fighting below one's safe grade is the *exception* an ambitious hunter chooses; the ordinary career of a low-rank licensed hunter is support work, and it is honest, needed, and dangerous enough — a support crewman caught when a line breaks dies exactly as a striker would (Section 9.8). A standard clear therefore fields a **strike element** (combat-rated, Section 13.5) and a **support element** (any rank — miners cutting the deposits of Section 11.1, plus porters who haul loot and carry the fighters' spare gear and consumables), the support paid a harvest share rather than a full combat split (the standard support-contract terms — 20% of the clear, output-weighted — are Section 13.2).

**The under-strength waiver.** A low-rate E- or D-contract that has sat undersubscribed may post under a signed under-strength waiver at an absolute floor of **five** — no support element, everyone doubling roles, every signature acknowledging the risk. Cheap jobs sit, and thin crews take them; the waiver tier is where the trade's casualties concentrate, and everyone signing one knows it. Hunter insurance is void from the moment a hunter crosses a threshold alone. Solo entry of a populated Gate remains *legal* at grades E–D — as a matter of law, the government does not stop anyone from dying — and is understood by the entire trade as desperation or a death wish; the Lone Clear title (Section 16) is legendary precisely because its feat is one the working world considers suicide. The solo format that actually exists is not a Gate at all: it is the instant dungeon (Section 17), and it belongs to exactly one person on Earth.

## 9.5 Confidence and the True Grade

An assessed grade carries a **confidence**:

- **Confirmed** — established by an instrumented survey. The survey drone or licensed surveyor has read the interior; the grade and archetype (Section 10) are known before entry.
- **Unconfirmed** — a remote reading only (mana-flux magnitude read from outside). The grade is a best estimate and the archetype is unknown.

A **confirmed** Gate is entered at its stated grade. An **unconfirmed** Gate resolves its true grade on the **first entry**, on a d100:

| d100 | True grade |
|---|---|
| 01–15 | One grade **lower** than assessed |
| 16–70 | **As assessed** |
| 71–92 | One grade **higher** than assessed |
| 93–00 | **Anomaly** — roll on the anomaly table (Section 9.6) |

The Bearer's Perception unlocks (Section 4.4: **Grade-Sight** at 30, **Deep Sight** at 50) convert an unconfirmed reading to confirmed by capability, within their band range, and so bypass this roll.

**The ladder clamps at both ends.** The true-grade roll can point past the ends of the E–S ladder; when it does, it resolves to the nearest real grade rather than an impossible one:

- A result **below E** (a "one grade lower" on an assessed-E Gate) resolves as **E** — there is no sub-E Gate; the remote reading was merely generous, and the interior is a true E.
- A result **above S** (a "one grade higher" on an assessed-S Gate) resolves as an **S-grade anomaly**: treat that 71–92 outcome as though it had rolled 93–00 and roll on the anomaly table (Section 9.6). There is no supra-S grade, so the excess pressure surfaces as an anomaly instead.

## 9.6 The Anomaly Table

A 93–00 on the true-grade roll is an **anomaly**. Roll again on a d100:

| d100 | Anomaly |
|---|---|
| 01–50 | **Population one grade above** the assessment (grade as assessed, but populated as the next grade up). |
| 51–80 | **Red gate** — the Gate seals on entry and cannot be exited until its boss dies; there is no retreat. |
| 81–95 | **Archetype twist doubled** — the interior archetype's mechanical twist (Section 10) applies at double effect. |
| 96–00 | **Dungeon-break-in-progress on arrival** — the Gate is already breaking (Section 9.7); its population is pouring out as the party arrives. |

## 9.7 Population

**A Gate is populated by default. Emptiness is an authored exception carrying an in-world cause — and in Gatefall, an empty-looking dungeon is itself a warning sign.**

Every Gate of grade **G** is populated on this formula:

```text
3d6 common beasts (grade G)
+ 1d2 elites (grade G, ×2 band health)
+ 1 boss (grade G, ×4 band health)
```

- **Common beasts** have plain grade-G band health (Section 6.1) and award grade-G kill XP (Section 3.3).
- **Elites** carry **×2** band health and award **×2** kill XP.
- The **boss** carries **×4** band health, awards **×4** kill XP, and deals damage at **its own grade's baseline** like every other creature of its band (Section 6.2) — a grade is an honest statement of what hits you; a D-Gate's boss hits like a D. Killing the boss **clears the Gate** — it collapses the instance and awards the Gate-clear milestone XP (Section 3.4).

**A boss fights with a signature.** A boss is never a bigger common. At instantiation it carries one authored **signature method**, consistent with its form and the Gate's archetype — a sweeping tail that threatens everything in its arc, a breath that fills a corridor, a burrowing charge, a coil-and-drown — capable of endangering **several hunters in a single exchange**. Each endangered hunter resolves against it separately (own roll, own damage at the boss's band); the signature multiplies *who is in danger*, never the per-hit number. And a boss is played with the cunning of an apex thing on its own ground: it ambushes, uses terrain, and picks targets — the mender first, the wounded first — rather than trading blows with whoever stands closest. Its menace is reach, endurance, intent, and the fact that nothing closes the Gate but its death; grade honesty holds at every point of contact.

An empty or under-populated interior is never a lucky break; it is an authored signal that something has already emptied the Gate — a break in progress, a prior party wiped, or a worse thing feeding. The Runtime treats emptiness as a clue, not an absence.

**The clear window.** Killing the boss does not snuff the instance around the victors — it begins the collapse. From the moment of the boss's death the interior holds stable for **two hours**: the window in which a party loots the dead (Section 11), treats its wounded, and walks out the way it came. Section 13.2's loot-declared-at-exit procedure presumes this window. When it ends, the mouth closes and the interior ceases to exist; anyone still inside is lost with it, and no one has ever come back. The window is two hours at every grade. Ordinary hunters work it by watch and hard-learned habit; the System, which holds Gate state (Section 14.4), surfaces the countdown to its Bearer. A hunter may also exit a standing, uncleared Gate through its mouth at any time — the threshold bars the unawakened inward and beasts outward (Section 9.8), never the awakened out — except inside a red gate (Section 9.6), which seals until the boss dies.

## 9.8 Dungeon Breaks

While a Gate stands, its barrier contains what lives inside: beasts can no more pass the threshold outward than the unawakened can pass it inward. Only a break dissolves that barrier.

If a Gate's break timer (Section 9.3) expires before the Gate is cleared, the Gate **breaks**: its barrier fails and its **remaining population** — every monster not yet killed, boss included — pours out into the surrounding area, where it fights with none of the containment a sealed instance provides. A break is the disaster the whole regulatory apparatus exists to prevent.

**Hunters inside at the break are expelled with everything else.** The failing barrier holds nothing back, beast or hunter: a crew still inside when the timer lapses lands at the Gate site — alive if they were alive inside, wounds and all — amid the entire remaining population, in the open, with no containment and the city behind them. Ejection is survivable in principle; what follows usually is not, because the crew now stands at the center of the break it failed to prevent.

**A break spends the Gate.** The release is one-time: the barrier's failure empties the interior, and the mouth collapses once nothing remains for it to hold. A broken Gate leaves no standing portal, no instance to clear, and nothing to close — what it leaves is its released population loose in the world (the Jiu Valley Exclusion is what that population does afterward, not an open wound still feeding).

Response follows a fixed escalation order by jurisdiction:

| Jurisdiction | Response order |
|---|---|
| **Chicago** | BGM **emergency contract** issued → **nearest guild strike team** dispatched under it. |
| **Prague** | **CGA** mobilizes → **Karlov Guild** or the **nearest international branch** dispatched. |

The remaining-population rule means a Gate broken early (few kills made) is far worse than one broken after a party has fought most of the way through — what pours out is exactly what was left inside.

## 9.9 Worked Example — An Unconfirmed D Reads Worse

A Red Line contract posts an **unconfirmed D-Gate**. Because it is assessed D, no legal minimum applies (Section 9.4) and a small crew takes it.

1. **Confidence → true-grade roll.** Unconfirmed, so the true grade resolves on first entry (Section 9.5). The d100 comes up **84** (71–92): **one grade higher**. The Gate is truly **C**, not D — and a C-Gate legally requires four licensed hunters. The crew is already in an under-strength, illegal entry without knowing it.
2. **Population.** At grade C the formula (Section 9.7) rolls **3d6 = 11 common C beasts, 1d2 = 2 C elites, 1 C boss** (×4 band health).
3. **Archetype.** Unknown on entry because the Gate was unconfirmed (Section 10); it reveals as **Crypt** (d8 = 1) — darkness, so Perception checks to avoid ambush.
4. **Clear.** The crew fights through and kills the boss; the two-hour clear window (Section 9.7) opens, and they loot and walk out well inside it. Kill XP and the C-Gate milestone (320 XP, Section 3.4) settle on the boss kill.
5. **Loot roll.** Eleven C-crystals drop (one per beast, Section 11); the two elites and the boss each drop a C-core (three cores). The boss-drop d100 (Section 11) comes up **52** (41–65): a **rune** teaching one authored skill.
6. **Sale.** At licensed market prices (Section 12): 11 C-crystals × **$2,500 = $27,500**; 3 C-cores at ≈2.5× the C-crystal price (**$6,250** each) = **$18,750**. The clear grosses **≈ $46,250** in sellable crystal and core, plus the rune, which the Bearer keeps to learn a skill rather than sell.

Every step above is resolved from the tables in Sections 9, 11, and 12 — the Runtime took the Gate from posting to sold loot without inventing a single number, and the "easy D" that was really a C is exactly the kind of hazard the confidence rule exists to model.

---

# 10. Dungeon Archetypes

Every Gate has an **archetype** — the character of its interior — fixed when the Gate is instantiated and rolled on a d8. Each archetype carries **one mechanical twist**, stated below in a single rule.

**The interior is another world.** A Gate is a mouth onto somewhere *else* — a slice of the beasts' own world held in the void between it and ours — and its interior **never resembles, continues, or copies the place where the Gate stands.** A Gate in a metro tunnel may open onto a sun-bleached bone flat under three moons; a Gate in a cathedral onto a drowned forest. The interior keeps its own light, its own weather, its own horizon that goes nowhere; the mouth is the only way home. The archetype names below are the trade's shorthand — a domestication of terrains that have no Earthly names: the "Flooded Mine" archetype is no mine of ours, its timbers cut from no tree that grows here, its water fed by no rain we know. A Runtime narrating an interior draws it **alien first** — the archetype sets the mechanics and the broad character; the flesh on it belongs to the monsters' world, never to the neighborhood outside. An interior that *does* mirror its surroundings is not an aesthetic choice: it is anomaly-grade wrongness, treated exactly like an empty interior (Section 9.7) — a clue, and a reason to leave.

| d8 | Archetype | Mechanical twist |
|---|---|---|
| 1 | **Crypt** | Darkness fills the interior: entering combat requires a Perception check to avoid being ambushed, and unlit fighting imposes −1 modifier step on sight-dependent actions. |
| 2 | **Hive** | Swarming brood: the common-beast count is **doubled** and **no elite is present** (the two 1d2 elite slots are replaced by additional common beasts). |
| 3 | **Flooded Mine** | Standing water throughout: Strength and Agility actions take −1 modifier step, and going under imposes a drowning risk resolved as an environmental hazard. |
| 4 | **Overgrown Temple** | A lootable shrine stands in the interior: clearing the Gate grants a **bonus loot roll** (Section 11), but the shrine is guarded by an extra elite. |
| 5 | **Beast Den** | A second **boss-band alpha** roams alongside the boss — two boss-grade threats (×4 band health) instead of one. |
| 6 | **Shattered City** | Broken verticality: falls and drops deal **band damage** (a standard-hit baseline at the faller's grade, Section 6.2), and ledges force Agility checks. |
| 7 | **Ashfield** | Lingering burn hangs in the air: every hour inside forces a Vitality check against a grade-appropriate burn hazard (Section 6.3). |
| 8 | **Frozen Gallery** | Deep cold saturates the instance: **Mana recovery is halved** inside (Section 5.2), pressuring any Mana-dependent Bearer to clear quickly. |

**When the archetype is known.** The archetype is set at Gate instantiation. On a **confirmed** Gate the surveyors have seen the interior, so the archetype is **named in the assignment** alongside the confirmed grade. On an **unconfirmed** Gate the archetype is **unknown** until first entry, and it reveals as the party crosses the threshold — the same entry that resolves the true grade (Section 9.5).

An **archetype twist doubled** anomaly (Section 9.6, 81–95) applies that single twist at double effect: doubled darkness penalty, doubled swarm, twice the hazard rate, and so on, as fits the archetype.

---

# 11. Loot

Loot is the material output of a cleared Gate. Crystals and cores drop deterministically; the boss drop is rolled. Nothing here is estimated — every drop is read off the rules below.

## 11.1 Crystals and Cores

- **Mana crystals (beast-drop).** Every beast killed drops **one crystal**, of the **beast's own grade**. An E beast drops an E-crystal; a C beast drops a C-crystal. Crystals are the world's base currency good (Section 12).
- **Beast cores.** **Elites and bosses always drop one core** each, of their grade. A core is worth roughly **2.5× the same-grade crystal** (Section 12) and is the raw material for gear and consumables.

### Mined crystal deposits

Beast drops are not the only crystals a Gate yields — most of a clear's crystal *tonnage* is **mined from the interior itself.** A Gate's structure carries **mana-crystal deposits**: veins and clusters seamed through its walls, floor, and the strange geology of the dimension it opens onto (Section 10). These are the deposits the trade's **support element** (Section 9.4) exists to strip, and the reason a clear fields miners alongside its strikers. Because mining is not fighting, the miners may be **any rank** — an E-rank works a B-Gate's veins under the strike team's protection (Section 9.4) — which is how the bulk of the world's low-rank hunters earn.

- **Grade and value.** Deposits are of the **Gate's grade**; a mined crystal is worth exactly a beast-drop crystal of the same grade (Section 12). Mining yields crystals only — never cores (cores come from creatures) and never gear.
- **Yield.** A cleared Gate holds roughly **`3d6 × (grade multiplier)` grade-G crystals** in minable deposits — where the grade multiplier is 1 at E and rises with grade the way crystal *value* does (E ×1, D ×2, C ×4, B ×8, A ×16, S ×32), so a Gate's minable crystal wealth scales sharply with its danger. The deposits are the bulk of a clear's take, which is why grade determines a contract's pay far more than its kill count does.
- **Extraction costs time and hands.** Deposits are not picked up like a drop; they are **worked out** with effort during the **two-hour clear window** (Section 9.7) — or during the fight, by hunters not needed on the line. A short-handed crew (the waiver tier, Section 9.4) leaves crystal in the walls it has no time to cut before the window closes; a full crew with a dedicated harvest element strips a Gate near-clean. What is not extracted before the window closes is **lost with the collapsing interior** — a real tension between mining more and leaving alive.
- **Who profits.** Under a standard party contract (Section 13.2) mined crystals are declared at exit and pooled; a peer crew splits them like all loot, while a hired **support element takes the authored harvest share — 20% of the total clear, output-weighted (Section 13.2)** — and no cut of the cores in kind. For a **solo Bearer** in an instant dungeon (Section 17) or a lone clear, every deposit is his — one of the quiet reasons a Bearer's private clears are so lucrative.

The Bearer benefits from mining exactly as anyone does; nothing here is System-specific. It is ordinary hunter economics, finally stated: a Gate is not just a fight, it is a **mine with teeth.**

## 11.2 The Boss Drop

On the boss kill, in addition to its core, roll the **boss drop** on a d100. The drop's grade is the **Gate's grade** unless a grade bump applies (Section 11.4).

| d100 | Boss drop |
|---|---|
| 01–40 | **Weapon or armor piece** at the Gate grade (Section 11.5). |
| 41–65 | **Rune** — teaches one random authored skill (Section 7.1). |
| 66–80 | **Potion cache** — 3 potions at the Gate-grade tier (Section 12.5). |
| 81–90 | **Instant-dungeon key** at the Gate grade (Section 17, authored later). |
| 91–97 | **Skill book** — from the skill-book table (Section 11.3). |
| 98–00 | **Elixir** — a permanent +1 to one stat (max 3 lifetime per stat, Section 12.5). |

The **potion cache** tier follows the Gate grade: Gate grade **E–D → lesser** potions, **C–B → standard**, **A–S → greater** (the tiers priced in Section 12.5).

## 11.3 The Skill-Book Table

A **skill book** (boss drop 91–97) is rarer than a rune and teaches its skill at the **rank matching the Gate grade it dropped from** — a book from a C-Gate teaches its skill at rank C, above the E/D rune tier. Roll the taught skill on a d10:

| d10 | Skill book teaches |
|---|---|
| 1 | **Sprint** (Section 7.3) — movement. |
| 2 | **Dagger Mastery** (Section 7.3) — passive weapon mastery. |
| 3 | **Mend** (Section 7.3) — healing. |
| 4 | **Stone Skin** (Section 7.3) — sustained physical damage reduction. |
| 5 | **Flash Step** (Section 7.3) — mobility. |
| 6 | **Keen Sense** (Section 7.3) — detection. |
| 7 | **Silent Step** (Section 7.3) — stealth. |
| 8 | **Mana Bolt** (Section 7.3) — ranged attack. |
| 9 | **Rupture** — Mana **12**: a heavy strike with a **×2.0** skill multiplier on the standard-hit baseline (Section 6.2); the die resolves whether it lands and its degree. |
| 10 | **Bulwark** — Mana **10**: **50% physical damage reduction** for one exchange; reductions multiply, never add (Section 7.3), so it never reaches immunity. |

Entries 1–8 are the eight starting skills of Section 7.3, taught here at the dropped Gate's grade rather than at the E/D rune tier. **Rupture** and **Bulwark** (entries 9–10) are authored here and enter the ledger with their name, rank (the Gate grade the book dropped from), Mana cost, and effect on the schedule of Section 7.2.

**Class-restricted skill books** exist only as **authored named items with provenance** — usable by no one but the holder of their class, and entering play solely where a file authors them, exactly as the named-uniques rule (Section 11.5) requires.

## 11.4 Red-Gate and Anomaly Grade Bump

**Red gates and anomaly Gates roll loot one grade above the assessment.** A Gate that resolved to any anomaly (Section 9.6) — including a red gate — drops crystals, cores, and boss loot as if it were **one grade higher** than the grade it was assessed at. This is the reward for surviving the elevated danger an anomaly represents.

## 11.5 Item Grades

Gear carries a grade **E–S**, exactly as monsters do, and **an item's grade sets its damage or protection band exactly as a monster's grade sets its band health** (Section 6.1). A C-grade weapon lands its strikes on the C-band standard-hit baseline (Section 6.2); B-grade armor grants protection scaled to the B band. Grade is the item's complete mechanical description — no per-item stat line is authored beyond grade, type, and any named effect.

**Named uniques** exist only as **authored items with provenance** — a specific weapon or artifact written into a world or campaign file with a recorded origin. A boss drop never generates a named unique at random; the boss-drop table yields graded generic gear, and a named unique enters play only where a file authors it.

---

# 12. Economy

Two currencies run in parallel and **never exchange**: ordinary money (USD in Chicago, CZK/EUR in Prague) and the System's **gold**, which exists only inside the System shop. Goods cross between them solely through the shop's buy/sell spread (Section 12.5).

## 12.1 Licensed Market Prices

The regulated market buys crystals and cores at posted rates. Prices are Chicago USD; Prague pays **≈ 70% of Chicago rates**, settled in CZK/EUR.

| Good | Licensed price (Chicago USD) |
|---|---|
| **E-crystal** | $150 |
| **D-crystal** | $600 |
| **C-crystal** | $2,500 |
| **B-crystal** | $11,000 |
| **A-crystal** | $50,000 |
| **S-crystal** | Auction-only (no posted price) |
| **Beast core** | ≈ **2.5×** the same-grade crystal |

At 2.5× the crystal, cores derive to ≈ $375 (E), $1,500 (D), $6,250 (C), $27,500 (B), $125,000 (A); the multiplier is authoritative and the figures follow from it.

## 12.2 Black Market

An unlicensed buyer pays **+40%** over the licensed price but dealing there is a **felony** in both jurisdictions, carrying license revocation and prosecution risk. The premium is the price of anonymity — no sale record, no grade audit, no questions about a Gate's legality.

## 12.3 Contract Payouts and Salaries

| Work | Pay (Chicago USD) |
|---|---|
| **E-Gate freelance contract** | $2,000–5,000 (split by party contract, Section 13) |
| **D-Gate freelance contract** | $8,000–15,000 (split by party contract) |
| **C-Gate freelance contract** | $30,000–60,000 (split by party contract) |
| **B-Gate freelance contract** | $130,000–240,000 (split by party contract) |
| **A-Gate freelance contract** | Negotiated at **national-asset scale** (Section 9.4) — no posted band |
| **Guild-salaried B-rank** | ≈ **$240,000 / year** |

Prague contract and salary rates run at **≈ 70% of Chicago**, paid in CZK/EUR.

## 12.4 Cost of Living

| Item | Chicago | Prague |
|---|---|---|
| **Shared apartment** | $1,400 / month | 18,000 CZK / month |

## 12.5 The System Shop

The shop is the Bearer's alone (Section 2). It trades in **gold**, buying crystals and selling consumables and gear. It is a **System interface, not a place** — the Bearer opens it with `/system shop` from anywhere, at any time, instantly; there is no storefront to travel to and no hours. A purchase deposits straight into his dimensional inventory (Section 12.9), and a sale is drawn from it, so trading never requires him to be anywhere or carry anything. **USD and gold do not exchange** — the Bearer converts loot to gold only by selling it to the shop, and spends gold only inside it.

**The shop buys crystals (gold):**

| Crystal | Shop buys for |
|---|---|
| **E** | 10 g |
| **D** | 40 g |
| **C** | 170 g |
| **B** | 750 g |
| **A** | 3,400 g |

**The shop sells (gold):**

| Item | Price |
|---|---|
| **Lesser healing potion** | 25 g |
| **Standard healing potion** | 90 g |
| **Greater healing potion** | 400 g |
| **Lesser mana potion** | 20 g |
| **Antidote** | 30 g |
| **E-grade weapon** | 100 g |
| **D-grade weapon** | 450 g |
| **C-grade weapon** | 2,000 g |
| **Instant-dungeon key** (own band) | 500 g |
| **Elixir of a stat** (+1 permanent; **max 3 lifetime per stat**) | 5,000 g |

**The no-exchange rule.** There is no gold-to-USD or USD-to-gold conversion at any rate. The only bridge between the two economies is the spread between what the shop pays for a crystal and what the same crystal fetches on the licensed market — the Bearer chooses, per crystal, whether it becomes cash or gold, and cannot move value back the other way.

**Consumable effects.** Each consumable the shop sells resolves to a fixed effect, expressed in the same units the rest of the profile uses — the standard-hit baseline of ¼ band health (Section 6.2) for Health, the maximum Mana pool (Section 5) for Mana. The stat elixir's effect is stated inline in the sell table above.

| Consumable | Effect |
|---|---|
| **Lesser healing potion** | Restores one standard-hit baseline (¼ band health, Section 6.2) of Health. |
| **Standard healing potion** | Restores two standard-hit baselines of Health. |
| **Greater healing potion** | Restores Health to full. |
| **Lesser mana potion** | Restores 25% of the drinker's maximum Mana (Section 5). |
| **Antidote** | Clears poisons and venoms of the drinker's band or below. |

**Off-shop note — the gray sleep.** The wider world's restorative-alchemy market is separate from this Bearer-only shop (`240_RESOURCES.md`), but its one authored price anchors to the same scale: **arresting** chronic mana saturation — *the gray sleep* (Bible Section 5) — runs about a **greater healing potion's** worth of high-grade restorative a month (≈400 g-equivalent shop-side; on the licensed medical market an **A-crystal-scale sum** across a year — tens of thousands of USD, Section 12.1), while a **full reversal is an elixir-grade intervention** priced accordingly, which is why only guilds and governments pay for a cure.

**Withdrawn goods are ordinary objects.** Once a consumable or item leaves the shop into the world it is an **ordinary physical object** — usable by anyone, transferable to anyone, and traceable to anyone who holds it. The shop's origin neither clings to it nor conceals it: a System-shop healing potion works in an ally's hand exactly as in the Bearer's, and the same potion turning up in a pawnshop, an evidence locker, or a rival's kit is a physical thing with no licensed provenance and no market record — an **exposure thread** (Section 19) leading back toward a Bearer the world cannot otherwise see.

## 12.6 Starting Funds by Background

A campaign sets the Bearer's opening money by background. Prague equivalents are the USD figure **×22** in CZK.

| Background | Chicago (USD) | Prague (CZK, ×22) |
|---|---|---|
| **Working poor** | $800 | 17,600 CZK |
| **Stable** | $4,000 | 88,000 CZK |
| **Guild-family** | $15,000 | 330,000 CZK |

## 12.7 Care Prices — Menders and Hospitals

Restorative care is priced off the same scale as the rest of the economy (licensed prices Section 12.1, cost of living Section 12.4):

- **A mender-for-hire session** — a private healing-touch mender engaged for a clear or an aftercare visit — runs about the **price of a same-grade beast core** (Section 12.1): a C-rank mender's session prices near a C-core, which is why fielding one is a serious cost and why menders are rare enough to bid over (Bible Section 3).
- **A hospital week** — a week of professional inpatient care at a licensed facility — runs about a **month's local rent** (the shared-apartment figure, Section 12.4): ≈ **$1,400** in Chicago, ≈ **18,000 CZK** in Prague.

**Mender care is professional care.** A mender's healing-touch treatment counts as **professional (hospital-equivalent) care for the injury clock of Section 6.3**, halving an injury's recovery time at every tier exactly as hospital treatment does. This is separate from the **party-mender's one-tier post-fight conversion** (Section 13.5), which a mender grants their party automatically; a hired mender treating a wound outside a party clear applies the Section 6.3 halving instead. The two effects do not stack on the same injury beyond what each section states.

## 12.8 Commissioned Gear and the Artificers

Graded gear is not mined out of Gates whole — it is **forged from what Gates yield**, and the forging is done by **artificers**: awakened whose signature ability (Section 13.6) works mana into matter, rare on the order of menders and paid on the same logic (Bible Sections 3–4). Licensed artificers are the enchanting industry's hands; the great ones are the trade's quiet celebrities, their waitlists a status symbol, and an artificer's mark on a blade is worth more than the steel.

**Commissioning is how a hunter turns his clears into his arsenal:**

- The commissioner **supplies the core** — the core's grade sets the ceiling of the piece's grade (Section 11.5's banding governs the result) — plus any beast materials (hide, fang, scale) the design calls for.
- The **forging fee** runs about the **market price of a same-grade core** (Section 12.1): commissioning a C-grade blade means a C-core supplied plus ≈ $6,250 in fee. Turnaround is days at E–C grade.
- **B-grade and above is guild- and state-contract work** — waitlisted, logged, and subject to the export controls of Bible Section 4; a freelancer commissioning at B+ attracts exactly the attention Section 19 describes.
- A commissioned piece is ordinary graded gear under Section 11.5; **named work by a known artificer trades above every anchor** on the negotiated market, like all gear resale.

There is **no player crafting subsystem**: the Bearer commissions or buys like every other hunter — the forge is someone else's signature.

## 12.9 The Dimensional Inventory

The Bearer's inventory is not a backpack — it is a **pocket dimension**, a private space only he can reach, and it is his alone (no other hunter on Earth has one; Section 14.1). Every item he owns lives there unless he has chosen to hold or wear it, and the difference between "stored" and "carried" is his to set at any instant.

- **Weightless and unencumbering.** Stored items impose no weight, bulk, or carrying limit. The Bearer never chooses what to leave behind for lack of hands; a full clear's loot, a spare weapon, a case of potions all sit in the pocket dimension at once, and he walks out unburdened.
- **Store and withdraw anywhere, instantly, as a free action.** He may send an item to the inventory or call one to his hand from anywhere — a street, a Gate interior, mid-sentence, mid-fight — with a thought. Drawing a blade from nothing to meet an attack is a legitimate action the die still resolves for its outcome, but the *summoning itself* costs no action and no Mana. This is a real tactical edge: he is never disarmed, never out of potions he owns, never caught with the wrong tool.
- **Private and secure.** What is in the pocket dimension cannot be seen, searched, stolen, or confiscated — it is not on his person to find. A licensed inspection, a mugging, a pat-down at a cordon reaches nothing. This is a standing advantage and a standing exposure risk (Section 19): an item summoned from empty air in front of witnesses is as much a giveaway as a status window, because no ordinary hunter can do it.
- **What it holds.** **Inanimate physical objects** — gear, weapons, armor, consumables, crystals, cores, runes, books, keys, ordinary possessions. It does **not** hold living things (no creature, no person, no plant kept alive), and it is not a bank: **USD/CZK is mundane wallet-and-account money, never a System good** (Section 15, the `/system inventory` panel). System **gold** is likewise not "in" the inventory — it is the shop's internal currency (Section 12.5), shown as a balance, spent only in-window.
- **Capacity.** No practical limit constrains a campaign — the pocket dimension holds what the Bearer puts in it. (There is no encumbrance subsystem to track; "he stored it" is the whole rule.)

The inventory is read live and shown by the `/system` window (Section 15); loot enters it on pickup, shop purchases deposit into it, and shop sales withdraw from it. The Bearer interacts with the world's economy exactly as Sections 11–12 describe — he simply never has to carry the goods to do it.

---

# 13. Parties and Other Hunters

Most Gates are cleared by parties, and most hunters in the world are ordinary licensed professionals — not Bearers. This section fixes how those hunters resolve mechanically and the standard terms under which a party runs a Gate.

## 13.1 NPC Hunters Resolve by Rank Band

Every NPC hunter is a fixed-rank engine character (Section 2). A hunter's **rank band** is its complete mechanical description: a "licensed B-rank" acts on the B band for band health (Section 6.1), damage (Section 6.2), and modifier steps, and nothing further is authored. No NPC hunter carries a level, a stat sheet, an XP total, or a Mana curve — those belong to the Bearer alone. To resolve an NPC hunter's action, the Runtime uses its band exactly as it uses a monster's grade.

## 13.2 Standard Party Contract Terms

A freelance party runs on a written contract. The standard terms, absent a negotiated exception, are:

- **Split:** the party leader takes a **10% leader's share** off the top; the **remainder is split equally** among all members (leader included in the equal split of the remaining 90%).
- **Loot declared at exit:** all crystals, cores, and drops are **declared at the Gate exit** and pooled for the split. Undeclared loot taken inside is theft under the contract.
- **Liability waivers:** members sign a **liability waiver** — a Gate is lethal work, and the contract disclaims the party's and the poster's liability for injury or death inside.
- **Death of a member:** a dead member's share of the pooled loot passes to their **named beneficiary** — naming one is part of signing the contract, so no share is ever left unassigned. The dead hunter's own effects and license are handled by the beneficiary and the authorities, not folded into the party pool.
- **Death of the leader:** if the leader dies mid-clear, the **senior surviving license** — the highest-ranked survivor, longest-licensed breaking a tie — assumes the **leader's role and the 10% leader's share** for the remainder of the clear, so the party keeps a decision-maker and the split still resolves cleanly at exit.

### Support and harvest contracts

The split above governs a **peer combat crew**. A clear that fields a separate **support element** (miners, harvesters, porters — any rank, Section 9.4) pays them on a different, standard basis, because they take no combat risk on the line and are not partners in the clear:

- **The harvest share is 20% of the total declared pool.** The support crew collectively receives **20% of the value of the entire declared clear** — every mined and beast-drop crystal and every core, valued at licensed rates (Section 12.1). It is taken **off the top**; the remaining **80%** is the combat pool, divided among the strike element by the standard terms above (or, when a contractor posted the clear, by the contractor's terms after its cut).
- **Split among harvesters is output-weighted, not flat-equal.** Each support worker's cut of the 20% is **proportional to the crystal *they personally mined*** (declared at exit, Section 11.1). A harvester who cut 7 of the crew's 19 mined crystals takes 7/19 of the harvest share. This is the standard; a flat-equal harvest split is a negotiated exception, stated in the contract.
- **Support workers draw no cut of the cores or beast-drops in kind.** Their entire compensation is the harvest share (the 20%, a cash valuation); the physical cores, beast-drop crystals, and any boss drop belong to the combat pool. A harvester is paid *for the mining*, valued against the whole clear, and takes none of the trophies home.
- **Everything else in Section 13.2 applies** — loot declared at exit, liability waivers signed, a dead support worker's harvest share to a named beneficiary.

**Worked example (Cicero Scar, C-grade — Gatefall: Pendragon).** A five-hunter support crew declares 19 mined C-crystals at exit; the total clear (mined + beast-drop crystals + cores) values at **≈ $77,500** on the licensed market (Section 12.1). The harvest share is **20% = $15,500**, split by output. Alexander mined **7 of the 19** crystals, so his cut is `7/19 × $15,500 ≈ ` **$5,700**. The other 80% (≈ $62,000, plus the physical cores) is the combat pool, divided among the strike element and the posting contractor by their terms. Every figure resolves from Section 12.1 prices and this rule alone.

## 13.3 Legal Minimums

Party size is not only a tactical choice; regulation sets a **legal minimum** by Gate grade (Section 9.4): none for E–D, four licensed for C, eight for B, sixteen plus an A-rank for A, and a national-asset operation for S. Entering below the minimum is an offense in both Chicago (BGM) and Prague (CGA) jurisdictions, independent of whether the clear succeeds.

## 13.4 The Witness Rule

The foundation of every party dispute is one fact: **inside an uncleared Gate there are no cameras and no instruments — only testimony.**

A sealed Gate interior admits no recording and no remote monitoring: mana flux blinds instruments, and nothing transmits out of a live instance. What happened inside is established solely by the **testimony** of those who walked out. This is the authored foundation on which betrayal, false report, and disputed-clear plots stand — the profile fixes the fact and adds no further subsystem. Who lived, who died, what dropped, and who struck whom inside an uncleared Gate is, mechanically and legally, whatever the survivors say it was until contradicted by evidence found outside.

## 13.5 Support Types and Party Roles

Party role composition is **descriptive, not a subsystem.** Signature abilities (Section 13.6) are as varied as the people who wake with them, so the trade files hunters by *what an ability does in a fight* using a loose, open vocabulary — **strikers** (melee damage), **casters / mages** (ranged mana — bolts, bursts, elements, area denial), **archers** (a signature that guides a shot), **wardens / tanks** (barrier and frontline), **menders** (healing-touch), **sensors** (detection and appraisal), **summoners / beast-tamers**, illusionists, and any number of others. **This is common shorthand, not a closed classification.** A hunter whose signature fits no board label is ordinary, not an error; most powers blur two or three of these at once, and new ones are named as they appear. Whatever the label, an NPC hunter is resolved the same way — **by rank band** (Section 13.1, Section 2), with no stat sheet, level, or Mana curve; the label is flavor and reach (Section 13.6), never a mechanic.

Because the labels are open, the **mechanics key to function, not to the word.** Only **three** effects are authored, and they attach to *what a signature does*, whatever the trade calls its owner:

- **The "mender" effects apply to any signature that restores Health by touch** — a healer, a life-drawing summoner, a laying-on-of-hands, anything whose function is closing wounds in the field. Such a hunter is a "mender" for these effects regardless of label.
- **The "warden" effect applies to any signature that raises a held barrier or physically holds a line** for the party — a wall, a shield-field, an immovable frontline. Such a hunter is a "warden" for that effect regardless of label.

The three authored effects, at exactly these magnitudes:

- **A mender's field-touch** restores Health equal to **one standard-hit baseline of the mender's grade** (¼ of the mender's band health, Sections 6.1–6.2): a D-mender's touch restores 25, a C-mender's 62. A mender can channel **three field-touches per Gate clear**; a touch restores Health only — it does not change an injury's tier or its recovery clock (Sections 6.3, 12.7 govern those). A higher-grade mender is simply a stronger healer; that is the whole skill model, per Section 13.1.
- **A party with a mender** additionally converts **one post-fight injury tier down, per member, per clear**, for injuries at the **mender's band or below**: a Minor injury disappears, a Moderate becomes a Minor, a Severe becomes a Moderate, a Critical becomes a Severe (Section 6.3). It is one tier, once per member, per Gate cleared.
- **A party with a warden** grants **+1 modifier step on the party's defensive actions taken in formation** (Section 4.3), composing into the net ±3 cap like any other step.

Healing-touch and barrier signatures are rare (Bible Section 3), which is exactly why a party that fields one is meaningfully safer and a party without one pays for the gap in Section 6.3 injuries. Nothing further is authored: **every other signature — striker, caster, archer, summoner, sensor, and all the rest — adds texture and reach, not a mechanic.** A caster's bolt, an archer's guided shot, and a swordsman's cut are all a standard hit at the hunter's band (Section 6.2); a summoner's called beast fights at the summoner's band; a sensor reads what the fiction says it reads. The signature decides the *method*; the band decides the *magnitude*. And **the Bearer in a party benefits from a mender or a warden exactly as any other member does** — the three effects are properties of the party, not of who is in it.

## 13.6 Signature Abilities

Most awakened manifest a **signature ability** at awakening (Bible Sections 2–3): one personal, permanent expression of their mana — a firelance, a stone hide, a ten-meter blink, a healing touch, a field-sense. For an NPC hunter the signature is a **descriptive fact, not a subsystem**: it is named in one sentence in the character's ledger entry, it determines the *method and reach* of what they do — a C-caster's firelance is a C-band standard hit delivered at forty meters; a B-warden's force-wall is Section 13.5's formation step made visible — and it never adds a magnitude beyond the character's band and the three Section 13.5 effects. **Every named NPC hunter introduced in play is given a signature ability in their ledger entry when they are recorded** — a crew of hunters should read like a crew of powers, not a crew of weapons.

Signatures are innate and singular: one per awakening, fixed for life, its expression growing only as its owner's measured rank allows. Runes and skill books (Section 11) add *learned* techniques on top — rare enough that a hunter with two tricks is notable and a hunter with three is a story. The Bearer is the sole exception to all of it: he manifested nothing at awakening — the notorious blank card of the weakest E-rank — and everything he gains, the System governs (Section 7). In a world where every hunter is born as exactly one power, the man who can *accumulate* them is a walking impossibility, and hiding that is the whole game (Section 19).

---

# 14. The System's Behavioral Contract

The System is the Bearer's interface to his own growth and the world's danger. This section fixes what it is, what it will and will not say, and the exact shape of what it says — so a Runtime speaks with the System's voice from canonical state alone, never inventing a line.

## 14.1 The System Is Not a Persistent Entity

The System has continuity (one Bearer at a time), initiative (it issues the daily quest, opens penalty zones, offers the class quest), and a direction (it grows its Bearer). Those look entity-shaped. It is **not** a Persistent Entity and must not be modeled as one.

- Its **active state is Bearer state** — held in the Bearer's `canonical_state` on the campaign character ledger, nowhere else.
- Its **world-line continuity is a rule of Gatefall** (Section 2): exactly one living Bearer per world-line, no successor while he lives, and **death is final** (Section 6.5) — the dead Bearer's System state transfers to no one. It has no aliases, lifecycle block, inventory, relationships, or separately addressable identity.
- Its **purpose is directional, not personal**: produce a stronger Bearer. It does not love, hate, bargain for its own survival, or value the present host above the world's danger to him.
- Its **outputs are world reactions.** They act on or address the Bearer; they never author his voluntary choices.

Structurally the question is closed: the Persistent Entity Type set is closed (`011` Section 4.2) and contains nothing the System fits, and Rules Section 14.3 forbids a World Rule Profile from touching Persistent Object structure. Gatefall could not make the System an entity even on its own authority. The testable property follows:

> **Given the same canonical Bearer state, the System renders the same thing.**

It has no freeform off-ledger reasoning. Its outputs come only from declared triggers, tracked state, and the rules in this profile.

## 14.2 Truthfulness — It Never Lies, But It May Withhold

**The System never asserts a falsehood, and never asserts a world-fact it does not know.** Truthfulness and omniscience are different properties, and the System is truthful *and* non-omniscient because its assertive domain is bounded:

- **About the Bearer it is authoritative and correct.** It is him, quantified — his level, XP, stats, pools, skills, and quests are not in doubt.
- **About the world it may point, never describe.** "An unregistered presence is near" is a pointer; "the C-rank beside you is a disguised killer" is a description it never makes. Pointing leaks no secret; describing would bypass discovery.

**Silence is not a lie.** Withholding, cryptic phrasing, and `[HIDDEN] ???` are honest — they assert that a thing exists without asserting what it is. The System is **not an oracle**: it cannot be asked what the world is hiding, and it does not answer.

## 14.3 Trigger Tiers — What It Says Unprompted, and What Only on Request

The System never decides what is true. It may decide **when to say it**.

- **Tier 1 — Mandatory (unprompted; a pure function of state the System already holds).** Fires the instant the condition holds, with zero discretion:
  - Mana, Health, or XP changes → the matching compact line (Section 14.5);
  - an XP threshold is crossed → the `LEVEL UP` block, granting per Section 3.2 (worked example in Section 3.7);
  - the daily quest is issued, completed, or failed → its block (Section 8.1, Section 15.7);
  - the daily window lapses incomplete → the penalty warning, then the transfer notice (Section 15.7);
  - a title is earned → the `TITLE EARNED` block (Section 15.7);
  - a pool crosses a declared danger threshold (e.g., 0 Mana, Section 5.3) → a warning;
  - a creature of resolved grade (Section 14.4) enters the Bearer's perception → its **designation color** renders inline, red and pulsing for a creature two or more bands above him — the System's only unprompted tactical warning (Section 14.6).
- **Tier 2 — Permitted (bounded discretion; a declared precondition must hold, the Runtime picks the beat).** Appraisal when an unidentified item or foe enters perception and Intelligence permits it (Section 4.4, Analyst); a hidden-quest pointer within proximity of an undiscovered thing; an urgent-quest offer when a nearby crisis meets its trigger; a danger warning while the condition holds. The Runtime picks the moment; it never picks whether the precondition is met.
- **Tier 3 — Prohibited.** The System may never fire to supply an uncertain outcome, to describe a world-fact (Section 14.2), to author the Bearer's decision, or **with no declared precondition at all**.

**On request** is separate: the `/system` panels (Section 15) render on the Bearer's command at any time. They are read-only views, not announcements, and they never resolve an action.

## 14.4 The Information Boundary

The System knows, exactly: **Bearer state** (Section 3–7), **quest state**, and **Gate state once resolved** (a Gate's true grade after Section 9.5 settles it, its population, its break timer). It does **not** know NPC minds, hidden identities, the true grade of an unconfirmed Gate before entry, or anything a die has not yet resolved.

It is **perceptible only to its Bearer** — always, without exception. It cannot be displayed, shared, demonstrated, or proven; to an onlooker, a Bearer reading a notification is a man who stopped walking and looked at nothing. **System-issued quests are Bearer-only and therefore unknown to the world** — no NPC, institution, or public holds a Knowledge State about one. The quest is secret; its footprint is not. If the daily quest puts the Bearer on a rooftop at dawn, the world sees a man on a rooftop at dawn.

## 14.5 Compact Inline Notifications (exact)

During prose, ordinary numeric changes render as compact single lines showing the change and the new standing — `before → current/maximum` (for XP, `current/next threshold`):

```text
XP: 40 → 90/300
Mana: 25 → 13/45
HP: 34 → 21/40
```

Render each changed quantity once per resolved action; if one action resolves several monsters, aggregate that action's change and notify once. The bracketed blocks (Section 8.1, Section 15) are reserved for messages that carry more than a number. This is the A10 notification contract, identical to Section 8.2 — the two must never diverge.

## 14.6 Threat-Color Legibility (Designation Colors)

The System colors every creature the Bearer perceives. A **designation color** marks each creature's threat relative to the Bearer's own **effective grade band** (Section 6.1, set by the level ladder of Section 6.6), and it is the single tactical read the System volunteers unprompted. It is exact because it is drawn from the creature's **true grade**, not its BGM/CGA grade card: where the world's grading is wrong (Section 9.5), the color is still right, because the System reads the resolved truth the instruments only estimate.

The creature's band relative to the Bearer's effective band sets the color:

| Creature's band vs. the Bearer's effective band | Designation color |
|---|---|
| Two or more bands **beneath** | **gray** |
| One band **beneath** | **white** |
| **Same** band | **yellow** |
| One band **above** | **orange** |
| Two or more bands **above** | **red** — *pulses* |

- **Red pulses; everything else is steady.** A **red** designation — a creature two or more bands above the Bearer — is the System's **only unprompted tactical warning** (Section 14.3, Tier 1): it pulses to mark a threat that can kill him outright. Gray, white, yellow, and orange render steady and volunteer nothing beyond the color itself.
- **Derived from true grade; never wrong, never guessed.** The color follows the creature's **true grade**, resolved per Section 9.5 and known to the System per the information boundary (Section 14.4). The System never mis-colors a creature even when its posted grade is a mis-grade — the colors are how the Bearer *experiences* the true-grade resolution Section 9.5 performs on entry. Equally, the System colors nothing whose true grade it does not yet hold: an unconfirmed Gate's population is **uncolored until first entry resolves it** (Section 9.5), because the System asserts no grade it has not been given (Section 14.2). Coloring is a rendering of resolved knowledge, never a preview of it.
- **Bearer-only, always — an edge and an exposure.** Like every System output the coloring is perceptible to the Bearer alone (Section 14.4). Ordinary hunters see nothing; to a party, the Bearer is a man who glanced at a beast and knew, a beat early, exactly how much it outclassed him. That is a quiet informational edge — and a standing exposure risk (Section 19): a Bearer who backs off a beast his card says he should crush, or holds his ground against one his card says should rout him, is visibly acting on knowledge the world cannot account for.
- **Against effective band, so the palette shifts as he grows.** The comparison is to the Bearer's **effective** band (Section 6.1) — where his true capability sits — not his carded rank. As he grows (Section 3), the same creature recolors: an A-grade threat that pulsed red at low level cools to orange, then yellow, then white as his effective band climbs toward and past it. The palette is therefore also a growth mirror — the world reading as less lethal exactly as fast as he becomes more so.

**In prose play.** A creature's designation color is stated **inline on first perception** of that creature in a scene — the first time the Bearer sees it, the narration names its color (a "red-designated alpha," a "gray knot of E-beasts") — and is not repeated each exchange unless the Bearer's effective band changes mid-scene (a level-up, Section 3.2) and recolors it. It has no `/system` panel of its own: like the compact lines of Section 14.5, it surfaces only at the moment it becomes true — here, the moment the Bearer's eyes reach a creature the System can already grade.

## 14.7 The Onset Sequence

The System's **first contact** with a new Bearer is a fixed message sequence — the same three beats every time, rendered in the bracketed A10 style (Section 14.5, Section 15). This section authors only the **System's messages**; the in-world incident that precedes attachment is a campaign concern (Section 2) and is not authored here.

**Onset timing (owner ruling, 2026-07-24).** The incident is a campaign concern; its **pacing is not**. The System attaches within the campaign's opening arc and **no later than the resolution of the protagonist's first genuine fight** — the first scene in which he faces lethal, uncertain combat. The precipitating incident must still arise causally from the fiction in play — a brush with death is the classic crucible; what this ruling bounds is *when*, not *why*. A campaign that resolves its first real fight with the protagonist still bare of the System is out of law. This binds every Gatefall campaign, including any in progress at the time of the ruling.

1. **Attachment notice** — the initializing handshake and host designation, fired the instant the System attaches.
2. **Status-window grant** — the STATUS panel (Section 15.1) is granted and rendered once, opening at creation values (level 1, the creation-array stats of Section 4.1, Health 40/40, Mana 20/20).
3. **First daily quest** — the standing daily quest (Section 8.1) issues at the **next 06:00 local** after attachment, and the daily cycle runs from there.

The worked onset block:

```text
[SYSTEM] INITIALIZING…
[SYSTEM] HOST DESIGNATION ACCEPTED — you are the Bearer.
[SYSTEM] STATUS WINDOW GRANTED. Access via /system.

[SYSTEM] STATUS — <NAME>
Class: —  ·  Title: —
Level 1  ·  XP 0/100
Health 40/40  ·  Mana 20/20  ·  Unspent points 0
Strength <n> · Agility <n> · Vitality <n> · Perception <n> · Intelligence <n>

— at the next 06:00 local —

[SYSTEM] QUEST ISSUED — DAILY TRAINING
Objectives: 100 push-ups 0/100 · 100 sit-ups 0/100 · 10 km run 0/10
Reward: +3 stat points · full restore · +10 XP · streak 0/7 → Weekly Cache at 7
Warning: failure to complete within 24 h transfers you to a penalty zone.
```

Every value is read from creation state (Sections 3–5, 4.1): level 1, XP 0/100 (Section 3.1), Health 40/40 (E-band, Section 6.1), Mana 20/20 (`max_mana(1)`, Section 5.1). The stat line fills from the campaign's creation array (Section 4.1). After this sequence the Bearer is an ordinary played character carrying the System, and all further output follows the Tier rules of Section 14.3.

---

# 15. The `/system` Command

Gatefall declares **`/system`** as its diegetic command. Its panels are **read-only views of canonical Bearer state** (Section 14.1): nothing is editable through them, every value is read or derived from canonical state and never invented at render (Decision 051), and the same state renders the same panel from any Runtime. Inline compact notifications (Section 14.5) remain the in-play surface between panel calls.

**The panels render as framed System windows.** Each template below is normative — a Runtime fills the `<…>` slots from state and changes nothing else — but the *presentation* is a proper window, not a bare line list, rendered in a monospaced code block so it holds its shape. The house frame:

- A **box frame** in light box-drawing (`╔ ═ ╗ ║ ╚ ╝`, inner rules `╟ ─ ╢`) around every panel; the panel's title sits in the top border: `╔═ ◈ SYSTEM · STATUS ═…═╗`.
- **Pools render as bars** — a 20-cell meter, `█` filled proportional to `current/max` and `░` empty, with the numbers beside it: `HP  ████████████████░░░░  31/40`. XP uses the same bar against its next-level threshold.
- **Sections are separated by inner rules**; labels are left-aligned and values align in columns.
- The **numbers are the diegetic exception of Section 20.5** — the System speaks in figures to its Bearer by design, and only he sees this window.
- The Runtime **fits the frame width to the widest line** and pads the right border to align; the exact width is presentation, the structure and every value are canonical.

Bare **`/system`** always renders the **full window** — every section (identity, vitals, stats, quests, skills, titles, inventory, gold) inside one framed window (Section 15.1). Focused single-section views and the interactive shop/titles panels remain available as `/system <section>` (Section 15.2), but the default is the whole of the Bearer at once.

**One example Bearer runs through every base panel.** Call him **Ren** — an illustration only, not a canon character: a **level-3**, E-band Bearer with no class yet, mid-run. His canonical state: Level 3, XP 150/300 (threshold L3→4 = 300, Section 3.1); Health 40/40 (E-band health, Section 6.1, the E-band figure Section 8.2 already uses); Mana 22/30 (`max_mana(3) = 20 + 5×2 = 30`, Section 5.1); Strength 9 · Agility 13 · Vitality 11 · Perception 14 · Intelligence 11; 1 unspent point; skills Mana Bolt, Dagger Mastery, Sprint, Mend (Section 7.3); title **Lone Clear** equipped (Section 16); inventory and gold as shown.

## 15.1 `/system` — the Full System Window

Bare **`/system`** always renders the **entire System window**: identity, vitals, stats, active quests, known skills, earned titles, inventory, and gold — every section stacked inside one framed window, divided by labeled section rules. There is no partial default; the Bearer sees his whole state at once, the way the window hangs in his vision.

```text
╔═ ◈ SYSTEM — FULL STATUS ═════════════════════════════╗
║  <NAME>                       Rank  <band>           ║
║  Level  <L>                   Class <class or —>     ║
║  XP <cur>/<next>              Title <title or —>     ║
╟─ VITALS ─────────────────────────────────────────────╢
║  HP   <bar>   <hp> / <hpmax>                         ║
║  MP   <bar>   <mp> / <mpmax>                         ║
║  XP   <bar>   <cur> / <next>                         ║
╟─ STATS ──────────────────────────────────────────────╢
║  Strength     <n>       Perception     <n>           ║
║  Agility      <n>       Intelligence   <n>           ║
║  Vitality     <n>       Unspent points  ● <n>        ║
║  Pending grants   <none, or list>                    ║
╟─ QUESTS ─────────────────────────────────────────────╢
║  <one line per active quest; [HIDDEN] shows ???>     ║
╟─ SKILLS ─────────────────────────────────────────────╢
║  <one line per known skill: name [rank] cost eff>    ║
╟─ TITLES  (equipped: <title or none>) ────────────────╢
║  <one line per earned title; ★ marks equipped>       ║
╟─ INVENTORY ──────────────────────────────────────────╢
║  <items, then crystals and cores>                    ║
╟─ SHOP ───────────────────────────────────────────────╢
║  Gold <n> g          ( /system shop to trade )       ║
╚══════════════════════════════════════════════════════╝
```

Ren, mid-run, carrying one deferred level-up grant:

```text
╔═ ◈ SYSTEM — FULL STATUS ═════════════════════════════╗
║  REN                          Rank  E-band           ║
║  Level  3                     Class —                ║
║  XP 150/300                   Title  Lone Clear      ║
╟─ VITALS ─────────────────────────────────────────────╢
║  HP   ███████████████░░░░░   31 / 40                 ║
║  MP   ██████████████░░░░░░   22 / 30                 ║
║  XP   ██████████░░░░░░░░░░   150 / 300               ║
╟─ STATS ──────────────────────────────────────────────╢
║  Strength      9        Perception     14            ║
║  Agility      13        Intelligence   11            ║
║  Vitality     11        Unspent points  ● 1          ║
║  Pending grants   level-up (+3 & full restore)       ║
╟─ QUESTS ─────────────────────────────────────────────╢
║  [DAILY]  Training   Streak 6/7 → Cache   14h12m     ║
║     push-ups 40/100 · sit-ups 100/100 · run 6/10     ║
║  [URGENT] Cull the Red Line nest (3/4)   +40 XP      ║
║  [HIDDEN] ???                                        ║
╟─ SKILLS ─────────────────────────────────────────────╢
║  Mana Bolt      [E] M5   ranged ×1.0 baseline        ║
║  Dagger Mastery [E] pass  light blades ×0.75         ║
║  Sprint         [E] M3   +1 step movement            ║
║  Mend           [E] M6   restore ¼ band health       ║
╟─ TITLES  (equipped: Lone Clear) ─────────────────────╢
║  ★ Lone Clear    +1 step while alone in a Gate       ║
║    Untouched     +1 step evasion, 1st exchange       ║
╟─ INVENTORY ──────────────────────────────────────────╢
║  License [E-Rank]     Steel dagger [E]               ║
║  Lesser healing potion ×3    Dungeon key [E]         ║
║  E-crystal ×8         Cores ×2 [E]                   ║
╟─ SHOP ───────────────────────────────────────────────╢
║  Gold 340 g          ( /system shop to trade )       ║
╚══════════════════════════════════════════════════════╝
```

- **Bars** are 20-cell meters filled proportionally to `current/max` (Ren: HP ¾, MP ¾, XP half).
- Every **section** is read live from canonical state (Section 14.1) — quests from the quest log, skills from Section 7.2 ledger entries, titles from Section 16, inventory from the campaign inventory ledger, gold from the shop balance. Nothing is invented at render.
- **`Pending grants`** shows any deferred grant (Section 3.9) — the full heal held in reserve — and reads `none` when empty.
- The window grows with the Bearer: an empty section still renders its header with `none` beneath it (a fresh Bearer shows `SKILLS — none`, `TITLES — none`), so the shape is constant and the Bearer always sees the whole of himself.
- **Numbers in the window are the diegetic exception of Section 20.5** — the System speaks in figures to its Bearer, and only he sees this window. The Runtime **pads every line to a constant width** so the frame closes as a clean rectangle.

## 15.2 Focused Views and Interactive Panels

The full window is the default. A Bearer may still call a **single section** for a closer look or to act on it — `/system quests`, `/system skills`, `/system inventory`, `/system titles`, `/system log` — each rendering just that section in its own framed window with the same data. Two of these are **interactive**, not just views:

- **`/system shop`** (Section 12.5) — the trading window: gold balance, crystal buy rates, and the stock sold at the Bearer's tier. Buying and selling happen here, in-window, never as an out-of-character question. The **no-exchange rule** (Section 12.5) holds: loot becomes gold only by selling it here, never back to USD.
- **`/system titles`** — equipping is done here (one equipped at a time, Section 16).

A focused view never shows less truth than the full window; it is the same canonical read, framed alone.

## 15.3 Class Panels Attach Post-Class-Quest

Before the class quest (Section 18) the window's `Class` line reads `—` and no class section exists. On completing the class quest and choosing a class, a **class section** joins the full window and a focused command attaches — `/system shadows`, `/system arsenal`, `/system fragments`, `/system echoes`, or `/system rifts`. A Bearer has at most one class, so at most one class section; each is authored with its class in Section 18.


---

# 16. Titles

A **title** is a named commendation the System grants for a specific feat, carrying one passive. **One title is equipped at a time**; the equipped title's passive is active and every other earned title is dormant. Titles are permanent once earned; equipping is free and changed through `/system titles` (Section 15.6). Each is granted the instant its feat resolves, as a Tier 1 message (Section 15.7).

The 1.0 titles:

| Title | Earned by | Passive (while equipped) |
|---|---|---|
| **Lone Clear** | first Gate cleared solo — boss killed with no other hunter inside | +1 modifier step on all actions while no allied hunter shares the Gate |
| **Red Survivor** | survive and clear a red gate (sealed anomaly, Section 9.6) | the first injury you would take in any sealed instance each scene is reduced by one severity tier (Section 6.3) |
| **Untouched** | clear a Gate having taken zero damage | +1 modifier step on evasion in the first exchange of every combat |
| **Centurion** | 100 confirmed kills | +1 Mana recovered per common beast killed |
| **Break-Breaker** | be part of stopping a dungeon break (Section 9.8) before it clears the cordon | +1 modifier step on all actions defending a fixed position or civilians |

Every passive is stated in modifier-step or resource terms (Section 4.3, Section 5), so a Runtime applies it without a ruling. Only the equipped passive applies; a title's modifier step composes into the net ±3 cap (Section 4.3) like any other, and any reduction it grants composes multiplicatively (Section 7.3).

---

# 17. Instant Dungeons

An **instant-dungeon key** — a boss drop (Section 11.2, roll 81–90) or a shop purchase (Section 12.5) — opens a private instance on demand: combat and loot without a contract.

**Instant dungeons are the exception to Section 10's alien-interior law:** a System-made instance looks *made* — cut-stone geometry too regular to be natural, uniform sourceless light, corridors that answer to purpose rather than to any world's weather. Where a Gate's interior is a slice of the beasts' world, an instant dungeon is the System's architecture, and a Bearer learns to know the difference at a glance.

- **Grade.** A key's grade is the **Gate grade it was rolled from**, or, for a shop key, the **Bearer's own band** (Section 12.5 — the effective band of the level ladder, Section 6.6). The instance runs at the key's grade.
- **Opening.** Using a key opens a sealed instance for the Bearer (he may bring a party, but the key is his). It runs **2 hours**, closing at the two-hour mark or on the boss kill, whichever comes first.
- **Population.** Populated by the standard Gate formula (Section 9.7) at the key's grade G — `3d6` common beasts, `1d2` elites (×2 band health), `1` boss (×4 band health) — and it rolls an archetype on the d8 (Section 10) like any Gate.
- **Loot.** Drops per Section 11: one crystal per beast, a core from each elite and the boss, and the boss-drop d100. It is a **real clear** — kill XP (Section 3.3) and the Gate-clear milestone (Section 3.4) settle on the boss kill exactly as in a public Gate.
- **No timer, no break.** An instant dungeon runs no break countdown (Section 9.3): it is a closed instance keyed to the Bearer, not a breach into the world. An unopened key is inert and never breaks.
- **No BGM/CGA jurisdiction — legally unregulated space, and this profile says so.** An instant dungeon is not a licensed Gate: it posts no contract, requires no minimum party (Section 9.4), files no loot declaration (Section 13.2), and is invisible to the authorities, because only the Bearer's key opens it and only the Bearer perceives the System (Section 14.4). It is the one clearance the world cannot see, tax, or regulate — which is exactly its value and exactly its risk: a Bearer who dies in an instant dungeon (Section 6.5) dies unwitnessed, with no strike team that can be called.

---

# 18. The Class Quest and Hidden Classes

A **class** is the Bearer's unique power path — unique on Earth, held by no one else. It is earned once, through a trial, and it reshapes how he fights for the rest of the campaign.

## 18.1 Trigger

When the Bearer reaches **level 25**, the level-up that crosses into 25 also issues the **Class Quest** (a Tier 1 event, Section 14.3). It is offered once. It does not expire, but no second class is ever offered — a Bearer holds exactly one class for the campaign.

## 18.2 The Trial

The class quest is a **sealed instance, fully lethal, with no retreat**: the Bearer enters alone and cannot leave until he clears it or dies (death is final, Section 6.5, and the trial can kill). It is **not a menu**. It is a gauntlet — waves and a final foe at the Bearer's own effective band (the level ladder, Section 6.6) — and the System tracks **how he fights** across five signals:

| Signal | What it measures |
|---|---|
| **Kill efficiency** | damage and kills per exchange and per Mana spent — economy of force |
| **Battlefield control** | managing many foes at once — grouping them, denying ground, holding the shape of the fight |
| **Weapon breadth** | variety of methods and weapons used to good effect, not one tactic replayed |
| **Endurance** | surviving sustained pressure at low resources — outlasting rather than out-bursting |
| **Positioning** | evasion and control of space — where he stands, what he avoids, how he moves |

## 18.3 The Offer

On survival, the System tallies the five signals and offers the classes matching the demonstrated style. The two highest-scoring signals surface their classes, and **at least two classes are always offered** — a tie or a broad performance widens the offer, and a lopsided one never narrows it below two. The signal-to-class map:

- **Kill efficiency → Devourer**
- **Battlefield control → Shadowbinder**
- **Weapon breadth → Soulforged Armory**
- **Endurance → Echo Knight**
- **Positioning → Riftwalker**

The Bearer chooses one. The choice is permanent; it attaches the class's `/system` panel (Section 15.8) and sets the STATUS `Class` line. Each class has a later **evolution quest** — an authored class-quest at **level 50** — that deepens it along its own line.

**Shared grade Mana ladder.** Several classes spend Mana by a target's grade on one ladder — **E 5 · D 10 · C 20 · B 40 · A 80** — sized to the pool (`max_mana` is 140 at level 25 and 265 at level 50, Section 5.1). A same-band foe therefore costs a modest fraction of the pool and a foe bands above costs most of it, so acting on stronger prey is possible but expensive by construction.

## 18.4 Shadowbinder — offered for battlefield control

On defeating a foe, the Bearer may raise its shadow. Shadows come in **two classes**, and this is what lets a Shadowbinder end as a general, not a squad leader:

- **Elite shadows** are **named, individually tracked, and level up** — the lieutenants. Extraction is an **Intelligence-governed d100 attempt** (an uncertain action, so the die decides, Section 4.3; a foe above the Bearer's band adds the band-gap modifier, −1 step per band above) costing grade-ladder Mana (E 5 … A 80). On success the foe rises as an elite retaining its grade band — band health (Section 6.1), a standard-hit baseline at its grade (Section 6.2), and a name. **Elite cap = Intelligence ÷ 5** (Int 20 → 4 elites, Int 40 → 8). An elite **levels**: after it lands the killing blow in **10 distinct clears** it advances one grade band (capped at the Bearer's effective band).
- **The horde** is the **massed, un-named rank-and-file** — not tracked one by one, carried as a **count and grade** (e.g., "180 E · 44 D"). Ordinary defeated common beasts are **swept into the horde in bulk** at a flat **2 Mana each, no per-corpse roll** — the Bearer scoops the fallen as he passes. **Horde cap = Intelligence × 20** (Int 30 → 600), and the Legion evolution lifts it to **no practical cap — an army of thousands.**

**Commanding the horde (closed-form, never per-shadow):** committed to a fight, the horde resolves as **one action per exchange**. It **automatically overruns** trash threats at or below the horde's dominant grade (they are swarmed under, no roll), and against elites and bosses it grants the Bearer's side **+1 modifier step per 100 shadows committed, to the net ±3 cap** (Section 4.3) — the weight of numbers. A hard fight inflicts **attrition**: on a poor exchange, or against a boss, the horde loses a die-scaled fraction of the committed shadows, replenished by extracting the newly slain. Storing/re-summoning elites is free/½-cost as before; the horde is always "on call" and costs nothing at rest.

- **Evolution quest hook — the Sovereign's Trial (level 50):** extract a **boss-grade** elite to unlock **Legion** — the horde cap becomes effectively unbounded (thousands), elite cap rises to Intelligence ÷ 3, and the horde in formation grants **+1 modifier step to one coordinated allied action per exchange** on top of its mass bonus.

```text
[SYSTEM] SHADOWS — Elites <filled>/<cap>  ·  Horde <count>
<name> · <grade> · <Field | Stored> · clears <n>/10 to next band
Horde: <count by grade>   (cap = Intelligence × 20)
```

Example — a Shadowbinder at level 25, Intelligence 20 (elite cap 4, horde cap 400):

```text
[SYSTEM] SHADOWS — Elites 3/4  ·  Horde 224
Gravecut · D · Field · clears 7/10 to next band
Hollow · E · Stored · clears 2/10 to next band
Pale Warden · D · Field · clears 4/10 to next band
Horde: 180 E · 44 D   (cap 400)
```

## 18.5 Soulforged Armory — offered for weapon breadth

- **Core mechanic.** **Bind** the essence of a slain foe into a weapon; each bound weapon holds **one source-ability** of its source creature, usable while that weapon is wielded. The ability is stated in Section 6.2 terms — a skill multiplier, a modifier step, or a reduction.
- **Resource costs.** Binding consumes the foe's **core** (Section 11.1) plus the grade-ladder Mana; the bound ability then costs its own Mana per use. Swapping the wielded weapon is free once per exchange.
- **Arsenal cap = level ÷ 5** (floor): level 25 holds 5 weapons, level 50 holds 10.
- **Growth path.** A bound ability rides the **weapon's grade** (band); binding a higher-grade essence of the same kind upgrades that slot. One source-ability per weapon — a second binding overwrites the first unless the class has evolved.
- **Evolution quest hook — the Forge Trial (level 50):** bind a **boss** essence to unlock **Living Edge** — one weapon may hold **two** source-abilities, and bound weapons self-repair between scenes.

```text
[SYSTEM] ARSENAL — <filled>/<cap>   (cap = level ÷ 5)
<weapon> [<grade>] · <bound ability> · Mana <n> · from <source>
```

Example — a Soulforged Armory Bearer at level 25 (cap 5):

```text
[SYSTEM] ARSENAL — 3/5   (cap = level ÷ 5)
Emberfang dagger [D] · Searing Strike ×1.5 · Mana 8 · from a D fire-lizard
Tidespike [C] · Drowning Coil (target −1 modifier step) · Mana 10 · from a C serpent
Boneaxe [E] · Cleave ×1.25 · Mana 4 · from an E ogre-brute
```

## 18.6 Devourer — offered for kill efficiency

- **Core mechanic.** **Consume** a beast **core** to permanently steal a **fragment** of its power. Each fragment is one authored ability drawn from the source creature's signature.
- **Resource costs.** Consumption destroys the core and resolves a **Vitality-governed digestion** attempt on the d100; a failed digestion inflicts a **Moderate injury** (Section 6.3) and the core is spent regardless. A held fragment's active use costs Mana as stated below.
- **Fragment cap = 1 fragment per 5 levels** (floor): level 25 holds 5, level 50 holds 10.
- **Authored fragment kinds** (which one a core yields is fixed by its source creature's signature):
  - **Breath** — a ×2.0 skill-multiplier attack across all foes in reach; Mana 12.
  - **Stone-Hide** — 30% physical damage reduction while sustained; Mana 4 per exchange (composes multiplicatively, Section 7.3).
  - **Regeneration** — restore one standard-hit baseline (¼ band health) at the end of each of the next 3 exchanges; Mana 10.
  - **Venom** — strikes inflict a grade-appropriate poison hazard (Section 6.3); passive on a chosen weapon.
  - **Wings** — flight for a scene (an off-die mobility unlock); Mana 8.
- **Growth path.** Fragments are permanent; consuming a higher-grade core of the same signature upgrades that fragment's band.
- **Evolution quest hook — the Apex Trial (level 50):** consume a **boss** core to unlock **Apex Predator** — the fragment cap rises to 1 per 3 levels, and one fragment may be ascended to boss-band magnitude (its skill multiplier or reduction takes the next band up).

```text
[SYSTEM] FRAGMENTS — <filled>/<cap>   (cap = level ÷ 5)
<fragment> · <band> · <ability> · <Mana n | Passive> · from <source>
```

Example — a Devourer at level 25 (cap 5):

```text
[SYSTEM] FRAGMENTS — 3/5   (cap = level ÷ 5)
Breath · D · ×2.0 cone across foes in reach · Mana 12 · from a D salamander
Stone-Hide · C · 30% physical reduction sustained · Mana 4/exchange · from a C golem
Regeneration · D · ¼ band health for 3 exchanges · Mana 10 · from a D troll
```

## 18.7 Echo Knight — offered for endurance

- **Core mechanic.** **Record** a combat **instant** — a single action resolved at **strong or critical** success — into an echo slot, holding **≤ 3 recorded instants**. **Deploy** an **echo**: a time-copy that replays the recorded instant's action.
- **Resource costs.** Recording is free, but only a strong or critical result may be captured (recording a fourth overwrites a chosen slot). **Deploying an echo costs 8 Mana**; the echo replays the recorded action at the **same skill multiplier**, but the die **re-resolves its degree** — an echo repeats the move, never guarantees the outcome. Up to 3 echoes may be active at once; an echo persists 3 exchanges or until a hit would injure it.
- **Growth path.** At authored thresholds a slot may capture a **critical** (not merely strong), the per-echo Mana cost falls, and echo durability rises.
- **Evolution quest hook — the Chorus Trial (level 50):** unlock a **4th slot** and **Simultaneity** — all recorded instants deploy together in one exchange for a single combined cost.

```text
[SYSTEM] ECHOES — <filled>/3 recorded · deploy Mana 8 each
Slot <n>: <action> · captured <degree> · ×<skill multiplier>
Active echoes: <n>/3
```

Example — an Echo Knight at level 25:

```text
[SYSTEM] ECHOES — 2/3 recorded · deploy Mana 8 each
Slot 1: Mana Bolt volley · captured critical · ×1.0
Slot 2: dagger riposte · captured strong · ×0.75
Active echoes: 0/3
```

## 18.8 Riftwalker — offered for positioning

- **Core mechanic — three abilities and an evolution:**
  - **Rift-step** — teleport to any point in **line of sight**; Mana 6, once per exchange. A true teleport, not a dash; it grants +1 modifier step to the immediate follow-up action.
  - **Micro-rift deflection** — a reaction opening a small rift to deflect or redirect an incoming attack; Mana 8, applying **50% damage reduction** to that hit (composes multiplicatively, Section 7.3) or turning a projectile aside.
  - **Pocket cache** — a personal dimensional pocket, separate from the shop-linked inventory, for staging gear and ambush drops.
- **Resource costs.** As above; both actives ride the pool (Section 5).
- **Growth path.** Rift-step range grows past line of sight at higher tiers; deflection strength and pocket capacity rise with allocation and level.
- **Evolution quest hook — the Threshold Trial (level 50):** unlock the **personal gate** — open a stable two-way portal between two locations the Bearer has physically visited, holding for a scene, with a Mana cost scaling by distance: travel and infiltration the world's own Gates never offered.

```text
[SYSTEM] RIFTS
Rift-step: <range> · Mana 6 · <ready | used this exchange>
Micro-rift deflection: Mana 8 · 50% reduction (reaction)
Pocket cache: <contents>
Gate anchors: <known locations | none — unlocks at evolution>
```

Example — a Riftwalker at level 25:

```text
[SYSTEM] RIFTS
Rift-step: line of sight · Mana 6 · ready
Micro-rift deflection: Mana 8 · 50% reduction (reaction)
Pocket cache: 4 lesser healing potions, 1 spare dagger
Gate anchors: none — unlocks at the Threshold Trial (level 50)
```

---

# 19. Exposure and Re-grading

The Bearer's System is instrument-invisible (Section 14.4), but his **feats are not**. Growth he cannot hide behind a rank card is a standing exposure problem, and this section fixes how it surfaces and what he can do about it — on authored rules, never an out-of-character ruling.

## 19.1 How Anomalous Performance Surfaces

- **Witness testimony.** Inside an uncleared Gate there are no cameras (Section 13.4) — but at the mouth, in the streets, and in a party that walked out, people saw. An E-card who fought like a C is a story hunters tell.
- **Appraiser re-measurement request.** A licensed appraiser — or a suspicious party leader — can ask BGM or CGA to re-measure a hunter whose output does not match his card.
- **Guild scouting.** Guilds watch the freelance boards for underranked talent; a scout who clocks an anomaly reports it upward as a recruiting lead or a compliance flag.
- **Media.** Cable news and tabloids cover S-rank raids and, when it is strange enough, an E-rank doing the impossible — the fastest and least controllable way a Bearer's cover cracks.

## 19.2 The Re-assessment Procedure

BGM (Chicago) and CGA (Prague) run the same procedure: a **mana-capacity re-measurement** against the rank bands. Because the Bearer's pool genuinely grows (Section 5.1), a re-measurement reads toward his **effective band** (the level ladder, Section 6.6) — **higher than his card** — the instrument does not lie, and it does not see the System.

- **Voluntary by default.** A hunter requests re-assessment; the authority schedules and measures. No one is dragged in merely for out-performing his card.
- **Compulsory when court-ordered.** After a **public incident** — a death, an illegal clear, ability use on a human, or a party dispute escalated to a regulator — a court may **order** re-assessment, and refusal is then itself an offense (Section 19.4).

## 19.3 The "Reawakened" Classification

The world has exactly **one sanctioned explanation** for a hunter's card reading higher than it used to: **reawakening** — a rare, documented **second measurement** that a regulator rules a **correction of a card mismeasured at Awakening**, not a second Awakening and not a rank that moved. The instruments are held infallible about the present, so the only admissible account of a changed number is that the original card was wrong all along and the mismeasurement was there from the start — which is exactly the framing the Bible governs (Bible Section 8). It is the narrow exception to Section 2's rule that rank is fixed at Awakening, defined here and nowhere else. It is the Bearer's **best cover**: measured at a D or C pool behind an E card, "reawakened" accounts for the number as a belated correction, without anyone reaching for a System nobody believes exists.

It is not free. A reawakening is rare enough that claiming one draws the very scrutiny — how, when, witnessed by whom — the Bearer most wants to avoid, and a *pattern* of them is not survivable as a story. Reawakening explains one jump; it cannot explain a curve.

## 19.4 What Can Be Refused, and the Cost

- A Bearer may **refuse voluntary re-assessment** outright and keep his carded rank.
- Refusal has a price: **his contract tier is capped at his card.** A carded E-rank is legally barred from C-and-above contracts (Section 9.4) and the pay they carry (Section 12.3) — concealment costs him the money and the missions his real capacity could take.
- A Bearer may **accept** re-assessment and the reawakened classification: this lifts the contract-tier cap to the new rank and opens higher work, at the cost of visibility and the standing question of how he grew.
- A **court-ordered** re-assessment cannot be refused without committing an offense (Section 19.2); there, the only choice left is whether to explain the result as reawakening or to let the question stand open.

The secrecy game is this trade, run entirely on the rules above: **card low and stay poor and safe, or measure up and get rich and watched.** Neither is free, and the world is entitled to press on the seam.

---

# 20. Pacing and Lethality Laws

These are the profile's normative restatement of the world's pacing and danger laws (spec Section 4), binding on every Runtime.

## 20.1 Montage Compression

**Logistics compress to montage by default; beat-by-beat play is reserved for the uncertain, the opposed, or the consequential.** BGM and CGA paperwork, licensing queues, contract auctions, travel, restocking, and selling loot exist in the fiction but are narrated as summary unless a die is genuinely live. If a scene has no way to go wrong — no uncertainty, no opposition, no consequence — it is a sentence, not a session.

This is **compression, not a drama timer**: danger still arises only causally (Consistency Before Drama, Decision 003), never because a scene "needs" tension. A queue at the BGM office is a sentence; an appraiser who starts asking how an E-rank cleared a C is a scene.

## 20.2 The Die Never Replaces a Missing Fact

The d100 resolves uncertainty **within** authored ranges — it never fills the **absence** of authoring. If a number the System can surface is not in this profile, the answer is not a roll; it is a ruling (Section 20.3). A Runtime that reaches for the die to invent a price, a population, a timer, or a drop it could have read from these files has made exactly the error this world was built to end.

## 20.3 Unanswered Questions Become Rulings at the Checkpoint

When play surfaces a question the files do not answer, the answer is **captured as a ruling into the world files at the same session's checkpoint** — so no question is ever asked twice. The ruling is authored where it belongs (this profile for a mechanic, a world file for a fact), with provenance, and it is canon from that checkpoint forward. This is how the profile grows: not by improvisation at the table, but by ruling recorded into the files.

## 20.4 Fully Lethal

**Death is final and the die decides.** The authored threat model (Section 9, Section 18) and the d100 resolve combat; no drama softens a killing result and no plot armor spares the Bearer. Penalty zones (Section 8.3) can kill; red gates (Section 9.6) seal until the boss dies or the Bearer does; an uncleared Gate's timer genuinely lapses into a break (Section 9.8). A Bearer who dies — in an E-Gate, an S-Gate, a penalty zone, an instant dungeon, or the class quest — is dead, his System state transfers to no one (Section 6.5), and the campaign hard-ends. The world's danger is honest: the causal consequence of what is authored, surfaced without flinching and without invention.

## 20.5 Numbers Stay Out of the Fiction

Health totals, damage figures, band tables, modifier steps, XP, and dice results are **Runtime bookkeeping, not world facts.** No character in this world knows what "hit points" are, and none speaks in mechanical vocabulary: a mender reads a wound as a *wound* — "he can't take another hit like that," never "he's at 9 of 40" — a sensor reads presence and pressure, not stat blocks, and a crew leader weighs a fight in blood and odds, not arithmetic. The Runtime surfaces the numeric state **out of character only**: in OOC blocks, tallies, and the debug views the player asks for. The single diegetic exception is the **System itself** — its windows and notifications speak in numbers by design (Sections 14–15), and only its Bearer ever sees them; that asymmetry, one man perceiving the world's hidden arithmetic while everyone around him reads it by feel, is a load-bearing feature of the fiction, not a convenience. An NPC who quotes a number the System would render is a diegesis breach and is corrected like any misstated rule (the `rules` discipline applies).

---
