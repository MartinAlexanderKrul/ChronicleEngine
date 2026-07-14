# The System — Lore (Reikon)

**Class:** Narrative world-layer reference. Not a canonical ledger, not world rule content.
**Status:** Active — instantiated as canonical world content (2026-07-13).
**Rules:** `206_WORLD_RULE_PROFILE.md` — Reikon World Rule Profile 0.3

---

This document **describes** Reikon's System: what it is, who has it, what it feels like, and what it means in the world.

It does **not** govern. Every number, formula, cost, threshold, and mechanical rule lives in `206_WORLD_RULE_PROFILE.md`, which is authoritative (Rules Section 14.5; Decision 062). Where this file and the profile appear to disagree, **the profile governs** — this one is out of date and should be corrected.

Nothing here is restated from the profile. Where a mechanic matters, this file points at it.

---

# The System

Reikon has three kinds of people, and the line between the second and the third is the world's central secret.

- **The Dormant** — the vast majority. No mana, no Abilities, no Rank. They live in a world Rifts can kill them in and have no means to answer it.
- **The Awakened** — hunters. They have a mana pool, Abilities, and a certified Rank. **They have no System.** There is no interface, no readout, no XP, no level. They see nothing but the world in front of them. This is what "hunter" means in Reikon: an ordinary Awakened.
- **The System Bearer** — an Awakened who also bears the **System**: a private, luminous interface only they can perceive, which quantifies them and *changes* them. This is the System-Bearer legend — spoken of for 31 years, never confirmed, widely held to be a story hunters tell about hunters.

**Daedalus is the System Bearer.** Not one of a category — *the* one. No other living person is known to have it.

## What the System Actually Is

For everyone else, growth is what growth has always been: you practice, you survive, you get better, and no one hands you a number. An Awakened hunter's power comes from technique, nerve, and hard-won judgement. It cannot be measured from inside, and the Association's Rank is a stranger's guess at it.

The Bearer's System is different in kind, not degree. It is **causal**. It does not observe growth and report it — it *confers* growth. A resolved challenge awards XP; crossing a threshold triggers an **Ascension**; the Ascension grants allocatable points, unlocks, and — uniquely, and impossibly — **a deeper mana pool.**

That last one is the tell. Every hunter in Reikon knows a mana pool is fixed at Awakening and stays fixed for life. A pool that grows is not supposed to be able to happen. It is the one thing about Daedalus that cannot be explained as talent, training, or luck — and the one thing he cannot afford anyone to measure.

> **Engine note.** XP, levels, Ascension, points, and pool growth are **System mechanics and therefore Bearer-only**. `RKO-OVR-001` scopes to the System Bearer alone. Every ordinary Awakened runs on engine defaults — emergent capability with no levels and no XP (Decisions 012–014), exactly as the Rules intend. The override is not a genre-wide replacement of the engine's progression model; it is one legendary exception inside a world that otherwise obeys it. See `206_WORLD_RULE_PROFILE.md` Section 2.

The System records, for its Bearer only:

- **Current Rank** (E through S, or Anomalous) — as certified, not as true
- **Experience (XP)** — accumulated through defeating monsters, clearing Rifts, and facing real danger
- **Stats** — Power, Endurance, Speed, Mana Affinity, Perception
- **Mana Pool & Reserves** — current and maximum mana
- **Health/Condition** — physical state (wounds, exhaustion, status effects)
- **Skills & Marks** — learned techniques and specializations
- **Classes/Paths** — specialized progression paths
- **Quests** — main objectives, hidden quests, repeatable work
- **Inventory** — carried items, cores, equipment

## How the System Surfaces

The System is perceptible **only to its Bearer** — always, without exception. No one else can see it, read it, detect it, or be shown it. It cannot be displayed, shared, demonstrated, or proven. A Bearer trying to convince someone the System is real has nothing to point at but his own word, which is exactly why the legend has survived 31 years without confirmation. To an onlooker, a Bearer receiving a System notification is a man who stopped walking and looked at nothing.

