# The System — Reference (Reikon)

**Reference:** World-layer lore for Reikon's diegetic System. This is narrative reference, not an Object-Block canonical ledger.
**Status:** Active — instantiated as canonical world content (2026-07-13).
**World Rule Profile:** Reikon 0.1

---

# Reikon World Rule Profile 0.1

Reikon inherits Chronicle Engine behavior except for the declared overrides below. This profile is authoritative under Rules Section 14 and Decision 059.

## RKO-OVR-001 — Causal System Progression

- **Replaces/refines:** Rules Sections 5.3 and 5.7; Decisions 012, 013, 051, and 057 where they prohibit levels, XP, or the System from causing capability growth.
- **Scope:** System-bearing Awakened characters in Reikon campaigns.
- **Activation:** Active while the character bears Reikon's diegetic System.
- **Replacement:** XP awarded for genuine resolved challenges is causal canonical state. Crossing a threshold causes an Ascension; an Ascension grants allocatable Stat Points and may grant Skill Points or unlock Skills, Paths, and Abilities. Allocated points directly change canonical capability.
- **State/provenance:** Character ledgers record level, current XP, next threshold, unspent points, allocations, skills, and the event or resolved challenge that awarded XP.
- **Resolution:** Growth changes capability and therefore modifier steps, prerequisites, and available methods; it never supplies the outcome of an uncertain action. Uncertain actions still use Rules Section 4 and Decision 058.

## RKO-OVR-002 — System Vitality and Damage Reduction

- **Replaces/refines:** Rules Sections 6.8–6.10 and Decision 018 where they reject a universal health-point pool or percentage damage reduction.
- **Scope:** System-bearing Awakened characters and System-evaluated Rift creatures. Ordinary non-System humans continue to use the engine injury model unless another Reikon rule declares otherwise.
- **Activation:** Active while the entity has System vitality state.
- **Replacement:** Health is a canonical current/maximum numeric pool. Damage removes Health after applicable percentage reductions. At zero Health the entity is incapacitated and receives an outcome appropriate to the attack and established fiction; zero does not erase the need to determine death, survival, or transformation. Wounds, pain, shock, exhaustion, and status effects may coexist with Health and can impose modifier steps independently.
- **State/provenance:** Scope-responsible ledgers record current/max Health, active reduction sources, damage, healing, and consequential conditions with event provenance.
- **Resolution:** The die resolves whether an uncertain attack or defense succeeds and its result band; established ability and protection determine damage and reduction after that result.

> **Compliance note (Decisions 051, 057, and 059).** Reikon declares a **diegetically-real System** under the Supernatural Phenomena Contract and the World Rule Profile above. Its quantities are real, tracked canonical state and may be surfaced inline during play.
>
> **The resolution bright line remains.** The System causes growth under `RKO-OVR-001`, but never supplies the outcome of an uncertain action. Rank, Stats, Abilities, and Level establish capability and modifier steps; intent + circumstance + d100 still resolves the attempt. XP is awarded by resolved challenge, never spent to purchase an action outcome.

---

# The System Interface

Every Awakened bears a private **System** interface only they can see. It is a mysterious, personal progression tracker that only the hunter themselves can access. The System records:

- **Current Rank** (E through S, or Anomalous)
- **Experience (XP)** — Accumulated through defeating monsters, clearing Rifts, and facing real danger
- **Stats** — Power, Endurance, Speed, Mana Affinity, Perception (improve through leveling)
- **Mana Pool & Reserves** — Current and maximum mana
- **Health/Condition** — Physical state (wounds, exhaustion, status effects)
- **Skills & Marks** — Learned techniques and specializations
- **Classes/Paths** — Specialized progression paths (unlock as you grow)
- **Quests** — Main objectives, hidden quests, repeatable work
- **Inventory** — Carried items, cores, equipment

## Official Rank vs Character Level

**Critical distinction:**

**Official Rank** (E through S):
- Determined by your mana pool at Awakening
- Issued by the Hunters' Association
- **Never changes** — you are locked into your Rank for life
- What the world sees and certifies (your license)

