# Reikon — World Rule Profile 0.1

**File:** `worlds/reikon/206_WORLD_RULE_PROFILE.md`
**Class:** World rule content (`010_ENGINE_RULES.md` Section 14.5; Decision 062)
**World:** Reikon
**Profile Version:** 0.1
**Engine Compatibility:** 0.2.0; Data Model 0.1.1
**Status:** Active

---

This document is Reikon's declared **World Rule Profile** under `010_ENGINE_RULES.md` Section 14 and Decision 059.

It is **world rule content**: authoritative on behavior within its declared scope, owning no Persistent Object and carrying no identifier — as the Engine Rules are authoritative and identifier-free, and for the same reason. Rules are not state (Decision 062).

Reikon inherits Chronicle Engine behavior except where an override below declares otherwise. Undeclared behavior uses the engine default. **An undeclared conflict is a contradiction, not an override** (Rules Section 14.1).

`205_THE_LEDGER.md` is this world's System lore. It describes; this document governs. Where the two disagree on a number or a mechanic, **this document is authoritative** (Rules Section 14.5).

---

# 1. Declared Overrides

## RKO-OVR-001 — Causal System Progression

- **Replaces/refines:** Rules Sections 5.3 and 5.7; Decisions 012, 013, 051, and 057 where they prohibit levels, XP, or the System from causing capability growth.
- **Scope:** The System Bearer alone. Not System-bearing Awakened generally — there is one (Section 2).
- **Activation:** Active while the character bears Reikon's diegetic System.
- **Replacement:** XP awarded for genuine resolved challenges is causal canonical state. Crossing a threshold causes an **Ascension**, which grants allocatable points and enlarges the mana pool. Allocated points directly change canonical capability.
- **State/provenance:** The character ledger records level, current XP, next threshold, unspent points, every allocation, the mana pool maximum, and the event or resolved challenge that awarded the XP.
- **Resolution:** Growth changes capability, and therefore modifier steps, costs, magnitudes, prerequisites, and available methods. **It never supplies the outcome of an uncertain action.** Uncertain actions still resolve through Rules Section 4 and Decision 058.

## RKO-OVR-002 — System Vitality and Damage Reduction

- **Replaces/refines:** Rules Sections 6.8–6.10 and Decision 018 where they reject a universal health-point pool or percentage damage reduction.
- **Scope:** System-bearing Awakened characters and System-evaluated Rift creatures. Ordinary non-System humans use the engine injury model unless another Reikon rule declares otherwise.
- **Activation:** Active while the entity has System vitality state.
- **Replacement:** Health is a canonical current/maximum numeric pool. Damage removes Health after applicable percentage reductions. At zero Health the entity is incapacitated and receives an outcome appropriate to the attack and established fiction; zero does not erase the need to determine death, survival, or transformation. Wounds, pain, shock, exhaustion, and status effects may coexist with Health and impose modifier steps independently.
- **State/provenance:** Scope-responsible ledgers record current/max Health, active reduction sources, damage, healing, and consequential conditions with event provenance.
- **Resolution:** The die resolves whether an uncertain attack or defense succeeds and its result band; established ability and protection determine damage and reduction **after** that result.

## Interaction

`RKO-OVR-001` and `RKO-OVR-002` are independent and compose without conflict. Progression (001) sets the capability values that vitality (002) consumes. Neither reaches action resolution.

---

# 2. Scope: Who the Overrides Bind

Reikon has three kinds of people, and the overrides bind only the third.

| | Mana pool | System | Governed by |
|---|---|---|---|
| **The Dormant** | none | none | Engine defaults |
| **The Awakened** (hunters) | yes | **none** | Engine defaults — emergent capability, no levels, no XP (Decisions 012–014) |
| **The System Bearer** | yes | yes | `RKO-OVR-001` and `RKO-OVR-002` |

There is currently **one** Bearer alive. Who that is, is campaign canon, not world rule content: this profile binds *the Bearer role*, and each campaign's ledgers name the entity that holds it. A forked world-line has its own Bearer with its own identifier (Decision 053) and inherits this profile unchanged.

