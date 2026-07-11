# Chronicle Engine

# Engine Roadmap

**Engine Version:** 0.1.4
**Status:** Active Development

# Current Sprint

Goal:

Architecture Freeze is complete. Version 0.2 is now focused on implementing civilization-scale knowledge continuity through the existing engine.

Current Task:

Formalize Version 0.2 in the roadmap, Decisions 046-047, and Research & Knowledge rules without introducing new simulation subsystems.

Next Review:

Version 0.2 terminology audit and capability validation against the formal non-canonical acceptance fixtures.

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

## Version 0.2 - Knowledge & Civilization

Status: **Active**

Chronicle Engine's next milestone is to model knowledge as a persistent historical force rather than a binary possession or global unlock.

### Goal

Civilization-scale knowledge continuity without a global technology tree or universal unlock model.

### Current Focus

- Formalize the Knowledge Subject / Knowledge State distinction
- Define institutional mediation, custody, and preservation without assigning institutions ownership of objective truth
- Define non-linear transmission, restriction, loss, fragmentation, and rediscovery
- Validate the model through formal non-canonical capability fixtures

### Exclusions

- Population simulation
- Economy or logistics systems
- New governance subsystems
- World-specific magic rules
- Technology trees
- Research-point currencies
- Detailed institutional bureaucracy

### Remaining

- [ ] 0.2.1 Knowledge State Model
- [ ] 0.2.2 Institutional Knowledge Systems
- [ ] 0.2.3 Transmission and Diffusion
- [ ] 0.2.4 Loss, Fragmentation, and Rediscovery
- [ ] 0.2.5 Capability Validation

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

### Version 0.2 Vision

Version 0.2 exists to simulate a historical truth: civilizations do not advance because the world unlocks a stage, but because knowledge is discovered, preserved, misunderstood, validated, restricted, transmitted, lost, and rediscovered unevenly across people, institutions, records, and generations.

Its purpose is to make knowledge behave as a historical force whose continuity matters independently of any one holder.

### Version 0.2 Success Statement

Version 0.2 is complete when Chronicle Engine can model knowledge as a persistent historical force rather than a binary possession.

Knowledge should be able to:

- originate,
- diverge,
- be validated,
- be disputed,
- be restricted,
- be preserved,
- be forgotten,
- be rediscovered,
- and continue across generations,

without requiring a global technology tree, universal unlock system, or additional economy, governance, or world-specific simulation subsystems.

### Foundation

Version 0.2 must strengthen the existing engine rather than expand it. If a mechanic increases historical realism and can be expressed through existing Persistent Objects, Canonical Records, Relationships, Institutions, the Runtime, and the Knowledge State model, that approach is preferred over introducing a new subsystem.

Focus:

- Civilization-scale knowledge continuity
- Knowledge Subject and Knowledge State distinction
- Institutional knowledge systems
- Non-linear propagation and diffusion
- Restriction, fragmentation, and preservation
- Rediscovery and passive extinction
- Cultural memory

Goal:

Extend the foundational Research & Knowledge rules from Version 0.1 into civilization-scale historical development.

### Capability Milestones

#### 0.2.1 Knowledge State Model

Capability delivered:

- Holder-specific Knowledge States about shared Knowledge Subjects
- The normative principle: Knowledge Subjects persist. Knowledge States change.
- Qualitative state dimensions instead of binary unlocks

Dependencies:

- Decision 031
- Decision 032
- Decision 033
- `010_ENGINE_RULES.md` Section 8
- `011_ENGINE_DATA_MODEL.md`
- `012_ENGINE_RUNTIME.md`

Affected rules:

- Section 8
- Supporting cross-references in Sections 2, 7, and 12

ADR impact:

- Decision 046

Acceptance fixtures:

- University validates a finding while religious authorities restrict it
- Two regions inherit diverged versions of the same subject
- Discovery spreads through institutions and records rather than instant global canon

Explicit exclusions:

- No technology tree
- No research-point currency
- No mandatory local-to-world progression ladder

Completion criteria:

- One Knowledge Subject may have multiple divergent Knowledge States
- The rules distinguish truth, custody, validation, and holder state
- The model remains inside existing abstractions

#### 0.2.2 Institutional Knowledge Systems

Capability delivered:

- Institutional mediation of access, custody, validation, preservation, censorship, and monopoly without granting institutions ownership of objective truth

Dependencies:

- Decision 034
- Decision 035
- Decision 036
- Decision 038
- Rules Sections 8, 9, and 12