**Character Level** (1 to ∞):
- Your personal progression through XP and experience
- Earned by defeating monsters, clearing Rifts, facing real danger
- **Grows indefinitely** — no cap
- Independent of Official Rank
- Determines your actual power and capability

**Example Progression:**
- Start: **E-Rank Official** (from mana pool), **Level 1**
- After first Rift: **E-Rank Official** (unchanged), **Level 5** (gained XP)
- After many Rifts: **E-Rank Official** (still unchanged), **Level 45** (much stronger)
- After extensive play: **E-Rank Official** (immutable), **Level 120** (as powerful as S-Rank)

**Mechanical Reality:**
- Your Level determines your actual stats and power
- Your Official Rank is what hunters, the Association, and the world believe about you
- A Level 100 E-Rank hunter is massively more powerful than a newly awakened C-Rank (Level 1)
- This creates dramatic tension: proving yourself against official expectations

## Accessing Your System: `/system` Command

During play, use `/system` to view your diegetic System interface. It renders as a fixed **window**, always in the same layout, so it looks the same every session and however the game is run.

### Canonical `/system` Template (normative)

`/system` renders **exactly** this structure. The layout is fixed: do not restyle it, rename or reorder its sections, add or drop sections, or vary it between sessions or substrates. Only the *values* change as canon advances; the *format* never does. This is the world's declared render template for the `/system` diegetic command — every Runtime uses it verbatim.

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

### Rendering Rules

These rules make the window **deterministic**: the same canonical character state produces the same window for every Runtime, on any substrate (this is canon-determinism, `012` Section 7, applied to a fixed display).

1. **Values come only from canonical character state.** Read Official Rank, Level, XP, Health, Mana, the five Stats, Skills/Abilities, Inventory, and Quests from the campaign's canonical ledgers (Character Sheet, Inventory, Objectives). The System *displays*; it never invents or decides (Decision 051). Regenerate the window on demand from canon; never keep a separate counter that could drift.
2. **Vitals line — fixed field order:** `Official Rank | Level | XP | Health | Mana`. XP is `current / next-level threshold` (Level 1→2 = 100; thresholds rise per level). Health and Mana are `current / max`.
3. **Condition line is always shown.** With no active effects it reads `Condition: Normal`. Otherwise list active wounds, exhaustion, or status effects, comma-separated.
4. **STATS — fixed order, always five:** Power, Endurance, Speed, Mana Affinity, Perception, each as `score/20`.
5. **SKILLS & ABILITIES** are listed in the order they appear in the character ledger. Leveled entries show `(Lv <n>)`; passives show `(Passive)`. This column holds both initial Abilities and learned Skills.
6. **INVENTORY** header shows `(<items used>/<capacity>)`. List items in ledger order; stacks as `x<n>`; put **cores** as the final inventory line (`<n> cores`). Do not list the License here if it is shown as Rank — list each canonical item once.
7. **QUESTS** use fixed tag prefixes `[MAIN] [SIDE] [REPEATABLE] [HIDDEN]`, MAIN first. A hidden quest whose content the character does not yet know renders its objective as `???`.
8. **Empty sections still render.** A column with no entries shows a single `—` under its header; never omit a section to save space.
9. **In-fiction only.** No repository identifiers, object types, engine terms, or validation output ever appear inside the window — it is what the hunter perceives (Information Boundary; Decision 051).

### Worked Example — Daedalus at Character Creation

From Daedalus's canonical state (`campaigns/reikon_awakening_001/100_CHARACTER_SHEET.md`), `/system` must render:

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

## Progression: Diegetic and Tracked (Decision 057)

Reikon's System is **diegetically real and tracked inline**. Unlike the engine's default meta progression view, the hunter perceives their own numbers as they change, and those numbers are canonical state on the character ledger.

**During play:**
- The System surfaces changes **inline, in-world**, as they happen — a mana cost as a spell is cast (`Mana: 13 → 1/13`), XP as a threat is overcome (`XP: 12 → 36/100`). This is what the hunter feels and reads, not an out-of-character dashboard.
- Progression is **caused by earned System awards**: the die decides whether a challenge is overcome; overcoming it accrues XP; crossing the threshold causes Ascension and its grants under `RKO-OVR-001`.
- **Leveling (Ascension)** is a felt, causal milestone. The Runtime records the threshold crossing, granted points or unlocks, and later allocations as canonical state before surfacing them.

