---
name: restart
description: Use when the player types /restart in a Chronicle Engine session — a destructive reset of the current campaign to its baseline checkpoint. Requires explicit confirmation before acting.
---

# /restart — Destructive Reset to Baseline

Thin dispatcher only — this skill exists so the harness recognizes `/restart` as a registered command; it does not reimplement the procedure.

**Destructive.** Resets the current campaign to its **baseline checkpoint**, discarding all play since baseline. This is *not* "reload the latest checkpoint" (that's `/continue`) and is *not* available to a campaign with no baseline checkpoint — check `system/WORLDS_AND_CAMPAIGNS.md`'s per-campaign notes before attempting; several live campaigns (e.g. Gatefall, Reikon) explicitly have none and this command must be refused for them.

Read and follow `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, sections **"Redo (Decision 053)"** and **"Destructive-Command Guards"** — a baseline checkpoint and **explicit player confirmation** are both required before any write. Keeps the protagonist's identifier; does not roll back `system/ID_REGISTRY.md`.
