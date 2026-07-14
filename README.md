# Chronicle Engine

**Document Version:** 1.4

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

<a id="play-chronicle-engine"></a>

# Play Chronicle Engine — the `/ChronicleEngine` command

**To start the engine, send `/ChronicleEngine` to an AI that can read and write this repository.** The command takes no target and always renders the Engine Welcome Page only. `/game`, `/chronicle`, and `/chronicles` are its only aliases and have exactly the same argumentless behavior.

`/ChronicleEngine` is the **bootstrap command**. It is documented here, in `README.md`, on purpose: at the start of a conversation an AI may see only this file, so the command that boots the engine must be reachable from this file alone. Every other runtime command (`/save`, `/continue`, `/new`, `/end`, …) is defined once the Gameplay Runtime Profile is loaded; `/ChronicleEngine` is the one that loads it.

After the profile loads, its complete command table is active immediately on the selection screen. A command is never deferred until campaign play, treated as readiness confirmation, or guessed as an in-world action; if it needs a campaign, report that precondition and leave the selection screen unchanged.

### What the AI must do on `/ChronicleEngine`

You are being asked to start Chronicle Engine in **Interpreter mode**. `/ChronicleEngine` has an empty argument schema: do not parse, infer, or forward a world, campaign, checkpoint, or label from text following it. Every invocation loads only the engine boot set below, renders the Engine Welcome Page—the exact complete catalog plus repository worlds and campaign metadata—asks the player to choose, and stops.

This **Bootstrap Gate fires before campaign discovery or restoration**. Do **not** read campaign ledgers or checkpoints, restore state, recap a scene, or enter a readiness gate. A recent, active, sole, or trailing-text campaign is never an implicit bootstrap argument. `/ChronicleEngine`, `/game`, `/chronicle`, and `/chronicles` always mean “Engine Welcome Page,” never “continue.”

The rest of the repository is available as readable, writable files even if this conversation began showing only `README.md`. **Read the engine files below on your own initiative.** Seeing only this README at the start is a cold-start artifact, never a reason to report that the engine files are missing — report a blocker only after an actual read attempt on a named file errors.

Read, in this order, then follow the loaded procedure:

1. **`docs/GAMEPLAY_START_GUIDE.md`** — the setup guide. Its **AI Instructions** block and start/resume prompts are the authoritative bootstrap text; follow them.
2. **`docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`** — the operational profile that governs every turn of play (player agency, action resolution and the die, the Runtime Command Interface, checkpoints, gameplay close). This is the resident rulebook for the session.
3. **`engine/010_ENGINE_RULES.md`** — engine rules; load **Sections 4 and 6** (action resolution and combat) before the first uncertain action, and **Section 13** (saves) for checkpoint/restore.
4. **`engine/012_ENGINE_RUNTIME.md`** and **`engine/011_ENGINE_DATA_MODEL.md`** — runtime obligations and the data model (identifiers, ledgers) the validator enforces.
5. **`tools/validate_repository.ps1`** — the validation gate run before any checkpoint is claimed saved.

Then select what to play and load its state only when the player subsequently issues `/continue`, `/resume`, `/new`, or `/load`:

- **A specific campaign** — read `campaigns/<campaign>/090_CAMPAIGN_STARTUP.md`, its canonical ledgers (`100`–`180`), the campaign's world records under `worlds/<world>/`, and, when resuming, the latest checkpoint under `campaigns/<campaign>/saves/`.
- **Bootstrap always stops here** — present the **complete runtime-command catalog** and a listing of worlds (`worlds/`) and campaigns (`campaigns/`) with each campaign's status and latest checkpoint, then **wait for the player to choose** (`/continue [world|campaign]`, `/resume [world|campaign]`, `/new <world>`, or `/load <checkpoint>`). Do **not** load campaign files, auto-load or auto-resume a campaign, begin reconciliation, or enter a readiness gate until the player chooses one—presenting the Engine Welcome Page is the whole job.

### Exact cold-start command catalog

On bootstrap, render **every row below**. Do not rename, merge, omit, or invent commands or aliases. Only the aliases explicitly written below exist.

| Command | What it does |
|---------|--------------|
| `/ChronicleEngine` | Start the engine and render the Engine Welcome Page only. Takes no target and never loads or resumes a campaign. Aliases: `/game`, `/chronicle`, `/chronicles`. |
| `/help [command]` | List this complete catalog, or explain one command. |
| `/save [label]` | Checkpoint the current campaign. Requires a loaded campaign. |
| `/end` | Save and close the current campaign session. Alias: `/save-and-quit`. Requires a loaded campaign. |
| `/continue [world|campaign]` | Resume the named campaign, the latest campaign in a named world, or—without an argument—the most recently played campaign. Alias: `/resume [world|campaign]`. |
| `/new <world>` | Start a new campaign in a world. |
| `/load <checkpoint>` | Restore a specific restorable checkpoint of the current campaign. Requires a loaded campaign. |
| `/restart` | Destructively reset the current campaign to its baseline after confirmation. Requires a loaded campaign and baseline checkpoint; it is not “reload latest.” |
| `/branch [name]` | Fork the current campaign at its latest checkpoint. Requires a loaded campaign. |
| `/worlds` | List available worlds. |
| `/campaigns [world]` | List campaigns and latest checkpoints, optionally filtered by world. |
| `/saves` | List checkpoints for the current campaign. Alias: `/checkpoints`. Requires a loaded campaign. |
| `/export [label]` | Export the current campaign's durable gameplay transcript. Requires a loaded campaign; it is not a save. |
| `/recap` | Show a spoiler-safe recap. Requires a loaded campaign. |
| `/status` | Show the out-of-character progression view. Requires a loaded campaign. |
| `/validate` | Run repository validation. |
| `/debug` | Toggle full roll-mechanics detail. Off by default. |
| `/export-debug [label]` | Export the raw user-visible current chat with only speaker labels and exact message bodies; no campaign required. |

Do not open the first scene until you have presented a spoiler-safe introduction or recap and the player has confirmed readiness (the profile's Readiness Gate). As part of that readiness step, **show the complete runtime-command catalog** plus every command the selected campaign's world defines (a Reikon campaign lists `/system`) — never a remembered or state-filtered subset. If your file access is indirect, confirm write capability with the preflight canary described in the start guide before canonical play.

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

To **play**, send `/ChronicleEngine` (see [Play Chronicle Engine](#play-chronicle-engine) above). The Runtime reads campaign state and presents a spoiler-safe introduction; players do not need to read repository files. Gameplay is governed by `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`.

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

**Current Engine Version:** 0.2.0 (Knowledge & Civilization)

**Current Development Target:** Version 0.3 planning

The Foundation line (0.1.0–0.1.5) is complete and frozen. Version 0.2.0 is the first completed simulation capability built on it. Capability Validation, Prototype Alpha, and the Engine Postmortem are complete (Decision 048).

Current focus:

- Version 0.2.0 (Knowledge & Civilization) released.
- Version 0.3 scope approval and ADR planning are next.

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