**XP awards (per-challenge):**
- XP is accrued from genuine challenge, scaled by threat. A tougher, more coordinated foe is worth more than a weakling.
- **Baseline E-grade values** (canonical starting model, tunable as world canon): Broodling ≈ 6 XP, Swarmer ≈ 8 XP; harder archetypes and higher-grade monsters scale up from there. Clearing a Rift core awards a larger milestone sum.
- **Level thresholds:** Level 1→2 = 100 XP, rising per level (see below). Level is independent of Official Rank — leveling never changes your license.
- Trivial, no-stakes repetition is **not** a farm: rote clears of what no longer challenges the hunter yield little or nothing. The System cannot be gamed without real ordeal.

**Mana (tracked resource):**
- Mana is a real, tracked reserve. Abilities cost mana to attempt (Fireball 12, Flame Shield 8/sec, Combustion Touch 6, Endurance Surge 10); rest restores it. Running dry means no casting until recovered.
- A mana cost gates whether a cast can be **attempted** — it never decides the result. The d100 resolves the cast (Rules Section 4); Power and Mana Affinity are Modifiers on that roll, not overrides.

**Checking status:**
- Use `/system` to view the full canonical window — exact stats, skills, inventory, XP progress (the fixed template above).
- Only you can see it; the world cannot read another's System.

**Level Progression (Infinite):**
- XP thresholds increase per level (Level 1→2: 100 XP; Level 10→11: 500 XP; Level 50→51: 5000 XP, etc.)
- When you accumulate enough XP, an **Ascension** occurs (narrative event)
- Each level gains you **Stat Points** to allocate to your five core Stats
- Each level may unlock new **Skills, Paths, or Abilities**
- Skills improve through use and leveling
- **No level cap** — you can level indefinitely
- As you approach Level 90+, your power approaches S-Rank capability, regardless of your Official Rank

**Official Rank Remains Immutable (Usually):**
- Your E-Rank license never changes in normal circumstances
- But your Level grows infinitely
- At high levels, you become far more powerful than your Official Rank suggests
- This creates dramatic potential: the underestimated E-Rank who becomes unstoppable

**Edge Cases: Re-ranking and Re-awakening**

*Re-ranking* (available to all hunters):
- Any Awakened hunter can request the Association re-test their mana pool anytime
- Testing is quick and free; no petition or approval process needed
- If mana pool has grown, the hunter receives a new (higher) Official Rank
- If unchanged, their Rank stays the same
- Few hunters bother with re-ranking because they can *sense* their own mana pool and know whether it's changed
- Most realize they're still the same Rank they were Awakened as

*Re-awakening* (rare but documented):
- An Awakened person occasionally experiences a second Awakening event
- The second Awakening suggests a secondary mana pool or dormant power that emerges years later
- A re-awakened person receives a new System assessment based on their new mana pool at re-awakening
- Their Official Rank can change to match the new mana pool, potentially much higher than before
- Documented cases: A handful over 31 years (more common than the System-Bearer legend, but still extraordinary)
- Creates narrative possibility: a low-Rank hunter who suddenly re-awakens with much higher power

The Dormant majority have no System and see nothing. No one can read another's System directly; what the world *knows* of a hunter's power is the Authority's **Official Rank** — an assessment, and therefore fallible, contestable, and forgeable.

**Engine Note (Decision 059):** Reikon's System numbers are both diegetic information and causal state under `RKO-OVR-001` and `RKO-OVR-002`. They may grant capability and quantify vitality. They do not replace the d100 outcome of an uncertain action.

---

# Official Ranks (E–S)

The Hunters' Association certifies Ranks from demonstrated deeds in field testing and expedition assessment, not from the System's private readout:

| Rank | Description |
|------|-------------|
| **E** | Newly licensed; basic competence; clears E-Rifts |
| **D** | Competent solo hunter; handles D-Rifts solo |
| **C** | Experienced; team-capable; can lead C-Rift expeditions |
| **B** | Veteran; public recognition; rare; sought after |
| **A** | Elite tier; national reputation; exceptional |
| **S** | Legendary; top-tier threat-capable; handful exist |
| **Anomalous** | Breaks the scale; potential unclear; watched by all factions |

A Rank is a **claim**. It can lag behind real growth, be inflated by a guild, forged by underground fixers (`230_KNOWLEDGE_SUBJECTS.md`), or simply be wrong — and a Rift does not care what the license says.

## Rank Certification Process

A newly Awakened hunter must be tested and ranked by the Hunters' Association before receiving a license and official assignment. The process:

**1. Registration** — The newly Awakened reports to a local Association office. An official records their Awakening date, initial Abilities, and System Rank readout (if the hunter shares it). This creates an official file.

**2. Mana Pool Assessment** — An Association specialist measures the hunter's mana capacity (roughly, through calibrated tests or cores). The mana pool is the key determinant of Rank. A hunter with a mana pool equivalent to a C-Rank cannot be licensed as D-Rank, regardless of confidence or test performance.

**3. Practical Trial** — The hunter enters a controlled E-Rift (smallest, safest, most predictable) with Association overseers watching. They are assessed on:
- Ability control and stability
- Physical competence (movement, endurance, decision-making)
- Reaction to stress and danger
- Teamwork or solo capability

Performance in the E-Rift trial does not change their Rank; it confirms whether their mana pool assessment is accurate.

**4. Licensing and Rank Assignment** — An official certificate is issued with their certified Rank (E-D-C-B-A-S-Anomalous). This is their **Official Rank**. If there is a divergence from their System Rank, it creates a hidden discrepancy (sometimes favorable to the hunter, sometimes unfavorable).

**5. Assignment Eligibility** — Once licensed, the hunter is eligible for expeditions matching their certified Rank. E-Rank hunters get E-Rift assignments; D-Rank get D-Rifts or supervised E-Rifts. Breaking Rank (entering a Rift above your license) requires special permission or forging.

**Timeline:** Registration to licensing typically takes 1-2 weeks. The practical trial happens within days of registration. A hunter can start working sub-Rank (lower-tier Rifts) within a week if urgent; full licensing follows later.

**Cost to hunter:** Free for Association hunters. Guild-affiliated hunters may pay the Guild a licensing fee in exchange for sponsorship.

**Growth through experience:** A hunter's Rank at certification is their starting point, not their ceiling. Growth comes from **clearing Rifts, facing real danger, and mastering your Abilities through repetition**. Each expedition teaches you. Each Ascension represents genuine growth earned through ordeal. Your Character Level grows infinitely; your Official Rank stays fixed.

**Re-ranking (formal process):** Any Awakened hunter can request the Association to re-measure their mana pool at any time. The Association will test them. If their mana pool has grown, they receive a new (higher) Official Rank. If unchanged or lower, their Rank stays the same. Few hunters bother requesting re-assessment because they can *feel* their own mana pool and know if it's changed — most sense that they're still the same Rank they always were.

---

# Abilities and Ability Acquisition

**Initial Abilities:** Every Awakened emerges at the moment of Awakening with one or more core Abilities. Most hunters have 1-3 initial Abilities determined by their individual nature. A typical spread includes physical enhancement (strength, speed, durability), magical capability (elements, binding, healing), or utility (Rift-sensing, trap-setting, core refinement). No two Awakenings are identical.

**No latent powers.** What you Awaken with is what you have. Your power doesn't come from hidden reserves — it comes from **growth through lived experience**: clearing Rifts, facing real danger, mastering your Abilities through repetition and challenge. Genuine resolved challenge earns XP, and crossing a threshold **causes** an **Ascension** — a felt, luminous milestone that grants your new capability under `RKO-OVR-001`. You cannot level up without real ordeal, but the threshold crossing and its grants are causally real.