This scoping is the point. Reikon is not a world where the engine's progression model is replaced wholesale; it is a world that otherwise obeys the engine and contains exactly one legendary exception. An ordinary Awakened grows the slow way — practice, ordeal, mastery — and nothing counts it.

---

# 3. The Mana Pool

Mana is **tracked canonical state** (Decision 057). It is computed, not narrated: every cost and every tick of recovery is applied from the rules below and recorded, never estimated to a plausible figure.

**Pool is capacity; Mana Affinity is control.** They are different quantities and must not be conflated. The pool is how much you hold. Mana Affinity (a Stat, `n/20`) is how well you wield it. Allocating a point to Mana Affinity sharpens control; it does **not** enlarge the pool.

## 3.1 Pool and Rank Bands

Official Rank is a band of pool capacity, measured at Awakening. Bands are contiguous and non-overlapping.

| Rank | Mana pool | Typical | Baseline monster Health at this grade (Section 6.4) |
|------|-----------|---------|------|
| **E** | 5–15 | ~10 | 30 |
| **D** | 16–45 | ~28 | 82 |
| **C** | 46–120 | ~80 | 227 |
| **B** | 121–300 | ~200 | 623 |
| **A** | 301–750 | ~500 | 1,715 |
| **S** | 751+ | ~1,200 | 4,715 |
| **Anomalous** | unmeasurable, unstable, or refuses assessment | — | — |

The band typicals form a geometric ladder of roughly **×2.75 per band**. Every other scale in this profile — pool growth, monster Health, XP awards — rides that same ladder. This is not decoration: it is what keeps a Bearer's progression, the world's threats, and the XP economy in fixed proportion at every Rank.

## 3.2 Pool Growth — Bearer Only

For an ordinary Awakened the pool is **fixed for life**. Three exceptions exist:

1. **Re-awakening** (rare, documented) — a second Awakening yields a new assessment against a new pool.
2. **Rare cores and artifacts** (rare, dangerous) — a bargain, not an upgrade path; the world makes it cost something.
3. **Bearing the System** (legendary; one person alive).

For the Bearer, and only for him, **every Ascension enlarges the pool**:

```
max_mana(L) = max(
    round(awakening_pool × 1.05^(L − 1)),     # geometric growth
    awakening_pool + (L − 1)                  # floor: never less than +1 per level
)
```

Two properties are load-bearing:

- **Closed form.** `max_mana` depends only on the Awakening pool and the level. Any Runtime computes the value at Level 90 directly, without replaying 89 Ascensions. An iteratively-compounded curve would be path-dependent: one rounding difference at Level 7 would diverge permanently, and two Runtimes reading the same ledger would disagree. That is a canon-determinism failure (`012` Section 7), so the curve is stated closed-form.
- **Never a dead level.** The linear floor guarantees at least +1 every Ascension — a Bearer never levels without feeling the well deepen. The geometric term overtakes the floor at **Level 20** and dominates thereafter.

The result is that early levels add a point and late levels add dozens, literally: the pool runs `13, 14, 15, 16 … 24` through Level 12, and gains 50 in a single level at Level 90.

The maximum is canonical state, recorded with the Ascension event that caused it, before it is surfaced.

**Band crossings for a Bearer opening at 13** (exact, from the formula):

| Level | Pool | Assesses into |
|-------|------|---------------|
| 1 | 13 | E |
| **4** | **16** | **D** |
| 18 | 30 | D |
| **27** | **46** | **C** |
| 36 | 72 | C |
| **47** | **123** | **B** |
| 54 | 173 | B |
| **66** | **310** | **A** |
| 72 | 415 | A |
| **85** | **783** | **S** |
| 90 | 1,000 | S |
| 100 | 1,628 | S |

One band per ~20 levels, and Level 90 lands in S — making the world's existing claim that "as you approach Level 90+ your power approaches S-Rank capability" literally true of the pool rather than a figure of speech.

