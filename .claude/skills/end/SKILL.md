---
name: end
description: Use when the player types /end or its alias /save-and-quit in a Chronicle Engine session to save and close the current campaign session. Requires a loaded campaign.
---

# /end — Save and Close the Session

Thin dispatcher only — this skill exists so the harness recognizes `/end` (and its alias `/save-and-quit`) as a registered command; it does not reimplement the procedure.

Closes the session per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Gameplay Close"**: the promotion barrier, a session-close checkpoint (run the full `save` skill's Save Algorithm and both validators — the same completion contract applies, "saved" only after verified writes and passing gates), and the Gameplay Runtime Report. Requires a loaded campaign.
