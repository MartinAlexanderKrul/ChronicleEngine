# Chronicle Engine

# Engine Roadmap

**Engine Version:** 0.1.0  
**Status:** Active Development

# Current Sprint

Goal:

Complete Version 0.1 Engine Foundation.

Current Task:

Architecture Review for Historical Persistence

Next Review:

Historical Persistence readiness and dependency review (v0.1)

---

# Purpose

This document tracks the planned evolution of Chronicle Engine.

Unlike the Engine Rules, this document is expected to change frequently.

Unlike Engine Decisions, it records future work rather than accepted architectural choices.

A roadmap item is not considered part of the engine until it has been accepted, documented, and integrated into the Engine Rules.

---

# Development Philosophy

Chronicle Engine is developed incrementally.

Each milestone should:

- strengthen architectural consistency,
- avoid unnecessary complexity,
- preserve backward compatibility whenever practical,
- improve historical simulation rather than add isolated mechanics.

New systems should emerge from existing abstractions instead of introducing unrelated concepts.

---

# Current Milestone

## Version 0.1 - Engine Foundation

Status: **In Progress**

### Completed

- [x] Engine Manifest
- [x] Engine Decisions (ADR)
- [x] Engine Rules
  - [x] Engine Laws
  - [x] Design Philosophy
  - [x] Canon & Knowledge
  - [x] Time & Simulation
  - [x] Action Resolution
  - [x] Living Characters
  - [x] Conflict, Combat, Injury & Death
  - [x] Resources & Ownership
  - [x] Research & Knowledge
  - [x] Canonical Record Architecture
  - [x] Persistent Entity Abstraction
  - [x] Institutions & Organizations
  - [x] Politics & Governance
  - [x] Magic Framework
- [x] Engine Glossary
- [x] World Bible (Asterra)

### Remaining

- [ ] Historical Persistence
- [ ] Save State Architecture
- [ ] Engine Changelog

---

# Planned Milestones

## Version 0.2 - Knowledge & Civilization

Focus:

- Civilization-scale research lifecycle
- Discovery system expansion
- Knowledge propagation between people and institutions
- Institutions
- Universities
- Guilds
- Religious organizations
- Cultural memory

Goal:

Extend the foundational Research & Knowledge rules from Version 0.1 into civilization-scale historical development.

---

## Version 0.3 - Governance & Society

Focus:

- Governments
- Laws
- Diplomacy
- Population
- Economy
- Trade
- Infrastructure
- Logistics

Goal:

Support believable civilizations without requiring direct player control.

---

## Version 0.4 - Magic Framework

Status: **Rescoped**

The engine-level portion of this milestone — abstraction, world extension model, cost/limitation/discoverability contract, and magical research — is substantially closed by `001_ENGINE_DECISIONS.md` Decision 037 and `010_ENGINE_RULES.md` Section 11. Magical research already runs through the existing Research & Knowledge lifecycle (Section 8) and required no separate mechanic.

Remaining focus is world-layer authoring rather than engine work:

- Expanding Asterra's Weave system in `worlds/asterra/200_WORLD_BIBLE.md` against the Supernatural Phenomena Contract (Section 11.2)
- Any world-specific magic content for future worlds

Goal:

Ensure magic extends the simulation instead of replacing it.

---

## Version 0.5 - Historical Simulation

Focus:

- Historical documents
- Libraries
- Archives
- Myths
- Biographies
- Retrospective Ages
- Historical interpretation

Goal:

Allow history itself to become part of gameplay.

---

## Version 0.6 - Persistence

Focus:

- Save architecture
- Campaign migration
- World migration
- Version compatibility
- Long-term continuity

Goal:

Support multiple campaigns within one persistent world.

---

# Future Architecture

The following abstractions have been identified but are not yet finalized.

## Persistent Entity

Status: Accepted

Purpose:

Provide a common lifecycle model for:

- characters,
- institutions,
- settlements,
- kingdoms,
- artifacts,
- armies,
- religions,
- discoveries,
- technologies.

Integrated through `001_ENGINE_DECISIONS.md` Decision 033 and `010_ENGINE_RULES.md` Section 3.10.

