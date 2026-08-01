# Chronicle Engine

## Engine Decisions

**File:** `001_ENGINE_DECISIONS.md`  
**Status:** Active  
**Purpose:** Architectural decision record for the engine  
**Decision Format:** Numbered, immutable history with explicit status
**Loading:** Section-addressed — search by decision number/title and read the complete matching decision block; a whole-file preload is not required.

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

## Decision 050 — Player Agency and Interaction Cadence

**Status:** Accepted
**Date:** 2026-07-12
**Related Sections:** `012_ENGINE_RUNTIME.md` Section 1.6; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Player Agency Contract, Interaction Cadence); `010_ENGINE_RULES.md` Section 3.2, Section 4.0, Law III; refines Decision 041, Decision 042, and Decision 049

### Context

Prototype Alpha revealed that the large-language-model Runtime tends to produce responses that chain several simulation cycles together: it narrates the character entering, an NPC greeting them, the character replying, handing over an item, being escorted onward, and a further conversation beginning — all before the player acts once. The Runtime authors the player's decisions and resolves interactions the player never participated in, collapsing an interactive simulation into a narrated novel and removing meaningful choice.

The simulation cycle (`010_ENGINE_RULES.md` Section 3.2) already begins with "Player declares intent," and Law III already guarantees agency, but neither the Runtime (`012`) nor the Gameplay Runtime Profile made explicit that the player's intent is authored only by the player, or defined where a response must yield control. The obligation was latent and therefore unenforced.

A naive correction — stop after every line or movement — would fragment play into an exhausting exchange of single sentences and force the player to declare trivial micro-actions. That failure mode is equally wrong and must be excluded by the same decision.

A controlled replay during Prototype Alpha preparation (verra_run02) confirmed a subtler point: when the yield point is defined only by whether a choice *materially* changes the simulation, the failure persists. From the single intent "walk to the Athenaeum," the Runtime chained roughly fifteen to twenty world beats and several player opportunities — an entire arrival, guided tour, and first patient consultation — and authored the player's own dialogue to bridge them, because each individual step (follow the escort, tour, descend to the infirmary) looked individually plausible and non-material. The correct yield boundary is therefore not materiality but intent completion: the point at which the declared intent has been carried out and continuing would require a new intent the player has not given. Plausible is not the same as chosen.

### Decision

The Runtime shall distinguish declared intent, automatic execution, and meaningful player choice. Only meaningful player choices require yielding control.

- **Player Intent Domain.** The character's volitional decisions — whether and how to act, what to say, and whether to trust, consent, disclose, or refuse — belong to the player. Only the player may author intent within this domain. The Runtime resolves the consequences of that intent through the Engine Rules and records the result; it never authors the intent itself. A declared intent is not yet canon: canon is the resolved outcome the simulation produces from the intent, not the declaration. "I draw my sword" is intent; whether the sword clears the scabbard, whether an obstruction or an NPC reaction intervenes, and what results, is resolved by the Runtime and only then promoted.
- **Automatic execution.** The involuntary steps and micro-actions that carry out a declared intent — walking, opening an unbarred door, crossing a room, climbing stairs, sitting when invited — are executed by the Runtime as consequences of the declared intent, without yielding.
- **Meaningful player choice (Player Decision Point).** A juncture at which the character's next action is no longer determined by the declared intent — where continuing would require a new intent the player has not given. This includes any decision that could materially change the simulation, and any point where the player would reasonably expect to choose, ask, or redirect, even when the obvious next step seems plausible. The Runtime yields here.

The governing rule: **the Runtime advances the simulation from the player's last declared intent to the next meaningful Player Decision Point, then yields control.**

Narrative Richness and Decision Density are independent axes and must not be conflated. Narrative Richness — sensory and characterful detail within the current beat — should remain high. Decision Density — the number of player opportunities a response consumes — should remain low, ideally one. Rich description enriches the current beat; it is not a licence to advance the story. This is enforced by the **Beat Budget**: each response normally consumes one Player Intent and ends at the next Player Decision Point, may contain any number of involuntary world reactions, and must not consume more than one player opportunity.

Cadence is organized into four modes that coarsen as the density of meaningful choices falls — Beat, Scene, Transition, Montage — selected by uncertainty and agency density rather than by authorial preference. The player may explicitly and scoped-ly delegate pacing (skip, auto-resolve, montage); fine cadence resumes at the next Player Decision Point.

The normative obligation is recorded in `012_ENGINE_RUNTIME.md` Section 1.6 (Player Authority Boundary). The operational Player Agency Contract, Interaction Cadence, situation-specific pacing, and acceptance scenarios live in the Gameplay Runtime Profile. The Engine Rules are unchanged: this decision governs execution at the Player↔Engine seam, which the Runtime owns.

### Rationale

- It makes an existing but latent obligation explicit and testable without adding a world-model rule. The foundation Rules (frozen at 0.1.5) remain untouched.
- Framing the player's contribution as *intent* rather than *canon* preserves the engine's core distinction between a declaration and the resolved mutation the simulation produces from it. This keeps the canon hierarchy and promotion model (Decisions 004, 032, 042) coherent.
- The three-way distinction excludes both failure modes at once: authoring the player's decisions, and fragmenting play into per-sentence stops. The intent-completion yield boundary, plus automatic execution of implied micro-actions, prevents annoying fragmentation.
- Separating Narrative Richness from Decision Density resolves the core confusion behind the observed failure: the Runtime treated rich description as licence to continue. The two are independent — a response may be maximally rich and still consume exactly one player opportunity — so immersion is preserved while agency is protected.
- The rule is substrate-independent — any Runtime, not only an LLM, must refrain from fabricating the player's intent — so the obligation belongs in `012` while the pacing technique belongs in the Profile. This matches the Runtime/Profile split established by Decision 041.

### Consequences

- The Gameplay Runtime Profile gains a Player Agency Contract and an Interaction Cadence section; `012` gains Section 1.6 and one step in its Runtime Execution Summary; the Glossary gains the associated terms.
- Response length becomes a derived property of yielding at the correct decision point rather than a word budget.
- The Runtime must judge what is "meaningful." This judgment is guided by the Profile's indicators but is not fully mechanical; ambiguous cases resolve toward yielding when a choice plausibly branches the simulation.
- This is a refinement discovered through Prototype Alpha, not a foundational redesign — positive evidence for the Version 0.2 Prototype Campaign success criterion that discovered improvements are primarily refinements rather than architectural redesigns.

### Alternatives Considered

- **Word or length limits.** Rejected: they treat the symptom (long responses) rather than the cause (crossing decision points), and harm immersion.
- **Stop after every line or action.** Rejected: fragments play and misreads pleasantries and micro-actions as decisions.
- **Place the cadence in the Engine Rules.** Rejected: the player↔runtime interaction protocol is execution behavior owned by the Runtime, not world truth; the foundation Rules remain frozen.
- **Profile-only refinement with no ADR or `012` anchor.** Rejected: the anti-fabrication rule is a genuine Runtime obligation that a future non-LLM substrate must inherit, so it needs a normative home.

---

## Decision 051 — Progression Surfacing

**Status:** Accepted
**Date:** 2026-07-12
**Related Sections:** `010_ENGINE_RULES.md` Sections 4, 5, 11; Decisions 012, 013, 014, 026, 037, 049; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Progression Surfacing)

### Context

Emergent progression — Decision 012 (No Character Levels), Decision 013 (No Experience Points), and Decision 014 (Capabilities Instead of Attributes) — is a defining commitment of the engine. But it can feel intangible in play: a player may be unsure whether the character is actually improving. Traditional XP and levels were deliberately rejected (Rejected 001, Rejected 002) because *as mechanics* they compress lived growth into an abstract number and reward accumulation over demonstrated capability.

The demand behind XP and levels is legibility of progress, not the mechanic itself. That demand can be met without reintroducing the rejected mechanic, provided the numbers are a *view* of emergent growth rather than a *source* of it.

### Decision

Progression is surfaced in three layers, with a strict boundary between representation and mechanics.

1. **Core progression (unchanged, authoritative).** Growth and resolution remain governed solely by emergent capability (Decisions 012–014; Rules Sections 4 and 5). This decision does not supersede them; it reaffirms them.

2. **Derived Progression View (general, all worlds).** The Runtime may surface emergent growth to the player as experience (XP) and levels, as a **derived, non-canonical, out-of-character readout** computed from canonical state on request. It comprises:
   - **per-capability tiers** — a qualitative label for the standing each demonstrated capability has reached through use (for example novice, apprentice, competent, expert, master);
   - **an overall character level** — a coarse descriptive summary derived from the aggregate of capabilities, knowledge, influence, reputation, and consequence; a readout of standing, not a power score;
   - **an experience log** — a tally of meaningful growth events (things done, learned, survived), rendered from the Events and provenance already in canon.
   A "level-up" is the surfacing of an emergent advance that has *already occurred* in canon; it grants nothing.

3. **World Diegetic System (world-specific, litRPG).** A world may make a leveling System in-world-real by declaring it under the Supernatural Phenomena Contract (Decision 037; Rules Section 11), with its source, access, cost, limitation, risk, discoverability, and consequence. Even then, resolution and growth remain governed by Sections 4 and 5; the System is the world's *representation* of them, not a replacement resolver. This layer is world-authoring content and is not built by this decision.

**Bright line (all layers).** The view reads from emergent state; it never writes power back. XP is never a currency spent to gain capability. A level or tier is never a modifier, prerequisite, or gate on action resolution. Growth occurs first in canon and is then surfaced — never the reverse. The Derived Progression View carries no Persistent Object identifier, establishes no canon, and is regenerated from canonical state like any other derived presentation (Decision 049).

### Rationale

- It satisfies the real need — legible, rewarding progression — while leaving the engine's identity and Decisions 012–014 intact.
- Framing XP and levels as a derived view computed from emergent state applies a discipline the engine already uses: the player briefing is a derived view of canon (Decision 049), and canon is the resolved outcome rather than the input.
- Because it is a presentation layer that changes nothing about how the engine simulates, it is a refinement rather than new foundational architecture, and does not disturb the Architecture Freeze (Decision 048).
- Reserving the aggressive litRPG experience to the world layer keeps a genre-specific representation out of the reusable engine while still enabling it through the existing Supernatural Phenomena Contract.

### Consequences

- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` gains a Progression Surfacing section defining how the derived view is computed and presented; the Glossary gains Derived Progression View and Diegetic System.
- The Engine Rules, the Data Model, and the Manifest's emergent-progression identity are unchanged: XP and levels are a view, not the progression model.
- Future work must not let the view acquire mechanical weight. Any proposal to make XP or levels drive resolution or growth is a supersession of Decisions 012–014 and requires its own ADR.
- The litRPG world remains a separate world-authoring effort under Section 11.

### Alternatives Considered

- **XP and levels as an engine mechanic or a player-selectable mode.** Rejected: forks resolution and growth into two models, supersedes Decisions 012–014, and breaks the frozen foundation.
- **Improving emergent surfacing without the XP/level vocabulary.** Viable, but does not give players the concrete "level-up" reward they asked for; the derived view delivers that within the same guardrails.
- **Building the litRPG System into the engine core.** Rejected: it is genre-specific world content; the Supernatural Phenomena Contract already supports it at the world layer.

---

## Decision 052 — Modifier Application and Always-Live Critical Tails

**Status:** Accepted
**Date:** 2026-07-12
**Related Sections:** `010_ENGINE_RULES.md` Section 4 (4.3, 4.4, 4.6, 4.9); Decisions 010, 011, 014; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Action Resolution and the Die)

### Context

Section 4.6 defined result bands over the raw d100 and named difficulty (4.3) and modifiers (4.4) as concepts, but never specified how they change a roll. In play (Prototype Alpha, alpha_04) this produced two faults: the Runtime read the bare roll against the bands and ignored capability entirely — a defenceless target resolved as an ordinary opposed exchange — and a large skill gap had no mechanical expression, so a master and a novice faced the same odds. The demand is that demonstrated capability decide lopsided contests while chance still keeps them live at the extremes.

### Decision

Two rules govern how capability meets the die.

1. **Modifier application.** Bands read the *effective* result. The engine forms a net modifier from the acting party's demonstrated capability (skill, training, magic, tools) and circumstances, against the difficulty and any opposed party's resistance, and shifts the roll by it before reading the band. Large capability gaps compress outcomes: an overwhelming advantage makes success the ordinary result, an overwhelming disadvantage makes failure the ordinary result. The roll still sets the margin and the degree.

2. **Always-live critical tails.** Regardless of modifiers, a natural (unmodified) roll of **01–05** is a critical failure and **96–100** a critical success. The tails are read from the natural roll and cannot be modified away. A master still fumbles on a natural 01–05; a novice still lands a decisive blow on a master on a natural 96–100.

### Rationale

- Makes demonstrated capability decisive in lopsided contests, which is what Capabilities Instead of Attributes (Decision 014) and emergent progression imply, without introducing levels or fixed target numbers.
- Preserves Fairness (Law VII): no advantage guarantees success and no disadvantage guarantees failure, so every contest stays live.
- Extends Decisions 010 (d100) and 011 (Degrees of Success) rather than replacing them; the bands and graded outcomes are unchanged — only how a roll reaches a band is now specified.

### Consequences

- `010_ENGINE_RULES.md` Section 4.6 gains "Applying Difficulty and Modifiers" and "Critical Tails Are Always Live."
- The Runtime must assess difficulty and modifiers from the character's skills, abilities, and magic before rolling, and read criticals from the natural roll. `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` and the resident gameplay gates reference this.
- Degrees of success (4.7) and opposed actions (4.9) are unchanged; the net modifier is simply how an opposed comparison and difficulty enter the roll.

### Alternatives Considered

- **Roll-under target numbers (skill as the target).** A common d100 form, but it would replace the engine's roll-high band ladder (4.6) and Decision 011's degree language; rejected to avoid re-specifying the whole resolution surface.
- **No critical tails (pure modified result).** Rejected: a large enough modifier would make success or failure certain, removing chance from lopsided contests and violating Fairness.
- **Fixed ±N band-step per capability tier.** Rejected as arbitrary balancing (4.4 forbids modifiers that do not arise from established circumstances).

---

## Decision 053 — Campaign Restart and World-Line Forking

**Status:** Accepted
**Date:** 2026-07-13
**Related Sections:** `011_ENGINE_DATA_MODEL.md` Section 1 (identifiers; never-reuse Invariant 3); Decision 043 (single-Canonical-Record invariant); Decision 044 (Stable Entity Identity); Decision 039 and `010_ENGINE_RULES.md` Section 13 (save architecture); `000_ENGINE_MANIFEST.md` Save Layer

### Context

Prototype Alpha raised a practical question the identity model had not yet answered explicitly: what happens when a player wants to restart a campaign from the beginning with the same character? The engine uses semantic-free, globally unique, never-reused identifiers (Data Model Section 1), a single-Canonical-Record invariant (Decision 043), and stable entity identity independent of name (Decision 044). "Restart" touches all three, and without a ruling a runtime might do the wrong thing — reset the identifier counter and reuse retired IDs, or treat a divergent replay as the same entity holding contradictory canon.

A second gap surfaced alongside it: the campaign had no baseline checkpoint to restart *from*. Restarting meant recovering pre-play ledgers from git history rather than restoring a first-class save.

### Decision

"Restart" is two distinct operations, and they are governed differently.

1. **Redo (in-place reset).** The same campaign is reset to its baseline and replayed. The protagonist keeps her identifier — identity is stable and independent of play history (Decision 044). The discarded play history's identifiers (events, new relationships) are **retired, never reclaimed** (Data Model Invariant 3): the registry high-water mark is **not** rolled back, so new play allocates fresh identifiers and can never collide with the retired timeline. A redo restores the campaign's baseline checkpoint.

2. **Fork (parallel world-line).** The original run is kept and an alternative is explored from the same starting point. This is a **new campaign instance**. The "same" character is narratively identical (same baseline definition, same name) but is a **distinct persistent entity with its own identifier**, because two divergent canonical histories cannot be one record under the single-Canonical-Record invariant (Decision 043) — one entity cannot simultaneously hold "met Corvane" and "never met Corvane" as canon. The shared origin is expressible through the identity-continuity graph (Decision 044).

3. **Baseline checkpoint.** Every campaign should carry a first-class baseline checkpoint (an initialization snapshot, e.g. `saves/900_CHECKPOINT_0000/`) so that restart-from-beginning is a restore operation, not git archaeology.

### Rationale

- Preserves never-reuse (Data Model Invariant 3): a redo cannot reclaim retired identifiers, so a discarded timeline and its replacement never share an ID.
- Preserves the single-Canonical-Record invariant (Decision 043): a fork is a new entity, so no record ever holds contradictory canonical state.
- Keeps identity stable across a redo (Decision 044): the character is the same person; only the history resets.
- The repository-level (not per-campaign) registry makes both operations safe by construction — retirement and forking both rely on one monotonic identity space. A per-campaign registry would tempt counter resets and reuse, and would smuggle scope into identifiers (Data Model Section 1.2).

### Consequences

- A campaign carries a baseline checkpoint; Prototype Alpha gains `campaigns/prototype_alpha/saves/900_CHECKPOINT_0000/` (full pre-play ledger copies plus manifest).
- Redo restore procedure: copy baseline ledgers over the live ledgers; do not roll back the registry; the first new event continues from the high-water mark.
- Fork procedure reuses the existing "separate campaign instance" path (`docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, custom-character initialization) and allocates a new protagonist entity sharing the baseline definition.
- **Known debt (not resolved here):** the save layer has location/format drift — the Manifest documents `saves/900_CHECKPOINT_<NNNN>/` with full ledger copies, while the session-1 checkpoints used flat `.saves/*.yaml` manifest-only files and an empty `checkpoints/` placeholder exists. This decision uses the documented location; reconciling the existing session checkpoints and blessing a single form is deferred to the save-architecture cleanup (Version 0.6 — Persistence).

### Alternatives Considered

- **Reuse identifiers on redo (roll back the registry counter).** Rejected: violates never-reuse (Invariant 3) and creates two different events sharing one identifier across timelines — exactly the ambiguity semantic-free identity prevents.
- **Treat the forked character as the same entity.** Rejected: violates the single-Canonical-Record invariant; one entity cannot hold two contradictory canonical histories.
- **Per-campaign registries to make restart trivial.** Rejected: breaks cross-scope references (a campaign constantly references world entities) and smuggles scope into identifiers (Data Model Section 1.2). Reserved-range allocation within the one global registry remains the sanctioned concurrency escape hatch.

---

## Decision 054 - Repository Validation Barrier

**Status:** Accepted
**Date:** 2026-07-13
**Related Sections:** `011_ENGINE_DATA_MODEL.md` Sections 1.4, 3.1, and 12.3; `012_ENGINE_RUNTIME.md` Section 5.4; `system/ID_REGISTRY.md`; `tools/validate_repository.ps1`; Decisions 042, 043, and 045

### Context

Prototype Alpha exposed three consecutive checkpoint failures in identifier registration. The registry rules, checkpoint checklist, and resident gameplay instructions were already correct, but the Runtime still left identifiers unregistered or left the high-water mark behind live canon. Manual audits repaired each occurrence. Prototype Beta then demonstrated that the same workflow can succeed, but one successful run did not remove the failure mode: checkpoint validity still depended on an interpreter remembering and correctly narrating every structural check.

The Data Model already defines repository validity, and the Runtime already requires promotion and read-back. What was missing was a deterministic enforcement point between writing live canon and declaring that canon valid or creating an immutable checkpoint.

### Decision

Establish a mandatory **Repository Validation Barrier** for every operation that creates or promotes durable canon: campaign initialization, checkpoint creation, session close, campaign-termination promotion, and any commit that claims canonical promotion.

The barrier has two parts:

1. The Runtime determines the complete mutation target set and writes and reads back every live target, including `system/ID_REGISTRY.md` whenever identifiers are allocated.
2. After read-back and before immutable checkpoint creation or any success claim, a deterministic validator checks the resulting live repository state. Validation failure fails the checkpoint or promotion operation; the Runtime reports the partial state, repairs it when possible, and reruns validation. It never reports "saved" or "promoted to canon" while the gate is failing.

The minimum mechanical contract checks:

- every referenced identifier is at or below its kind's registry high-water mark and covered exactly once by the allocation log,
- every referenced identifier has one live object definition,
- no identifier has more than one live definition,
- every persistent-object block carries the universal required fields and a valid Canonical Record reference,
- no live canonical file contains unresolved template placeholders.

Live world and campaign state is the validation scope. Immutable save snapshots are excluded from live duplicate-definition checks because they intentionally copy earlier object definitions; checkpoint contents and manifests remain subject to checkpoint read-back and completeness checks. The PowerShell validator in `tools/validate_repository.ps1` is the reference implementation. Another substrate may replace it only with a deterministic implementation of the same contract.

### Rationale

A rule that has failed repeatedly at its enforcement point cannot be made reliable by adding more prose to the same point. The validation barrier converts existing structural invariants into a binary condition the Runtime must satisfy before claiming success. Placing it after live read-back tests what Persistence actually contains, while placing immutable checkpoint creation after the gate prevents invalid live state from being blessed as a checkpoint.

The registry remains authoritative rather than being silently derived from ledger maxima. A high-water mark may legitimately remain ahead of current live definitions because identifiers are never reused after retirement. Mechanical validation therefore checks registry coverage and consistency without rewriting registry history.

### Consequences

- `012_ENGINE_RUNTIME.md` gains the normative Repository Validation Barrier.
- The Gameplay Runtime Profile and Gameplay Start Guide invoke repository validation during initialization, checkpoint, session close, and campaign termination.
- `tools/validate_repository.ps1` provides the first executable gate for the document repository.
- Validation failure is an execution/persistence failure, not automatically a canonical contradiction. The Runtime may repair and revalidate the incomplete mutation without rejecting otherwise grounded play.
- Later validators may expand the contract, but may not weaken these checks without revising this decision.

### Alternatives Considered

- **Strengthen the checkpoint prose again.** Rejected: three consecutive recurrences showed that narrated bookkeeping is not a reliable enforcement mechanism.
- **Derive and rewrite high-water marks from the largest identifier found.** Rejected: it loses allocation and retirement history and could move a counter backward, violating never-reuse.
- **Run validation only before git commit.** Rejected: a gameplay Runtime could already create and report an invalid checkpoint before a later developer audit.
- **Validate immutable saves as part of live uniqueness.** Rejected: save snapshots intentionally duplicate historical definitions and would create false duplicate-identity failures.

---

## Decision 055 - Invariant Enforcement Points and the Resident Runtime Layer

