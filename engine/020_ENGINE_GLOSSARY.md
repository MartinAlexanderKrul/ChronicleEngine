# Chronicle Engine

## Engine Glossary

**File:** `020_ENGINE_GLOSSARY.md`  
**Status:** Active Workshop Draft  
**Purpose:** Authoritative definitions for recurring engine terminology

---

# Document Purpose

This document defines the standard meaning of important Chronicle Engine terms.

It exists to reduce ambiguity across the engine specification, decisions, manifest, world files, campaign files, and design retrospectives.

This document does not introduce new mechanics.

It normalizes terminology already used elsewhere in the repository.

If a term is defined here and used differently in another engine document, the discrepancy should be resolved explicitly.

---

# Authority

- `010_ENGINE_RULES.md` defines engine behavior.
- `001_ENGINE_DECISIONS.md` records why architectural choices were made.
- `020_ENGINE_GLOSSARY.md` defines what recurring engine terms mean when used consistently across the repository.

If a glossary definition conflicts with an accepted engine rule, the rule takes precedence until the terminology is reconciled.

---

# Glossary

## Active Simulation

The highest-detail simulation layer.

It covers the player character's immediate surroundings, directly connected people, and events currently requiring full resolution.

---

## Adoption

The process by which knowledge, methods, practices, or conclusions are taken up by individuals, institutions, or societies after discovery or publication.

Adoption may be partial, regional, delayed, resisted, or reversed.

---

## Alias

A time-scoped, provenance-bearing name record on a Persistent Entity, carrying a quality such as current, former, cover, legal, mythic, or posthumous.

An entity's identity is its identifier, never a name; aliases change while identity does not. Defined in `011_ENGINE_DATA_MODEL.md`, Section 5.

---

## Archived Event

An event preserved through records rather than only living memory.

Archived events remain recoverable through documents, ledgers, orders, correspondence, or similar records.

---

## Automatic Execution

The involuntary steps and micro-actions that carry out a declared player intent — such as walking, opening an unbarred door, crossing a room, or sitting when invited — which the Runtime performs without yielding control.

Automatic execution is distinct from a Player Decision Point: it does not require the player to decide anything. Defined in `012_ENGINE_RUNTIME.md`, Section 1.6.

---

## Beat Budget

The interaction-cadence rule that each Runtime response normally consumes one Player Intent and ends at the next Player Decision Point, may contain any number of involuntary world reactions, and must not consume more than one player opportunity.

The Beat Budget is the operative expression of the governing agency rule and is cleaner than any word limit. Defined in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Interaction Cadence); see Decision 050.

---

## Cadence Mode

One of the four interaction-pacing modes the Gameplay Runtime Profile selects by temporal compression and uncertainty: Beat, Scene, Transition, and Montage, coarsening as more world and time are compressed into one response.

Cadence modes govern temporal compression paired with high Narrative Richness; they do not change the Beat Budget, and every mode resolves at exactly one Player Decision Point. Operational profile guidance, not an engine mechanic. Defined in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Interaction Cadence); see Decision 050.

---

## Campaign

One character-centered play history within a persistent world.

A campaign tracks the life, actions, relationships, objectives, and consequences associated with a particular protagonist or focal participant.

A campaign does not redefine engine rules.

---

## Campaign Chronicle

A campaign-layer historical record preserving important events from play in durable form.

It exists to reduce historical compression and preserve continuity across long-running campaigns.

A campaign chronicle does not outrank explicit rulings, gameplay transcripts, or canonical ledgers when resolving canon.

---

## Canon

The body of established facts recognized as valid for simulation and future resolution.

Canon includes objective state, recorded events, rulings, and other information accepted through the engine's authority structure.

---

## Canon Hierarchy

The priority order used to resolve conflicting information.

Higher-priority sources control canon over lower-priority sources.

---

## Canonical Ledger

A structured canonical record used to preserve authoritative campaign or world state.

Ledgers exist to reduce drift in facts such as inventory, ownership, relationships, institutions, and other persistent state.

---

## Canonical Record Architecture

