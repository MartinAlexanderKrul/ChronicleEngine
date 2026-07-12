# Chronicle Engine

## Engine Decisions

**File:** `001_ENGINE_DECISIONS.md`  
**Status:** Active  
**Purpose:** Architectural decision record for the engine  
**Decision Format:** Numbered, immutable history with explicit status

---

# Document Purpose

This file records major architectural decisions made during development of the Chronicle Engine.

It exists to preserve the reasoning behind important design choices so that future changes can be evaluated against the engine's original goals.

This document is not a duplicate of `010_ENGINE_RULES.md`.

- `010_ENGINE_RULES.md` defines how the engine behaves.
- `001_ENGINE_DECISIONS.md` records why those rules were chosen.

Decisions remain in this document even when superseded. Historical decisions must never be deleted, because the evolution of the engine is itself part of the project's design history.

Design retrospectives may inform decisions, but they do not establish rules by themselves.

The current primary retrospective source is `docs/400_CASE_STUDIES/401_MICTIAN_CAMPAIGN.md`.

---

# Decision Statuses

Each decision uses one of the following statuses:

- **Proposed** — Under discussion.
- **Accepted** — Approved and currently active.
- **Superseded** — Replaced by a newer decision.
- **Rejected** — Considered but deliberately not adopted.
- **Deprecated** — Still supported temporarily but scheduled for removal.

---

# Decision Template

```markdown
## Decision XXX — Title

**Status:** Accepted  
**Date:** YYYY-MM-DD  
**Related Sections:** Section references or files

### Context

What problem or design question prompted this decision?

### Decision

What was chosen?

### Rationale

Why was this approach preferred?

### Consequences

What benefits, limitations, and maintenance obligations follow from this decision?

### Alternatives Considered

What other approaches were discussed or rejected?
```

---

# Accepted Decisions

The following accepted decisions are strongly supported by Case Study 001 (`401_MICTIAN_CAMPAIGN.md`):

- Decision 002 — Persistent Historical Simulation Instead of Scripted Narrative
- Decision 004 — Canon Hierarchy
- Decision 005 — Separate Objective Reality from Knowledge and Belief
- Decision 007 — Multi-Layer World Simulation
- Decision 008 — Dynamic Simulation Priority
- Decision 009 — Intent Before Method
- Decision 012 — No Character Levels
- Decision 013 — No Experience Points
- Decision 017 — Character Memory Is Persistent but Fallible
- Decision 022 — Ownership and Possession Are Separate
- Decision 023 — Resources Require Origin, Location, and Cause of Loss
- Decision 027 — Engine and World Are Separate Layers

This traceability is explanatory rather than normative.

The case study helps explain why these decisions exist.

The decisions themselves remain authoritative.

---

## Decision 001 — World-First Simulation

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 1

### Context

Traditional roleplaying engines commonly organize the world around the protagonist and generate events primarily to support a player-centered narrative.

The Chronicle Engine is intended to support long-running worlds across multiple characters, campaigns, and historical periods.

### Decision

The world is the primary persistent entity.

Characters, kingdoms, institutions, technologies, religions, and campaigns exist within the world and may end while the world continues.

### Rationale

This supports:

- independent world development,
- multiple campaigns in one setting,
- meaningful legacy,
- history that outlives individual protagonists,
- reduction of main-character bias.

### Consequences

The engine must simulate relevant world activity even when the player is absent.

A campaign ending does not reset the world.

World state takes priority over protagonist-centered narrative convenience.

### Alternatives Considered

- Character-first persistent campaign.
- Traditional campaign reset after each protagonist.
- Narrative-first scenario generation.

---

## Decision 002 — Persistent Historical Simulation Instead of Scripted Narrative

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Sections 1 and 3

### Context

A scripted narrative requires planned arcs, dramatic pacing, and predetermined outcomes.

The engine instead aims to let stories emerge from the interactions of people, institutions, material conditions, and chance.

### Decision

The engine simulates history rather than constructing a predefined story.

### Rationale

Emergent history allows:

- ordinary lives to remain valid campaigns,
- major events to arise naturally,
- unexpected outcomes,
- non-linear development,
- player influence without guaranteed importance.

### Consequences

No event may occur solely because it would be dramatic.

The engine must prioritize causality, continuity, and simulation integrity over narrative spectacle.

### Alternatives Considered

- Branching authored narrative.
- Story beats with adaptive presentation.
- Hidden campaign arcs.

---

## Decision 003 — Consistency Before Drama

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Sections 1, 2, and 4

### Context

AI-driven roleplaying often introduces contradictions to create tension or preserve momentum.

This damages long-term trust in the simulation.

### Decision

Established canon and rules take precedence over dramatic convenience.

### Rationale

Long-running campaigns require stable expectations.

Players must be able to plan using previously established facts.

### Consequences

The engine must:

- identify contradictions,
- resolve them explicitly,
- preserve earlier canon where higher-priority sources support it,
- avoid retroactive rules changes.

### Alternatives Considered

- Soft continuity.
- Dramatic retconning.
- GM discretion without formal hierarchy.

---

## Decision 004 — Canon Hierarchy

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 2  
**Refined by:** Decision 042 (the hierarchy is a precedence order, not a durability order)

### Context

Long campaigns produce conflicting summaries, ledgers, descriptions, and corrections.

A stable hierarchy is required to determine which source controls canon.

### Decision

Canon priority is:

1. Explicit rulings agreed during gameplay.
2. Events in the gameplay transcript.
3. Canonical ledger files.
4. Session summaries.
5. Reasonable inference.
6. Newly generated information.

### Rationale

This protects lived gameplay from being overwritten by later summaries or improvisation.

### Consequences

Contradictions must be resolved using this order.

Lower-priority sources may not silently replace higher-priority facts.

### Alternatives Considered

- Latest statement always wins.
- Ledger always wins.
- GM discretion.

---

## Decision 005 — Separate Objective Reality from Knowledge and Belief

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 2

### Context

Most roleplaying systems collapse truth, public belief, NPC knowledge, and rumor into one information pool.

This produces omniscient NPCs and weakens investigation, politics, religion, and history.

### Decision

The engine distinguishes:

- objective reality,
- character knowledge,
- institutional knowledge,
- public knowledge,
- myth and belief.

### Rationale

This supports:

- misinformation,
- incomplete evidence,
- biased histories,
- institutional secrecy,
- believable NPC decisions,
- non-omniscient historical documents.

### Consequences

Knowledge must always have a source.

NPCs may act on false beliefs without changing objective reality.

Historical documents may contradict each other while remaining canonical artifacts.

### Alternatives Considered

- Single global knowledge state.
- Public/private binary knowledge.
- Omniscient narrator model.

---

## Decision 006 — Event-Driven Time

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 3

### Context

Fixed turns create artificial time progression and make dialogue, travel, research, and construction operate at the same pace.

### Decision

A turn is a simulation cycle, not a fixed unit of time.

Elapsed time depends on the action.

### Rationale

This allows:

- seconds for dialogue,
- minutes for searches,
- days for travel,
- months for research,
- years for major construction or governance.

### Consequences

The engine must estimate natural elapsed time after each action.

World simulation advances according to time passed, not turn count.

### Alternatives Considered

- Fixed six-second rounds.
- One day per turn.
- Scene-based time only.

---

## Decision 007 — Multi-Layer World Simulation

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 3

### Context

A persistent world cannot simulate every location at full detail simultaneously.

### Decision

The engine uses three simulation layers:

- Active Simulation
- Regional Simulation
- Global Simulation

### Rationale

This balances realism with practical complexity.

### Consequences

The player's immediate environment receives full detail.

Nearby relevant systems receive moderate detail.

The distant world evolves abstractly until events become significant.

### Alternatives Considered

- Full global simulation.
- Player-proximity-only simulation.
- Periodic scripted world events.

---

## Decision 008 — Dynamic Simulation Priority

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 3

### Context

A village hunter and an emperor do not require the same simulation scope.

### Decision

Simulation detail expands and contracts according to historical relevance and the player's sphere of influence.

### Rationale

This allows the engine to remain efficient while supporting campaigns that grow from local to civilizational scale.

### Consequences

The engine must dynamically reassess which people, institutions, and regions deserve detailed simulation.

### Alternatives Considered

- Fixed simulation radius.
- Fixed world-detail tiers.
- Full simulation regardless of relevance.

---

## Decision 009 — Intent Before Method

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 4

### Context

Literal action resolution can produce nonsensical outcomes when the physical method succeeds but the real objective fails, or vice versa.

### Decision

Every action is interpreted through:

1. Objective
2. Intent
3. Method
4. Resolution
5. Consequences

### Rationale

This rewards creative problem solving and allows partial success to remain meaningful.

### Consequences

The engine must evaluate what the player is trying to achieve, not only the literal action described.

A method may succeed while the intent fails.

An intent may partially succeed even when the method fails.

### Alternatives Considered

- Literal action-only resolution.
- Binary task checks.
- Quest-objective resolution.

---

## Decision 010 — d100 Resolution

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 4

### Context

The engine needs a readable resolution system capable of expressing broad degrees of success.

### Decision

Use d100 for uncertain actions.

### Rationale

d100 provides:

- intuitive percentages,
- broad outcome bands,
- room for modifiers,
- clear differentiation between ordinary and exceptional outcomes.

### Consequences

Rolls never override physical or magical impossibility.

Difficulty and modifiers must arise from established circumstances.

### Alternatives Considered

- d20.
- 2d6.
- Dice pools.
- Pure narrative resolution.

---

## Decision 011 — Degrees of Success Instead of Binary Outcomes

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 4

### Context

Binary success/failure often stops scenes rather than generating new situations.

### Decision

Use graded outcomes such as:

- success,
- success with cost,
- partial success,
- failure with progress,
- failure with information,
- catastrophic failure.

### Rationale

This preserves momentum without removing consequences.

### Consequences

Failures should create new states rather than simply reset the situation.

Repeated attempts must change circumstances.

### Alternatives Considered

- Pass/fail only.
- Automatic fail-forward.
- GM-selected outcomes without bands.

---

## Decision 012 — No Character Levels

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 5

### Context

Levels compress many unrelated forms of development into one abstract number.

They encourage progression through accumulation rather than lived experience.

### Decision

The engine has no character levels.

### Rationale

Characters should change through:

- practice,
- education,
- experience,
- relationships,
- material resources,
- authority,
- injury,
- age,
- transformation.

### Consequences

Power must be demonstrated through actual capabilities and circumstances.

The engine may not use hidden levels as a substitute.

### Alternatives Considered

- Traditional levels.
- Soft tiers.
- Hidden power ratings.

---

## Decision 013 — No Experience Points

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 5

### Context

Experience points reward abstract activity counts rather than meaningful learning.

### Decision

The engine does not award XP.

### Rationale

Growth emerges from what a character actually does, studies, survives, practices, and understands.

### Consequences

Capabilities must develop through opportunity and repeated application.

Killing enemies does not automatically improve unrelated skills.

### Alternatives Considered

- XP from combat.
- Milestone advancement.
- Skill-specific XP.

---

## Decision 014 — Capabilities Instead of Attributes

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 5

### Context

Broad attributes such as Strength or Intelligence poorly represent practical competence.

### Decision

Characters are primarily described through demonstrated capabilities.

Examples:

- swordsmanship,
- medicine,
- diplomacy,
- navigation,
- architecture,
- alchemy.

### Rationale

Capabilities are observable, contextual, and connected to lived experience.

### Consequences