**This is the engine of the Bearer's central problem.** His licence says E because his pool *was* 13. By Level 5 he carries a D-Rank's capacity behind an E-Rank card, and the Association re-measures only on request. Every Bearer therefore holds a standing choice, renewed by silence — reveal and invite the question of *how* a pool grew, or conceal and risk exposure every time capacity shows in public. Neither is free, and the world is entitled to press on the seam.

## 3.3 Recovery

- **Resting:** 1 mana per 10 seconds (6/minute).
- **Active:** 1 mana per 30 seconds while moving, fighting, or under threat.
- **Mana potion:** a vial holds **20 mana**, drunk in half-doses of **10**. Nothing is wasted — the vial keeps what you do not drink, indefinitely, and a draw never exceeds your shortfall.
- **Rift cores:** consuming a core restores mana quickly (quantity by grade) and is dangerous.

Recovery **does not scale with the pool**. Deep pools take proportionally longer to refill, which is why high-Rank hunters carry potions and low-Rank hunters carry patience.

## 3.4 Running Dry

At 0 mana a hunter cannot cast. The exhaustion is real: treat it as a condition imposing modifier steps (Rules Section 6.10), not merely an empty counter.

---

# 4. Ascension and Allocation

## 4.1 Points

An Ascension grants **2 allocatable points**. Points come only from levelling — there is no other source.

One pool of points serves both Stats and Abilities. That is deliberate: investing in Fireball's efficiency costs Mana Affinity, and the opportunity cost is the design.

## 4.2 Stats

The five Stats are **Power, Endurance, Speed, Mana Affinity, Perception**, each `n/20`.

**20 is a hard cap.** No stat exceeds it, ever, by any means.

One point raises one stat by 1. From Daedalus's opening 54 (8+9+10+13+14), maxing all five costs **46 points — roughly Level 24**.

The cap is not a limitation to be worked around. Because net modifier steps are capped at ±3 (Rules Section 4.4), stats above 20 could not affect resolution anyway; an uncapped scale would be pure inflation with no mechanical meaning.

## 4.3 Ability Sub-Stats

Each Ability carries two allocatable sub-stats:

**Efficiency** — lowers the mana cost.

```
cost(P) = round(base_cost × (1 − 0.05 × min(P, 10)))     floor: 50% of base
```

Ten points floors an Ability's cost at half its base. Reduction is **proportional, not flat**: a flat −1 per point would be −17% on a 6-cost Combustion Touch but only −8% on a 12-cost Fireball, and cheap Abilities would trend to free.

**Strength** — raises effect magnitude.

```
magnitude_multiplier(P) = 1 + 0.10 × P     no cap
```

Strength is uncapped precisely *because* it is magnitude only. It never touches the die.

**Passives are ineligible for Efficiency.** Reinforced Body costs 0 and always will; there is nothing to reduce.

## 4.4 Derived Ability Level

An Ability's level is **not stored**. It is derived from its total allocation:

```
ability_level = 1 + floor(total_points_in_ability / 5)
```

Monotonic by construction — investment can never lower a level. `/system` renders this value; it is never recorded as an independent counter that could drift from the allocations that produce it (Decision 051; Section 10 rule 1).

## 4.5 Irreversibility

**Allocations are irreversible.** There is no respec.

This is a rule with a reason: if allocations could be withdrawn, a derived ability level could fall, and capability would decrease with no in-world cause — a Causality violation (Law II). Should Reikon ever want a respec, it requires a declared in-world mechanism with a cost, added to this profile.

---

# 5. Ability Costs

Costs gate whether a cast can be **attempted**. A cost never decides the result. The d100 resolves the attempt (Rules Section 4).

Base values at zero Efficiency allocation:

| Ability | Base cost | Effect (Section 6.4) |
|---------|-----------|--------|
| Fireball | 12 | **1.0×** band Health, area — split across targets in the blast; 2-second cast |
| Flame Shield | **2 / second** | **50%** damage reduction while sustained |
| Combustion Touch | 6 | **1.5×** band Health, single target, requires contact |
| Endurance Surge | 10 | **+1 modifier step** to physical actions, 60 seconds |
| Reinforced Body | **0** | **20%** physical damage reduction, passive, permanent |