---

## Knowledge Lifecycle

Status: Planned

Observation

v

Hypothesis

v

Experiment

v

Validation

v

Publication

v

Adoption

v

Historical significance

---

## Institution Lifecycle

Status: Accepted

Foundation

v

Growth

v

Division

v

Transformation

v

Decline

v

Legacy

Integrated through `001_ENGINE_DECISIONS.md` Decision 035 and `010_ENGINE_RULES.md` Section 9.

---

## Political Entities & Governance

Status: Accepted

Settlement/Kingdom Typing

v

Governance as Relationship

v

Legitimacy

v

Law

v

Diplomacy

v

Treaties

Population, Economy, Trade, Infrastructure, and Logistics remain out of scope, reserved for Version 0.3 - Governance & Society.

Integrated through `001_ENGINE_DECISIONS.md` Decision 036 and `010_ENGINE_RULES.md` Section 10.

---

## Supernatural Phenomena Contract

Status: Accepted

World Extension Principle

v

Contract Declaration (source, access, cost, limitation, risk, discoverability, consequence)

v

Integration with Existing Mechanics

v

Consistency

Deliberately minimal by design: the engine defines only the contract a world must satisfy. Any specific magic or supernatural system, including Asterra's Weave, remains world-layer content.

Integrated through `001_ENGINE_DECISIONS.md` Decision 037 and `010_ENGINE_RULES.md` Section 11.

---

## Historical Source Model

Status: Planned

Differentiate:

- Archive
- Chronicle
- Biography
- Memoir
- Treatise
- Myth
- Propaganda
- Legal Record

while preserving canonical relationships between them.

---

## Canonical Record Architecture

Status: Accepted

Purpose:

Define how authoritative state, play transcripts, campaign chronicles, historical sources, session summaries, and machine-readable saves relate to one another.

This architecture must clarify which records are:

- authoritative canon,
- evidence inside the world,
- retrospective interpretation,
- convenience summaries,
- machine persistence.

This has been resolved before Historical Persistence or Save State Architecture are formalized.

Integrated through `001_ENGINE_DECISIONS.md` Decision 032 and `010_ENGINE_RULES.md` Section 2.8.

---

# Technical Debt

Current architectural debt:

- Remove remaining terminology drift.
- Eliminate duplicated definitions through cross-references.
- Stabilize repository governance.
- Reconcile canon hierarchy wording between Manifest, Decisions, and Rules.
- Define version compatibility model.
- Complete missing governance documents.

---

# Current Dependencies

The current Historical Persistence milestone depends on the following existing engine work:

- `001_ENGINE_DECISIONS.md`
  - Decision 032 - Canonical Record Architecture
  - Decision 033 - Persistent Entity Abstraction
  - Decision 004 - Canon Hierarchy
  - Decision 005 - Separate Objective Reality from Knowledge and Belief
- `010_ENGINE_RULES.md`
  - Section 2 - Canon, Knowledge & Truth
  - Section 3.5 - Event Importance
  - Section 9.13 - Legacy
  - Section 10.6 - Treaties and Agreements
- `020_ENGINE_GLOSSARY.md`
  - Historical Document, Historical Event, Historical Source, Archived Event, Mythic Event

Before Historical Persistence is written, it should be checked against the Canonical Record Architecture (Decision 032, Section 2.8) and the Event Importance categories (Section 3.5) already defined, to avoid creating a document-generation model that duplicates the existing record-role and event-classification vocabulary rather than building on it.

---

# Release Criteria

Version 1.0 may be declared when:

- All planned engine domains are complete.
- Terminology is stable.
- Repository governance is complete.
- No major architectural duplication remains.
- The engine successfully supports a complete campaign from beginning to end without requiring structural redesign.

Version 1.0 does **not** require the first world to be complete.

The engine and the world are versioned independently.

---

# Long-Term Vision

Chronicle Engine aims to become a reusable historical simulation framework capable of supporting multiple worlds, multiple campaigns, and multiple genres.

Its purpose is not to tell stories.

Its purpose is to simulate worlds from which stories naturally emerge.