**Developing new Abilities:** A hunter's initial Abilities are fixed at Awakening. New Abilities or enhancements come from **rare cores and artifacts** found inside Rifts. Consuming a special core or activating a powerful artifact can unlock a new Ability or significantly strengthen an existing one. This makes certain cores valuable beyond their economic worth — they're literal power upgrades.

**Rift-Sensing as a Specialist Ability:**
Some hunters Awaken with (or develop via rare core) the ability to sense nearby Rifts and their conditions. A Rift-Sensing hunter can:
- **Feel Rift presence** — Sense an active Rift within a city district (range varies by ability strength)
- **Judge stability** — Sense whether a Rift is stable, deepening, or critical
- **Detect monsters** — Vaguely sense the monster presence and intensity inside a sealed Rift
- **Predict emergence** — Occasionally feel a Rift about to emerge (rare, unreliable, but invaluable for early warning)

A Rift-Sensing hunter is irreplaceable for emergency response and logistics. The Association and Guilds compete heavily for Rift-Sensors; they're strategically valuable far beyond their combat power. A C-Rank Rift-Sensor might be more sought than a B-Rank combat hunter.

**In play:** Abilities function as ordinary **Modifiers** (Rules Section 4.4) — advantages that shape resolution through demonstrated skill and use, never overrides that replace it.

---

# Marks and Training

- **Marks** are specific learned skills and techniques — a sword technique, a sealing ritual, a healing method, an invocation. A Mark is a **Knowledge Asset** (Rules Sections 7.2, 8): it must be learned and practiced, taught or discovered, and it can be licensed, restricted, or illicit. Marks are not purchased; they are developed through real training and repetition.
- **Recognized paths** organize how hunters develop Marks and focus their Abilities. Pursuing a powerful path typically requires tutelage, guild sponsorship, or institutional approval — and some paths are gatekept or forbidden. The **Warden Path** — binding and containing Rift-monsters rather than killing them — is outlawed and condemned (`230_KNOWLEDGE_SUBJECTS.md`); its true efficacy is disputed, and it remains subject to ordinary resolution like any other technique.

## Team Bonds and Synergy

Teams that work together repeatedly develop trust, communication, and coordinated technique. Over time, bonded teams unlock special capabilities:

**Coordination Marks** — Teams learn unspoken tactics: synchronized attacks, predictive positioning, shared mana management. A bonded team can attempt complex maneuvers that solo hunters cannot (a pincer trap, a timed combo, a shared-burden defense). These are learned through repetition and real danger, not training manuals.

**Synergy Techniques** — Some teams develop signature techniques unique to their composition. A healer + tank + DPS team might unlock a technique where the healer channels through the tank's shield to protect the DPS. These are emergent and discovered through play, not purchased.

**Trust as Advantage** — In high-pressure Rift moments, a bonded team's trust translates to better judgment calls, split-second coordination, and willingness to take calculated risks together. Narratively and mechanically, this shows up as cooperation bonuses in critical moments.

**Loyalty and Cost** — A bonded team has emotional investment in each other. A team member's injury or death hits harder. Teams are reluctant to abandon injured members. This creates narrative weight and meaningful consequences.

**Formation and Dissolution** — Teams form through repeated collaboration and grow stronger over time. They dissolve when members leave, die, or betray trust. A core team lasting years is a treasure; most teams are temporary.

**In play:** Long-term party formation is incentivized. A player who invests in a team gets narrative payoff and mechanical advantage. Solo hunting is viable but lacks the depth of a bonded team.

---

# Mana and Ascension

**Mana** is a hunter's personal energy reserve. Using Abilities depletes it; rest restores it. Consuming a Rift core can restore mana quickly or enhance a hunter's capacity (dangerous and potentially corrupting). Running dry means exhaustion and vulnerability.

An **Ascension** is the System's announcement that a hunter has genuinely grown through real challenge: a felt, luminous moment where the interface updates with a new Rank, sharpened Abilities, or new Marks available.

Under `RKO-OVR-001`, resolved genuine challenge awards XP and a threshold crossing **causes Ascension and its grants**. Trivial, no-stakes repetition yields little or no XP, so the System cannot be farmed without real ordeal, risk, and challenge. The Runtime records the causal award and resulting state before surfacing it.

