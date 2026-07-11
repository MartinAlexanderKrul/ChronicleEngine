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

## Archived Event

An event preserved through records rather than only living memory.

Archived events remain recoverable through documents, ledgers, orders, correspondence, or similar records.

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

## Design Retrospective

A non-canonical document explaining how earlier projects, campaigns, or failures influenced Chronicle Engine architecture.

It belongs to the repository's design-retrospective layer rather than the engine, world, campaign, or historical layers.

---

## Discovery

The process by which previously unknown information becomes known through interaction, observation, investigation, experimentation, records, or similar means.

Discovery changes knowledge state.

It does not retroactively change objective reality.

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

## Event Importance

The classification of how lasting or culturally significant an event is within the simulation.

Current categories include Immediate, Archived, Historical, and Mythic.

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

## Historical Document

A document generated by the world or preserved within it as an artifact of memory, recordkeeping, scholarship, law, religion, propaganda, or culture.

Historical documents may be accurate, incomplete, biased, forged, or contradictory.

---

## Historical Event

An event that remains significant beyond its immediate moment and becomes part of shared world memory, institutional memory, or later interpretation.

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

## Immediate Event

An event mainly relevant to the current or near-term situation.

Immediate events often matter greatly in play even if they do not remain historically prominent.

---

## Institution

A persistent organized structure that can outlive its founders and current members.

Institutions may possess leadership, resources, goals, doctrine, knowledge, internal tensions, and historical continuity.

Examples include guilds, churches, governments, universities, and trade compacts.

---

## Investigation

A deliberate effort to gather evidence, trace causes, verify claims, or resolve uncertainty.

Investigation may be scholarly, political, legal, magical, archaeological, or personal.

---

## Institutional Knowledge

Knowledge preserved, controlled, or transmitted by an organization rather than by one individual alone.

It may be more durable than personal memory while still remaining incomplete, restricted, politicized, or outdated.

---

## Intent

What an actor is trying to accomplish.

Intent is evaluated before method during action resolution.

---

## Knowledge Asset

A resource whose value lies primarily in information rather than only in physical substance.

Examples include maps, journals, blueprints, research, and legal records.

---

## Knowledge Layer

One of the distinct categories the engine uses to separate truth from belief and access from reality.

Current engine knowledge layers include Objective Reality, Character Knowledge, Institutional Knowledge, Public Knowledge, and Myth & Belief.

---

## Knowledge Lifecycle

The process by which knowledge is observed, hypothesized, investigated, validated, recorded, published, adopted, suppressed, lost, or rediscovered over time.

---

## Ledger

A structured record used to preserve durable state, transactions, holdings, or other canonical information over time.

Not every ledger is equally authoritative; authority depends on its place in the canon hierarchy.

---

## Machine-Readable Save

An implementation artifact used to preserve and restore simulation state.

Machine-readable saves support continuity but do not outrank the canon hierarchy.

---

## Method

How an actor attempts to achieve an objective or intent.

Multiple methods may pursue the same intent.

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

## Persistent Entity

A meaningfully evolving thing whose identity continues across time and whose state can change through simulation.

Characters are already treated this way in the rules, while the fully generalized engine abstraction remains a pending architectural decision.

---

## Possession

Current control, custody, or practical holding of a resource.

Possession is distinct from ownership.

---

## Primary Priority

The highest current simulation priority within dynamic world simulation.

It is usually assigned to the player character's immediate environment and other currently consequential systems.

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

Information generally accepted by a society, culture, or population.

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

## Research

A sustained effort to generate, refine, test, organize, or recover knowledge.

Research may be theoretical, practical, experimental, archival, magical, or field-based.

---

## Rediscovery

The recovery of knowledge, methods, or evidence that once existed but was lost, suppressed, forgotten, fragmented, or misunderstood.

Rediscovery is historical recovery, not retroactive invention.

---

## Resource

Any tangible or intangible asset that can be owned, possessed, consumed, transferred, created, destroyed, inherited, or preserved.

Resources include property, equipment, consumables, wealth, knowledge assets, and organizational assets.

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

## Session Summary

A retrospective summary of play that may preserve useful information but does not outrank higher-priority canonical records.

Session summaries are helpful reference artifacts, not the top authority source.

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

## Validation

The process by which a claim, theory, method, or discovery is sufficiently supported to be treated as reliable within a given context.

Validation may remain local, contested, conditional, or later overturned.

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

# Revision Policy

New terms should be added when they are:

- used repeatedly across multiple documents,
- important to architectural clarity,
- at risk of inconsistent interpretation,
- or necessary to distinguish similar concepts.

Definitions should prefer existing engine usage over new invention.

If a term still lacks stable meaning, the glossary should note that it remains provisional rather than pretending the architecture is already settled.
