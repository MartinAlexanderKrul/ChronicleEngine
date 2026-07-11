# Chronicle Engine

## Engine Manifest

**Engine Version:** 0.1.4
**Status:** Workshop Draft  
**Project Type:** Persistent Historical Simulation Engine  
**Simulation Model:** World-First  
**Action Resolution:** d100  
**Progression Model:** Emergent (No Levels / No Experience Points)

---

# Purpose

Chronicle Engine is a reusable simulation engine for persistent historical roleplaying campaigns.

Unlike traditional RPG systems, Chronicle Engine does not generate stories through predefined plots or scripted encounters. Instead, it simulates a living world that evolves through the interactions of individuals, institutions, cultures, economies, natural forces, and chance.

Narrative is an emergent consequence of historical simulation.

The engine is designed to support multiple worlds, multiple campaigns, and multiple generations of characters while preserving a single continuous history.

---

# Vision

The world is the primary persistent entity.

Characters, kingdoms, institutions, discoveries, religions, technologies, and civilizations are transient participants within that world.

Campaigns end.

Characters die.

Institutions rise and fall.

History continues.

---

# Repository Architecture

The tree below describes the standard repository structure Chronicle Engine is expected to use.

Not every planned document or layer is required to already exist in the current workshop draft.

Only files that actually exist in the repository are authoritative at any given time.

```text
ChronicleEngine/

├── engine/
│   ├── 000_ENGINE_MANIFEST.md
│   ├── 001_ENGINE_DECISIONS.md
│   ├── 002_ENGINE_ROADMAP.md
│   ├── 003_DESIGN_PRINCIPLES.md
│   ├── 010_ENGINE_RULES.md
│   ├── 011_ENGINE_DATA_MODEL.md
│   ├── 012_ENGINE_RUNTIME.md
│   ├── 020_ENGINE_GLOSSARY.md
│   └── 030_ENGINE_CHANGELOG.md
│
├── system/
│   └── ID_REGISTRY.md
│
├── worlds/
│   └── <world>/
│       ├── 200_WORLD_BIBLE.md
│       ├── ...
│       ├── institutions/
│       │   └── <institution>/
│       │       ├── 250_INSTITUTION_LEDGER.md
│       │       ├── ...
│       ├── historical/
│       │   └── <document>/
│       │       ├── 300_HISTORICAL_DOCUMENT.md
│       │       ├── ...
│
├── campaigns/
│   └── <campaign>/
│       ├── 100_CHARACTER_SHEET.md
│       ├── 110_WORLD_LEDGER.md
│       ├── 120_INVENTORY_AND_OWNERSHIP.md
│       ├── 130_NPCS_AND_FACTIONS.md
│       ├── 140_OBJECTIVES.md
│       ├── 150_ARMIES_AND_ORGANIZATIONS.md
│       ├── 160_CAMPAIGN_CHRONICLE.md
│       ├── 170_CHANGELOG.md
│       ├── 180_CURRENT_STATE.md
│       │
│       └── saves/
│           └── 900_CHECKPOINT_<NNNN>/
│               ├── 900_SAVE_MANIFEST.md
│               ├── 100_CHARACTER_SHEET.md
│               ├── 110_WORLD_LEDGER.md
│               ├── 120_INVENTORY_AND_OWNERSHIP.md
│               ├── 130_NPCS_AND_FACTIONS.md
│               ├── 140_OBJECTIVES.md
│               ├── 150_ARMIES_AND_ORGANIZATIONS.md
│               ├── 160_CAMPAIGN_CHRONICLE.md
│               ├── 170_CHANGELOG.md
│               └── 180_CURRENT_STATE.md
│
├── docs/
│   └── 400_CASE_STUDIES/
│       └── 401_MICTIAN_CAMPAIGN.md
│
└── templates/
    ├── 000_TEMPLATE_CONVENTIONS.md
    ├── objects/
    ├── ledgers/
    └── examples/
```

---

# Engine Components

## Engine Layer (000–099)

Defines reusable simulation behavior.

Contains:

- engine philosophy,
- immutable rules,
- the data model (`011_ENGINE_DATA_MODEL.md`),
- the runtime model (`012_ENGINE_RUNTIME.md`),
- architectural decisions,
- terminology,
- roadmap,
- version history.

The Engine Layer separates three concerns that must not be conflated:

- **`010_ENGINE_RULES.md`** defines *what is true* — the world model and simulation behavior.
- **`011_ENGINE_DATA_MODEL.md`** defines *how truth is structured* — the Persistent Object and its specializations, stable identifiers, the single-Canonical-Record invariant, references, and schemas.
- **`012_ENGINE_RUNTIME.md`** defines *how the engine operates* — how a runtime loads, resolves, infers, mutates, promotes, and persists state.

The Data Model is the **most stable layer** of the architecture: everything references its identifiers and structures, so it changes least often and is amended most conservatively. Stability is not authority — the Data Model is authoritative on structure and subordinate to the Rules on behavior.

