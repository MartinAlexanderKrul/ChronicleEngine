# Gatefall — World Rule Profile 1.0

**File:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`
**Class:** World rule content (Decision 062): authoritative on behavior in its declared scope; owns no Persistent Object.
**World:** Gatefall
**Profile Version:** 1.0
**Engine Compatibility:** 0.2.0; Data Model 0.1.1
**Status:** Active

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

Crossing a threshold is a **level-up**. Each level-up grants:

- **+3 stat points** (Section 4), allocatable by the Bearer; and
- **full restoration of Health and Mana** to their new maxima.

There is no other source of stat points except the daily-quest streak (Section 8).

## 3.3 Kill XP by Threat Grade

Defeating a monster awards XP by the monster's threat grade. **Elite** monsters award ×2; a **boss** awards ×4.

| Grade | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| Kill XP | 10 | 25 | 60 | 150 | 400 | 1000 |

An elite of grade G awards twice the row value; a boss of grade G awards four times it (an E boss = 40, a C elite = 120).

## 3.4 Gate-Clear Milestone XP

Clearing a Gate — killing its boss, which collapses the Gate — awards a one-time **milestone** bonus in addition to the per-kill XP earned fighting through it. It is awarded **once per Gate**, on the boss kill, and never per attempt or per re-entry.

| Grade | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| Milestone XP | 70 | 150 | 320 | 700 | 1500 | 3200 |

## 3.5 Daily XP

The daily quest (Section 8) awards **+10 XP** per completed day, and **+1 stat point per 7 consecutive completed days**; the streak resets on a miss. Full daily-quest and penalty rules are in Section 8.

## 3.6 Award Timing

XP is added the instant the exchange that resolves the challenge settles. The same exchange adds the XP, checks the threshold, applies any level-up (with its grant and full restore), and fires the notification. If one action resolves several monsters, aggregate that action's XP and notify once. There is no pending-XP state and no later reconciliation.

## 3.7 Worked Example — A Fresh Bearer Clears an E-Gate

A newly awakened Bearer at **level 1** (XP 0/100, Mana 20/20) enters a confirmed E-Gate. Its population, rolled on the standard formula (Section 8 restates it; the full Gate rules are Section 9), comes up **10 common E beasts, 1 E elite, 1 E boss**.

- Ten common E kills: `10 × 10 = 100 XP`.
- One E elite (×2): `10 × 2 = 20 XP`.
- One E boss (×4): `10 × 4 = 40 XP`.
- E-Gate clear milestone (boss kill, once): `70 XP`.

Total earned in the clear: **230 XP**. Tracking against the thresholds: the first 100 crosses level 1→2 (a level-up — **+3 stat points**, Health and Mana restored to full); the remaining **130** carries toward level 3, whose threshold is 200. The Bearer exits the Gate at **level 2, XP 130/200**, with three unspent stat points and full pools.

During the fight the Bearer spends Mana on a skill (Section 7); a representative inline notification stream (Section 8 fixes the format) reads:

```text
Mana: 20 → 14/20
XP: 0 → 100/100
[SYSTEM] LEVEL UP — you are now Level 2. +3 stat points. Health and Mana restored.
XP: 0 → 130/200
```

During the same fight an E beast lands a standard hit — one E standard-hit baseline, about a quarter of the Bearer's Health (Section 6.2). Because that single hit removes under 50% of his remaining Health and does not drop him below 25% of maximum, it inflicts **no injury** (Section 6.3); he takes the damage and fights on. Every number here is derived from Sections 3.1–3.4, 6.2–6.3, and the population formula; a Runtime resolves the whole clear — kills, XP, level-up, Mana spend, and whether a hit wounds — without a ruling.

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

An ordinary awakened adult sits at a **baseline of 10 per stat**. The Bearer begins at campaign-creation values (a campaign concern, civilian-range) and raises stats only by spending stat points.

## 4.2 Stat Points

A **stat point** is the allocatable unit of growth granted by a level-up (+3 each, Section 3.2) and by the daily-quest streak (+1 per 7 consecutive days, Section 8). One stat point raises one stat by **1**. Allocation is permanent canonical capability; there is no respec unless a future authored in-world mechanism adds one with a cost.

## 4.3 The Modifier-Step Rule

A **modifier step** is one 20-percentile-point adjustment to a d100 resolution, composed under engine rules (Rules Section 4.4; Decision 058). Stats feed the die through exactly one rule:

> **+1 modifier step per full 10 points in the stat that governs the action.**

At the baseline of 10 the governing stat contributes **+1 step**; at 20, **+2**; at 30, **+3**; fractional remainders below the next full 10 contribute nothing (a stat of 25 gives the same +2 as a stat of 20). Exactly one stat — the one whose domain the action falls in (Section 4.1) — supplies this contribution; an action outside all five domains takes no stat step. This contribution composes with band-gap and circumstance modifiers, and **the engine's net modifier remains capped at ±3** (Decision 058); the die still resolves the outcome. **Stats never replace the roll** — they establish how well the Bearer is positioned, not whether an uncertain action succeeds.

## 4.4 Capability Unlocks

At **30** and **50** in a stat, the Bearer crosses a **capability unlock**: a named, off-die ability that widens what actions are *possible*, distinct from the modifier-step contribution above. Unlocks are permanent once reached. Each of the five stats has one unlock at 30 and one at 50:

| Stat | At 30 | At 50 |
|---|---|---|
| **Perception** | **Grade-Sight** — read the true grade of any Gate at or below the Bearer's own effective band, converting an unconfirmed reading to confirmed by capability. | **Deep Sight** — read the true grade of a Gate up to one full grade above the Bearer's band. |
| **Agility** | **Pre-empt** — act on an ambush warning before the ambush lands, taking a normal action in the surprise exchange rather than being caught flat. | **Slipstream** — disengage or reposition once per exchange without granting an opponent a reactive strike. |
| **Strength** | **Overpower** — grapple, pin, or bull-rush a foe up to one band above the Bearer's own. | **Titan's Grip** — overpower or restrain a foe up to two bands above, and wield oversized or two-handed arms one-handed. |
| **Vitality** | **Shrug Off** — ignore the effect of minor wounds, continuing to act without their modifier-step penalty. | **Iron Constitution** — suppress the penalty of one serious wound until the scene ends, and halve the onset rate of grade-appropriate environmental hazards. |
| **Intelligence** | **Multitask** — hold +1 concurrent System quest slot beyond the default. | **Analyst** — hold a further +1 concurrent quest slot, and appraise the full effect of an unidentified rune, skill book, or core before use. |

Perception's two unlocks (Grade-Sight, Deep Sight) turn the Gate-assessment problem into a capability the Bearer can grow past; the world otherwise re-measures a Gate's grade only by instrument survey (Section 9).

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

## 6.2 Damage

A hit's damage is built from the attacker's grade, the skill or strike that lands it, and the quality of the d100 result:

```text
damage = standard_hit_baseline(attacker's effective grade)   # ¼ of the attacker's band health
       × skill_multiplier                                    # the skill or strike ratio (Section 7)
       × result_multiplier                                   # by degree of success, below
       × (1 − total_reduction)                               # applied last, per GTF-OVR-002
```

- **Standard-hit baseline.** The baseline of a single ordinary hit is **one-quarter of the attacker's grade band health** (`band_health ÷ 4`). Damage rides the *attacker's* own band: a grade-C attacker's every hit scales to C-band health, a grade-A attacker's to A-band. Because a same-grade target has the same band health, a standard hit at standard success removes about **a quarter of a same-grade foe's Health** — so a matched fight takes roughly four clean hits, and the whole model resolves in relative terms without an authored HP table.
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

Untreated injuries heal on a tiered clock; professional (hospital) treatment **halves** the time at every tier:

| Severity | Untreated | Hospital / professional care |
|---|---|---|
| **Minor** | 1 day | ½ day |
| **Moderate** | 1 week | ½ week |
| **Severe** | 1 month | ½ month |
| **Critical** | 3 months, **with death risk absent treatment** | 6 weeks |

A **Critical** injury left untreated may kill the target before it heals — stabilization is not optional. Healing potions restore Health directly on the schedule authored in the economy (Section 12, per Anchor A7); a potion controls immediate bleeding and restores Health but does not by itself clear a wound's severity, which advances only through elapsed time and care.

## 6.4 Treatment Interaction

Direct Health restoration (a potion, a skill, a facility) and severity recovery are independent: restoring Health to full does not automatically clear an injury condition, and clearing a condition does not automatically restore Health. A fictional label ("bandaged", "rested") never upgrades care on its own; care advances only through a resolved treatment appropriate to the injury. New damage applies immediately and may worsen severity.

## 6.5 Death Is Final

**Death is death.** No resurrection, revival, or reincarnation exists in Gatefall at Profile 1.0. When the Bearer dies, the death is resolved and recorded normally, all System state remains with the dead Bearer and transfers to no one, and **the campaign hard-ends** — it becomes terminal under the Engine Rules. The System is patient on a scale its host is not; that a successor may one day be chosen is a matter for the world's hidden canon, never a continuation of the dead character and never a promise play may rely on. A Bearer who dies in an E-Gate is as dead as one who dies in an S-Gate. A **Critical** injury (Section 6.3) that goes untreated is one of the ordinary roads to that end.

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

---

# 8. The Daily Quest and Penalty Zones

The System issues the Bearer a **daily quest** — a training regimen with a hard deadline and a real cost for failure. It is the world's mechanism for keeping the Bearer growing between Gates, and its penalty is the sharpest edge the System shows in ordinary play.

## 8.1 The Daily Quest

Once per in-fiction day the System issues the quest, rendered in a bracketed System block:

```text
[SYSTEM] QUEST ISSUED — DAILY TRAINING
Objectives: 100 push-ups 0/100 · 100 sit-ups 0/100 · 10 km run 0/10
Reward: 10 XP · streak 4/7 → +1 stat point at 7
Warning: failure to complete within 24 h transfers you to a penalty zone.
```

- **The regimen** is fixed: **100 push-ups, 100 sit-ups, and a 10 km run**, completed within a **24-hour window** from issuance.
- **Reward on completion:** **+10 XP** (Section 3.5), and progress on the **streak**.
- **Streak:** each of **7 consecutive completed days** grants, on the seventh, **+1 stat point**; the count then continues, granting another point every further seven days. **A single missed day resets the streak to zero.**

Completion is genuine effort, not a checkbox — the objectives are physical work the Bearer must actually do in the fiction. The System tracks progress against each objective (the `0/100` counters advance as the work is done) and resolves the quest as completed or failed at the window's close.

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
- **Grade:** the instance runs at the **Bearer's own effective band** — it scales with him, so it never stops being dangerous as he grows.
- **Population:** populated per the standard Gate population formula at the Bearer's effective grade **G**:

  ```text
  3d6 common beasts (grade G)
  + 1d2 elites (grade G, ×2 band health)
  + 1 boss (grade G, ×4 band health, damage one band up)
  ```

  (Section 9 restates this formula as the general rule for all Gates; it is reproduced here because a penalty zone must be fully resolvable from this section alone.)
- **No loot:** the penalty zone drops **nothing** — no crystals, cores, runes, or currency. Its monsters award ordinary kill XP if the Bearer chooses to fight, but the zone exists to punish, not to pay.
- **Exit:** the instance ends and returns the Bearer to the world **only on surviving the full four hours**. Death inside it is death (Section 6.5), and the campaign ends there.

The penalty is deliberately not a fine or a debuff: missing the daily quest drops the Bearer, alone and unrewarded, into a fight at his own band that he did not pick. That is the System being indifferent to his convenience — the daily quest is an order, and refusal has teeth.

---
