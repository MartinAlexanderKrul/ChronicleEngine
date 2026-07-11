# Chronicle Engine

# Engine Roadmap

**Engine Version:** 0.1.4
**Status:** Active Development

# Current Sprint

Goal:

Foundation Stabilization is complete. Repository architecture is synchronized and ready for Architecture Freeze review and Version 0.2 scoping.

Current Task:

None - awaiting Architecture Freeze confirmation and Version 0.2 scoping.

Next Review:

Architecture Freeze review and Version 0.2 - Knowledge & Civilization scoping, when initiated.

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

## Foundation Stabilization

Status: **Complete**

A post-hardening synchronization milestone focused on repository consistency, governance, and authority alignment rather than new engine mechanics.

### Completed

- [x] Normalized Engine version metadata to a single current Engine version across the repository
- [x] Confirmed the canonical structural scope taxonomy in `011_ENGINE_DATA_MODEL.md` as `personal | local | regional | world | historical`
- [x] Aligned Rules, Glossary, Runtime references, and Templates to the Data Model's scope ownership
- [x] Removed speculative save-manifest identifier language in favor of existing world/campaign names or repository paths
- [x] Collapsed the duplicated simulation model so Rules Section 1 remains authoritative and Section 3.3 cross-references it
- [x] Refreshed README, INDEX, PROJECT_CONTEXT, CONTRIBUTING, DEVELOPMENT_WORKFLOW, and AI startup guidance to reflect the current architecture
- [x] Repaired stale roadmap, changelog, and repository-status summaries introduced before stabilization

### Remaining

All Foundation Stabilization items complete.

---

## Foundation Hardening

Status: **Complete**

A pre-0.2 milestone that strengthens the engine's architecture rather than adding gameplay systems. It arose from the Foundation Hardening architecture review, which found the runtime under-specified and identified missing data-model abstractions.

### Completed

- [x] Runtime Model - `012_ENGINE_RUNTIME.md`; Decision 041 (Runtime Model), Decision 042 (Durable Canon and Promotion Obligation)
  - [x] Separated *what is true* (Rules) from *how the engine operates* (Runtime)
  - [x] Defined the Runtime as substrate-independent, with the Interpreter as a component
  - [x] Resolved the repository-vs-transcript canon contradiction via the precedence/durability split and mandatory Canon Promotion
- [x] Data Model - `011_ENGINE_DATA_MODEL.md`, `system/ID_REGISTRY.md`; Decision 043 (Persistent Object and Data Model Structural Contract), Decision 044 (Stable Entity Identity)
  - [x] Persistent Object root abstraction with Entity, Record, Event, Relationship specializations
  - [x] Semantic-free identifiers with the repository-level registry and its allocation invariants
  - [x] Single-Canonical-Record invariant; Canonical State versus Historical Evidence
  - [x] Stable entity identity: aliases and the identity-continuity graph resolving the nine identity cases
  - [x] Relocated structural enumerations from Rules Section 3.10 and Section 2.8; repointed the Runtime
- [x] Ledger Templates (Phase 1) - `templates/`; Decision 045 (Ledger Template System)
  - [x] Template conventions; the fenced-YAML Object Block; the atom-and-container model
  - [x] Core Object Block templates for every specialization and entity type
  - [x] `100_CHARACTER_SHEET`, `130_NPCS_AND_FACTIONS`, `900_SAVE_MANIFEST` ledgers
  - [x] Deliberately-invalid placeholders with validation rejection (`011` Section 12.3)
  - [x] One non-canonical instantiated Character example

### Remaining

- [ ] Ledger Templates (Phase 2) - remaining campaign, world, and historical ledgers; completed as needed, may run alongside Version 0.2
- [ ] Terminology and doc-graph cleanup carried in Technical Debt (below)

---

## Version 0.1 - Engine Foundation

Status: **Complete**

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
  - [x] Save State Architecture
- [x] Engine Glossary
- [x] Engine Changelog
- [x] World Bible (Asterra)

### Remaining

All Version 0.1 items complete.

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

The engine-level portion of this milestone - abstraction, world extension model, cost/limitation/discoverability contract, and magical research - is substantially closed by `001_ENGINE_DECISIONS.md` Decision 037 and `010_ENGINE_RULES.md` Section 11. Magical research already runs through the existing Research & Knowledge lifecycle (Section 8) and required no separate mechanic.

Remaining focus is world-layer authoring rather than engine work:

- Expanding Asterra's Weave system in `worlds/asterra/200_WORLD_BIBLE.md` against the Supernatural Phenomena Contract (Section 11.2)
- Any world-specific magic content for future worlds

Goal:

Ensure magic extends the simulation instead of replacing it.

---

## Version 0.5 - Historical Simulation

Status: **Partially Rescoped**

Historical documents, myths, biographies, archives, and historical interpretation are substantially closed at the engine layer by `001_ENGINE_DECISIONS.md` Decision 038 and `010_ENGINE_RULES.md` Section 12 - a historical document is an Individual Resource/Knowledge Asset with no dedicated mechanic required, and Libraries/Archives are achievable today as Institutions holding such resources (Section 9.6), without new engine work.

Remaining genuinely new focus:

- Retrospective Ages / Historical Periodization - not yet formalized; World Bible Section 8 demonstrates the concept narratively but no engine mechanic exists
- World-layer authoring of Asterra's historical documents and myths against Section 12

Goal:

Allow history itself to become part of gameplay.

---

## Version 0.6 - Persistence

Status: **Partially Rescoped**

Save architecture and basic version-compatibility recording are closed by `001_ENGINE_DECISIONS.md` Decision 039 and `010_ENGINE_RULES.md` Section 13 - saves are ledger checkpoints with manifests, not a new format, and restoration is already defined.

Remaining genuinely new focus:

- Campaign migration and world migration procedures for reconciling version mismatches, deferred by Decision 039
- Long-term continuity across many campaigns and checkpoints within one persistent world

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

## Save State Architecture

Status: Accepted

Ledger-as-Save (checkpoint of canonical Markdown ledgers)

v

Save Manifest (metadata only)

v

Restoration Procedure

v

Version Compatibility (recording and mismatch detection only)

Deliberately avoids a compiled or derived save format. Migration procedures remain reserved for Version 0.6 - Persistence.

Integrated through `001_ENGINE_DECISIONS.md` Decision 039 and `010_ENGINE_RULES.md` Section 13.

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
- Create or de-reference `003_DESIGN_PRINCIPLES.md`, referenced as an authority by the Manifest and README but not yet present.
- Stabilize repository governance.
- Reconcile canon hierarchy wording between Manifest, Decisions, and Rules. *(Partially addressed by Decision 042: precedence vs. durability separated; promotion made mandatory.)*
- Define version compatibility model.
- Complete missing governance documents.

---

# Current Dependencies

No active task. Version 0.1 - Engine Foundation is complete, and the changelog (`030_ENGINE_CHANGELOG.md`) now indexes Decisions 001-045 plus the Foundation Stabilization synchronization pass.

When Version 0.2 - Knowledge & Civilization is initiated, its dependencies should be drawn from Research & Knowledge (Section 8), Institutions & Organizations (Section 9), and the Knowledge Lifecycle Future Architecture entry below, consistent with the roadmap's stated focus: civilization-scale research lifecycle, discovery system expansion, knowledge propagation, universities, guilds, religious organizations, and cultural memory.

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
