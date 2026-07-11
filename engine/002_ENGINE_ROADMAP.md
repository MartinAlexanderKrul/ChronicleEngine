# Chronicle Engine

# Engine Roadmap

**Engine Version:** 0.1.0  
**Status:** Active Development

# Current Sprint

Goal:

Complete Version 0.1 Engine Foundation.

Current Task:

Architecture Review for Canonical Record Architecture

Next Review:

Canonical Record Architecture readiness and dependency review (v0.1)

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
- [x] Engine Glossary
- [x] World Bible (Asterra)

### Remaining

- [ ] Canonical Record Architecture
- [ ] Institutions & Organizations
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

Status: Planned

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

Status: Planned

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

Status: Active Review

Purpose:

Define how authoritative state, play transcripts, campaign chronicles, historical sources, session summaries, and machine-readable saves relate to one another.

This architecture must clarify which records are:

- authoritative canon,
- evidence inside the world,
- retrospective interpretation,
- convenience summaries,
- machine persistence.

This should be resolved before Historical Persistence or Save State Architecture are formalized.

---

# Technical Debt

Current architectural debt:

- Finalize Persistent Entity abstraction.
- Resolve Canonical Record Architecture before Historical Persistence or Save State Architecture.
- Remove remaining terminology drift.
- Eliminate duplicated definitions through cross-references.
- Stabilize repository governance.
- Reconcile canon hierarchy wording between Manifest, Decisions, and Rules.
- Define version compatibility model.
- Complete missing governance documents.

---

# Current Dependencies

The current Canonical Record Architecture milestone depends on the following existing engine work:

- `001_ENGINE_DECISIONS.md`
  - Decision P007 - Canonical Record Architecture
- `010_ENGINE_RULES.md`
  - Section 2 - Canon, Knowledge & Truth
  - Section 3 - Time & World Simulation
  - Section 8 - Research & Knowledge
- `020_ENGINE_GLOSSARY.md`
  - terminology normalization for canon, records, sources, ledgers, chronicles, saves, and summaries

Before Historical Persistence or Save State Architecture are written, Canonical Record Architecture should be resolved to avoid duplicated authority, record-type collapse, or accidental canon stored in the wrong document class.

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