Efficiency allocation is applied per Section 4.3 and the result recorded on the character ledger. **Cost is never stored** — it is computed from base and allocation (Section 11).

**Fireball (base 12) at each Efficiency point:**

| Points | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Cost | 12 | 11 | 11 | 10 | 10 | 9 | 8 | 8 | 7 | 7 | **6** |

**Reinforced Body is free.** An always-active passive that drained mana would make a full pool unreachable. Ordinary exertion — running, drilling, marching, lifting — costs nothing. Fatigue is fatigue; mana is spent only on Abilities.

**On Endurance Surge granting a modifier step.** This does not breach the resolution boundary in Section 6.1. What that boundary forbids is *allocation permanently purchasing die odds*. A temporary, mana-costed, in-fiction effect is **established circumstance** — exactly what Decision 052 requires a modifier to arise from. A spell that makes you faster *is* a circumstance. Buying +1 forever with level-up points is not.

---

# 6. Resolution Interface

## 6.1 The Bright Line

**The System never resolves an action.** Intent + circumstance + d100 resolves every uncertain action (Rules Section 4). Stats, Rank, Level, and Abilities establish capability and modifier steps; they are never auto-outcomes, prerequisites, or gates that replace the die.

A mana cost may gate whether a cast is **attempted**. The die decides whether it **succeeds**. XP is never spent to purchase capability or a result. The impossible stays impossible (Rules Section 4.2).

Growth is earned through genuine challenge. Trivial, no-stakes repetition is not a farm for power — and under Section 8.2 the arithmetic enforces that without anyone needing to remember the rule.

## 6.2 The No-Roll Zone

Level does not tilt fair fights. **It eliminates unfair ones.**

The Bearer's **effective band** is the Rank band his *current* pool falls in (Section 3.1) — not his certified Rank. The challenge's band is its Rift or creature grade. Compare them:

| Band gap (Bearer vs challenge) | Resolution |
|---|---|
| **≥ 2 bands up** | **No roll. Automatic success** (Rules Section 4.2 — "reliable competence") |
| 1 band up | Roll, **+1** step |
| Same band | Roll, **0** steps |
| 1 band down | Roll, **−1** step |
| ≥ 2 bands down | Roll at **−2/−3**, or automatic failure where it violates established reality |

This is Reikon's declared application of Rules Section 4.2, which already grants automatic success where "the character has already demonstrated reliable competence." A Level 100 Bearer (pool 1,628, S band) throwing Fireball at an E-grade Broodling is **not a roll he wins — it is not a roll**. His Fireball's own level is irrelevant to that; Ability level sets cost and magnitude, never whether the thing lands.

**This is why level does not buy modifier steps.** An "automatic success" expressed as a forced high roll would still be read against the natural roll, and Decision 052's critical tails cannot be modified away — a natural 01–05 would still fumble. Not rolling avoids that entirely, and it is already legal under the engine as written.

At a **gap of 0 the fight is fair and the tails are live**: an S-band Bearer in an S-grade Rift can fumble, and can die. This is what makes the world's own claim true — at high Rank, "the pool stops being the limit; the Rift does."

## 6.3 Modifier Steps

Steps compose per Rules Section 4.4 and Decision 058: one step is **20 percentile points**, and the net is capped at **±3**.

| Source | Contribution |
|---|---|
| Band gap (Section 6.2) | −3 … +1 |
| Mana Affinity | 1–4 → **−1** · 5–15 → **0** · 16–20 → **+1** |
| Established circumstance | remainder |
| **Net** | **capped ±3**; critical tails always live (Decision 052) |

**Allocation buys no steps.** Neither Ability sub-stat touches the die. Mana Affinity contributes at most **+1** across its entire range.

That ceiling is deliberate, and it is not stingy. One step is twenty percentile points: maxing Mana Affinity from 13 to 20 permanently turns a 50% action into a 70% one. Anything more generous and a handful of levels would walk the net to +3, where every non-fumble roll lands at 66 or above and the die stops deciding anything — which Law VII (Fairness) forbids and which both Decision 057 and Decision 059 explicitly retained as the line.