Affected rules:

- Sections 8 and 9
- Supporting cross-references in Sections 7 and 12

ADR impact:

- Decision 047

Acceptance fixtures:

- Guild monopolizes a practical technique without making its theory public
- Dangerous manuscript is archived, suppressed, then rediscovered
- University validates a finding while religious authorities restrict it

Explicit exclusions:

- No bureaucracy simulator
- No new institutional stat subsystem

Completion criteria:

- Institutions can preserve, restrict, validate, and suppress knowledge through existing mechanics
- Custody remains distinct from truth and holder understanding

#### 0.2.3 Transmission and Diffusion

Capability delivered:

- Non-linear spread of knowledge through transmission paths, distortion, delay, and selective adoption

Dependencies:

- Decision 046
- Section 8.10
- Existing institution, relationship, and canon-layer mechanics

Affected rules:

- Section 8
- Supporting cross-references in Sections 2, 9, 10, and 12

ADR impact:

- Decision 046

Acceptance fixtures:

- Two regions inherit diverged versions of the same knowledge through transmission drift
- Discovery spreads historically through institutions and records rather than instant global canon

Explicit exclusions:

- No map-wide diffusion engine
- No economy or trade subsystem added to justify spread

Completion criteria:

- Transmission is pathway-based rather than globally unlocked
- Reach remains descriptive rather than a mandatory progression stage

#### 0.2.4 Loss, Fragmentation, and Rediscovery

Capability delivered:

- Knowledge continuity through degradation, fragmentation, suppression, passive extinction, and rediscovery

Dependencies:

- Decision 038
- Rules Sections 7, 8, 9, and 12
- Existing resource, archive, and historical-persistence mechanics

Affected rules:

- Sections 8 and 12
- Supporting cross-references in Sections 7 and 9

ADR impact:

- Decision 047

Acceptance fixtures:

- Dangerous magical manuscript is archived, suppressed, then rediscovered later
- Civilization benefits from cultural memory of a lost practice without full understanding
- A technique disappears because the final knowledgeable practitioners die without transmitting it

Explicit exclusions:

- No separate archaeology subsystem
- No historical periodization work

Completion criteria:

- Loss does not require total erasure of all traces
- Rediscovery preserves continuity with the earlier Knowledge Subject
- Passive extinction is a valid historical outcome

#### 0.2.5 Capability Validation

Capability delivered:

- Formal non-canonical validation of the Version 0.2 model against the accepted capability fixtures

Dependencies:

- Decisions 046 and 047
- Revised Rules Section 8
- Frozen foundation documents

Affected rules:

- No new owning section; validates the integrated result across Sections 8, 9, and 12

ADR impact:

- No new ADRs; confirms sufficiency of Decisions 046 and 047

Acceptance fixtures:

1. A university validates a finding while religious authorities restrict it.
2. A guild monopolizes a practical technique without making its theory public.
3. A dangerous magical manuscript is archived, suppressed, then rediscovered later.
4. Two regions inherit diverged versions of the same knowledge through transmission drift.
5. A civilization benefits from cultural memory of a lost practice without fully understanding it.
6. A discovery spreads historically through institutions and records, not instant global canon.
7. A technique disappears because the final knowledgeable practitioners die without transmitting it.

Each fixture defines:

- starting state,
- relevant entities and records,
- required engine capability,
- prohibited shortcuts,
- expected durable outcome.

Explicit exclusions:

- Fixtures are validation artifacts, not canonical world content
- Fixtures must not become substitute system definitions

Completion criteria:

- All seven fixtures can be resolved without contradiction
- No fixture requires a technology tree, research currency, population model, economy/logistics subsystem, governance expansion, or world-specific magic rules

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

## Civilizational Knowledge State and Propagation

Status: Accepted

Knowledge Subject persists

v

Holder-specific Knowledge States diverge

v

Institutions mediate custody, access, and validation

v

Transmission spreads unevenly through people, records, and institutions

v

Loss, fragmentation, and passive extinction remain possible

v

Rediscovery restores continuity without retroactive invention

Integrated through `001_ENGINE_DECISIONS.md` Decisions 046 and 047 and `010_ENGINE_RULES.md` Section 8.

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

Version 0.2 - Knowledge & Civilization is active. Its dependencies are Research & Knowledge (Section 8), Institutions & Organizations (Section 9), Historical Persistence (Section 12), Decisions 031-038, and the Version 0.2 decisions that formalize the Knowledge Subject / Knowledge State model and continuity rules.

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