The engine-level model that separates records by role, scope, authority, and provenance.

It prevents authoritative state, in-world evidence, retrospective interpretation, reference summaries, and machine persistence from collapsing into one document type.

---

## Canon Promotion

The runtime act of writing in-session canon — explicit rulings and canon-bearing gameplay-transcript events — into durable ledgers, with provenance, so that it persists in the repository.

Canon Promotion occurs at every promotion barrier: each save checkpoint, and session close. Until promoted, in-session canon is Pending Canon, not Durable Canon. This is distinct from Persistent Entity Promotion (see Promotion). Defined in `012_ENGINE_RUNTIME.md`, Section 5.

---

## Canon-Determinism

The reproducibility standard the Runtime provides: given the same loaded canon, the same rules, and the same resolved die results, the Runtime produces state consistent with that canon and never contradicts it.

Canon-determinism is distinct from output-determinism; exact narration and detail the engine leaves unspecified may vary between runs. Reproducibility is anchored to the repository, not the substrate. Defined in `012_ENGINE_RUNTIME.md`, Section 7.

---

## Canonical State

The single authoritative present truth of a persistent object, held in its one Canonical Record; mutable and versioned.

Canonical state is what is true now. It is distinct from Historical Evidence, which records the past without being authoritative. Defined in `011_ENGINE_DATA_MODEL.md`, Section 7.

---

## Capability

A demonstrated area of practical competence.

Capabilities describe what a character can actually do through education, practice, experience, or repeated application.

They are preferred over broad attribute abstractions.

---

## Case Study

A non-canonical retrospective document that records lessons learned from earlier campaigns or design history.

Case studies may justify architecture decisions, but do not override engine rules or world canon.

---

## Character Knowledge

What a specific character genuinely knows through experience, education, observation, research, or trusted testimony.

Character Knowledge may be incomplete or incorrect.

---

## Condition

The current state of usefulness or integrity of a physical resource.

Condition may change through use, neglect, maintenance, damage, weather, or magical effects.

---

## Consequence

A persistent change produced by an action, event, condition, or decision.

Consequences may affect people, institutions, resources, politics, reputation, knowledge, or history.

---

## Contradiction

A conflict between two or more established claims that cannot all remain true at the same time.

Contradictions must be identified and resolved explicitly rather than ignored.

---

## Context

A Runtime component: the working set of canon currently loaded and available for execution. The Context is a loaded view of canon, not canon itself; durable canon is owned by Persistence.

See Working Set. Defined in `012_ENGINE_RUNTIME.md`, Section 3.

---

## Decision Density

The number of player opportunities a Runtime response consumes.

Decision Density should remain low — ideally one per response — and is independent of Narrative Richness, which should remain high. Conflating the two is the cadence failure the Beat Budget corrects. Defined in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Interaction Cadence); see Decision 050.

---

## Delegation

An explicit, scoped instruction by which the player hands pacing back to the Runtime — for example "skip to the city," "auto-resolve the errand," or "narrate the rest of this conversation."

Delegation is the only path by which the Runtime may skip meaningful interactions; fine cadence resumes at the next Player Decision Point. Defined in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Player Agency Contract).

---

## Design Retrospective

A non-canonical document explaining how earlier projects, campaigns, or failures influenced Chronicle Engine architecture.

It belongs to the repository's design-retrospective layer rather than the engine, world, campaign, or historical layers.

---

## Diplomacy

The process by which institutions, and institutions and settlements or kingdoms, negotiate, ally, contest, or conflict with one another.

Diplomacy uses the Relationships mechanic defined for persistent entities, expressed through a standard quality vocabulary such as Allied, Rival, or Hostile.

---

## Discovery

The process by which previously unknown information becomes known through interaction, observation, investigation, experimentation, records, or similar means.

Discovery changes knowledge state.

It does not retroactively change objective reality.

---

## Durable Canon

Canon that persists between sessions because it has been written to the repository.

Durability is distinct from precedence: the repository is the sole system of record at rest, while the gameplay transcript may hold higher precedence in flight until promoted. See Canon Promotion, Pending Canon. Defined in `012_ENGINE_RUNTIME.md`, Sections 4–6.

