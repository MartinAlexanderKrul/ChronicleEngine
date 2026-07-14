# Chronicle Engine

# AI Gameplay Runtime Profile

**Document Version:** 1.32
**Status:** Active Gameplay Workflow — Fetched Reference Layer
**Runtime Profile:** Large Language Model - Gameplay

---

# Purpose

This document defines how a large-language-model Runtime executes Chronicle Engine gameplay. It operationalizes `engine/012_ENGINE_RUNTIME.md` without redefining the Engine Rules, Data Model, or canonical campaign state.

This profile owns first-game startup, player onboarding, campaign restoration, scene-opening confirmation, the Runtime Command Interface, gameplay close, Canon Promotion, and the Gameplay Runtime Report. Repository development uses `docs/AI_SESSION_TEMPLATE.md`.

---

# Runtime Role

Enter **Interpreter mode** before loading gameplay state. Read the repository, translate relevant state into natural player-facing language, apply established rules and canon, preserve information boundaries, and promote canon at every promotion barrier.

Interpreter mode may update world, campaign, and historical state through play. It does not edit engine rules, decisions, roadmap, templates, development workflows, or validation records. Gameplay never waits for implementation approval and never emits a development-session report.

## Resident and Fetched Layers

The profile has two execution layers under Runtime Section 0.4 and Decision 055, and they are **two documents**:

- **Resident per-turn layer — `docs/AI_GAMEPLAY_RESIDENT_CORE.md`.** The Player Agency Contract; Interaction Cadence; intent/fact grounding; the Action Resolution Bright Line and Modifier Step Contract; the Information Boundary; Turn-State Settlement; promotion-obligation awareness; canon-determinism; and the rule that an applicable World Rule Profile is loaded before affected resolution. These checks fire on every turn at the point a fact or outcome would be narrated.
- **Fetched reference layer — this document.** Startup variants, command details, worked examples, export formatting, save/checkpoint procedure, and other sections consulted when their operation is invoked. Fetched material elaborates resident obligations but never replaces them.

**The resident core is loaded before play and held for the whole session.** It is not optional, not summarized, and not consulted on demand. A session executing from this document alone is missing every per-turn guardrail: it has the command table and the save algorithm, and no agency contract, no bright line, and no settlement. Load `docs/AI_GAMEPLAY_RESIDENT_CORE.md` first.

The two layers were one file through Document Version 1.30. They were separated because a resident layer interleaved with six hundred lines of on-demand procedure is resident in name only — the defect Decision 055 identifies, applied to the profile that decision governs (Decision 070).

Mechanical repository validation remains the barrier enforcement point for structural conformance. Promotion completeness remains a deferred barrier, with pending promotion targets tracked by the resident layer.

---

# Runtime Command Interface

Gameplay is driven by natural language. On top of that, the Runtime registers a small set of **runtime commands** — short, out-of-character control verbs the player may issue at any point in a session, including mid-scene. A runtime command is not a game action. It is an instruction to the Runtime *about the session*: save, resume, start, list, end. Each command is a thin dispatcher onto a procedure this profile already defines; it introduces no new persistence mechanic, no new resolution mechanic, and no new canon. The command interface is convenience over the existing algorithms, not an authority beside them.

Every runtime command still passes through the obligations that govern the procedure it triggers. `/save` runs the full Save Algorithm (promotion barrier, validation gate, immutable checkpoint, read-back) — it never short-circuits to a claim that saving is or is not possible. `/new` and `/continue` still pass through the readiness gate, opening-anchor validation, and (for `/new`) the confirmation-before-mutation rule. A command names *which* procedure to run; it never waives that procedure's guarantees.

## Namespace and Precedence

Two kinds of slash token can appear in play, and the Runtime must not confuse them:

- **Runtime commands** — out-of-character, engine-general, defined in this profile. They mean the same thing in every world and every campaign. Their names are **reserved**, including `/game`, `/chronicle`, and `/chronicles` for `/ChronicleEngine`, and `/resume` for `/continue`: a world must not redefine `/save`, `/continue`, `/new`, or any other runtime command or alias as an in-fiction verb.
- **Diegetic commands** — in-fiction, world-authored, part of a world's content (for example Reikon's `/system`, which opens a character's in-world System interface). A diegetic command is world-authoring content governed by the Supernatural Phenomena Contract (Rules Section 11) when it is diegetically real; it is not part of this profile and varies by world.

  When a world declares a diegetic command, it should also declare that command's **canonical render template** — the fixed layout and the rules for binding it to canonical state (Reikon's is the `/system` template in `worlds/reikon/206_WORLD_RULE_PROFILE.md`). Where a world provides one, the Runtime renders that command **verbatim to the template**, deriving every value from canon and never restyling, reordering, or improvising the layout. This makes a diegetic display deterministic across sessions and substrates — the same canon-determinism the die and ledgers already obey (`012` Section 7), extended to the world's own interface, so every Runtime shows the player the same window.

Resolve a leading-slash token in this order:

1. Match it against the **runtime command table** below. If it matches, execute the runtime command.
2. Otherwise, match it against the **active world's diegetic command table**, if the world defines one. If it matches, treat it as an in-world action.
3. Otherwise, treat it as an unknown command: do not guess an action, do not narrate it into the scene, and offer `/help`.

### The Command Table Is Rendered, Not Recalled

**`/help` renders every row from the Command Table below. It is never answered from memory, paraphrase, state filtering, or expectation of what a command "probably" does.** With no argument, it lists the complete runtime catalog, including aliases and commands that require a campaign; an unavailable command is labelled with its requirement, never omitted. With a command argument, it renders that row in full. A command's effect as described to the player must match its table row; shortening a row may drop detail but never change meaning.

This is the same requirement already placed on a world's diegetic render template (above), applied to the control surface, and for the same reason: given the same table, every Runtime must describe the same interface. A player acts on what `/help` tells them. A misdescribed control verb is not a cosmetic error — it is a player instructed to do the opposite of what they intend.

This rule exists because it was broken. A Reikon session's `/help` described `/restart` as "Restart from latest checkpoint" — the inverse of its actual effect (Redo: reset to *baseline*, discarding play) — on a campaign that had no baseline to reset to. The table was correct; the Runtime narrated over it. Rendering the table is the enforcement point (Decision 055).

The same holds for the destructive-command guards below: they are part of each command's definition, not optional caution, and `/help` must not present a guarded command as unconditionally available.

This ordering makes the control verbs reliable — `/save` always checkpoints, never triggers world fiction — while leaving each world free to own its own diegetic vocabulary. A runtime command issued mid-scene is answered out-of-character and does not advance in-world time or consume the Beat Budget; the scene resumes exactly where it paused.

## Command Table

Each command dispatches to the named procedure. The procedure — not this table — carries the detailed obligations.

