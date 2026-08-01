# Chronicle Engine

**Document Version:** 1.14

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

The bootstrap working set is deliberately bounded. Follow this section, read only the first Markdown table under `# Worlds` and the first Markdown table under `# Campaigns` in `system/WORLDS_AND_CAMPAIGNS.md`, render the welcome page, and stop. `system/RUNTIME_CONTEXT_BUDGETS.yaml` is the machine-readable measurement manifest for this set. Do not preload the resident core, Gameplay Runtime Profile, start guide, engine specifications, validators, campaign files, world profiles, or historical per-campaign notes during `/ChronicleEngine`; they are fetched after the player chooses an operation.

The play-discipline skills are already binding repository instructions. If the harness does not register them, read their compact contracts from `AGENTS.md`; do not preload both `.claude/skills/` and `.agents/skills/` mirrors. The contracts are:

   - **`chronicle`** — this bootstrap contract (you are executing it now).
   - **`rules`** — state a mechanic only as a cited section from the World Rule Profile; verify player- and self-asserted rules against the file; never invent from genre memory.
   - **`resolve`** — every uncertain resolution is an actual rolled tool call (never a typed die); damage is the authored formula shown; Health is tracked; a pre-System protagonist has no System window.
   - **`save`** — a checkpoint is verified files on disk (the full Save Algorithm), never a claim; the transactional checkpoint helper must return `"status":"created"` after its gates before the word "saved."
   - **`npc-knowledge`** — an NPC acts only on information the fiction gave *that* NPC a channel to; the player is the authority on what is private.

Load `docs/AI_GAMEPLAY_RESIDENT_CORE.md` only when a campaign operation is selected and keep it for the play session. Derive the selected operation's remaining bounded reads with `tools/resolve_operation_plan.ps1`; fetch rules, save procedure, export procedure, and validation tools only when that operation invokes them.

Then select what to play and load its state only when the player subsequently issues `/continue`, `/resume`, `/new`, or `/load`:

- **A specific campaign** — read `campaigns/<campaign>/090_CAMPAIGN_STARTUP.md`, load its canonical ledgers (`100`–`180`) and world records under `worlds/<world>/` as directed there, and, when resuming, the latest checkpoint under `campaigns/<campaign>/saves/`. `required_sources` means authoritative availability, not a forced whole-file preload: read the restoration entry point and current state, then fetch relevant objects/events/sections from large ledgers in bounded, non-overlapping ranges.
- **Bootstrap always stops here** — present the **complete runtime-command catalog** and the worlds-and-campaigns listing **rendered from `system/WORLDS_AND_CAMPAIGNS.md`**, then **wait for the player to choose** (`/continue [world|campaign]`, `/resume [world|campaign]`, `/new <world>`, or `/load <checkpoint>`). Do **not** load campaign files, auto-load or auto-resume a campaign, begin reconciliation, or enter a readiness gate until the player chooses one—presenting the Engine Welcome Page is the whole job.

Every campaign path named anywhere in this file or in the start guide — `campaigns/prototype_alpha/`, `worlds/verra/` — is an **example**, never the repository's inventory. The inventory is the index, and only the index. A campaign absent from the welcome page because the listing was recalled instead of rendered is a startup failure, not a missing campaign.

### Exact cold-start command catalog

On bootstrap, render **every row below**. Do not rename, merge, omit, or invent commands or aliases. Only the aliases explicitly written below exist.

| Command | What it does |
|---------|--------------|
| `/ChronicleEngine` | Start the engine and render the Engine Welcome Page only. Takes no target and never loads or resumes a campaign. Aliases: `/game`, `/chronicle`, `/chronicles`. |
| `/help [command]` | List this complete catalog, or explain one command. |
| `/save [label]` | Checkpoint the current campaign. Requires a loaded campaign. |
| `/end` | Save and close the current campaign session. Alias: `/save-and-quit`. Requires a loaded campaign. |
| `/continue [world\|campaign]` | Resume the named campaign, the latest campaign in a named world, or—without an argument—the most recently played campaign. Alias: `/resume [world\|campaign]`. |
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
| `/inventory` | Show every character's current canonical inventory, grouped by character, including money and other currency holdings. Requires a loaded campaign; out-of-character and read-only. |
| `/validate` | Run repository validation. |
| `/debug` | Toggle full roll-mechanics detail. Off by default. |
| `/length [short\|normal\|long]` | Set how long the narration runs each turn: `short` (1–2 paragraphs), `normal` (2–3), or `long` (4–5). With no argument, report the current level. A display preference only — it changes how much is written, never what happens, and touches no canon. Default `normal`. Aliases: `/narration`, `/verbosity`. |
| `/export-debug [label]` | Export the raw user-visible current chat with only speaker labels and exact message bodies; no campaign required. |
| `/flag [summary]` | Raise an engine-level design issue — something about how the Runtime or engine itself behaved, not a one-off in-fiction correction. Always written immediately to `engine/004_DESIGN_FLAGS.md`; never left as an ephemeral suggestion only. Out-of-character; no campaign required. |

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
|- system/         Repository-level infrastructure (ID registry, worlds/campaigns index)
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