---

## Experiment

A deliberate attempt to test a hypothesis, investigate a phenomenon, or produce evidence under meaningful conditions.

Experiments may succeed, fail, mislead, or generate only partial conclusions.

---

## Engine

The reusable simulation layer of Chronicle Engine.

It defines general behavior, rules, terminology, and architectural decisions independent of any specific setting.

---

## Engine Version

The version identifier for the engine's rules and architecture.

It is separate from world, campaign, and save versions.

---

## Event

A specialization of the Persistent Object (`EVT-`): a timed, immutable fact — something that happened at a point in simulated time.

Mutations, transfers, transformations, promotions, and rulings are recorded as Events; provenance points at Event identifiers. An Event's historical importance is classified by Event Importance. Defined in `011_ENGINE_DATA_MODEL.md`, Section 2.4.

---

## Event Importance

The classification of how lasting or culturally significant an event is within the simulation.

Current categories include Immediate, Archived, Historical, and Mythic.

---

## Founding

The act or process by which an institution enters existence, either through a deliberate charter, decree, or ritual, or through Promotion of an existing informal or temporary structure to independent institutional identity.

---

## Global Simulation

The broadest and most abstract simulation layer.

It covers the remainder of the known world outside immediate or regionally relevant play.

Only developments with lasting significance are typically expanded into fuller historical detail.

---

## Gameplay Transcript

The record of events that occurred during play.

The gameplay transcript protects lived events from being overwritten by later summaries, chronicles, or convenience records.

---

## Governance

The exercise of authority by one or more institutions over a settlement or kingdom.

Governance is expressed as a Relationship rather than as a possession or fixed field, and may be shared, contested, or absent.

---

## Governance Structure

The leadership and decision-making arrangement of an institution, such as single, collective, hierarchical, hereditary, elected, or informal authority.

Governance structure is part of an institution's current state and may change without ending its identity.

---

## Historical Document

A document generated by the world or preserved within it as an artifact of memory, recordkeeping, scholarship, law, religion, propaganda, or culture.

Historical documents may be accurate, incomplete, biased, forged, or contradictory.

---

## Historical Event

An event that remains significant beyond its immediate moment and becomes part of shared world memory, institutional memory, or later interpretation.

---

## Historical Evidence

Records about a persistent object's past — superseded record versions, chronicles, historical documents, and myths — which are evidence rather than authoritative state.

Historical evidence may be biased, incomplete, forged, or contradictory. When canonical state is updated, the superseded version becomes historical evidence. Defined in `011_ENGINE_DATA_MODEL.md`, Section 7.

---

## Historical Importance

The degree to which a person, event, institution, or resource matters to long-term continuity, recordkeeping, memory, or later interpretation.

Historical importance influences what is preserved in detail.

---

## Historical Integrity

The principle that the engine simulates history rather than rewriting it for narrative convenience.

Stories emerge from historical development instead of replacing it.

---

## Historical Source

Any surviving record, testimony, artifact, archive, chronicle, treatise, rumor, or document that can inform later understanding of past events.

A historical source is evidence, not automatically objective truth.

---

## ID Registry

The repository-level record at `system/ID_REGISTRY.md` holding the monotonic high-water mark for each identifier kind.

Identifiers are allocated by advancing the registry under four invariants: atomic allocation-with-creation, mandatory registration, no reuse, and branch reconciliation before merge. Defined in `011_ENGINE_DATA_MODEL.md`, Section 1.

---

## Identifier

The stable, semantic-free handle for a persistent object, in one of four kinds: `ENT-` (entity), `REC-` (record), `EVT-` (event), `REL-` (relationship).

Identifiers are opaque, immutable, globally unique per kind, and never reused. All references between objects are by identifier, never by name. Defined in `011_ENGINE_DATA_MODEL.md`, Section 1.

---

## Identity-Continuity Graph

The graph of typed links between entity identifiers that models continuity across lifecycle change: transforms-from, succeeds, splits-from, merges-from, emerges-from, and possibly-same-as.