| Command | Effect | Dispatches to |
|---------|--------|---------------|
| `/ChronicleEngine` | **Bootstrap.** Enter Interpreter mode, load the boot set, render the Engine Welcome Page—the complete command menu plus worlds/campaigns with status and latest checkpoint—and yield. Takes no target and never loads, restores, or resumes a campaign. Aliases (identical effect): `/game`, `/chronicle`, `/chronicles`. | Engine Welcome Page |
| `/help [command]` | With no argument, list **every** runtime command and alias in this table; never state-filter or omit commands. With an argument, explain that command. Out-of-character; no state change. | — |
| `/save [label]` | Checkpoint now. Optional `label` is recorded in the save manifest's save-identity metadata. | Checkpoint Persistence → Save Algorithm |
| `/end` | Close the session: promotion barrier, session-close checkpoint, Gameplay Runtime Report. Alias: `/save-and-quit`. | Gameplay Close |
| `/continue [world|campaign]` | With no argument, resume the **most recently played** campaign from its latest canonical checkpoint. With a world, resume that world's most recently played campaign. With a campaign, resume that campaign. Alias: `/resume [world|campaign]`. | Returning and Takeover Sessions (Rules Section 13.4) |
| `/new <world>` | Start a **new campaign instance** in that world. | Emergent Campaign / Custom Protagonist initialization |
| `/load <checkpoint>` | Restore a **specific earlier** checkpoint of the current campaign. Continuing play from a non-latest checkpoint is a fork (Decision 053). **Refuses a checkpoint recorded as non-restorable** (see Destructive-Command Guards). | Returning Sessions + Fork (Decision 053) |
| `/restart` | **Destructive.** Redo: reset the current campaign to its **baseline** checkpoint, discarding play since baseline. Keeps the protagonist's identifier; does not roll back the registry (Decision 053). **Requires a baseline checkpoint and explicit confirmation** (see Destructive-Command Guards). Not "reload the latest checkpoint" — that is `/continue`. | Redo (Decision 053) |
| `/branch [name]` | Fork the current campaign at its latest checkpoint into a new parallel instance (Decision 053). | Fork (Decision 053) |
| `/worlds` | List the worlds available under `worlds/`. Out-of-character; no state change. | Repository discovery |
| `/campaigns [world]` | List campaigns (optionally filtered to a world) with their latest checkpoint and status. Out-of-character; no state change. | Repository discovery |
| `/saves` | List the current campaign's checkpoints with labels and creation times. Alias: `/checkpoints`. Out-of-character; no state change. | Repository discovery |
| `/export [label]` | Write the session's **durable gameplay transcript** to `campaigns/<campaign>/exports/`: every message verbatim and classified, plus the opening state, every resolution in full, every identifier allocated, every promotion, and the closing state — sufficient to rebuild canon if every checkpoint fails (Decision 061). Establishes no canon and is not a save. | Session Export |
| `/recap` | Give a concise, spoiler-safe recap of current state and unresolved pressures. Advances no in-world time. | Returning Sessions recap |
| `/status` | Show the out-of-character **Progression Surfacing** view (derived tiers, level, experience log). Distinct from any world's diegetic `/system`. | Progression Surfacing |
| `/validate` | Run the Repository Validation Gate on demand and report the result. Out-of-character; no canon change. | Repository Validation Gate |
| `/debug` | Toggle the testing/debug mechanical breakdown (difficulty, modifiers, band boundaries) described under Information Boundary. Off by default. | Information Boundary (debug mode) |
| `/export-debug [label]` | Export the **entire user-visible current chat**, including conversation before engine startup and whether or not a campaign is loaded, to `exports/debug/`. This diagnostic transcript is not a gameplay export, establishes no canon, and is never a save. | Chat Debug Export |

The interface is **extensible**: a future runtime command is added here as another dispatcher onto an existing procedure. A command that would require a *new* persistence, resolution, or canon mechanic is out of scope for this table and belongs in the Engine Rules or a Decision first.

### The Bootstrap Command

`/ChronicleEngine` is distinguished from every other runtime command by *when* it must be recognizable. The rest of this table is available only after this profile is loaded — but this profile is one of the files the player is asking the Runtime to load. `/ChronicleEngine` therefore must be reachable from the one file a cold-start Runtime is guaranteed to see: the root `README.md`. Its definition is duplicated there for exactly this reason, and the two must stay in agreement.

The README also carries an **exact cold-start mirror of every Command Table row**. On bootstrap, render that mirror rather than composing or paraphrasing a catalog. Command names and aliases are closed: a token not present in the Command Table is not an alias. `/resume` is the sole alias of `/continue`; former or invented convenience tokens are not commands.

`/ChronicleEngine` has no target parameter. The Runtime must not parse trailing text as a world, campaign, checkpoint, save label, or restoration request. The Bootstrap Gate prohibits campaign startup, ledger/checkpoint reads, restoration, reconciliation, recap, and readiness work. The Runtime reads only the engine boot set plus repository metadata needed for the welcome listing, renders the Engine Welcome Page, and yields. A recent, active, sole, or trailing-text campaign is never an implicit target.

The Runtime reads the boot set on its own initiative, following the cold-start loading rule: seeing only `README.md` (or a partial listing) at the start of a conversation is a cold-start artifact, not a missing-files condition, and the Runtime reports a load blocker only after an actual read attempt on a named file errors (First-Session Boot; Failure Behavior). The boot set is the profile, the Engine Rules (Sections 4, 6, 13), the Runtime and Data Model documents, the validator, and `system/WORLDS_AND_CAMPAIGNS.md` (the rendered source for the welcome listing). **Only after a later `/continue`, `/resume`, `/new`, or `/load` command selects play** may it read the selected campaign's startup, ledgers, world records, and latest checkpoint.

After loading, `/ChronicleEngine` always presents the Engine Welcome Page and waits. It never proceeds into Startup Classification, First-Session Boot, Returning Sessions, restoration, or the Readiness Gate. Those procedures begin only when a subsequent campaign command selects play.

### The Engine Welcome Page

`/ChronicleEngine` and each of its aliases always present one screen and yield:

1. A brief confirmation that the engine is loaded — not a wall of process narration or version dumps.
2. The complete runtime-command catalog, rendered from the README's exact cold-start mirror of this Command Table—not recalled, regrouped, or paraphrased. A world's diegetic commands are **not** shown yet; they appear once a campaign in that world is loaded.
3. A listing of **worlds** and **campaigns**, rendered from `system/WORLDS_AND_CAMPAIGNS.md` (see The Listing Is Rendered, Not Recalled). For each campaign, show, spoiler-safe: its world, protagonist (if any), status (not started / in progress / closed or terminal), and latest checkpoint (id and date). This is the combined output of `/worlds`, `/campaigns`, and `/saves`, gathered into one screen.
4. A prompt to choose: `/continue [world|campaign]` or `/resume [world|campaign]` to resume, `/new <world>` to start fresh, or `/load <checkpoint>` for a specific point.

The Runtime must **not** auto-select, auto-resume, or begin restoration, reconciliation, or a readiness gate for any campaign from the bootstrap command. Auto-loading a campaign—whether inferred from trailing text, the first campaign, or the most recently played—is the specific failure this page prevents. To resume the most recently played campaign, the player uses `/continue` or `/resume` with no argument after the welcome page.

### The Listing Is Rendered, Not Recalled

**The worlds-and-campaigns listing is rendered from `system/WORLDS_AND_CAMPAIGNS.md`. It is never composed from memory, from the example paths in the bootstrap documents, or from whichever campaigns happen to be in context.** Render every row the index carries; a world or campaign it lists is never omitted for seeming inactive, stale, or uninteresting.

