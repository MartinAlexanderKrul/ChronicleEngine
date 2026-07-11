# Chronicle Engine

# Engine Roadmap

**Engine Version:** 0.1.0  
**Status:** Active Development

# Current Sprint

Goal:

Complete Version 0.1 Engine Foundation.

Current Task:

Architecture Review for Save State Architecture

Next Review:

Save State Architecture readiness and dependency review (v0.1)

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
  - [x] Historical Persistence
- [x] Engine Glossary
- [x] World Bible (Asterra)

### Remaining

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

Status: **Partially Rescoped**

Historical documents, myths, biographies, archives, and historical interpretation are substantially closed at the engine layer by `001_ENGINE_DECISIONS.md` Decision 038 and `010_ENGINE_RULES.md` Section 12 — a historical document is an Individual Resource/Knowledge Asset with no dedicated mechanic required, and Libraries/Archives are achievable today as Institutions holding such resources (Section 9.6), without new engine work.

Remaining genuinely new focus:

- Retrospective Ages / Historical Periodization — not yet formalized; World Bible §8 demonstrates the concept narratively but no engine mechanic exists
- World-layer authoring of Asterra's historical documents and myths against Section 12

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

Status: Accepted

Historical Documents as Resources

v

Generation and Provenance

v

Promotion from Campaign Chronicle

v

Legacy (generalized to all Persistent Entities)

v

Document Variety (no closed taxonomy)

v

Multiplicity and Compression

Deliberately reuses Individual Resources, Knowledge Assets, and Promotion rather than introducing a document-generation subsystem. Archive, Chronicle, Biography, Memoir, Treatise, Myth, Propaganda, and Legal Record remain descriptive examples, not enforced categories.

Integrated through `001_ENGINE_DECISIONS.md` Decision 038 and `010_ENGINE_RULES.md` Section 12.

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

The current Save State Architecture milestone depends on the following existing engine work:

- `001_ENGINE_DECISIONS.md`
  - Decision P006 - Save-State Architecture
  - Decision 032 - Canonical Record Architecture
  - Decision 029 - Engine Versioning Is Separate from World Versioning
  - Decision 028 - Stable Semantic File Numbering
  - Decision 038 - Historical Persistence
- `010_ENGINE_RULES.md`
  - Section 2.8 - Canonical Record Architecture (Machine-Readable Saves)
  - Section 3.10 - Persistent Entities (record responsibility)
- `000_ENGINE_MANIFEST.md`
  - Save Layer (900-999)
  - Versioning table (Engine, World, Campaign, Save)

Before Save State Architecture is written, it should be checked against the existing Machine-Readable Saves record role (Section 2.8, which already states saves are implementation artifacts that must not silently override rulings, transcripts, or ledgers) and against every ledger-scope decision made so far (institution, historical, campaign, world) to ensure save/restore procedures cover all of them rather than only the original campaign ledgers.

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
