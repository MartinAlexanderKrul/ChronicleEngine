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

# Play Chronicle Engine — the `/ChronicleEngine` command

**To start or resume a game, send `/ChronicleEngine` to an AI that can read and write this repository.** (`/start`, `/game`, `/rpg`, `/chronicle`, and `/chronicles` are aliases and do exactly the same thing. Optionally name a target: `/ChronicleEngine <campaign-path-or-world>`.)

`/ChronicleEngine` is the **bootstrap command**. It is documented here, in `README.md`, on purpose: at the start of a conversation an AI may see only this file, so the command that boots the engine must be reachable from this file alone. Every other runtime command (`/save`, `/continue`, `/new`, `/end`, …) is defined once the Gameplay Runtime Profile is loaded; `/ChronicleEngine` is the one that loads it.

### What the AI must do on `/ChronicleEngine`

You are being asked to run Chronicle Engine gameplay in **Interpreter mode**. The rest of the repository is available to you as readable, writable files even if this conversation began showing only `README.md`. **Read the files below on your own initiative.** Seeing only this README at the start is a cold-start artifact, never a reason to report that the game files are missing — report a blocker only after an actual read attempt on a named file errors.

Read, in this order, then follow the loaded procedure:

1. **`docs/GAMEPLAY_START_GUIDE.md`** — the setup guide. Its **AI Instructions** block and start/resume prompts are the authoritative bootstrap text; follow them.
2. **`docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`** — the operational profile that governs every turn of play (player agency, action resolution and the die, the Runtime Command Interface, checkpoints, gameplay close). This is the resident rulebook for the session.
3. **`engine/010_ENGINE_RULES.md`** — engine rules; load **Sections 4 and 6** (action resolution and combat) before the first uncertain action, and **Section 13** (saves) for checkpoint/restore.
4. **`engine/012_ENGINE_RUNTIME.md`** and **`engine/011_ENGINE_DATA_MODEL.md`** — runtime obligations and the data model (identifiers, ledgers) the validator enforces.
5. **`tools/validate_repository.ps1`** — the validation gate run before any checkpoint is claimed saved.

Then select what to play and load its state:

- **A specific campaign** — read `campaigns/<campaign>/090_CAMPAIGN_STARTUP.md`, its canonical ledgers (`100`–`180`), the campaign's world records under `worlds/<world>/`, and, when resuming, the latest checkpoint under `campaigns/<campaign>/saves/`.
- **No target given** — list the available worlds (`worlds/`) and campaigns (`campaigns/`) and let the player pick, resume the most recently played campaign, or start a new one. This is the same behavior as `/continue` and `/new` once the profile is loaded.

Do not open the first scene until you have presented a spoiler-safe introduction or recap and the player has confirmed readiness (the profile's Readiness Gate). As part of that readiness step, **show the player a short menu of available commands** — the runtime commands plus any commands the campaign's world defines (a Reikon campaign lists `/system`) — so they know what they can type. If your file access is indirect, confirm write capability with the preflight canary described in the start guide before canonical play.

**For the full copy-paste AI Instructions and exact start prompts, see `docs/GAMEPLAY_START_GUIDE.md`.**

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
|- tools/          Deterministic repository validation
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

To **play**, send `/ChronicleEngine` (see [Play Chronicle Engine](#play-chronicle-engine--the-chronicleengine-command) above). The Runtime reads campaign state and presents a spoiler-safe introduction; players do not need to read repository files. Gameplay is governed by `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`.

For setup instructions and ready-to-use AI Project prompts, see `docs/GAMEPLAY_START_GUIDE.md`.

Validate live world and campaign state before accepting a checkpoint or canonical promotion:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/validate_repository.ps1
```

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
