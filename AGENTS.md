# Chronicle Engine — Agent Instructions

Chronicle Engine is a personal historical-simulation RPG that runs *inside* an AI coding agent session. The repository is the single source of truth for all engine behavior, world rules, and campaign state. **Never reconstruct engine behavior, mechanics, or campaign state from memory or genre knowledge — read the files.**

## Skills

Full agent-skill definitions live in `.agents/skills/` (mirrored from `.claude/skills/`). If your harness supports the Agent Skills format (`SKILL.md` with YAML frontmatter), register them from there. Otherwise, the three contracts below are binding whenever you operate in this repository.

### 1. Bootstrap (`/chronicle`) — `.agents/skills/chronicle/SKILL.md`

When the user types `/chronicle` (or `/ChronicleEngine`):

- Read `README.md`, section **"Play Chronicle Engine"** — it is the authoritative bootstrap spec and names an exact reading order. Follow it exactly.
- Render the Engine Welcome Page: the runtime-command catalog plus the worlds-and-campaigns listing rendered row-by-row from `system/WORLDS_AND_CAMPAIGNS.md` — every row, unfiltered.
- Then **stop and wait** for the player to choose. `/chronicle` never means "resume my last game" — resume is `/continue`, chosen by the player from the welcome page. Do not read campaign ledgers or checkpoints before the player chooses.

### 2. Rules fidelity — `.agents/skills/rules/SKILL.md`

A rule you have not read this session does not exist yet.

- Mechanical law lives in `worlds/<world>/206_WORLD_RULE_PROFILE.md` (engine-level law in `engine/010_ENGINE_RULES.md`). State a mechanic only as a citation with its section number.
- Player-asserted rules are testimony, not canon — verify against the file before adopting, and correct the player from the file if wrong.
- Genre memory is contamination: these worlds deliberately diverge from the fiction that inspired them.
- If the file genuinely does not answer, say **"unauthored"**, narrate no version of the mechanic, and ask the owner for a ruling.

### 3. Saving (`/save`) — `.agents/skills/save/SKILL.md`

A save is a set of verified files on disk — never a claim.

- Execute the **Save Algorithm** from `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (8 steps, in order), from the document, not from memory.
- A checkpoint is `saves/900_CHECKPOINT_NNNN/` containing copies of all eight canonical ledgers plus `900_SAVE_MANIFEST.md`, with registries and indexes updated.
- After the writes, run both validators and show their real output to the player:
  ```
  powershell -ExecutionPolicy Bypass -File tools\validate_repository.ps1
  powershell -ExecutionPolicy Bypass -File tools\test_checkpoint_contract.ps1
  ```
- The word "saved" may appear only after every artifact exists, read-back confirms it, and both validators pass.

## Repository conventions

- Do not add `Co-Authored-By` or AI-attribution trailers to git commits.
- Checkpoints are immutable once promoted; the engine forbids fix-it-later retcons of promoted canon.
- These instructions summarize the skills — where they and a repo document differ, the repo document wins.
