---
name: continue
description: Use when the player types /continue, /continue <world|campaign>, or its alias /resume in a Chronicle Engine session, after the Engine Welcome Page has been presented.
---

# /continue — Resume a Campaign

Thin dispatcher only — this skill exists so the harness recognizes `/continue` (and its alias `/resume`) as a registered command; it does not reimplement the procedure.

- **No argument:** resume the **most recently played** campaign, resolved from `system/WORLDS_AND_CAMPAIGNS.md`'s `Captured` timestamp (the checkpoint manifest's real timestamp), not game time or filesystem mtime.
- **With a world:** resume that world's most recently played campaign.
- **With a campaign:** resume that specific campaign.

Read and follow `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Returning and Takeover Sessions"** (Rules Section 13.4 governs resolution), and the target campaign's own `090_CAMPAIGN_STARTUP.md` plus its latest `saves/900_CHECKPOINT_NNNN/`. Never resume from a checkpoint recorded as non-restorable.

This command only fires after the player has chosen from the Engine Welcome Page rendered by the `chronicle` skill — never as an implicit inference from `/chronicle` itself.