**Status:** Accepted
**Date:** 2026-07-13
**Related Sections:** `012_ENGINE_RUNTIME.md` Sections 0.2, 0.4, 1.1, 5.3, 5.4; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`; `docs/AI_SESSION_TEMPLATE.md`; Decisions 048 and 054; Prototype Alpha item PA-005 / Architecture Observation "Critical Invariants Must Be Enforced at the Resident Layer"

### Context

Prototype Alpha produced four separate invariant failures (issues PA-I004, PA-I009, PA-I010, PA-I012, and the narrower PA-I014) that shared one exact shape: the governing rule was correct and already written, but it lived only in the fetched Runtime Profile, or in a barrier that runs later (promotion / session close), and so it did not fire at the moment the action was taken. On a large-language-model substrate, per-turn behaviour is governed by the resident instruction and the model's narrative default; a rule read once into a large context, or a check deferred to session close, loses to the turn-by-turn default.

This is the dominant architectural finding of the prototype. It is not four bugs; it is one property of any substrate whose default behaviour competes with its guardrails. The four Runtime Invariants (`012` Section 0.2 — Grounding, No silent canon, Promotion, Canon-determinism) are stated as obligations that every Runtime must uphold, but the document does not say where or when each is checked. An invariant with no named enforcement point is assumed to hold because it is documented — and Prototype Alpha showed that assumption is false on a real substrate. Decision 054 already fixed the narrowest case (registry bookkeeping) by making its enforcement mechanical; this decision generalises the lesson to all four invariants.

### Decision

The Runtime specification is amended so that every Runtime Invariant must declare an **enforcement point**, and every Runtime Profile must distinguish a **resident layer** from **fetched reference**.

1. **Enforcement points (`012` Section 0.2).** Each of the four Runtime Invariants must name its enforcement point: the *moment* it is checked (relative to the action or the durability boundary) and the *layer* that checks it. An invariant is not considered upheld merely because it is documented; it is upheld only if a named point checks it at the moment it can be violated.

2. **Three siting classes.** An enforcement point is one of:
   - **Resident per-turn** — applied every turn from always-in-context instruction, at the moment intent is resolved. Required for **Grounding** and **Action-resolution** (roll before narrating a contested outcome), which are violated turn-by-turn.
   - **Mechanical barrier** — a deterministic check that fails the operation (Decision 054). Required where narrated bookkeeping has demonstrably failed at its point (registry / structural repository validity).
   - **Deferred barrier** — checked at a durability boundary (checkpoint, session close). Permitted for **Promotion** completeness, but the obligation to promote must itself be resident so that pending canon is tracked per turn rather than reconstructed at the barrier.

3. **The resident layer (`012` Section 0.4).** A Runtime Profile must formally designate a resident layer — instruction that is always in context and applied every turn — distinct from fetched reference material consulted on demand. Grounding, action-resolution, promotion-obligation awareness, and canon-determinism enforcement must live in the resident layer (or in a mechanical barrier per class 2). Fetched material may elaborate a resident invariant but may never be the sole carrier of one.

4. **Substrate-general framing.** This is a Runtime obligation, not LLM-specific guidance. Any substrate whose default execution can diverge from an invariant must site that invariant's enforcement at the point of divergence. A substrate that provably cannot violate an invariant may record that as its enforcement point.

### Rationale

The four invariants are the Runtime's entire correctness contract, yet the document stated them without stating where they hold. Prototype Alpha demonstrated that a documented-but-unsited invariant does not fire. Naming an enforcement point per invariant converts each from an aspiration into a checkable property, and forces the profile author to decide — per invariant — whether prose at the moment of action is sufficient, or whether the check must be mechanical. Decision 054 is the precedent: once narrated enforcement had failed three times, the only fix was to move the point, not to rewrite the prose at the old point. This decision makes "identify the enforcement point" a required design step rather than a lesson relearned per version.

### Consequences

- `012_ENGINE_RUNTIME.md` Section 0.2 gains, for each invariant, a named enforcement point (moment and layer). Section 0.4 gains the resident-versus-fetched distinction as a profile obligation.
- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` and `docs/AI_SESSION_TEMPLATE.md` must mark which of their contents are resident (per-turn) versus fetched reference, and site grounding and action-resolution in the resident layer.
- Decision 054's mechanical barrier is retroactively classified as the first mechanical enforcement point under this decision; no change to Decision 054 is required.
- New Runtime Profiles (for any world or substrate) inherit the obligation to declare enforcement points; this is world-agnostic and unaffected by which world is played.
- This decision adds no new engine mechanic and no foundational abstraction. It is a refinement of how existing invariants are sited — consistent with Prototype Alpha's success criteria (refinements, not gaps).

### Alternatives Considered

- **Leave the invariants as documented obligations.** Rejected: Prototype Alpha showed documentation without a firing point does not hold on a real substrate.
- **Make all four invariants mechanical (extend Decision 054 to everything).** Rejected: grounding and action-resolution are semantic judgements at the moment of narration, not structural properties a validator can check post-hoc; their correct point is resident per-turn, not a barrier.
- **Fix each failure only in the Runtime Profile.** Rejected: that is the status quo that failed. The profile is fetched; siting an invariant there without a resident designation reproduces the original defect.
- **Defer to Version 0.3.** Rejected: this is a required pre-0.3 postmortem refinement (Decision 048); Version 0.2 cannot be marked complete while its dominant finding is unincorporated.

---

## Decision 056 — Runtime Command Interface

**Status:** Accepted
**Date:** 2026-07-13
**Related Sections:** `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Runtime Command Interface); `010_ENGINE_RULES.md` Section 13 (save/restore); `012_ENGINE_RUNTIME.md` Sections 2, 5 (session, mutation); Decision 051 (Progression Surfacing, Diegetic System); Decision 053 (Campaign Restart and World-Line Forking)

### Context

Gameplay has been driven entirely by natural-language prompts. Resuming a campaign meant sending a paragraph ("Resume Chronicle Engine gameplay for `<path>`…"); saving and closing meant another. This works but is verbose, easy to get subtly wrong (a save prompt that omits the read-back clause invites a partial checkpoint), and gives the player no compact, memorable vocabulary for the operations they perform every session.

Separately, Reikon introduced a diegetic `/system` command — an in-fiction, world-authored System interface (Decision 051). That established slash-prefixed commands in play, but only as world content. There was no engine-general notion of a control command, and therefore no rule for what happens when an out-of-character control verb and an in-fiction verb share the `/` prefix.

### Decision

Register a **Runtime Command Interface**: a small set of out-of-character control verbs (`/ChronicleEngine`, `/save`, `/continue`, `/new`, `/end`, `/restart`, `/branch`, `/load`, `/worlds`, `/campaigns`, `/saves`, `/export`, `/recap`, `/status`, `/validate`, `/help`, `/debug`) that the Runtime recognizes at any point in a session.

1. **Thin dispatchers, not a new mechanic.** Each runtime command dispatches onto a procedure the Gameplay Runtime Profile already defines — `/save` onto the Save Algorithm, `/continue` and `/load` onto Restoration (Rules Section 13.4), `/new` and `/branch` onto campaign initialization and Fork (Decision 053), `/restart` onto Redo (Decision 053), `/status` onto Progression Surfacing (Decision 051). A command names which procedure to run and never waives that procedure's obligations (promotion barrier, validation gate, read-back, readiness gate, confirmation-before-mutation).

2. **Operational, not normative.** The interface is substrate-technique and lives in the Runtime Profile under `docs/`, not in `012_ENGINE_RUNTIME.md`. It adds no Runtime obligation and no engine mechanic. A different substrate's profile may expose the same verbs through its own surface.

3. **Reserved namespace and precedence.** A leading-slash token is matched against the runtime command table first, then against the active world's diegetic command table, then treated as unknown (offer `/help`). Runtime command names are reserved; a world must not redefine them as in-fiction verbs. This keeps control verbs reliable across worlds while leaving each world free to own its diegetic vocabulary (Decision 051).

4. **Bootstrap command in `README.md`.** `/ChronicleEngine` (aliases `/start`, `/game`, `/rpg`, `/chronicle`, `/chronicles`, all identical) is the cold-start entry point: it boots the engine and begins or resumes play. With **no argument** it presents a Bootstrap Selection Screen — the command menu plus a worlds/campaigns listing with status and latest checkpoint — and then waits; it never auto-loads or auto-resumes a campaign the player did not name (that is what `/continue` is for). Because a Runtime at the start of a conversation may see only the root `README.md`, the bootstrap command — unlike the rest of the table, which is defined in the Runtime Profile the command loads — must be reachable from `README.md` alone. Its definition is therefore duplicated in `README.md`, which enumerates the boot file set (profile, Engine Rules Sections 4/6/13, Runtime and Data Model documents, validator, and the selected campaign's startup, ledgers, world records, and latest checkpoint). The two definitions must stay in agreement.

5. **Command discovery at session start.** The Runtime presents the available commands once at every session start — after `/ChronicleEngine`, at First-Session Boot, and on restoration (new campaign, resume, fork, or restart) — as a compact, spoiler-safe, out-of-character menu at the Readiness Gate. The menu lists the reserved runtime commands and, when the active campaign's world declares diegetic commands, those too (a Reikon campaign shows `/system`; a world with none shows only the runtime group). A player is never left to guess the interface: the commands are surfaced before the first scene, and `/help` re-displays them on demand.

### Rationale

- The operations already exist and are load-bearing; naming them gives players a stable, low-error way to invoke them without re-sending the full procedural prompt each time.
- Modelling commands as dispatchers, not new behaviour, keeps the correctness contract intact: `/save` is exactly the Save Algorithm, so it inherits every guarantee that prevents a partial or falsely-reported checkpoint.
- A reserved namespace with explicit precedence is the minimum needed to prevent collision between control verbs and diegetic verbs now that both use `/`.

### Consequences

- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` gains the Runtime Command Interface section, including a Bootstrap Command subsection for `/ChronicleEngine`, and a Session Export section for `/export` (Document Version 1.21), and lists the interface among the profile's owned concerns.
- `/export` produces a **non-canonical** derived artifact (a formatted, verbatim session transcript under `campaigns/<campaign>/exports/`, classifying player, narrator, out-of-character, system, and roll messages). Like the player briefing and the Progression Surfacing view, it establishes no canon, mints no identifiers, and runs neither the Promotion Barrier nor the Repository Validation Gate; it is distinct from `/save`, which checkpoints canonical state.
- `README.md` gains a "Play Chronicle Engine — the `/ChronicleEngine` command" section defining the bootstrap command and the boot file set, so a cold-start Runtime that sees only the README can load the engine.
- `020_ENGINE_GLOSSARY.md` gains **Runtime Command** and **Diegetic Command**.
- `docs/GAMEPLAY_START_GUIDE.md` presents the commands as the compact form of its existing start/resume/close prompts; the prose prompts remain valid and authoritative.
- World content (e.g. Reikon's README) clarifies that `/system` is a diegetic command, distinct from the reserved runtime commands.
- No change to `012_ENGINE_RUNTIME.md`, the Engine Rules, or the Data Model: the interface is convenience over existing procedures.

### Alternatives Considered

- **Keep only natural-language prompts.** Rejected: verbose and error-prone for the operations performed every session; a mistyped save prompt can drop a required guarantee.
- **Define the command interface normatively in `012`.** Rejected: commands are substrate-facing technique; `012` is substrate-independent and would be forced to describe a player-facing surface it deliberately abstracts away.
- **Let each world define its own control commands.** Rejected: control verbs must mean the same thing everywhere; per-world control commands would make `/save` unreliable and reintroduce the collision this decision resolves.

---

## Decision 057 — World-Scoped Diegetic System: Tracked Resources and Inline Surfacing

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** Decision 051 (Progression Surfacing), Decision 037 (Magic as World Extension), Decisions 012–014; `010_ENGINE_RULES.md` Sections 4, 4.4, 5.2, 6.10, 11; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Progression Surfacing); `worlds/reikon/205_THE_LEDGER.md`

### Context

Reikon is authored as a Solo Leveling-style world in which the System is *diegetically real*: hunters perceive their own mana, XP, stats, and level as concrete in-world quantities. Decision 051 already permits this at the world layer — its Layer 3 ("World Diegetic System, litRPG") makes a leveling System in-world-real when declared under the Supernatural Phenomena Contract (Rules Section 11). But Decision 051's *surfacing* rules were written for the general, non-diegetic case (Layer 2): a derived, out-of-character readout, shown on request, regenerated rather than stored, always growth-first-then-surfaced.

The first Reikon session ran the System the way the world intends — mana tracked to the unit and spent per cast, XP accrued per monster with tougher foes worth more, both surfaced inline as play happened. That is the correct feel for this world, but it sat in tension with Layer 2's meta/on-request surfacing rules. The world owner confirmed this inline, tracked, tallied behavior is intended **for Reikon**. This decision states what a diegetic-System world may do, and the one line it still may not cross.

### Decision

For a world that declares a diegetic System under the Supernatural Phenomena Contract (Rules Section 11), and **only** for such a world:

1. **Tracked System quantities.** The System's numbers may be **canonical tracked state** maintained in the character ledger and accrued through play, not merely a derived on-request readout. Specifically: a magical resource such as **mana** (already sanctioned as Character State and magical exhaustion, Rules Sections 5.2 and 6.10), an **experience (XP)** quantity accrued from challenges with **per-challenge award values the world defines** (a tougher monster is worth more), plus stats and level.

2. **Inline diegetic surfacing.** Because the character perceives their own System, the Runtime **may surface changes to these quantities inline during play** — a mana cost as a spell is cast, XP as a threat is overcome — rendered in-world as the world's native interface. This is a permitted exception to Decision 051 Layer 2's on-request/level-up meta view. The `/system` command still renders the full canonical window (the world's render template).

3. **The bright line still holds — unchanged from Decision 051.** The System never resolves or overrides an action. Action resolution is always intent + circumstance + d100 (Rules Section 4). Stats, rank, and level are ordinary **Modifiers** (Rules Section 4.4), never auto-outcomes, prerequisites, or gates that replace the die. A mana cost may gate whether a cast can be **attempted** (a resource, like any material or tool), but the die decides whether it **succeeds**. XP is never **spent** to purchase capability or a result. The impossible stays impossible (Rules Section 4.2). Growth is still earned through genuine challenge — trivial, no-stakes repetition is not a farm for power.

**Scope.** World-scoped. Worlds that do not declare a diegetic System are unchanged and continue under Decision 051's default Derived Progression View (derived, on-request, regenerated). This does **not** supersede Decisions 012–014 or Decision 051; it refines Decision 051 Layer 3 and is enabled by the mechanism Decision 051 already named.

### Rationale

- Decision 051 explicitly reserved "the aggressive litRPG experience to the world layer." This decision only says concretely what that reservation permits once a world takes it up, so a diegetic-System world need not fight the general-case surfacing rules.
- Nothing here touches resolution. The die still decides; stats stay Modifiers; XP is never a resolution input. The engine's identity (Decisions 012–014) rejects XP/levels/attributes *as the resolver*, not as diegetic *representation* — exactly the boundary Decision 051 drew and this decision keeps.
- Mana-as-tracked-resource is already engine-legal: Rules Section 11.3 places active magical effects in Character State and tracks magical exhaustion (Section 6.10), and treats magical advantage as an ordinary Modifier. This decision clarifies that a world may surface that tracking inline; it introduces no new engine mechanic.

### Consequences

- Decision 051 remains Accepted and authoritative for the general case and for the bright line; its body is unchanged per the immutable-history policy. This decision refines its Layer 3 for diegetic-System worlds, and the relationship is recorded here and in `030_ENGINE_CHANGELOG.md`.
- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Progression Surfacing) gains a world-scoped exception: in a diegetic-System world, inline surfacing of tracked System quantities is permitted per the world's declared model.
- `worlds/reikon/205_THE_LEDGER.md` declares Reikon's System under Section 11 as diegetically real, with tracked mana and tallied XP, its per-challenge XP model, and inline surfacing; its Decision-051 compliance note is updated to cite this decision and retain the bright line.
- `020_ENGINE_GLOSSARY.md` (Diegetic System) is updated to reflect the tracked, inline variant.
- No change to the Engine Rules, the Data Model, or Decisions 012–014.

### Alternatives Considered

- **Edit Decision 051 in place.** Rejected: 051 is immutable history; its general-case rules and bright line stand. This is a world-scoped refinement, not a supersession.
- **Let XP/mana/stats modify the die in Reikon (true stat-based resolution).** Rejected: forks resolution into two models and supersedes Decisions 012–014 — not requested and not adopted. Stats remain Modifiers; the die decides.
- **Make inline surfacing the default for all worlds.** Rejected: the general-case Progression View is deliberately meta and on-request (Decision 051 Layer 2); inline mechanical surfacing is a genre choice reserved to worlds that opt into a diegetic System.

---

## Decision 058 — Modifier Step Scale and Effective Result

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** `010_ENGINE_RULES.md` Sections 4.4 and 4.6; Decision 052; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Action Resolution and the Die)

### Context

The Rules described qualitative modifiers and large capability gaps but did not assign a numeric scale. The Gameplay Runtime Profile consequently used `+2` and `+3` both as overwhelming advantages and, in a worked example, as literal percentile points. Those readings cannot both produce the documented compression of lopsided contests.

### Decision

A modifier is an integer **step**. One step equals **20 percentile points**. Ordinary net modifiers range from `-3` (overwhelming disadvantage) through `0` to `+3` (overwhelming advantage). Established favorable and unfavorable factors are netted once; duplicate descriptions of the same fact do not stack.

For natural rolls outside the critical tails, `effective result = clamp(natural roll + (20 × net steps), 1, 100)`, and the effective result is read against the ordinary result bands. Natural 01–05 and 96–100 are read first and remain unmodified under Decision 052.

### Rationale

Twenty-point steps align one step with one ordinary result band. Three steps create the already-intended near-certainty without deleting the critical tails: at `+3`, every non-fumble roll is at least 66; at `-3`, every non-critical roll is at most 35.

### Consequences

- Rules Sections 4.4 and 4.6 own the normative scale and formula.
- Runtime Profiles may explain the contract but may not invent another scale.
- Existing logged Reikon modifiers of `+1` and `+2` are interpreted as steps; immutable historical rolls and narrated outcomes are not rewritten.
- A world may replace the scale only through a declared World Rule Profile under Decision 059.

---

## Decision 059 — Declared World Rule Profiles

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** `010_ENGINE_RULES.md` Section 14; Decisions 037, 051, and 057; `012_ENGINE_RUNTIME.md` Sections 3 and 4

### Context

Worlds already extend magic and supernatural phenomena, but the engine lacked a formal way for a world to replace an engine-general behavioral rule. Reikon intentionally uses causal levels, XP-awarded growth, stat and skill points, a numeric Health pool, and percentage damage reduction. Treating those mechanics as accidental nonconformance would erase deliberate world design; leaving them as silent contradictions would make restoration and resolution nondeterministic.

### Decision

A world may declare a **World Rule Profile** that replaces engine-general **behavioral simulation rules** within an explicit scope. Every override must name a stable override identifier, the base rules or decisions replaced, its replacement behavior, affected entity or situation scope, activation conditions, state/provenance requirements, and interaction with action resolution.

Overrides are opt-in and inherited by campaigns in that world. An undeclared conflict is still a contradiction. Persistent Object structure and identifiers, Canonical Record ownership, provenance, Runtime invariants, save integrity, and deterministic validation remain non-overridable. A world may replace how its fiction behaves; it may not make canonical state structurally ambiguous or bypass durability controls.

The Runtime loads the active World Rule Profile before resolving affected state. Where a declared override applies, the world rule is authoritative; otherwise the engine default applies.

### Rationale

This makes world variance explicit, reviewable, and restorable without forcing all genres into one behavioral model. The non-overridable boundary preserves interoperability and prevents “world override” from becoming an escape hatch around the Data Model or canon.

### Consequences

- Rules gain Section 14, World Rule Profiles.
- Reikon declares overrides for System progression and numeric vitality/damage reduction.
- Decision 057's former bright line is refined for Reikon: its System may cause growth exactly as declared by the Reikon profile, while d100 still resolves uncertain actions.
- Save and startup material must identify the applicable World Rule Profile version.

---

## Decision 060 — Uncertain World-Fact Arbitration

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** `012_ENGINE_RUNTIME.md` Section 1.6; Decision 050; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Player Agency Contract)

### Context

Prototype Alpha showed that a player can phrase intent as if an uncertain inquiry has already produced a result. Player authority over intent and interpretation does not establish whether a counterexample exists, what a search reveals, or whether an inference is objectively true.

### Decision

The Player authors the attempt and the character's interpretation. The Runtime arbitrates uncertain world-facts through canon, ruling, or d100 before narrating them as obtained. A presupposition embedded in player phrasing is proposed state, not canon. Certain established facts may be acknowledged automatically; uncertain existence, discovery, resistance, and consequence remain Runtime-authored.

### Consequences

- The Runtime and Gameplay Runtime Profile state this boundary explicitly at the point of intent interpretation.
- A player's certainty may become canonical Character Knowledge or belief without establishing Objective Reality.
- This refines Decision 050 without changing player authority over volition.

---

## Decision 061 — Session Export as Durable Transcript and Recovery Source

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** Refines Decision 056 (Session Export); Decision 032; Decision 039; Decision 042; Decision 054; `010_ENGINE_RULES.md` Sections 2.1, 2.8, 13; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Session Export, Runtime Command Interface)

### Context

Decision 056 introduced `/export` and classified its output as "a **non-canonical** derived artifact... Like the player briefing and the Progression Surfacing view, it establishes no canon."

That grouping is a category error, and the Reikon Awakening repair exposed it.

The player briefing and the Progression Surfacing view are genuinely derived: each is computed from canonical ledgers and can be regenerated on demand, which is exactly why each is disposable. **A session transcript cannot be regenerated from canon.** It is not an output of canonical state; it is the primary record *from which* canonical state was promoted (Decision 042). Once a session ends its transcript is unreproducible. If it was not written down, it is gone.

The canon hierarchy already ranks it accordingly: the gameplay transcript is tier 2 (Rules Section 2.1), *above* canonical ledgers, because it reflects what actually happened while a ledger may be stale. Decision 042 held that the transcript is a precedence tier but not a durability tier — precisely because it was volatile. An export is what removes the volatility. The transcript's exclusion from durability was an accident of storage, not a property of the record.

Reikon proved the consequence. Its only checkpoint was malformed and unrestorable; its live canon had to be rebuilt from that damaged snapshot, and the rebuild could not be verified because the transcript existed only on the owner's disk, outside the repository — while being cited in `030_ENGINE_CHANGELOG.md` as the evidence for Decision 057. When it was finally committed, it verified the reconstruction on every material fact, and revealed that modifier steps recorded in canon had no attestation in play at all. The strongest evidence the campaign had was the one record the engine had no place to keep.

Separately, the export as specified is **insufficient to reconstruct from**. It captures messages verbatim, but not the identifiers allocated during the session, not the modifiers applied to a roll, and not the state the session opened from. A reader can see what was narrated; they cannot rebuild the identity graph it produced.

### Decision

**1. Reclassification.** A Session Export is a **durable Gameplay Transcript** — the record class Rules Section 2.8 already defines — not a derived artifact. It is a primary source, preserved rather than regenerated. Decision 056's grouping of it with the player briefing and the Progression Surfacing view is corrected.

**2. The bright line is unchanged.** An export is still **not canon and not a save**. It establishes no canon by existing, mints no identifiers, is never a restoration entry point, and `/export` remains distinct from `/save`. Precedence is not durability (Decision 042): a transcript fact governs in flight and becomes durable canon only through Promotion.

**3. Recovery is re-promotion, not restore.** Where no valid checkpoint exists, canonical ledgers may be **rebuilt from an export by re-promoting its content** — the mechanism Decision 042 already defines. This is a repair operation, not a `/load`. It runs the Promotion Barrier and the Repository Validation Barrier (Decision 054) and produces canon the ordinary way, with provenance pointing at the export. `/load` restores a checkpoint; recovery from an export *reconstructs* one.

**4. Identifier fidelity.** Recovery must reproduce the identity graph rather than invent a new one, so an export must record every identifier allocated during the session and the object it names. Recovery reuses those identifiers for those objects. This is **not** a breach of never-reuse (Data Model Invariant 3): the same object is being restored to the record, not a retired number reissued to a different one. Where an export does not attest an identifier, recovery does not guess — it records the gap.

**5. Sufficiency contract.** An export is sufficient for recovery when, in addition to every message verbatim and classified, it captures:

- the **opening state** the session began from — the checkpoint or state reference, and the identifiers in play;
- every **resolution in full** — the natural roll, the net modifier steps and the established circumstances behind them, the effective result, and the band (Decisions 052, 058) — not merely the die tag;
- every **identifier allocated**, with the object it names and its owning record;
- every **canon mutation promoted** during the session, with provenance;
- the **closing state** as of the last turn.

State recorded in an export is *evidence of what was true at a moment*, not a competing canonical record. The no-duplication rule of Rules Section 13.3 binds the **save manifest**, whose content is derivable from the ledgers stored beside it; it does not bind a primary record whose entire value is that it cannot be re-derived.

**6. Exports are not self-attesting.** An export records what the Runtime *reported*, including validation output, as transcript. It never asserts a verdict of its own. A transcript of a false claim is an accurate transcript.

### Rationale

- It corrects a classification error rather than adding a mechanic. Recovery uses Promotion (Decision 042), the transcript record class (Rules Section 2.8, Decision 032), and the mechanical barrier (Decision 054) — all already accepted.
- It makes durable the record the canon hierarchy already ranks above ledgers. The transcript was excluded from durability because it was volatile; once an export exists, that reason no longer holds and the ranking should follow.
- It closes a demonstrated failure. Reikon's canon survived only because a transcript happened to exist on someone's disk. An engine whose first principle is that the repository is the single source of truth cannot depend on that.
- The bright line holds. The export does not become canon, does not resolve actions, and does not restore. It is evidence sufficient to rebuild canon *through the ordinary gate*.