## 6.4 Damage

```
damage = band_health(Bearer's effective band)
       × ability_ratio                          (Section 5)
       × (1 + 0.10 × strength_points)           (Section 4.3)
       × band_multiplier(result)                (below)
       × (1 − total_reduction)                  (Section 7.2)
```

**Result band multiplier:** partial success **0.5×** · success **1.0×** · critical success **2.0×**. This makes Decision 011's degrees of success explicit rather than narrated.

**Baseline damage scales with the Bearer's own band** (`band_health` from Section 3.1's table). This is not a preference — it is forced. Anchor base damage at E-grade instead, and a Level 90 Bearer with 80 strength points does `30 × 9 = 270` against an S-grade's 4,715 Health: five percent of its health bar. Reaching parity from a fixed base would need ~1,570 points, or Level 785.

So the band supplies the baseline, and **strength is what makes him punch above his band** — which is the Bearer's entire premise.

**A monster needs only a grade, never a stat block.** Its Health is its grade's value in Section 3.1; its baseline damage equals that same value. New creatures are authored by naming their grade. Reikon gains no bestiary and no tactical subsystem (Decision 020).

---

# 7. Vitality

## 7.1 Health

Health is a canonical current/maximum pool under `RKO-OVR-002`. For the Bearer it rides the same curve as the pool, modified by Endurance invested since Awakening:

```
max_health(L, End) = round(
    awakening_health
    × 1.05^(L − 1)
    × (1 + 0.05 × (End − awakening_End))
)
```

Health must scale, or the model breaks: a Level 90 Bearer with a 1,000 mana pool and a Level 1 body would be killed by a single A-grade hit, and "Level 90 approaches S-Rank capability" would be false in the only way that matters.

Daedalus opens at `awakening_health` 100, `awakening_End` 9 → 100 at Level 1.

**Calibration.** Against a same-band monster striking for its grade's baseline damage (Section 6.4), the Bearer survives a consistent **2–3 hits** at every Rank, and **~3–4** with Reinforced Body:

| Level | End | Band | Health | Same-band hit | Hits survived (with RB) |
|---|---|---|---|---|---|
| 1 | 9 | E | 100 | 30 | 4.2 |
| 27 | 15 | C | 462 | 227 | 2.5 |
| 47 | 18 | B | 1,368 | 623 | 2.7 |
| 66 | 20 | A | 3,695 | 1,715 | 2.7 |
| 90 | 20 | S | 11,917 | 4,715 | 3.2 |

Flat by design: a same-band fight is lethal at every Rank. An S-grade Rift is exactly as dangerous to a Level 90 Bearer as an E-Rift was at Level 1 — which is what "the pool stops being the limit; the Rift does" has to mean if it means anything.

## 7.2 Damage Reduction

Reductions **multiply; they never add**:

```
total_reduction = 1 − Π(1 − r_i)
```

Reinforced Body (20%) with Flame Shield (50%) gives `1 − (0.8 × 0.5)` = **60%**, not 70%.

This is a hard rule, not a rounding preference. Additive reduction reaches 100% at a finite stack, and 100% is immunity — the "special narrative protection" Law VII forbids. Multiplicative reduction approaches 1 and never arrives.

---

# 8. Experience

## 8.1 Thresholds

```
T(L) = 1.4L² + 29L + 70          rounded to the nearest 10
```

`T(L)` is the XP required to advance from Level L to L+1.

| L→L+1 | 1 | 2 | 3 | 5 | 10 | 20 | 50 | 90 |
|---|---|---|---|---|---|---|---|---|
| XP | **100** | 130 | 170 | 250 | **500** | 1,210 | **5,020** | 14,020 |

Reaching Level 90 costs **456,910 XP** cumulative. There is no level cap.

## 8.2 Awards by Grade

A challenge's XP award rides the same ×2.75 ladder as everything else:

