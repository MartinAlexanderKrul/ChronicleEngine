---
name: export
description: Use when the player types /export or /export <label> in a Chronicle Engine session to write the session's durable gameplay transcript. Requires a loaded campaign. Not a save.
---

# /export — Durable Gameplay Transcript

Thin dispatcher only — this skill exists so the harness recognizes `/export` as a registered command; it does not reimplement the procedure.

Writes the session's durable gameplay transcript to `campaigns/<campaign>/exports/` per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Session Export"**: every message verbatim and classified, the opening state, every resolution in full, every identifier allocated, every promotion, and the closing state — sufficient to rebuild canon if every checkpoint fails (Decision 061).

**This establishes no canon and is not a save** — never let its completion be mistaken for `/save`'s completion contract. Requires a loaded campaign.
