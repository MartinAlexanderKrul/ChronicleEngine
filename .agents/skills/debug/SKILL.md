---
name: debug
description: Use when the player types /debug in a Chronicle Engine session to toggle the mechanical breakdown (rolls, modifiers, band boundaries) shown alongside narration. Off by default.
---

# /debug — Toggle Mechanics Detail

Thin dispatcher only — this skill exists so the harness recognizes `/debug` as a registered command; it does not reimplement the procedure.

Toggle the testing/debug mechanical breakdown (difficulty, modifiers, band boundaries) per `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section **"Information Boundary (debug mode)"**. Off by default; report the new state after toggling. This governs display only — it never changes what rolls, math, or canon actually are (numbers already live OOC per the `resolve` skill regardless of this toggle).