This is the same requirement the Command Table already carries (Decision 064), applied to the other half of the same screen, and for the same reason: given the same repository, every Runtime must show the player the same inventory. The index is part of the boot set (README, item 7) precisely so that "list the campaigns" is an operation a Runtime performs against a file rather than a directory read it may skip (Decision 071).

This rule exists because it was broken. A bootstrap reported the repository loaded and listed Prototype Alpha and Beta under Verra — while `campaigns/reikon_awakening_001/`, complete and six checkpoints deep, was absent. The campaign was fine; the listing had no source. Every concrete path in the README and the start guide names Prototype Alpha and Verra as examples, so a Runtime that did not enumerate `campaigns/` reproduced the examples and reported them as the inventory. Directory enumeration is still correct and still permitted — but it is the thing that failed, so the index, not the enumeration, is the enforcement point (Decision 055: an obligation carried only by instructions does not reliably fire).

The index is **non-canonical** and holds no state. It records what exists and where, so a player can choose; the campaign's own ledgers govern everything else, and where the two disagree the ledgers win. `tools/validate_repository.ps1` fails when a live campaign or a world has no row, when a row names a directory or checkpoint that does not exist, or when the index is missing — so the listing cannot silently drift out of coverage. The gate cannot check whether a row's status or protagonist is still true; keeping those current is the writer's obligation at the promotion barrier, and the index is part of the checkpoint's live target set whenever the latest checkpoint changes.

## Resolution Rules

- **"Most recently played" (`/continue`, no world).** Resolve deterministically by the latest checkpoint's creation time recorded in save manifests (Rules Section 13.3), across all campaigns — not by filesystem modification time. `system/WORLDS_AND_CAMPAIGNS.md` carries those timestamps for comparison; the manifests remain authoritative. When two campaigns tie or no manifest timestamp is available, list the candidates with `/campaigns` and ask the player which to resume rather than guessing.
- **Latest checkpoint of a campaign.** Always the campaign's latest *canonical* checkpoint, located per the restoration procedure (Rules Section 13.4). The command references the checkpoint by that procedure and does not hard-code a save-directory form, so it is unaffected by save-layer location drift (Decision 053, Known debt).
- **No checkpoint yet.** `/continue` on a campaign that is initialized but has no checkpoint falls through to First-Session Boot, not an error. `/continue` naming a world with no campaigns offers `/new <world>`.
- **`/new` confirmation.** `/new` gathers the minimum initialization choices, previews the derived starting state, and writes nothing until the player confirms — the Custom Protagonist / Emergent Campaign rule is unchanged. A `/new` in a world whose canonical baseline must stay intact creates a separate instance rather than overwriting it.
- **Ambiguous or missing argument.** A command whose argument does not resolve to exactly one target (an unknown world name, a `/load` checkpoint that does not exist, an ambiguous `/continue`) reports the miss and offers the relevant list (`/worlds`, `/campaigns`, `/saves`) — it never silently picks a nearby target.
- **Version mismatch on resume.** `/continue`, `/load`, and `/restart` surface Engine/World/Campaign/Save-Format version mismatches explicitly on restoration (Rules Section 13.5); they do not migrate silently.

## Destructive-Command Guards

`/restart`, `/load`, and `/branch` overwrite or diverge live canon. Each guard below is part of the command's definition: it is checked **before** any write, and a failed guard fails the command rather than degrading it into a nearby operation.

- **`/restart` requires a baseline.** Redo restores the campaign's baseline checkpoint (Decision 053). If the campaign has no baseline, `/restart` **fails and writes nothing**: report that Redo is unavailable and why, and offer `/load` or `/branch` instead. Never substitute the latest checkpoint for a missing baseline — that silently converts "replay from the start" into "discard recent play," which is a different, unrequested operation.
- **`/restart` requires confirmation.** It discards play since baseline. State what will be lost — the checkpoints and events superseded, and that their identifiers are retired rather than reclaimed (Data Model Invariant 3) — and write nothing until the player confirms. The confirmation-before-mutation rule applies here exactly as it does to `/new`.
- **`/load` and `/continue` refuse a non-restorable checkpoint.** A checkpoint recorded as quarantined, superseded, or nonconforming is not a restore candidate. Report why and offer the nearest valid checkpoint; do not restore it "with warnings." A checkpoint that captured a superseded ledger shape is regressive, not merely stale — restoring it overwrites conforming canon with a form that fails validation.
- **A missing or invalid restore target is never rounded to a nearby one.** This is the Ambiguous-argument rule applied to destructive commands, where the cost of guessing is overwritten canon rather than a wasted turn.

Where a campaign records checkpoint status externally (a save index), the Runtime reads it as part of restoration and honors it. Where no such record exists, a checkpoint that fails the Repository Validation Gate on read-back is treated as non-restorable.

## Command Availability at Session Start

At **every** campaign session start, before the first scene opens, the Runtime presents the complete command catalog once as an out-of-character menu. This is mandatory after `/new`, `/continue`, `/resume`, `/load`, `/branch`, or `/restart`, at the First-Session Boot briefing, and in the Returning/Takeover recap. `/ChronicleEngine` itself opens only the Engine Welcome Page, not a campaign session. A player who has just started, resumed, forked, or restarted must be shown what they can type without having to ask first.

The menu lists two groups:

- **Runtime commands** — render **every row** in the Command Table, including aliases. Never filter the catalog by current state. If a command requires a loaded campaign or another precondition, show that requirement beside it instead of hiding the command.
- **World commands** — the diegetic commands the **active campaign's world** declares in its content (for example, a Reikon campaign shows `/system`). A campaign whose world declares no diegetic commands shows only the runtime group. The Runtime reads the world's declared diegetic commands from that world's content; it does not invent commands a world has not defined, and it does not show another world's commands.

Keep each entry concise, player-facing, and spoiler-safe, but completeness takes precedence over brevity. The catalog is shown at the Readiness Gate (or with the recap), advances no in-world time, and does not consume the Beat Budget. Show it once per session start; thereafter `/help` re-displays the same complete catalog on demand. Do not repeat it at the top of every scene.

---

# Startup Classification

Determine three dimensions before presenting gameplay:

- **Campaign state:** uninitialized, initialized without a save, or resumable from a valid checkpoint.
- **Protagonist mode:** pre-authored, custom, either, or emergent, as declared by `090_CAMPAIGN_STARTUP.md` when present.
- **Player familiarity:** returning player or new/takeover player.

If the startup artifact is absent, derive only what canonical campaign state establishes. Never assume every campaign has a pre-authored protagonist.

---

# Persistence Preflight

Before canonical play, verify that the AI can persist canon to the repository files. It must be able to:

- read the current repository state,
- **create new files and directories** — the immutable checkpoint directory and its files under `campaigns/<campaign>/saves/`,
- **write through to existing canonical ledgers** — promote canon into the live ledgers (Current State, relationships, chronicle, changelog) by making each target file hold its new full content, preserving everything except the intended change,
- preserve repository paths and file formats.

With **native file access**, all of this works directly and needs no separate check; proceed. The verification below applies when file access is **indirect** — a connector, a synced folder, or uploaded files — where read access does not prove write access.

