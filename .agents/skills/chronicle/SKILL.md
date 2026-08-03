---
name: chronicle
description: Use when the user's message is exactly the literal command /chronicle in this repository — the Chronicle Engine bootstrap. Never treat /chronicle as an unknown command, never ask what it means, and never reconstruct engine behavior from memory; the repository is the authoritative source for everything that happens next.
---

# Chronicle Engine bootstrap

`/chronicle` is the user's alias for the Chronicle Engine bootstrap command (`/ChronicleEngine` in the repo's own docs). All paths below are relative to the repository root, so this skill travels with the repo.

## What `/chronicle` means — and what it doesn't

This command has an **empty argument schema** and fires **before any campaign discovery**. It always means "render the Engine Welcome Page" — never "continue my last game," never "load campaign X" — even if exactly one campaign exists, one was played yesterday, or the user was mid-scene when the last session ended. The README calls this the Bootstrap Gate: welcome page first, player chooses second, campaign files only after that.

| Tempting inference | Reality |
|---|---|
| "One campaign was played recently — resume it" | Resume is `/continue`, chosen by the player from the welcome page. `/chronicle` never infers it. |
| "Open on a recap of the last scene" | No campaign ledger is read at all before the player chooses. |
| "I know this project — render the welcome page from memory" | The listing is **rendered from `system/WORLDS_AND_CAMPAIGNS.md`**, row by row. A remembered welcome page is the engine's documented historical failure. |

## What to actually do

1. Read `README.md`, section "Play Chronicle Engine". It is the authoritative bootstrap spec — follow it exactly.
2. **Read nothing else.** The bootstrap working set is exactly that README section, plus the first Markdown table under `# Worlds` and the first under `# Campaigns` in `system/WORLDS_AND_CAMPAIGNS.md`. That is the whole set: about 2,600 estimated tokens against a 12,000 warning and a 16,000 hard failure, measured by `tools/measure_runtime_context.ps1` against `system/RUNTIME_CONTEXT_BUDGETS.yaml`.
3. **Preload nothing that a later operation fetches.** Not the resident core, the Gameplay Runtime Profile, the start guide, `engine/` specifications, validators, world profiles, campaign files, or historical notes. Loading them here is not diligence — it is roughly 91,000 tokens, some thirty-five times the surface's own failure ceiling, spent before the player has said what they want to play, and it is the load the two-layer split exists to prevent. `docs/AI_GAMEPLAY_RESIDENT_CORE.md` is loaded when a campaign operation is selected, and the selected operation's remaining bounded reads come from `tools/resolve_operation_plan.ps1`.
4. Render the Engine Welcome Page: the full runtime-command catalog plus the worlds-and-campaigns listing rendered from `system/WORLDS_AND_CAMPAIGNS.md` — every row, unfiltered, unsupplemented. Then **stop and wait** for the player to choose.
5. Do not read campaign ledgers, checkpoints, or world files beyond the welcome page; do not begin a readiness gate or recap. Presenting the welcome page and waiting is the entire job of this command.

If a needed file is missing or unreadable, attempt the read first, then report that specific blocker by name — never assume the repository is inaccessible from a cold-start view.

## After the player chooses

`/continue`, `/resume`, `/new`, or `/load` hand control to the procedures already specified in the files read above (particularly `docs/AI_GAMEPLAY_RESIDENT_CORE.md` and `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`). Follow those documents, not a paraphrase — this skill deliberately duplicates nothing, so the two can never drift apart.
