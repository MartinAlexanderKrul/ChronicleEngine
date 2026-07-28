---
name: export-debug
description: Use when the player types /export-debug or /export-debug <label> in a Chronicle Engine session to export the raw user-visible chat transcript. No campaign required. Not a gameplay export or a save.
---

# /export-debug — Raw Chat Debug Export

Thin dispatcher only — this skill exists so the harness recognizes `/export-debug` as a registered command; it does not reimplement the procedure.

Export the **entire user-visible current chat** — including conversation before engine startup, and regardless of whether a campaign is loaded — to `exports/debug/`, with only speaker labels and exact message bodies, per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Chat Debug Export"**.

**This is a diagnostic transcript, not a gameplay export (`/export`) and never a save (`/save`).** It establishes no canon.