It surfaces in exactly two ways.

**1. On request.** The Bearer opens it — `/system` — and it renders the canonical window from his current state. This is the passive, reliable case: he asks, it answers.

**2. On its own initiative.** The System appears unbidden. It announces Ascensions, issues **daily quests**, reveals that a **hidden quest** exists, appraises what stands in front of him, or warns him. Sometimes usefully, sometimes at the worst possible time, sometimes in the middle of a conversation he cannot afford to break.

The second is the important one. The System is not a menu he checks. It is something that **speaks to him**, and its timing is not his to control.

But its timing is not arbitrary either, and this is the distinction that matters: **the System never decides what is true — it only decides when to say it.** It speaks because a threshold was crossed, a deadline is running out, or something unappraised walked into view. It does not speak because the moment was dramatic. When it interrupts a negotiation he cannot afford to break, that is not caprice; it is the world being indifferent to his convenience.

The trigger conditions are declared in `206_WORLD_RULE_PROFILE.md` Section 9.3.

## What It Will and Will Not Tell Him

**The System never lies.** It never says a false thing.

It is also not an oracle, and the two are compatible because its honesty has a domain. **About Daedalus, it is authoritative** — it *is* him, quantified, and his own state is not in doubt. **About the world, it may point but never describe.** It can tell him a hidden quest exists. It cannot tell him what the world is hiding. That is Discovery's job (Law VI), and the System does not do Discovery's job for him.

So `[HIDDEN] ???` is not the System being coy. It is the System being exactly as honest as it is able: *there is something here, and I am not the one who gets to tell you what.*

Silence is not a lie. Cryptic is not a lie. Wrong would be a lie, and it never is.

See `206_WORLD_RULE_PROFILE.md` Section 9.2.

### Quests Are Objectives, Not a Quest System

A System-issued quest — daily, hidden, main, repeatable — is an ordinary tracked **Objective** (`140_OBJECTIVES.md`), exactly like an obligation, a promise, or an investigation. The engine has no quest mechanic and gains none here (Decision 030). "Daily quest" is what the System *calls* it; what it *is* is an objective with a window and a consequence.

- A **daily quest** recurs, has a deadline, and states its consequence for lapse.
- A **hidden quest** may be announced without its content.

**His quests are his alone.** No one else knows a System quest exists — not the Association, not a guild, not the person standing next to him. The world cannot learn of them, because there is no channel through which it could.

But **the quest is secret; its footprint is not.** If a daily quest puts him on the docks at dawn, the world sees a man on the docks at dawn, and is entitled to wonder why. What is hidden is the errand, never its consequences.

**Refusal is always available, and always has consequences.** A daily quest ignored is not a rule broken — it is a choice made, and the world (or the System) answers it. The System can demand. It cannot decide. That is the engine's whole posture toward agency: the world responds through consequence, never through refusal to let him choose.

## Official Rank vs Character Level

**Official Rank** (E through S) — every Awakened has one:

- Determined by mana pool, measured at Awakening
- Issued by the Hunters' Association
- **Never changes on its own.** The Association re-measures only when the hunter *asks* it to. A license is not revisited by the world; it is revisited by request.
- For an ordinary Awakened this amounts to "locked for life," because their pool does not grow — there is nothing a re-test could find, which is why almost nobody bothers.
- For the **System Bearer**, whose pool *does* grow, an unchanged Rank is therefore a **choice**, renewed by silence.
- What the world sees and certifies — not what you are.

**Character Level** (1 to ∞) — **the System Bearer alone has one:**

- Personal progression through XP, granted by the System
- Earned by defeating monsters, clearing Rifts, facing real danger
- **Grows indefinitely** — no cap
- Independent of Official Rank

An ordinary Awakened has **no level and no XP**. They still grow — through practice, ordeal, and mastery — but nothing counts it, and there is no threshold to cross. They simply become dangerous the slow way. A hunter who spoke of "reaching Level 12" would be talking nonsense, or confessing something.