---

# Rifts and Clearance

A **Rift** is a pocket dimension that appears at a location. Its life runs in three stages:

1. **Open** — Stable. Monsters exist inside the dimensional pocket. The **core crystal** (the object holding the Rift open) is intact. Hunters enter as expeditions to fight monsters and reach the core. Time window: weeks to months before deepening becomes critical.

2. **Deepening** — The core grows stronger; interior expands; monsters worsen; mana pressure rises. The clock ticks down. If cleared during this phase, catastrophe is averted. If not, the Rift continues deepening toward collapse.

3. **Collapse** — The core ruptures from internal pressure. The pocket dimension breaks open. Every monster inside, plus unstable core energy, spills into the physical world at the Rift's location. Catastrophic. The **Danesmoor collapse** killed hundreds. The **Kessler Rift** is currently deepening; if not cleared in time, it will follow.

The **Hunters' Association** estimates Rift danger, assigns expeditions, and answers to the public when their assessment is wrong. Clearing a Rift means reaching the core, destroying or sealing it, and escaping before the pocket closes. The core's crystalline remains become a **hunter core** — the valuable resource extracted and traded.

## Rift Dungeon Architecture

Rift interiors are pocket dimensions with structure, but not predictable structure.

**Common patterns (but not guaranteed):**
- **Entrance chamber** — Stable, usually clear of monsters, acts as a staging area. Expeditions enter here and gather before advancing.
- **Middle passages** — Progressively dangerous. Monsters increase in frequency and intensity. Multiple routes may exist; teams make navigation decisions.
- **Core chamber** — Deepest or most protected area. Contains the **core crystal** (glowing, static object, roughly human-sized). Usually guarded by an Apex monster or obstacle. Reaching the core is the objective.

**Unpredictable elements:**
- **Rift size** — An E-Rift might be a small cavern (30-minute walk to core). An A-Rift might be a sprawling complex (multi-day expedition). S-Rifts are unknown.
- **Environmental hazards** — Bottomless pits, collapsing ceilings, pools of caustic liquid, mana storms, dimensional distortion (space warps). Some Rifts are mechanically hostile independent of monsters.
- **Monster placement** — Monsters cluster unpredictably. Some Rifts are open until the core chamber; others are packed throughout. Scouts report on layout if they've been inside, but no two Rift interiors are identical.
- **Dead ends and loops** — A Rift might have passages that loop back or dead-end. Navigation is an expedition skill.

**Veteran knowledge** — Hunters who have cleared a Rift before know its layout and can brief new teams. This is valuable institutional knowledge. The Association maintains files on cleared Rifts (internal layout, monster locations, hazards, estimated time-to-core).

**S-Rift anomaly** — S-Rift interiors are completely unpredictable. Dimensions shift, monsters appear without warning, the core location is unknown. Architects of S-Rifts study them but never fully understand them.

---

# Hunter Cores and the Economy

Cleared Rift cores and slain monsters from inside Rifts leave **cores** — dense, crystalline residues. Cores power industry, medicine, medical technology, and the crafting of Marked relics. Cores are Reikon's second currency and the Guilds' foundation: they field hunters, bank the cores, and corner the trade market.

## Core Pricing and Trade Value

Cores trade at fixed rates by grade. The **Hunters' Association** and **Meridian Guild** maintain official pricing (with minor regional fluctuation):

| Grade | Core Value | Typical Item Cost | Monthly Salary (Rank) |
|-------|------------|-------------------|----------------------|
| **E-core** | 1 unit | Basic sword (10), healing potion (2) | E-Rank: 50 cores/month |
| **D-core** | 5 units | Quality armor (40), rare herb (3) | D-Rank: 200 cores/month |
| **C-core** | 25 units | Enchanted weapon (150), rare artifact component | C-Rank: 800 cores/month |
| **B-core** | 125 units | Master-crafted artifact (600+) | B-Rank: 3000 cores/month |
| **A-core** | 625 units | Legendary artifact (2000+) | A-Rank: 12000 cores/month |
| **S-core** | 3125 units | One S-core can fund a small expedition team | S-Rank: 60000 cores/month |