| Grade | E | D | C | B | A | S |
|---|---|---|---|---|---|---|
| XP | **~7** | ~19 | ~53 | ~145 | ~400 | ~1,100 |

E-grade baselines, as established canon: **Broodling ≈ 6, Swarmer ≈ 8**. Clearing a Rift core awards a larger milestone sum.

Against the threshold curve, grade-appropriate content costs **~11 to ~93 kills per Ascension, averaging ~40**, across the whole span from Level 1 to Level 90 — no runaway and no wall at any Rank.

**The variance is the design, not noise in it.** Within a band the threshold keeps climbing while the award stays flat, so the grind tightens the longer he stays: cheap just after a band crossing, punishing just before the next. The pressure resolves upward. One grade up pays **×2.75** for a **−1 step** — so the moment his own band turns grindy, the arithmetic pushes him toward things that can kill him. That is the world doing the work: he cannot level without real ordeal because staying safe stops paying.

It makes the anti-farming rule arithmetic rather than exhortation, too. Grinding Broodlings at Level 54 yields 7 XP against a 5,720 threshold: **817 kills per level**. The System cannot be farmed without ordeal because the numbers say so, not because a Runtime remembered a sentence.

---

# 9. The System's Behavioral Contract

## 9.1 The System Is Not a Persistent Entity

The System has state, continuity, and initiative, which look entity-shaped. It is **not** a Persistent Entity, and must not be modeled as one.

- Its **state** is the Bearer's state, held in his own `canonical_state` on his campaign's character ledger.
- Its **continuity** is the Bearer's continuity. It has no aliases, no lifecycle, no end states, no relationships of its own.
- Its **initiative is not agency.** A storm has initiative. An interjection is a world reaction, not an actor's choice.

Structurally the question is closed regardless: the Persistent Entity Type set is closed (`011` Section 4.2) and contains nothing it fits, and Rules Section 14.3 forbids a World Rule Profile from touching Persistent Object structure. Reikon could not make the System an entity on its own authority.

**The System is an interface, not an actor. It has timing; it has no volition.** Its output is a function of the Bearer's state and the rules in this document — a pure function with a trigger. Hence the testable property, which is canon-determinism (`012` Section 7) applied to a fixed surface:

> **Given the same Bearer state and the same trigger, the System says the same thing.**

An entity's state changes for its own reasons. The System's never does.

## 9.2 Truthfulness and Assertive Domain

**The System never lies.** It never asserts a falsehood, and it never asserts a world-fact it does not know.

Truthfulness, omniscience, and infallibility are three different properties, and conflating them is what makes an "always truthful" oracle impossible. The System is truthful *and* non-omniscient without contradiction, because its assertive domain is bounded:

- **About the Bearer it is authoritative and correct.** It *is* him, quantified. His own state is not in doubt.
- **About the world it may point, never describe.** "A hidden quest exists here" is a pointer. "The pack leader is a disguised A-rank" is a description. Pointing leaks no secret; describing bypasses Discovery (Law VI).

**Silence is not a lie.** Withholding, cryptic phrasing, and `[HIDDEN] ???` are honest: they assert that a thing exists without asserting what it is.

**It is not an oracle.** It cannot be asked what the world is hiding, and it does not answer. It never tells the Bearer a secret of the world.

## 9.3 Trigger Tiers

The System never decides what is true. It may decide **when to say it**.

**Tier 1 — Mandatory.** A pure function of Bearer state. Zero discretion; fires the instant the condition holds.

- XP threshold crossed → Ascension announcement
- Quest completed or failed → resolution notice
- Quest deadline lapsed → notice
- Health or mana crossing a declared band → warning

**Tier 2 — Permitted, bounded discretion.** A declared precondition must hold; the Runtime chooses which beat within the window.

- Appraisal, when an unappraised entity enters perception
- Hidden-quest pointer, within proximity of an undiscovered thing
- Warning, while a declared danger condition holds

The Runtime picks the moment. It **never** picks whether the precondition is met.

**Tier 3 — Prohibited.** The System may never fire to supply an uncertain outcome, to describe a world-fact (Section 9.2), to author the Bearer's decision, or **with no declared precondition at all**. The last clause is what prevents an interface from becoming an actor.