The engine must avoid reducing characters to a small fixed attribute set.

Physical and mental condition still matter, but competence is modeled directly.

### Alternatives Considered

- Traditional attributes.
- Attribute plus skill systems.
- Numerical capability scores exposed to the player.

---

## Decision 015 — Multi-Layer Character Identity

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 5

### Context

Who a person is, who they believe themselves to be, and how society sees them may differ substantially.

### Decision

Track:

- Objective Identity
- Self Identity
- Social Identity

### Rationale

This supports roleplay involving reputation, imposture, self-deception, legitimacy, and cultural difference.

### Consequences

A character may simultaneously hold conflicting identities in different contexts.

### Alternatives Considered

- Single character identity.
- Reputation-only social modeling.
- Personality-only self model.

---

## Decision 016 — Personality Traits Evolve in Expression

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 5

### Context

Static personality traits often disappear or become mechanically restrictive during long campaigns.

### Decision

Core traits remain relatively stable, but their expression may change through experience.

### Rationale

This allows personality continuity without preventing growth.

### Consequences

A trait such as curiosity may evolve from exploration into scholarship, obsession, caution, or innovation while remaining recognizably related.

### Alternatives Considered

- Fixed traits.
- Fully mutable personality.
- Traits used only during character creation.

---

## Decision 017 — Character Memory Is Persistent but Fallible

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Sections 2 and 5

### Context

Characters shaped by experience require memory, but perfect recollection would be unrealistic.

### Decision

Characters remember significant experiences, while memories may fade, distort, or be reinterpreted.

### Rationale

This supports trauma, confidence, prejudice, personal growth, unreliable testimony, and changing relationships.

### Consequences

Routine events may fade.

Life-defining events remain influential.

Memory alteration requires established causes.

### Alternatives Considered

- Perfect memory.
- No formal character memory.
- Memory only for player characters.

---

## Decision 018 — No Universal Health-Point Pool

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 6

### Context

A single HP pool hides injury location, severity, treatment, and lasting consequences.

### Decision

Health is modeled through injuries, physical condition, pain, shock, exhaustion, and recovery.

### Rationale

This produces more grounded and persistent consequences.

### Consequences

A damaged hand affects different actions than an injured leg.

Serious injuries may remain relevant long after combat ends.

### Alternatives Considered

- Traditional HP.
- Wound points.
- HP plus status effects.

---

## Decision 019 — Combat Is Intent-Based Conflict

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 6

### Context

Not every conflict aims at killing every opponent.

### Decision

Combat uses the same intent-based resolution as all other actions.

Possible goals include escape, delay, capture, intimidation, defense, or surrender.

### Rationale

This preserves non-lethal and strategic outcomes.

### Consequences

Combat ends when objectives are achieved, abandoned, or made impossible.

### Alternatives Considered

- Combat-to-death model.
- Separate tactical minigame.
- Encounter victory conditions defined by the engine.

---

## Decision 020 — Conflict Scales Through Abstraction

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 6

### Context

The engine must support duels, squad battles, sieges, wars, and civilizational crises without separate incompatible systems.

### Decision

The same principles govern all conflicts; only the level of abstraction changes.

### Rationale

This preserves consistency across scale.

### Consequences

Individual actions dominate personal conflict.

Leadership, logistics, morale, institutions, and population effects dominate larger conflicts.

### Alternatives Considered

- Separate combat engines by scale.
- Detailed simulation at all scales.
- Purely narrative mass conflict.

---

## Decision 021 — Morale Is Independent of Physical Condition

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 6

### Context

Combatants may flee while physically capable or continue fighting despite severe losses.

### Decision

Morale is tracked separately from injury.

### Rationale

This produces more believable combat and military behavior.

### Consequences

Surrender, retreat, panic, discipline, and fanaticism become ordinary outcomes.

### Alternatives Considered

- Morale derived directly from HP.
- No morale model.
- Morale only for armies.

---

## Decision 022 — Ownership and Possession Are Separate

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 7  
**Refined by:** Decision 043 (ownership and possession are typed identifier references in `011`)

### Context

A character may control something they do not own or own something they do not currently possess.

### Decision

Track ownership and possession independently.

### Rationale

This supports:

- lending,
- theft,
- inheritance,
- stewardship,
- confiscation,
- property law,
- archaeology,
- institutional assets.

### Consequences

Every significant transfer must specify whether possession, ownership, or both changed.

### Alternatives Considered

- Inventory equals ownership.
- Ownership only for property.
- Informal narrative tracking.

---

## Decision 023 — Resources Require Origin, Location, and Cause of Loss

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 7

### Context

Long campaigns often create or remove items without explanation.

### Decision

Resources do not appear without origin, cannot normally be used without access, and do not disappear without cause.

### Rationale

This protects inventory continuity and supports logistics.

### Consequences

The engine must track relevant storage locations, transfers, consumption, and destruction.

### Alternatives Considered

- Abstract inventory.
- Locationless ownership.
- Narrative convenience.

---

## Decision 024 — Generic and Individual Resource Identity

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 7  
**Refined by:** Decision 043 (identifier-versus-quantity structural basis in `011`)

### Context

Tracking individual history for every arrow or loaf is impractical, while historically important objects require persistent identity.

### Decision

Resources are classified as:

- Generic Resources
- Individual Resources

Generic resources may be tracked as quantities.

Individual resources retain identity, condition, provenance, and history.

### Rationale

This balances simulation detail with manageability.

### Consequences

Ordinary objects may become individual resources through historically significant events.

### Alternatives Considered

- Every item unique.
- All items quantity-based.
- Unstructured importance tracking.

---

## Decision 025 — Provenance Is Part of Significant Resource State

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 7  
**Refined by:** Decision 043 (provenance envelope structure in `011`)

### Context

Historically meaningful objects derive value from origin, ownership history, and major events.

### Decision

Important resources track provenance.

### Rationale

This supports:

- historical artifacts,
- legal disputes,
- inheritance,
- archaeology,
- forgery,
- cultural significance,
- changing value.

### Consequences

Provenance may be incomplete, disputed, falsified, or rediscovered.

### Alternatives Considered

- Static item description.
- Provenance only for magical objects.
- No item history.

---

## Decision 026 — Psychological and Social Values Are Normally Hidden

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Sections 2 and 5

### Context

Exact visible values such as `Trust: 72` expose engine state that characters could not realistically measure.

### Decision

Internal values may be numerical, but the player sees psychological and social states qualitatively unless a reliable in-world measurement exists.

### Rationale

This preserves uncertainty and roleplay.

### Consequences

Player-facing descriptions use categories such as:

- Suspicious
- Wary
- Neutral
- Friendly
- Loyal
- Devoted

Objective quantities such as money, inventory, dates, and known troop counts may remain numerical.

### Alternatives Considered

- Expose all values.
- Use no internal numbers.
- Reveal values through skill checks.

---

## Decision 027 — Engine and World Are Separate Layers

**Status:** Accepted  
**Related Sections:** `000_ENGINE_MANIFEST.md`, `010_ENGINE_RULES.md`, world files

### Context

World-specific concepts such as Asterra, the Weave, and individual religions should not be embedded in reusable engine logic.

### Decision

The engine specification remains setting-independent.

World rules and content live in separate files.

### Rationale

This allows the same engine to support multiple genres and worlds.

### Consequences

Engine documents may not depend on Asterra-specific terminology.

World-specific mechanics may extend, but not silently rewrite, engine rules.

### Alternatives Considered

- Single combined rules-and-setting document.
- Separate engine only after first campaign.
- World-specific engine fork.

---

## Decision 028 — Stable Semantic File Numbering

**Status:** Accepted  
**Related Sections:** Repository structure

### Context

The project requires room for new files without repeated renumbering.

### Decision

Use semantic number ranges with gaps.

Current ranges:

- `000–099` Engine
- `100–199` Campaign
- `200–299` World
- `300–399` Historical Documents
- `400–499` Design Retrospectives
- `900–999` Save and Restore State

### Rationale

This keeps related files grouped and allows insertion without widespread renaming.

### Consequences

Content versions are stored inside files rather than encoded into filenames.

### Alternatives Considered

- Sequential numbering without gaps.
- Unnumbered filenames.
- Folder-only organization.

---

## Decision 029 — Engine Versioning Is Separate from World Versioning

**Status:** Accepted  
**Related Sections:** `000_ENGINE_MANIFEST.md`, world metadata

### Context

The engine, world, campaign, and save state evolve at different rates.

### Decision

Track versions independently:

- Engine Version
- World Version
- Campaign State
- Save Version

### Rationale

This prevents world changes from appearing as engine changes and supports multiple worlds on one engine.

### Consequences

Compatibility must be recorded in the engine manifest.

### Alternatives Considered

- One global version.
- Version only the engine.
- Version only save states.

---

## Decision 030 — No Dedicated Quest System

**Status:** Accepted  
**Related Sections:** Campaign files and action resolution

### Context

Quests are often treated as engine-defined content structures with artificial completion conditions and rewards.

### Decision

The engine has no special quest mechanic.

A quest is a tracked objective, obligation, promise, investigation, project, or mission.

### Rationale

This avoids forcing world activity into game-like task structures.

### Consequences

Objectives may change, fail, remain unresolved, or lose relevance without requiring formal quest scripting.

A campaign may still maintain an objective log for usability.

### Alternatives Considered

- Traditional quest log with states and rewards.
- Hidden quest system.
- No objective tracking at all.

---

## Decision 031 — Research and Knowledge Evolve Through Lifecycle

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` — Section 8

### Context

Long-running simulation requires knowledge to emerge, spread, stagnate, disappear, and return through historical processes rather than appearing instantly as a binary unlock.

The engine must support observation, experiment, publication, institutional custody, suppression, and rediscovery without collapsing all discovery into a single moment of revelation.

### Decision

Research and knowledge follow an explicit lifecycle.

At minimum, the engine distinguishes:

1. Observation
2. Hypothesis
3. Experiment or investigation
4. Validation or failure
5. Recording
6. Publication or restricted retention
7. Adoption, rejection, suppression, or loss
8. Rediscovery where applicable

### Rationale

This supports:

- gradual scientific and magical development,
- incomplete or contested discoveries,
- institutional control of knowledge,
- durable historical continuity,
- rediscovery after collapse or suppression.

### Consequences

Discoveries should rarely behave like instantaneous permanent global unlocks.

Knowledge may remain local, restricted, forgotten, disputed, or misapplied.

Research depends on time, tools, evidence, capability, and institutional conditions.

### Alternatives Considered

- Instant discovery model.
- Binary known/unknown knowledge state.
- Knowledge acquisition only through player-facing revelations.

---

## Decision 032 - Canonical Record Architecture

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` - Sections 2 and 8  
**Refined by:** Decision 042 (mandatory promotion; transcript is a precedence tier, not a durability tier); Decision 043 (provenance envelope structure and the single-Canonical-Record invariant defined in `011`)

### Context

Chronicle Engine uses many record-like artifacts: gameplay transcripts, rulings, canonical ledgers, campaign chronicles, historical documents, session summaries, and machine-readable saves.

Without a formal architecture, these artifacts can collapse into one another.

That would make it unclear whether a document is authoritative state, in-world evidence, later interpretation, convenience summary, or persistence data.

### Decision

The engine distinguishes record types by role, scope, authority, and provenance.

At minimum, the engine recognizes:

1. Explicit gameplay rulings.
2. Gameplay transcripts.
3. Canonical ledger files.
4. Historical documents and sources.
5. Campaign chronicles.
6. Session summaries.
7. Machine-readable saves.

