---
name: help
description: Use when the player types /help or /help <command> in a Chronicle Engine session. Out-of-character, no state change, no campaign required.
---

# /help — Command Catalog

Thin dispatcher only — this skill exists so the harness recognizes `/help` as a registered command. The actual command table is defined once, in `README.md` ("Exact cold-start command catalog") and mirrored in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` ("Command Table"). Do not paraphrase either from memory.

- **No argument:** render **every** row of the Command Table, unfiltered and unabridged — never a state-filtered or remembered subset ("The Command Table Is Rendered, Not Recalled").
- **With `<command>`:** read that command's row (and its section reference in the Runtime Profile's Command Table) and explain it from the document.

Out-of-character; causes no canon or state change; available with or without a loaded campaign.
