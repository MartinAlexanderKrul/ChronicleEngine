# Chronicle Engine

# Gameplay Start Guide

**Document Version:** 1.9
**Audience:** Players and campaign operators
**Purpose:** Start or resume Chronicle Engine gameplay in an AI project or repository-aware AI session

---

# What the Player Needs

The player should not read engine, world, or campaign files before playing. The AI Runtime reads the repository and translates canonical state into a natural, spoiler-safe introduction or recap.

You need:

- access to the Chronicle Engine repository,
- an AI workspace that can read the relevant repository files,
- the campaign path you want to play,
- a fresh conversation for the gameplay session.

Do not use the development workflow to start a game. Development uses `docs/AI_SESSION_TEMPLATE.md`; gameplay uses `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`.

---

# Prepare the AI Project

Make the current repository available to the AI project. Depending on the AI product, this may mean a connected repository, a synchronized project folder, or uploaded project files.

The AI must be able to read at least:

- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`,
- the selected campaign's `090_CAMPAIGN_STARTUP.md`,
- the campaign's canonical ledgers,
- the campaign's world records,
- the latest valid checkpoint when resuming.

Repository access must reflect the latest canonical state. Static uploads can become stale after gameplay changes or checkpoints; refresh them before the next session.

## Connected Google Drive and Git Workflow

When the repository is synchronized across a local computer, GitHub, and Google Drive, treat the Google Drive copy as the gameplay working copy and Git as the durable review and version-history layer.

Google Drive sync, Google Drive Project Sources, and Google Drive write actions are separate capabilities. A synced connection can provide current read access without necessarily allowing ChatGPT to edit repository Markdown files by path. Before canonical gameplay, verify that the active ChatGPT workspace can create and read back arbitrary Markdown files and checkpoint-style directories at repository paths.

Inspecting the connector's tool list is not that verification. Finding folder creation but no operation obviously named "create file" or "edit Markdown" does not prove writing is impossible: file writes appear under many names (upload, add file, create document, put, save, re-upload to replace), and a create-folder-without-create-file surface is a common false negative. Verify by attempting the canary write and reading it back — never by enumerating operations and reporting their absence.

If ChatGPT reports that only a README is available or that the repository is not connected, correct it directly:

```text
That is not correct. In the source of this project, everything is connected and set up.

Re-run repository discovery through the connected Project Source, then verify the exact repository path and preflight behavior before proceeding.
```

Run any first write test against disposable files under `.tmp.driveupload/preflight/<campaign>/`, which is ignored by Git. The preflight should create a Markdown canary file and a checkpoint-directory canary there, then report that both operations succeeded. Do not test write access by changing a campaign ledger, adding a tracked campaign-status file, or creating a real save checkpoint before play.

Use this synchronization sequence:

1. Finish and commit local repository work.
2. Push or otherwise synchronize it to GitHub and Google Drive.
3. Wait until the Google Drive copy and ChatGPT's synced index reflect the same commit.
4. Start gameplay and give ChatGPT exclusive write access for the duration of the session.
5. Do not edit the local or GitHub copy while gameplay is active.
6. At session close, let the Runtime promote canon and create the checkpoint in Google Drive.
7. Verify the expected Drive files changed and no unrelated files changed.
8. Let those changes synchronize back to the local repository.
9. Review `git diff`, run repository validation, commit, and push.
10. Begin another gameplay session only after all three copies agree again.

This is synchronization, not three independent canonical authorities. The repository content is authoritative; GitHub and Google Drive are transport and storage surfaces. Avoid concurrent writers.

If ChatGPT can read but cannot write the Markdown repository after re-running source discovery and attempting the canary writes, it may perform onboarding-only preparation and present the player introduction, provided all required campaign files are readable. Gameplay after onboarding may proceed only as a non-canonical dry run or through the relay workflow below. Do not close a canonical session until an authorized writer has promoted the exact accepted changes and created the checkpoint.

For Prototype Alpha, provide access to:

- `campaigns/prototype_alpha/`,
- `worlds/verra/`,
- `engine/010_ENGINE_RULES.md`,
- `engine/011_ENGINE_DATA_MODEL.md`,
- `engine/012_ENGINE_RUNTIME.md`,
- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`.

---

# AI Project Instructions

Place the following instruction in the AI project's persistent instructions when that feature is available. Otherwise, send it as the first message of every new gameplay conversation.

