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

# Pending Decisions

The following topics have been identified but not yet finalized:

## Decision P001 — Persistent Entity Abstraction

**Status:** Proposed

Determine whether every meaningfully evolving object should use a shared Persistent Entity model.

---

## Decision P002 — Institution Lifecycle Model

**Status:** Proposed

Define creation, growth, governance, assets, military arms, internal drift, division, decline, collapse, and legacy for institutions.

---

## Decision P004 — Magic as World Extension

**Status:** Proposed

Determine how setting-specific supernatural rules extend the engine without contaminating engine-level logic or allowing unexplained rule drift during play.

---

## Decision P005 — Historical Source Generation

**Status:** Proposed

Define how chronicles, treatises, myths, legal records, memoirs, propaganda, and campaign chronicles emerge from simulation state.

---

## Decision P006 — Save-State Architecture

**Status:** Proposed

Define machine state, human-readable ledgers, version compatibility, restoration procedures, and the boundary between save data and canonical records.

---

## Decision P007 — Canonical Record Architecture

**Status:** Proposed

Define the relationship between ledgers, chronicles, historical documents, session summaries, and machine-readable saves so that canon, evidence, and retrospective interpretation do not collapse into a single document type.

---

# Superseded Proposed Decisions

## Decision P003 — Research and Knowledge Lifecycle

**Status:** Superseded

Superseded by Decision 031.

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
