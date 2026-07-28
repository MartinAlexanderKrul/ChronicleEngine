---
name: recap
description: Use when the player types /recap in a Chronicle Engine session to get a spoiler-safe recap of current state and unresolved pressures. Requires a loaded campaign.
---

# /recap — Spoiler-Safe Recap

Thin dispatcher only — this skill exists so the harness recognizes `/recap` as a registered command; it does not reimplement the procedure.

Give a concise, spoiler-safe recap of current state and unresolved pressures, per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Returning Sessions recap"**. Read from the campaign's live ledgers (especially `180_CURRENT_STATE.md`) rather than a remembered summary — state decays between sessions. Advances no in-world time. Requires a loaded campaign.