To **play**, send `/ChronicleEngine` (see [Play Chronicle Engine](#play-chronicle-engine) above). The Runtime reads campaign state and presents a spoiler-safe introduction; players do not need to read repository files. Gameplay is governed by `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (held every turn) and `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (consulted on demand).

For setup instructions and ready-to-use AI Project prompts, see `docs/GAMEPLAY_START_GUIDE.md`.

Validate live world and campaign state before accepting a checkpoint or canonical promotion:

```powershell
python -m pip install -r tools/requirements.txt
powershell -NoProfile -ExecutionPolicy Bypass -File tools/validate_live.ps1
```

Validation is tiered. **Tier 1** `tools/validate_live.ps1` is repository structure plus runtime configuration in one command — the gate for ordinary work and before promotion. **Tier 2** `tools/validate_checkpoint.ps1` adds the checkpoint form, lineage, and index-synchronization contract. **Tier 3** `tools/test_all.ps1` runs the full development regression suite and is explicitly **not** a save gate. Saving itself goes through `tools/new_checkpoint.ps1`, which runs the Tier 1 gates before and after promotion.

The Python dependency provides the real YAML parser used for campaign startup and cross-file runtime-configuration checks; installation is required once per environment.

After semantic promotion and live read-back, create a checkpoint from its hash-bound mutation receipt with:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/new_checkpoint.ps1 `
  -Campaign campaigns/gatefall_pendragon_001 `
  -CheckpointType manual `
  -Label "session checkpoint" `
  -ExpectedParent 900_CHECKPOINT_0030 `
  -MutationReceipt .tmp/runtime-mutation-receipt.json
```

The authoritative receipt schema and ordering remain in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` under **Save Algorithm**. The helper prints exact gate output and one final `CHECKPOINT_RECEIPT_JSON=` result; it does not perform semantic Canon Promotion.

Generate a bounded, read-only campaign operation plan with:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/resolve_operation_plan.ps1 -Campaign gatefall_pendragon_001 -Operation continue
```

Measure resident, bootstrap, campaign-readiness, and fetched-operation context against the checked-in budgets with:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/measure_runtime_context.ps1
```

Regenerate or verify the Engine Welcome Page inventory with:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/generate_runtime_index.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File tools/generate_runtime_index.ps1 -Check
```

---

## Engine

1. engine/000_ENGINE_MANIFEST.md
2. engine/001_ENGINE_DECISIONS.md — indexed decision history; search the decision number/title and read that complete decision block rather than preloading the whole ledger
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

## Worlds and Campaigns

For the current inventory — every world and campaign, with status and latest checkpoint — see:

```
system/WORLDS_AND_CAMPAIGNS.md
```

World bibles:

1. worlds/asterra/200_WORLD_BIBLE.md
2. worlds/reikon/200_WORLD_BIBLE.md
3. worlds/verra/200_WORLD_BIBLE.md

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

**Current Engine Version:** 0.3.0 (Runtime & Persistence Hardening)

**Current Development Target:** Version 0.4 — Planning not yet begun

The Foundation line (0.1.0–0.1.5) is complete and frozen. Version 0.2.0 was the first completed simulation capability built on it. **Version 0.3.0 was released on 2026-08-01** after Capability Validation, the Gatefall: Pendragon Prototype Campaign, and the Engine Postmortem (Decision 048).

What 0.3 delivered:

- **A persistence layer that holds.** Fifty-six consecutive conforming checkpoints across six Data Model versions (0.1.2 → 0.1.6) and forty-six world-profile versions, with exact named restoration, branch, restart, and registry preservation demonstrated. The layer this version existed to harden did not fail once.
- **Milestones 0.3.1–0.3.3** (Decisions 072–074): Save Layer Unification, single-owner Presence and Location, and World Rule Profile versioning and freeze. 0.3.4 was assessed and closed by drop (Decision 075).
- **Ten findings from live play** (Decisions 076–085), each classified, versioned, migrated, and revalidated — Relationship Texture, distinct game and repository dates, exact clock settlement, reconcilable counters and progression candidates, pending world-side commitments, opportunity supply on the world's clock, world-state settlement dispatch, and the NPC participation audit.
- **A scoped Architecture Freeze** (Decision 086): it binds Implementation and the Consistency Audit, and from Capability Validation onward a foundational change is permitted only when it comes from played evidence, is classified, is versioned and migrated, and is revalidated.

The Engine Postmortem is `docs/430_RUNTIME_PERSISTENCE_VALIDATION/440_ENGINE_POSTMORTEM.md`. Its carried findings are required input to Version 0.4 Planning, which is blocked until the 0.4 number collision is settled (see `engine/002_ENGINE_ROADMAP.md`).

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
