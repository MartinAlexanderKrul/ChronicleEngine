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