Each link carries provenance and a certainty qualifier (asserted, disputed, believed, false-claim). Two identifiers are never silently collapsed. Defined in `011_ENGINE_DATA_MODEL.md`, Section 6.

---

## Immediate Event

An event mainly relevant to the current or near-term situation.

Immediate events often matter greatly in play even if they do not remain historically prominent.

---

## Institution

A persistent organized structure that can outlive its founders and current members.

Institutions may possess leadership, resources, goals, doctrine, knowledge, internal tensions, and historical continuity.

Examples include guilds, churches, governments, universities, trade compacts, and military organizations with independent institutional identity.

Institution is a Persistent Entity Type, bounded from Settlement, Kingdom, and Army per Decision 034.

---

## Internal Drift

Gradual change within an institution's doctrine, goals, leadership, or membership, arising from factionalism, external pressure, or unresolved disputes rather than a single defining event.

Internal drift may lead to reform, suppression of a faction, schism, or continued gradual change without formal rupture.

---

## Investigation

A deliberate effort to gather evidence, trace causes, verify claims, or resolve uncertainty.

Investigation may be scholarly, political, legal, magical, archaeological, or personal.

---

## Institutional Knowledge

The holder-specific Knowledge State maintained by an organization rather than by one individual alone.

It may be more durable than personal memory while still remaining incomplete, restricted, politicized, or outdated.

---

## Intent

What an actor is trying to accomplish.

Intent is evaluated before method during action resolution.

---

## Interpreter

The Runtime component that actively executes the simulation: it reads Player intent, resolves actions, applies the Engine Rules, and decides what changes to record.

The Interpreter is a replaceable component of the Runtime, currently realized by a large language model. It authors and reads canon but does not own it; canon is owned by the repository. Defined in `012_ENGINE_RUNTIME.md`, Section 1.

---

## Involuntary World Reaction

Something the world or its NPCs do that requires no player choice — a passer-by's greeting, bells ringing, an NPC continuing their own activity.

Involuntary world reactions are unlimited within a Runtime response and are what make a beat feel alive; they are distinct from a player opportunity, of which a response resolves at most one. Defined in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Interaction Cadence).

---

## Kingdom

See Settlement.

---

## Knowledge Asset

A resource whose value lies primarily in information rather than only in physical substance.

Examples include maps, journals, blueprints, research, and legal records.

A Knowledge Asset may preserve, describe, or transmit a Knowledge Subject, but it is not identical to the subject itself.

---

## Knowledge Layer

One of the distinct categories the engine uses to separate truth from belief and access from reality.

Current engine knowledge layers include Objective Reality, Character Knowledge, Institutional Knowledge, Public Knowledge, and Myth & Belief.

---

## Knowledge Lifecycle

The process by which a Knowledge Subject is observed, hypothesized, investigated, validated, recorded, published, adopted, suppressed, lost, or rediscovered over time, while different holders maintain different Knowledge States about it.

---

## Knowledge State

The holder-specific condition of what a character, institution, public, or cultural tradition knows, believes, understands, validates, possesses, applies, restricts, preserves, or misrepresents about a Knowledge Subject.

Knowledge States change over time and may diverge sharply between holders of the same subject.

---

## Knowledge Subject

The actual claim, technique, theory, discovery, practice, method, doctrine, or knowledge domain whose continuity may matter historically.

Knowledge Subjects persist even while the Knowledge States associated with them change.

---

## Law

Codified doctrine held by a governing institution, treated as a Knowledge Asset whose content, spread, and authority follow the same rules as other institutional knowledge.

A law's existence and text may be canon; its claims of jurisdiction or justice are not automatically true.

---

## Ledger

A structured record used to preserve durable state, transactions, holdings, or other canonical information over time.

Not every ledger is equally authoritative; authority depends on its place in the canon hierarchy.

---

## Ledger Template

A Canonical Record template that composes one or more Object Blocks into a fillable ledger file.

