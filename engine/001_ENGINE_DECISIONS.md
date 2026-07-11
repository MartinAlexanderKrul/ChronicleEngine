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

## Decision 032 - Canonical Record Architecture

**Status:** Accepted  
**Related Sections:** `010_ENGINE_RULES.md` - Sections 2 and 8

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

# Pending Decisions

The following topics have been identified but not yet finalized:

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
