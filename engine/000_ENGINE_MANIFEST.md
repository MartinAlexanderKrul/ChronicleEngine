# Chronicle Engine

## Engine Manifest

**Engine Version:** 0.2.0
**Status:** Workshop Draft  
**Project Type:** Persistent Historical Simulation Engine  
**Simulation Model:** World-First  
**Action Resolution:** d100  
**Progression Model:** Emergent by default; declared World Rule Profiles may replace behavioral progression

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
│   ├── ID_REGISTRY.md
│   └── WORLDS_AND_CAMPAIGNS.md
│
├── tools/
│   └── validate_repository.ps1
│
├── worlds/
│   └── <world>/
│       ├── 200_WORLD_BIBLE.md
│       ├── 206_WORLD_RULE_PROFILE.md    (optional; declared overrides)
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

- design principles (`003_DESIGN_PRINCIPLES.md`),
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

The Runtime is substrate-independent. Substrate-specific procedure lives in operational **Runtime Profiles** under `docs/`, not in the Engine Layer. Large-language-model execution uses `docs/AI_SESSION_TEMPLATE.md` for Architect-mode development and, for Interpreter-mode gameplay, a two-layer profile (Decisions 049 and 070): `docs/AI_GAMEPLAY_RESIDENT_CORE.md` is the resident layer, held in context every turn, and `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` is the fetched reference layer. The split is required by `012_ENGINE_RUNTIME.md` Section 0.4 and Decision 055: fetched material may elaborate a resident obligation but never carry one alone.

Persistent-object identifiers are allocated by the repository-level registry at `system/ID_REGISTRY.md`, governed by `011_ENGINE_DATA_MODEL.md`.

The repository's worlds and campaigns are indexed at `system/WORLDS_AND_CAMPAIGNS.md`, the rendered source for the Engine Welcome Page listing (Decision 071). It is operational and non-canonical: it records what exists and where so a player can choose, holds no canonical state, carries no identifier, and is subordinate to the campaign ledgers it points at.

Repository validation tooling lives under `tools/`. It operationalizes Data Model and Runtime constraints but does not define them; `tools/validate_repository.ps1` is the reference implementation of the Repository Validation Barrier (Decision 054).

`tools/` also holds governance and conformance gates, which check agreement between documents rather than the validity of canonical state: `tools/test_decision_roadmap_sync.ps1` enforces that every accepted decision is claimed by a roadmap milestone (Decision 069), and the command-catalog and world-contract tests enforce synchronization between documents that intentionally duplicate content. Like the validator, they enforce constraints defined elsewhere and define none of their own.

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

A world may also declare a **World Rule Profile** (`206_WORLD_RULE_PROFILE.md`), replacing engine-general behavioral rules within an explicit scope (Rules Section 14; Decisions 059 and 062). It is *world rule content*: authoritative on behavior, holding no Persistent Object state and carrying no identifier, as the Engine Rules are. It may not override Persistent Object structure, canon authority, Runtime invariants, or the save and validation barriers (Rules Section 14.3).

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

Campaigns may contain non-canonical operational and presentation artifacts. `090_CAMPAIGN_STARTUP.md` declares startup policy; `095_PLAYER_BRIEFING.md` is a disposable, derived, spoiler-safe presentation. Neither owns canon nor carries a Persistent Object identifier.

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
| Engine | 0.2.0 |
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

Chronicle Engine develops one version at a time through the standard development lifecycle (`001_ENGINE_DECISIONS.md` Decision 048; `docs/DEVELOPMENT_WORKFLOW.md`). The Engine Version represents the most recent completed release, not work in progress.

**Current Engine Version:** 0.2.0 (Knowledge & Civilization)
**Current Development Target:** Version 0.3 planning
**Current Milestone:** Scope approval

The Foundation line (0.1.0–0.1.5) is complete and frozen. Version 0.2.0 completed Knowledge & Civilization and all lifecycle validation gates.

Current priority:

1. Approve the Version 0.3 scope.
2. Draft Version 0.3 ADRs.
3. Freeze architecture before implementation (Decision 048).

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
