---
name: branch
description: Use when the player types /branch or /branch <name> in a Chronicle Engine session, to fork the current campaign at its latest checkpoint into a new parallel instance.
---

# /branch — Fork the Current Campaign

Thin dispatcher only — this skill exists so the harness recognizes `/branch` as a registered command; it does not reimplement the procedure.

Forks the current campaign **at its latest checkpoint** into a new, distinct campaign instance with its own identity and lineage — unlike `/restart` (destroys history) or `/load` (forks from a non-latest point). Read and follow `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Fork (Decision 053)"**.

The new branch needs its own campaign directory and a row in `system/WORLDS_AND_CAMPAIGNS.md` (Maintenance rule) recording its lineage back to the source campaign and checkpoint. Requires a loaded campaign.