These records are not interchangeable.

Only records with authority under the canon hierarchy may establish or override canon.

Historical documents and sources may preserve evidence, belief, propaganda, error, or interpretation without becoming objective truth.

Machine-readable saves preserve restorable state but do not outrank the canon hierarchy.

### Rationale

This preserves the separation between:

- what objectively happened,
- what was recorded,
- what is currently authoritative,
- what people inside the world believe,
- what later historians can reconstruct,
- what the implementation uses to restore simulation state.

It also prevents historical persistence and save architecture from storing canon in the wrong document class.

### Consequences

Future historical persistence rules must define how in-world sources are generated without making them automatically authoritative.

Future save-state rules must define machine restoration without allowing saves to silently override rulings, transcripts, or canonical ledgers.

Canonical ledgers remain the structured human-readable state records, but they must preserve provenance when they incorporate facts from transcripts, rulings, or historical sources.

### Alternatives Considered

- Treat every durable document as equally canonical.
- Treat machine-readable saves as the highest authority.
- Treat historical documents as objective summaries of the past.
- Leave record authority implicit.

---

## Decision 033 - Persistent Entity Abstraction

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` - Sections 3, 5, 7, and 8  
**Refined by:** Decision 043 (Persistent Entity is a specialization of Persistent Object; structure defined in `011`); Decision 044 (stable entity identity)

### Context

Chronicle Engine already treats characters, historically important resources, institutions, settlements, kingdoms, religions, discoveries, and technologies as things that can retain identity while changing over time.

Without a shared abstraction, each domain would need to redefine identity, state, lifecycle, continuity, records, provenance, and historical importance separately.

That would create duplicated mechanics and make future institution, governance, magic, and persistence systems harder to align.

### Decision

The engine recognizes Persistent Entity as a general abstraction for any meaningfully evolving subject whose identity continues across time and whose state can change through simulation.

A persistent entity must have:

1. Identity.
2. Type.
3. Scope.
4. Current state.
5. Lifecycle status.
6. Relationships.
7. Historical continuity.
8. Record responsibility.

Not every object in the world is a persistent entity.

Generic or low-importance things may remain aggregated until simulation makes individual continuity meaningful.

### Rationale

This gives future systems a common foundation without forcing all domains into the same mechanics.

Characters can remain characters, institutions can remain institutions, and artifacts can remain resources, while sharing a basic continuity model.

The abstraction supports:

- institutions that outlive founders,
- resources that gain historical identity,
- discoveries that spread, disappear, or return,
- settlements and kingdoms that transform over time,
- records that preserve state without duplicating domain rules.

### Consequences

Future institution, governance, historical persistence, and save-state rules should build on Persistent Entity rather than inventing separate continuity models.

Persistent Entity defines shared continuity requirements, not a complete universal stat block.

Domain sections remain responsible for domain-specific behavior.

### Alternatives Considered

- Define identity separately in every domain.
- Treat only characters as persistent entities.
- Treat every object as a fully tracked persistent entity.
- Delay the abstraction until after institutions.

---

## Decision 034 — Institution Typing and Ledger Scope

**Status:** Accepted  
**Date:** 2026-07-11  
**Related Sections:** Decision 033, Decision 032, Decision 028, `010_ENGINE_RULES.md` — Section 3.10, `000_ENGINE_MANIFEST.md` — Repository Architecture, `020_ENGINE_GLOSSARY.md` — Institution

### Context

The Institutions & Organizations milestone requires drafting an Institution Lifecycle Model (Decision P002). Before that model can be written, two questions needed to be resolved: how the Institution Persistent Entity Type relates to sibling concepts already named elsewhere in the repository — settlements, kingdoms, and armies — and where an institution's canonical record lives once its continuity outlives a single campaign. Decision 032 already names "institution" as a valid canonical-ledger scope, but Decision 028's semantic numbering ranges define no file convention for it.

### Decision

This decision defines two related resolutions.

**Institution Typing**

Institution is the Persistent Entity Type for organized structures characterized by leadership, doctrine or goals, membership, and internal governance. This includes governments, guilds, churches, universities, trade compacts, and military organizations that possess independent institutional identity.

Settlement and Kingdom form a distinct Persistent Entity Type representing territory and population continuity rather than governing structure. A kingdom's ruling apparatus is an Institution (its government). The kingdom or settlement as territory-and-population is tracked separately. Which institution currently governs which territory is expressed as a Relationship between the two entities, not as shared identity.

Army is not a separate top-level Persistent Entity Type. A military force is either part of an Institution's current state (an asset or capability) until it demonstrates independent continuity, or an Institution in its own right (subtype: Military Institution) once it gains independent leadership succession, doctrine, reputation, and rivals. This reuses the Promotion to Persistent Entity mechanic already defined in Rules §3.10.

**Institution Ledger Scope**

Institution-scoped canonical ledgers reside within the World layer, under a dedicated sub-path:

```
worlds/<world>/institutions/<institution-slug>/250_INSTITUTION_LEDGER.md
```

An institution's record responsibility begins campaign-scoped, tracked alongside other local factions in that campaign's organization file. It is promoted to a world-layer institution ledger when the institution becomes relevant beyond the campaign that created it, using the same Promotion mechanic described in Rules §3.10.

Historical documents about an institution (charters, treatises, propaganda) remain governed by the Historical layer (300–399) as evidence per Decision 032. They do not substitute for the institution's own ledger.

### Rationale

Both resolutions extend existing, accepted mechanics rather than introducing new ones.



Institution Typing reuses the Promotion mechanic already defined for generic subjects becoming persistent entities (Rules §3.10), rather than defining a separate creation process for military organizations. It also avoids duplicating lifecycle and continuity logic across four Types when two Types (Institution, Settlement/Kingdom) plus one reused mechanic (Promotion) are sufficient.

Institution Ledger Scope reuses the same Promotion mechanic to decide when an institution graduates from a campaign-local record to a world-layer record, avoiding both premature file creation for minor organizations and an undefined gap for institutions that must persist beyond the campaign that created them, consistent with Design Philosophy 1.5 ("Institutions Outlive Individuals").

### Consequences

Decision P002 may proceed scoped to a single Persistent Entity Type (Institution), with Settlement/Kingdom and Army handled through existing Relationship and Promotion mechanics rather than parallel lifecycle specifications.

`000_ENGINE_MANIFEST.md` repository architecture must be updated to include the `worlds/<world>/institutions/` sub-path.

`002_ENGINE_ROADMAP.md` Current Dependencies for the Institutions & Organizations milestone must reference this decision.

Future governance (Version 0.3) and civilizational conflict work (Rules §6.1.1) should treat kingdoms/settlements and their governing institutions as related but distinct entities when specifying territory, government, and army interactions.

### Alternatives Considered

- Treating Army, Settlement, and Kingdom as independent Persistent Entity Types with their own lifecycle rules. Rejected: duplicates lifecycle and promotion logic already defined for Institution.
- Assigning institutions a new top-level semantic numbering range outside 200–299. Rejected: Decision 032 already frames institution ledgers as a scope nested within, not parallel to, world scope.
- Creating a world-layer institution ledger immediately at founding, regardless of campaign relevance. Rejected: produces file sprawl for minor, campaign-local organizations before they are historically significant.

---

## Decision 035 — Institution Lifecycle Model

**Status:** Accepted  
**Date:** 2026-07-11  
**Related Sections:** `010_ENGINE_RULES.md` - Section 9; Decision 034, Decision 033, Decision 032, Decision 022

### Context

Decision 034 resolved how the Institution Persistent Entity Type relates to sibling concepts and where its records live, but did not define the lifecycle of an institution itself: how it forms, is governed, holds assets, drifts internally, divides or transforms, declines, and leaves legacy. The Institutions & Organizations milestone requires this model before governments, guilds, churches, universities, trade compacts, and military institutions can be simulated consistently.

### Decision

The engine defines an Institution Lifecycle Model built entirely on mechanics already accepted elsewhere in the engine, rather than introducing a parallel lifecycle vocabulary:

1. Founding — deliberate (charter, decree, ritual) or promoted (§3.10 Promotion), entering the emerging lifecycle status.
2. Governance — leadership and decision-making structure, part of current state, changeable without loss of identity.
3. Membership — Relationships (§3.10, §5.6) between the institution and living characters, not ownership.
4. Doctrine and Goals — part of current state; core doctrine persists while expression evolves, analogous to Decision 016 personality traits.
5. Institutional Assets — governed entirely by Resources & Ownership (§7) and Decision 022; institutions own resources independently of members.
6. Military Arms — per Decision 034, either an asset within current state or an independently promoted Military Institution.
7. Institutions and Knowledge — governed by Research & Knowledge §8.8; an institution's stance toward knowledge is doctrine, not a separate system.
8. Internal Drift and Factionalism — resolved through ordinary action resolution and causality (§4, §3.13).
9. Division, Merger, and Transformation — governed entirely by the existing Transformation and Succession rules (§3.10); successor institutions record what they inherit and what they do not.
10. Decline — a lifecycle status shift, traceable to established causes.
11. Collapse — resolved through the existing End States (§3.10): dissolved, destroyed, absorbed, abandoned, or transformed into a successor.
12. Legacy — resolved through the existing archived, forgotten, or mythologized end states, preserved through the Canonical Record Architecture (§2.8).

The full model is specified in `010_ENGINE_RULES.md` Section 9.

### Rationale

Every stage of the model reuses an existing accepted mechanic rather than introducing a second lifecycle taxonomy, directly addressing the duplication risk identified during the Institutions & Organizations architecture review. This keeps the model reusable across governments, guilds, churches, universities, trade compacts, and military institutions without creating domain-specific exceptions.

### Consequences

`010_ENGINE_RULES.md` gains Section 9 - Institutions & Organizations.

`002_ENGINE_ROADMAP.md`'s Version 0.1 - Engine Foundation checklist marks Institutions & Organizations complete.

Future Politics & Governance, Magic Framework, and Historical Persistence work should treat institutions, including governments and religious orders, through this model rather than redefining institutional behavior.

### Alternatives Considered

- Defining a dedicated institution lifecycle vocabulary (Foundation, Growth, Division, Transformation, Decline, Legacy) separate from the Persistent Entity lifecycle status and end-state vocabulary. Rejected: creates two overlapping taxonomies requiring future reconciliation.
- Modeling military arms with dedicated combat-readiness mechanics distinct from ordinary institutional assets. Deferred: combat-specific detail belongs to Conflict, Combat, Injury & Death (§6) and Politics & Governance, not the lifecycle model itself.
- Modeling institutional doctrine as a numeric alignment or ideology score. Rejected: conflicts with Decision 026 (psychological and social values normally hidden) and Decision 014 (capabilities instead of attributes).

---

## Decision 036 — Political Entities and Governance Scope

**Status:** Accepted  
**Date:** 2026-07-11  
**Related Sections:** Decision 034, Decision 033, Decision 032, Decision 026, `010_ENGINE_RULES.md` — Sections 3.10, 4.9, 5.6, 6.11, 7.2, 8.10, 9

### Context

Politics & Governance is the current v0.1 roadmap task. Decision 034 established Settlement/Kingdom as a Persistent Entity Type sibling to Institution but did not define its fields. The World Bible (Asterra, Section 4) confirms that governance is many-to-one — a single territory may be governed, contested, or shared by multiple institutions, as with the Republic of Meris — rather than one government per kingdom. Four further questions needed resolution before rule text: how Settlement/Kingdom is defined, how legitimacy is modeled, how law is classified, and how diplomatic relationships are expressed, without duplicating mechanics already accepted for Institutions, Resources, Knowledge, and Persistent Entities.

### Decision

This decision defines four related resolutions, scoped deliberately to the v0.1 foundational layer. Population, Economy, Trade, Infrastructure, and Logistics simulation remain out of scope, reserved for Version 0.3 — Governance & Society.

**Settlement/Kingdom Typing**

Settlement and Kingdom are a single Persistent Entity Type representing territory and population continuity, distinct from Institution (Decision 034). A Settlement/Kingdom entity's current state includes territory extent, an aggregate population figure, and its prevailing conditions such as prosperity or unrest, tracked qualitatively per Decision 026. Individual named residents are ordinary Living Characters (Section 5) related to the settlement, not separately modeled population units. Detailed population dynamics — growth, migration, demographic modeling — are deferred to Version 0.3.

**Governance as Relationship**

Governance is expressed as a Relationship between one or more Institutions and a Settlement/Kingdom, not as a field owned by either entity. A territory may have a single governing institution, multiple institutions sharing or contesting authority, or no institution currently exercising effective control. Relationship qualities such as ruling, contesting, advisory, occupying, or exiled describe the nature of each institution's claim.

**Legitimacy**

Legitimacy is the degree to which a governing claim is recognized, tracked qualitatively rather than numerically, consistent with Decision 026 and the existing morale-band pattern (Section 6.11). Suggested bands: Unquestioned, Accepted, Contested, Rejected. Legitimacy is a property of a specific governance Relationship, not of the institution or territory alone — the same institution may be Unquestioned in one territory and Rejected in another.

**Law**

Law is not a new Persistent Entity Type or record class. Codified law is a Knowledge Asset (Section 7.2) held by a governing Institution; its content and authority are part of that institution's doctrine (Section 9.5); its spread, reform, and loss follow the existing Research & Knowledge and Knowledge Transmission rules (Section 8, Section 8.10). A law's existence and text may be canon; its claims of jurisdiction or justice are not automatically true, per Decision 032.

**Diplomacy**

Diplomatic relationships between institutions, and between institutions and settlements or kingdoms, use the existing Relationships mechanic (Section 3.10), extended with a standard quality vocabulary: Allied, Vassal, Tributary, Rival, Hostile, Neutral, and Occupied. Treaties are Knowledge Assets or Historical Documents recording the terms of a relationship; a treaty's existence and text may be canon, but its claims do not override the canonical relationship state recorded in the relevant ledgers.

### Rationale

Every resolution reuses a mechanic already accepted elsewhere — Persistent Entity typing and Relationships (Decision 033), the qualitative-banding pattern already used for morale and hidden social values (Decision 026, Section 6.11), Resources & Ownership's Knowledge Assets (Section 7.2), and Research & Knowledge's transmission rules (Section 8.10) — rather than introducing parallel systems for governance, law, or diplomacy.

Scoping out Population, Economy, Trade, Infrastructure, and Logistics keeps this decision aligned with the roadmap's own separation between the v0.1 foundational stub and the Version 0.3 — Governance & Society milestone, avoiding front-running work that has not yet had its own architecture review.

### Consequences

`010_ENGINE_RULES.md` gains Section 10 — Politics & Governance, defining Settlement/Kingdom, governance relationships, legitimacy, law, and diplomacy in full.

`002_ENGINE_ROADMAP.md`'s Version 0.1 checklist marks Politics & Governance complete; Version 0.3 — Governance & Society retains Population, Economy, Trade, Infrastructure, and Logistics as its own scope.

Future Civilizational Conflict work (Section 6.1.1) and Version 0.3 governance work should build on Settlement/Kingdom and governance Relationships rather than redefining territory or authority.

### Alternatives Considered

- Modeling one government institution per kingdom as a required field. Rejected: contradicted by the World Bible's own Republic of Meris, which is governed by multiple competing institutions.
- Modeling legitimacy as a numeric score exposed to the player. Rejected: conflicts with Decision 026.
- Modeling law as its own Persistent Entity Type. Rejected: duplicates Knowledge Asset and Doctrine mechanics already defined.
- Including Population, Economy, Trade, Infrastructure, and Logistics in this decision. Rejected: these are explicitly scoped to Version 0.3 in the roadmap and were not part of this architecture review.

---

## Decision 037 — Magic as World Extension

**Status:** Accepted  
**Date:** 2026-07-11  
**Related Sections:** Decision 027, Decision 003, Decision 012, Decision 013, Decision 018, `010_ENGINE_RULES.md` — Sections 2.2, 2.5, 2.9, 4.4, 5.2, 6.10, 6.18, 7.2, 7.12, 8, 9

### Context

Decision P004 asked how setting-specific supernatural rules extend the engine without contaminating engine-level logic or allowing unexplained rule drift during play — the same "Rule Drift" failure documented in the Mictian case study. Review found that most magic-adjacent behavior already has a home in existing mechanics: magical research already follows the Research & Knowledge lifecycle (Section 8, which explicitly includes "magical" research), magical items and knowledge already fit existing Resource Categories (Section 7.2, 7.12), magical effects already fit Character State and Modifiers (Section 5.2, 6.10, 4.4), and Section 6.18 already contains almost the exact contract needed — narrowly scoped to resurrection alone. Per explicit direction, the engine-layer scope is kept deliberately minimal: the actual magic system of any world, including Asterra's Weave, remains entirely world-layer content.

### Decision

The engine defines a Supernatural Phenomena Contract that any world must satisfy to introduce magic or other supernatural phenomena, generalizing the existing resurrection rule (Section 6.18) rather than duplicating it under a different name.

Any world-established supernatural phenomenon must define:

1. Existence — not assumed; established only through the world's discoverable mechanics (Law VI).
2. Source — a declared origin, even if that origin is itself unknown or disputed within the world.
3. Access — what access requires: talent, training, materials, ritual, institutional sanction, or similar.
4. Cost and limitation — consistent and established; the engine does not define what they are, only that they must exist and remain stable absent an in-world cause for change.
5. Risk — proportional to the power of the effect.
6. Discoverability — governed by the existing Layers of Truth (Section 2.2) and Research & Knowledge lifecycle (Section 8); not exempt from Discovery (Section 2.5).
7. Social and institutional consequences — expressed through existing Institution, Relationship, and Reputation mechanics.
8. Consistency — once established, a system's rules, costs, and limitations may not silently change; unexplained change is a contradiction (Section 2.9).

The engine defines no spell lists, magic schools, or universal magical resource pool. Existing mechanics already accommodate magic-specific content: Institutions (Section 9) for magical orders and schools, Individual Resources (Section 7.12) for artifacts, Knowledge Assets (Section 7.2) for spellbooks and spells, Character State and Exhaustion (Section 5.2, 6.10) for active effects and magical depletion, and Modifiers (Section 4.4) for magical advantages and disadvantages.

### Rationale

Generalizing Section 6.18 instead of writing a parallel rule closes the exact duplication risk Decision P004 was written to prevent — without this, resurrection would have an explicit consistency contract while blessings, curses, and enchantments (Section 5.8) would not, despite being the same category of thing. Rejecting a universal magical resource pool keeps this decision consistent with Decisions 012, 013, and 018. Deferring all specific magic content to the world layer directly satisfies Decision 027 and the explicit direction to keep the magic system world-specific.

### Consequences

`010_ENGINE_RULES.md` gains Section 11 — Magic & Supernatural Phenomena. Section 6.18 is cross-referenced to Section 11.2 rather than rewritten, preserving its existing accepted text.

`worlds/asterra/200_WORLD_BIBLE.md` Section 3 (The Weave and Magic) already substantially satisfies this contract — declared origin (acknowledged as unknown), access requirements, costs and limitations, and fragmented institutional knowledge are all already present. No changes to the World Bible are required by this decision.

`002_ENGINE_ROADMAP.md`'s Version 0.1 checklist marks Magic Framework complete. The Version 0.4 — Magic Framework planned milestone should be understood as now primarily world-layer authoring work rather than engine work, since its stated focus items are substantially closed at the engine layer by this decision.

### Alternatives Considered

- Defining a generic engine-level magic mechanic (spell points, tiers, schools) usable by any world. Rejected per explicit direction to keep magic world-specific, with the engine defining only the minimal contract.
- Leaving Section 6.18 as the only supernatural contract, without generalizing it. Rejected: leaves other supernatural phenomena without an equivalent consistency requirement.
- Modeling magical knowledge through a dedicated Magic Knowledge Layer distinct from the existing five Layers of Truth. Rejected: duplicates Section 2.2 without cause.

---

## Decision 038 — Historical Persistence

**Status:** Accepted  
**Date:** 2026-07-11  
**Related Sections:** Decision 032, Decision 033, Decision 034, Decision 035, Decision 037, `010_ENGINE_RULES.md` — Sections 2.6, 2.8, 3.5, 3.10, 7.2, 7.8, 7.10, 7.12, 8.2, 8.12, 9.13

### Context

Decision P005 asked how chronicles, treatises, myths, legal records, memoirs, propaganda, and campaign chronicles emerge from simulation state. Review found that a historical document requires no new Persistent Entity type or record class — it is an Individual Resource (Section 7.12) and typically a Knowledge Asset (Section 7.2), already governed by Storage, Loss and Destruction, Rediscovery, and Historical Interpretation (Sections 7.8, 7.10, 8.12, 2.6). The remaining gaps were: an explicit generation/provenance process, a placement fix for the Manifest's historical layer (currently top-level rather than world-scoped, inconsistent with the fix already made for institutions in Decision 034), generalizing the institution-specific Legacy rule (Section 9.13) to all persistent entities, and an explicit rule against the "historical compression" failure documented in the Mictian case study, where summaries silently replaced preserved history.

### Decision

**Generation and Provenance**

A historical document is authored from simulation state through the same Recording and Publication stages already defined for knowledge (Section 8.2). Generating a historical document never deletes, downgrades, or replaces the higher-authority source it was drawn from; the source (ruling, transcript, or ledger) remains canon at its existing tier regardless of how many historical documents are later written about it.

Every historical document should identify, where established:

- its author or origin, even if anonymous, collective, or disputed,
- the time of the event it describes,
- the time of its own recording,
- its scope,
- unresolved uncertainty.

This generalizes the provenance requirement already stated for record updates (Section 2.8) to the specific case of historical document generation.

**Promotion from Campaign Chronicle**

A campaign chronicle begins campaign-scoped. It may be promoted to a world-layer historical document using the Promotion mechanic already defined for persistent entities (Section 3.10) once the simulation establishes who wrote it, when it was preserved, and how later people can access it — the same condition Decision 032 already placed on this transition, now named explicitly as Promotion.

**Repository Placement**

Historical documents reside within the World layer, under a dedicated sub-path:

```
worlds/<world>/historical/<document-slug>.md
```

This corrects the Manifest's repository tree, which currently lists `historical/` as a top-level directory. Historical documents are inherently in-world evidence (Decision 032) and are therefore always world-scoped, consistent with the institution ledger placement established in Decision 034.

**Legacy Generalization**

The Legacy rule already defined for institutions (Section 9.13) is generalized to every persistent entity. Any persistent entity's historical continuity may be preserved through historical documents about it after its active existence ends or while it remains active. Such documents remain evidence under the Canonical Record Architecture (Section 2.8); they do not become the entity's authoritative record. Section 9.13 becomes a specific application of this general rule rather than an institution-only exception.

**No Closed Document Taxonomy**

The engine does not enforce a fixed set of historical document subtypes. Archive, Chronicle, Biography, Memoir, Treatise, Myth, Propaganda, and Legal Record, as already listed in the Manifest, remain descriptive examples rather than required categories.

**Multiplicity**

Multiple historical documents about the same event or entity may coexist without requiring reconciliation, consistent with Section 2.6. The engine does not need to select a single correct account among conflicting historical sources.

### Rationale

Every element reuses an existing mechanic — Individual Resources, Knowledge Assets, Promotion, the provenance clause already in Section 2.8, and Historical Interpretation — rather than introducing a document-generation subsystem. Generalizing Section 9.13 rather than leaving it institution-only avoids exactly the kind of duplication risk closed in Decisions 034 and 037. The explicit anti-compression rule directly answers the Mictian case study's documented failure, which was the original motivation for this entire engine domain.

### Consequences

`010_ENGINE_RULES.md` gains Section 12 — Historical Persistence. Section 9.13 is cross-referenced to Section 12.4 rather than rewritten.

`000_ENGINE_MANIFEST.md` repository architecture is corrected to nest `historical/` under `worlds/<world>/`.

`002_ENGINE_ROADMAP.md`'s Version 0.1 checklist marks Historical Persistence complete. The Version 0.5 — Historical Simulation planned milestone should be understood similarly to Version 0.4: Libraries and Archives are achievable today through existing Institution and Resource mechanics without new engine work, and Retrospective Ages / Historical Periodization remain the primary genuinely new work for that milestone.

### Alternatives Considered

- Defining Historical Document as its own Persistent Entity Type. Rejected: duplicates Individual Resource and Knowledge Asset mechanics already defined.
- Defining a closed taxonomy of historical document subtypes with distinct rules per type. Rejected: premature complexity — the existing examples are sufficient without enforcement.
- Leaving Section 9.13 as institution-specific and writing a parallel Legacy rule for other entity types. Rejected: same duplication risk already closed in Decisions 034 and 037.
- Formalizing Retrospective Ages / Historical Periodization now. Deferred: Version 0.5 scope, not part of this architecture review.

---

## Decision 039 — Save State Architecture

**Status:** Accepted  
**Date:** 2026-07-11  
**Related Sections:** Decision 032, Decision 028, Decision 029, Decision 038, `010_ENGINE_RULES.md` — Sections 2.8, 3.10, `000_ENGINE_MANIFEST.md` — Repository Architecture, Versioning

### Context

Decision P006 asked how machine state, human-readable ledgers, version compatibility, restoration procedures, and the boundary between save data and canonical records should be defined. Chronicle Engine has no runtime process holding state in memory; canonical state already lives entirely in Markdown ledgers under version control. Review found that a compiled save format would duplicate state already held in canonical ledgers, recreating exactly the synchronization and authority risk the engine's architecture already avoids elsewhere (Decision 032). The `saves/` directory was also placed at the repository top level in the Manifest, inconsistent with the campaign- and world-scoped placement fixes already made for institutions (Decision 034) and historical documents (Decision 038). Session restoration was undefined: `docs/AI_SESSION_TEMPLATE.md`'s Mandatory Session Start procedure covers only engine-level documents, with no defined path for resuming an in-progress campaign.

### Decision

**Ledger-as-Save**

A save is a campaign-scoped, immutable checkpoint consisting of a full copy of that campaign's canonical Markdown ledgers as they stood at a specific moment, accompanied by a lightweight save manifest containing identity, scope, version, lineage, and restoration metadata. A save contains no compiled or derived representation of state; it preserves the actual canonical ledger content.

**Placement**

Saves reside within the Campaign layer, under a dedicated sub-path:

```
campaigns/<campaign>/saves/900_CHECKPOINT_<NNNN>/
    900_SAVE_MANIFEST.md
    100_CHARACTER_SHEET.md
    110_WORLD_LEDGER.md
    120_INVENTORY_AND_OWNERSHIP.md
    130_NPCS_AND_FACTIONS.md
    140_OBJECTIVES.md
    150_ARMIES_AND_ORGANIZATIONS.md
    160_CAMPAIGN_CHRONICLE.md
    170_CHANGELOG.md
    180_CURRENT_STATE.md