**The Bearer's arc:** he opens as an E-Rank licence over an E-Rank pool. Within a handful of levels he carries a D-Rank's capacity behind that E-Rank card, and the gap only widens — by the nineties his pool assesses as S while his licence still reads E, if he has kept his silence. A Level 100 E-Rank is vastly more dangerous than a freshly Awakened C-Rank, and nothing on paper says so.

The pool curve and its band crossings are in `206_WORLD_RULE_PROFILE.md` Section 3.2.

**And it is the engine of his central problem.** The Association will never notice on its own: it re-measures only on request. So he holds a standing choice, renewed by silence —

- **Reveal** — request re-ranking, take the higher licence, get commensurate assignments, pay, and standing. Lose the underestimation permanently, and invite the question of *how*. A pool that grows is not supposed to exist.
- **Conceal** — stay an E-Rank on paper. Keep being underestimated by rivals, monsters, and the Authority alike. Accept trivial assignments, or break Rank illegally to find real work. Risk exposure every time capacity shows in public.

Neither is free, and the world is entitled to press on the seam.

## Accessing the System: `/system`

`/system` renders the Bearer's interface as a fixed window, identical every session and on any substrate. It is a **diegetic command** (Decision 056) — an in-world verb, distinct from the reserved runtime commands.

The normative render template, its rendering rules, and a worked example are in `206_WORLD_RULE_PROFILE.md` Section 10. Only the Bearer can open it; the world cannot read another's System, and for all but one person there is nothing to read. **The title of this lore file, “The Ledger,” is not a `/system` window title or layout.** Never render `THE LEDGER — <NAME>` or compose a new dashboard from this prose; dispatch to Section 10 exactly.

## Ascension

An **Ascension** is the System's announcement that its Bearer has genuinely grown through real challenge: a felt, luminous moment where the interface updates. For the Bearer it is also *causal* — granting points, unlocks, and a deeper pool under `RKO-OVR-001`.

Trivial, no-stakes repetition yields little or nothing. The System cannot be farmed without real ordeal, risk, and challenge — and in Reikon that is not a rule someone has to enforce, it is what the arithmetic does on its own (`206` Section 8.2).

## Re-awakening

*Re-ranking* is available to all hunters: any Awakened can ask the Association to re-measure their pool, free and quick. If it has grown, they are re-certified. Few bother — they can *feel* their own pool, and know it has not changed.

*Re-awakening* is rare but documented — a handful in 31 years. An Awakened occasionally experiences a second Awakening event, suggesting a secondary or dormant pool emerging years later. They receive a new assessment against the new pool, and their Official Rank can rise, potentially far. It is more common than the System-Bearer legend, and still extraordinary. It is also the most convenient lie available to a Bearer who has been caught being too strong.

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

The pool bands each Rank corresponds to are in `206_WORLD_RULE_PROFILE.md` Section 3.1.

## Rank Certification Process

**1. Registration** — The newly Awakened reports to a local Association office. An official records their Awakening date and initial Abilities. Nothing is self-reported that the Association cannot itself verify: a hunter's account of their own power is a claim, and the file records claims as claims.

**2. Mana Pool Assessment** — A specialist measures the hunter's capacity through calibrated tests or cores. The pool is the key determinant of Rank. A hunter with a C-Rank pool cannot be licensed D-Rank, regardless of confidence or test performance.

**3. Practical Trial** — The hunter enters a controlled E-Rift with overseers watching, assessed on ability control and stability, physical competence, reaction to stress, and teamwork. Performance does not change their Rank; it confirms whether the pool assessment was accurate.

**4. Licensing and Rank Assignment** — A certificate is issued with their certified Rank. Assessment is imperfect: a pool measured near a band edge, on a bad day, or by a hurried specialist can be certified a band low or high. Such a divergence is a hidden discrepancy the hunter may never learn of — or may quietly exploit.

**5. Assignment Eligibility** — E-Rank hunters get E-Rift assignments; D-Rank get D-Rifts or supervised E-Rifts. Breaking Rank requires special permission or forging.

