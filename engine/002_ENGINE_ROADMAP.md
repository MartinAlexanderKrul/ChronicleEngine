# Chronicle Engine

# Engine Roadmap

**Engine Version:** 0.1.0  
**Status:** Active Development

# Current Sprint

Goal:

Complete Version 0.1 Engine Foundation.

Current Task:

Architecture Review for Politics & Governance

Next Review:

Politics & Governance readiness and dependency review (v0.1)

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
- [x] Engine Glossary
- [x] World Bible (Asterra)

### Remaining

- [ ] Politics & Governance
- [ ] Magic Framework
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

Focus:

- Engine-level magic abstraction
- World extension model
- Costs
- Limitations
- Discoverability
- Magical research

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

The current Politics & Governance milestone depends on the following existing engine work:

- `001_ENGINE_DECISIONS.md`
  - Decision 033 - Persistent Entity Abstraction
  - Decision 034 - Institution Typing and Ledger Scope
  - Decision 035 - Institution Lifecycle Model
  - Decision 032 - Canonical Record Architecture
- `010_ENGINE_RULES.md`
  - Section 1 - Engine Laws
  - Section 2 - Canon, Knowledge & Truth
  - Section 3 - Time & World Simulation
  - Section 5 - Living Characters
  - Section 6 - Conflict, Combat, Injury & Death
  - Section 9 - Institutions & Organizations
- `020_ENGINE_GLOSSARY.md`
  - terminology normalization for institutions, governance, persistence, knowledge, resources, ownership, records, and objectives

Before Politics & Governance is written, it should be checked against the Institution Lifecycle Model (Section 9), Persistent Entity, Resources & Ownership, and Canonical Record Architecture to avoid creating a one-off governance model that treats kingdoms, governments, or armies inconsistently with the typing already established in Decision 034.

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
