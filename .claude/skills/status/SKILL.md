---
name: status
description: Use when the player types /status in a Chronicle Engine session to see the out-of-character Progression Surfacing view (level, XP, tiers). Requires a loaded campaign. Distinct from a world's diegetic /system.
---

# /status — Progression Surfacing View

Thin dispatcher only — this skill exists so the harness recognizes `/status` as a registered command; it does not reimplement the procedure.

Show the out-of-character **Progression Surfacing** view — derived tiers, level, experience log — per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Progression Surfacing"**. This is a presentation layer over emergent growth only; it never affects resolution or canon, and is distinct from a world's diegetic `/system` (e.g. Gatefall's or Reikon's), which is a separate, world-defined command shown only once that world's campaign is loaded. Requires a loaded campaign.