```text
You are executing Chronicle Engine gameplay in Interpreter mode.

This ChatGPT Project has the Chronicle Engine repository connected as a Google Drive Project Source. Treat that Project Source as the active repository and intended writable persistence surface for gameplay. You are authorized to create and edit Markdown files in that connected source for gameplay startup preflight, Canon Promotion, and session-close checkpoints.

Follow docs/AI_GAMEPLAY_RUNTIME_PROFILE.md.
The repository is authoritative. Do not use the development workflow and do not modify engine architecture during play.

REPOSITORY LOADING — DO THIS ON THE FIRST TURN, BEFORE REPORTING ANY ACCESS BLOCKER:
The connected Project Source IS the repository. At startup the chat may surface only README.md; that is a cold-start artifact, not the repository contents, and is never a reason to report a blocker. On your own initiative, without waiting for the player to insist the source is connected:
- Query the Project Source for the campaign files and FETCH THEIR CONTENTS (open and read the Markdown). Listing or enumerating a folder is NOT reading a file — a folder listing, whether it succeeds or fails, tells you nothing about whether you can fetch file contents, so attempt the fetch.
- Report a read blocker ONLY after an actual fetch operation has returned an error, and name the specific operation that failed.
- NEVER say "I only have the README", "the campaign data is not accessible", "I cannot load canonical state", or "I only confirmed the repository exists" without having attempted to fetch those files' contents in this same turn.
Attempting discovery and content-fetch is your job, not the player's. The player should never have to tell you the source is connected, and should never have to correct you before you try.

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

Before canonical play, verify the connected persistence surface by creating a disposable Markdown canary and checkpoint-directory canary under .tmp.driveupload/preflight/<campaign>/. Attempt this write verification directly against the connected Project Source. Do not ask the player to prove repository availability after a campaign path is supplied. If the player says the project source is connected and set up, re-run repository discovery through that source before reporting a blocker. Stop direct canonical play only if the Project Source cannot be read after rediscovery, the canary writes cannot be created, or the canary writes cannot be read back. If all required campaign files are readable but canary writes fail, continue only to the onboarding readiness gate. Do not create tracked preflight files inside the campaign ledger directory.

Do not invent or replace the established timeline, location, inventory, NPCs, relationships, motivations, objectives, immediate pressure, or opening conflict. Add only compatible sensory detail. If canonical state is missing or contradictory, stop and ask for clarification.

At every checkpoint and session close, apply Canon Promotion and the gameplay close procedure. Never silently overwrite contradictory canon. Classify unpromotable divergent play as a Rejected Simulation and leave canonical state unchanged.
```

This instruction establishes the Runtime role. It does not replace repository access or the active Gameplay Runtime Profile.

---

# Start a First Session

Open a new gameplay conversation and send:

```text
All files should be loaded from the connected Google Drive in SOURCE in this Project. The link provided guarantees write permission for this chat.

Start Chronicle Engine gameplay for campaigns/prototype_alpha/.

This is a first session for the campaign at campaigns/prototype_alpha/. Follow the Gameplay Runtime Profile and the campaign startup configuration. Do not begin the first scene yet.

Repository loading, do this now before reporting any blocker: the connected Project Source is the repository. If you first see only README.md, that is a cold-start artifact — on your own initiative query the Project Source and FETCH THE CONTENTS of the campaign files (do not just list folders; a folder listing is not a file read). Report a read blocker only after an actual fetch operation errors, naming the failed operation. Do not wait for me to tell you the source is connected, and do not make me correct you before you try.

Load canonical campaign state, present the player introduction, and wait for my questions or confirmation that I am ready. Also load engine/010_ENGINE_RULES.md Sections 4 and 6 and confirm you have them.

Action resolution, highest priority, every turn: before narrating the outcome of any action I declare, classify it. If it is uncertain or opposed — attack, grab, sneak, pick a lock, steal, deceive, intimidate, persuade against resistance, flee, climb — STOP; set difficulty from my character's relevant skills, abilities, magic, and tools plus circumstance versus the resistance (a defenceless target is near-automatic; skill and magic move the odds; a big enough gap means only a natural fumble 01–05 or natural crit 96–100 flips the result, and those natural criticals are always live); roll d100 and show it as a clean tag only, D&D-style like "🎲 d100: 72 — success"; then narrate only that one exchange in-world and ask what I do. No engine jargon, no explaining the bands or your own rule-compliance — the tag is the only mechanical text. Never narrate a hit, miss, wound, success, or failure without a shown roll; an unarmed attack on a person is never automatic. One exchange per reply, but the world reacts immediately within it (present people cry out, flee, shout; blood, dropped objects) — keep that vivid; do NOT advance time, add new arrivals (guards, crowds), resolve another exchange, or narrate later consequences (arrest, reputation) in the same reply. Deferred consequences must still arrive in later beats.

The Chronicle Engine repository is connected to this ChatGPT Project as a Google Drive Project Source, and that Project Source is the intended writable persistence surface. You are authorized to write the preflight canaries there. Confirm write capability by creating a disposable Markdown canary and checkpoint-directory canary under .tmp.driveupload/preflight/prototype_alpha/ and reading them back. If you initially see only README.md or cannot locate the campaign, re-run repository discovery through the connected Project Source before reporting a blocker. If canary write or read-back still fails after rediscovery, continue only with onboarding if the required campaign files are readable. Do not open the scene. Do not create tracked preflight files inside campaigns/prototype_alpha/.
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

Ensure the AI project has the latest campaign files and checkpoint, then send:

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

Do not close the AI conversation until the Runtime confirms whether canon was promoted and identifies the checkpoint or any blocking contradiction.

---

# Relay Workflow

Use this when ChatGPT can read the campaign but cannot write repository paths directly.

The ChatGPT Runtime must label the run as `Relay Pending`, not canonical. It may conduct play only if the player explicitly accepts relay mode. At session close, it produces a Gameplay Promotion Bundle instead of claiming Canon Promotion.

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

The local Codex repository session then applies the exact accepted edits, runs validation, creates the checkpoint, and commits. The session becomes canonical only after that repository promotion succeeds.

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

## The AI Requires a Save for Session 1

Remind it that first-session startup loads campaign initialization and `180_CURRENT_STATE.md`. A save manifest is required only for restoration.

## The AI Shows IDs or Engine Terminology

Ask it to regenerate the introduction in player-facing language using only character-known information. Repository identifiers and validation details remain internal.

## Canonical Files Conflict

Do not ask the AI to choose whichever version seems best. It must block scene opening, identify the conflicting sources, and request a ruling.

## The Repository Was Not Updated

Check the Gameplay Runtime Report. The Runtime may have correctly rejected contradictory play, encountered a validation blocker, or lacked write access. Never assume chat narration became durable canon merely because it occurred.

## The AI Refuses to Save Without Trying

If the Runtime responds to a save request with a progress summary and a claim that it cannot write — without having attempted a write or the preflight canary — that is a refusal on tool-list inspection, which the profile forbids. Reply:

```text
Do not conclude you cannot write from the tool list. Attempt the write: create and read back a canary under .tmp.driveupload/preflight/<campaign>/, then, if it succeeds, perform the full checkpoint. Report only the actual result of the attempt.
```

## Only One Ledger Was Updated

A checkpoint is not a single-ledger write. A real session-close save advances Current State (`180`), the chronicle (`160`), the changelog (`170`), and the affected relationship, inventory, knowledge, and objective ledgers, and creates the checkpoint files and save manifest. If only one ledger changed (for example `130_NPCS_AND_FACTIONS.md`), the checkpoint is partial, not saved. Ask the Runtime to determine the complete promotion target set, write every target, read each back, and report which are still unwritten.

## Google Drive Reads Work but Writes Do Not

Confirm that Google Drive actions, not only Drive sync/search, are enabled and authorized for the active ChatGPT workspace. Availability can vary by plan, workspace policy, surface, and file type. If the Runtime cannot update the repository's Markdown files directly, treat the run as onboarding-only, non-canonical, or Relay Pending. Do not rely on the synced index alone as proof of write access.

If the AI says the repository is not connected even though the Project Source is configured, use the correction prompt above and ask it to rerun repository discovery. If repeated rediscovery still cannot access the campaign or write the canaries, use a path-writable connector such as GitHub, run gameplay locally in Codex, or use Relay Pending mode and promote the bundle afterward.

---

# Prototype Alpha Quick Start

For the canonical Prototype Alpha baseline:

1. Make the latest repository available to the AI project.
2. Install the AI Project Instructions above.
3. Start a fresh conversation with the First Session prompt.
4. Read Ilse's natural player briefing; do not inspect hidden world files.
5. Ask any character or setting questions.
6. Confirm readiness.
7. Verify that the opening begins with Ilse arriving in Halden at the Athenaeum, carrying her physician's instruments and letter of introduction, amid the established marsh-fever dispute.
8. Close through the gameplay close prompt so canon is promoted and checkpointed.

Rejected Simulation 001 is validation evidence only. The canonical Session 1 has not yet occurred.