**Conversion to currency:** Where coin exists, 1 core = roughly 1 gold coin (simplified). But cores are preferred — they're tangible, don't inflate, and feed the industrial economy.

**Black market variation:** Illegal traders pay 10-20% less for stolen cores but ask no questions. Guild-affiliated buyers offer standard rates but expect loyalty.

A **deep-Rift core** (from a core deep in a complex Rift) is rare and valuable — strange enough to be worth controversy. This is exactly the knot the Aurology Institute, the Vigil, and the Guilds are caught in right now (`240_RESOURCES.md`).

---

# Monsters and Threat Taxonomy

Rift-monsters are catalogued loosely, by what it takes to fight them rather than by strict species:

- **Broodlings** — numerous, weak, dangerous only in mass; E-Rift standard;
- **Breakers** — the standard threat in D–C Rifts; dangerous but manageable for competent teams;
- **Wardens** *(no relation to the outlawed Path)* — rare, intelligent, territorial; found in B-A Rifts; the reason deep expeditions kill teams;
- **Apex** — a Rift's core-guardian or final threat; killing or sealing it closes the Rift.

The taxonomy is intentionally thin — a starting framework to fill in play, not a bestiary that resolves combat for you.

## Monster Archetypes by Grade

Hunters learn to recognize and classify monster types within each grade. This knowledge is earned through experience and shared via guild mentoring, Association briefings, and field journals. Learning enemy archetypes enables adapted tactics.

**E-Rifts — Weaklings and Swarmers**
- **Weaklings** — Fast, fragile, low damage. Dangerous only in numbers. Novice hunters practice on these.
- **Swarmers** — Hive-minded coordination; individually weak but devastating in coordinated mass. Teach new hunters about crowd management.

**D-Rifts — Bruisers and Slingers**
- **Bruisers** — Slow, heavily armored, high damage. Low intelligence; predictable patterns. Tank the team's first test.
- **Slingers** — Ranged attackers (acid, magic, projectiles). Intelligent, evasive, dangerous from distance. Teach hunters about positioning.

**C-Rifts — Hunters and Siege Beasts**
- **Hunters** — Intelligent, coordinated, tactical. Mirror hunter strategy. First true threat; require team communication to counter.
- **Siege Beasts** — Massive, territorial, devastating area damage. Solo threats that force teams to adapt or abandon section.

**B-Rifts — Warlords and Anomalies**
- **Warlords** — Command-class monsters that direct subordinates. Killing the Warlord breaks the Rift's monster hierarchy.
- **Anomalies** — Unpredictable, rare, dangerous. No standard tactics work. Improvisation becomes critical.

**A-Rifts — Apex Predators and Architects**
- **Apex Predators** — Legendary individual threats. Each is unique; hunters study them by name and reputation.
- **Architects** — Rare monsters that shape the Rift environment itself. Defeating them collapses the Rift's core.

**S-Rifts — No classification.** S-Rift monsters follow no pattern. Hunters learn by doing or die.

**In play:** Hunters build a mental catalog of archetypes. Meeting a known type (e.g., "that's a Bruiser") triggers tactical knowledge. Unknown or mixed archetypes in a Rift force improvisation — a source of danger and discovery.

---

# Rift Loot: Cores, Artifacts, and Equipment

Rifts produce three types of loot:

**Cores** — The primary harvest. Every monster and the Rift's core crystal produce cores. Cores are crystalline residues that power the economy, medicine, and item crafting. Grade-matched to the Rift (E-core from E-Rift, A-core from A-Rift). Cores are traded as currency or sent to specialists for processing.

**Artifacts** — Rare items left behind in Rifts by prior hunters, or created by Rift conditions themselves. An artifact might be:
- A **marked weapon or armor** — crafted by a specialist from a rare core, enchanted with a hunter's technique
- A **relic of power** — an object that grants temporary Ability enhancement or new minor power (Rift-sensing compass, strength gauntlets, healing amulet)
- A **mystery artifact** — unknown properties; requires research or trial to understand

Artifacts are valuable and highly sought. A single rare artifact can define a hunter's loadout.