Create-new and write-through are two distinct capabilities, and an indirect surface may offer one without the other. Creating a new file does not prove the surface can rewrite an existing ledger's content. The checkpoint barrier needs both: the immutable checkpoint files are create-new, while Canon Promotion into the live ledgers is write-through — rewriting the target file's full content by path or re-creation at its canonical path. Write-through does **not** require a line-level patch operation; replace the file's content. Verify both against the actual canonical target files before opening the scene.

Read access alone does not prove write capability, and inspecting the available tools does not test it. **A survey of the tool list is not a write-capability test, even when it feels complete.** File writes appear under many names — write, save, upload, put, replace, create document — and the absence of an obvious "write file" or "edit" verb is a common false negative. Enumerating operations and reporting their absence proves nothing; only an attempted write proves capability. Resolve uncertainty by attempting the write, not by refusing. Stop before opening the scene, or classify the run as a non-canonical dry run, only when an actual write attempt fails. Do not allow a canonical session to begin when its Promotion Barrier cannot write durable state, and do not defer this discovery to the first checkpoint.

When the setup identifies the repository files as available and writable, treat them as the intended persistence surface. Do not ask the player to prove the files are available after the campaign path has been supplied, and do not make the player correct you before you attempt to read or write. Read the files and attempt the canary write directly; continue only if the canary can be read back.

Use a disposable preflight canary for write verification, and exercise **both** capabilities. Create a canary file and a checkpoint-style directory under the gitignored `.tmp/preflight/<campaign>/` path or an equivalent gitignored operational path — this proves create-new. Then **rewrite that canary's content** with whatever write operation is available and read the change back — this proves write-through. Attempt the operation; do not conclude from the tool surface that no such operation exists. Do not create tracked preflight files inside the campaign ledger directory, and do not modify canonical ledgers during preflight.

After both canary operations succeed, report the verified persistence surface and continue startup. Only an actual attempt tells you write-through failed: if a real attempt to rewrite the canary errors, is denied, or fails read-back, or if checkpoint-directory creation fails, the surface cannot support Canon Promotion — stop before canonical play or classify the run as a non-canonical dry run. The absence of an edit-in-place operation is not itself a failure when content can be replaced by rewriting or re-creating the file. A successful canary proves operational write capability for startup; actual Canon Promotion is still performed only at checkpoint or session close.

If direct canonical play remains blocked after read and write attempts, the Runtime may still perform onboarding-only preparation when it can read all required campaign files. It may present the spoiler-safe introduction and answer questions, but it must not open a canonical scene. Gameplay beyond onboarding must be explicitly labeled non-canonical unless another authorized writer promotes the exact accepted changes into the repository and creates the checkpoint (Relay Workflow).

When the repository is mirrored across several locations or synced services, require one exclusive writer during gameplay. Concurrent edits create stale-load and conflict risks and must be reconciled before play.

## Session Persistence State

Repository write capability is a session property, tracked as one of three states:

- **Unestablished** — no successful write yet this session. Resolve by a capability check (the canary), not by refusal, and not by inspecting the tool list. Inspecting the available tools and finding none obviously named for file writes does not move this state to Failed; only an attempted write that actually errors does.
- **Established** — at least one actual write has succeeded this session: the preflight canary (create, write-through, and read-back), a prior successful checkpoint, or any prior canonical ledger update. Once established, the repository is treated as writable for the remainder of the session. The Runtime does not re-derive capability from abstract reasoning about its file access, and does not downgrade this state on uncertainty.
- **Failed** — an actual write operation returned an error. Only an actual failure sets this state; subsequent canonical writes use the fallback path until a later attempt succeeds.

Read or search access alone never establishes write capability, and abstract doubt never demotes an established state.

---

# First-Session Boot

A first session does not require a save manifest.

For an initialized campaign with no checkpoint:

1. Read `090_CAMPAIGN_STARTUP.md` when present.
2. Read `180_CURRENT_STATE.md`.
3. Read the Character Sheet, character-visible World Ledger, Inventory and Ownership, NPCs and Factions, Objectives, and relevant Chronicle entries.
4. Load the Action Resolution procedure (Rules Section 4) into the working set, so the die is available the first time an action is uncertain. Load the conflict rules (Rules Section 6) as soon as a conflict is plausible. See Action Resolution and the Die.
5. Verify versions, references, protagonist policy, required state, and information boundaries.
6. Use a current `095_PLAYER_BRIEFING.md` if it agrees with its sources; otherwise derive a safe briefing from canon.
7. Present the briefing, present the available-commands menu (Command Availability at Session Start), and stop before opening the first scene.
8. Answer clarification questions without advancing in-world time.
9. Open the first scene only after the player confirms readiness.

Missing first-session saves are expected, not errors. Create the first checkpoint at the first checkpoint request or session close.

---

# Opening Anchor Contract

After the player confirms readiness and before producing scene narration, perform an internal Opening Anchor Validation against canonical campaign state.

Internally verify:

- time and chronology,
- exact starting location,
- protagonist identity and condition,
- inventory and credentials,
- established relationships and known NPCs,
- immediate objectives and motivations,
- immediate pressure and opening conflict,
- character knowledge and information boundaries.

Compare the proposed opening scene against those anchors before presenting it. The opening must not introduce or replace artifacts, inventory, NPCs, motivations, timeline facts, historical events, relationships, locations, or conflicts unless they follow directly from loaded canon or the player's declared actions.

Additional sensory detail is allowed only when it is compatible with canon, establishes no unsupported setup, and does not imply hidden truth. When an anchor is missing, contradictory, or unclear, ask the player or request a ruling before narration.

This validation is internal. Do not present an anchor checklist or status screen to the player. Reflect the verified facts naturally through immersive narration while preserving their exact substance.

---

# Pre-Authored Protagonist

Explain identity, relevant background, reason for arrival, social position, reasonable knowledge, possessions, motivations, known relationships, and immediate pressure in natural roleplaying language.

Canonical personality describes established disposition; it does not prescribe every choice. Explain what is fixed, what is interpretive, and what customization the campaign permits. A pre-authored protagonist must not be an unexplained identity imposed on the player.

---

# Custom Protagonist

Gather only the name, broad concept, profession or background, one strength, one flaw, starting social position, reason for entering the situation, and an optional long-term aspiration. A real first name is accepted as a fictional character name and imports no real biography.

Derive a proposed starting state: capabilities, credentials, Knowledge States, inventory, relationships, institutional access, objectives, social standing, location, and campaign entry. Validate each derivation against world canon and campaign constraints, and show material assumptions to the player.

Do not mutate the repository while choices are provisional. After confirmation, initialize atomically: allocate required identifiers, advance the registry, write coherent canonical ledgers and provenance, and run all required validations. If a prepared canonical baseline must remain intact, create a separate campaign instance or branch rather than overwriting it.

A name-only change preserves the concept and compatible links. A background change recalculates knowledge, possessions, credentials, relationships, objectives, and entry conditions rather than copying them from another protagonist.

---

# Emergent Campaign

When neither a detailed campaign nor protagonist exists:

1. Establish the protagonist through the minimum custom-character choices.
2. Establish a plausible intersection with the selected world.
3. Establish an immediate situation arising from world conditions.
4. Derive and preview the initial campaign state.
5. Validate and obtain player confirmation.
6. Write the initial campaign state atomically.
7. Present the player briefing and the available-commands menu (Command Availability at Session Start), and wait for readiness.