A single-object ledger contains one Object Block; a multi-object ledger contains several under Markdown headings. Ledger templates are a non-canonical instantiation layer under `templates/`, governed by `011_ENGINE_DATA_MODEL.md`. Defined in `templates/000_TEMPLATE_CONVENTIONS.md`.

---

## Legacy

What remains of a persistent entity's influence after its active existence ends, including surviving records, successor entities, inherited obligations, and cultural memory.

Legacy is preserved through the Canonical Record Architecture rather than requiring the entity to remain active.

---

## Legitimacy

The degree to which a governing claim is recognized by those it claims to govern, by rival claimants, and by other institutions.

Legitimacy is tracked qualitatively and belongs to a specific governance relationship rather than to an institution or territory alone.

---

## Machine-Readable Save

An implementation artifact used to preserve and restore simulation state.

Machine-readable saves support continuity but do not outrank the canon hierarchy.

Implemented as a Save Checkpoint accompanied by a Save Manifest.

---

## Method

How an actor attempts to achieve an objective or intent.

Multiple methods may pursue the same intent.

---

## Military Institution

An institution whose defining organizational purpose is armed force, distinguished from an ordinary military asset by independent leadership succession, doctrine, reputation, and continuity beyond any single patron.

A military force that has not been promoted to this status remains part of its parent institution's current state.

---

## Mutation

The Runtime component and act by which state is changed and made durable: writing a change to the scope-responsible ledgers with provenance, under causality and consistency constraints.

Mutation is the only path by which state becomes durable canon. Defined in `012_ENGINE_RUNTIME.md`, Section 5.

---

## Observation

The initial noticing, recording, or recognition of a phenomenon, pattern, event, or anomaly.

Observation may be correct, incomplete, biased, or misinterpreted.

---

## Myth

A culturally meaningful narrative, belief, tradition, or memory that may preserve partial truth, symbolic truth, or falsehood.

Myth influences behavior regardless of factual accuracy.

---

## Mythic Event

An event transformed by culture, religion, legend, propaganda, or later retelling into a form that may differ from objective reality while retaining influence.

---

## Narrative Momentum

The Gameplay Runtime Profile principle that the Runtime should avoid unnecessary interruptions: small actions that logically follow from a declared intent are narrated as involuntary consequences rather than surfaced as choices.

Narrative momentum keeps play from fragmenting into per-sentence stops while still yielding at every meaningful Player Decision Point. Defined in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Player Agency Contract).

---

## Narrative Richness

The sensory and characterful detail within the current beat — smells, sounds, architecture, expressions, NPC voice — which the Runtime should keep high.

Narrative Richness is independent of Decision Density: a response may be maximally rich while consuming exactly one player opportunity. Rich description enriches the current beat; it is not a licence to advance the story. Defined in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Interaction Cadence); see Decision 050.

---

## Object Block

The single on-page representation of a persistent object: a fenced YAML block inside Markdown.

The universal Persistent Object block is minimal (identifier, canonical record, schema version, status, provenance); the Persistent Entity extension adds type, scope, aliases, relationships, identity links, and canonical state. Object Blocks compose into Ledger Templates. Defined in `templates/000_TEMPLATE_CONVENTIONS.md`.

---

## Objective

The concrete result being pursued in a specific action, project, obligation, mission, or longer-running effort.

An objective may change, fail, evolve, or lose relevance through play.

---

## Objective Identity

The factual description of who a character currently is.

It includes concrete traits such as age, profession, affiliations, education, and current condition.

---

## Objective Reality

The actual state of the world independent of any observer's beliefs, memories, or records.

Objective Reality is the highest layer of truth, even when currently unknown.

---

## Ownership

The legal, social, magical, or practical right to a resource.

Ownership is distinct from possession.

---

## Pending Canon

An in-session fact — a ruling or canon-bearing gameplay-transcript event — that has not yet been promoted into a durable ledger.

Pending canon governs play in flight but is not preserved until promoted by the next promotion barrier. See Canon Promotion, Durable Canon. Defined in `012_ENGINE_RUNTIME.md`, Section 5.

---

## Persistence

The Runtime component representing the durable substrate: the version-controlled repository, which is the sole system of record for canon at rest.

