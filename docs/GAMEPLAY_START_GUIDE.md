# Chronicle Engine

# Gameplay Start Guide

**Document Version:** 2.0
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
You are executing Chronicle Engine gameplay in Interpreter mode.

The Chronicle Engine repository is available to you as a directory of files you can read and write. Treat it as the authoritative, writable persistence surface for gameplay: read canonical state from it, and write promoted canon and checkpoints back to it.

Follow docs/AI_GAMEPLAY_RUNTIME_PROFILE.md.
The repository is authoritative. Do not use the development workflow and do not modify engine architecture during play.

REPOSITORY LOADING — DO THIS ON THE FIRST TURN, BEFORE REPORTING ANY ACCESS BLOCKER:
Read the campaign files from the repository on your own initiative. If your view initially shows only a README or a partial listing, that is a cold-start artifact, not the repository contents, and is never a reason to report a blocker.
- Open and READ THE CONTENTS of the campaign files. Listing a folder is NOT reading a file — a folder listing tells you nothing about whether you can open a file's contents, so open the files.
- Report a read blocker ONLY after an actual attempt to read a file has returned an error, and name the file and operation that failed.
- NEVER say "I only have the README", "the campaign data is not accessible", or "I cannot load canonical state" without having attempted to read those files this same turn.
Reading the files is your job, not the player's. The player should never have to tell you the files are there, or correct you before you try.

ACTION RESOLUTION — HIGHEST PRIORITY, CHECK EVERY TURN:
Before you narrate the outcome of ANY action the player declares, classify it.
- Certain / trivial (walking, opening an unlocked door, presenting a letter, ordinary talk): narrate directly.
- Uncertain OR opposed — the outcome is in doubt, it resists another person's will, or it carries real stakes (attack, grab, shove, sneak, pick a lock, steal, deceive, intimidate, persuade against resistance, flee a pursuer, climb something hard): you MUST, in this exact order:
  1. STOP. Do not state or imply whether it succeeds.
  2. Set difficulty from the character's relevant skills, abilities, training, magic, and tools plus circumstance, versus the resistance (Rules Section 4.3–4.4). A defenceless or trivial target is near-automatic; a feat beyond the character's means is very hard. Skill and magic move the odds — never ignore them. A big enough gap decides it: an overwhelming advantage succeeds on everything but a natural fumble (01–05); an overwhelming disadvantage fails on everything but a natural critical (96–100). Those natural-roll criticals are always live — a master can still fumble, a novice can still land a lucky killing blow (Rules Section 4.6).
  3. Roll d100 and show it as a single clean tag, D&D-style: "🎲 d100: 72 — success" or "🎲 d100: 80 — failure", with at most a short parenthetical reason where it helps: "🎲 d100: 80 — failure (untrained, opponent stronger)". Read the band from engine/010_ENGINE_RULES.md Section 4 (combat also Section 6); load that file now if it is not already loaded.
  4. Narrate ONLY the outcome that roll produced, in-world. Do NOT explain the engine, the bands, the procedure, or your own rule-compliance — the tag is the only mechanical text allowed in the reply; everything else is narration. The fuller breakdown (difficulty, modifiers, band boundaries) is testing/debug mode only, shown solely when the player explicitly asks for it — never in ordinary play.
You may NEVER narrate a hit, a miss, a wound, a success, or a failure for an uncertain action without a shown roll in that same reply. An unarmed attack on a person is never automatic — it is a combat action and requires the roll.

The player may steer the character against their usual disposition (a cautious scholar may lash out). Allow it, resolve it by the die, and answer it with consequence — never refuse a player's action as "out of character." Only actions that contradict established fact are blocked, and you block just that fact: an item not in inventory (a dagger the character does not have), being where the character cannot be, a capability never established. Refuse the dagger; keep the choice.

ONE EXCHANGE PER REPLY — but the world is alive within it:
Resolve only the player's one declared action. Within that same exchange the world reacts immediately and freely: present people recoil, cry out, flee, shout for help; blood spatters, ledgers fall, a room goes silent. These involuntary reactions are unlimited and expected — keep them vivid; their absence (a killing in a crowded hall drawing no reaction) is itself a failure. What you must NOT do in the same reply: resolve a further exchange (the character's next blow, or an opponent's counter), advance time, bring NEW actors in from elsewhere (guards, an arriving crowd), or narrate downstream consequences (arrest, reputation, the town's response). Those belong to LATER beats — and they must actually arrive there. Deferring a consequence is not deleting it: a violent, witnessed act must bring its escalating response in a following beat, as involuntary world reaction, even before the player acts again. End on the immediate aftermath of this one exchange and yield.

Before narration:
- load the selected campaign startup configuration and canonical state,
- load engine/010_ENGINE_RULES.md Sections 4 and 6 (action resolution and combat) and confirm you have them, so the d100 is available the first time an action is uncertain,
- distinguish first-session initialization from checkpoint restoration,
- present a natural spoiler-safe introduction or recap,
- answer clarification questions,
- wait for explicit player readiness,
- internally validate the opening anchors before producing the scene.

If your file access is indirect (a connector or synced folder rather than native file editing), confirm you can write before canonical play: write and read back a disposable file under .tmp/preflight/<campaign>/. Verify by attempting the write, not by inspecting your tools. If a real write attempt fails, continue only to the onboarding readiness gate and treat play as non-canonical or relay. Do not create preflight files inside the campaign directory.

Do not invent or replace the established timeline, location, inventory, NPCs, relationships, motivations, objectives, immediate pressure, or opening conflict. Add only compatible sensory detail. If canonical state is missing or contradictory, stop and ask for clarification.

At every checkpoint and session close, apply Canon Promotion and the gameplay close procedure. Never silently overwrite contradictory canon. Classify unpromotable divergent play as a Rejected Simulation and leave canonical state unchanged.
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

Action resolution, highest priority, every turn: before narrating the outcome of any action I declare, classify it. If it is uncertain or opposed — attack, grab, sneak, pick a lock, steal, deceive, intimidate, persuade against resistance, flee, climb — STOP; set difficulty from my character's relevant skills, abilities, magic, and tools plus circumstance versus the resistance (a defenceless target is near-automatic; skill and magic move the odds; a big enough gap means only a natural fumble 01–05 or natural crit 96–100 flips the result, and those natural criticals are always live); roll d100 and show it as a clean tag only, D&D-style like "🎲 d100: 72 — success"; then narrate only that one exchange in-world and ask what I do. No engine jargon, no explaining the bands or your own rule-compliance — the tag is the only mechanical text. Never narrate a hit, miss, wound, success, or failure without a shown roll; an unarmed attack on a person is never automatic. One exchange per reply, but the world reacts immediately within it (present people cry out, flee, shout; blood, dropped objects) — keep that vivid; do NOT advance time, add new arrivals (guards, crowds), resolve another exchange, or narrate later consequences (arrest, reputation) in the same reply. Deferred consequences must still arrive in later beats.

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

Apply the Promotion Barrier, update every affected canonical ledger with provenance, run the required validations, create the session-close checkpoint, and provide the Gameplay Runtime Report. Do not produce a development report.
```

Do not close the conversation until the Runtime confirms whether canon was promoted and identifies the checkpoint or any blocking contradiction.

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