After initialization, simulation is world-first. Do not create guaranteed destiny, a scripted final arc, special narrative protection, or a predetermined outcome.

---

# Returning and Takeover Sessions

When a valid checkpoint exists:

1. Read the latest canonical `900_SAVE_MANIFEST.md`.
2. Verify Engine, World, Campaign Schema, and Save Format compatibility.
3. Load the checkpoint's restoration entry point and included ledgers.
4. Reconcile the restored checkpoint with the live campaign continuation.
5. Read current objectives and situation-relevant records.

Give a returning player a concise natural recap, unresolved pressures, the available-commands menu (Command Availability at Session Start), and a readiness question. Do not replay character creation or the full introduction.

Give a new player taking over an existing character the full spoiler-safe character introduction plus a recap limited to character-known information, current motivations, relationships, and immediate circumstances, and the available-commands menu. Offer a fuller briefing before asking for readiness.

---

# Player Questions

- **Who am I?** Summarize identity, background, present role, and what remains open to interpretation.
- **What do I know?** Distinguish direct knowledge, education, testimony, rumor, uncertainty, and personal belief naturally.
- **Can I use my own name?** Yes, when customization permits; it remains a fictional identity.
- **Can I change this character?** Explain the declared customization boundary and consequences before mutation.
- **Can I create someone entirely different?** Use the custom path when allowed; otherwise offer a separate campaign instance instead of rewriting established canon.

---

# Progression Surfacing

Growth in Chronicle Engine is emergent (Rules Section 5); it is never driven by experience points or levels (Decisions 012–014). The Runtime may nonetheless surface that growth to the player as XP and levels, as a **derived, out-of-character view** — a lens over emergent state, never a mechanic (Decision 051).

## What the view contains

- **Per-capability tiers** — a qualitative standing for each demonstrated capability: novice, apprentice, competent, expert, master, or world-appropriate labels. The tier names the standing a capability has actually reached through use (Rules Section 5.3), nothing more.
- **Overall character level** — a coarse descriptive summary derived from the aggregate of capabilities, knowledge, influence, reputation, and consequence. It is a readout of standing, not a power score.
- **Experience log** — a tally of meaningful growth events (things done, learned, survived), rendered from the Events and provenance already in canon. It is a record, not a currency.

## How it is derived

Compute the view from canonical state at the moment of surfacing. Do not maintain a separate authoritative XP counter or level that could drift from canon. The view is regenerated on demand, carries no Persistent Object identifier, and establishes no canon — like the player briefing. If canon has not advanced, the view does not advance.

## When to surface it

- On an out-of-character player request — "show my progress", "status", "how am I improving".
- As a **level-up moment**: when emergent growth has demonstrably crossed a tier — a capability advanced through repeated successful practice, a new mastery established, influence meaningfully expanded — the Runtime may announce it ("Surgery has advanced to Expert"). The advance has already happened in canon; the announcement surfaces it. Never announce a level-up in order to grant an advance.
- **Inline, in a world with a declared diegetic System (Decision 057).** When the active world declares a diegetic System under the Supernatural Phenomena Contract (Rules Section 11), that world's tracked System quantities — a magical resource such as mana, XP, stats, level — may be surfaced **inline during play, in-world**, as they change (a mana cost as a spell is cast, XP as a threat is overcome), per the world's declared model. This is the world's native interface, not the general meta view above, and it applies only in such a world. The bright line is unchanged: these quantities never resolve or override an action — the die still decides (see Guardrails).

## Guardrails

- The view never affects resolution. A tier or level is never a modifier, prerequisite, or gate; action resolution uses intent, circumstance, and the die (Rules Section 4) against demonstrated capability, exactly as before.
- XP is never spent. It is a log, not a resource; nothing is purchased with it.
- Growth precedes surfacing, never the reverse.
- In a world without a diegetic System, the view is meta: the character does not perceive levels in-world, and NPCs never act on them. A world may make levels diegetically real only through the Supernatural Phenomena Contract (Rules Section 11; Decision 051). In such a world its System quantities may be **tracked canonical state** and surfaced **inline** as diegetic information (Decision 057) — but even then they never resolve or override an action; the die decides, and stats/level/mana are Modifiers and resources, never auto-outcomes or gates on the roll (Rules Sections 4, 4.4, 4.2). This is world-authoring content.

---

# Readiness Gate

End onboarding or recap with the available-commands menu (Command Availability at Session Start) and a direct choice: proceed, ask clarification, request a fuller briefing, or revise permitted setup choices.

No scene begins, die is rolled, NPC acts, or in-world time advances before explicit player confirmation. Contradictory, missing, stale, or incompatible canonical state blocks scene opening. Report the specific problem and request a ruling when canon precedence cannot resolve it.

---

# Gameplay Close

1. Resolve or explicitly leave open any in-flight action.
2. Promote every canon-bearing ruling and transcript event into scope-responsible ledgers with provenance.
3. Update Current State, objectives, relationships, inventory, knowledge, chronicle, and world state as required. **For relationships specifically:** capture not only new relationships created during play, but also qualitative evolution of existing relationships. If an NPC showed compassion, provided mentorship, took a risk for the character, or changed their stance, the relationship's `qualities` and `state` fields should advance to reflect it, with updated provenance and event ID.
4. If the campaign terminates, promote its publicly observable, world-affecting consequences into world state or historical records with provenance to the campaign, respecting the Information Boundary. If no world-layer promotion is required, record that conclusion explicitly in the campaign close.
5. Run the Repository Validation Gate. Validation must pass before checkpoint creation.
6. Create an immutable session-close checkpoint and save manifest (Checkpoint Persistence).
7. Produce the Gameplay Runtime Report.

```text
Gameplay Runtime Report

Session:
In-world span:
Actions resolved:
Canon promoted:
Ledgers changed:
Checkpoint:
Unresolved pressures:
Continuity or validation warnings:
```

Do not include ADR status, architecture changes, roadmap progress, technical debt, or a recommended implementation task.

---

# Session Export

`/export` writes the session's **durable gameplay transcript** to a file: every message verbatim and classified, together with the mechanical record of what the session did to canon. A checkpoint preserves canonical *state*; an export preserves the *play that produced it*, in enough detail to rebuild that state if every checkpoint fails (Decision 061).

## An Export Is a Primary Record, Not a Derived One

An export is a **durable Gameplay Transcript** — the record class Rules Section 2.8 defines — and it is *primary*, not derived.

This distinction is load-bearing. The player briefing and the Progression Surfacing view are derived: each is computed from canonical ledgers and can be regenerated on demand, which is why each is disposable. **A transcript cannot be regenerated from canon.** It is the record canon was promoted *from*, not a rendering of canon. Once the session ends it is unreproducible: unwritten, it is gone. That is why an export is preserved rather than regenerated, and why it is worth capturing completely.

The canon hierarchy already ranks the transcript at tier 2 (Rules Section 2.1), *above* canonical ledgers, because it reflects what actually happened while a ledger may be stale. Decision 042 excluded it from durability only because it was volatile. An export is what removes the volatility.

## The Bright Line

An export is **not canon and not a save.**