### Consequences

- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`: the Session Export section is reclassified and gains the sufficiency contract and a Recovery from Export procedure; the `/export` command-table row is updated.
- `020_ENGINE_GLOSSARY.md`: **Session Export** is updated.
- Save architecture is unchanged. Checkpoints remain the restore mechanism (Decision 039, Rules Section 13). An export is the fallback when they fail, not a replacement, and `/save` remains the way to preserve state.
- Existing exports predate this contract and are **not** retroactively conforming. `campaigns/reikon_awakening_001/exports/play_export_0001.md` is sufficient to *verify* the campaign's reconstruction but not to fully *rebuild* it: it attests no identifiers and no modifiers.
- Recovery from an export is expected to be **lossy wherever the export is silent**. The gaps are recorded, not filled by inference.
- Rules, Data Model, and Runtime are unchanged: this is a Runtime Profile contract plus a record-classification correction. Decision 056 remains Accepted and is refined here rather than superseded; its body is unchanged per the immutable-history policy.

### Alternatives Considered

- **Leave the export derived and non-recoverable.** Rejected: it is not derivable, and Reikon demonstrated the cost.
- **Make the export a save.** Rejected: it would create a second representation of canonical state — the exact risk Decision 039 rejected a compiled save format to avoid. An export is evidence, not state.
- **Make the export canon.** Rejected: it would let a transcript establish canon without promotion, collapsing the precedence/durability split Decision 042 exists to maintain.
- **Have recovery mint fresh identifiers.** Rejected: it breaks continuity of the identity graph and would make a recovered campaign a fork of itself (Decision 053), rather than the same campaign restored.

---

## Decision 062 — World Rule Profile Document Class and Placement

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** Completes Decision 059 (Declared World Rule Profiles); `010_ENGINE_RULES.md` Section 14; `011_ENGINE_DATA_MODEL.md` Sections 2.3, 4.3; Decisions 027, 028, 032, 043, 045; `templates/000_TEMPLATE_CONVENTIONS.md`

### Context

Decision 059 established that a world may declare a World Rule Profile replacing engine-general behavioral rules, and Rules Section 14 defined the override contract. Neither said where a profile lives or what kind of document it is. Reikon, the only world to declare one, put its profile inside `worlds/reikon/205_THE_LEDGER.md` — a file whose own header reads "narrative reference, not an Object-Block canonical ledger" while its body states "this section is the authoritative model for Reikon mana — its pool, its costs, and its recovery."

Both statements are true, which is the tell: the header offers a false dichotomy. The repository recognizes Object-Block canonical ledgers (state) and non-canonical derived or narrative artifacts (presentation). A World Rule Profile is neither. It is authoritative on behavior within its declared scope, and it holds no Persistent Object state at all.

Rules Section 14.2 already says so — "The profile is world-authoring policy, not a Persistent Object" — but with no document class to belong to, the most powerful governance artifact a world can author had nowhere to live except inside a lore file, unvalidatable and self-contradicting.

A second gap sat behind it. Section 14 permits a world to replace behavioral rules, and those rules routinely create per-character state (an allocation, a tracked quantity). Nothing said how that state attaches to an entity without amending the Data Model — the layer the architecture requires to change least.

### Decision

**1. World rule content is a document class.**

The repository recognizes a third world-layer document class alongside canonical ledgers and narrative or derived artifacts:

- **Canonical ledger** — owns Persistent Object state. Carries a `REC-` identifier and Object Blocks.
- **World rule content** — authoritative on *behavior* within a declared scope. Carries **no identifier** and owns no Persistent Object.
- **Narrative or derived artifact** — establishes nothing. Non-canonical, disposable or illustrative.

World rule content is the world-layer peer of `010_ENGINE_RULES.md`, which is likewise authoritative and likewise identifier-free. Rules are not state. This ratifies Rules Section 14.2 rather than amending it.

**2. Placement and file convention.**

A world's declared World Rule Profile resides at:

```
worlds/<world>/206_WORLD_RULE_PROFILE.md
```

One profile file per world, within the World layer's 200–299 range (Decision 028). A world that declares no profile has no such file and runs engine defaults; absence is meaningful and is not a validation failure.

**3. Separation from lore.**

World rule content and narrative content must not share a file. A file that declares overrides is a profile; a file that describes the setting is lore. Lore may reference the profile; it may not restate its numbers, and where it does, the profile governs.

**4. Per-character state created under an override uses the Data Model's existing extension mechanism.**

State that an override causes to exist on an entity is carried as a typed domain extension block keyed by the entity's Type or Subtype (`011_ENGINE_DATA_MODEL.md` Section 4.3). The profile owns the extension's *content*; a world ledger template owns its *layout*; the Data Model owns only the mechanism. No Data Model change, and no schema version increment, is required for a world to declare an override that creates entity state.

**5. What the profile may not do is unchanged.**

Rules Section 14.3 continues to govern. A profile may replace fictional behavior. It may not touch Persistent Object structure or registry allocation, Canonical Record authority, provenance, referential integrity, Runtime invariants, or save, restoration, and validation barriers. This decision gives the profile a home; it does not widen its reach.

### Rationale

- It resolves a self-contradiction by naming what the file already is, rather than forcing it into a class it does not fit. The header's binary was the error, not either of its claims.
- A profile's identifier-free status is not an exception to be explained away — it follows from the profile being rules. The Engine Rules carry no `REC-` identifier for the same reason. The parallel is exact and makes Section 14.2 legible rather than surprising.
- Decision 045 established `templates/` as a non-canonical instantiation layer and Decision 032 separated record classes by role; this decision applies the same discipline one layer out, to world-layer documents, which had only an implicit two-way split.
- Routing override-created state through Data Model Section 4.3 keeps the most stable layer stable. Section 4.3 was written for exactly this — additive, typed, optional extensions whose content belongs to a domain — so a world gains arbitrary declared state without touching `011`.
- Separating the profile from lore is what makes the profile validatable in principle and reviewable in practice. A reviewer can read one file and know every way a world departs from the engine.

### Consequences

- `010_ENGINE_RULES.md` gains Section 14.5 (Placement and Document Class). Sections 14.1–14.4 are unchanged, so existing references to the override contract and the non-overridable boundary remain valid.
- `templates/000_TEMPLATE_CONVENTIONS.md` Section 8 records world rule content alongside the operational and derived template classes.
- `000_ENGINE_MANIFEST.md` repository architecture includes `206_WORLD_RULE_PROFILE.md` in the world layer.
- Reikon is the first client: its profile moves from `205_THE_LEDGER.md` to `worlds/reikon/206_WORLD_RULE_PROFILE.md`, and 205 reverts to lore. No other world is affected.
- Future worlds inherit the convention without an ADR of their own. Authoring a profile is world content and requires no decision; only changing this convention does.
- This decision is a refinement under Decision 048, in the same class as Decision 055: it sites an artifact an accepted decision already created, and adds no mechanism. It introduces no new engine capability and no new simulation behavior.

### Alternatives Considered

- **Give the profile a `REC-` identifier and Object Blocks.** Rejected: it contradicts Rules Section 14.2 and miscategorizes rules as state. A record owning no subject is precedented (PA-004), but the profile owns nothing *because it is not a record* — the identifier would be ceremony, and it would invite the profile to accrete state that belongs in ledgers.
- **Leave the profile inside the world's existing lore file with a corrected header.** Rejected: the header contradiction is a symptom. One file cannot be both non-authoritative narrative and the authoritative source for a world's rules, and future worlds would each re-litigate where their profile goes.
- **Define a new Persistent Entity Type or extend the Data Model for override-created state.** Rejected: Section 4.3 already provides the mechanism, and amending the closed Type set for one world's genre is exactly what Decision 027 forbids.
- **Bundle this convention with the first world's numbers in one decision.** Rejected: that is how Decision 059 arrived — a general mechanism shaped by one world's genre, with no way to tell which parts were reusable. The convention is engine-general; the numbers are world authoring; they are kept separate.
- **Defer to Version 0.3 planning as new foundational architecture.** Rejected: it completes an accepted decision rather than adding one, matching Decision 055's precedent. Deferring would leave Decision 059's artifact homeless for a full version while worlds author against it.

---

## Decision 063 — Complete Command Discovery and Campaign-Independent Chat Debug Export

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** Decision 056 (Runtime Command Interface); Decision 061 (Session Export); `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Runtime Command Interface, Chat Debug Export); `README.md` (bootstrap)

### Context

A live no-argument `/chronicle` run restored Prototype Beta and entered its readiness gate instead of stopping at engine selection. Its later `/help` response omitted commands and improvised descriptions rather than rendering the command table. `/export` correctly found no active gameplay session, but there was no command to preserve the surrounding chat for diagnosis. That diagnostic export needs its own name so `/export` keeps its gameplay guarantee and `/debug` keeps its established roll-detail meaning.

The failures share one boundary problem: engine bootstrap, campaign session, and substrate conversation were treated as one scope. They are three scopes. Bootstrap can exist without campaign selection; the command catalog exists regardless of command availability; and a conversation can be diagnostically valuable without being gameplay.

### Decision

1. **No-argument bootstrap stops at the engine boundary.** `/ChronicleEngine` and its aliases load the engine boot set, render the selection screen, and yield. They do not load campaign files, restore or reconcile campaign state, or begin a campaign readiness gate until the player selects a target. This tightens Decision 056's existing no-auto-load rule at its operational boundary.
2. **Command discovery is complete, never state-filtered.** The no-argument bootstrap screen, every session-start catalog, and `/help` with no argument render every runtime-command row and alias from the canonical Command Table. Commands whose preconditions are not met remain visible and are labelled with their requirements. An active world's complete diegetic command set is appended after campaign selection. `/help <command>` renders the selected row in full.
3. **`/export-debug` is the campaign-independent Chat Debug Export.** It exports the entire user-visible current conversation, including pre-bootstrap messages, whether or not a campaign is loaded. Hidden instructions, internal reasoning, credentials, and non-visible tool traffic are excluded. The file is repository-scoped under `exports/debug/`, diagnostic, non-canonical, and never a save or restoration source. It truthfully records any substrate visibility limit.
4. **`/export` remains campaign-scoped.** It retains Decision 061's gameplay-transcript sufficiency contract and requires a campaign session because it records opening state, resolutions, identifiers, promotions, and closing state. `/export-debug` does not imitate or weaken that contract.
5. **`/debug` retains its established meaning.** It toggles the fuller mechanical breakdown for rolls and is off by default. The new export command does not alter roll presentation.

### Rationale

- A list intended for discovery cannot hide operations based on state; hiding them makes the interface unknowable precisely when the player needs navigation.
- Rendering one authoritative table prevents the observed drift between the specified and narrated command behavior.
- A substrate conversation and a gameplay transcript have different evidentiary purposes. Giving each its own command preserves the recovery guarantees of `/export` while making failed startup interactions exportable.
- The no-argument bootstrap is an engine entry point, not shorthand for `/continue`; keeping that boundary hard preserves player choice.

### Consequences

- The Gameplay Runtime Profile advances to 1.26, the Gameplay Start Guide to 2.11, and the README receives its first formal document version, 1.0.
- `README.md` 1.0 explicitly prohibits campaign-file loading and readiness work during no-target bootstrap.
- Session-start command menus may be longer, but they are deterministic and complete. Concision applies within each row, not by omitting rows.
- `/export-debug` is added to the Runtime Command Table; `/debug` remains the roll-detail toggle.
- A new repository-level `exports/debug/` directory may be created at runtime. It is outside canon and campaign validation.

### Alternatives Considered

- **Let `/export` fall back to chat export when no campaign is active.** Rejected: one command would then produce artifacts with incompatible sufficiency and recovery guarantees depending on hidden state.
- **Keep a compact startup menu and make only `/help` complete.** Rejected: the observed failure began at bootstrap, before the player had a reliable reason to trust or invoke `/help`.
- **Repurpose `/debug` for chat export.** Rejected: it breaks an established command unnecessarily and makes a diagnostic transcript less discoverable than the explicit `/export-debug` name.

---

## Decision 064 — Cold-Start No-Target Gate and Exact Catalog Mirror

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** Refines Decision 063; `README.md` (Play Chronicle Engine, Exact cold-start command catalog); `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Bootstrap Command, Bootstrap Selection Screen)

### Context

The first live test after Decision 063 still auto-restored Prototype Beta on bare `/chronicle`. It then produced an incomplete, malformed command catalog and invented aliases (`/checkpoint`, `/progress`, `/resume`, `/list`, `/close`) absent from the canonical Command Table. The no-auto-load rule existed, but it fired too late: the bootstrap prose first described starting or resuming gameplay and told the Runtime to load engine and campaign procedure before making the no-target distinction. The catalog rule also required a render from a table available only after profile loading, leaving cold-start output open to paraphrase.

### Decision

1. **Target parsing is the first bootstrap operation.** Before reading any campaign file, the Runtime determines whether `/ChronicleEngine` or its alias contains an explicit target.
2. **The No-Target Gate is a hard read boundary.** With no target, campaign startup files, ledgers, checkpoints, world state, restoration, reconciliation, recap, and readiness procedures are prohibited. The Runtime may read the engine boot set and repository metadata needed to list worlds and campaigns. It renders the selection screen and yields.
3. **No campaign is an implicit argument.** Recency, active status, a sole candidate, or prior conversation context never supplies a missing bootstrap target. Bare `/chronicle` is not `/continue`.
4. **README carries an exact cold-start catalog mirror.** Because README is the cold-start-resident document, it mirrors every Runtime Command Table row in a renderable player-facing table. No-target bootstrap renders this table rather than recalling, regrouping, or paraphrasing commands.
5. **Command names and aliases are closed.** Only names and aliases explicitly present in the canonical table are valid. The Runtime does not invent convenience aliases. The README mirror and Runtime Command Table must remain synchronized.
6. **`/continue` syntax is reconciled.** `/continue [world|campaign]` accepts no argument, a world, or a campaign, matching the bootstrap selection prompt and resolution rules.

### Consequences

- README advances to 1.1, Gameplay Runtime Profile to 1.27, and Gameplay Start Guide to 2.12.
- Cold-start instructions say “start the engine,” not “start or resume a game.” Campaign loading is conditional on an explicit target or later player selection.
- The README intentionally duplicates the command catalog. This duplication is an enforcement surface required by cold-start residency, not a second source of command semantics; the profile remains canonical and the mirror must match it.
- `tools/test_runtime_command_catalog.ps1` mechanically compares command rows across the Runtime Profile, README mirror, and Gameplay Start Guide and rejects drift.
- A no-target response that contains campaign state, a recap, restoration language, or a readiness gate is a failed bootstrap even if it later asks the player whether to continue.

### Alternatives Considered

- **Rely on stronger prose pointing to the profile table.** Rejected by the live test: the Runtime loaded and then improvised rather than rendering.
- **Remove aliases entirely.** Rejected: the documented bootstrap and checkpoint aliases are useful and not the source of failure; invention beyond the closed set is.
- **Treat the restored campaign as harmless preloading while waiting for confirmation.** Rejected: reading and presenting campaign state already crosses the player-choice boundary and leaks campaign context into what must be an engine-only screen.

---

## Decision 065 — Per-Exchange State Settlement and Literal Diagnostic Export

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Information Boundary, Turn-State Settlement, Chat Debug Export); `worlds/reikon/206_WORLD_RULE_PROFILE.md` 0.2; Decisions 042, 057, 059, 061, 063

### Context

A Reikon continuation exposed seven connected execution failures. `/system` omitted or summarized inventory despite a canonical inventory section. `/export-debug` reconstructed the conversation into turn summaries instead of preserving messages. Mana recovery and XP awards existed as rules but did not fire until the player challenged stale values. Debug-off play still printed intent declarations, grounding checks, difficulty and modifier analysis, and state-update reports. Mana and Health changes were repeated in verbose transition blocks. A wounded opponent was assigned a negative modifier to Daedalus even though the wound helped his intent. Finally, physical training present in the prior transcript had not reached the canonical capability field, so the next session denied that it happened.

These were not seven missing mechanics. They were missing enforcement points between resolution, state, presentation, and promotion.

### Decision

1. **Every resolved exchange has a settlement phase.** Before yielding, the Runtime applies costs and damage, elapsed-time recovery, resolved-challenge rewards, and resulting conditions to in-flight state. The next turn and every diegetic status command read the settled state.
2. **World profiles may require canonical recovery carry.** Reikon records recovery mode and sub-interval seconds so recovery is invariant to how a Runtime divides one span into responses.
3. **Rewards are immediate.** Reikon XP is awarded in the exchange that resolves the challenge. There is no pending-XP state and no player prompt is required.
4. **Debug-off resolution is narrative.** Only a compact die tag may expose mechanics. Intent declarations, grounding checks, difficulty/modifier lists, calculations, result bands, and state-update reports are prohibited outside debug mode; their fictional causes belong in narration.
5. **Modifier polarity is actor-relative.** Positive helps the acting intent; negative hinders it. An opponent's wound is favorable to the actor. Debug output uses one actor-relative list and performs a polarity check before rolling.
6. **Reikon numeric notifications are one-shot current values.** After narration, each changed Mana, HP, or XP quantity renders once as `Mana current/max`, `HP current/max`, or `XP current/threshold`. No arrows, equations, tick spam, or repeated status block.
7. **`/system` inventory is mandatory.** It reads the live Inventory and Ownership ledger and lists each carried item; “inventory unchanged,” a partial summary, or omission is nonconforming.
8. **`/export-debug` is literal and minimally labelled.** Its file contains only repeated visible role labels and exact displayed message bodies. No metadata, turn structure, summaries, reconstructed mechanics, or final-state section. `/export` retains the structured recovery contract.
9. **Training is capability state.** Completed physical practice and demonstrated technique are recorded qualitatively in the character's `capabilities`, with event provenance. System XP/Ability levels do not replace ordinary skill development.

### Consequences

- Gameplay Runtime Profile advances to 1.28; Gameplay Start Guide to 2.13; README to 1.2.
- Reikon World Rule Profile advances to 0.2 and adds deterministic recovery settlement, mandatory reward timing, compact notifications, inventory-complete `/system`, and trained-skill rendering.
- Daedalus's omitted morning training and supplied pack-leader session are re-promoted into live campaign canon as `EVT-000029` and `EVT-000030`; a conforming Checkpoint 0003 captures the repaired state.
- `tools/test_reikon_runtime_contract.ps1` checks the settlement, export, notification, inventory, repaired-state, and checkpoint-read-back contracts.
- Debug export becomes deliberately unsuitable for canon reconstruction. That is the point: `/export-debug` preserves what the user saw; `/export` preserves structured gameplay evidence.

### Alternatives Considered

- **Correct mana and XP only when `/system` opens.** Rejected: subsequent actions may already have resolved against stale resources.
- **Show before/after arrows for clarity.** Rejected for ordinary System notifications: the player asked for diegetic one-shot current state, and the narrative already carries the cause.
- **Treat one training session as no capability.** Rejected: it need not grant mastery to be true. Qualitative foundational practice and later demonstrated use are exactly what capability provenance exists to preserve.

---

## Decision 066 — Deterministic Health Recovery in Reikon

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Turn-State Settlement); `worlds/reikon/206_WORLD_RULE_PROFILE.md` 0.3 Sections 7.3 and 11; Engine Rules Sections 6.13–6.14; Decisions 057, 059, 061, 065

### Context

Decision 065 made Health changes settle every exchange but exposed a remaining gap: Reikon had a numeric Health pool without a numeric restoration rule. The engine described treatment and recovery qualitatively, while the Reikon profile specified exact mana recovery only. A Runtime therefore knew when to settle HP but not how much to restore after rest, treatment, a potion, Ascension, or interrupted recovery. Inventing a plausible amount would violate canonical state; refusing all restoration would make the Health pool incomplete.

### Decision

1. **Reikon Health recovery is deterministic.** Injury severity, care state, recovery mode, elapsed seconds, and maximum Health select and settle an exact rate after every exchange.
2. **Fractional progress is canonical.** `health_recovery_remainder_units` preserves sub-HP recovery across exchanges, so equivalent fictional time produces identical Health regardless of response boundaries.
3. **Recovery has three activity modes.** Safe rest receives the full rate, safe light activity half, and combat, threat, strenuous exertion, or unstable conditions pause natural recovery without erasing accrued progress.
4. **Care and severity determine the rate.** Untreated, treated, and specialized care have explicit daily percentages for none/minor/moderate/severe/critical injury. Critical recovery requires stabilization and specialized care.
5. **HP and wounds remain distinct.** Direct or natural HP restoration does not automatically erase an injury, pain, poison, scar, or modifier. Condition changes require their own resolved treatment/recovery outcome.
6. **A standard healing potion has a magnitude.** A full vial restores 25% of maximum Health, rounded up and capped, while its limited fictional effects do not automatically repair structural injury or clear conditions.
7. **Unauthored healing cannot be improvised.** Other Abilities, relics, cores, facilities, and techniques restore only an amount declared by their authoritative rule.
8. **Maximum-Health changes preserve absolute missing Health.** Ascension or Endurance allocation adds capacity without becoming a full heal.

### Consequences

- Reikon World Rule Profile advances to 0.3; Gameplay Runtime Profile to 1.29; README to 1.3. The engine version and Data Model version do not change.
- Daedalus remains at 60/100 HP. His moderate, self-stabilized wound begins with recovery `paused`, care `untreated`, and zero fractional carry because he is still inside an active Rift threat.
- Checkpoint 0004 captures the migrated canonical recovery fields. Checkpoint 0003 remains immutable and restorable under Profile 0.2.
- `tools/test_reikon_runtime_contract.ps1` verifies the formula, potion magnitude, maximum-Health rule, canonical fields, and Checkpoint 0004 byte identity.

### Alternatives Considered

- **Restore a flat HP amount per hour.** Rejected: it becomes negligible as maximum Health scales across Rank bands.
- **Restore a percentage only at session close or `/system`.** Rejected: the next action could resolve against stale Health, repeating the settlement failure that caused Decision 065.
- **Let full HP clear every wound.** Rejected: it collapses the engine's injury model into one number and makes fractures, poison, pain, and permanent consequences disappear without a causal treatment outcome.
- **Fully heal on Ascension.** Rejected: it turns a progression event into an unauthored emergency heal and invites timing exploits.

---

## Decision 067 — Argumentless Welcome Bootstrap and Dedicated Resume Command

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** `README.md` (Play Chronicle Engine, Exact cold-start command catalog); `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Runtime Command Interface, Engine Welcome Page); `docs/GAMEPLAY_START_GUIDE.md` (Runtime Commands); Decisions 056, 063, 064

### Context

The bootstrap signature still exposed `/ChronicleEngine [target]`. Even after the no-target gate was strengthened, that optional label allowed a Runtime to classify text attached to the engine command as a campaign selection and proceed into restoration. The same command therefore meant either “show the engine” or “start play,” leaving the welcome-only boundary dependent on argument parsing. Its broad alias set also included `/start` and `/rpg`, while `/continue`—the actual campaign-resume operation—had no accepted natural-language alias.

### Decision

1. **`/ChronicleEngine` is argumentless.** It always loads the engine boot set, renders the Engine Welcome Page, and yields. It never selects, loads, restores, or resumes a campaign.
2. **Trailing bootstrap text is not a target.** A Runtime does not parse text after `/ChronicleEngine` or a bootstrap alias as a world, campaign, checkpoint, label, or restoration request. The welcome-only outcome is invariant.
3. **Bootstrap aliases are closed and reduced.** The only aliases are `/game`, `/chronicle`, and `/chronicles`. `/start` and `/rpg` are removed.
4. **Campaign restoration belongs only to `/continue`.** `/continue [world|campaign]` resumes the most recently played campaign with no argument, the latest campaign in a named world, or a named campaign.
5. **`/resume` aliases `/continue`.** It accepts the same optional `[world|campaign]` selector and dispatches to the identical restoration procedure.
6. **The welcome page is terminal for the bootstrap exchange.** Startup Classification, campaign reads, restoration, reconciliation, recap, readiness, and scene opening begin only after a later `/continue`, `/resume`, `/new`, or `/load` command.

### Consequences

