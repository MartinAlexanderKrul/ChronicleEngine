---
name: campaigns
description: Use when the player types /campaigns or /campaigns <world> in a Chronicle Engine session to list campaigns and their latest checkpoints. Out-of-character, no state change, no campaign required.
---

# /campaigns — List Campaigns

Thin dispatcher only — this skill exists so the harness recognizes `/campaigns` as a registered command; it does not reimplement the procedure.

Render the **Campaigns** table from `system/WORLDS_AND_CAMPAIGNS.md` — every row (optionally filtered to the named world), each with its latest checkpoint and status, rendered from the file rather than recalled from memory. Do not cache or repeat a checkpoint number from a prior turn — re-read the file. Out-of-character; causes no state change; available with or without a loaded campaign.
