# Chronicle Engine

## Prototype Alpha - Architecture Observations

**Status:** Active
**Layer:** Design Retrospective / Validation (400-499) - non-canonical
**See:** `420_PROTOTYPE_PLAN.md`

---

# Purpose

Broader design observations from playing Prototype Alpha that are not discrete issues: which abstractions felt natural, which created friction, which rules were clarifying, which workflows helped or hindered, and where the engine behaved better or worse than expected.

These are narrative observations. Discrete, actionable problems belong in the Engine Issue Log (421); concrete proposed changes belong in the Engine Improvement Backlog (423). This document is the reflective record that informs the Engine Postmortem.

---

# Observations

## Knowledge-State Typing Is Currently Informal

**Source:** Verra world and Prototype Alpha campaign generation

Knowledge States are currently modelled as relationships using `type: knowledge-state`. This works with the existing engine and campaign initialization, but it sits outside the relationship examples currently named in the template vocabulary, such as membership, governance, diplomacy, personal, and rivalry.

This is recorded here as an observation rather than an engine change request. Prototype Alpha should test whether this remains a harmless naming convenience in play, or whether it creates practical ambiguity when authoring, validating, or reasoning about relationship records. No model change should be made before play evidence exists.

## Promotion Barrier Correctly Rejected Divergent Play

**Source:** Rejected Simulation 001

The attempted first scene diverged from the canonical campaign before play was grounded: it changed equipment, chronology, motivation, and conflict, and introduced unsupported artifacts. At promotion, the Runtime detected the contradictions and left the repository unchanged.

This is positive evidence for the existing canon and promotion architecture. The defect was not missing campaign state or failed promotion; it was an execution-level opening procedure that allowed narration before a final anchor check. The corrective action belongs in the Gameplay Runtime Profile. No Engine Rules, Data Model, Runtime architecture, world canon, or campaign canon change is indicated.