**Timeline:** Registration to licensing typically takes 1–2 weeks. A hunter can work sub-Rank within a week if urgent.

**Cost:** Free for Association hunters. Guild-affiliated hunters may pay a licensing fee for sponsorship.

---

# Abilities and Ability Acquisition

**Initial Abilities:** Every Awakened emerges at the moment of Awakening with one or more core Abilities — most have 1–3, determined by their individual nature. A typical spread includes physical enhancement, magical capability, or utility. No two Awakenings are identical.

**No latent powers.** What you Awaken with is what you have. Your power doesn't come from hidden reserves — it comes from growth through lived experience: clearing Rifts, facing real danger, mastering your Abilities through repetition and challenge.

**Developing new Abilities:** A hunter's initial Abilities are fixed at Awakening. New Abilities or enhancements come from **rare cores and artifacts** found inside Rifts. This makes certain cores valuable beyond their economic worth — they're literal power upgrades.

**Rift-Sensing as a Specialist Ability:** Some hunters Awaken with (or develop via rare core) the ability to sense nearby Rifts and their conditions — feeling Rift presence within a district, judging stability, vaguely detecting monsters inside a sealed Rift, occasionally predicting emergence.

A Rift-Sensing hunter is irreplaceable for emergency response and logistics. The Association and Guilds compete heavily for them; they're strategically valuable far beyond their combat power. A C-Rank Rift-Sensor might be more sought than a B-Rank combat hunter.

**In play:** Abilities function as ordinary **Modifiers** (Rules Section 4.4) — advantages that shape resolution through demonstrated skill and use, never overrides that replace it. The Bearer's Abilities additionally carry allocatable sub-stats (`206` Section 4.3); no other hunter's do.

---

# Marks and Training

- **Marks** are specific learned skills and techniques — a sword technique, a sealing ritual, a healing method, an invocation. A Mark is a **Knowledge Asset** (Rules Sections 7.2, 8): it must be learned and practiced, taught or discovered, and it can be licensed, restricted, or illicit. Marks are not purchased; they are developed through real training and repetition.
- **Recognized paths** organize how hunters develop Marks and focus their Abilities. Pursuing a powerful path typically requires tutelage, guild sponsorship, or institutional approval — and some paths are gatekept or forbidden. The **Warden Path** — binding and containing Rift-monsters rather than killing them — is outlawed and condemned (`230_KNOWLEDGE_SUBJECTS.md`); its true efficacy is disputed, and it remains subject to ordinary resolution like any other technique.

## Team Bonds and Synergy

Teams that work together repeatedly develop trust, communication, and coordinated technique.

**Coordination Marks** — Teams learn unspoken tactics: synchronized attacks, predictive positioning, shared mana management. A bonded team can attempt complex maneuvers that solo hunters cannot. Learned through repetition and real danger, not training manuals.

**Synergy Techniques** — Some teams develop signature techniques unique to their composition. Emergent and discovered through play, not purchased.

**Trust as Advantage** — In high-pressure Rift moments, a bonded team's trust translates to better judgment calls, split-second coordination, and willingness to take calculated risks together — cooperation bonuses in critical moments.

**Loyalty and Cost** — A bonded team has emotional investment in each other. A member's injury or death hits harder. Teams are reluctant to abandon injured members.

**Formation and Dissolution** — Teams form through repeated collaboration and grow stronger over time. They dissolve when members leave, die, or betray trust. A core team lasting years is a treasure; most teams are temporary.

**In play:** Long-term party formation is incentivized. Solo hunting is viable but lacks the depth of a bonded team.

---

# Mana

**Mana** is a hunter's personal energy reserve: the capacity that Abilities spend and rest restores. Running dry means no casting, exhaustion, and vulnerability.

Two quantities are easily confused and must not be:

- **Mana pool** — *how much* you hold. It sets your Official Rank at Awakening.
- **Mana Affinity** — *how well* you wield it: precision, stability, efficiency. It is not capacity.