```

This corrects the Manifest's repository tree, which previously listed `saves/` as a top-level directory.

**Relationship to 180_CURRENT_STATE.md**

`180_CURRENT_STATE.md` is the live, continuously mutable operational ledger: where the character is now, what is active, what the next session must know immediately, and which processes, threats, and objectives remain unresolved.

A save checkpoint is an immutable historical capture of that ledger, and every other included ledger, at a specific moment: what was canonical at that point, which versions applied, what state can be restored, and which checkpoint a later branch originated from. Once created, a checkpoint must not change.

**Save Manifest**

Each checkpoint includes a save manifest containing, at minimum:

- save identity, including a checkpoint type and creation time,
- scope, including world, campaign, and character,
- versions, including Engine, World, Campaign Schema, and Save Format,
- lineage, including parent save, canonical continuation status, and branch name,
- the list of included ledgers,
- compatibility status and any warnings,
- a restoration entry point.

The manifest contains metadata only. It never duplicates ledger content.

**Restoration**

Restoring a campaign follows a defined procedure, added to `docs/AI_SESSION_TEMPLATE.md` as a campaign-specific branch of session start:

1. Read the campaign's latest canonical save manifest.
2. Verify Engine, World, Campaign, and Save Format versions.
3. Read `180_CURRENT_STATE.md`.
4. Read the Character Sheet and active Objective ledger.
5. Read other ledgers required by the current situation.
6. Identify version mismatches, unresolved contradictions, or incomplete state.
7. Present a restoration summary before continuing gameplay.

Restoration does not require reading every campaign file in full at every session start. The manifest and `180_CURRENT_STATE.md` identify what is relevant; other ledgers are consulted as the situation requires.

**Version Compatibility**

Save manifests record Engine, World, Campaign Schema, and Save Format versions per Decision 029, and a compatibility status. Version mismatches are surfaced explicitly during restoration rather than resolved automatically. Migration procedures for reconciling mismatched versions are out of scope for this decision.

**Deferred**

The following remain out of scope, reserved for later persistence work once Chronicle Engine has an actual runtime or companion application: automatic migrations, JSON or other binary serialization, append-only event logs, checksums, deterministic random-state restoration, automated branching tools, and compiled machine-readable indexes.

### Rationale

A compiled save format would create a second representation of canonical state, reintroducing the exact synchronization and authority risk the Canonical Record Architecture (Decision 032) already exists to prevent, and the exact "inventory drift" and "rule drift" failures documented in the Mictian case study. Ledger-as-save instead reuses the repository's existing Markdown ledgers and versioning as the save mechanism itself, requiring no new format or translation layer. Making session restoration an explicit, scoped procedure, rather than requiring a full re-read of every file, keeps the engine usable in practice without sacrificing the consistency principles established elsewhere.

### Consequences

`010_ENGINE_RULES.md` gains Section 13 — Save State Architecture. Section 2.8's Machine-Readable Saves subsection is cross-referenced to Section 13 rather than rewritten.

`000_ENGINE_MANIFEST.md` repository architecture is corrected to nest `saves/` under `campaigns/<campaign>/`, and the Current Versions table's Save Format entry is updated from Not Defined to 0.1.0.

`docs/AI_SESSION_TEMPLATE.md` gains a "Resuming an Existing Campaign" procedure alongside the existing Mandatory Session Start sequence.

`002_ENGINE_ROADMAP.md`'s Version 0.1 checklist marks Save State Architecture complete. The Version 0.6 — Persistence planned milestone retains campaign migration, world migration, and full version-compatibility resolution as its own scope; this decision defines only compatibility recording and mismatch detection.

### Alternatives Considered

- A compiled, derived save format distinct from the canonical ledgers. Rejected: duplicates canonical state, recreating the synchronization and authority risk Decision 032 already exists to prevent.
- Automatic version migration at restoration time. Deferred: Version 0.6 scope; this decision only requires mismatches to be surfaced, not resolved.
- Requiring a full read of every campaign file at every session start. Rejected: unnecessary given the manifest and `180_CURRENT_STATE.md` already identify what's relevant.
- Treating `180_CURRENT_STATE.md` and a save checkpoint as the same artifact. Rejected: conflates a continuously mutable operational ledger with an immutable historical capture, losing the ability to answer what was canonical at a given checkpoint.

---

## Decision 040 — Engine Changelog Format

**Status:** Accepted  
**Date:** 2026-07-11  
**Related Sections:** Decision 032, Decision 039, Revision Policy (this document), `030_ENGINE_CHANGELOG.md`

### Context

The Revision Policy in this document already requires recording every decision supersession in the engine changelog, but the changelog file itself did not yet exist, and its format, scope, and triggering conditions were undefined. Review found the same duplication risk already resolved in Decision 039: a changelog that restates decision rationale would create a second representation of the same truth as the permanent decision record, which is never deleted per this document's own Revision Policy.

### Decision

`030_ENGINE_CHANGELOG.md` is a reverse-chronological index of engine changes. Each entry is a pointer, not a restatement: it names the decisions, rules sections, manifest changes, and other files affected by a unit of work, without repeating their content.

Entries are triggered by:

- any decision reaching Accepted status, whether new or superseding a prior decision,
- any new or modified Rules section,
- any correction to the Manifest's repository architecture or versioning tables.

Supersession, the only trigger explicitly named in the Revision Policy, remains mandatory; the other two triggers extend it to match the Manifest's stated purpose for this file ("version history") without contradicting the policy.

Entries are grouped by unit of work, typically a completed roadmap task, not by individual decision or raw date, mirroring the Roadmap's own Completed checklist.

Because Engine Version has remained 0.1.0 throughout the entire Version 0.1 - Engine Foundation milestone, all backfilled and current entries are grouped under a single 0.1.0 (Workshop Draft) heading. A new version heading is added only when the Engine Version itself changes.

The changelog is backfilled from the existing git history for `engine/`, covering the full Version 0.1 development arc from initial structure through Save State Architecture, rather than starting empty from the date of this decision.

### Rationale

Restating decision content in the changelog would duplicate the permanent record already preserved in `001_ENGINE_DECISIONS.md`, the same risk rejected for saves in Decision 039. Grouping by unit of work rather than by decision number keeps the changelog scannable and aligned with how the Roadmap already tracks progress. Backfilling from git history gives the changelog immediate value as an index of how Version 0.1 was actually built, rather than an empty file that only matters going forward.

### Consequences

`030_ENGINE_CHANGELOG.md` is created, populated with entries for the full Version 0.1 arc to date.

`002_ENGINE_ROADMAP.md`'s Version 0.1 checklist marks Engine Changelog complete, closing Version 0.1 - Engine Foundation entirely.

Future decisions and rules sections should add a changelog entry as part of the same unit of work that introduces them, consistent with Revision Policy step 5.

### Alternatives Considered

- Restating each decision's context and rationale in the changelog. Rejected: duplicates the permanent decision record.
- Recording only supersessions, per the Revision Policy's literal minimum. Rejected: would omit net-new decisions (034, 036) that were not supersessions, undercutting the Manifest's stated "version history" purpose for this file.
- Starting the changelog empty from today. Rejected: produces a changelog with no coverage of the milestone it claims to close.
- One entry per individual decision rather than per unit of work. Rejected: less scannable, and misaligned with how the Roadmap already reports progress.

---

## Decision 041 — Runtime Model

**Status:** Accepted
**Refined by:** Decision 049 (separate Development and Gameplay Runtime Profiles for the LLM substrate)
**Date:** 2026-07-11
**Related Sections:** `012_ENGINE_RUNTIME.md`; `010_ENGINE_RULES.md` — Sections 2, 3, 4, 13; Decision 027; Decision 042

### Context

The engine specification defined *what is true* (the Engine Rules) but never defined *how the engine is executed*. Execution behavior — how the interpreter loads state, resolves canon, infers, mutates ledgers, and manages a session — was scattered implicitly across the Rules and `docs/AI_SESSION_TEMPLATE.md`, and much of it was written from the perspective of an AI executor. The Foundation Hardening architecture review found this to be the single most significant gap: the runtime is the most important component of the system, and it was the least specified. Because the executor is currently a large language model, there was also a risk of binding the specification permanently to that substrate.

### Decision

Introduce the **Runtime** as a first-class architectural concept, documented in a new engine-layer document, `012_ENGINE_RUNTIME.md`.

The Runtime is the model by which Chronicle Engine is executed. It is defined as a substrate-independent abstraction: it may be realized by a large language model, a local model, a native application, or a dedicated server. The **Interpreter** is a replaceable component *within* the Runtime, not the Runtime itself.

The Runtime is composed of components: Interpreter, Session, Context, Canon, Mutation, and Persistence. It sits in the execution chain `Player → Runtime → Engine → World → Campaign → History`, as the seam between the Player (actor) and the Engine (substance).

The document is normative for runtime behavior. Substrate-specific procedure is delegated to operational **Runtime Profiles** under `docs/`; the current large-language-model profile's session procedure is `docs/AI_SESSION_TEMPLATE.md`. The document references, but does not restate, the Engine Rules and the data-model concepts they contain.

`011_ENGINE_DATA_MODEL.md` is reserved for the engine's data-model concerns (Persistent Entity, Canonical Record, entity identity, Relationships, schemas). The Runtime uses those concepts; it does not define them. Ledger templates and stable entity identity are reassigned to that reserved document and deferred.

### Rationale

Separating *what is true* (Rules) from *how the engine operates* (Runtime) gives the project a clean, durable top-level cut that a new contributor can understand immediately. Defining the Runtime against a substrate-independent abstraction, with the Interpreter as a component, prevents the specification from being permanently coupled to LLM execution. Delegating substrate technique to Runtime Profiles keeps the normative core stable while allowing operational guidance to evolve. Reserving `011` for the data model completes the three-way separation — Rules define truth, the Data Model structures it, the Runtime operates on it — and gives the previously-identified missing entity-identity abstraction a proper home.

### Consequences

`012_ENGINE_RUNTIME.md` is created and added to the mandatory reading order and the Manifest's Engine Components.

`docs/AI_SESSION_TEMPLATE.md` is reframed as the large-language-model Runtime Profile's session procedure.

`011_ENGINE_DATA_MODEL.md` is reserved. Extracting Persistent Entity and Canonical Record from the Rules into that document, and defining entity identity and ledger schemas, becomes the next Foundation Hardening task. Ledger templates are deferred until the data model is accepted.

Engine Version advances to 0.1.1, establishing the Foundation Hardening line ahead of Version 0.2 gameplay work.

### Alternatives Considered

- Fold the runtime model into `010_ENGINE_RULES.md` as a new section. Rejected: bloats an already-large file and blurs the *what is true* / *how it operates* separation.
- Name the document an Interpreter or Execution contract. Rejected: "execution" is procedural and "interpreter" is substrate-specific; the artifact is the broader runtime specification, and the interpreter is one component of it.
- Keep execution guidance operational-only, in `docs/`. Rejected: core execution obligations (grounding, promotion, canon-determinism, mutation constraints) are normative and engine-independent, and belong in the engine layer.

---

## Decision 042 — Durable Canon and Promotion Obligation

**Status:** Accepted
**Date:** 2026-07-11
**Related Sections:** `012_ENGINE_RUNTIME.md` — Sections 4, 5, 6; `010_ENGINE_RULES.md` — Sections 2.1, 2.8; Decision 004; Decision 032

### Context

The repository contained a genuine architectural contradiction. `README.md` and `docs/PROJECT_CONTEXT.md` assert that the repository is the single source of truth and that conversation history is temporary. Yet the canon hierarchy (Rules Section 2.1, Decision 004) places the gameplay transcript above canonical ledgers. The transcript lives in the volatile session, not the repository. As stated, the highest-authority canon could exist only outside the repository, and could be lost at session end — contradicting the claim that the repository is authoritative. Rules Section 2.8 already directed that rulings "should be propagated into affected canonical ledgers when practical," but "when practical" was too weak to guarantee the repository actually held the canon.

### Decision

Separate two axes that the canon hierarchy conflated:

- **Precedence** (in flight): when sources conflict *during play*, the canon hierarchy order controls. The transcript outranks a ledger because it reflects what just happened; the ledger may be stale. This order is unchanged.
- **Durability** (at rest): the repository is the sole system of record *between sessions*. The transcript is not a durability tier; it does not persist.

Reconcile the two axes with a mandatory **Promotion** obligation: canon-bearing transcript facts and explicit rulings must be written into durable ledgers, with provenance, by the next promotion barrier — each checkpoint, and session close. Until promoted, an in-session fact is a pending write, not preserved canon. After promotion, the ledger holds the fact and the transcript becomes historical evidence of how it was established.

This tightens Rules Section 2.8's "propagate when practical" into a mandatory barrier and refines the framing of Section 2.1 and Decision 004 from a single order into two distinct axes bridged by promotion.

### Rationale

The contradiction dissolves once precedence and durability are recognized as different questions. "The repository is the single source of truth" is true at rest; "the transcript outranks ledgers" is true in flight; promotion is the bridge between them, analogous to flushing an uncommitted write to a durable store. Making promotion mandatory rather than best-effort is what actually guarantees the repository holds the canon it is claimed to hold.

### Consequences

Rules Section 2.1 gains a clarification that the hierarchy is a precedence order, not a durability order, with a pointer to the Runtime.

Rules Section 2.8 is tightened: rulings and canon-bearing transcript events must be promoted by the next promotion barrier; the transcript is identified as a precedence tier, not a durability tier.

Decision 004 and Decision 032 remain Accepted and are refined by this decision; they are cross-referenced accordingly rather than superseded, as their substance stands.

The promotion barrier is defined operationally in `012_ENGINE_RUNTIME.md` (Session close and checkpoints) and aligns with the Save State Architecture (Rules Section 13).

### Alternatives Considered

- Demote the transcript below ledgers in the canon hierarchy. Rejected: the transcript legitimately outranks a stale ledger in flight; the problem was durability, not precedence.
- Declare the repository authoritative and the transcript merely advisory. Rejected: would let a stale ledger override what just happened at the table.
- Leave promotion best-effort ("when practical"). Rejected: this is exactly what allowed canon to live only in a volatile transcript.
- Merge this into Decision 041. Rejected: the runtime model and the canon-durability refinement are distinct questions and are kept separately traceable.

---

## Decision 043 — Persistent Object and Data Model Structural Contract

**Status:** Accepted
**Date:** 2026-07-11
**Related Sections:** `011_ENGINE_DATA_MODEL.md`; `system/ID_REGISTRY.md`; `010_ENGINE_RULES.md` — Sections 2.8, 3.10, 7.12; `012_ENGINE_RUNTIME.md`; Decision 044

### Context

The Foundation Hardening review found that the engine relied on structural concepts — Persistent Entity, Canonical Record, provenance, generic-versus-individual resources — that were defined only as prose inside the behavioral Rules, with no identifier scheme, no referential model, and no structural contract for ledgers, templates, or tooling to depend on. The Runtime (Decision 041) was written to reference a data model that did not yet exist. Structure and behavior were entangled in the same document, and the missing stable-identity abstraction (identified in the review) had no home.

### Decision

Establish a dedicated engine-layer document, `011_ENGINE_DATA_MODEL.md`, defining the stable structural contract, separate from the behavioral Rules and the execution Runtime.

Introduce **Persistent Object** as the root structural abstraction: anything with a stable identifier that persists and carries provenance. It has exactly four direct specializations, and the hierarchy is two levels deep: **Persistent Entity** (`ENT-`), **Canonical Record** (`REC-`), **Event** (`EVT-`), and **Relationship** (`REL-`). The universal fields — identifier, the one Canonical Record, provenance envelope, schema version, status — are defined once on the root.

Adopt semantic-free, kind-prefixed identifiers (`ENT-000173`), globally unique per kind, immutable, and never reused, allocated monotonically by a repository-level registry at `system/ID_REGISTRY.md` under four invariants: atomic allocation-with-creation, mandatory registration, no reuse, and branch reconciliation before merge. All references between objects are by identifier, never by name.

Establish the invariant that **every persistent object has exactly one authoritative Canonical Record** that owns its state, with base cases for records, events, and relationships, and atomic transfer of record responsibility.

Reframe an object's temporal model as **Canonical State versus Historical Evidence**: a single authoritative present truth in the one Canonical Record, and non-authoritative records about the past, rather than two kinds of state. No append-only event log is mandated.

Declare the Data Model the **most stable layer** of the architecture, authoritative on structure, subordinate to the Rules on behavior.

The structural distinction between generic/aggregated and individual/promoted resources, record and schema versioning, validation constraints, and the domain-extension mechanism are defined here. Behavior remains in the Rules; execution remains in the Runtime; templates instantiate this structure and are deferred to the next task.

### Rationale

Separating structure from behavior gives ledgers, templates, and future tooling a stable contract to depend on, and completes the three-way split — Rules define truth, the Data Model structures it, the Runtime operates on it. The Persistent Object root removes duplication: identity, state ownership, provenance, and schema versioning are defined once rather than repeated across entities, records, events, and relationships. Semantic-free identifiers with reference-by-identifier are the structural fix for the stable-identity problem and for the fragility of name-based resolution. The single-Canonical-Record invariant makes "which record owns this fact" deterministic. The Canonical-State/Historical-Evidence framing aligns the temporal model with the canon hierarchy and durability model (Decision 042) and avoids mandating an event log the persistence architecture has deferred.

### Consequences

`011_ENGINE_DATA_MODEL.md` and `system/ID_REGISTRY.md` are created. The Manifest, Glossary, Roadmap, and Changelog are updated.

The structural enumerations in Rules Section 3.10 (Persistent Entity requirements) and Section 2.8 (provenance fields) are relocated to `011` as the authoritative structure; those Rules sections retain their behavior and reference `011`. Section 7.12 references `011` for the identifier-versus-quantity basis.

`012_ENGINE_RUNTIME.md` repoints its data-model references from the Rules to `011`.

Engine Version advances to 0.1.2; Data Model Version is 0.1.0, recorded as the Campaign Schema version in the save manifest.

Ledger templates derive from this document and remain the next Foundation Hardening task, deliberately not created here.

### Alternatives Considered

- Keep structural concepts inside `010_ENGINE_RULES.md`. Rejected: entangles structure with behavior and gives dependents no stable contract.
- Define entities, records, events, and relationships as independent siblings without a root. Rejected: duplicates identifier, provenance, and state-ownership fields across all four.
- Adopt UUIDs or distributed identifier allocation. Rejected for 0.1.2: unnecessary for a document substrate; readable monotonic identifiers with branch reconciliation are preferred. Recorded as a known limitation instead.
- Allow multiple authoritative records per object. Rejected: reintroduces the ambiguity the Canonical Record invariant removes.

---

## Decision 044 — Stable Entity Identity

**Status:** Accepted
**Date:** 2026-07-11
**Related Sections:** `011_ENGINE_DATA_MODEL.md` — Sections 5, 6; `010_ENGINE_RULES.md` — Section 3.10; Decision 033; Decision 043

### Context

Rules Section 3.10 requires that a persistent entity's identity survive renaming, transformation, and succession, and that identity uncertainty be preserved rather than forced. It gave no structural means to do so. An entity that is renamed, disguised, legally reclassified, merged, divided, transformed, destroyed, mythologized, or rediscovered under a different name had no defined way to retain identity, and a name-based runtime would lose or confuse identity across these changes.

### Decision

Define stable entity identity structurally, as a specialization of Persistent Object identity, with three pieces:

1. An entity's identity is its opaque `ENT-` identifier — never a name, type, or legal status.
2. Names are **aliases**: time-scoped, provenance-bearing records with a quality (current, former, cover, legal, mythic, posthumous). Attribute changes — rename, disguise, reclassification — change aliases or attributes, not identity.
3. Lifecycle continuity is an **identity-continuity graph**: a closed set of typed links between identifiers (transforms-from, succeeds, splits-from, merges-from, emerges-from, possibly-same-as), each carrying provenance and a certainty qualifier (asserted, disputed, believed, false-claim).

Two identifiers are never silently collapsed. When canon confirms that two identifiers denote the same entity, reconciliation is an explicit, provenance-bearing Event. Uncertain identity is represented as a disputed link, not forced into a merge.

### Rationale

An opaque immutable identifier makes rename, disguise, and reclassification free, because they touch attributes rather than identity. Modelling continuity as a certainty-qualified graph expresses Rules Section 3.10's "preserve the uncertainty" principle structurally, and handles all nine identity cases without ever deleting a record or silently merging identities — consistent with the Runtime's no-silent-canon rule (Decision 041).

### Consequences

`011_ENGINE_DATA_MODEL.md` Sections 5 and 6 define aliases and the identity-continuity graph. Rules Section 3.10 retains its behavioral prose (transformation, succession, end states) and references `011` for the identity structure.

Decision 033 is refined: the Persistent Entity is now one specialization of the Persistent Object, and its identity is defined structurally here.

### Alternatives Considered

- Use the entity's name or a name-plus-type key as identity. Rejected: breaks on rename, disguise, and reclassification, and invites name-based confusion.
- Reassign identifiers on transformation or succession. Rejected: destroys continuity, which is the property Section 3.10 requires.
- Force a single answer when identity continuity is uncertain. Rejected: contradicts Section 3.10 and erases real in-world ambiguity.

---

## Decision 045 — Ledger Template System

**Status:** Accepted
**Date:** 2026-07-11
**Related Sections:** `templates/`; `011_ENGINE_DATA_MODEL.md`; `010_ENGINE_RULES.md`; `012_ENGINE_RUNTIME.md`; Decision 028; Decision 043

### Context

With the Data Model accepted (Decision 043), the engine needed concrete artifacts that instantiate its structure so that world and campaign files have a consistent shape to fill, and so referential integrity can be validated. The Manifest reserved an empty `templates/` directory. The open questions were the representation of a persistent object on the page, how single-object and multi-object ledgers relate, where templates live, and how an unfilled skeleton is prevented from being mistaken for real state.

### Decision

Establish a **ledger template system** as a non-canonical instantiation layer under `templates/`, conforming to the Data Model.

Represent every persistent object as an **Object Block**: a fenced YAML block inside Markdown. This is the single representation; YAML frontmatter is not used, and a single-object ledger simply contains one Object Block. A **Ledger Template** is a Canonical Record that composes one or more Object Blocks under Markdown headings — the atom-and-container model.

Keep the universal Persistent Object block minimal — identifier, canonical record, schema version, status, provenance — with entity-only fields (type, scope, aliases, relationships, identity links, canonical state) living in the Persistent Entity extension.

Use deliberately invalid placeholder tokens (`ENT-XXXXXX`, `REC-XXXXXX`, `EVT-XXXXXX`, `REL-XXXXXX`, `<required: …>`, `<optional: …>`, `<generated: …>`). Validation rejects any canonical file that still contains an unresolved placeholder token (`011` Section 12.3).

Use the directory layout `templates/{objects,ledgers,examples}/` plus `000_TEMPLATE_CONVENTIONS.md`. The directory is named `objects/`, not `entities/`, because Events, Relationships, and Canonical Records are persistent objects but not persistent entities.

Phase 1 delivers the conventions document, the core Object Block templates, the `100_CHARACTER_SHEET`, `130_NPCS_AND_FACTIONS`, and `900_SAVE_MANIFEST` ledgers, and one non-canonical instantiated Character example. The remaining campaign, world, and historical ledger templates are Phase 2.

### Rationale

A single on-page representation removes ambiguity for both human and interpreter authors, and the Object-Block/Ledger-Template split lets one block definition serve single-object and multi-object ledgers without duplication. Keeping the universal block minimal honors the Persistent Object hierarchy: non-entity objects do not carry entity fields. Deliberately invalid placeholders make an unfilled template detectable, so validation can distinguish a skeleton from real state. Delivering Phase 1 only validates the format end to end before mechanically repeating it across every ledger.

### Consequences

`templates/000_TEMPLATE_CONVENTIONS.md`, the `templates/objects/` block templates, the Phase 1 `templates/ledgers/` files, and a `templates/examples/` fixture are created. `011` Section 12.3 gains the placeholder-rejection constraint. The Manifest, Roadmap, Glossary, and Changelog are updated.

Engine Version advances to 0.1.3, closing the Foundation Hardening milestone. Data Model Version remains 0.1.0: templates instantiate the existing schema without changing it.

Phase 2 ledger templates and any world-authoring of Asterra remain future work.

### Alternatives Considered

- YAML frontmatter for single-object files and inline blocks for multi-object files. Rejected: two representations for the same object; a single-object ledger with one Object Block is simpler.
- Put entity fields on every Object Block. Rejected: records, events, and relationships are not entities and must not carry entity fields.
- Valid-looking placeholders. Rejected: an unfilled skeleton could pass as real state; invalid tokens make templates detectable by validation.
- Deliver all ledger templates at once. Rejected: Phase 1 proves the format before repeating it; the rest is mechanical.

---

## Decision 046 - Civilizational Knowledge State and Propagation

**Status:** Accepted
**Date:** 2026-07-11
**Related Sections:** Decision 031, Decision 032, Decision 033, Decision 035, `010_ENGINE_RULES.md` - Section 8

### Context

Decision 031 established that research and knowledge follow a lifecycle, but Version 0.2 requires a more historically realistic model at civilization scale. The engine must distinguish the thing being known from what different holders know, believe, possess, validate, apply, or dispute about it. Without that distinction, knowledge collapses into a binary unlock state or a global technology tree, contradicting the project's world-first historical model.

The existing foundation already provides the abstractions needed to avoid a new subsystem: Persistent Objects, Canonical Records, Relationships, Institutions, the Runtime promotion model, and the accepted research lifecycle. The unresolved question was how to formalize holder-specific divergence and propagation without turning diffusion into a mandatory linear ladder.

### Decision

The engine distinguishes **Knowledge Subject** from **Knowledge State**.

**Normative principle:** **Knowledge Subjects persist. Knowledge States change.**

A **Knowledge Subject** is the actual claim, technique, theory, discovery, practice, method, doctrine, or knowledge domain whose continuity may matter historically.

A **Knowledge State** is holder-specific: what a particular character, institution, public, or cultural tradition knows, believes, understands, validates, possesses, applies, restricts, preserves, or misrepresents about that subject.

One Knowledge Subject may have many divergent Knowledge States at the same time. Different holders may:

- possess the same text but understand it differently,
- validate the same claim under different standards,
- apply a technique without understanding its theory,
- preserve fragments while losing the whole,
- dispute, suppress, or mythologize the same subject.

Propagation is not a universal unlock and not a mandatory local-to-world ladder. Reach descriptors such as local, institutional, regional, or world-spanning may describe distribution, but they are not required stages. Instead, holder-specific Knowledge States are described through independent qualitative dimensions, including:

- access,
- possession,
- understanding,
- validation,
- acceptance,
- application,
- transmission reach,
- restriction,
- preservation quality.

The research lifecycle remains real, but it now applies with this distinction in view: the lifecycle describes how a Knowledge Subject originates, is examined, recorded, transmitted, restricted, adopted, lost, or rediscovered, while Knowledge States describe what specific holders currently make of that subject.

### Rationale

This model increases historical realism without introducing a new engine subsystem. Real civilizations do not advance because "the world" learns something once. Knowledge spreads unevenly, remains partial, is institutionalized or suppressed, and survives through records, practices, and traditions with varying fidelity. Reusing the existing abstractions keeps Version 0.2 aligned with the engine's preference for strengthening accepted mechanics rather than expanding them.

### Consequences

`010_ENGINE_RULES.md` Section 8 is revised so that Research & Knowledge owns the distinction between Knowledge Subject and Knowledge State, plus the non-linear propagation model.

`002_ENGINE_ROADMAP.md` Version 0.2 is restructured around capability milestones rather than file creation, with explicit exclusion of technology trees, research-point currencies, and new economy/governance subsystems.

`020_ENGINE_GLOSSARY.md` gains the terminology required to keep the new knowledge model single-sourced and unambiguous.

Decision 031 remains accepted and is refined rather than replaced: the lifecycle still stands, but it is now understood through the Knowledge Subject / Knowledge State distinction.

### Alternatives Considered

- Binary known/unknown knowledge. Rejected: cannot represent disagreement, partial custody, fragmented practice, or contested validation.
- Global technology tree or universal unlock model. Rejected: contradicts the historical simulation goal and collapses holder-specific continuity.
- Mandatory diffusion ladder from local to world. Rejected: useful as description, false as a universal rule.

---

## Decision 047 - Knowledge Custody, Continuity, and Rediscovery

**Status:** Accepted
**Date:** 2026-07-11
**Related Sections:** Decision 046, Decision 032, Decision 035, Decision 038, `010_ENGINE_RULES.md` - Sections 8, 9, 12

### Context

Once Knowledge Subject and Knowledge State are separated, the next unresolved problem is continuity: how knowledge survives or disappears through archives, practitioners, institutions, records, suppression, and rediscovery. Historical realism requires custody, access control, validation authority, and preservation quality to matter without allowing any institution to own objective truth merely because it holds records or controls a gate.

The foundation already contains the needed mechanisms: Canonical Records for durable state, Institutions for custody and mediation, Resources & Ownership for records and materials, Historical Persistence for surviving evidence, and the Runtime's promotion model for making new canon durable. The remaining task was to define how these existing mechanics relate.

### Decision

The engine distinguishes the following, and must not conflate them:

- **objective reality** - what is actually true,
- **custody of records or materials** - who currently holds or preserves the relevant artifact, archive, notes, or tools,
- **control of access** - who can inspect, copy, learn, or use the subject,
- **validation authority** - who can meaningfully certify, legitimize, or reject a claim within a given context,
- **claimed intellectual ownership** - who asserts control, monopoly, or authorship,
- **holder Knowledge State** - what a specific holder actually knows, believes, understands, or applies.

Institutional custody does not imply ownership of truth. Holding an archive, relic, manual, or restricted manuscript may improve preservation quality or influence access, but the institution's claim remains distinct from objective reality and from what other holders know.

Knowledge continuity may persist through:

- living practitioners,
- apprenticeships and traditions,
- records and archives,
- restricted repositories,
- institutional memory,
- public custom,
- mythologized fragments,
- recovered artifacts or texts.

Knowledge may be lost or fragmented through:

- death,
- failure to transmit,
- censorship,
- institutional collapse,
- language drift,
- material decay,
- deliberate concealment,
- selective preservation of only partial forms.

The engine recognizes **passive extinction** as a real historical outcome: a technique, method, or practice may disappear because the final knowledgeable practitioners die without successfully transmitting it, even if rumors, degraded notes, or distorted public memory remain.

Rediscovery is recovery of an earlier Knowledge Subject through surviving traces, records, practices, ruins, or renewed observation. It is not retroactive invention. The recovered Knowledge State may differ sharply from the earlier one in fidelity, scope, or application depending on preservation quality and fragmentation.

### Rationale

This decision makes knowledge historically durable without inventing an archive subsystem, a bureaucracy simulator, or a second truth model. It strengthens the existing engine by clarifying how records, institutions, and historical evidence affect continuity while preserving the canon architecture's distinction between evidence and objective reality.

### Consequences

`010_ENGINE_RULES.md` Section 8 defines custody, institutional mediation, transmission, loss, passive extinction, and rediscovery in terms of existing engine mechanics.

Section 9 continues to govern institutions, but institutions are treated as mediators, custodians, gatekeepers, patrons, censors, and validators rather than owners of truth.

Section 12 remains the home for historical persistence, but its relationship to rediscovery is tightened through Section 8's continuity model.

Version 0.2 capability validation must include non-canonical fixtures that prove the engine can represent suppression, monopoly, divergence, cultural memory, rediscovery, and passive extinction without shortcuts.

### Alternatives Considered

- Treating institutional custody as equivalent to truth. Rejected: contradicts the canon hierarchy and historical realism.
- Treating knowledge loss as requiring destruction of every surviving trace. Rejected: many historical losses leave fragments, myths, or degraded evidence behind.
- Adding a dedicated archive or bureaucracy subsystem. Rejected: existing Resources, Institutions, Canonical Records, and Historical Persistence already express the needed behavior.

---

## Decision 048 — Version Evolution and Validation Lifecycle

**Status:** Accepted
**Date:** 2026-07-11
**Related Sections:** `docs/DEVELOPMENT_WORKFLOW.md`; `002_ENGINE_ROADMAP.md`; `docs/PROJECT_CONTEXT.md`; `docs/AI_SESSION_TEMPLATE.md`; Decision 040

### Context

Through Version 0.1 and the Version 0.2 knowledge work, Chronicle Engine advanced almost entirely through architecture: decisions, rules, data model, runtime, and templates. No completed version had yet been exercised through actual gameplay. The repository documented planning and implementation, but not validation, playtesting, or the incorporation of gameplay findings. Without a governing policy, the engine could continue accumulating architecture indefinitely without ever proving that its abstractions sustain a coherent campaign, and each version's notion of "complete" was left implicit and inconsistent.

### Decision

Every engine version follows a single, mandatory development lifecycle:

1. Planning
2. ADR Design
3. ADR Approval — the Architecture Freeze for that version; accepted decisions become the fixed architectural basis for implementation.
4. Implementation
5. Consistency Audit — terminology and cross-document reconciliation.
6. Capability Validation — non-canonical validation of the version's capabilities against accepted fixtures.
7. Prototype Campaign — validation of the version through actual gameplay.
8. Engine Postmortem — capture of gameplay findings and required refinements.
9. Next Version Planning — begins only after the postmortem is complete and its required refinements are incorporated.

A version is **not complete** until its Capability Validation, Prototype Campaign, and Engine Postmortem are finished and the required refinements have been incorporated.

Architecture Freeze fixes a version's architectural basis at ADR Approval. Subsequent work within that version is implementation and refinement, not new foundational architecture. Genuinely new foundational architecture belongs to a later version's Planning and ADR Design.

This decision establishes the governance policy only. It does not restate the operational procedure. The canonical operational implementation of the lifecycle lives in `docs/DEVELOPMENT_WORKFLOW.md`. `002_ENGINE_ROADMAP.md` references the lifecycle and shows where the current version sits within it; it does not redefine it.

### Rationale

Separating governance policy (this decision) from operational procedure (`docs/DEVELOPMENT_WORKFLOW.md`) follows the same single-source-of-truth discipline already applied between the Rules, the Data Model, and the Runtime. Making the Prototype Campaign and Engine Postmortem mandatory gates, rather than optional follow-up, is what forces the engine to be validated by play rather than by architecture alone — directly answering the risk that Chronicle Engine develops abstractions that are internally consistent but unusable in practice, the failure mode the Mictian case study was written to prevent.

### Consequences

`docs/DEVELOPMENT_WORKFLOW.md` gains a Version Evolution & Validation Lifecycle section defining the stages operationally, alongside its existing session workflow.

`002_ENGINE_ROADMAP.md` gains a Development Lifecycle section that references this decision, reframes Version 0.2 by lifecycle stage, and adds Prototype Alpha — Engine Validation Campaign and Engine Postmortem as milestones and required validation gates before Version 0.3.

Version 0.3 — and every subsequent version — may not begin planning until the prior version's Prototype Campaign and Engine Postmortem are complete and their refinements incorporated.

This decision is process governance and introduces no new engine simulation mechanics.

### Alternatives Considered

- Leaving the lifecycle implicit and continuing to advance through architecture. Rejected: allows indefinite architecture with no gameplay validation.
- Defining the full lifecycle procedure inside this decision. Rejected: duplicates the operational workflow; `docs/DEVELOPMENT_WORKFLOW.md` is the single operational source.
- Defining the lifecycle only in the roadmap. Rejected: the roadmap tracks planned work and milestone state; a durable governance policy belongs in the decision record.
- Making the Prototype Campaign and Postmortem optional. Rejected: optional validation is what allowed the engine to reach this point without ever being played.

---

## Decision 049 - Separate Development and Gameplay Runtime Profiles

**Status:** Accepted
**Date:** 2026-07-12
**Related Sections:** Decision 039; Decision 041; Decision 042; `012_ENGINE_RUNTIME.md`; `docs/AI_SESSION_TEMPLATE.md`; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`; `templates/campaign/090_CAMPAIGN_STARTUP.md`; `templates/derived/095_PLAYER_BRIEFING.md`

