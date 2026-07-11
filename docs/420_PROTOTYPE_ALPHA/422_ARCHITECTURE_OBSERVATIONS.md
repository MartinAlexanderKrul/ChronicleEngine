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