A hunter may have a deep pool and clumsy control, or a shallow pool wielded with surgical precision. Daedalus opens with Mana Affinity 13 and a pool of 13; that they match is coincidence at Awakening, not derivation, and they diverge the moment either changes.

**For an ordinary Awakened the pool is fixed for life.** Clearing Rifts, training, and ordeal sharpen control, technique, and judgement — they do not deepen the well. This is why re-ranking is a formality almost nobody requests. It is also why a growing pool is unthinkable rather than merely unusual. Three exceptions exist: re-awakening, rare cores and artifacts, and bearing the System.

For a low-Rank hunter, **potions are the real mana economy rather than the pool**. Daedalus carries three vials against a 13-point pool. The pool is what he *is*; the vials are what he can *spend*. Running out of vials, not running out of pool, is what ends an expedition.

Recovery does not scale with the pool — deep pools take proportionally longer to refill, which is why high-Rank hunters carry potions and low-Rank hunters carry patience.

At 0 mana a hunter cannot cast at all, and the exhaustion is real. An E-Rank in a Rift is one cast from helpless, and the minutes back to full are the most dangerous minutes they will spend.

Pool bands, growth, costs, recovery rates, and the running-dry condition are all in `206_WORLD_RULE_PROFILE.md` Sections 3 and 5.

---

# Rifts and Clearance

A **Rift** is a pocket dimension that appears at a location. Its life runs in three stages:

1. **Open** — Stable. Monsters exist inside the pocket. The **core crystal** is intact. Hunters enter as expeditions to fight monsters and reach the core. Time window: weeks to months before deepening becomes critical.

2. **Deepening** — The core grows stronger; interior expands; monsters worsen; mana pressure rises. If cleared during this phase, catastrophe is averted.

3. **Collapse** — The core ruptures from internal pressure. The pocket breaks open. Every monster inside, plus unstable core energy, spills into the physical world. Catastrophic. The **Danesmoor collapse** killed hundreds. The **Kessler Rift** is currently deepening; if not cleared in time, it will follow.

The **Hunters' Association** estimates Rift danger, assigns expeditions, and answers to the public when their assessment is wrong. Clearing a Rift means reaching the core, destroying or sealing it, and escaping before the pocket closes. The core's crystalline remains become a **hunter core** — the valuable resource extracted and traded.

## Rift Dungeon Architecture

Rift interiors are pocket dimensions with structure, but not predictable structure.

**Common patterns (not guaranteed):**
- **Entrance chamber** — Stable, usually clear, a staging area.
- **Middle passages** — Progressively dangerous. Multiple routes may exist; teams make navigation decisions.
- **Core chamber** — Deepest or most protected. Contains the **core crystal**, usually guarded by an Apex monster. Reaching it is the objective.

**Unpredictable elements:**
- **Rift size** — An E-Rift might be a small cavern (30-minute walk to core). An A-Rift might be a sprawling complex (multi-day expedition). S-Rifts are unknown.
- **Environmental hazards** — Bottomless pits, collapsing ceilings, caustic pools, mana storms, dimensional distortion. Some Rifts are mechanically hostile independent of monsters.
- **Monster placement** — Monsters cluster unpredictably. No two Rift interiors are identical.
- **Dead ends and loops** — Navigation is an expedition skill.

**Veteran knowledge** — Hunters who have cleared a Rift before know its layout and can brief new teams. The Association maintains files on cleared Rifts.

**S-Rift anomaly** — S-Rift interiors are completely unpredictable. Dimensions shift, monsters appear without warning, the core location is unknown.

---

# Hunter Cores and the Economy

Cleared Rift cores and slain monsters leave **cores** — dense, crystalline residues. Cores power industry, medicine, medical technology, and the crafting of Marked relics. Cores are Reikon's second currency and the Guilds' foundation: they field hunters, bank the cores, and corner the trade market.

## Core Pricing and Trade Value

Cores trade at rates by grade. The **Hunters' Association** and **Meridian Guild** maintain official pricing, with regional fluctuation:

| Grade | Core Value | Typical Item Cost | Monthly Salary (Rank) |
|-------|------------|-------------------|----------------------|
| **E-core** | 1 unit | Basic sword (10), healing potion (2) | E-Rank: 50 cores/month |
| **D-core** | 5 units | Quality armor (40), rare herb (3) | D-Rank: 200 cores/month |
| **C-core** | 25 units | Enchanted weapon (150), rare artifact component | C-Rank: 800 cores/month |
| **B-core** | 125 units | Master-crafted artifact (600+) | B-Rank: 3000 cores/month |
| **A-core** | 625 units | Legendary artifact (2000+) | A-Rank: 12000 cores/month |
| **S-core** | 3125 units | One S-core can fund a small expedition team | S-Rank: 60000 cores/month |

**Conversion to currency:** Where coin exists, 1 core ≈ 1 gold coin. But cores are preferred — tangible, non-inflating, and they feed the industrial economy.

**Black market variation:** Illegal traders pay 10–20% less for stolen cores but ask no questions. Guild-affiliated buyers offer standard rates but expect loyalty.

These are the **official posted rates**, not a law of nature: prices move with supply, demand, distance, scarcity, politics, and who is desperate (Rejected 005). A hunter far from a Guild office, selling in a hurry, or holding something the Institute wants badly, will not get the table price.

A **deep-Rift core** is rare and valuable — strange enough to be worth controversy. This is exactly the knot the Aurology Institute, the Vigil, and the Guilds are caught in right now (`240_RESOURCES.md`).

---

# Monsters and Threat Taxonomy

Rift-monsters are catalogued loosely, by what it takes to fight them rather than by strict species:

- **Broodlings** — numerous, weak, dangerous only in mass; E-Rift standard
- **Breakers** — the standard threat in D–C Rifts; dangerous but manageable for competent teams
- **Wardens** *(no relation to the outlawed Path)* — rare, intelligent, territorial; found in B–A Rifts; the reason deep expeditions kill teams
- **Apex** — a Rift's core-guardian or final threat; killing or sealing it closes the Rift

The taxonomy is intentionally thin — a starting framework to fill in play, not a bestiary that resolves combat for you. **A monster needs only a grade** to be mechanically complete (`206` Section 6.4); everything else about it is fiction.

## Monster Archetypes by Grade

Hunters learn to recognize and classify monster types within each grade — knowledge earned through experience and shared via guild mentoring, Association briefings, and field journals.

**E-Rifts — Weaklings and Swarmers**
- **Weaklings** — Fast, fragile, low damage. Dangerous only in numbers.
- **Swarmers** — Hive-minded coordination; individually weak but devastating in coordinated mass.

**D-Rifts — Bruisers and Slingers**
- **Bruisers** — Slow, heavily armored, high damage. Low intelligence; predictable patterns.
- **Slingers** — Ranged attackers (acid, magic, projectiles). Intelligent, evasive, dangerous from distance.

**C-Rifts — Hunters and Siege Beasts**
- **Hunters** — Intelligent, coordinated, tactical. Mirror hunter strategy. First true threat.
- **Siege Beasts** — Massive, territorial, devastating area damage. Force teams to adapt or abandon a section.

**B-Rifts — Warlords and Anomalies**
- **Warlords** — Command-class monsters that direct subordinates. Killing the Warlord breaks the Rift's monster hierarchy.
- **Anomalies** — Unpredictable, rare, dangerous. No standard tactics work.

**A-Rifts — Apex Predators and Architects**
- **Apex Predators** — Legendary individual threats. Each is unique; hunters study them by name and reputation.
- **Architects** — Rare monsters that shape the Rift environment itself.

**S-Rifts — No classification.** S-Rift monsters follow no pattern. Hunters learn by doing or die.

**In play:** Meeting a known type triggers tactical knowledge. Unknown or mixed archetypes force improvisation — a source of danger and discovery.

---

# Rift Loot: Cores, Artifacts, and Equipment

**Cores** — The primary harvest. Every monster and the Rift's core crystal produce cores. Grade-matched to the Rift. Traded as currency or sent to specialists for processing.