Save checkpoints are immutable captures of Persistence. Defined in `012_ENGINE_RUNTIME.md`, Section 6.

---

## Persistent Entity

A meaningfully evolving thing whose identity continues across time and whose state can change through simulation.

A persistent entity maintains identity, type, scope, current state, lifecycle status, relationships, historical continuity, and record responsibility.

Not every object is a persistent entity; generic or low-importance things may remain aggregated until individual continuity becomes important.

Structurally, a Persistent Entity is one specialization of the Persistent Object, identified by an `ENT-` identifier. Its structure is defined in `011_ENGINE_DATA_MODEL.md`, Section 4; its simulation behavior in `010_ENGINE_RULES.md`, Section 3.10.

Its canonical structural scope taxonomy is `personal`, `local`, `regional`, `world`, or `historical`. Terms such as `institutional` and `civilizational` may still describe behavior or reach, but they are not additional structural scope values.

---

## Persistent Object

The root structural abstraction: anything with a stable identifier that persists across time and carries provenance.

Its universal fields — identifier, the one authoritative Canonical Record, provenance, schema version, and status — are defined once on the root. It has four direct specializations: Persistent Entity (`ENT-`), Canonical Record (`REC-`), Event (`EVT-`), and Relationship (`REL-`). Defined in `011_ENGINE_DATA_MODEL.md`, Section 2.

---

## Player Decision Point

A juncture at which a decision within the Player Intent Domain could materially change the direction, stakes, or outcome of the simulation, and at which the Runtime must yield control to the player.

