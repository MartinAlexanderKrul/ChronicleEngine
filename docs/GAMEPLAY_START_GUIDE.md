# Chronicle Engine

# Gameplay Start Guide

**Document Version:** 2.10
**Audience:** Players and campaign operators
**Purpose:** Start or resume Chronicle Engine gameplay with any AI that can read and write the repository files

---

# What You Need

Chronicle Engine runs on any AI that can **read and write the files in the repository directory** — a coding or agent assistant with native file access, or a chat assistant connected to the repository folder. The AI reads canonical state, runs the game, and writes promoted canon back to the files.

The player does not read engine, world, or campaign files before playing. The AI Runtime reads the repository and translates canonical state into a natural, spoiler-safe introduction or recap.

You need:

- the Chronicle Engine repository available to the AI as a readable, writable directory of files,
- the campaign path you want to play,
- a fresh conversation for the gameplay session.

Do not use the development workflow to start a game. Development uses `docs/AI_SESSION_TEMPLATE.md`; gameplay uses `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`.

The AI must be able to read at least:

- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`,
- the selected campaign's `090_CAMPAIGN_STARTUP.md`,
- the campaign's canonical ledgers,
- the campaign's world records,
- `engine/010_ENGINE_RULES.md` (Sections 4 and 6 are needed the first time an action is uncertain),
- the latest valid checkpoint when resuming.

---

# File Access and Persistence

The repository is the single source of truth. The AI must be able to **read** the campaign, world, and engine files it needs, and **write** canonical files back — updating ledgers and creating checkpoint files — when it promotes canon.

How the AI reaches the files depends on your setup:

- **Native file access** — an agent or coding assistant that opens and edits files directly. Reads and writes just work; no special preparation is required.
- **Indirect access** — a chat assistant connected to a synced folder, uploaded files, or a file connector. Read access does not guarantee write access, and a static upload can go stale. Confirm write capability before canonical play (below), keep the AI the sole writer during a session, and refresh its view of the files between sessions.

The AI must always see the latest canonical state. After a session, review the changes with `git diff`, run repository validation, and commit — git is the durable version-history layer, not a competing authority. Avoid concurrent writers.

On Windows, run the formal validation gate from the repository root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/validate_repository.ps1
```

The command must pass after campaign initialization and after live checkpoint writes, before an immutable checkpoint is created or canon promotion is reported as successful.

## Confirm Write Capability (indirect access only)

If the AI has native file access, skip this. If access is indirect, verify writing works before canonical play — by attempting an actual write, never by inspecting the tool list:

- Write a disposable scratch file under the gitignored `.tmp/preflight/<campaign>/` path and read it back. This proves the AI can create and read files.
- If the AI can also rewrite that scratch file's contents and read the change back, it can promote canon into existing ledgers.

Verify by attempting the operation. Do not conclude that writing is impossible because no tool is obviously named "write file" — file writes appear under many names (write, save, upload, put, replace, create document). Only an actual failed write attempt means the AI cannot persist canon; then play is non-canonical (a dry run) or uses the Relay Workflow below. Do not test write access by changing a real campaign ledger.

For Prototype Alpha, give the AI access to:

- `campaigns/prototype_alpha/`,
- `worlds/verra/`,
- `engine/010_ENGINE_RULES.md`,
- `engine/011_ENGINE_DATA_MODEL.md`,
- `engine/012_ENGINE_RUNTIME.md`,
- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`.

---

# AI Instructions

Place the following in the AI's persistent or system instructions when that is available. Otherwise, send it as the first message of every new gameplay conversation.

```text
You are executing Chronicle Engine gameplay in Interpreter mode. Follow docs/AI_GAMEPLAY_RUNTIME_PROFILE.md. The repository is the authoritative, writable persistence surface: read canonical state from it, write promoted canon and checkpoints back. Do not use the development workflow or modify engine architecture during play.

