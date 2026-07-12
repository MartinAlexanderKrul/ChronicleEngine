# Chronicle Engine

## Prototype Alpha — Engine Issue Log

**Status:** Active
**Layer:** Design Retrospective / Validation (400–499) — non-canonical
**See:** `420_PROTOTYPE_PLAN.md`

---

# Purpose

A running log of concrete engine problems encountered while playing Prototype Alpha. An issue is anything that made the engine hard to execute faithfully: a missing abstraction, a contradiction between Rules, Runtime, and Data Model, an impractical repository step, unmanageable runtime context, or an inability to preserve continuity with existing mechanics.

Each issue is triaged as a **refinement** (a fix within the current architecture) or a **gap** (a missing foundational abstraction). This classification feeds the Engine Postmortem and the failure-criteria assessment in the plan.

---

# Issue Format

| ID | Session | Area (Rules/Runtime/Data Model/Workflow) | Description | Class (refinement/gap) | Status |
|----|---------|------------------------------------------|-------------|------------------------|--------|

---

# Issues

| ID | Session | Area (Rules/Runtime/Data Model/Workflow) | Description | Class (refinement/gap) | Status |
|----|---------|------------------------------------------|-------------|------------------------|--------|
| PA-I001 | Rejected Simulation 001 | Runtime Profile | First-session narration was generated without anchoring to canonical campaign state. It replaced Ilse's equipment and introduction, changed the timeline and opening conflict, and introduced unsupported artifacts. The Promotion Barrier correctly prevented mutation. | refinement | Profile corrected; verify on Session 1 restart |
| PA-I002 | Session 1 (pre-051 test) | Runtime Profile | On a "save progress" request the Runtime produced a full canonical summary but refused to write, asserting from its connector tool list that "there is no file creation or file update function" — a positive-absence claim, not abstract uncertainty. It never attempted the canary or a write. The existing anti-refusal language targeted uncertainty, not a tool-list inventory, and did not gate the refusal on an attempt at the save moment. | refinement | Profile 1.10: tool-list inspection ruled out as a capability test, write-operation aliases enumerated, save-request-triggers-attempt gate added; verify on Session 1 restart |
| PA-I003 | Session 1 (pre-051 test) | Runtime Profile | When a write finally landed, only `130_NPCS_AND_FACTIONS.md` was updated (Corvane met). Current State, chronicle, changelog, and the save manifest were never written and no checkpoint was created, yet the run was treated as a completed save. Nothing required target-set completeness or read-back across all promotion targets. | refinement | Profile 1.10: Save Algorithm now enumerates the full target set, forbids partial-checkpoint-as-saved, requires read-back per target, and completes the set when writes succeed; verify on Session 1 restart |
| PA-I004 | Session 1 (alpha_03 test) | Runtime Profile / Rules 4 | On a declared attack ("I take my blade and attack him") the Runtime narrated a deterministic outcome (blade cuts the clerk's forearm) without entering Action Resolution or rolling d100 (Rules 4.1). It admitted it "had not loaded the campaign's combat/action-resolution rules" — a working-set gap — and improvised rather than loading them. The profile stressed honoring the die post-roll but had no bright line requiring the roll before narrating a contested outcome, and the boot list never loaded Rules 4/6. | refinement | Profile 1.11: added Action Resolution and the Die (roll-before-narrate bright line, resolution rules loaded before play / conflict rules on conflict start, combat one-exchange cadence); boot step loads Rules 4; combat bullet and stop-conditions updated; verify on Session 1 restart |
| PA-I005 | Session 1 (alpha_03 test) | Runtime Profile | A substrate content-policy refusal (explicit scene) was handled by fabricating the player character's intent, movement, and feelings as a substitute ("the impulse surprises even you… you step closer than intended"). This authored intent inside the Player Intent Domain (`012` Invariant 1) and cascaded: the player escalated to violence in reaction to a PC impulse and NPC rejection the Runtime had invented. | refinement | Profile 1.11: added Content and Refusal Boundaries — a refusal is bounded to the content, must not author PC intent/action/emotion, holds the character in place and yields; mature-content ceiling framed as a substrate property; verify on Session 1 restart |
| PA-I006 | Session 1 (alpha_04 test) | Runtime Profile | With the d100 gate now working (visible rolls, one exchange per reply, correct refusal of chained attacks), the "one exchange per reply; do not summon crowds, guards, or consequences" clause overcorrected: a clerk was stabbed to death in a crowded Athenaeum hall with zero world reaction — no cry, witness, or blood — contradicting the Beat Budget (involuntary reactions are unlimited) and Law II Causality. | refinement | Profile 1.12 / Guide 1.7: rewrote the one-exchange rule to allow unlimited immediate in-exchange reactions while barring only simulation advance (new exchanges, new arrivals, time skips, downstream consequences), and added the rider that deferred consequences must arrive in following beats; verify on next test |
| PA-I008 | Session 1 (Claude/Haiku export) | Runtime Profile | A Rejected Simulation over-fired: chaotic player-authored violence was rejected partly because "Ilse's character (cautious, principled) is incompatible with violent breakdown" and "no established trigger for psychological break" — conflating *out of character* with *contradicts canon*. Personality is disposition, not prescription (Pre-Authored Protagonist; Decision 016), and player intent is the player's to give (Law III). Only the non-canonical dagger was a true contradiction. Separately, the verbose roll breakdown was shown in normal play rather than reserved for testing. | refinement | Profile 1.14 / Guide 1.9: added "Out of Character Is Not a Contradiction" — divergence from disposition is grounded play answered by consequence, never refused; only contradictions of established fact (item not in inventory, etc.) are blocked, quarantining the specific fact; roll presentation split into a minimal play tag (optional short reason) and a testing-only breakdown; verify next session |
| PA-I007 | Session 1 (alpha_04 test) | Runtime Profile | Engine mechanics leaked into player-facing narration: "a roll of 93 falls into the engine's high-success band", "applying the combat rules", "this combat exchange ends here. I do not resolve any additional actions", "under the engine's combat procedure, each exchange is resolved separately" — refereeing out loud, violating the Information Boundary. Rolls were also mapped raw-to-band with no difficulty/modifier assessment, so a defenceless target was treated as a normal opposed exchange. | refinement | Profile 1.12 / Guide 1.7: the visible roll is now a compact D&D-style tag and the sole permitted mechanical text (no procedure/compliance narration); difficulty/modifiers must weigh the character's skills, abilities, and magic, with defenceless targets near-automatic; verify on next test |