The Runtime is substrate-independent. Substrate-specific procedure lives in operational **Runtime Profiles** under `docs/`, not in the Engine Layer. The current large-language-model profile's session procedure is `docs/AI_SESSION_TEMPLATE.md`.

Persistent-object identifiers are allocated by the repository-level registry at `system/ID_REGISTRY.md`, governed by `011_ENGINE_DATA_MODEL.md`.

The Engine Layer must remain independent of any specific setting.

---

## World Layer (200–299)

Defines a persistent setting.

Contains:

- geography,
- civilizations,
- religions,
- institutions,
- technologies,
- historical timeline,
- magic framework,
- baseline world state.

A world may support multiple campaigns.

---

## Campaign Layer (100–199)

Represents one character's lifetime within a world.

Tracks:

- character progression,
- inventory,
- current world knowledge,
- organizations,
- objectives,
- campaign chronicle,
- current simulation state.

A campaign never modifies engine rules.

Campaigns modify world state only through simulated historical events.

---

## Historical Layer (300–399)

Stores historical documents generated by simulation.

Examples include:

- chronicles,
- biographies,
- scholarly treatises,
- military histories,
- religious texts,
- memoirs,
- legal records,
- myths,
- propaganda.

Historical documents are artifacts produced by the world. They may be accurate, incomplete, biased, or contradictory.

---

## Design Retrospective Layer (400–499)

Stores non-canonical architecture retrospectives and case studies.

Examples include:

- campaign postmortems,
- design retrospectives,
- lessons learned,
- architecture traceability documents.

These files explain why the engine was designed a certain way.

They are not engine canon, world canon, campaign canon, or historical artifacts produced by simulation.

---

## Save Layer (900–999)

Stores machine-readable simulation state.

These files exist to preserve and restore world continuity.

They are implementation details rather than player-facing documentation.

---

# Canon Hierarchy

Canonical priority is defined by `010_ENGINE_RULES.md` Section 2.

Manifest summary:

1. Explicit rulings made during gameplay
2. Gameplay transcript
3. Canonical ledger files
4. Session summaries
5. Reasonable inference
6. Newly generated information

World, campaign, institution, and other scoped ledgers all belong to the canonical ledger tier.

Their scope determines which facts they preserve.

Historical documents are in-world evidence and interpretation. Their existence, contents, authorship, and provenance may be canon, but their claims do not automatically outrank ledgers or become objective truth.

Lower-priority sources may never silently replace higher-priority canon.

---

# Versioning

Engine, worlds, campaigns, and saves are versioned independently.

| Component | Purpose |
|-----------|---------|
| Engine Version | Simulation rules |
| Data Model Version | Structural schema compatibility |
| World Version | Setting canon |
| Campaign Version | Character progression |
| Save Version | Machine compatibility |

Changes to one component should not require version changes to unrelated components.

---

# Current Versions

| Component | Version |
|-----------|---------|
| Engine | 0.1.4 |
| Data Model | 0.1.1 |
| World | 0.9 |
| Campaign | Not Created |
| Save Format | 0.1.0 |

---

# Current Official World

**Asterra**

**Status:** World Version 0.9 (Workshop Draft)

---

# Current Development Phase

The project is currently focused on completing the engine specification.

Current priority:

1. Complete Foundation Stabilization.
2. Confirm Architecture Freeze readiness.
3. Begin Version 0.2 scoping.
4. Finalize the first official world.

---

# Document Authority

This document defines the overall architecture of Chronicle Engine.

Behavioral rules belong in **010_ENGINE_RULES.md**.

Structural definitions — identity, record shape, and references — belong in **011_ENGINE_DATA_MODEL.md**.

Runtime behavior — how the engine is executed — belongs in **012_ENGINE_RUNTIME.md**.

Template instantiation of that structure — the fillable skeletons world and campaign files copy — belongs in **`templates/`**, a non-canonical instantiation layer governed by the Data Model. See `templates/000_TEMPLATE_CONVENTIONS.md`.

Architectural reasoning belongs in **001_ENGINE_DECISIONS.md**.

Project planning belongs in **002_ENGINE_ROADMAP.md**.

High-level design philosophy belongs in **003_DESIGN_PRINCIPLES.md**.

Design retrospectives and architectural inspiration records belong in `docs/400_CASE_STUDIES/`.

These retrospective documents may justify or challenge design choices, but they do not override accepted decisions or engine rules.

If a planned document is referenced here but does not yet exist in the repository, it is a reserved part of the intended architecture rather than an active authority source.

If a conflict exists between this document and the Engine Rules, the Engine Rules take precedence.

If the Engine Rules conflict with an accepted Engine Decision, the discrepancy should be resolved through the formal revision process.

---

# License

**Status:** Private Development Project

Chronicle Engine is currently under active development.

The engine specification, world documentation, and campaign framework are evolving together toward Version 1.0.
