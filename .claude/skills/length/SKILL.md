---
name: length
description: Use when the player types /length, /length <short|normal|long>, or its aliases /narration or /verbosity in a Chronicle Engine session, to set or report how long narration runs each turn.
---

# /length — Narration Length Register

Thin dispatcher only — this skill exists so the harness recognizes `/length` (and its aliases `/narration`, `/verbosity`) as a registered command; it does not reimplement the procedure.

Per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Interaction Cadence (Response Length)"**:
- **No argument:** report the current level.
- **`short`** — 1–2 paragraphs. **`normal`** (default) — 2–3. **`long`** — 4–5.

This is a session-local display preference only — a soft default read each turn, never a hard cap on a genuinely dense beat, and it never affects canon, resolution, or the die.
