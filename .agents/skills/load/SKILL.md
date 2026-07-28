---
name: load
description: Use when the player types /load <checkpoint> in a Chronicle Engine session to restore a specific earlier checkpoint of the current campaign.
---

# /load — Restore a Specific Checkpoint

Thin dispatcher only — this skill exists so the harness recognizes `/load` as a registered command; it does not reimplement the procedure.

Restores a **specific, named** checkpoint of the current campaign — not necessarily the latest. Continuing play from a non-latest checkpoint is a **fork** (Decision 053), distinct from `/branch`. Read and follow `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, sections **"Returning and Takeover Sessions"** and **"Destructive-Command Guards"**.

**Refuse** a checkpoint recorded as non-restorable (check the campaign's save index / `180_CURRENT_STATE.md` notes and `system/WORLDS_AND_CAMPAIGNS.md`'s per-campaign notes first). Requires a loaded campaign.