- It **establishes no canon by existing.** A transcript fact governs in flight, and becomes durable canon only through Promotion (Decision 042). Writing an export promotes nothing.
- It **mints no identifiers.** It *records* identifiers the session already allocated.
- It is **never a restoration entry point.** `/load` restores a checkpoint. Rebuilding from an export is a repair operation (Recovery from an Export, below), not a restore.
- **`/export` and `/save` are different acts.** Exporting does not checkpoint; checkpointing does not export. A player who wants both issues both.
- It is **not self-attesting.** An export records what the Runtime *reported* — including validation output — as transcript. It never asserts a verdict of its own. A transcript of a false claim is still an accurate transcript, and must not be silently corrected into a true one.

The file lives under `campaigns/<campaign>/exports/`, outside the canonical ledger set, and is exempt from canonical validation. Writing it still requires actual write capability: `/export` performs a real file write and reacts to the real result (Session Persistence State). If the write cannot be performed, the Runtime does not silently drop the export — it renders the transcript inline in the reply so the player can copy it, and says the file was not written.

## The Sufficiency Contract

An export is **sufficient** when a reader holding only it and the world files could rebuild the campaign's ledgers to the state the session ended in. Message text alone is not sufficient: it shows what was narrated, not the identity graph the session produced. An export therefore captures five things beyond the messages.

1. **Opening state.** What the session began from: the checkpoint or state reference, and the identifiers in play (protagonist, location, active relationships and objectives). Recovery needs a base to apply the session to.
2. **Every resolution in full.** Not just the die tag — the natural roll, the net modifier steps *and the established circumstances behind them*, the effective result, and the band (Decisions 052, 058). A roll recorded as `d100: 43 — success` cannot be re-derived or audited; a roll recorded with its modifiers can.
3. **Every identifier allocated,** with the object it names and its owning record. This is what lets recovery reproduce the identity graph instead of inventing a new one.
4. **Every canon mutation promoted,** with provenance: what changed, in which record, caused by which event.
5. **Closing state.** The state as of the last turn — the same fields as the opening state.

State recorded in an export is **evidence of what was true at a moment**, not a competing canonical record, and it does not violate the no-duplication rule: Rules Section 13.3 binds the *save manifest*, whose content is derivable from the ledgers stored beside it. An export's value is precisely that its content cannot be re-derived.

Capture these as the session runs, not by reconstruction at export time. An export written from memory at the end of a long session is where fabrication enters.

## What Is Captured — Messages

The export preserves the **whole session verbatim**, not a summary, classifying every message into one of these registers and labelling it. Both sides' out-of-character text is kept, and system/loading messages are kept — nothing is dropped for being "just" OOC or setup.

- **Player** — the player's in-character declarations: intent, action, dialogue.
- **Narrator** — the Runtime's in-character narration: scene, world, and NPC action.
- **Player · OOC** — the player's out-of-character text: engine-state queries, testing probes, and control instructions (typically `//`-prefixed, or otherwise clearly out-of-character, e.g. "save progress", "reload the profile").
- **Narrator · OOC** — the Runtime's out-of-character text: answers to OOC queries, rulings and corrections, and explanations of engine behavior (the `//`-prefixed replies).
- **System** — runtime and setup messages: bootstrap loading and version confirmations, write-capability/preflight results, runtime-command acknowledgements, checkpoint/save reports, and repository-validation output.
- **Roll** — the action-resolution die tags (`🎲 d100: NN — result`), preserved exactly as they appeared so the resolution history is auditable.

