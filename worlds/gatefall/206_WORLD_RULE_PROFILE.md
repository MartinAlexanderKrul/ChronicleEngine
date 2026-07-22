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

From detection, an uncleared Gate runs a countdown to a **dungeon break** (Section 9.7). Higher-grade Gates break faster — the pressure behind them is greater.

| Grade | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| Days from detection to break | 7 | 6 | 5 | 4 | 3 | 2 |

The timer starts at detection, not at first entry. A Gate cleared before its timer expires closes safely on the boss kill; a Gate whose timer runs out breaks.

## 9.4 Legal Minimum Party

Regulation sets the minimum sanctioned party to legally enter a Gate by grade. Entering under-strength is an offense in both jurisdictions (Section 13).

| Grade | Legal minimum party |
|---|---|
| **E–D** | None (a lone licensed hunter may enter) |
| **C** | 4 licensed hunters |
| **B** | 8 licensed hunters |
| **A** | 16 licensed hunters, including at least one A-rank |
| **S** | National-asset operation (state-directed, not an ordinary contract) |

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
+ 1 boss (grade G, ×4 band health, damage one band up)
```

- **Common beasts** have plain grade-G band health (Section 6.1) and award grade-G kill XP (Section 3.3).
- **Elites** carry **×2** band health and award **×2** kill XP.
- The **boss** carries **×4** band health, awards **×4** kill XP, and deals damage as if **one band up** (its standard-hit baseline rides the next grade's band, Section 6.2). Killing the boss **clears the Gate** — it collapses the instance and awards the Gate-clear milestone XP (Section 3.4).

An empty or under-populated interior is never a lucky break; it is an authored signal that something has already emptied the Gate — a break in progress, a prior party wiped, or a worse thing feeding. The Runtime treats emptiness as a clue, not an absence.

## 9.8 Dungeon Breaks

If a Gate's break timer (Section 9.3) expires before the Gate is cleared, the Gate **breaks**: its barrier fails and its **remaining population** — every monster not yet killed, boss included — pours out into the surrounding area, where it fights with none of the containment a sealed instance provides. A break is the disaster the whole regulatory apparatus exists to prevent.

Response follows a fixed escalation order by jurisdiction:

| Jurisdiction | Response order |
|---|---|
| **Chicago** | BGM **emergency contract** issued → **nearest guild strike team** dispatched under it. |
| **Prague** | **CGA** mobilizes → **Karlov Guild** or the **nearest international branch** dispatched. |

The remaining-population rule means a Gate broken early (few kills made) is far worse than one broken after a party has fought most of the way through — what pours out is exactly what was left inside.

## 9.9 Worked Example — An Unconfirmed D Reads Worse

A Red Line contract posts an **unconfirmed D-Gate**. Because it is assessed D, no legal minimum applies (Section 9.4) and a small crew takes it.

1. **Confidence → true-grade roll.** Unconfirmed, so the true grade resolves on first entry (Section 9.5). The d100 comes up **84** (71–92): **one grade higher**. The Gate is truly **C**, not D — and a C-Gate legally requires four licensed hunters. The crew is already in an under-strength, illegal entry without knowing it.
2. **Population.** At grade C the formula (Section 9.7) rolls **3d6 = 11 common C beasts, 1d2 = 2 C elites, 1 C boss** (×4 band health, damage one band up — it hits like a B).
3. **Archetype.** Unknown on entry because the Gate was unconfirmed (Section 10); it reveals as **Crypt** (d8 = 1) — darkness, so Perception checks to avoid ambush.
4. **Clear.** The crew fights through and kills the boss; the Gate collapses. Kill XP and the C-Gate milestone (320 XP, Section 3.4) settle on the boss kill.
5. **Loot roll.** Eleven C-crystals drop (one per beast, Section 11); the two elites and the boss each drop a C-core (three cores). The boss-drop d100 (Section 11) comes up **52** (41–65): a **rune** teaching one authored skill.
6. **Sale.** At licensed market prices (Section 12): 11 C-crystals × **$2,500 = $27,500**; 3 C-cores at ≈2.5× the C-crystal price (**$6,250** each) = **$18,750**. The clear grosses **≈ $46,250** in sellable crystal and core, plus the rune, which the Bearer keeps to learn a skill rather than sell.

Every step above is resolved from the tables in Sections 9, 11, and 12 — the Runtime took the Gate from posting to sold loot without inventing a single number, and the "easy D" that was really a C is exactly the kind of hazard the confidence rule exists to model.

---

# 10. Dungeon Archetypes

Every Gate has an **archetype** — the character of its interior — fixed when the Gate is instantiated and rolled on a d8. Each archetype carries **one mechanical twist**, stated below in a single rule.

| d8 | Archetype | Mechanical twist |
|---|---|---|
| 1 | **Crypt** | Darkness fills the interior: entering combat requires a Perception check to avoid being ambushed, and unlit fighting imposes −1 modifier step on sight-dependent actions. |
| 2 | **Hive** | Swarming brood: the common-beast count is **doubled** and **no elite is present** (the two 1d2 elite slots are replaced by additional common beasts). |
| 3 | **Flooded Mine** | Standing water throughout: Strength and Agility actions take −1 modifier step, and going under imposes a drowning risk resolved as an environmental hazard. |
| 4 | **Overgrown Temple** | A lootable shrine stands in the interior: clearing the Gate grants a **bonus loot roll** (Section 11), but the shrine is guarded by an extra elite. |
| 5 | **Beast Den** | A second **boss-band alpha** roams alongside the boss — two boss-grade threats (×4 band health, damage one band up) instead of one. |
| 6 | **Shattered City** | Broken verticality: falls and drops deal **band damage** (a standard-hit baseline at the faller's grade, Section 6.2), and ledges force Agility checks. |
| 7 | **Ashfield** | Lingering burn hangs in the air: every hour inside forces a Vitality check against a grade-appropriate burn hazard (Section 6.3). |
| 8 | **Frozen Gallery** | Deep cold saturates the instance: **Mana recovery is halved** inside (Section 5.2), pressuring any Mana-dependent Bearer to clear quickly. |

**When the archetype is known.** The archetype is set at Gate instantiation. On a **confirmed** Gate the surveyors have seen the interior, so the archetype is **named in the assignment** alongside the confirmed grade. On an **unconfirmed** Gate the archetype is **unknown** until first entry, and it reveals as the party crosses the threshold — the same entry that resolves the true grade (Section 9.5).

An **archetype twist doubled** anomaly (Section 9.6, 81–95) applies that single twist at double effect: doubled darkness penalty, doubled swarm, twice the hazard rate, and so on, as fits the archetype.

---

# 11. Loot

Loot is the material output of a cleared Gate. Crystals and cores drop deterministically; the boss drop is rolled. Nothing here is estimated — every drop is read off the rules below.

## 11.1 Crystals and Cores

- **Mana crystals.** Every beast killed drops **one crystal**, of the **beast's own grade**. An E beast drops an E-crystal; a C beast drops a C-crystal. Crystals are the world's base currency good (Section 12).
- **Beast cores.** **Elites and bosses always drop one core** each, of their grade. A core is worth roughly **2.5× the same-grade crystal** (Section 12) and is the raw material for gear and consumables.

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
| **Guild-salaried B-rank** | ≈ **$240,000 / year** |

Prague contract and salary rates run at **≈ 70% of Chicago**, paid in CZK/EUR.

## 12.4 Cost of Living

| Item | Chicago | Prague |
|---|---|---|
| **Shared apartment** | $1,400 / month | 18,000 CZK / month |

## 12.5 The System Shop

The shop is the Bearer's alone (Section 2). It trades in **gold**, buying crystals and selling consumables and gear. **USD and gold do not exchange** — the Bearer converts loot to gold only by selling it to the shop, and spends gold only inside it.

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

## 12.6 Starting Funds by Background

A campaign sets the Bearer's opening money by background. Prague equivalents are the USD figure **×22** in CZK.

| Background | Chicago (USD) | Prague (CZK, ×22) |
|---|---|---|
| **Working poor** | $800 | 17,600 CZK |
| **Stable** | $4,000 | 88,000 CZK |
| **Guild-family** | $15,000 | 330,000 CZK |

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

## 13.3 Legal Minimums

Party size is not only a tactical choice; regulation sets a **legal minimum** by Gate grade (Section 9.4): none for E–D, four licensed for C, eight for B, sixteen plus an A-rank for A, and a national-asset operation for S. Entering below the minimum is an offense in both Chicago (BGM) and Prague (CGA) jurisdictions, independent of whether the clear succeeds.

## 13.4 The Witness Rule

The foundation of every party dispute is one fact: **inside an uncleared Gate there are no cameras and no instruments — only testimony.**

A sealed Gate interior admits no recording and no remote monitoring: mana flux blinds instruments, and nothing transmits out of a live instance. What happened inside is established solely by the **testimony** of those who walked out. This is the authored foundation on which betrayal, false report, and disputed-clear plots stand — the profile fixes the fact and adds no further subsystem. Who lived, who died, what dropped, and who struck whom inside an uncleared Gate is, mechanically and legally, whatever the survivors say it was until contradicted by evidence found outside.

---