- README advances to 1.4, Gameplay Runtime Profile to 1.30, and Gameplay Start Guide to 2.14.
- The exact catalog row is `/ChronicleEngine`, not `/ChronicleEngine [target]`.
- The resume row remains `/continue [world|campaign]` and explicitly carries `/resume [world|campaign]` as its sole alias.
- `tools/test_runtime_command_catalog.ps1` rejects bootstrap target syntax and removed aliases, and requires the new resume alias in the README mirror while preserving row synchronization across all three catalogs.
- Decision 056's target-bearing bootstrap and alias list are superseded by this narrower command-surface decision; its cold-start reachability rationale remains accepted.

### Alternatives Considered

- **Keep the optional bootstrap target and strengthen the no-target parser again.** Rejected: the label itself creates the dual behavior the welcome-only command is meant to eliminate.
- **Make `/start` or `/rpg` resume the latest campaign.** Rejected: ambiguous “start” vocabulary would recreate overlap between engine bootstrap and campaign restoration.
- **Add `/resume` as a separate procedure.** Rejected: it is semantically identical to `/continue`; an alias preserves one restoration contract.

---

## Decision 068 — Command-Local Conformance Gate for Reikon `/system`

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** `campaigns/reikon_awakening_001/090_CAMPAIGN_STARTUP.md`; `worlds/reikon/206_WORLD_RULE_PROFILE.md` 0.3 Section 10; `worlds/reikon/205_THE_LEDGER.md`; Decisions 051, 055, 056, 065

### Context

A live `/system` test ignored the already-normative Section 10 template and composed an alternate `THE LEDGER — DAEDALUS` dashboard. It omitted INVENTORY, QUESTS, and PATHS & MARKS; renamed and regrouped the fixed sections; and exposed recovery internals. The underlying campaign inventory was complete and the profile explicitly required it. The failure occurred because the render contract existed only in the world profile while command execution remained free-form, and nearby lore wording (“The Ledger,” “Solo Leveling-style window”) supplied a tempting alternate presentation.

This repeated the enforcement-point pattern behind Decisions 055 and 065: a correct passive rule did not fire at the instant its command was rendered.

### Decision

1. **Campaign startup registers `/system` explicitly.** Its dispatcher points to Reikon Profile Section 10 and declares the character, live Inventory and Ownership ledger, and Objectives ledger as mandatory reads.
2. **A pre-render gate fires before composition.** `/system` cannot be answered from conversation memory, Current State, the character sheet alone, or lore prose.
3. **The template is exact.** The Runtime binds values without renaming, reordering, combining, adding, or dropping sections. `THE LEDGER — <NAME>` and the observed alternate heading set are explicitly nonconforming.
4. **Inventory completeness is checked before send.** Every active object possessed by the protagonist must appear exactly once in ledger order, stack quantities must render, and cores remain last.
5. **Every fixed section is checked before send.** STATS, SKILLS & ABILITIES, INVENTORY, QUESTS, and PATHS & MARKS must all appear, including empty sections. A failing draft is discarded and rerendered; it is never sent as a partial panel.
6. **Lore cannot define layout.** “The Ledger” is the lore file's title, not the System window's title. Style-comparison language is removed from the active world README.
7. **Read failure is explicit.** If a mandatory source cannot be read, the Runtime reports the blocker rather than fabricating a partial display.

### Consequences

- Reikon Awakening startup advances to 1.1 and carries a resident `/system` dispatcher and pre-send conformance gate.
- Reikon World Rule Profile remains 0.3 because its canonical template and mechanics do not change; this decision moves enforcement to command execution.
- Reikon lore and README are clarified without changing world canon or campaign state; no checkpoint migration is required.
- `tools/test_reikon_runtime_contract.ps1` requires the command-local gate, inventory read, complete fixed-section check, partial-output prohibition, and explicit rejection of the observed alternate title.

### Alternatives Considered

- **Repeat that inventory is mandatory inside Section 10.** Rejected: that exact rule already existed and the live test still bypassed it.
- **Duplicate the entire template in campaign startup.** Rejected: two full templates can drift. Startup dispatches to the one authoritative template and owns only the execution gate.
- **Accept alternate layouts if they contain the same values.** Rejected: the observed alternate did not contain the same values, and variable layouts defeat the established canon-deterministic display contract.

---

## Decision 069 — Change Classification Gate and Post-Release Change Control

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** Completes Decision 048 (Version Evolution and Validation Lifecycle); applies Decision 055 (enforcement points) to governance; `002_ENGINE_ROADMAP.md`; `docs/DEVELOPMENT_WORKFLOW.md`; `tools/test_decision_roadmap_sync.ps1`; Decisions 040, 054, 062

### Context

Decision 048 established the development lifecycle and the Architecture Freeze: within a version, later work is "implementation and refinement, not new foundational architecture," and "genuinely new foundational architecture belongs to a later version's Planning and ADR Design." It did not say **who decides which class a change belongs to**, or **where that judgment is checked**.

In practice the classification is asserted by the decision seeking to land, inside its own Alternatives Considered section. Decisions 055, 062, and 068 each argue their own refinement status; Decision 062 explicitly lists "Defer to Version 0.3 planning as new foundational architecture" as an alternative and rejects it. A gate whose subject writes its own verdict is not a gate.

The Version 0.2 record shows the consequence. Seventeen decisions (052–068) have been accepted since the last roadmap reconciliation, and only one of them — Decision 053 — is mentioned in `002_ENGINE_ROADMAP.md`, inside a Technical Debt bullet. Ten landed after Version 0.2 was declared complete and outside the five dispositions the Engine Postmortem's own refinement table names. Among them, Decision 059 added `010_ENGINE_RULES.md` Section 14, an engine-general mechanism permitting a world to replace engine-general behavioral rules — the furthest-reaching change since the Foundation line — under a refinement label, in response to one world's authoring needs.

This is the same shape as the failure Decision 048 was written to prevent, one layer up. Decision 048 stopped the engine from accumulating architecture without gameplay validation. It did not stop the engine from accumulating architecture without milestone ownership. And it is the same shape Decision 055 named at the runtime layer: a correct rule with no named enforcement point does not fire.

### Decision

**1. Classification is structural, not self-declared.**

A change is **foundational** if its diff does any of the following:

- adds, removes, or renumbers a section of `010_ENGINE_RULES.md`;
- changes `011_ENGINE_DATA_MODEL.md` in any way;
- introduces an engine-general mechanism that a world or campaign may invoke or must satisfy.

Every other change is a **refinement**.

A change that only **sites, enforces, or makes explicit an obligation the engine already carries** is a refinement, including when it writes new normative text into `012_ENGINE_RUNTIME.md`. Siting enforcement is what the lifecycle's postmortem stage exists to produce (Decision 055 is the type case), so the Runtime is expected to gain enforcement points as a version closes. The Architecture Freeze protects the architectural *basis* — the world model, the structural contract, and the mechanisms worlds build against. It does not freeze the execution layer against the findings of the playtest that the same lifecycle mandates.

The test reads the diff, not the motivation. Why a change is wanted, how urgent it is, which world asked for it, and whether it completes an already-accepted decision are all irrelevant to its class. A change that meets the structural test is foundational even when it is small, obvious, and correct.

Where one mechanism spans several decisions, the mechanism carries the class and every decision that constitutes it shares the owning milestone. A follow-on decision does not become a refinement by virtue of completing a foundational one.

**2. Foundational changes belong to a version's Planning and ADR Design stage.**

They may not land against a released version. This restates Decision 048's freeze and makes it checkable.

**3. Refinements may land against a released version**, and must name the roadmap milestone that owns them.

**4. The engine ADR log records engine-general decisions only.**

A change scoped entirely to one world or campaign is world authoring. Decision 062 already settled this — "Authoring a profile is world content and requires no decision; only changing this convention does" — and it follows from Decision 027's engine/world separation. World authoring is recorded in `030_ENGINE_CHANGELOG.md` and the world's own documents. It does not consume an engine decision number.

**5. Enforcement point: mechanical, at the roadmap.**

Per Decision 055, this decision names where it is checked rather than trusting that it is documented. `tools/test_decision_roadmap_sync.ps1` requires every Accepted decision in `001_ENGINE_DECISIONS.md` to be referenced by number in `002_ENGINE_ROADMAP.md`. A decision that no milestone claims fails the check.

The tool enforces **ownership**, which is mechanical. It does not adjudicate **class**, which is a judgment. Its purpose is to make an unclassified decision impossible to leave unnoticed: the reconciliation that has not happened since Decision 051 becomes a failing test rather than a silent gap.

### Rationale

- It completes Decision 048 rather than amending it. Decision 048 defined the stages and the freeze correctly; the missing piece was an external test for the boundary it drew and a place where the answer is recorded. Nothing about the lifecycle changes.
- It applies the engine's own dominant architectural finding to the engine's own process. Decision 055 established that an invariant with no enforcement point is assumed to hold and does not; Decision 054 established that when narrated bookkeeping has failed repeatedly, the fix is to move the point rather than rewrite the prose at the old point. Governance had exactly the defect both decisions describe, and gets the same remedy.
- A structural test resists the pressure that produced the drift. Every one of the ten post-release decisions was individually well-argued and locally correct; the drift came from each being judged on its own merits at the moment it was needed. A test that reads the diff cannot be argued with at that moment.
- Separating mechanical ownership from judged class keeps the tool honest. Automating the class judgment would produce a checker that is wrong in interesting cases and trusted anyway; automating ownership catches the actual observed failure, which was silence rather than misjudgment.

### Consequences

- `002_ENGINE_ROADMAP.md` gains a Post-0.2 Decision Record reconciling Decisions 052–068 and classifying each. This is the first application of the gate.
- `tools/test_decision_roadmap_sync.ps1` is added and must pass alongside `tools/validate_repository.ps1` before a release is claimed.
- `docs/DEVELOPMENT_WORKFLOW.md` records the classification test in the Version Evolution & Validation Lifecycle section.
- Decision 059's classification is ruled on separately and explicitly; it is the one accepted decision the structural test reclassifies, and it is not disturbed retroactively (see the Post-0.2 Decision Record).
- Future world authoring does not consume engine decision numbers. Decisions 057, 066, and 068 are world-scoped and predate this rule; they are left in place as immutable history rather than renumbered.
- This decision adds no engine mechanic, no Rules section, no Data Model change, and no Runtime obligation. Under its own structural test it is a refinement, and it names Version 0.3 Planning as its owning milestone.

### Alternatives Considered

- **Leave classification to each decision's own reasoning.** Rejected: that is the status quo, and it let a new Rules section land against a released version under a refinement label. A subject that writes its own verdict is not gated.
- **Strengthen Decision 048's prose about the freeze.** Rejected for the reason Decision 054 gives: a rule that has failed at its enforcement point is not repaired by more prose at that point. Decision 048's wording is already clear; it was not the weak part.
- **Automate the foundational/refinement judgment fully.** Rejected: "introduces an engine-general mechanism" is a judgment a diff parser cannot make reliably, and a checker that is confidently wrong is worse than one whose scope is honest. Ownership is mechanized; class is recorded and reviewed.
- **Reopen and reclassify Decisions 056–068 retroactively.** Rejected: accepted decisions are immutable history (Revision Policy), and the repository they produced passes every gate. The record is reconciled and the classification is stated going forward; the history is not rewritten.
- **Defer this to Version 0.3 planning as its own scope item.** Rejected: Version 0.3 planning is the activity this gate exists to protect. Approving a capability scope on an unreconciled record is the specific failure being corrected, so the gate precedes the scope rather than sitting inside it.

---

## Decision 070 — The Resident Layer Is a Separate Document

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** Applies `012_ENGINE_RUNTIME.md` Section 0.4 and Decision 055; `docs/AI_GAMEPLAY_RESIDENT_CORE.md`; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` 1.31; `README.md`; `docs/GAMEPLAY_START_GUIDE.md`; Decisions 049, 069

### Context

Decision 055 established that an obligation carried only by fetched material does not fire on a substrate whose per-turn default competes with its guardrails, and `012` Section 0.4 requires a Runtime Profile to distinguish a resident layer from fetched reference.

The Gameplay Runtime Profile satisfied that requirement with a paragraph. It declared, at Document Version 1.30, that the Player Agency Contract, intent/fact grounding, the Action Resolution Bright Line, the Modifier Step Contract, promotion-obligation awareness, and canon-determinism were "resident per-turn" — and then placed them in the same 907-line file as the command table, the export format, the save algorithm, and the startup variants. The distinction was declared, not embodied. A Runtime could load all 907 lines or none; "load the resident layer" was not an operation anything could perform.

The profile therefore had exactly the defect Decision 055 names, in the document Decision 055 governs. The evidence is the profile's own history: thirty revisions, eleven on the release day, and four decisions (056, 063, 064, 067) against a single bootstrap boundary, each written after a live test failed its predecessor. Each fix added prose to the fetched layer and hoped it would fire.

### Decision

The resident layer is a **separate document**: `docs/AI_GAMEPLAY_RESIDENT_CORE.md`.

1. **It holds only per-turn obligations.** The Player Agency Contract, Interaction Cadence, intent/fact grounding, the Action Resolution Bright Line and Modifier Step Contract, the Information Boundary, modifier polarity, and Turn-State Settlement. These are checked every turn at the moment a fact or outcome would be narrated.
2. **The profile holds only fetched procedure.** Startup variants, the Runtime Command Interface, Progression Surfacing, exports, canon reconciliation, the validation gate, checkpoints, and gameplay close — consulted when their operation is invoked.
3. **The resident core is loaded before play and held for the session.** It is not summarized and not consulted on demand. Every boot list — README, the Gameplay Start Guide's AI Instructions block, and campaign startup configuration — names it first.
4. **The boundary is the one the profile already declared.** No obligation was rewritten, reclassified, or invented. The split was a cut at the line the document's own resident/fetched declaration drew; body text moved verbatim.
5. **The two documents are one profile.** Fetched material may elaborate a resident obligation and may never be the sole carrier of one — unchanged from Decision 055.

### Rationale

- It converts a declared property into a structural one. Decision 055's lesson is that siting is what makes an invariant fire; a resident layer interleaved with six hundred lines of on-demand procedure is resident in name only.
- It is the same remedy Decision 054 applied to registry bookkeeping and Decision 064 applied to the command catalog: when prose at a point has repeatedly failed, move the point rather than rewrite the prose.
- The cut required no design. The profile was already ordered resident-first, and its own Section 0.4 declaration enumerated which sections were resident. The boundary was specified and unenforced, which is precisely the condition Decision 055 predicts.
- It makes the split testable. `tools/test_reikon_runtime_contract.ps1` now asserts the per-turn obligations against the resident file, so a resident rule that drifts back into the fetched profile fails the build.

### Consequences

- `docs/AI_GAMEPLAY_RESIDENT_CORE.md` is added at Document Version 1.0 (~300 lines). The Runtime Profile drops to ~640 lines and advances to 1.31, restyled as the fetched reference layer.
- `README.md` boot list, `docs/GAMEPLAY_START_GUIDE.md` (access list and the AI Instructions block), and the Prototype Alpha and Prototype Beta startup configurations name the resident core first.
- `tools/test_reikon_runtime_contract.ps1` repoints its three per-turn assertions to the resident core and adds a check that the profile points back at it.
- The Engine Rules, Data Model, and Runtime are unchanged. No obligation was added, removed, or altered; only its location and load contract changed.
- Under Decision 069's structural test this is a **refinement** — it sites an obligation `012` Section 0.4 already imposes. Its owning milestone is Version 0.3 Planning, as the first disposition of the profile-churn technical debt.
- This does not by itself guarantee a substrate holds the file resident. It makes holding it resident possible, and makes failing to do so visible in the boot list rather than silent inside a large document.

### Alternatives Considered

- **Leave the declaration and strengthen its wording.** Rejected for the reason Decision 054 gives and this profile's history demonstrates: prose at a failing point does not repair the point. The declaration was already correct and already ignored.
- **Split by topic rather than by residency** (agency / resolution / persistence / commands). Rejected: it produces tidier documents that answer no architectural question. Residency is the boundary `012` Section 0.4 requires; topic is not.
- **Compress the profile instead of splitting it.** Rejected: length is a symptom. A 400-line file mixing per-turn contract with on-demand procedure has the same defect as a 900-line one.
- **Inline the resident core into every campaign's startup file.** Rejected: it duplicates the contract per campaign and guarantees drift — the failure Decision 064's catalog mirror needed a synchronization test to contain. One resident document, referenced everywhere.
- **Defer to Version 0.3 planning.** Rejected: the split adds no mechanism and changes no obligation, so it is a refinement that may land now under Decision 069, and every session played before it lands runs on a resident layer that is resident in name only.

---

## Decision 071 — The Worlds and Campaigns Index

**Status:** Accepted
**Date:** 2026-07-14
**Related Sections:** Applies Decision 055 (enforcement points) and Decision 064 (rendered catalog) to the Engine Welcome Page listing established by Decision 067; `system/WORLDS_AND_CAMPAIGNS.md`; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` 1.32; `README.md` 1.5; `docs/GAMEPLAY_START_GUIDE.md` 2.15; `tools/validate_repository.ps1`; Decisions 040, 054, 069

### Context

The Engine Welcome Page (Decision 067) renders two things: the runtime-command catalog and a listing of the repository's worlds and campaigns with each campaign's status and latest checkpoint.

Decision 064 gave the first half a rendered source. The command table is duplicated into `README.md` as an exact cold-start mirror, and `tools/test_runtime_command_catalog.ps1` keeps the copies synchronized, precisely so `/help` cannot be answered from memory. The profile states the principle as a section heading: "The Command Table Is Rendered, Not Recalled."

The second half had no source. The profile asked for "a listing of **worlds** (`worlds/`) and **campaigns** (`campaigns/`)" — a directory enumeration, carried by instruction and nothing else. No file names the repository's inventory, and no gate notices when the listing is wrong.

The failure this predicts occurred. A bootstrap reported the repository loaded and rendered a welcome page listing Prototype Alpha and Prototype Beta under Verra. `campaigns/reikon_awakening_001/` — complete, committed, six checkpoints deep, and by the manifest timestamps the **most recently played campaign in the repository** — was absent, along with `worlds/reikon/`. The campaign was not broken, not stale, and not misconfigured. Nothing had looked for it.

The mechanism is worth naming precisely, because the Runtime was not malfunctioning in any way a reader would notice. Its campaign details were accurate: it read ledgers correctly once pointed at them. It simply never enumerated `campaigns/`, and fell back on the only concrete inventory available to it — the example paths in the bootstrap documents, which name `campaigns/prototype_alpha/` and `worlds/verra/` throughout the README boot instructions, the start guide's access list, the first-session prompt, and the Prototype Alpha Quick Start. It recalled the examples and reported them as the inventory. The README's own "Where to Start" world list, which named only Asterra, had been stale since Verra and Reikon were added and contradicted nothing.

This is Decision 055's finding in the one place Decision 064 did not reach: an obligation carried only by instruction does not fire. A player cannot type `/continue reikon_awakening_001` for a campaign the welcome page never showed them.

### Decision

**1. `system/WORLDS_AND_CAMPAIGNS.md` is the rendered source** for the welcome page's worlds-and-campaigns listing, for `/worlds` and `/campaigns`, and for the timestamp comparison `/continue` uses to resolve "most recently played."

**2. It is part of the boot set.** The README boot list names it, so listing the repository's campaigns is an operation performed against a file rather than a directory read a Runtime may skip.

**3. Render every row; never recall the listing.** Not from memory, not from the example paths in the bootstrap documents, not from whichever campaigns happen to be in context. A world or campaign the index lists is never omitted for seeming inactive or stale. Directory enumeration remains correct and permitted — but it is the thing that failed, so the index is the enforcement point.

**4. The index is non-canonical and holds no state.** It records what exists and where, so a player can choose. The campaign's own ledgers govern everything else, and where the two disagree the ledgers win. It carries no identifier and appears in no canon hierarchy, like the player briefing and the Progression Surfacing view.

**5. Enforcement point: `tools/validate_repository.ps1`.** Per Decision 055, this decision names where it is checked. The gate fails when a live campaign or a world has no row, when a row names a directory or checkpoint that does not exist, or when the index is missing.

The gate proves every world and campaign is **listed** and that each row **resolves**. It deliberately does not adjudicate whether a row's status, protagonist, or timestamp is still true — that is a judgment, and automating it would produce a checker that is wrong in interesting cases and trusted anyway. Keeping those current is the writer's obligation at the promotion barrier, which is why the index joins the checkpoint's live target set whenever the latest checkpoint changes.

### Rationale

- It applies the remedy Decision 064 already validated on the other half of the same screen. The command catalog stopped drifting when it gained a rendered source and a synchronization test; the listing had neither.
- It is the shape `system/ID_REGISTRY.md` already establishes: a repository-level index that campaigns must appear in, maintained by the writer, enforced mechanically. The engine has one of these and it works. This is the second, one level up — campaigns rather than identifiers.
- The failure was invisible without a gate. A welcome page listing two of three campaigns looks exactly like a welcome page listing three of three. Nothing errored, no validation failed, and the report read as a clean load. Only a player who knew the campaign existed could detect it — which is what happened.
- Prose at the failing point does not repair the point (Decision 054). The instruction to enumerate `campaigns/` was already there, was correct, and was not followed.

### Consequences

- `system/WORLDS_AND_CAMPAIGNS.md` is added: all three worlds and all three campaigns, each with world, protagonist, status, latest checkpoint, and capture time. It sits beside `ID_REGISTRY.md`, outside the validator's `worlds/`+`campaigns/` canon scan, so it is not mistaken for live canon.
- `tools/validate_repository.ps1` gains the coverage gate. `tools/test_validate_repository.ps1` gains the `unindexed_campaign` fixture reproducing the observed failure, and its assertions move from exit code to specific messages — under the exit-code-only form, deleting the coverage check left the suite green, because the fixture still failed for other reasons.
- The Runtime Profile (1.32) gains "The Listing Is Rendered, Not Recalled" and points the welcome page at the index. `README.md` (1.5) adds the index as boot-set item 7, states that every campaign path in it is an example and never the inventory, and lists all three worlds where it had listed only Asterra. `docs/GAMEPLAY_START_GUIDE.md` (2.15) adds the index to its access list and a troubleshooting entry for the symptom.
- Adding, forking, closing, or checkpointing a campaign, and adding a world, now update the index in the same change. This is a real cost, paid at the promotion barrier, and it is the cost of the listing being true.
- **Class under Decision 069: refinement — mechanical enforcement point. Owning milestone: Version 0.3 — Planning.** The structural test: it adds no Rules section, changes no Data Model text, and introduces no mechanism a world or campaign invokes or builds against. The index is a registry the writer maintains, not an abstraction campaigns are authored against; it imposes no contract on campaign content and a campaign cannot call it. The coverage check enforces an obligation the engine already carries — Decision 067's welcome page must list every world and campaign — which is the same class as Decision 054, whose required-ledger check likewise fails a nonconforming campaign without being a mechanism campaigns invoke.
- The index does not by itself guarantee a Runtime renders it. It makes rendering possible, makes a missing campaign a failing build rather than a silent omission, and removes the stale examples that supplied the wrong answer. Whether substrates render it is evidence the next campaign start provides.

### Alternatives Considered

- **Mirror the listing into `README.md`, as Decision 064 does for the command table.** Rejected. The command table is static; the listing carries checkpoint identifiers and timestamps that change at every save. A README mirror would churn on every session and become the stale copy — reintroducing, in the file a cold-start Runtime trusts most, exactly the drift that caused this failure. The README's role here is reachability, not duplication: it names the index in the boot set, and the dynamic data lives in one place.
- **Keep directory enumeration and strengthen the instruction.** Rejected for the reason Decision 054 gives and this failure demonstrates: the instruction was already correct and already unfollowed. This is the fourth decision against the bootstrap boundary (with 056, 063, 064, 067), and the three that worked moved the enforcement point rather than rewriting the prose at it.
- **Generate the index from the filesystem at validation time and fail on any difference.** Rejected for now. It would remove the maintenance cost, but status, protagonist, and the spoiler-safe framing are judgments not derivable from the directory tree, and a generator that fabricated them would be authoritative and wrong. Recorded as a candidate for Version 0.3 rather than settled here.
- **Per-campaign index files discovered by enumeration.** Rejected: it reintroduces the enumeration that failed, and the welcome page needs one screen, not N files.
- **Treat it as foundational and defer to Version 0.3 ADR design.** Rejected on the structural test — it introduces no mechanism worlds or campaigns build against — and on the evidence: every session started before it lands can silently fail to offer a campaign that exists. Decision 070 landed on the same reasoning as the first disposition of the same technical debt.
- **Fix only the stale README world list and the Prototype Alpha examples.** Rejected: it removes this instance of the wrong answer without giving the listing a source. The next campaign added would be invisible again, and nothing would fail.