**Artifacts** — Rare items left behind by prior hunters, or created by Rift conditions themselves:
- A **marked weapon or armor** — crafted by a specialist from a rare core, enchanted with a hunter's technique
- A **relic of power** — grants temporary Ability enhancement or a new minor power
- A **mystery artifact** — unknown properties; requires research or trial to understand

**Equipment and Materials** — Mundane but useful: weapons, armor, rope, tools, alchemical reagents, craft materials.

**Rarity gradient:** Most Rifts yield common cores and standard equipment. Occasionally an artifact. Very rarely, a deep Rift yields something unprecedented — enough to draw the Institute, the Guilds, or both. The Aurology Institute's current discovery was one such find.

**Loot distribution:** A typical E-Rift cleared by one or two hunters yields 5–10 E-cores and basic equipment. A C-Rift cleared by a team yields 15–30 C-cores, a possible artifact, and specialized equipment. A dangerous A-Rift might yield 3–5 A-cores, a rare artifact, and legendary equipment. S-Rifts are unpredictable.

---

# Core Crafting and Enhancement

Rare cores can be transformed into unique weapons, armor, and ability-enhancing relics by specialized craftspeople.

**The Crafting Process:** A hunter brings a rare core to a **specialist crafter** (found in Guilds, the Association, or independent workshops), who shapes it through a ritualistic process:
- **Marked Weapons/Armor** — A **Strength-core** becomes gauntlets that enhance grip and power. A **Flame-core** becomes armor that resists fire and allows heat channeling.
- **Relics of Power** — A **Rift-Sensing core** becomes a pendant that warns of nearby Rifts. A **Healing core** becomes a talisman that accelerates recovery.
- **Hybrid items** — Rare combinations create unique effects.

**Specialist Craftspeople:** Crafters vary by skill, reputation, and cost. A master crafter in the Meridian Guild charges high but guarantees quality. An independent crafter is cheaper but riskier. Some are legendary: a rare core crafted by a renowned specialist becomes a trophy item.

**Enhancement Risk:** Crafting is not guaranteed. A poorly chosen crafter or incompatible pairing can produce a **failed craft** (core destroyed or a weak item), a **corrupted item** (works, but with nightmares, mana bleeding, odd compulsions), or an **unexpected result** (properties diverge from intent).

**Value and Identity:** A crafted item becomes part of a hunter's identity. An artifact made from a B-Rift core by a master crafter is legendary and irreplaceable. Losing it is a genuine loss.

**In play:** Hunters seek out specialists, negotiate terms, and decide which cores to trade for money and which to craft into personal relics. A hunter's gear reflects their history.

---

# Running the System in Play (note for the Runtime)

The mechanics are in `206_WORLD_RULE_PROFILE.md`. This is the posture.

- **The System belongs to the Bearer alone.** Never surface it for any other character, and never let another character see, detect, or be shown it. For every hunter but him there is no interface — do not narrate one, and do not let ordinary NPCs speak in levels or XP, because they have neither.
- **Surface it diegetically and inline** for its Bearer (Decision 057): after the narrative, each changed Mana, HP, or XP value appears once in the compact current-value format declared by `206` Section 9.5; the full window appears on `/system`. Keep it in-fiction — it is his native perception, not an out-of-character dashboard.
- **Let it act on its own initiative**, within its declared triggers (`206` Section 9.3). It is not a passive readout waiting to be opened. Interjecting is a world reaction and costs no player opportunity; putting a choice to him is a Player Decision Point, so yield there. Never author his answer.
- **It never lies and never resolves an action.** It is honest about him, silent about the world's secrets, and it never decides an uncertain outcome — the die does (`206` Sections 6.1, 9.2).
- **Compute, never estimate.** Mana, XP, level, pool, and Health are tracked canonical state, and every one of them has a formula. A plausible-looking number is a wrong number.
- **Let the Rank be wrong**: forged, inflated, misread, or lagging behind actual growth. A hunter who trusts a number over the world in front of them is making a mistake the world is entitled to punish.