This preserves the intended feel exactly. The System interrupting a negotiation he cannot afford to break is legitimate **because the deadline genuinely sits inside its warning window** — not because the moment was dramatic. That is not caprice; it is the world being indifferent to his convenience (Law IV).

It also fits the Runtime spec without strain: Tier 1 content is canon-deterministic, while Tier 2's *timing* variance lives entirely in the output-determinism space `012` Section 7 already permits.

**Cadence.** An interjection is a world reaction: it consumes no player opportunity and does not spend the Beat Budget (Decision 050). The moment it puts a choice to him — accept, refuse, comply, ignore — that is a **Player Decision Point** and the Runtime yields. A single response must not stack two interjections that each present a choice.

**It never authors his decisions.** The System can demand. It cannot decide. Refusal is always available and always has consequences: a daily quest ignored is not a rule broken but a choice made, and the world answers it.

## 9.4 Information Boundary

The System is perceptible **only to its Bearer** — always, without exception. It cannot be displayed, shared, demonstrated, or proven. To an onlooker, a Bearer receiving a notification is a man who stopped walking and looked at nothing.

**System-issued quests are Bearer-only, and therefore unknown to the world:**

- A quest is an ordinary tracked **Objective** in `140_OBJECTIVES.md`. The engine has no quest mechanic and gains none here (Decision 030). "Daily quest" is what the System *calls* it; what it *is* is an objective with a window and a consequence.
- **No NPC, institution, public, or cultural holder may hold a Knowledge State about a System quest.** Knowledge States are holder-specific (Decision 046); none is ever authored.
- **A hidden quest is never promoted to world canon.** The campaign-termination promotion trigger (Decision 038; PA-009) promotes publicly-observable facts only. A hidden quest is by construction never public. The filter already covers this; it is stated because that trigger fires automatically and will not ask.

**The quest is secret; its footprint is not.** If a daily quest puts Daedalus on the docks at dawn, the world sees a man on the docks at dawn. What is hidden is the quest, never its consequences — otherwise the System would become a cloaking device and the world could no longer react to him at all.

---

# 10. Canonical `/system` Render Template (normative)

`/system` renders **exactly** this structure. The layout is fixed: do not restyle it, rename or reorder sections, add or drop sections, or vary it between sessions or substrates. Only the *values* change as canon advances; the *format* never does.

```
═══════════════════════════════════════════════════════════════
                    <NAME> — SYSTEM INTERFACE
═══════════════════════════════════════════════════════════════
Official Rank: <R>-Rank | Level: <L> | XP: <cur>/<next> | Health: <hp>/<hpmax> | Mana: <mp>/<mpmax>
Condition: <Normal, or comma-separated active conditions>
───────────────────────────────────────────────────────────────
STATS                           SKILLS & ABILITIES
  Power:         <n>/20           • <skill> (Lv <n>)   |  (Passive)
  Endurance:     <n>/20           • …
  Speed:         <n>/20
  Mana Affinity: <n>/20
  Perception:    <n>/20
───────────────────────────────────────────────────────────────
INVENTORY (<used>/<cap>)         QUESTS
  • <item> [x<n>]                 [MAIN] <objective>
  • …                            [SIDE] <objective>
  • <n> cores                    [REPEATABLE] <objective>
                                 [HIDDEN] ???
───────────────────────────────────────────────────────────────
PATHS & MARKS: <paths/marks, or "None yet">
═══════════════════════════════════════════════════════════════
```

## Rendering Rules

These rules make the window **deterministic**: the same canonical character state produces the same window for every Runtime, on any substrate (canon-determinism, `012` Section 7, applied to a fixed display).