---

## Decision 072 — Save Layer Unification

**Status:** Accepted
**Date:** 2026-07-19
**Related Sections:** Version 0.3 milestone 0.3.1; `010_ENGINE_RULES.md` Section 13; `012_ENGINE_RUNTIME.md` Sections 5.4, 6.1; `011_ENGINE_DATA_MODEL.md` Section 1 (identifier registry); `templates/ledgers/900_SAVE_MANIFEST.md`; `tools/validate_repository.ps1`, `tools/test_checkpoint_contract.ps1`; pulls forward PA-008; Decisions 039, 053, 054, 061, 069

**Accepted 2026-07-23** at the Version 0.3 (Runtime & Persistence Hardening) ADR Approval — Architecture Freeze (Decision 048). Drafted 2026-07-19 in ADR Design. Implementation may now proceed against this decision.

### Context

Three incompatible checkpoint forms exist in the repository at once:

- the documented `saves/900_CHECKPOINT_<NNNN>/` directory — full copies of the campaign's canonical ledgers plus a `900_SAVE_MANIFEST.md` (Rules Section 13.3);
- flat `.saves/*.yaml` files written by Reikon's first session — manifest-only, holding no ledger copies;
- an empty `checkpoints/` placeholder directory that is neither.

The drift has already drawn blood. Reikon's original Checkpoint 001 was malformed and unrestorable; its live canon had to be rebuilt from a damaged snapshot, and the rebuild could be verified only because a gameplay transcript happened to survive on the owner's disk (Decision 061). PA-008 recorded the drift and parked it three versions away in Version 0.6; the accepted Version 0.3 scope pulled it forward, because a persistence layer that cannot reliably restore its own checkpoints is precisely what Runtime & Persistence Hardening exists to fix.

Two secondary problems are entangled with the form:

- **Numbering drift.** `900_CHECKPOINT_001` (three digits) sits beside `900_CHECKPOINT_0002` (four digits) in the same campaign.
- **Manifest identifiers are unreferenceable.** The validator excludes `saves/` from its scan (Decision 054 and the 2026-07-14 export/exclusion work), so a `REC-` identifier that exists only inside a manifest has no live definition; citing `REC-000046` from a live ledger failed the gate as a dangling reference. The exclusion does not merely skip snapshots — it makes their contents invisible to referential integrity. Whether a save manifest should carry a registry identifier at all is unresolved.

### Decision

