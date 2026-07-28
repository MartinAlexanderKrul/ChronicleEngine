---
name: inventory
description: Use when the player types /inventory in a Chronicle Engine session to see every character's current canonical inventory. Out-of-character, read-only. Requires a loaded campaign.
---

# /inventory — Canonical Inventory Surfacing

Thin dispatcher only — this skill exists so the harness recognizes `/inventory` as a registered command; it does not reimplement the procedure.

Show the current canonical inventory of **every Character in the loaded campaign**, grouped by character, including all money and other currency holdings, per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Inventory Surfacing"**. Read from live ledgers, not a cached total. Out-of-character and read-only; causes no state change. Requires a loaded campaign.