### Context

Decision 041 delegated substrate-specific execution to Runtime Profiles but identified one LLM session document for both repository development and campaign execution. Prototype Alpha exposed the resulting ambiguity: the document assigned Architect responsibilities, required development approval and reporting, and described resumed gameplay through a save manifest, but did not define a first-session path, player onboarding, an Interpreter role, a scene-opening confirmation gate, or gameplay-specific close behavior.

The campaign contained enough canonical state to introduce its protagonist safely, yet the Runtime presented operational state rather than a natural RPG introduction. Requiring players to read repository files would violate the Runtime's purpose and the engine's information boundaries. Making introductions canonical would create a second source of truth.

### Decision

Separate LLM operational guidance into two Runtime Profiles:

- `docs/AI_SESSION_TEMPLATE.md` is the **Development Runtime Profile**. It governs Architect-mode repository work and never advances gameplay.
- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` is the **Gameplay Runtime Profile**. It governs Interpreter-mode startup, onboarding, restoration, confirmation, play, Canon Promotion, checkpoints, and gameplay reporting. It never edits engine architecture.

Campaigns may provide `090_CAMPAIGN_STARTUP.md`, a non-canonical operational configuration declaring the protagonist policy (`pre-authored`, `custom`, `either`, or `emergent`), canonical source paths, initialization state, customization boundaries, and confirmation requirements.

Campaigns may provide `095_PLAYER_BRIEFING.md`, a non-canonical derived presentation artifact generated from canonical campaign state. It carries no Persistent Object identifier, establishes no canon, and is discarded or regenerated whenever stale, missing, contradictory, or unsupported.

A first session boots from campaign initialization and `180_CURRENT_STATE.md`; it does not require a save manifest. A resumed session restores from the latest valid checkpoint. Both paths stop at a readiness gate before scene opening.

Custom-character choices remain provisional until player confirmation. Canonical initialization and identifier allocation occur atomically after confirmation. A prepared baseline marked for preservation is instantiated separately rather than overwritten.

### Rationale

The split applies Decision 041's existing Runtime Profile abstraction instead of adding a new engine subsystem. The Runtime already delegates session procedure to profiles, and the Rules already define agency, knowledge boundaries, canon, saves, and promotion. Operational startup configuration and derived presentation fill the practical gap while preserving one canonical source of truth.

### Consequences

Gameplay no longer inherits Architect-mode approval gates or development reports. First-session startup is distinct from checkpoint restoration. New, returning, and takeover players receive different levels of briefing. Pre-authored, custom, and emergent protagonists share one startup framework.

The Engine Rules, Data Model, Runtime obligations, world canon, campaign canon, identifier registry, and save format are unchanged.

### Alternatives Considered

- Expand the existing mixed profile. Rejected: it preserves ambiguous Architect and Interpreter authority.
- Put onboarding prose in the Engine Rules. Rejected: tone and LLM procedure are substrate-specific.
- Make the player briefing a Canonical Record. Rejected: derived presentation would become a competing source of canon.
- Require a save for Session 1. Rejected: no checkpoint exists before initialized state has been played and promoted.
- Require all campaigns to use a pre-authored protagonist. Rejected: custom and emergent campaigns are first-class use cases.

---

# Pending Decisions

The following topics have been identified but not yet finalized:

# Superseded Proposed Decisions

## Decision P001 — Persistent Entity Abstraction

**Status:** Superseded

Superseded by Decision 033.

---

## Decision P003 — Research and Knowledge Lifecycle

**Status:** Superseded

Superseded by Decision 031.

---

## Decision P007 — Canonical Record Architecture

**Status:** Superseded

Superseded by Decision 032.

---

## Decision P002 — Institution Lifecycle Model

**Status:** Superseded

Superseded by Decision 035.

---

## Decision P004 — Magic as World Extension

**Status:** Superseded

Superseded by Decision 037.

---

## Decision P005 — Historical Source Generation

**Status:** Superseded

Superseded by Decision 038.

---

## Decision P006 — Save-State Architecture

**Status:** Superseded

Superseded by Decision 039.

---

# Rejected Decisions

## Rejected 001 — Traditional Level Progression

**Status:** Rejected

### Reason

Levels compress unrelated growth into an abstract scale and conflict with lived, historical progression.

---

## Rejected 002 — Experience Points

**Status:** Rejected

### Reason

XP rewards abstract accumulation rather than demonstrated learning, capability, and change.

---

## Rejected 003 — Universal Health Points

**Status:** Rejected

### Reason

HP obscures injury type, location, recovery, and persistent consequences.

---

## Rejected 004 — Player-Centered World Simulation

**Status:** Rejected

### Reason

The world must continue independently and support multiple campaigns across time.

---

## Rejected 005 — Fixed Universal Prices

**Status:** Rejected

### Reason

Prices should emerge from supply, demand, location, scarcity, politics, reputation, and transport conditions.

---

# Revision Policy

New decisions are appended using the next available number.

Accepted decisions are never deleted.

When a decision is replaced:

1. Mark the original as **Superseded**.
2. Reference the new decision number.
3. Explain the migration impact.
4. Update affected engine rules.
5. Record the change in the engine changelog.