1. **Bless one form.** The canonical checkpoint is the `saves/900_CHECKPOINT_<NNNN>/` directory: a complete copy of every canonical ledger the campaign owns plus one `900_SAVE_MANIFEST.md`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md` and Rules Section 13.3. `<NNNN>` is a four-digit, zero-padded, monotonically increasing ordinal, one sequence per campaign.

2. **Retire the alternatives.** `.saves/*.yaml` and bare `checkpoints/` placeholders are prohibited. A conforming Runtime writes only the directory form.

3. **Repair, don't abandon; every save-point stays continuable.** Every existing checkpoint is made continuable. A conforming checkpoint is kept as-is. A nonconforming checkpoint is **re-issued** — a conforming, validated checkpoint carrying its reconstructed state is produced by re-promotion (Decision 061), and the nonconforming original is retained immutably as evidence and marked *superseded by its re-issue*, never "do not restore." **No save-point is ever abandoned:** every point in a campaign's history keeps a restorable checkpoint. Immutability holds throughout — the original's bytes are never edited (Rules Section 13.2); its status is recorded externally in the campaign's `saves/README.md`. True quarantine — a snapshot with no evidence from which to reconstruct — survives only as a genuine last resort, and no current checkpoint requires it.

4. **Save manifests carry no live-registry identifier.** A manifest is checkpoint-local metadata, not a Persistent Object in live canon: it mints no registry identifier, and live ledgers must not reference a manifest by identifier. A checkpoint is referenced from live canon by its ordinal, label, and capture time — never by a `REC-` id trapped inside the excluded `saves/` tree. This resolves the dangling-reference finding and keeps the validator's `saves/` exclusion sound.

5. **Enforcement.** Extend `tools/test_checkpoint_contract.ps1` with a fixture reproducing the Reikon Checkpoint 0001 failure class — a manifest self-reporting a validation PASS that never ran (the narrated-gate pattern, Decision 054). The form — directory shape, four-digit ordinal, required ledger set, manifest conformance, and the absence of a live-registry id on the manifest — is checked mechanically. A save that does not conform is not a checkpoint.

### Rationale

- The directory form is already the Rules Section 13 documented shape and already has conforming instances (Reikon Checkpoint 0002+, and the `900_SAVE_MANIFEST` template). Blessing it standardizes on what already works rather than inventing a fourth form.
- A checkpoint whose restorability is asserted but never mechanically established is the narrated-gate failure Decision 054 named. The remedy is a mechanical form check, not more prose at the failing point — Decision 054's own lesson.
- Treating the manifest as evidence rather than live canon keeps the validator's `saves/` exclusion coherent, and parallels Decision 061's treatment of exports: snapshots and transcripts establish no live canon and mint no identifiers.

### Consequences

- Rules Section 13 gains an explicit canonical-form statement and the numbering rule. This is **foundational under Decision 069** — it changes a Rules section and sets a form campaigns must satisfy — which is appropriate here, because foundational work is exactly what the Version 0.3 ADR Design stage is for.
- The `checkpoints/` placeholder is removed; any `.saves/*.yaml` is migrated or quarantined.
- Reikon Checkpoint 0001 is not abandoned: the state it was meant to preserve is already re-issued as conforming Checkpoint 0002 (verified against the Session 1 transcript) and restorable there. The broken original is retained immutably as evidence and relabelled *superseded by 0002*, not *quarantined*; its `saves/README.md` entry is corrected to match.
- **Out of scope:** campaign and world *migration procedures* for version mismatches, which remain Version 0.6 (Decision 039). This decision unifies checkpoint *form*, not cross-version migration.
- Owning milestone: **Version 0.3 — 0.3.1 Save Layer Unification.** Class: foundational.

### Alternatives Considered

- **Bless the flat `.saves/*.yaml` manifest-only form.** Rejected: it stores no ledger copies, so it cannot restore state on its own — it is the form that failed.
- **Keep multiple forms and let restoration try each in turn.** Rejected: ambiguity at the exact layer Version 0.3 exists to make reliable. "Restoration tries three shapes" is how an unrestorable checkpoint went unnoticed in the first place.
- **Register manifest identifiers in the live registry.** Rejected: it would require the validator to scan `saves/`, which would then flag every snapshot's copied ledgers as duplicate live definitions — the exact reason the exclusion exists (Decision 054).
- **Defer to Version 0.6 as PA-008 originally scheduled.** Rejected by the accepted Version 0.3 scope: the persistence layer's inability to restore its own checkpoints is the evidence that motivated Runtime & Persistence Hardening.

---

## Decision 073 — Presence and Location Structural Representation

**Status:** Accepted
**Date:** 2026-07-19
**Related Sections:** Version 0.3 milestone 0.3.2; `011_ENGINE_DATA_MODEL.md` Sections 7, 9 (schema 0.1.1 → 0.1.2); `010_ENGINE_RULES.md` Sections 3.10, 13.2; `012_ENGINE_RUNTIME.md` Section 5.4; `templates/ledgers/100_CHARACTER_SHEET.md`, `templates/objects/place.md`; resolves PA-002 (Location Granularity) and the cross-ledger-staleness Technical Debt; Decisions 022, 043, 051, 054, 069

**Accepted 2026-07-23** at the Version 0.3 (Runtime & Persistence Hardening) ADR Approval — Architecture Freeze (Decision 048). Drafted 2026-07-19 in ADR Design. **Foundational under Decision 069** — it changes the Data Model. Implementation may now proceed against this decision.

### Context

Presence — *where an entity is right now* — has no single structural owner, and the redundancy has drawn blood twice. Checkpoint 0005 passed the Repository Validation Barrier with the protagonist recorded as occupying a Rift he had left, seven carried items located in a building he was no longer in, and a restoration entry point that contradicted itself. The Checkpoint 0006 repair then reproduced the defect in the one field it did not reopen.

The cause is not a missing field. It is **too many fields with no designated owner**:

- the Character entity's `canonical_state.location` — structured, required, a typed Location reference (`templates/ledgers/100_CHARACTER_SHEET.md`; Data Model Section 9);
- `180_CURRENT_STATE.md`, which also holds "where the character is now" as prose (Rules Section 13.2);
- the character sheet's free-text `canonical_state.situation`, which restates location narratively — the field that went stale at Checkpoint 0006;
- a Place's `occupants`, read once as presence, which is how a protagonist came to "occupy" a Rift he had left (since disambiguated to standing state, but only as a template comment in `templates/objects/place.md`).

Four representations of one fact, no owner, and a structural validator (Decision 054) that cannot see semantic disagreement between well-formed ledgers. This is the two-representations failure Decision 051 forbids generally, left unaddressed for the one fact that changes every turn.

Two entangled cases sharpen it:

- **PA-002 (Location Granularity).** A Resource's `location` references a settlement rather than a specific premises, and **carried inventory has no representation at all** — a Character is neither a Place nor a container (Section 9 containment points at a container Entity or Resource), so "on person" cannot be expressed. This is exactly what broke at Checkpoint 0005: seven items whose location could not follow their possessor.
- **Cross-ledger staleness** has no enforcement point because presence is prose in one ledger and structured in another, and nothing can compare them.

### Decision

1. **Presence has exactly one structural owner: the entity's `canonical_state.location`.** Every Persistent Entity's current location is the typed Location reference (Data Model Section 9: a Place `ENT-` id or a region descriptor) held in its single Canonical State (Section 7), and nowhere else. This is presence — distinct from `occupants` (standing state), `possession`, and `ownership`.

2. **No other ledger restates presence; they reference it.** `180_CURRENT_STATE.md` **presents and points at** the protagonist's `canonical_state.location`; it does not own it or restate it as authoritative prose (Rules Section 13.2 amended). The `situation` field is narrative circumstance only and is never the location of record.

3. **`occupants` is standing state, never presence** — elevated from a template comment to a normative Data Model statement: it records controllers, residents, or contained entities, never who is present now.

4. **Carried inventory is presence-by-possession, derived not duplicated.** A carried Resource's `canonical_state.location` takes the form *carried by `<possessor ENT->`* (a new Location form in Section 9); its physical presence is the possessor's `canonical_state.location`, resolved through the possessor rather than stored independently. This resolves PA-002's "on person" case without giving a Character container-hood or adding a building subsystem.

5. **The invariant becomes mechanical.** The Repository Validation Barrier (Runtime Section 5.4; Decision 054) checks: each entity has exactly one current location; no ledger asserts a location for an entity except through that entity's own Canonical Record; and a carried Resource names an existing possessor and asserts no place contradicting the possessor's location. "A character is in exactly one place, and every ledger that says otherwise is stale" is now a gate.

### Rationale

- The owning field already exists and is required; this designates it as sole owner rather than inventing a representation. The net change mostly *removes* competing representations (Decision 051), which is why it is smaller than "add a presence model."
- It resolves PA-002 as a **representation** question — one owner plus an on-person form — not a **granularity** question. Granularity (settlement vs premises vs room) is unchanged: presence is owned at whatever granularity the world already models. No building subsystem, no coordinates, no travel graph.
- Presence-by-possession keeps a carried item single-sourced: it moves when its possessor moves, with nothing to update and nothing to drift.
- It gives the cross-ledger-staleness gate the structured ground truth it lacked, making the check the roadmap named "not implementable against the current model" implementable.

### Consequences

- **Data Model change (foundational; schema 0.1.1 → 0.1.2).** Sections 7 and 9 formalize presence as the single-owner `canonical_state.location`, distinct from occupancy and possession, and add the *carried-by* Location form. A schema increment is mandatory for any Data Model change (Section 12.2) and is recorded as the Campaign Schema version in the save manifest (Section 13.3), so a restored older checkpoint surfaces the mismatch (Section 13.5). This interacts with 0.3.2's save-compatibility work and the World Rule Profile freeze (Decision 072 and milestone 0.3.3).
- **Rules change (foundational).** Section 13.2: the current-state ledger presents, does not own, location. Section 3.10 cross-reference: location is canonical state on the entity's own record.
- **One-time migration (0.3.2 scope).** Existing campaigns hold location in `canonical_state.location`, in `180` prose, and in `situation`. Migration makes `canonical_state.location` authoritative, converts `180` to a pointer, and scrubs location from `situation`. This is a structural migration performed under Version 0.3, distinct from the automatic cross-version migration reserved for Version 0.6 (Section 13.6), and is entangled with Decision 072's checkpoint migration; the two should be sequenced together.
- **Enforcement cost.** The validator gains a presence check; every campaign write carries one more mechanical gate, which is the cost of the invariant being true.
- Owning milestone: **Version 0.3 — 0.3.2 Presence and Location Structural Representation.** Class: foundational.

### Alternatives Considered

- **Make `180_CURRENT_STATE.md` the structured owner of location.** Rejected: `180` is a per-campaign operational ledger owning no persistent objects (PA-004, `subjects: []`), and only the protagonist has one. Presence must be owned uniformly for every entity — NPCs and resources included — which only each entity's own Canonical State provides.
- **Give Characters container-hood so containment expresses "on person."** Rejected: it overloads the Place/container model onto an entity that is neither and invites the building/room subsystem PA-002 explicitly defers. Presence-by-possession reuses the possession reference (Decision 022) already in the model.
- **Add coordinates or a spatial graph.** Rejected: out of scope and unjustified by play. The failure was two representations of one fact, not insufficient granularity.
- **Leave it in Technical Debt and enforce by prose.** Rejected on Decision 054's own lesson: prose at a failing point does not repair the point. The `occupants` disambiguation is prose today, and prose is why the gate cannot fire. Only a single structured owner makes the check mechanical.
- **Treat it as a refinement.** Rejected on the structural test (Decision 069): it changes the Data Model, so it is foundational and belongs to 0.3 ADR design, which is where it sits.

---

## Decision 074 — World Rule Profile Consolidation and Freeze

**Status:** Accepted
**Date:** 2026-07-19
**Related Sections:** Version 0.3 milestone 0.3.3; `010_ENGINE_RULES.md` Section 14 (14.1–14.5, new 14.6) and Sections 13.3, 13.5; `012_ENGINE_RUNTIME.md` Section 6.2; `worlds/reikon/206_WORLD_RULE_PROFILE.md`; `templates/ledgers/900_SAVE_MANIFEST.md`; `tools/test_checkpoint_contract.ps1`, `tools/test_reikon_runtime_contract.ps1`; consolidates Decisions 059 and 062 (not reopened); Decisions 048, 053, 054, 069

**Accepted 2026-07-23** at the Version 0.3 (Runtime & Persistence Hardening) ADR Approval — Architecture Freeze (Decision 048). Drafted 2026-07-19 in ADR Design. **Foundational under Decision 069** — it changes Rules Section 14 and the Section 13.3 manifest contract. It does not reopen Decisions 059 or 062, which remain Accepted immutable history. Implementation may now proceed against this decision.

### Context

Rules Section 14 (World Rule Profiles) arrived through Decisions 059 and 062 against a released version and is classified foundational, owned by Version 0.3 (Post-0.2 Decision Record). It has exactly one client, no freeze point, and save compatibility that depends on a version the engine does not stabilize. The Reikon 0.1 changelog said it plainly: the profile "needs a freeze point before its version can be trusted for save compatibility under Decision 059."

The gap is concrete. Reikon's profile is at version 0.6, `Status: Active` — an unfrozen workshop draft. Its checkpoints were captured under six successive profile versions (0002 under 0.1, through 0011 under 0.6), and the current manifest already records one:

```
world_rule_profile: "Reikon 0.6 (RKO-OVR-001, RKO-OVR-002)"
```

Three things are missing:

1. **The manifest field is not required and not structured.** Rules Section 13.3's version list names Engine, World, Campaign Schema, and Save Format — not the profile. The profile version is recorded only by template convention, as free text, so nothing can compare it mechanically.
2. **There is no freeze.** "Reikon 0.6" is mutable. A checkpoint recorded under it has no guarantee that 0.6's behavior will not change beneath it — which is exactly what makes the recorded version untrustworthy for restoration.
3. **The mismatch check is narrated, not enforced.** Rules Section 14.4 already says the Runtime stops at the readiness gate on an incompatible profile, and `saves/README.md` documents each checkpoint's profile and migration path — but nothing mechanical checks it. It is the narrated-gate pattern (Decision 054) one layer up.

### Decision

1. **Profile version is a required, structured element of the save-compatibility record.** Rules Section 13.3's version block gains **World Rule Profile version** as a required field, in a structured, comparable form (world identifier plus version) alongside Engine, World, Campaign Schema, and Save Format. A world with no profile records that absence, which is meaningful, not a failure (Section 14.5).

2. **Profile versioning and freeze semantics are defined (new Rules Section 14.6).**
   - A profile declares a version and a **compatibility status**: *workshop draft* (mutable, not save-trustworthy) or *frozen* (immutable behavioral contract at that version).
   - A **frozen** profile version does not change. Changing any declared override behavior requires a new version. This is what makes a checkpoint's recorded profile version trustworthy on restoration.
   - A version increment is classified, as the engine's own changes are (Decision 069): **additive** (declare-only, backward-compatible — a restored older checkpoint needs no recomputation) or **migrating** (changes how existing state settles — restoration requires an explicit migration). Reikon already practiced this distinction ad hoc: 0.3→0.4 was declare-only; 0.2→0.3 changed how Health settled.
   - A workshop-draft profile may still be played, but every checkpoint captured under it carries an explicit *unfrozen — not save-trustworthy* compatibility warning.

3. **The save-compatibility rule is enforced, not narrated.** On restoration the Runtime compares the checkpoint's recorded profile version against the world's current profile version. A mismatch — or a checkpoint recorded under an unfrozen version — is surfaced explicitly and halts at the readiness gate (Rules Sections 14.4, 13.5, 13.6), never silently resolved. A checkpoint contract test asserts that every manifest records a structured profile version (or a structured no-profile marker) and that the world's active profile declares a version and freeze status.

4. **The Section 14 override contract is consolidated and stabilized.** With Reikon exercising 14.2's required-field contract through `RKO-OVR-001` and `RKO-OVR-002`, Sections 14.1–14.5 are confirmed complete and frozen as Version 0.3 architecture; 14.6 adds versioning and freeze. Decisions 059 and 062 are not reopened.

### Rationale

- Save compatibility already depends on the profile version; the only question is whether that dependency is trustworthy and checkable. Making the field required and structured, and the version freezable, closes the gap the changelog named without inventing a mechanism.
- The additive/migrating distinction is not new — Reikon invented it per-migration under pressure. Formalizing it at the engine level makes every future profile change declare its restoration cost up front.
- Enforcing the mismatch check mechanically applies Decision 054's lesson to the one place Section 14 left as prose. Reikon's six-version history is the evidence that the check matters: it has already surfaced and migrated five mismatches by hand.
- Freezing does not slow world authoring. A world keeps a workshop-draft profile while it iterates; freeze is the act that makes its saves durable, exactly as the engine's own per-version freeze does.

### Consequences

- **Rules change (foundational).** Section 13.3 gains the required profile-version field; new Section 14.6 defines versioning, freeze status, the additive/migrating classification, and the enforced mismatch rule. Runtime Section 6.2's version-mismatch surfacing extends to the profile version.
- **Reikon becomes the first conformance fixture (world authoring, no ADR).** Reikon adopts the structured version field and declares a freeze status for its current version. Freezing Reikon's own content is world authoring (Decision 062) and consumes no engine decision. **The milestone text naming "Reikon 0.3" as the first frozen profile is stale** — Reikon advanced to 0.6 during play; the roadmap milestone is corrected to freeze at the current version.
- **Interaction with Decisions 072 and 073.** The profile version joins the manifest version block that Decision 072 unifies; sequence together. Decision 073 bumps Data Model 0.1.1→0.1.2, and a profile also declares Data Model compatibility (Reikon's header reads "Data Model 0.1.1"); a checkpoint under schema 0.1.1 restored after 073 lands surfaces the schema mismatch — the same mechanism this decision enforces on the profile axis.
- **Immutability.** Existing checkpoints already record the profile as free text and cannot be edited (Rules Section 13.2); their profile versions remain documented in `saves/README.md`. The required structured field applies to new checkpoints, as with Decision 072's form migration.
- **Enforcement cost.** The checkpoint contract test gains a profile-version assertion — one more mechanical gate per checkpoint.
- Owning milestone: **Version 0.3 — 0.3.3 World Rule Profile Consolidation and Freeze.** Class: foundational.

### Alternatives Considered

- **Leave the profile version as a free-text convention.** Rejected: it is recorded but not comparable, so the mismatch check stays a narration — the exact failure this milestone exists to fix.
- **Require every profile to reach 1.0 before it can be frozen.** Rejected: the engine itself is pre-1.0 and treats each version as effectively frozen for compatibility. Tying profile freeze to a 1.0 milestone would bar Reikon from durable saves for no structural reason. Freeze is a per-version property, not a maturity gate.
- **Freeze Section 14 without adding versioning.** Rejected: freezing the contract while leaving the client's version mutable fixes the wrong layer. The untrustworthy thing is the profile version a save records, not the shape of the override contract.
- **Defer the whole thing to a later version.** Rejected: save compatibility is unreliable now, Reikon has six checkpoints depending on it, and Runtime & Persistence Hardening is the version whose thesis is reliable restoration.
- **Treat as a refinement.** Rejected on the structural test (Decision 069): it changes Rules Section 14 and the Section 13.3 contract. Foundational, 0.3 ADR design.

---

## Decision 075 — Command Surface Settlement: No Foundational Change

**Status:** Accepted
**Date:** 2026-07-20
**Related Sections:** Version 0.3 milestone 0.3.4; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Runtime Command Interface); `docs/AI_GAMEPLAY_RESIDENT_CORE.md`; `README.md` (cold-start catalog); `tools/test_runtime_command_catalog.ps1`; Decisions 056, 063, 064, 067, 069, 070, 071

**Accepted 2026-07-23** at the Version 0.3 (Runtime & Persistence Hardening) ADR Approval — Architecture Freeze (Decision 048). Drafted 2026-07-20 in ADR Design. This decision is the assessment the milestone required, and its conclusion is to **drop the structural change rather than make one**. Refinement under Decision 069 — it changes no Rules section, no Data Model, and no command mechanism; it records a classification and closes milestone 0.3.4.

### Context

Milestone 0.3.4 asked whether the command *model* — not its documentation — is over-specified, and the roadmap set the honest bar: "the smallest and least certain of the three. If evidence does not support it at ADR Design, it should be dropped rather than padded."

The milestone exists because one bootstrap verb consumed six decisions (056, 063, 064, 067 on the argumentless-welcome boundary; 068 on Reikon `/system`; 071 on the listing), and the open question was whether that cost sits in the command surface itself. The evidence says it does not.

### Assessment

1. **The command model is already minimal.** Decision 056 defines commands as **thin dispatchers over procedures that already exist** — `/save` is the Save Algorithm, `/continue` is Restoration — operational and not normative, adding no engine mechanic and living in the Runtime Profile rather than `012`. There is no structural over-specification to remove: the surface is roughly nineteen verbs mapping one-to-one onto operations players perform every session, ordinary for a save/load/branch/export/status control surface.

2. **The churn's causes were residency and listing-source, not surface size.** Decision 070's own analysis names them: the four bootstrap decisions "each added prose to the fetched layer and hoped it would fire," the defect Decision 055 predicts. Decision 070 removed that cause structurally (the resident layer became its own document); Decision 071 removed the same cause on the listing half (the index became a rendered source). The verb churned because an obligation sat only in fetched prose — a *siting* fault, already fixed — not because the command model was wrong.

3. **The "no ADR to change a command" target is already met** for the classes that warrant it. `/length` was added on 2026-07-19 as a clean `/debug`-class display toggle, recorded as a Decision 069 refinement with **no ADR and no decision number consumed**. The mechanism the milestone wanted already works in practice.

### Decision

1. **No foundational change to the command model.** Milestone 0.3.4 delivers no ADR that alters the command surface, its dispatch model, or its namespace. The model (Decision 056) is confirmed as Version 0.3 architecture, unchanged.

2. **Record the command-change classification** — a refinement making explicit what `/length` already practiced, so future command work does not spawn ADRs:
   - **Refinement (no ADR):** adding or changing a command that is a thin dispatcher over an existing procedure, or a display/preference toggle (the `/debug`, `/length`, `/status` class). It needs only the catalog-synchronization test (`tools/test_runtime_command_catalog.ps1`) and a changelog entry.
   - **Foundational (ADR required):** a command that introduces new bootstrap semantics, a new mutation or promotion barrier, or a change to the reserved-namespace/precedence rule (Decision 056 point 3).

3. **Empirical verification folds into 0.3.5.** Whether per-boot compliance actually improved is not answerable at a desk — the roadmap already says "the next prototype campaign is the evidence." The 0.3.5 prototype must exercise the command surface (the bootstrap no-target gate; `/save`, `/load`, `/branch`, `/restart`) and confirm it survives without a new decision. Failure there reopens this milestone with evidence in hand.

4. **Milestone 0.3.4 is closed by drop.** It is not renamed to manufacture work, and 0.3.5 is not renumbered.

### Rationale

- The assessment is the deliverable. The roadmap pre-authorized dropping this milestone precisely so it would not be padded into a change the evidence does not support.
- Confirming Decision 056 unchanged, and naming the change-classification for commands, converts an open question into a closed rule at zero architectural cost — the outcome a settlement should produce when the surface turns out to be sound.
- Deferring the empirical half to 0.3.5 is not evasion: it is where the roadmap already located the evidence, and 0.3.5 exists to run exactly that prototype.

### Consequences

- Roadmap milestone 0.3.4 is marked assessed and closed without a foundational ADR; its verification is added to 0.3.5's prototype. The bootstrap-churn Technical Debt entry is dispositioned: cause identified (residency/listing-source), removed (Decisions 070/071), residual question empirical (0.3.5).
- The command-change classification is the command-specific case of Decision 069's change-classification. No document gains a new mechanism.
- Version 0.3's foundational ADR set is 072, 073, and 074; this decision records the fourth milestone's disposition as a refinement, keeping the milestone honest without padding it.
- Class under Decision 069: **refinement.** Owning milestone: Version 0.3 — 0.3.4.

### Alternatives Considered

- **Force a structural command-surface reduction.** Rejected: there is nothing over-specified to reduce. The model is already thin dispatchers with a reserved namespace; cutting verbs would remove operations players use, not complexity.
- **Introduce a command-plugin or registration framework.** Rejected as padding: it adds a mechanism to a surface whose problem was never mechanism. Decision 056 is deliberately convenience-over-procedure, and a framework would re-normativize what `012` keeps substrate-facing.
- **Keep 0.3.4 open and defer the judgment.** Rejected: the assessment is answerable now, and leaving the milestone open is the indefinite-hardening failure mode Decision 048 exists to prevent — on the one milestone the roadmap pre-authorized dropping.
- **Elevate the classification to a full ADR-worthy mechanism.** Rejected: it documents existing practice (`/length`) rather than creating a rule, so it is a refinement, consistent with how the classification gate itself (Decision 069) treats such records.

---

## Decision 076 — Relationship Texture: Preserving Characterization Across the Promotion Barrier

**Status:** Accepted — **Version 0.3 by owner ruling (2026-07-25)**, as an explicit, recorded exception to the completed Architecture Freeze
**Date:** 2026-07-25
**Related Sections:** `011_ENGINE_DATA_MODEL.md` Sections 10 and 12.4.1 (Relationship; schema 0.1.2 → 0.1.3); `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (Turn-State Settlement); `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Gameplay Close step 3, Session Export, Automatic Context Preservation); `010_ENGINE_RULES.md` Sections 2.1, 2.8, 5.6; `tools/validate_repository.ps1`; Decisions 042, 048, 054, 055, 061, 069

### Context

The engine's persistence machinery is exhaustively rigorous about quantities and casual about people. Both halves of that sentence are demonstrable in the same campaign, at the same checkpoint.

`011_ENGINE_DATA_MODEL.md` Section 10 defines a Relationship as four things: `Endpoints`, `Type`, `Qualities`, and `State`. Every example the schema gives for `Qualities` is institutional — *"trust, rivalry, obligation; governance quality and legitimacy band; diplomatic quality; membership rank"* — sourced from Rules Section 9 (membership) and Section 10 (governance and diplomacy). The vocabulary is correct for what it was built to model: factions, offices, treaties, and ranks. It contains no slot for **how two characters behave toward one another**.

This is not a Runtime failure. A Runtime filling a Relationship object writes what the schema asks for, and the schema does not ask. The texture is not lost in transit — **it is never requested.**

The observed instance. In `campaigns/gatefall_pendragon_001/`, a personal relationship formed across one session between the protagonist and a crew mender and was promoted at the barrier as `REL-000066`. Its `type`, `qualities`, `state`, and `history` fields were written correctly and completely; `tools/validate_repository.ps1` and `tools/test_checkpoint_contract.ps1` both passed clean at two successive checkpoints. The entire physical and romantic content of the relationship was preserved as the phrase *"a personal and physical relationship,"* and its manner as nothing at all.

What a restoring session would have inherited: that the two are together. What it would have lost: that they tease constantly and neither wins; that "mage" reliably offends him and "mender" is a correction he has clearly made before; that his tell is his hands; that his dryness is armor and stops working around this one person; that the protagonist is cold with the entire rest of the crew and unguarded only here; that the protagonist began a sentence he could not finish and the other man deliberately let it go. A Runtime restoring from that checkpoint would not have played these two characters wrong so much as **played two different characters entirely**, correctly, from an accurate file.

The loss is invisible by construction. A relationship recorded as a role label looks exactly like a relationship recorded well — both are well-formed, both resolve, both pass every gate. Only a player who was present can detect it, which is what happened: the omission surfaced because the player asked how the relationship had been stored, thirteen checkpoints into the campaign.

Four mechanisms compound:

1. **Compression is asymmetrically lossy.** Every promotion summarizes. Discrete state survives summarization unchanged — `Level 7` compresses to `Level 7`. Manner is texture, and texture is exactly what summarization removes. Across N checkpoints, mechanical fidelity holds constant while characterization decays monotonically toward a role label.
2. **Completeness is defined as coverage, never fidelity.** The Save Algorithm derives the target set from the session's events and requires every named ledger be opened and read back — a genuinely strong rule against the failure it addresses. It asks *which files changed*. It never asks *what kind of content survived*.
3. **The one rule that covers this fires late and aims elsewhere.** Gameplay Close step 3 requires capturing *"qualitative evolution of existing relationships... if an NPC showed compassion, provided mentorship, took a risk for the character, or changed their stance."* Correct and real — but it lives in the fetched layer, is consulted at close, and governs **stance** (did the relationship change direction?) rather than **manner** (how is it expressed?). Stance is a scalar the existing `qualities` field already holds. Manner is the thing lost.
4. **The resident core has no characterization analogue to Turn-State Settlement.** That section is emphatic that tracked state settles every exchange — *"If the player has to ask whether mana recovered or XP was earned, the prior exchange failed settlement."* Nothing carries the equivalent obligation for the exchange in which a character reveals how they behave. An NPC's first unguarded laugh is as canon-bearing as fifty-seven points of damage, and only one of the two has a settlement rule.

This is Decision 055's finding in a layer neither 055 nor 054 reached. Those decisions established that an obligation carried only by instruction does not fire, and moved enforcement to a named point. Here the obligation is not merely unenforced — it was never expressed, because the schema had no field to express it in.

### Decision

**1. `011_ENGINE_DATA_MODEL.md` Section 10 gains a fifth Relationship field: `Texture`.**

```text
Endpoints    exactly two Entity IDs
Type         the kind of relationship
Qualities    e.g. trust, rivalry, obligation; governance quality
             and legitimacy band; diplomatic quality; membership rank
State        the relationship's own current state and history
Texture      how these two behave toward one another — the manner a reader
             of Type, Qualities, and State alone would get wrong
```

`Texture` is defined by the question it answers, not by an enumerated vocabulary. It is **optional for institutional relationships** (a membership or jurisdiction link has no manner worth recording) and **required for relationships between two Characters** where play has established one. It records observable behavior — habits, verbal patterns, physical tells, what each does that they do with nobody else — and never interior state the Player Intent Domain reserves to the player.

**2. Characterization settlement becomes a resident per-turn obligation.** `docs/AI_GAMEPLAY_RESIDENT_CORE.md` gains a short companion to Turn-State Settlement: when a resolved exchange establishes *how* a character behaves — a verbal tic, a physical habit, a first-time gesture, a pattern broken — that becomes a tracked pending promotion target in the same way XP does, rather than something reconstructed from memory at the barrier. The test mirrors the existing one: if a returning session has to invent how two established characters speak to each other, the prior promotion failed settlement.

**3. Character firsts are named triggers.** The engine already treats firsts as significant — first kill, first threshold crossed, System onset. Character firsts join them: the first time an NPC laughs, initiates contact, is visibly disarmed, or acts against their own established pattern. These are the moments that survive when they are noticed and vanish when they are not, and noticing is currently unassigned.

**4. Enforcement point: `tools/validate_repository.ps1`, as a coverage check only.** Per Decision 055 this decision names where it is checked. The gate fails when a Relationship whose endpoints are both Characters, and whose type is not institutional, carries no `Texture`.

The gate proves the field is **present**. It deliberately does not adjudicate whether the content is any good — that is a judgment, and a checker that scored prose quality would be wrong in interesting cases and trusted anyway. This is the same line Decision 071 draws for the index: coverage is mechanical, currency is the writer's obligation at the promotion barrier.

**5. `/export` fires automatically on the Context-Preservation Barrier.** The gameplay transcript already ranks **above** canonical ledgers in the canon hierarchy (Rules Section 2.1), on the grounds that it reflects what actually happened while a ledger may be stale, and Decision 061 established that it cannot be regenerated from canon. It is nonetheless the only durable artifact the engine never writes on its own. When the resident Context-Preservation Watch invokes the Save Algorithm, it invokes Session Export in the same operation.

### Rationale

- **The schema is the prompt.** A Runtime fills the fields it is given. Every prior fix in this family moved an enforcement point because the instruction was already correct and unfollowed (Decisions 054, 055, 064, 071); this one is different in kind, because there was no instruction to follow and nowhere to put the answer. Adding the slot is most of the remedy.
- **The evidence is a passing checkpoint, not a failing one.** Nothing errored. Two validators passed twice. The defect is undetectable from inside the system, which is precisely the profile of the failures this engine has historically taken most seriously.
- **It matches the engine's stated purpose.** *"History is not written for the player. The player becomes part of history."* The engine models damage with a formula, XP with a table, and injury with a four-tier taxonomy carrying a healing clock and a treatment-interaction model. The people through whom that history is actually experienced get a free-text field with institutional examples. The asymmetry is not defensible on the engine's own terms.
- **The transcript rule already exists and is simply not wired.** Rules Section 2.1 ranks it tier 2; Decision 042 excluded it from durability only because it was volatile; Decision 061 removed the volatility. `campaigns/gatefall_pendragon_001/` nonetheless reached thirteen checkpoints with zero exports. The artifact the hierarchy trusts most is the one the engine is least diligent about writing.

### Consequences

- **Class under Decision 069: foundational.** The structural test is unambiguous — the diff changes `011_ENGINE_DATA_MODEL.md`, which that decision names as sufficient on its own, and it introduces an engine-general field that every world's Character relationships must satisfy. By that test it belongs to a later version's Planning stage, and this decision was drafted as Proposed against Version 0.4 on exactly that ground.

- **Owner ruling, 2026-07-25: accepted into Version 0.3 as an explicit exception to the Architecture Freeze.** The exception is recorded rather than reasoned away, because Decision 069 exists precisely to stop a change from talking itself out of its own classification. The classification stands: this *is* foundational. What the owner ruled is that it should land anyway, on three grounds.

  First, **domain fit.** Version 0.3 is *Runtime & Persistence Hardening*. The defect is that characterization does not survive the promotion barrier — a persistence-hardening defect in the version whose entire declared subject is persistence hardening. Deferring it would move the one piece of work most squarely inside 0.3's theme out of 0.3.

  Second, **the deferral target is not ready.** Version 0.4 currently holds Governance & Society at *accepted placement, scope unapproved*, alongside an unresolved number collision with Magic Framework. Landing a persistence decision there would require settling an unrelated placement question first, and would file this work under a domain it has nothing to do with.

  Third, **the cost of waiting is silent and ongoing.** Every session played before this lands promotes relationships through a schema with no slot for manner, and the loss is undetectable from inside the system — two validators pass over it. Unlike most deferred architecture, the interval is not neutral; it accrues damaged records that later back-filling can only partly reconstruct.

  This is an owner exception to a governance gate, not a reinterpretation of it. Decision 069's test is unchanged and still binding on every future change; a subsequent foundational change may not cite this ruling as precedent for self-classifying, because this ruling does not reclassify anything — it overrides a correct classification, in the open, with reasons.

- Points 2, 3, and 5 are individually refinement-class and could have landed alone — but points 2 and 3 have nothing to settle *into* without the field, and point 4 cannot check a field that does not exist. Splitting them would ship the obligation without the destination. They are implemented together.
- **Data Model change and migration.** `Texture` is additive, but adding it changes the Data Model and therefore advances the schema from **0.1.2 to 0.1.3**. Live mutable records are retagged; established non-institutional Character relationships retain authored texture or receive an honest *not recorded* marker where no evidence survives. Immutable checkpoints remain byte-unchanged at their captured schema. Restoring any 0.1.2-or-earlier checkpoint surfaces the Campaign Schema mismatch, migrates the restored mutable graph explicitly at readiness, and validates it before play. The migration consumes no fictional time and allocates no identifier (`011_ENGINE_DATA_MODEL.md` Section 12.4.1).
- The cost is paid at the promotion barrier, per relationship, by the writer — the same cost shape as Decision 071's index. It is larger than the index's, because manner takes more words than a checkpoint identifier.
- `REL-000066` in `campaigns/gatefall_pendragon_001/` carries a `texture` field written ahead of this decision, as the worked instance the proposal is drawn from. It is evidence, not precedent, and does not constitute adoption.
- Automatic export changes the write profile of a session: transcripts are large and accumulate per campaign. Retention and rotation are open questions this decision does not settle.

### Alternatives Considered

- **Strengthen Gameplay Close step 3 to ask for manner as well as stance.** Rejected on the reasoning Decision 054 gives and this failure demonstrates twice over. The instruction would be correct, would live in the fetched layer consulted once per session, and would have no field to write into. This is the "repair the prose at the failing point" move that three prior decisions in this family rejected.
- **Record manner on the Character entity rather than the Relationship.** Rejected: manner is not a property of a person, it is a property of a pair. The mender is dry with everyone and disarmed by exactly one person; filing that under his entity makes it a general trait and loses the asymmetry that is the entire content. Rules Section 5.6 already sites relational qualities on the relationship for the same reason.
- **Rely on `/export` alone and leave the schema untouched.** Rejected as insufficient, though the export is genuinely the strongest backstop and is adopted here as point 5. A transcript is a primary record a *reader* can reconstruct from; the ledgers are what a *restoring Runtime* actually loads at session start. Requiring every resumption to read a full transcript defeats the purpose of having canonical state at all.
- **Add a quality score or rubric the validator can check.** Rejected. It would produce a gate that is confidently wrong about prose and trusted anyway — the failure mode Decision 071 names when it declines to adjudicate row currency, and the reason point 4 is deliberately a presence check.
- **Extend `Qualities` with characterization examples instead of adding a field.** Rejected as the weaker version of the same change. `Qualities` is load-bearing for governance, legitimacy, and membership rank across Rules Sections 9 and 10; overloading it with manner would blur a field that institutional simulation reads structurally, and would still change the Data Model — paying the foundational cost without gaining a clean slot.
- **Treat it as refinement and land it inside 0.3.** Rejected on Decision 069's structural test, which exists precisely to stop a change from self-declaring its own class in its own Alternatives section. The diff touches the Data Model. That settles it, regardless of how badly the gap wants fixing.

---

## Decision 077 — Distinct Game and Repository Dates in Provenance

**Status:** Accepted — **Version 0.3 by owner ruling (2026-07-26)**, as an explicit foundational exception produced by the live prototype
**Date:** 2026-07-26
**Related Sections:** `011_ENGINE_DATA_MODEL.md` Sections 8.2 and 12.4.2; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` Save Algorithm; `templates/`; `tools/validate_repository.ps1`; Decisions 069, 072, 076

### Context

Gatefall advanced its fictional calendar beyond the repository session date. Several
live records then serialized the fictional clock as `record_time`, including dates
that had not yet occurred in reality. The earlier names `event_time` and
`record_time` described roles but did not name their domains, making a mechanically
well-formed provenance envelope capable of carrying chronologically impossible
repository provenance.

This is the same root cause that originally dated Decision 076 from the game clock.
Correcting isolated timestamps would leave the ambiguity that produced them.

### Decision

Data Model 0.1.4 renames the serialized provenance fields:

```text
event_time  → game_date
record_time → real_date
```

`game_date` is the in-world time of the represented event. `real_date` is the actual
repository write date/time and must never be derived from the campaign clock. An
honest date-only value is permitted when exact real clock time cannot be recovered.

Save manifests use the same vocabulary: `save_identity.game_date` and
`save_identity.real_date`. The validator requires both fields on live Persistent
Objects and rejects the legacy keys there.

### Migration and Compatibility

All mutable live Persistent Objects and Canonical Records are retagged from 0.1.3
to 0.1.4 and their provenance keys renamed. Genuine old repository timestamps are
preserved. Demonstrably game-derived future values are replaced only to the
precision supported by repository evidence.

Immutable checkpoints remain byte-unchanged with their captured schema and legacy
field names. A restore treats them as historical input and runs the applicable
schema chain through 0.1.4 against mutable live state at readiness before
validation and play. The migration consumes no fictional time, allocates no
identifier, and changes no fictional event.

### Consequences

- **Class under Decision 069: foundational.** It changes the universal provenance
  contract in the Data Model.
- **Owner ruling:** accepted into Version 0.3 because it is direct prototype
  evidence of a persistence/provenance defect. The classification is not weakened
  and creates no general exception precedent.
- Data Model advances **0.1.3 → 0.1.4**. Engine Version remains 0.2.0.
- Templates, current bindings, manifests, validator expectations, and validation
  evidence advance consistently.

---

## Decision 078 — Canonical Campaign Clock and Automatic Recovery Settlement

**Status:** Accepted
**Date:** 2026-07-26
**Related Sections:** `012_ENGINE_RUNTIME.md` Section 2.4; `docs/AI_GAMEPLAY_RESIDENT_CORE.md` Turn-State Settlement; `worlds/gatefall/206_WORLD_RULE_PROFILE.md` 1.13 Sections 5.2 and 6.1.1; Decisions 065–066, 074, 077

### Context

Gatefall play exposed a settlement failure already prohibited in principle but not
made durable in state. Mana recovery had an exact formula and the resident Runtime
required it after elapsed fictional time, yet the campaign stored only prose such
as “late night” and no last-settled anchor or fractional carry. The next narrator
therefore recalculated recovery only when the player asked, after later actions
could already have read stale Mana. Gatefall also had a numeric Health pool but no
natural Health-recovery magnitude, so automatic Health recovery was genuinely
unauthored.

This is direct Version 0.3 prototype evidence. The owner explicitly approved an
exact canonical clock, deterministic carry, automatic per-turn settlement, and a
Gatefall natural-Health rule. Under Decision 069 the durable clock is foundational
because it introduces an engine-general mechanism. It is admitted to milestone
0.3.5 by the same owner-governed exception used for Decisions 076 and 077.

### Decision

1. A world with a deterministic time-based rule must keep an exact canonical
   campaign-time anchor at that world's declared precision and timezone/calendar.
2. Every resolved span records or derives its elapsed fictional duration, settles
   from the previous anchor through the new anchor, and advances the anchor before
   the next action reads tracked state.
3. World-declared fractional carry is canonical. Dividing one fictional span
   across different response boundaries must produce the same result.
4. Settlement occurs after every action, transition, montage, travel span, wait,
   or sleep that advances time. `/system`, `/save`, session close, and player
   correction may read or promote settlement but never trigger it for the first
   time.
5. A Runtime does not invent elapsed time hidden by vague prose. It establishes
   the new exact anchor as part of narrating the span; if canon supports only a
   range, it must stop before a time-dependent next action until the anchor is
   resolved.
6. Gatefall Profile 1.13 records the clock, Mana/Health recovery modes, and exact
   fractional remainders. Mana retains its existing active/resting rates. Natural
   Health recovery is 25% of maximum Health per eight hours of safe rest, half
   that rate during safe light activity, and paused during combat, threat,
   strenuous exertion, or unstable conditions. Health and injury severity remain
   independent axes.
7. Existing immutable checkpoints are unchanged. Restoring a pre-1.13 Gatefall
   checkpoint migrates mutable live state at readiness: establish the most precise
   supported clock anchor, preserve current pools, initialize remainders to zero
   unless durable evidence supports more, and settle only fictional time that
   occurs after that anchor.

### Consequences

- Engine Version and Data Model remain 0.2.0 and 0.1.4. The engine mechanism is
  normative Runtime behavior; the serialized recovery fields are world-declared
  Character extensions.
- The Gameplay Resident Core and fetched Runtime Profile advance together, and
  Gatefall advances from frozen Profile 1.12 to frozen Profile 1.13.
- Runtime contract tests must prove that recovery settles without a status request
  and remains invariant across equivalent response partitions.

---

## Decision 079 — Event-Declared Counter Deltas: Making Stored Counters Reconcilable

**Status:** Accepted — **Version 0.3 by owner ruling (2026-07-27)**, as an explicit foundational exception produced by the live prototype
**Date:** 2026-07-27
**Related Sections:** `011_ENGINE_DATA_MODEL.md` Sections 2.4 and 12 (Event; schema 0.1.4 → 0.1.5); `012_ENGINE_RUNTIME.md` Sections 5.3 and 5.4; `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (Turn-State Settlement step 4); `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Save Algorithm step 3); `tools/validate_repository.ps1`; `tools/test_checkpoint_contract.ps1` (Contract 8); `worlds/gatefall/206_WORLD_RULE_PROFILE.md` Section 7.4; Decisions 051, 054, 055, 069, 071, 076

### Context

The engine has a rule against exactly this defect and skill counters escaped it on a technicality.

Progression Surfacing (Decision 051) is explicit: *"Compute the view from canonical state at the moment of surfacing. Do not maintain a separate authoritative XP counter or level that could drift from canon."* XP and levels are forbidden from being stored precisely because a stored aggregate has no derivation path and therefore no way to be wrong loudly. That rule binds the **meta view**. Gatefall's skill counters — `successful_uses`, `qualifying_scenes_total`, `mastery_progress` (Profile Section 7.4) — are not a meta view. They are causal canonical state: mastery level sets a skill's damage multiplier and its Mana cost. So they are stored, as they must be, and nothing inherited 051's reasoning about what a stored counter costs.

**The defect has now occurred twice, in the same campaign, against the same skills.**

The first instance was caught late but caught: Flash Step's advance from Novice to Practiced was earned during `EVT-000113` and settled at the following promotion barrier, recorded in its own ledger entry as a settlement correction. The barrier worked.

The second was not caught at all. `900_CHECKPOINT_0028` captured the Cicero Gate clear (`EVT-000119`–`EVT-000120`) — three Rupture casts, one Flash Step, one Keen Sense activation, two Dagger Mastery applications — with **every counter frozen at its `0027` value**. Mana, XP, condition, and equipment on the same character sheet were all correct. `tools/validate_repository.ps1` and `tools/test_checkpoint_contract.ps1` both passed. It survived two further checkpoints and surfaced only because the player asked whether skill progress was being tracked. The true counts were corrected in live canon afterward (`EVT-000127`); the checkpoint remains immutable and wrong, as Rules Section 13.2 requires.

This is the **stale-field** class, and it defeats the existing barriers by construction rather than by accident:

1. **Read-back verifies intent, not completeness.** The Save Algorithm's step 4 reloads every target and confirms "the intended changes are present." When the intent was already incomplete, read-back confirms the incomplete intent. The file was opened, written, re-read, and validated, and still carried a stale field.
2. **The Repository Validation Barrier is structural.** A counter reading `Successful uses 13` is well-formed. The barrier checks identifiers, required fields, schema tags, and presence invariants; it has no notion of what the number *should* be, and the Save Algorithm says so in its own text — the target-set derivation is *"performed by the Runtime and checked by nothing,"* and *"it does not detect a ledger that is well-formed and semantically stale."*
3. **Every existing contract asks whether a file was written.** Completeness across the promotion target set is well defended. Completeness *within* a written file has no defense at all.

`tools/test_checkpoint_contract.ps1` gained Contract 8 in response: if a checkpoint's `(level, xp)` advanced against the parent its manifest names, at least one tracked counter must have advanced too. Verified against the full history, it fires on exactly one of twenty-nine Gatefall checkpoint transitions — the real defect — with no false positives. It is a genuine improvement and it is deliberately weak. It compares **aggregate** totals, so a partial miss passes silently; it cannot know which counter should have moved, or by how much, because nothing in the repository records what actually happened at that granularity. It detects a session that recorded nothing. It cannot detect a session that recorded some of it.

The missing thing is not a stricter check. It is **evidence**. The chronicle records that a Gate was cleared and records the rolls in prose; nothing records, in a form a machine can read, that Rupture fired three times. Until that exists, every check over these counters is a heuristic over a number with no derivation.

### Decision

**1. `011_ENGINE_DATA_MODEL.md` Section 2.4 gains an optional, typed `counter_deltas` block on the Event.**

An Event may declare the counter changes it caused:

```yaml
counter_deltas:
  - subject: ENT-000125          # the entity whose counter changed
    counter: skills.rupture.successful_uses
    delta: 3
  - subject: ENT-000125
    counter: skills.rupture.qualifying_scenes_total
    delta: 1
```

The Data Model owns the **shape** — subject identifier, counter path, integer delta — and nothing else. It does not know what a skill is, what mastery means, or which counters exist. Those belong to the world, exactly as Section 4.3's extension mechanism already establishes: *"extensions are additive, typed, and optional. The content of each extension is owned by its Rules domain section."* A world that tracks no counters declares none, and the mechanism costs it nothing.

**2. A counter carries a baseline, so reconciliation is prospective.**

Each tracked counter records `baseline_value` and `baseline_as_of` (an Event identifier). The invariant is arithmetic:

```text
stored_value == baseline_value + Σ(delta) over live Events after baseline_as_of
```

This is what makes the mechanism adoptable without rewriting history. Events predating adoption declare no deltas and are never replayed; a campaign migrates by stamping each counter's current value as its baseline at the migration event. It is the same prospective-repair move Gatefall Profile 1.16 made for Daily Premium model bags — *"repairs prospectively from its active cycle instead of replaying expired rotations"* — applied to a Data Model field.

**3. Enforcement point: `tools/validate_repository.ps1`, as an arithmetic check.**

Per Decision 055 this decision names where it is checked. Unlike Decision 076's Texture gate, which is deliberately presence-only because prose quality is a judgment, **this one is fully decidable** and should be strict: the validator resolves each declared counter, sums the deltas of live Events after its baseline, and fails on any mismatch. There is no interpretation involved and therefore no reason to settle for coverage.

**4. Contract 8 is retained, not superseded.** It becomes the backstop for the case this decision cannot reach: a session that declares no deltas at all is arithmetically consistent — zero recorded, zero applied — and only the progression cross-check notices that a Gate was cleared regardless.

**5. The per-turn half already landed and is not re-legislated here.** `docs/AI_GAMEPLAY_RESIDENT_CORE.md` gained Turn-State Settlement step 4 (2026-07-27), requiring skill counters to advance in the exchange that used them. This decision supplies the durable record that step 4 produces and the arithmetic that proves it happened.

### Rationale

- **A stored aggregate with no derivation cannot be checked, only trusted — and trust is what failed, twice.** Every other durable quantity in this engine is reconcilable against something: identifiers against the registry, references against definitions, presence against a single owning field, the index against the campaign's own declaration. Skill counters are the one causal quantity with no second source. Adding deltas gives them one, and the two-independent-statements shape is the pattern this repository already relies on wherever drift is decidable (Decisions 071, 072; Contract 2).
- **The engine already forbids this pattern one layer over.** Decision 051 refuses to let XP be stored as an authoritative counter for precisely this reason. Skill counters are the same kind of quantity with a stronger claim to being stored, because they are causal and must be restorable from a checkpoint alone. The answer is not to derive them — it is to make them **verifiable**, which is what the baseline plus deltas achieves.
- **Domain-neutral shape keeps world vocabulary out of the most stable layer.** A `skill_uses` field on the Event would push Gatefall's Section 7.4 into `011`, which no other world instantiates. A generic counter delta is the same mechanism at the right altitude, and Reikon's ability counters or any future world's tracked quantity get it for free.
- **It closes a gap the engine has already written down and left open.** The Save Algorithm's admission — *"until a mechanical gate exists, this step is the only thing standing between a session's events and a stale checkpoint"* — is recorded against Version 0.3 planning. This is one concrete instance of that gate, for the field class where the arithmetic is available.

### Consequences

- **Class under Decision 069: foundational.** The structural test is unambiguous and reads the diff, not the motivation: the change touches `011_ENGINE_DATA_MODEL.md`, which that decision names as sufficient on its own, and it introduces an engine-general mechanism a world may invoke. The owner explicitly accepted it into Version 0.3 on 2026-07-27 as a recorded Architecture Freeze exception, using the same governance path as Decisions 076 and 077.
- **The deferral question is resolved by that owner ruling.** Contract 8 and resident step 4 remain useful interim defenses, but neither makes a stored aggregate reconcilable. The accepted implementation therefore lands now instead of waiting for the unresolved Version 0.4 scope.
- **Data Model change and migration: 0.1.4 → 0.1.5.** `counter_deltas` is additive and optional, but adding it changes the Data Model. Live objects are retagged; each tracked counter is stamped with its current value as `baseline_value` and the migration event as `baseline_as_of`. Immutable checkpoints remain byte-unchanged at their captured schema and migrate explicitly at readiness (`011` Section 12.4). The migration consumes no fictional time and allocates no identifier beyond the migration event itself.
- **Real writer cost at the promotion barrier**, paid per canon-bearing event that moves a counter. It is smaller than Texture's — integers rather than prose — but it is not zero, and it lands on the same actor at the same moment.
- **The validator gains arithmetic it did not previously do**, including resolving counter paths inside object blocks. This is meaningfully more tooling than any existing check and should be scoped as implementation work, not assumed free.
- `campaigns/gatefall_pendragon_001/` is the first migrated instance: the two occurrences, the `EVT-000127` correction, and the Contract 8 verification run are the implementation evidence. Adoption is recorded prospectively at `EVT-000130`; immutable checkpoints are untouched.

### Alternatives Considered

- **Author the counters into Gatefall's profile only, and check them with a Gatefall-specific test.** This is the cheapest path and, under Decision 069 point 4, requires no engine decision at all — a change scoped entirely to one world is world authoring. Rejected as the primary approach because the defect is not Gatefall-shaped: any world tracking any accumulating quantity has the same hole, and a per-world solution means per-world tooling written separately each time. It remains the correct fallback if the foundational cost is judged too high, and it is a legitimate owner choice rather than a wrong one.
- **Derive the counters entirely and store nothing, as Decision 051 requires of XP.** Rejected. Skill mastery is causal — it sets damage multipliers and Mana costs — so a restoring Runtime must be able to read it from the checkpoint alone. Deriving it would require replaying the full chronicle at every restore and every `/system skills` render, and would make a checkpoint non-self-sufficient, defeating the point of having canonical state.
- **Strengthen Contract 8 from aggregate to per-skill comparison.** Rejected as insufficient rather than wrong. Per-skill comparison can detect that a *particular* counter did not move, but never that the *right* counter moved by the *right* amount, because the repository holds no machine-readable record of what happened. It would tighten a heuristic without giving it a source of truth.
- **Derive the deltas from the world's declared resource costs — a Mana ledger of `60 → 58 → 48 → 38 → 28 → 21` is five activations.** Rejected as a *check* while retained as *guidance*. The arithmetic is genuinely available and is now written into resident step 4 as a self-audit, but it cannot be mechanized: two skills may share a cost (Rupture and Bulwark both cost 10), passives cost nothing and leave no trace, and elapsed-time recovery interleaves with spending. A gate that is confidently wrong in ambiguous cases and trusted anyway is the failure mode Decision 071 names when it declines to adjudicate row currency.
- **Add more instruction and no mechanism.** Rejected on the record: instruction alone is what failed, twice, and the second failure occurred *after* the first had been corrected in the very same ledger the Runtime was writing. This is Decision 055's finding, and the reason it is cited here rather than restated.

---

## Decision 080 — Profile-Declared Progression Candidate Audit

**Status:** Accepted — **Version 0.3 by owner ruling (2026-07-27)**, as an explicit foundational exception produced by the live prototype
**Date:** 2026-07-27
**Related Sections:** `011_ENGINE_DATA_MODEL.md` Sections 2.4, 4.3, and 12.4.3; `012_ENGINE_RUNTIME.md` Sections 2.5, 5.3, and 5.4; `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (Profile-Declared Proactive Trigger Audit; Turn-State Settlement); `worlds/gatefall/206_WORLD_RULE_PROFILE.md` Section 7.1; `tools/validate_repository.ps1`; Decisions 055, 069, 076, 079

### Context

Gatefall Section 7.1 has long allowed a skill to be earned by doing: three successful uses of the same technique in materially different dangerous scenes may establish it. Alexander Pendragon supplied exactly that evidence for dual-Quickknife fighting in `EVT-000071`, `EVT-000101`, and `EVT-000120`. The Runtime did not recognize or preserve a candidate. Twin Fang was created only after the player identified the omission.

The failure was structural. Section 7.1 said the technique *may* be ratified but assigned no actor and no audit point. Turn-State Settlement could update an already-declared technique, but the data model had nowhere to retain a not-yet-named candidate. A Runtime therefore had to remember an interpretive pattern across several scenes, and promotion discarded that memory each time.

### Decision

**1. Profiles declare closed candidate eligibility tests.** A Runtime never marks an action because it appears stylish or resembles genre fiction. A world that supports earned progression must state the test. Gatefall's test requires all of: deliberate player method; repeatable signature and intended payoff; mechanical distinctness from ordinary action, equipment, circumstance, and an existing capability; successful material contribution under genuine danger; and evidence from a distinct dangerous scene.

**2. The Event gains an optional `progression_audits` block.** Its domain-neutral fields identify the subject, profile-owned domain, audit result, and—when evidence exists—the candidate key and scene key. The Data Model owns the shape; the World Rule Profile owns eligibility and thresholds.

**3. The subject persists candidates.** A `progression_audit_baselines` extension activates a declared domain prospectively. A `progression_candidates` extension preserves the candidate key, signature, status, evidence references, and eventual resolution. Candidate statuses are `tracking`, `pending-classification`, `pending-ratification`, `ratified`, or `rejected`.

**4. Audit and escalation are mandatory at the profile-declared boundary.** Gatefall batches the audit once when a continuous dangerous scene closes; it does not run candidate classification on every attack or exchange. During the scene, only compact notes for player-declared methods that materially contributed are retained. The closing Event records an audit, including `none`. The first qualifying occurrence creates a candidate; later matching evidence appends to it, at most once per continuous dangerous scene. Ambiguity becomes `pending-classification` rather than disappearing. Reaching the profile threshold changes the candidate to `pending-ratification`. If complete mechanics already exist, the profile may grant automatically; otherwise the Runtime surfaces readiness after scene settlement and obtains an owner ruling rather than inventing mechanics.

**5. Enforcement is mechanical where decidable.** Repository validation checks the typed fields, references, baseline coverage, unique event-and-scene evidence, legal statuses, and that a threshold-complete Gatefall candidate is not left in `tracking`. It cannot judge whether prose truly satisfies “distinct method”; that judgment remains resident and profile-bound.

### Consequences

- **Data Model 0.1.4 → 0.1.5.** This decision shares the migration with Decision 079. Live records are retagged and opted-in subjects receive prospective audit baselines. Historical Events remain immutable; supported pre-adoption evidence may be referenced from the migrated candidate state.
- **Gatefall Profile 1.18 → 1.19.** Section 7.1 becomes an executable skill-formation contract. Alexander's already-ratified Twin Fang candidate is migrated with evidence `EVT-000071`, `EVT-000101`, and `EVT-000120`, resolution `EVT-000129`, and no counter backfill.
- **No automatic mechanic invention.** Candidate recognition answers “is this repeated method potentially a capability?” It does not decide Rank, Mana cost, effect, balance, or final name unless the profile already authored those facts.
- **Writer cost is explicit.** Opted-in gameplay Events must state an audit result. This small negative assertion is what lets validation distinguish “nothing qualified” from “the Runtime forgot to look.”

### Alternatives Considered

- **Let Turn-State Settlement's qualitative training line carry the feature.** Rejected. It has no persistent candidate shape, threshold evidence, or coverage proof and already failed on the worked case.
- **Scan prose at save time.** Rejected. Retrospective natural-language inference is non-deterministic and repeats the lossy-promotion failure.
- **Treat every repeated attack as a candidate.** Rejected. Repetition alone collapses ordinary proficiency, weapon ownership, and tactical circumstance into invented skills. The profile's distinctness test is mandatory.

---

## Decision 081 — Runtime Load Audit: Owner Rulings on the Five Open Questions

**Status:** Accepted
**Date:** 2026-07-28
**Related Sections:** `docs/430_RUNTIME_PERSISTENCE_VALIDATION/437_AI_RUNTIME_LOAD_AND_VALIDATION_RECOMMENDATIONS.md` Sections 22 and 24; `system/RUNTIME_CONTEXT_BUDGETS.yaml`; `engine/012_ENGINE_RUNTIME.md` Section 2.5; `worlds/gatefall/206_WORLD_RULE_PROFILE.md` Section 14.3 and `worlds/gatefall/migrations/`; Decisions 069, 071, 072, 074, 080

### Context

The runtime load, trigger, and validation audit closed with five questions it explicitly refused to answer from the draft alone. Four of its recommendations landed while those questions stayed open, which meant shipped behaviour rested on unratified assumptions. This decision settles all five. Every ruling confirms current behaviour or defers work; none requires a rebuild.

### Decision

**1. The declared context budgets stand.** Resident gameplay core warns at 6,000 and fails at 8,000 estimated tokens; bootstrap warns at 12,000 and fails at 16,000; campaign readiness warns at 20,000 and fails at 30,000; a single fetched rules operation is capped at 12,000. The thresholds are ratified as written in `system/RUNTIME_CONTEXT_BUDGETS.yaml`. Evidence for keeping them: the gate caught a merge that would have quadrupled the resident layer to 13,691 tokens, and it caught the growth of a live campaign ledger to 45% of a readiness surface. Both were silent failures that no other gate detected.

**2. Tier-2 triggers fire at the first qualifying yield.** Eligibility becomes mandatory at the first qualifying yield after all conditions hold. The Runtime chooses presentation phrasing, never whether or when to fire after the boundary. The alternative — permitting delay against a persisted pending opportunity — is **rejected**: it buys narrative placement at the cost of a durable to-do list that can be lost at a promotion barrier, and the loss would be undetectable. This confirms the contract already implemented in Gatefall Profile Section 14.3 and Runtime Section 2.5; no behaviour changes.

**3. Checkpoint integrity hashes do not enter Version 0.3.** Recommendation R12 changes the canonical manifest contract under Decision 072 and is refused as a freeze exception. The gap is acknowledged: immutability is a rule enforced at write and read-back, not a mechanically persistent fact thereafter. It is deferred to a version boundary rather than applied mid-campaign to a live prototype with thirty-five promoted checkpoints.

**4. Migration records remain a Gatefall convention.** The thirty-five-record chain under `worlds/gatefall/migrations/` is world authoring, not an engine-general mechanism. One world's successful use is not evidence the shape fits Reikon or Verra, whose version histories are shorter and differently structured. Generalization requires a second world adopting it voluntarily first; only then does the question of an engine-general contract become answerable on evidence.

**5. The checkpoint duplication problem belongs to a later persistence version.** Recommendation R13's disposition is ratified. Complete snapshots under Decision 072 are retained for Version 0.3 despite their cost — Gatefall stores roughly 9.3 MB across its save history and copies a 259 KB chronicle on every promotion. Content-addressed storage, deduplicated blobs, delta checkpoints, and append-only event logs all change the restoration contract and create new failure modes. Human-readable, independently restorable snapshots are worth their disk cost while the engine is still the thing being validated.

### Consequences

- **No implementation follows from rulings 1, 2, 3, or 5.** They ratify current behaviour or record a refusal, and exist so that shipped behaviour has a decision behind it.
- **Ruling 2 unblocks the missing trigger fixtures.** With the timing contract settled, the audit's required behavioural cases — exactly one Urgent offer per crisis, no full eligibility scan on an irrelevant exchange, and no duplicate Hidden attachment on re-entry — become buildable. They remain **unbuilt**, and Recommendation R6 shipped its trigger manifest without them.
- **Correction (2026-07-30):** the trigger manifest and Tier-2 timing correction this ruling describes were originally written directly into frozen Gatefall Profile 1.36's text, with no version bump — a Rules Section 14.6 violation this decision's own "no behaviour changes" framing did not catch, since the framing was true of the *design* question but not of how it landed in the file. Corrected as Gatefall Profile 1.37 (`EVT-000215`); the content is unchanged, now properly versioned.
- **Ruling 4 leaves a documentation obligation.** The migration-record schema is currently described only by its own index and the records themselves. A world adopting it has no engine-general contract to read.
- **Rulings 3 and 5 are revisitable at a version boundary,** not reopened by ordinary play. Neither blocks any current milestone 0.3.5 work.

### Alternatives Considered

- **Answer the questions implicitly by shipping.** Rejected. Four recommendations already landed against unratified assumptions; leaving the questions open would make the next merge re-litigate them, as this session's resident-core conflict nearly did.
- **Accept checkpoint hashes now as a small additive field.** Rejected. It is additive in the manifest but not in the contract: restore must then refuse a mismatch, which is a behaviour change to the restoration path during live prototype play.
- **Promote migration records to an engine mechanism immediately.** Rejected under Decision 069. It would make a world-authoring convention mandatory for every world on a single world's evidence.

---

## Decision 082 — Pending World-Side Commitments

**Status:** Accepted — **Version 0.3 by owner ruling (2026-07-31)**, as an explicit foundational exception produced by the live prototype
**Date:** 2026-07-31
**Related Sections:** `011_ENGINE_DATA_MODEL.md` Sections 7.3, 7.4, and 11; `012_ENGINE_RUNTIME.md` Section 2.4; `010_ENGINE_RULES.md` Sections 1.8, 3.4, and 3.6; `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (Turn-State Settlement); `engine/004_DESIGN_FLAGS.md` F-001; Decisions 060, 069, 073, 078

### Context

F-001 recorded a player texting four established contacts in one round and receiving four declines. The analysis (`docs/430_RUNTIME_PERSISTENCE_VALIDATION/438_F001_MULTI_CONTACT_OUTREACH_ANALYSIS.md`) found two independent defects. This decision addresses the second: at the moment of that exchange, **five parties owed the protagonist contact** — a Coalition coordinator's callback due that morning, a letting agent, a contractor's B-Rank lead, a guild recruiter's follow-up window, and a crew lead's promise — and not one of them was recorded as anything a Runtime could settle.

Every one lived as prose, in a ledger body, describing a future the world had committed to. Prose has no due time a clock can reach and no status a validator can read, so nothing settled when Monday arrived, and the Runtime — holding no obligation it could see — resolved the player's inquiry by handing initiative back to him.

The decisive evidence is that the campaign had already diagnosed this itself. `OBJ-23` carries, authored the day before the flagged session:

> **Runtime-authored follow-up window, 2026-08-09.** [...] an authored expectation that Wade Bishop follows up — by call or text — once he has concrete news [...] the natural window for that follow-up runs **2026-08-13 to 2026-08-15**. This is a **Runtime-authored NPC-behavior trigger** [...] if neither thread has moved by that window, the silence itself becomes informative rather than merely more waiting.

That is this decision's construct — owner, subject, due window, and correct lapse semantics — improvised by hand because the engine offered nothing. It did not work. One in-fiction day later the Runtime proposed the protagonist chase the very NPC it had itself authored as the party who calls. **A trigger written in prose, with no type and no dispatch, is not a trigger; it is a note.** The gap is not that the world's intentions were unknown. It is that they were unaddressable.

### Decision

**1. A world-side intention with a due time is typed state.** When an NPC or institution states — or the Runtime authors — an intention to act by a stated time or within a stated window, it is recorded as a **pending world-side commitment** carrying an owner, a subject, a due time or window on the campaign clock, a status, and the provenance of its origin. This applies equally to a promise an NPC made on the record and to a Runtime-authored expectation of NPC behavior; the second is not a lesser kind, and `OBJ-23` is the case that proves it needs the same treatment.

**2. It is tracked state, not a Persistent Object.** A commitment carries a stable local key and mints no identifier, on the same structural line Section 11 already draws for aggregated resources and Gatefall Section 9.10 draws for tracked postings. Most commitments are met, lapse, or are overtaken without ever mattering individually. It is promoted to an Event, and allocated an identifier, only when it becomes campaign-durable.

**3. It settles at its due time, from the owner's own state.** Settlement occurs when the campaign clock reaches the due time, independent of whether the player asks, is present, or is aware the commitment exists (Rules Sections 1.8 and 3.4). The owner acts on what that actor can know — the NPC channel test governs the settlement exactly as it governs dialogue — and never on Runtime omniscience.

**4. A lapse is a settlement, not an absence.** Statuses are `pending`, `met`, `partially-met`, `lapsed`, and `deferred`. A `lapsed` commitment records the grounded reason it lapsed, and a `deferred` one carries a new due time. Silence that has been settled is information the fiction may use; silence that was never settled is indistinguishable from a commitment nobody remembered. `OBJ-23` authored this distinction correctly in prose and it is preserved here as a field.

**5. An open commitment is never resolved by transferring it to the player.** Where a commitment names the world as the actor, that obligation stays with the world until it settles. Offering the player an action in its place is not a settlement, and the resident rule added under F-001's first half (`docs/AI_GAMEPLAY_RESIDENT_CORE.md`, *A Canvass Is N Resolutions, and Standing Is Read, Not Recalled*) forbids it at the point of narration.

**6. Cadence and calibration are world-authored.** The engine owns the construct, the settlement obligation, and the statuses. A World Rule Profile owns what its actors plausibly commit to, how long they take, and how often they lapse.

### Consequences

- **Data Model 0.1.5 stands; no migration.** No Persistent Object structure changes, so no live record is retagged and no checkpoint is touched. This is the direct consequence of point 2, and it is the reason that structure was chosen: the alternative advanced the schema and would have required migrating all 580 live object blocks across four campaigns for a construct most instances of which never matter individually. Contrast Decision 076, which added one field to Relationship *structure* and therefore advanced 0.1.2 → 0.1.3.
- **Settlement rides Decision 078's boundary.** Commitments settle where deterministic time rules already settle, at the canonical clock anchor (`012_ENGINE_RUNTIME.md` Section 2.4). No new audit boundary is introduced, and a status view, checkpoint, or session close may not be the first operation that notices a due commitment.
- **Writer cost is explicit, and deliberate.** A commitment without a due time is not recordable under this decision. That is the point: "he'll get back to you" with no clock is the exact shape that failed, and requiring the time is what makes the difference between a promise and a note.
- **World adoption is separate work.** This decision authors the engine-general construct. Declaring dispatch deltas in a profile's trigger manifest, and backfilling the five live Gatefall commitments, are world-authoring and campaign-canon operations that belong to a play session under normal save discipline.
- **F-001 remains Open** until its supply half is also ruled on. This decision closes one of two foundational halves.

### Alternatives Considered

- **Model a commitment as a Persistent Object.** Rejected. It buys referential integrity for a construct that is usually ephemeral, at the cost of a schema advance and a repository-wide migration. Section 11 and Gatefall Section 9.10 both already draw this line in the same place and for the same reason.
- **Leave commitments in objectives prose and rely on the Runtime to read them.** Rejected — `OBJ-23` is that experiment, run for one day, with the failure recorded above. The prose was well written, correctly reasoned, and explicitly labelled a trigger; it still did not fire, because nothing dispatches against prose.
- **Fire due commitments as quests or trigger offers.** Rejected. A commitment is world behavior, not an offer to the player: it must be able to settle to nothing, settle while the player is elsewhere, and settle without producing a decision point. Routing it through an offer surface would make every lapse invisible and every settlement a prompt.
- **Require the player to follow up to collect.** Rejected as the defect itself. It is the behavior F-001 recorded, and it fails Rules Section 1's Design Goal — a world that would continue existing if no player were present.

---

## Decision 083 — Opportunity Supply Advances on the World's Clock

**Status:** Accepted — **Version 0.3 by owner ruling (2026-07-31)**, as an explicit foundational exception produced by the live prototype
**Date:** 2026-07-31
**Related Sections:** `010_ENGINE_RULES.md` Sections 1.8, 3.4.1, and 4; `011_ENGINE_DATA_MODEL.md` Sections 7.3 and 7.5; `012_ENGINE_RUNTIME.md` Section 2.4; `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (Turn-State Settlement); `engine/004_DESIGN_FLAGS.md` F-001; Decisions 060, 069, 078, 080, 082

### Context

This is the second half of F-001, and the half the flag was actually about.

A player texted four established contacts in one round — four working contractors, each with a board, a client base, and a pipeline — and all four returned nothing. The Runtime's own out-of-character defense was that *"none of these people had one sitting in their pocket waiting for you to ask."*

That was true. It is also the defect, because the question it never asks is *why not*. Across five elapsed in-fiction days those four sources had generated, between them, **zero** work — while the same world declares roughly thirty-five weekly Gate detections in the metro and three to six standing postings as its ordinary state. None of that supply was ever advanced. "Nothing" was not a settled result; it was the only answer the fiction was structurally capable of returning, because nothing had ever been generated to settle.

The Runtime then stated the dilemma itself, offering the player two options: accept the wall of refusals, or accept an opening it described as *"you creating an opening rather than one already existing."* **That dichotomy is false, and it is the shape of the defect.** A third option is what Section 1.8 has always specified — the world generated it days ago, before anyone asked. Supply simulation is what makes that option exist.

The bias against invention is correct and is not being weakened here. What was missing is that where supply is never generated *proactively*, "do not invent" and "there is nothing" collapse into the same statement, and the world's entire economy of opportunity resolves to permanent scarcity by construction.

### Decision

**1. An established source of opportunity generates on its own schedule.** An employer, contractor, coordinator, guild, crew, or market that the campaign has established as a source of work, custom, patronage, or advancement carries a supply cadence and is settled forward on the campaign clock (Rules Section 3.4.1).

**2. Supply advances on elapsed time; an inquiry reads it.** These are two different operations and only the first may create anything. Where a source's `Advanced` anchor lags the clock, the Runtime settles it forward from that anchor *before* answering, and never generates at the point of asking. Two inquiries inside one unadvanced span return the same answer.

**3. Generation is bounded by the source's canon.** A source produces only what its established trade, capacity, standing, and relationship with the character support, and may produce nothing that contradicts loaded canon. This is Rules Section 1's existing limit — opportunities emerge from the world's development, never solely to reward the player — applied to a mechanism that now exists to be limited.

**4. An empty advance is a recorded settlement.** A source that generates nothing sets its anchor forward and records that it did. This is the negative-assertion discipline Decision 080 already requires of progression audits, for the same reason: it is what distinguishes *nothing was generated* from *nobody looked*.

**5. Calibration is world-authored; the obligation is not.** A World Rule Profile owns its sources' rates and capacities. Where a world declares none, the source is still settled forward from its own established canon by ordinary resolution (Rules Section 4, Decision 060) rather than assumed empty. **A world that has authored no cadence does not thereby earn an empty world.**

**6. Supply state is tracked state.** A supply source and its standing openings carry no identifiers (Data Model Sections 7.3, 7.5). An opening is promoted to an Event only when it becomes campaign-durable.

### Consequences

- **Data Model 0.1.5 stands; no migration.** As with Decision 082, no Persistent Object structure changes. Immutable checkpoints are untouched.
- **Rules Section 3.4 gains subsection 3.4.1.** This is the foundational element: it adds a Rules obligation and a mechanism worlds build against, which is why this decision could not land as a refinement under Decision 069.
- **Settlement introduces no new boundary.** Supply settles where recovery (Decision 078) and commitments (Decision 082) already settle. A campaign that settles its clock correctly settles supply for free; one that does not had a defect already.
- **Scarcity survives.** Nothing here guarantees the player work, raises any probability in the player's favour, or makes a canvass more likely to succeed. A quiet week remains a completely ordinary outcome — the change is that it becomes a *settled* one, produced days earlier by a clock and a die rather than chosen at the moment of asking. The difference is not the odds; it is who decided, and when.
- **Canvassing cannot be farmed.** Point 2 is what forecloses it: repetition reads the same state, so there is no action the player can spam to draw again.
- **World adoption is separate work.** Declaring Gatefall's cadences against its own Section 9.1 detection rates and Section 9.10 standing board, and backfilling live sources, are world-authoring and campaign-canon operations belonging to a play session.

### Alternatives Considered

- **Weight a multi-contact canvass toward surfacing at least one seeded opportunity.** This is F-001's own proposed remedy, and it is **rejected as written**. Implemented reactively it fails twice on the engine's own terms — Rules Section 1 forbids opportunities created solely to reward the player, and Law VIII forbids rewriting history to improve a story — and it makes canvassing a farming loop. The *reasoning* behind the flag is nonetheless correct and is what this decision implements: the player's stated basis was "not out of nowhere but from established encounters," which is a claim about under-simulated world state, not a request for favourable odds. Proactive supply satisfies that claim; reactive weighting only appears to.
- **Generate supply lazily at the moment of inquiry, then cache it.** Rejected. It produces identical fiction on the first ask and is indistinguishable from correct behaviour in a transcript, which is precisely why it is dangerous: the generation is still caused by the player's question, so the world still does not run when nobody is looking, and a second character asking first would have received a different world.
- **Declare a fixed global opportunity rate in the engine.** Rejected under Decision 069 point 4. Rates are world-authoring; a medieval kingdom's patronage cadence and a modern metro's contract board are not the same number, and the engine has no business holding either.
- **Do nothing and rely on the Runtime to remember to advance the world.** Rejected on the evidence. That was the standing arrangement, `OBJ-23` shows what happens to an obligation carried only in prose, and Rules Section 1.8 has said the world develops independently since the Foundation line while the flagged exchange still occurred.

---

## Decision 084 — World-State Settlement as a Declarable Trigger Domain

**Status:** Accepted — **Version 0.3 by owner ruling (2026-07-31)**, as an explicit foundational exception completing the mechanism Decisions 082 and 083 opened
**Date:** 2026-07-31
**Related Sections:** `012_ENGINE_RUNTIME.md` Sections 2.4 and 2.5; `011_ENGINE_DATA_MODEL.md` Sections 7.3, 7.4, and 7.5; `tools/validate_runtime_configuration.py`; `engine/004_DESIGN_FLAGS.md` F-001; Decisions 069, 078, 080, 081, 082, 083

### Context

Decisions 082 and 083 gave the engine two world-side obligations that settle on the campaign clock: a commitment falls due, and a supply source advances. Both are engine-general. Neither is *dispatchable* by a world.

Section 2.5 lets a World Rule Profile declare a proactive trigger audit, and the profile declares it through a trigger manifest whose contract the runtime configuration validator enforces. That contract carries a **closed settlement vocabulary** — `offer`, `automatic_attachment`, and `progression_audit` — authored when the only declarable domains were quests (Decision 059's profile mechanism) and progression candidates (Decision 080). Every member of that set describes something the profile presents to or resolves for the *player*.

A world-side settlement is none of those three. Gatefall's Section 9.10 tracked board is the concrete case and the one F-001 surfaced: a posting's deadline arrives, and Section 9.10 resolves it with, in the profile's own words, "no roll and no Runtime discretion." Nothing is offered, nothing is attached, and no progression audit is written. The nearest available member, `progression_audit`, is not merely imprecise — declaring it would oblige the Runtime to write a Data Model Section 2.4 `progression_audits` result for a mechanism that has no subject, no candidate, and no evidence threshold.

The result is that Recommendation R4 of the F-001 analysis — authoring Gatefall's dispatch deltas for supply, due commitments, and the board — **cannot be expressed at all**, and the disposition's own item 4 is unreachable. The obligations exist engine-side and the eligibility rule exists world-side, with no vocabulary connecting them.

This is the enforcement-asymmetry finding of F-001 recurring one layer down. Decisions 082 and 083 sited resident obligations correctly; a profile still had no way to declare *when* and *against what state* they dispatch, which is exactly the gap Decision 055 names — a correct rule with no named enforcement point does not fire.

### Decision

**1. The trigger settlement vocabulary gains a fourth member, `world_state_settlement`.** A domain declaring it settles world-side state deterministically from the profile's own eligibility heading, presenting nothing to the player and resolving nothing on the player's behalf.

**2. It writes no `progression_audits` entry.** The Section 2.5 obligation to write a Data Model Section 2.4 audit result, including `none`, is specific to a progression-candidate domain and does not extend here. A `world_state_settlement` domain records its settlement in the state its eligibility heading governs.

**3. It carries no capacity-notice policy.** `capacity_notice_repeat` remains required of `offer` and `automatic_attachment`, whose settlement can be blocked by a player-facing capacity limit. A world-state settlement has no such surface and must not declare one.

**4. Its timing is the declared boundary.** A `world_state_settlement` domain declares `timing: declared_boundary` and settles where recovery (Decision 078), commitments (Decision 082), and supply (Decision 083) already settle. It introduces no new audit point.

**5. Determinism is required, not optional.** A domain declaring this settlement asserts that its eligibility heading resolves the outcome without Runtime discretion. Where an outcome needs a roll, the profile owns that roll under Rules Section 4 at the heading — the settlement kind does not license the dispatcher to invent one.

**6. The eligibility heading remains the authority.** As with every other domain, the manifest is a dispatch index. It names deltas, identity, blocked statuses, and settlement type; it does not restate the rule.

### Consequences

- **Data Model 0.1.5 stands; no migration.** No Persistent Object structure changes and no stored record moves. This decision adds a declarable value, not a shape.
- **Foundational under Decision 069, and deliberately not self-classified as a refinement.** It introduces an engine-general mechanism a world may invoke, which is the structural test regardless of how small the diff is. Decision 069 also forecloses the available dodge — "a follow-on decision does not become a refinement by virtue of completing a foundational one" — so completing Decisions 082 and 083 does not lower its class. It shares their owning milestone under the same clause: one mechanism spanning several decisions carries one class.
- **Recommendation R4 becomes authorable.** Gatefall Profile 1.44 declares the board domain against Section 9.10 and adds `supply.advanced`, `commitment.due`, and `outreach.initiated` as candidate deltas.
- **Enforcement is where the vocabulary already lives.** `tools/validate_runtime_configuration.py` owns the closed set; `tools/test_opportunity_supply_contract.ps1` asserts both that the new member is admitted and that the capacity-notice requirement still binds the two kinds that need it.
- **The closed set stays closed.** A fourth member is not an invitation to a fifth by convenience. Adding one remains foundational, and each must name a settlement shape the existing members cannot express.

### Alternatives Considered

- **Declare the board domain with `settlement: progression_audit`.** Rejected. It validates and is wrong: Section 2.5 obliges every Event in a progression domain's coverage set to carry a `progression_audits` result, so the declaration would either produce meaningless audit records against a mechanism with no subject or candidate, or be quietly ignored — and a contract that is quietly ignored is the failure mode this whole flag is about.
- **Let a profile declare a second trigger manifest for world-side domains.** Rejected. The validator requires exactly one manifest per profile, and that constraint is correct: two manifests means two dispatch indexes and a question about which governs. The gap is a missing vocabulary member, not a missing container.
- **Open the settlement field to any profile-defined string.** Rejected. A closed vocabulary is what lets the validator reject a typo and what makes the dispatcher's behaviour knowable from the engine alone. An open field turns every profile into its own dispatch semantics, which is Decision 062's boundary violated rather than extended.
- **Leave R4 unauthored and rely on the resident obligations alone.** Rejected on F-001's own evidence. Decisions 082 and 083 place the obligation correctly, but a world with no declared dispatch has no named point at which its own eligibility rule is consulted — which is precisely how Gatefall's Section 9.10 board, a deterministic rule authored specifically so postings would not evaporate unobserved, went three deadlines past without settling. That board is F-002.

---

## Decision 085 — NPC Participation Audit: Making a Claimed Promotion Verifiable

**Status:** Accepted — **Version 0.3 by owner ruling (2026-07-31)**, as an explicit foundational exception produced by the live prototype
**Date:** 2026-07-31
**Related Sections:** `011_ENGINE_DATA_MODEL.md` Sections 2.4 and 12.4; `012_ENGINE_RUNTIME.md` Sections 0.2, 5.3, and 5.4; `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (Load a Recorded NPC Before Playing It; Turn-State Settlement); `tools/validate_repository.ps1`; Decisions 054, 055, 069, 076, 079, 080

### Context

The load obligation now exists and is sited resident: an NPC's record must be read before that NPC is played. It has no enforcement point. `012_ENGINE_RUNTIME.md` Section 0.2 sites Grounding as *resident per-turn*, and the resident layer is instruction — the configuration Decision 055 exists to warn about. The write side has a mechanical barrier (Section 5.4); the read side has nothing.

Four measurements taken against the live prototype bound what is buildable.

**1. The subject side is already free.** Every Event in the campaign carries a structured `participants` list — 209 of 209. No new field is needed to know who was in a scene.

**2. Records carry no last-modified marker.** `provenance.source` is a creation stamp and stays one: `ENT-000126` records `EVT-000058` while its own block cites Events through `EVT-000249`. Nothing in canon answers *when did this record last move*.

**3. The purely-derived version does not work.** The check that needs no schema change — an Event names X as participant, X's own record does not cite that Event — fires on **147 of 390 participations across 49 entities**, 38%. Most are legitimate: an NPC can be present while nothing about them changes. A gate at that rate is noise, and this is the measurement that rules out the refinement-class route. It is recorded here so the question is not reopened without new evidence.

**4. The failure this actually catches is not the one it was proposed for.** The audit cannot prove a file was read: a Runtime that skips the load can write `no-change` as easily as one that did the work. What it *can* prove is the other half — a `record-updated` claim naming a record that does not, in fact, cite the Event. That is the Decision 076 failure exactly: a checkpoint that passed two validators twice while the content it claimed to promote was gone. This decision is therefore justified as **promotion verification**, with load pressure as a secondary and weaker effect. Framing it the other way would oversell it.

### Decision

**1. The Event gains a third optional audit block, `participation_audits`,** sibling to `counter_deltas` (Decision 079) and `progression_audits` (Decision 080):

```yaml
participation_audits:
  - subject: ENT-000139
    result: record-updated
    record: REL-000066
```

`subject` is a defined Persistent Entity identifier appearing in the Event's own `participants`. `result` is `record-updated` or `no-change`. `record` is required when `result` is `record-updated`, absent otherwise, and names the Canonical Record or object the promotion moved.

**2. The active World Rule Profile declares the coverage set.** Which Events require an audit is world semantics, exactly as it is for `progression_audits`. The Data Model owns the shape; the profile owns when it applies. A world that declares no coverage set carries no obligation and no cost.

**3. Within coverage, every non-protagonist Character participant needs an entry, including an explicit `no-change`.** This is Decision 080's negative-assertion rationale applied unchanged: the small explicit "nothing moved" is what lets validation distinguish that from nobody having looked.

**4. Enforcement is mechanical on the half that is decidable.** `tools/validate_repository.ps1` checks typed fields, that `subject` appears in the Event's `participants`, coverage across the declared set, and — the load-bearing check — that a `record-updated` entry names a live record which actually references that Event. A `no-change` entry is not verifiable and is not pretended to be.

**5. Prospective only.** Historical Events are immutable and are not rewritten, matching Decision 080 point 4 and Data Model Section 12.4. Coverage begins at a declared baseline Event.

### Consequences

- **Owner ruling, 2026-07-31: admitted to Version 0.3 as an explicit exception to the Architecture Freeze.** The classification is not reinterpreted — this *is* foundational, and Decision 069's test is unchanged and still binding. Two grounds were on the table when the ruling was made. **Domain fit:** Version 0.3 is Runtime & Persistence Hardening, and a promotion whose success cannot be checked is a persistence defect in the version whose declared subject is persistence. **A gap nothing else covers:** no current gate verifies that any claimed promotion actually landed, and Decision 076 is the recorded case of exactly that going undetected across thirteen checkpoints. The argument against it — that the common `no-change` entry is the unverifiable half, so the friction falls on an honest writer — was recorded before the ruling and is not withdrawn by it.
- **Data Model 0.1.5 → 0.1.6,** with the retagging and migration that implies. This is what makes the change foundational under Decision 069's structural test, and the test is not argued with.
- **Writer cost is real and should be sized before approval.** The live prototype holds 390 participations across 209 Events. Under a coverage set as broad as Gatefall's progression domain, most covered Events gain one to three lines.
- **The common entry will be `no-change`,** which is the unverifiable half. The gate's friction therefore lands mostly on an honest writer, and a Runtime under load can satisfy it without reading anything. This is the strongest argument against the decision and is recorded rather than answered.
- **`record-updated` becomes a checkable claim,** which no current gate provides for any promotion.
- **No new mechanic is invented.** The audit records whether a record moved; it never decides what should have moved.

### Alternatives Considered

- **Derive staleness from existing canon; change no schema.** Rejected on measurement 3 — 38% false-positive rate. This is the cheapest option and it was tested, not assumed.
- **Add a `last_updated` Event pointer to each entity record instead.** Rejected: it is one field per entity rather than one entry per participation, but it relocates the noise rather than removing it. Presence without change is still legitimate, so a record trailing the Events it appears in still proves nothing.
- **Require every participant's record to move.** Rejected. An NPC can appear and be unchanged; forcing a write would manufacture canon to satisfy a checker, which is the failure Decision 080 names when it refuses to treat repetition as evidence.
- **Do nothing and rely on the resident load rule.** The honest default, and it may be the right one. The rule is sited, tested, and costs no schema change. Against it: the read side then has no enforcement point at all, and Decision 055's finding is that an obligation carried only by instruction does not reliably fire.

---

## Decision 086 — The Architecture Freeze Binds Implementation, Not Validation

**Status:** Accepted — 2026-08-01
**Date:** 2026-08-01
**Related Sections:** `002_ENGINE_ROADMAP.md`; `docs/DEVELOPMENT_WORKFLOW.md` (Version Evolution & Validation Lifecycle, Change Classification); `docs/430_RUNTIME_PERSISTENCE_VALIDATION/440_ENGINE_POSTMORTEM.md` Finding 1; Decisions 048, 069, 076–085

### Context

Decision 048 established the lifecycle and its Architecture Freeze: once a version's ADRs are accepted, "later work within the version is implementation and refinement, not new foundational architecture." Decision 069 completed 048 from the other side by giving change *classification* a structural test that reads the diff rather than the motivation, and made ownership mechanical at the roadmap.

The freeze's **exception path received no equivalent.** Version 0.3 then admitted ten foundational changes by explicit owner ruling — Decisions 076–085. Each carries a recorded justification; each names its classification as foundational and does not reinterpret it; none is reopened here.

The postmortem's Finding 1 states the problem precisely: "admitted by owner ruling" is unfalsifiable. There is no written condition an exception must meet, so the freeze constrains nothing an owner is willing to rule on, and a reader who was not in the conversation cannot check whether a given exception was legitimate.

Two readings were on the table. Either the freeze meant what it said and ten exceptions is a governance failure, or the freeze was advisory during a prototype milestone and should say so.

**The second reading is correct, and the evidence is the lifecycle's own structure.** Decision 048 *mandates* a Prototype Campaign whose declared purpose is to validate the engine through use and surface what design review missed. A freeze that forbids acting on those findings would require the lifecycle to discover defects and then forbid repairing them until the next version — inverting the purpose of the stage that produced them. Decision 076 made exactly that argument when it became the first exception, and nine further decisions followed because the argument held every time.

Ten justified exceptions are not ten lapses of discipline. They are evidence that the rule as written did not match the stage it was being applied to.

### Decision

**1. The Architecture Freeze binds the Implementation and Consistency Audit stages.** From ADR Approval through the Consistency Audit, foundational change is closed: that is the interval the freeze exists to protect, and the one in which a foundational change means the version's architectural basis was not actually settled.

**2. From Capability Validation onward, foundational change is permitted when it meets all four of the following.** The conditions are cumulative and each is externally checkable:

- **(a) Played evidence.** The finding arises from prototype play or validation execution, not from design review. A foundational change proposed from reasoning alone still belongs to the next version's Planning.
- **(b) Classified.** It is classified under Decision 069's structural test, and the classification is recorded as it stands rather than reinterpreted to fit.
- **(c) Versioned and migrated.** Any Data Model or profile advance carries its version bump and an explicit migration contract; immutable checkpoints remain immutable.
- **(d) Revalidated.** The repository passes its gates after the change, and the finding's disposition is recorded in the version's validation record.

**3. An exception is recorded in the decision itself.** The decision states which of the four conditions it meets and how, so the record answers the question without the conversation.

**4. The owner ruling remains required and is not replaced.** This defines what an exception must satisfy, not who may grant one. A change meeting all four conditions is still admitted deliberately.

### Consequences

- **Decisions 076–085 are retroactively described, not retroactively excused.** All ten already meet the four conditions — each came from played evidence, carries its classification unrevised, advanced and migrated its schema where required, and was revalidated. The rule now describes the practice instead of being routed around by it. Their status is unchanged and none is reopened.
- **The freeze becomes falsifiable again.** A foundational change from design review during validation, or one that skips migration or revalidation, now fails a written condition rather than resting on judgment.
- **This is a refinement under Decision 069.** It adds no Rules section, changes no Data Model contract, and introduces no mechanism a world may invoke or must satisfy. It completes Decision 048 exactly as Decision 069 did, and carries the same class for the same reason.
- **The lifecycle's warning is not weakened.** Decision 048 exists partly because a project can hide in hardening indefinitely. Condition (a) is what prevents this ruling from becoming a general licence: without played evidence, the freeze still holds.
- **Version 0.3 closes with its largest finding addressed** rather than carried, which is the acceptance condition Decision 048 sets for a version's postmortem.

### Alternatives Considered

- **Tighten the freeze and treat the ten as a governance failure.** Rejected. It would require the next prototype campaign either to withhold its findings until the following version, or to repeat the same ten rulings under the same unfalsifiable path. It also mischaracterizes the record: the ten are individually sound, and a rule broken ten times by careful people in good faith is usually the wrong rule.
- **Leave the freeze as written and rely on owner judgment.** The honest status quo, and it works while one owner holds the whole history. It fails the test this repository applies everywhere else — an obligation with no enforcement point holds only by assumption (Decision 055) — and it leaves a reader unable to check any exception.
- **Require a formal version re-plan whenever a foundational finding appears.** Rejected as disproportionate: it converts every prototype finding into a planning cycle, which would have meant ten re-plans in nine days, and Decision 048's lifecycle already has a stage for incorporating findings.
- **Suspend the freeze during 0.3.5 as a one-off.** Rejected. It solves this version and leaves the next prototype campaign in exactly the same position, which is the drift Decision 069 exists to stop.

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
