---
name: new
description: Use when the player types /new <world> in a Chronicle Engine session, after the Engine Welcome Page has been presented and a world has been chosen.
---

# /new — Start a New Campaign

Thin dispatcher only — this skill exists so the harness recognizes `/new` as a registered command; it does not reimplement the procedure.

Starts a **new campaign instance** in the named world under `worlds/<world>/`. Read and follow `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, sections **"Emergent Campaign"** and **"Custom Protagonist"** (and **"Pre-Authored Protagonist"** if the world offers one), for initialization, the Player Agency Contract, and the Opening Anchor Contract. A new campaign gets its own directory under `campaigns/`, its own `090_CAMPAIGN_STARTUP.md`, and must be added to `system/WORLDS_AND_CAMPAIGNS.md` in the same change (Maintenance rule).

Requires the target world to exist under `worlds/`; check `/worlds` or the index first if unsure.
