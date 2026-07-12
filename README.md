# Chronicle Engine

> *A persistent historical simulation engine where stories emerge from the evolution of a living world.*

---

## Overview

Chronicle Engine is a software architecture project for building AI-driven historical simulations.

Unlike traditional RPG systems, Chronicle Engine does not generate stories through predefined plots or scripted encounters.

Instead, it simulates persistent worlds whose history emerges naturally from the interaction of:

- Individuals
- Institutions
- Cultures
- Economies
- Politics
- Discovery
- Environment
- Chance

The player is not the center of the world.

The player becomes part of its history.

---

# Project Goals

Chronicle Engine is designed to support:

- Multiple worlds
- Multiple campaigns
- Multiple generations of characters
- Persistent historical continuity
- Emergent progression
- Long-form simulation
- AI-assisted roleplaying

The engine is world-agnostic and can support fantasy, science fiction, historical, or entirely original settings.

---

# Repository Structure

```text
ChronicleEngine/

|- engine/         Core engine specification
|- worlds/         World definitions
|- campaigns/      Individual campaigns and their save checkpoints
|- docs/           Project documentation
|- templates/      Template conventions and reusable ledger/object skeletons
|- system/         Repository-level infrastructure (ID registry)
|- README.md
\- LICENSE
```

---

# Where to Start

If you are new to the project, read the documents in the following order.

## Development

1. docs/PROJECT_CONTEXT.md
2. docs/DEVELOPMENT_WORKFLOW.md
3. docs/AI_SESSION_TEMPLATE.md
4. docs/CONTRIBUTING.md

For gameplay, use `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`. The Runtime reads campaign state and presents a spoiler-safe introduction; players do not need to read repository files.

---

## Engine

1. engine/000_ENGINE_MANIFEST.md
2. engine/001_ENGINE_DECISIONS.md
3. engine/002_ENGINE_ROADMAP.md
4. engine/010_ENGINE_RULES.md
5. engine/011_ENGINE_DATA_MODEL.md
6. engine/012_ENGINE_RUNTIME.md

---

## Reference

1. engine/020_ENGINE_GLOSSARY.md
2. engine/030_ENGINE_CHANGELOG.md
3. templates/000_TEMPLATE_CONVENTIONS.md

---

## World

1. worlds/asterra/200_WORLD_BIBLE.md

---

## Case Studies

1. docs/400_CASE_STUDIES/401_MICTIAN_CAMPAIGN.md

Case studies document the observations that inspired Chronicle Engine.

They are not part of the engine specification.

---

# Repository Philosophy

The repository is the single source of truth.

Conversation history is temporary.

Architectural knowledge belongs in documentation.

When important design decisions are made, they should be recorded inside the repository rather than relying on conversational memory.

---

# Development Workflow

Every development session follows the workflow defined in:

```
docs/DEVELOPMENT_WORKFLOW.md
```

In summary:

1. Review the repository.
2. Review the roadmap.
3. Perform an architecture review.
4. Discuss design.
5. Implement changes.
6. Review affected documents.
7. Commit changes.

---

# Core Principles

Chronicle Engine prioritizes:

- Historical simulation over scripted narrative.
- World-first design over protagonist-centric design.
- Emergent progression over predefined classes.
- Consistency over convenience.
- Causality over spectacle.
- Long-term maintainability over short-term features.

---

# Current Status

**Current Engine Version:** 0.1.5 (Foundation Release)

**Current Development Target:** Version 0.2.0 — Knowledge & Civilization

The Foundation line (0.1.0–0.1.5) is complete and frozen. Version 0.2.0 is the first simulation capability built on it, currently in validation. The Engine Version advances to 0.2.0 only once its validation gates are complete (Decision 048).

Current focus:

- Version 0.2.0 (Knowledge & Civilization) implemented (Decisions 046–047, Rules Section 8).
- Completing Version 0.2 Capability Validation.
- Next: Prototype Alpha — Engine Validation Campaign, then the Engine Postmortem (Decision 048).

See:

```
engine/002_ENGINE_ROADMAP.md
```

for current milestones.

---

# Contributing

Please read:

```
docs/CONTRIBUTING.md
```

before proposing architectural changes.

Chronicle Engine follows a documentation-first development process.

Major architectural changes should:

- respect existing ADRs,
- avoid duplicated concepts,
- preserve engine/world separation,
- improve long-term maintainability.

---

# License

Private development project.

The engine specification and supporting documentation are currently under active development.

---

> **"History is not written for the player. The player becomes part of history."**