1. **Values come only from canonical state.** Read from the campaign's canonical ledgers. **Derived values are computed at render, never stored** — Ability level from its allocation (Section 4.4), cost from base and Efficiency (Section 4.3), maxima from the curves (Sections 3.2, 7.1). The System *displays*; it never invents or decides (Decision 051). Never keep a separate counter that could drift.
2. **Vitals line — fixed field order:** `Official Rank | Level | XP | Health | Mana`. XP is `current / next threshold` per Section 8.1. Health and Mana are `current / max`.
3. **Condition line is always shown.** With no active effects it reads `Condition: Normal`.
4. **STATS — fixed order, always five:** Power, Endurance, Speed, Mana Affinity, Perception, each `score/20`.
5. **SKILLS & ABILITIES** in character-ledger order. Levelled entries show `(Lv <n>)`; passives show `(Passive)`.
6. **INVENTORY** header shows `(<items used>/<capacity>)`. Ledger order; stacks as `x<n>`; **cores** as the final line. Each canonical item once.
7. **QUESTS** use fixed tags `[MAIN] [SIDE] [REPEATABLE] [HIDDEN]`, MAIN first. A hidden quest whose content the character does not know renders `???` (Section 9.2).
8. **Empty sections still render** — a single `—` under the header; never omit a section.
9. **In-fiction only.** No repository identifiers, object types, engine terms, or validation output ever appear inside the window (Information Boundary; Decision 051).

## Worked Example — Daedalus at Character Creation

From `campaigns/reikon_awakening_001/100_CHARACTER_SHEET.md`:

```
═══════════════════════════════════════════════════════════════
                    DAEDALUS — SYSTEM INTERFACE
═══════════════════════════════════════════════════════════════
Official Rank: E-Rank | Level: 1 | XP: 0/100 | Health: 100/100 | Mana: 13/13
Condition: Normal
───────────────────────────────────────────────────────────────
STATS                           SKILLS & ABILITIES
  Power:         8/20             • Fireball (Lv 1)
  Endurance:     9/20             • Flame Shield (Lv 1)
  Speed:         10/20            • Combustion Touch (Lv 1)
  Mana Affinity: 13/20            • Reinforced Body (Passive)
  Perception:    14/20            • Endurance Surge (Lv 1)
───────────────────────────────────────────────────────────────
INVENTORY (6/10)                 QUESTS
  • License (E-Rank)             [MAIN] Clear Warehouse 7 Rift
  • Sword                        [REPEATABLE] Daily Scout
  • Repair Kit                   [HIDDEN] ???
  • Potion x3
  • Rope
  • 50 cores
───────────────────────────────────────────────────────────────
PATHS & MARKS: None yet
═══════════════════════════════════════════════════════════════
```

---

# 11. Character Ledger Extension

State created under these overrides is carried as a **typed domain extension block** keyed by the entity's Subtype (`011` Section 4.3; Decision 062 point 4). This profile owns the extension's content; the Data Model owns only the mechanism. **No Data Model change and no schema version increment is required.**

**Subtype key:** `System-bearing Awakened hunter`

```yaml
system:
  official_rank: <E|D|C|B|A|S|Anomalous>   # certified; not what he is
  level: <n>
  xp: <n>                                   # current, against T(level)
  unspent_points: <n>
  awakening_pool: <n>                       # basis for max_mana (3.2)
  awakening_health: <n>                     # basis for max_health (7.1)
  awakening_endurance: <n>                  # basis for max_health (7.1)
  current_mana: <n>
  current_health: <n>
  stats:                                    # hard cap 20 each (4.2)
    power: <n>
    endurance: <n>
    speed: <n>
    mana_affinity: <n>
    perception: <n>
  abilities:
    - name: <ability>
      efficiency: <n>                       # points; 0-10 (4.3)
      strength: <n>                         # points; uncapped (4.3)
```

**What is recorded and what is not.**

Recorded: **allocations and Awakening basis values only.** Those are the facts that cannot be recomputed.

Never recorded: `max_mana`, `max_health`, ability `cost`, ability `level`, `magnitude`, `next_threshold`, effective band. Every one is derived from the allocations above and the formulas in this document. Storing any of them creates a second representation that can drift from its source — the exact failure Decision 051 forbids and Section 10 rule 1 restates.

`current_mana` and `current_health` **are** recorded, because they are not derivable: they are the result of play.