**Equipment and Materials** — Hunters sometimes find mundane but useful items: weapons, armor, rope, tools, alchemical reagents, craft materials. Useful for expeditions or trade.

**Rarity gradient:** Most Rifts yield common cores and standard equipment. Occasionally, a hunter stumbles on an artifact. Very rarely, a deep Rift yields something unprecedented — a core or artifact so unusual it draws attention from the Institute, the Guilds, or both. The Aurology Institute's current discovery (the trigger of the institutional crisis) was one such find.

**Loot distribution:** In a typical E-Rift cleared by one or two hunters, expect 5-10 E-cores and some basic equipment. A C-Rift cleared by a team yields 15-30 C-cores, possible artifact, and specialized equipment. A dangerous A-Rift might yield 3-5 A-cores (each worth enormous money), a rare artifact, and legendary equipment. S-Rifts are unpredictable — some yield incredible wealth, others yield nothing but stories.

---

# Core Crafting and Enhancement

Rare cores don't just trade for money — they can be transformed into unique weapons, armor, and ability-enhancing relics by specialized craftspeople.

**The Crafting Process:**
A hunter brings a rare core to a **specialist crafter** (found in Guilds, the Association, or independent workshops). The crafter shapes the core into an item through a ritualistic process:
- **Marked Weapons/Armor** — A core is forged into a weapon or armor piece with the crafter's technique embedded in it. A **Strength-core** becomes gauntlets that enhance grip and power. A **Flame-core** becomes armor that resists fire and allows heat channeling.
- **Relics of Power** — A core becomes a charm, amulet, or artifact that grants a temporary Ability enhancement or new minor power. A **Rift-Sensing core** becomes a pendant that warns of nearby Rifts. A **Healing core** becomes a talisman that accelerates recovery.
- **Hybrid items** — Rare combinations of cores create unique effects: a Strength + Speed core might become boots that boost both power and agility.

**Specialist Craftspeople:**
Crafters vary by skill, reputation, and cost. A master crafter in the Meridian Guild charges high but guarantees quality. An independent crafter is cheaper but riskier — an unskilled crafter might ruin the core entirely. Some craftspeople are legendary: a rare core crafted by a renowned specialist becomes a trophy item.

**Enhancement Risk:**
Crafting is not guaranteed to succeed. A poorly chosen crafter or incompatible core-crafter pairing can result in:
- **Failed craft** — The core is destroyed or produces a weak item.
- **Corrupted item** — The item works but has side effects (nightmares, minor mana bleeding, odd compulsions).
- **Unexpected result** — The item's properties diverge from intent (a Strength-core becomes armor that makes you slower but tougher).

**Value and Identity:**
A crafted item becomes part of a hunter's identity. An artifact made from a B-Rift core by a master crafter is legendary and irreplaceable. Losing it is a genuine loss. Finding the right crafter for a rare core can take time and networking.

**In play:** Hunters seek out specialists, negotiate crafting terms, and make strategic decisions about which cores to trade for money vs. which to craft into personal relics. A hunter's gear reflects their history.

---

# Running the System in Play (note for the Runtime)

- Surface the System **diegetically and inline** (Decision 057): show mana costs and XP gains in-world as they happen, and let a hunter check their full interface with `/system`, feel an Ascension, or see an official Rank certificate. Keep it in-fiction — it is Reikon's native interface, not an out-of-character dashboard. Mana and XP are tracked canonical state on the character ledger; update them in canon as play advances.
- Award XP from **genuine challenge**, scaled by threat, and only after the die has resolved the challenge in the hunter's favor. Under `RKO-OVR-001`, crossing a threshold causes Ascension and its grants; record the resulting canonical state before surfacing it.
- Treat Ranks, Abilities, and Mana as **Modifiers and information**: they color odds and shape how NPCs treat a hunter, but the die and circumstance decide (Rules Section 4). The impossible stays impossible whatever the Rank says (Rules Section 4.2).
- Let the Rank be **wrong**: forged, inflated, misread, or lagging behind actual growth. A hunter who trusts a number over the world in front of them is making a mistake the world is entitled to punish.