Most basically, a Player Decision Point is reached when the declared intent has been carried to completion and continuing would require a new intent the player has not given — even when the next step seems obvious, because plausible is not the same as chosen. A juncture is not a Player Decision Point merely because an NPC spoke or the character moved. Defined in `012_ENGINE_RUNTIME.md`, Section 1.6, and operationalized in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`.

---

## Player Intent Domain

The set of volitional decisions authored only by the player: whether and how the character acts, what the character says, and whether the character trusts, consents, discloses, or refuses.

Only the player may author intent within this domain; the Runtime resolves its consequences but never authors the intent itself. A declared intent is not yet canon — canon is the resolved outcome the simulation produces from it. Defined in `012_ENGINE_RUNTIME.md`, Section 1.6; see Decision 050.

---

## Player Opportunity

Any point where the player would reasonably expect to choose, ask, or redirect what the character does — whether momentous or minor.

A Runtime response resolves at most one player opportunity, the one at which it yields, in contrast to involuntary world reactions, which are unlimited. Player opportunities are broader than materially consequential decisions: asking about the town or detouring to a library counts. Defined in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Interaction Cadence); see Decision 050.

---

## Possession

Current control, custody, or practical holding of a resource.

Possession is distinct from ownership.

---

## Primary Priority

The highest current simulation priority within dynamic world simulation.

It is usually assigned to the player character's immediate environment and other currently consequential systems.

---

## Promotion

The process by which a generic, aggregated, or campaign-scoped subject gains independent Persistent Entity status, or is elevated to world-layer record responsibility, because its continued individual identity has become historically, mechanically, or narratively significant.

Promotion does not require deleting or renaming the subject's prior record; it extends record responsibility rather than replacing it.

This is *Persistent Entity Promotion*. It is distinct from **Canon Promotion**, the runtime act of writing in-session canon into durable ledgers. The two are different mechanics on different subjects.

---

## Publication

The act of making knowledge available beyond its original discoverer or holder through teaching, copying, speech, archives, institutions, or other transmission.

Publication does not guarantee acceptance.

---

## Provenance

The historically meaningful origin and transmission history of a significant resource.

Provenance may include creator, ownership history, modifications, cultural significance, restoration, or disputed authenticity.

---

## Public Knowledge

A widely distributed or commonly repeated Knowledge State held by a society, culture, or population.

Public Knowledge may still be false, outdated, incomplete, or propagandized.

---

## Regional Simulation

The mid-detail simulation layer.

It covers people, institutions, regions, and developments capable of affecting play within the foreseeable future.

---

## Record Role

The architectural purpose a record serves in the engine.

Examples include authoritative canon, in-world evidence, retrospective interpretation, reference summary, and machine persistence.

Record role determines how a document should be used when resolving contradictions or reconstructing history.

---

## Relationship

A specialization of the Persistent Object (`REL-`): a first-class link between exactly two entities, with a type, qualities, and its own state and history.

Membership, governance, legitimacy, and diplomacy are modelled as relationships; entities reference relationship identifiers rather than duplicating relationship state. The structure is defined in `011_ENGINE_DATA_MODEL.md`, Section 10; the meaning of each relationship type in the relevant `010_ENGINE_RULES.md` domain section.

---

## Research

A sustained effort to generate, refine, test, organize, or recover knowledge.

Research may be theoretical, practical, experimental, archival, magical, or field-based.

---

## Rediscovery

The recovery of a Knowledge Subject that once existed but was lost, suppressed, forgotten, fragmented, or misunderstood.

Rediscovery is historical recovery, not retroactive invention.

---

## Passive Extinction

The disappearance of a technique, method, or practice because its final knowledgeable practitioners die without successfully transmitting it.

Passive extinction may occur even when fragments, rumors, degraded notes, or distorted public memory remain.

---

## Preservation Quality

The qualitative fidelity, completeness, and usability with which a Knowledge Subject survives in records, materials, institutions, or traditions.

High preservation quality improves the chance of accurate transmission or rediscovery; low preservation quality increases distortion, fragmentation, or practical loss.

---

## Transmission Reach

The qualitative breadth of how far a Knowledge State has spread between holders, institutions, traditions, or regions.

Transmission Reach is descriptive rather than a mandatory progression stage.

---

## Resource

Any tangible or intangible asset that can be owned, possessed, consumed, transferred, created, destroyed, inherited, or preserved.

Resources include property, equipment, consumables, wealth, knowledge assets, and organizational assets.

---

## Runtime

The model by which Chronicle Engine is executed: any system capable of applying the Engine Rules to the current repository state in order to advance the simulation.

The Runtime is substrate-independent — it may be realized by a large language model, a local model, a native application, or a dedicated server — and is composed of the Interpreter, Session, Context, Canon, Mutation, and Persistence components. In the execution chain `Player → Runtime → Engine → World → Campaign → History`, it is the seam between the Player and the Engine. Defined in `012_ENGINE_RUNTIME.md`.

---

## Runtime Profile

Operational guidance for executing the Runtime on a specific substrate, held under `docs/` rather than in the engine specification.

A profile specifies technique — how a substrate boots, loads, and sequences a session — without altering runtime obligations. The current large-language-model profile's session procedure is `docs/AI_SESSION_TEMPLATE.md`. Defined in `012_ENGINE_RUNTIME.md`, Section 0.4.

---

## Save Checkpoint

A campaign-scoped, immutable copy of a campaign's canonical Markdown ledgers as they stood at a specific moment, accompanied by a Save Manifest.

A save checkpoint preserves actual canonical ledger content rather than a compiled or derived representation of it. Once created, it does not change.

---

## Save Manifest

A short metadata document accompanying a Save Checkpoint, recording save identity, scope, versions, lineage, included ledgers, compatibility status, and a restoration entry point.

A save manifest never duplicates ledger content.

Its scope fields use existing names or repository paths for the world and campaign, plus the player character's `ENT-` identifier. The manifest does not require separate World IDs or Campaign IDs.

---

## Save Version

The version identifier for machine-readable simulation state and compatibility.

It is distinct from engine, world, and campaign versioning.

Save Version describes compatibility of machine-readable saves; it does not define canon authority.

---

## Self Identity

How a character understands themselves.

It includes self-conception such as fears, ambitions, ideals, beliefs, and perceived strengths or weaknesses.

---

## Session

A Runtime component: a bounded unit of execution with a start and a close.

A Session is transient and holds no durable canon; it is the boundary at which pending canon is committed to Persistence through Canon Promotion. Session close and save checkpoints are promotion barriers. Defined in `012_ENGINE_RUNTIME.md`, Section 2.

---

## Session Summary

A retrospective summary of play that may preserve useful information but does not outrank higher-priority canonical records.

Session summaries are helpful reference artifacts, not the top authority source.

---

## Settlement

A Persistent Entity Type representing territory and population continuity, distinct from Institution.

A settlement's current state includes territorial extent, an aggregate population figure, and prevailing conditions such as prosperity or unrest, tracked qualitatively.

Also called a Kingdom when its role is a sovereign or quasi-sovereign territory.

---

## Substrate

The underlying system that realizes a Runtime — for example a large language model, a local model, a native application, or a dedicated server.

The engine specification is written against the Runtime abstraction, never against a substrate; substrate-specific guidance lives in Runtime Profiles. Defined in `012_ENGINE_RUNTIME.md`, Section 0.1.

---

## Supernatural Phenomenon

Magic, miracle, curse, resurrection, or any other world-established capability that exceeds ordinary physical explanation.

A supernatural phenomenon may exist only if a world establishes it through discoverable mechanics, and must define a source, access requirements, costs, limitations, risks, and social and institutional consequences.

---

## Suppression

The restriction, concealment, destruction, censorship, or controlled retention of knowledge by individuals, institutions, or social systems.

Suppression may delay or prevent publication, adoption, or rediscovery.

---

## Simulation Cycle

The full sequence by which one declared action is resolved, time advances, affected systems are updated, canonical state is revised, and the new situation is presented.

---

## Simulation Layer

A level of abstraction used to determine how much detail the engine applies to a person, place, institution, or region at a given moment.

The current engine uses Active, Regional, and Global simulation layers.

---

## Social Identity

How the world perceives a character.

It includes reputation, title, rumor, legal status, and public standing.

---

## Tracked Objective

A campaign- or simulation-level objective explicitly preserved for continuity and usability.

Tracked objectives replace the need for a dedicated quest mechanic.

---

## Transfer

A change in possession, ownership, or both for a resource.

Transfers should update the relevant canonical records.

---

## Treaty

A Knowledge Asset or Historical Document recording the terms of a diplomatic or governance relationship.

A treaty's existence and text may be canon; its claims do not override the canonical relationship state recorded in the relevant ledgers.

---

## Validation

The process by which a claim, theory, method, or discovery is treated as sufficiently supported within a given context.

Validation may remain local, contested, conditional, or later overturned.

Validation does not by itself determine objective truth.

---

## Working Set

The subset of repository canon a Runtime loads to execute the current situation: a boot set for grounding, plus the scope-responsible ledgers in play.

The working set is assembled by relevance — guided by Simulation Priority and the save manifest — rather than by loading the entire repository. See Context. Defined in `012_ENGINE_RUNTIME.md`, Section 3.

---

## World

The primary persistent entity of the simulation and the broadest continuity container in Chronicle Engine.

Characters, campaigns, institutions, discoveries, and civilizations exist within a world and may end while the world continues.

---

## World Bible

A world-layer foundational document that establishes the baseline state, structure, and canon of a specific setting prior to campaign-specific change.

---

## World-First Simulation

The architectural principle that the world, rather than the protagonist, is the primary persistent entity.

The simulation must remain coherent even if no single player character remains active.

---

## World Version

The version identifier for a specific world's canonical setting state.

It is tracked separately from engine, campaign, and save versions.

---

## Yield

The Runtime act of ending a response at a Player Decision Point and returning control to the player, rather than continuing to advance the simulation.

The governing cadence rule is that the Runtime advances from the player's last declared intent to the next meaningful Player Decision Point, then yields. Defined in `012_ENGINE_RUNTIME.md`, Section 1.6; see Decision 050.

---

# Revision Policy

New terms should be added when they are:

- used repeatedly across multiple documents,
- important to architectural clarity,
- at risk of inconsistent interpretation,
- or necessary to distinguish similar concepts.

Definitions should prefer existing engine usage over new invention.

If a term still lacks stable meaning, the glossary should note that it remains provisional rather than pretending the architecture is already settled.