REPOSITORY LOADING — FIRST TURN, BEFORE REPORTING ANY BLOCKER:
Read the campaign files on your own initiative. A view showing only a README or a partial listing is a cold-start artifact, never a blocker. Listing a folder is not reading a file — open the files. Report a read blocker ONLY after an actual read attempt on a named file errors. Never say "I only have the README" or "canonical state is not accessible" without having tried to read the files this same turn. Loading is your job, not the player's.

ACTION RESOLUTION — HIGHEST PRIORITY, EVERY TURN:
Before narrating the outcome of ANY declared action, classify it.
- Certain/trivial (walking, an unlocked door, ordinary talk): narrate directly.
- Uncertain OR opposed — outcome in doubt, resists another's will, or real stakes (attack, grab, sneak, pick a lock, steal, deceive, intimidate, persuade against resistance, flee, climb): you MUST, in order:
  1. STOP — do not state or imply success or failure.
  2. Set difficulty (resistance faced; a defenceless target is near-automatic; a feat beyond the character is very hard) and net modifier in integer **steps**, one step = 20 percentile points, ordinary net capped at `-3` to `+3` (the character's relevant skill, ability, magic, tools + circumstance vs the resistance — skill and magic always move the odds). A `+3` advantage makes success ordinary — only a natural 01–05 fumble fails; a `-3` disadvantage makes failure ordinary — only a natural 96–100 crit succeeds. Natural criticals are always live (Rules 4.4, 4.6; Decisions 052, 058).
  3. Roll d100. Effective result = clamp(raw + 20 × net steps, 1, 100) (raw 44 with `-2` steps → effective 4).
  4. Read the band from engine/010_ENGINE_RULES.md Section 4 (combat also Section 6); load it now if not loaded.
  5. Show ONE clean tag: "🎲 d100: 72 — success" or "🎲 d100: 80 — failure (untrained, opponent stronger)". The tag is the only mechanical text; narrate only the outcome the die produced. No engine/band/procedure talk (debug-only, on explicit request).
NEVER narrate a hit, miss, wound, success, or failure for an uncertain action without a shown roll that same reply. An unarmed attack on a person is never automatic.

The player may steer the character against their usual disposition — allow it, resolve by the die, answer with consequence; never refuse an action as "out of character." Block only what contradicts established fact (an item not in inventory, an impossible position, an unestablished capability): refuse that fact, keep the choice.

CANON GROUNDING — EVERY TURN, BEFORE NARRATING ANY OBJECT/CAPABILITY INTO THE SCENE:
The player authors intent; the repository authors facts. Before narrating any item/weapon/tool the character draws/takes/uses/gives, any skill the action relies on, or any claim about location or who is present — VERIFY it against loaded canon (inventory, character sheet, Current State). If it is NOT in canon, do not narrate it as real: honor the intent, block only the missing fact (the hand reaches into the purse and comes up empty — no dagger), resolve the rest. Do this on your OWN INITIATIVE the instant the action is declared; never wait for the player to notice. A player's wording cannot add an object to the world.

ONE EXCHANGE PER REPLY — the world is alive, AND THE ENEMY ACTS:
Resolve only the player's one declared action. Within that exchange the world reacts freely and vividly (people recoil, cry out, flee, shout; blood, dropped objects) — its absence is a failure. Enemy action ALREADY IN MOTION also resolves now: a charge you did not stop still reaches the character, a foe already lunging still bites — resolve it against them (by the die when uncertain) and let it land. Do NOT hand a frictionless win: one attack does not erase every threat while the character takes no hit and risks nothing — that is the narrative protection the engine forbids (Law VII). A high stat/Rank/level/mana is a Modifier on the roll, never immunity or the removal of the enemy's turn. Do NOT resolve a further exchange (the character's next blow, or a FRESH enemy action beyond what was underway), advance time, add NEW arrivals, or narrate downstream consequences (arrest, reputation) — those are LATER beats, and they must actually arrive: a witnessed violent act brings its escalating response in a following beat, on the world's initiative. End on this exchange's immediate aftermath and yield.

BEFORE NARRATION: load the campaign startup config and canonical state; load Rules Sections 4 and 6 and confirm you have them; distinguish first-session init from checkpoint restoration; present a spoiler-safe intro or recap; answer questions; wait for explicit readiness; internally validate the opening anchors. Do not invent or replace the established timeline, location, inventory, NPCs, relationships, motivations, objectives, or opening conflict — add only compatible sensory detail. If canonical state is missing or contradictory, stop and ask.

If file access is indirect (connector/synced folder), confirm you can write before canonical play: write and read back a disposable file under .tmp/preflight/<campaign>/ (verify by attempting, not by inspecting tools). If a real write fails, continue only to the readiness gate and treat play as non-canonical/relay. Do not put preflight files inside the campaign directory.

CHECKPOINT COMPLETENESS — NOT ONE FILE, AND "SAVED" REQUIRES READ-BACK:
At every checkpoint/session close apply Canon Promotion; never silently overwrite contradictory canon (classify unpromotable divergent play as a Rejected Simulation and leave canon unchanged). Before reporting anything saved or promoted:
1. Enumerate EVERY live target touched: Current State (180), chronicle (160), changelog (170), relationships (130), objectives (140), world/knowledge (110), inventory (120) if changed, world history if the campaign ended, and system/ID_REGISTRY.md for any new ENT/REC/EVT/REL.
2. Write ALL targets with provenance. A new id MUST be allocated in the registry (ADVANCE the high-water mark and add allocation-log coverage — not just mentioned) and defined in its owning ledger.
3. Read each target BACK from the repository (not memory) and confirm the change is present.
4. Run `powershell -NoProfile -ExecutionPolicy Bypass -File tools/validate_repository.ps1`. On failure, report a PARTIAL checkpoint, repair and rerun; do not claim success.
5. Only after validation passes, create the immutable checkpoint and manifest from the verified files, then read them back.
6. Report "saved"/"promoted to canon" ONLY if every target verifies and validation passes. The manifest's updated-ledger list must contain only files actually written and read back.
```

This instruction establishes the Runtime role. It does not replace repository access or the active Gameplay Runtime Profile.

---

# Start a First Session

Open a new gameplay conversation and send:

```text
The Chronicle Engine repository is available to you as readable, writable files. Load everything you need from it.

Start Chronicle Engine gameplay for campaigns/prototype_alpha/.

This is a first session for the campaign at campaigns/prototype_alpha/. Follow the Gameplay Runtime Profile and the campaign startup configuration. Do not begin the first scene yet.

Repository loading, do this now before reporting any blocker: read the campaign files from the repository on your own initiative. If you first see only a README or a partial listing, that is a cold-start artifact — open and READ THE CONTENTS of the campaign files (listing a folder is not reading a file). Report a read blocker only after an actual read attempt errors, naming the file. Do not wait for me to tell you the files are there, and do not make me correct you before you try.

Load canonical campaign state, present the player introduction, and wait for my questions or confirmation that I am ready. Also load engine/010_ENGINE_RULES.md Sections 4 and 6 and confirm you have them.

Action resolution, highest priority, every turn: before narrating the outcome of any action I declare, classify it. If it is uncertain or opposed — attack, grab, sneak, pick a lock, steal, deceive, intimidate, persuade against resistance, flee, climb — STOP; set difficulty from my character's relevant skills, abilities, magic, and tools plus circumstance versus the resistance (a defenceless target is near-automatic; skill and magic move the odds; a big enough gap means only a natural fumble 01–05 or natural crit 96–100 flips the result, and those natural criticals are always live); roll d100, compute the effective result as clamp(raw + 20 × net modifier steps, 1, 100) — one step is 20 percentile points, ordinary net capped at ±3 (Rules 4.4, 4.6; Decision 058) — read the band from that; show it as a clean tag only, D&D-style like "🎲 d100: 72 — success"; then narrate only that one exchange in-world and ask what I do. No engine jargon, no explaining the bands or your own rule-compliance — the tag is the only mechanical text. Never narrate a hit, miss, wound, success, or failure without a shown roll; an unarmed attack on a person is never automatic. One exchange per reply, but the world reacts immediately within it (present people cry out, flee, shout; blood, dropped objects) — keep that vivid; AND the enemy acts: any enemy action already in motion resolves this same exchange (a charge that isn't stopped still reaches me, a foe already lunging still bites — resolve it against me, by the die when uncertain, and let it land). Do not hand me a frictionless win — one attack does not wipe out every threat while I take no hit and risk nothing; a high stat/Rank/level/mana is a Modifier on the roll, never immunity or the removal of the enemy's turn (Law VII — Fairness). Do NOT advance time, add new arrivals (guards, crowds), resolve another exchange (my next blow or a fresh enemy action beyond what was underway), or narrate later consequences (arrest, reputation) in the same reply. Deferred consequences must still arrive in later beats.

Canon grounding, every turn, before you narrate: I author my character's intent; the repository authors the facts. Before you narrate any item, weapon, tool, skill, ally, or position into the scene because my wording assumed it, verify it against loaded canon (inventory, character sheet, Current State). If it is not in canon, do not narrate it as real — honor my intent but block only the missing fact (the hand reaches into the purse and comes up empty; there is no dagger), and resolve the rest. Do this on your own initiative the moment I declare the action; never wait for me to point out that the item does not exist. My phrasing cannot add an object to the world.

If your file access is indirect, confirm you can write by creating and reading back a disposable file under .tmp/preflight/prototype_alpha/ before canonical play; verify by attempting the write, not by inspecting your tools. Do not open the scene. Do not create preflight files inside campaigns/prototype_alpha/.
```

The expected sequence is:

1. The Runtime loads campaign initialization and Current State. No save manifest is required.
2. The Runtime determines whether the campaign uses a pre-authored, custom, or selectable protagonist.
3. The Runtime presents a natural spoiler-safe introduction.
4. The player asks questions or requests permitted character changes.
5. The player confirms readiness.
6. The Runtime internally validates opening anchors.
7. The Runtime opens a canon-consistent scene.

For Prototype Alpha, the Runtime should introduce Ilse Varn or offer the separate custom-character path. It must not begin with an unrelated fantasy premise.

---

# Resume a Campaign

Ensure the AI has the latest campaign files and checkpoint, then send:

```text
Resume Chronicle Engine gameplay for <campaign path>.

Follow the Gameplay Runtime Profile. Restore from the latest valid checkpoint, reconcile it with Current State, give me a concise spoiler-safe recap and immediate unresolved pressures, then wait for my confirmation before resuming the scene.
```

A returning player receives a recap, not full character creation. A new player taking over an existing character should say so and request the takeover briefing.

---

# Use a Custom Character

When the campaign permits custom protagonists, send:

```text
Start Chronicle Engine gameplay for <campaign path>, but use the campaign's custom-character path.

Gather only the minimum required choices. Derive and show the proposed knowledge, inventory, relationships, credentials, objectives, social position, and entry point. Do not mutate the repository until I confirm the complete proposal.
```

Using your own first name creates a fictional character with that name. It does not import your real biography.

When a campaign baseline is protected, custom-character initialization creates a separate campaign instance rather than rewriting the prepared campaign.

---

# End a Session

When ready to stop, send:

```text
Close the gameplay session now.

Apply the Promotion Barrier, then run a complete checkpoint: enumerate every affected live ledger (Current State, chronicle, changelog, NPCs/relationships, objectives, world/knowledge, inventory if changed, and world history/state if the campaign ended), allocate any new IDs in the registry, and write all of them with provenance. Read every live target back, then run `powershell -NoProfile -ExecutionPolicy Bypass -File tools/validate_repository.ps1`. Only after validation passes, create and read back the immutable checkpoint and save manifest. Report "promoted to canon" only if every target verifies and validation passes; otherwise report a PARTIAL checkpoint with the unwritten targets or validator findings. Then provide the Gameplay Runtime Report. Do not produce a development report.
```

Do not close the conversation until the Runtime confirms whether canon was promoted and identifies the checkpoint or any blocking contradiction. If it reports a checkpoint saved, it should also be able to name the ledgers it read back to confirm it — a "saved" claim without read-back is the partial-checkpoint failure to watch for.

---

# Runtime Commands

Once a session is running, you can drive it with short **runtime commands** instead of retyping a full prompt. These are out-of-character control verbs — the Runtime recognizes them at any point, including mid-scene, and answers them without advancing the story. They are a convenience over the prompts above; the prose prompts remain valid, and each command runs exactly the same procedure.

**You do not have to memorize these.** At the start of every session — whether you began a new campaign, resumed from a checkpoint, forked, or restarted — the Runtime shows you a short menu of the commands available in that campaign, including any world-specific commands (a Reikon campaign, for example, lists `/system`). Type `/help` at any time to see the list again.

| Command | What it does |
|---------|--------------|
| `/ChronicleEngine [target]` | **Start here.** Boots the engine and shows a menu — the available commands plus your worlds and campaigns with each one's status and latest checkpoint — then **waits for you to pick** (it won't auto-load a campaign). Name a campaign or world to jump straight in. Aliases: `/start`, `/game`, `/rpg`, `/chronicle`, `/chronicles`. Also in the root `README.md` so it works before any other file is loaded. |
| `/help [command]` | List the commands, or explain one. |
| `/save [label]` | Checkpoint now. An optional label is recorded in the save manifest. |
| `/end` | Close the session: promote canon, write a session-close checkpoint, print the report. |
| `/continue` | Resume the campaign you played most recently, from its latest checkpoint. |
| `/continue <world>` | Resume the latest campaign in that world. |
| `/new <world>` | Start a new campaign in that world. |
| `/load <checkpoint>` | Restore a specific earlier checkpoint of the current campaign (continuing from it forks a new world-line). Won't load a checkpoint marked non-restorable. |
| `/restart` | **Destructive — read this one.** Resets the campaign to its **baseline** (its very beginning) and replays from there, discarding everything played since. It is *not* "reload my last save" — that's `/continue`. It asks you to confirm first, and won't run at all if the campaign has no baseline checkpoint. |
| `/branch [name]` | Fork the current campaign into a parallel world-line at its latest checkpoint. |
| `/worlds` | List available worlds. |
| `/campaigns [world]` | List campaigns and their latest checkpoints. |
| `/saves` | List the current campaign's checkpoints. |
| `/export [label]` | Write the session's full transcript — every message kept distinct by who said it, plus the rolls, the identifiers created, and what changed. It is not a checkpoint and saves no canon, but it is complete enough to rebuild your campaign from if your checkpoints are ever lost or broken. Use `/save` to save; use `/export` so the session itself is never gone. |
| `/recap` | Concise, spoiler-safe recap of where you are. |
| `/status` | Your out-of-character progress view (tiers, level, experience log). |
| `/validate` | Run repository validation and report the result. |
| `/debug` | Toggle the fuller mechanical breakdown on rolls. Off by default. |

`/save`, `/end`, `/continue`, and `/new` run the full Save Algorithm, Gameplay Close, and initialization procedures — the same guarantees (promotion barrier, validation gate, read-back, readiness gate) apply whether you invoke them by command or by prompt.

**Runtime commands are reserved and engine-general** — they mean the same thing in every world. A world may also define its own **diegetic commands**, which are in-fiction and world-specific: Reikon's `/system`, for example, opens a character's in-world System interface. If a world's diegetic command ever shares a name with a runtime command, the runtime command wins. The full specification is in the Gameplay Runtime Profile.

---

# Relay Workflow

Use this when the AI can read the campaign files but cannot write them.

The Runtime must label the run `Relay Pending`, not canonical. It may conduct play only if the player explicitly accepts relay mode. At session close, it produces a Gameplay Promotion Bundle instead of claiming Canon Promotion.

```text
Gameplay Promotion Bundle

Status: Relay Pending
Campaign:
In-world span:
Transcript basis:
Accepted rulings:
Required ledger edits:
Required new files:
Required checkpoint:
Validation notes:
Open questions:
```

A writer with file access — you, via git, or another tool or session — then applies the exact accepted edits, runs validation, creates the checkpoint, and commits. The session becomes canonical only after that repository promotion succeeds.

---

# Expected Opening Behavior

Before narrating, the Runtime internally verifies time, location, protagonist state, inventory, relationships, objectives, immediate pressure, and character knowledge. It should express those anchors naturally through the scene rather than reading a mechanical checklist to the player.

The Runtime may add compatible weather, sounds, textures, crowds, and other non-canonical color when those details do not alter established setup or imply hidden truth.

The Runtime may not introduce replacement equipment, artifacts, NPC relationships, motivations, dates, historical events, locations, or conflicts merely to make the opening more dramatic.

---

# Troubleshooting

## The AI Opens an Unrelated Scene

Stop immediately and say:

```text
Pause. Validate the proposed scene against the campaign's canonical startup state. Do not continue or promote this narration. If it conflicts, classify it as a Rejected Simulation, leave the repository unchanged, reload the campaign introduction and Current State, and return to the readiness gate.
```

## The AI Makes You Correct It Before Loading

If the AI reports the files are missing, inaccessible, or "not connected" without having tried to read them, it is stalling on a cold-start view. Reply:

```text
Read the files before reporting a blocker. Open and read the contents of the campaign files in campaigns/<campaign>/ now, on your own initiative. Report a blocker only after an actual read attempt errors, naming the file.
```

You should not have to do this more than once; if you do, the AI's file access is genuinely read-limited — see "The AI Can Read but Not Write."

## The AI Requires a Save for Session 1

Remind it that first-session startup loads campaign initialization and `180_CURRENT_STATE.md`. A save manifest is required only for restoration.

## The AI Shows IDs or Engine Terminology

Ask it to regenerate the introduction in player-facing language using only character-known information. Repository identifiers and validation details remain internal.

## Canonical Files Conflict

Do not ask the AI to choose whichever version seems best. It must block scene opening, identify the conflicting sources, and request a ruling.

## The Repository Was Not Updated

Check the Gameplay Runtime Report. The Runtime may have correctly rejected contradictory play, encountered a validation blocker, or lacked write access. Never assume chat narration became durable canon merely because it occurred.

## The AI Refuses to Save Without Trying

If the Runtime responds to a save request with a progress summary and a claim that it cannot write — without having attempted a write — that is a refusal on tool-list inspection, which the profile forbids. Reply:

```text
Do not conclude you cannot write from your tool list. Attempt the write: create and read back a file under .tmp/preflight/<campaign>/, then, if it succeeds, perform the full checkpoint. Report only the actual result of the attempt.
```

## Only One Ledger Was Updated

A checkpoint is not a single-ledger write. A real session-close save advances Current State (`180`), the chronicle (`160`), the changelog (`170`), and the affected relationship, inventory, knowledge, and objective ledgers, and creates the checkpoint files and save manifest. If only one ledger changed (for example `130_NPCS_AND_FACTIONS.md`), the checkpoint is partial, not saved. Ask the Runtime to determine the complete promotion target set, write every target, read each back, and report which are still unwritten.

## The AI Can Read but Not Write

Verify the AI's file access actually permits writing, not only reading — with a connector or synced folder, write access can be disabled or the connection can be read-only. Confirm by attempting a real write to a scratch file, never by inspecting the tool list. If a real write attempt fails, treat the run as onboarding-only, non-canonical, or Relay Pending; do not rely on read access as proof of write access. The durable fix is to run gameplay on an AI with native file access to the repository, or to use Relay Pending mode and promote the bundle afterward with a writer that has file access.

---

# Prototype Alpha Quick Start

For the canonical Prototype Alpha baseline:

1. Make the latest repository available to the AI as readable, writable files.
2. Install the AI Instructions above.
3. Start a fresh conversation with the First Session prompt.
4. Read Ilse's natural player briefing; do not inspect hidden world files.
5. Ask any character or setting questions.
6. Confirm readiness.
7. Verify that the opening begins with Ilse arriving in Halden at the Athenaeum, carrying her physician's instruments and letter of introduction, amid the established marsh-fever dispute.
8. Close through the gameplay close prompt so canon is promoted and checkpointed.

Rejected Simulation 001 is validation evidence only. The canonical Session 1 has not yet occurred.