Runtime commands themselves (`/save`, `/export`, `/system`, …) are preserved as the player issued them and their handling is rendered under **System** (or **Narrator · OOC** for a diegetic command's answer). The classification records how each message actually functioned in the session; it does not rewrite or clean up the text.

## Format

Write Markdown. Lead with a metadata header, then the classified messages in session order. Keep player and narrator text exact; do not summarize, merge, or reorder turns.

````text
# <Campaign> — Session Export <NNNN>

- Campaign: <path>
- World: <world>
- Exported: <timestamp>
- Session span: <first turn> → <last turn>
- Latest checkpoint: <checkpoint id or "none this session">
- Versions: Engine <…>, World <…>, World Rule Profile <… or none>, Campaign Schema <…>
- Label: <optional label, if given>

## Opening State

```yaml
opened_from: <checkpoint id, or "live state at <REC->" if no checkpoint>
protagonist: <ENT->
location: <ENT->
active_relationships: [<REL->, …]
active_objectives: <REC-> 
registry_at_open: {ENT: <n>, REC: <n>, EVT: <n>, REL: <n>}
```

---

<the classified messages, in session order>

**Player** — "What about the merchant escort job?"

**Narrator** — Kael asks after the merchant escort job and is directed toward Tollen Var…

**Roll** — 🎲 d100: 30 natural | net −1 step (unfamiliar contact, no standing) | effective 10 | failure

**System** — Checkpoint 900_CHECKPOINT_0001 written; validator reported PASS (exit 0).

---

## Resolutions

| # | Intent | Natural | Net steps | Established by | Effective | Band | Event |
|---|--------|---------|-----------|----------------|-----------|------|-------|
| 1 | Ask after the escort job | 30 | −1 | unfamiliar contact, no standing | 10 | failure | EVT-000015 |

## Identifiers Allocated

| ID | Names | Owning record | Established by |
|----|-------|---------------|----------------|
| ENT-000029 | Tollen Var | REC-000021 | EVT-000015 |

## Promotions

| Record | Change | Provenance |
|--------|--------|------------|
| REC-000021 | Tollen Var added; hostile after the altercation | EVT-000015 |

## Closing State

```yaml
protagonist: <ENT->
location: <ENT->
condition: <free text; authoritative values in the character sheet>
registry_at_close: {ENT: <n>, REC: <n>, EVT: <n>, REL: <n>}
open_pressures: [<…>]
```
````

The role label is the one required element of a message line; the surrounding typography (headings, blockquotes, rules) may vary by substrate as long as the six registers stay visually distinct and the text stays verbatim. The five structured sections are required for sufficiency: an export missing them is still a valid transcript, but is **not** a recovery source, and must say so in its header rather than imply completeness it lacks.

Where the session allocated nothing, resolved nothing, or promoted nothing, the corresponding section is present and empty — an absent section is ambiguous between "nothing happened" and "not captured."

## Recovery from an Export

When no valid checkpoint exists — every checkpoint is missing, malformed, or quarantined — canonical ledgers may be **rebuilt from an export**. This is a repair operation, not `/load`, and it is Architect-mode work: it does not advance play.

Recovery is **re-promotion** (Decision 042), and it runs the ordinary gates rather than bypassing them:

1. **Establish the base.** Restore the export's `opened_from` checkpoint if one is valid; otherwise reconstruct the opening state from its Opening State block.
2. **Re-promote in session order.** Apply the export's Promotions to the scope-responsible ledgers, with provenance pointing at the export as the transcript that established each fact.
3. **Reuse the attested identifiers.** Objects named in Identifiers Allocated keep those identifiers. This is not a breach of never-reuse (Data Model Invariant 3) — the same object is being restored to the record, not a retired number reissued to a different one. Reconcile the registry so the high-water marks are at or above `registry_at_close`.
4. **Do not invent what the export does not attest.** Where the export is silent — an identifier it never recorded, a modifier it never captured — the gap is **recorded, not filled**. A reconstruction that guesses is worse than one that admits an omission, because the guess is indistinguishable from evidence afterward.
5. **Verify against the transcript.** Check the rebuilt state against the export's Closing State and message record. Report every fact that does not reconcile.
6. **Run the Repository Validation Barrier** (Decision 054) before claiming the rebuild succeeded, exactly as any other durable mutation.
7. **Record the recovery** in the campaign changelog and the registry, naming the export as the source and listing what could not be recovered.

Recovery is **lossy wherever the export is silent**, and exports written before the sufficiency contract are the common case: `campaigns/reikon_awakening_001/exports/play_export_0001.md` is sufficient to *verify* that campaign's reconstruction but attests no identifiers and no modifiers, so it could not fully rebuild it. Treat an old export as evidence for checking a reconstruction, not as a complete source for one.

An export is the **last** line of defence, not the first. Checkpoints remain the restore mechanism (Decision 039, Rules Section 13). Recovery from an export is what happens when they have already failed — which, on the evidence of Checkpoint 001, is not hypothetical.

## Filing

Name the file `play_export_<NNNN>.md`, numbered by advancing past the highest existing export in the campaign's `exports/` directory (first export is `0001`). An optional `label` argument is recorded in the header and may be slugged into the filename. After writing, read the file back and report its path; if read-back fails, treat it as a write failure per The Bright Line.

---

# Chat Debug Export

`/export-debug [label]` exports the **raw current conversation**, not campaign state. It is available immediately after bootstrap when no campaign session is active, as well as during play. Its purpose is diagnosis: preserving the exact exchange that led to a command, loading, or interpretation failure.

Capture every **user-visible** user and assistant message that the substrate exposes, beginning with the earliest visible message in the current conversation and ending with the `/export-debug` request. Preserve order and message bodies **byte-for-byte where the substrate permits**, including Markdown, tables, code fences, spelling errors, commands, and whitespace. Do not summarize, reconstruct, clean up, regroup, or annotate message contents. Do not turn messages into turns, actions, results, state summaries, resolution tables, final-state sections, or command lists. Do not export hidden system/developer instructions, internal reasoning, credentials, or tool traffic that was not shown to the user.

The file contains only repeated role labels and verbatim bodies:

```text
**User**
<exact displayed message body>

**Assistant**
<exact displayed message body>
```

Use `**System**` only for a system message that was visibly rendered as a separate chat message to the user. No title, metadata header, timestamp, campaign name, turn number, separator commentary, summary, or closing state appears inside the file. A filename label belongs only in the filename. If earlier user-visible content is unavailable, export the visible suffix without inventing the missing prefix and state the limitation in the command response, outside the file.

Write Markdown to `exports/debug/chat_debug_<timestamp>.md`; create the directories when needed. This location is repository-level because the chat may precede campaign selection. After writing, read the file back and report its path. If repository writing is unavailable, render or attach the transcript through the substrate and say that no repository file was written.

A Chat Debug Export is diagnostic and non-canonical. It has no opening/closing campaign-state contract, cannot rebuild canon, allocates no identifiers, runs no promotion or validation barrier, and is never accepted by `/load`. `/export` remains the structured, campaign-aware durable gameplay transcript. `/debug` remains the toggle for full roll mechanics. Handling `/export-debug` is out of character, advances no time, and emits no resumed-scene narration after the export acknowledgement.

---

# Canon Reconciliation at Promotion

Promotion is not all-or-nothing, and **not established is not the same as contradiction.** At each promotion barrier, classify every not-yet-canon fact and handle it accordingly:

- **Grounded progression** — a fact that advances an established thread: a canonical NPC finally met in person, a known objective moved forward, a recorded relationship changing state. Promote it into the scope-responsible ledger with provenance.
- **Newly generated but consistent** — detail the Runtime introduced that does not contradict any higher-tier canon. It is legitimate canon at the lowest tier (Rules Section 2.1; `012` Sections 1.3, 8.3). Promote it with provenance. If it is **load-bearing named canon** — a new named figure, place, institution, or rank that materially extends the world — flag it for a ruling before promoting, rather than either accepting or discarding it silently. Filling a field the canon left unspecified (for example, adding a given name to a surname-only figure) is a fill, recorded as an alias update with provenance — not a rename and not a contradiction.
- **Contradiction** — a fact that conflicts with higher-tier canon. Reconcile it explicitly (Rules Section 2.9), quarantining only the specific conflicting fact, not the surrounding session.

Promote the grounded and consistent work; flag the load-bearing new canon; reconcile only the true conflicts. Do not discard an otherwise grounded session because it also produced unestablished-but-consistent detail.

---

# Repository Validation Gate

Campaign initialization, every checkpoint, session close, and campaign-termination promotion must pass deterministic repository validation after all live targets have been written and read back. On a native Windows repository, run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/validate_repository.ps1
```

The validator scans live Markdown under `worlds/` and `campaigns/`, excluding save and checkpoint snapshots from live duplicate-definition checks. It verifies registry high-water bounds and allocation-log coverage, unique live object definitions, resolved identifier references, universal Persistent Object fields, Canonical Record references, and placeholder rejection.

The command must exit successfully before the Runtime creates an immutable checkpoint or reports initialization, checkpoint, session close, or promotion as successful. A configured deterministic equivalent may be used on another substrate. An unaided visual review or statement that the files appear consistent is not an equivalent gate.

If validation fails, report the operation as partial, name the validator findings and affected targets, repair the live state when possible, read the repairs back, and rerun validation. Validation failure is not automatically a canonical contradiction and does not discard grounded play. If no deterministic validator can be executed, the operation remains `Relay Pending`; do not claim canonical completion.

---

# Checkpoint Persistence

A checkpoint is written by attempting the actual repository operation and reacting to the actual result — never refused on abstract uncertainty. It requires Established Write Capability (see Session Persistence State) or a capability check.

Any player request to save, checkpoint, or record progress — however phrased, and whenever in the session it arrives — enters the Save Algorithm below. The Runtime must not answer such a request with a verdict on whether saving is possible before it has reached the attempt step. It may summarize the canonical progress, but that summary accompanies the attempted write; it never substitutes for it. Producing a progress summary together with a claim that the write cannot be performed — without having attempted the write or a capability check — is the specific failure this section exists to prevent.

## Save Algorithm

On a checkpoint request or session close, in this order:

1. **Promotion Barrier first (unchanged).** Run Canon Reconciliation at Promotion. If an unreconcilable contradiction exists, reject the mutation, record a Rejected Simulation, and write nothing. The barrier runs before any write, so contradictory canon never reaches the repository.
2. **Ensure capability.** If write capability is Unestablished, run a capability check (the canary) now.
3. **Derive the complete live target set, then attempt the canonical update.** A checkpoint is not a single-ledger write. The target set is **derived from the session's events, never judged from memory of what the session felt like it touched.** For every event promoted this session, take every identifier that event references — its subjects, the objects it moved, harmed, consumed, created, or relocated — and add **the owning ledger of each** to the target set. Then add the ledgers that always carry a played session: Current State, chronicle, changelog, and `system/ID_REGISTRY.md` for new identifiers. Objectives, relationships, inventory, knowledge, and world promotion enter the set by the same derivation, not by recollection.

   **"I did not think that ledger changed" is not a determination; it is the failure.** A session's events change ledgers the Runtime did not decide it had touched — a creature killed changes the world ledger's occupancy and the chronicle *and* the objective that counted it; an item picked up changes inventory *and* the record's subject list. Derive the set from the events and open every ledger it names, including ones you expect to be unchanged. An opened ledger that needed no change costs a read. An unopened ledger that needed one is captured stale into an immutable checkpoint, and the defect outlives the session (Rules Section 13.2).

   This derivation is currently **performed by the Runtime and checked by nothing.** The Repository Validation Gate is structural: it does not detect a ledger that is well-formed and semantically stale, which is why a checkpoint carrying a protagonist in two places has passed it. Recorded against Version 0.3 planning in the roadmap; until a mechanical gate exists, this step is the only thing standing between a session's events and a stale checkpoint. Then write through to **every live target**, rewriting each target file's full content by resolved handle or path with provenance. Resolve missing handles through repository discovery rather than refusing. Updating one scope-responsible ledger while leaving Current State, the chronicle, or the changelog unwritten is a **partial checkpoint**, not a save. **Any new identifier introduced this session must be allocated in the registry and defined in its owning ledger as part of the target set.** Allocation means advancing that kind's high-water mark and recording allocation-log coverage, not merely mentioning the identifier. Consuming a reserved or pending identifier is a real allocation and must advance the high-water mark.
4. **Read-back verification of live targets.** Reload **every** targeted live ledger and the registry when touched from the repository, not from Context, and confirm the intended changes and provenance are present. A target that did not receive its intended change is unwritten even when other targets succeeded.
5. **Repository Validation Gate.** Run the deterministic validator against the read-back live state. If it fails, do not create the immutable checkpoint and do not claim promotion success. Repair, read back, and rerun when possible; otherwise emit a Runtime Checkpoint Report with the validator findings.
6. **Create and verify the immutable checkpoint.** Only after live validation passes, create the checkpoint directory, copy the verified canonical ledgers, and create the save manifest from the targets actually written and read back. Read every checkpoint file and the manifest back and verify their contents.
7. **On success** — the whole live target set written and verified, repository validation passed, and the immutable checkpoint written and verified — set write capability Established and report the checkpoint saved, with the verified paths.
8. **On an incomplete target set or any actual write, read-back, validation, or checkpoint-creation failure**, do not claim the checkpoint was saved. Leave capability Established when writes have succeeded, name the written and unwritten targets, include validation findings when applicable, and emit a Runtime Checkpoint Report.

## Write-Side Failure Handling

Distinguish these. Only the first four prevent persistence; the last never does:

- **Actual write failure** — a write, create, or update operation returns an error, times out, or file access is lost. → fallback (Runtime Checkpoint Report).
- **Permission denial** — the file system or host reports the operation is not authorized. → fallback; report it as permission, not uncertainty.
- **Repository validation failure** — read-back live state fails the deterministic Repository Validation Gate (a deliberately-invalid placeholder, a broken reference, a duplicate definition, missing allocation-log coverage, or a registry violation). → do not create the immutable checkpoint or claim promotion; report, repair, and rerun when possible. This is distinct from a write failure.
- **Canonical contradiction** — handled by the Promotion Barrier at step 1; the repository is unchanged and a Rejected Simulation is recorded. Unchanged by this section.
- **Runtime uncertainty** — not knowing whether an edit is possible, or lacking a file handle. This is **not** a failure. Resolve it by attempting the operation. It is never grounds to refuse when capability is established, nor to skip an attempt a capability check can settle.

## Checkpoint Reporting

Two symmetric invariants:

- **Never report a checkpoint saved unless read-back verification and the Repository Validation Gate confirm it** (honesty; `012` Invariants 2 and 3). The confirmation must cover the whole promotion target set, not a single ledger; a partial write or failing validation is reported as partial, never as saved.
- **Never report that a checkpoint cannot be saved without first attempting the write**, when write capability is established — and never on the strength of a tool-list inspection when it is not, since only an attempted write settles capability.

The **save manifest is a report, not an intention.** Its list of updated ledgers must name only the targets actually written and read back this checkpoint. A manifest that lists the chronicle and changelog as updated while those files received no write — the manifest asserting a promotion the repository never received — is itself the partial-checkpoint failure in its most misleading form: the durable artifact now lies about what canon exists. Populate the manifest's updated-ledger list from read-back results, never from the set you intended to write.

On success, the Gameplay Runtime Report records the checkpoint and its verified paths. On an actual failure, emit a **Runtime Checkpoint Report** — a non-canonical artifact capturing the exact canonical state that was to be written, so an authorized writer can synchronize it into the repository later. It never claims the repository was updated.

```text
Runtime Checkpoint Report

Checkpoint requested at:
Write capability state:
Failure type:
Connector result:
Canon cleared for promotion:
Ledgers and checkpoint files not yet written:
Required synchronization:
```

---

# Failure Behavior

When information is missing, distinguish not loaded from not established. Load the scope-responsible source before inferring. If a fact remains unestablished, keep it unknown or ask only when a player choice is required.

If sources conflict, pause affected startup or play. Never choose silently, repair by invention, or expose hidden material while explaining the conflict.

When proposed or completed play **contradicts** canonical startup state in a way that cannot be reconciled, classify it as a **Rejected Simulation**. This is reserved for genuine, unreconcilable contradiction of the session's core — not for merely unestablished detail, which is handled by Canon Reconciliation at Promotion above. A single invented name or a minor unestablished NPC is reconciled or flagged, not grounds to reject an otherwise grounded session. A Rejected Simulation is non-canonical and causes no mutation, but remains useful validation evidence. Record why it was rejected and which safeguard prevented canon corruption. Do not describe it as merely discarded, and do not number it as a canonical session.

## Out of Character Is Not a Contradiction

The player may steer the protagonist against their established disposition — a cautious scholar may lash out, a gentle character may turn cruel. Personality is a starting tendency, not a constraint on choice (Pre-Authored Protagonist; Decision 016), and intent within the Player Intent Domain is the player's to give (Law III). Such a choice is **not** a Rejected Simulation: it is legitimate emergent play. Resolve it by the die and answer it by consequence — the world reacts, the act is recorded, and standing, relationships, and safety change accordingly. The Runtime never refuses a player's action on the grounds that it is "out of character."

What blocks promotion is contradiction of **established fact**, not divergence from disposition: acting with an item the character does not possess (for example, drawing a dagger that is absent from canonical inventory), being in two places at once, using a capability never established, or undoing a recorded event. Reconcile these by **quarantining the specific offending fact** — refuse the dagger, keep the surrounding choice and its consequences — exactly as Canon Reconciliation at Promotion prescribes. Reserve a full Rejected Simulation for a session whose core cannot be reconciled at all, not for an in-character-or-not choice that merely surprises. A violent outburst by a peaceful character is grounded play with heavy consequences; the same outburst performed with a non-existent weapon is grounded play minus the weapon.

The promotion barrier is the **last** line of defence for this, not the first. The same quarantine must fire earlier — at narration time, the instant the action is declared (see Intent Is Authored; Facts Are Grounded, under the Player Agency Contract). Catching an absent item only at session close means the Runtime has already narrated the character wielding it for the whole scene; the barrier then has to unwind fabricated canon instead of a clean refusal. Ground the fact when it is first invoked; let the promotion barrier catch only what slipped through.
