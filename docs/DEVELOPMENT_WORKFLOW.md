# Chronicle Engine

# Development Workflow

**Document Version:** 1.3
**Status:** Active Development Workflow

---

# Purpose

This document defines the standard workflow for Chronicle Engine development sessions.

It exists to give the repository a stable, canonical workflow reference for contributors and AI collaborators.

For the session-oriented opening and closing format used by AI collaborators, see:

`docs/AI_SESSION_TEMPLATE.md`

---

# Version Evolution & Validation Lifecycle

Chronicle Engine develops one engine version at a time, and every version follows the same lifecycle. This section is the operational implementation of the governance policy defined in `engine/001_ENGINE_DECISIONS.md` Decision 048 (Version Evolution and Validation Lifecycle). Decision 048 establishes that these stages and gates are mandatory; this document defines how they are carried out.

The lifecycle stages are:

1. **Planning** — identify the version's goal and the capabilities it must deliver, scoped against the roadmap.
2. **ADR Design** — draft the architectural decisions required to deliver those capabilities.
3. **ADR Approval (Architecture Freeze)** — accept the decisions. At this point the version's architectural basis is frozen: later work within the version is implementation and refinement, not new foundational architecture.
4. **Implementation** — write the Rules, Data Model, Runtime, and template changes the accepted decisions require.
5. **Consistency Audit** — reconcile terminology and cross-document references so the Manifest, Rules, Decisions, Data Model, Runtime, Glossary, Roadmap, and Changelog agree.
6. **Capability Validation** — validate the version's capabilities against accepted non-canonical fixtures, confirming the abstractions resolve the required cases without shortcuts.
7. **Prototype Campaign** — play a deliberately small campaign that exercises the version's mechanics, validating the engine through use rather than architecture.
8. **Engine Postmortem** — capture gameplay findings: which abstractions were natural, which created friction, and which changes are refinements versus genuine architectural gaps.
9. **Next Version Planning** — begins only after the postmortem is complete and its required refinements are incorporated.

A version is not considered complete until its Capability Validation, Prototype Campaign, and Engine Postmortem are finished and the required refinements have been incorporated.

Each stage that accepts a decision, modifies a Rules section, or corrects the Manifest records a Changelog entry per Decision 040.

The per-session workflow below operates within these stages: any given development session implements one or more steps of the current stage.

## Change Classification

Every change is either **foundational** or a **refinement**, and the class is decided structurally rather than argued. This is the operational implementation of Decision 069, which completes Decision 048's Architecture Freeze by giving it an external test.

A change is **foundational** if its diff:

- adds, removes, or renumbers a section of `010_ENGINE_RULES.md`; or
- changes `011_ENGINE_DATA_MODEL.md` in any way; or
- introduces an engine-general mechanism that a world or campaign may invoke or must satisfy.

Every other change is a **refinement**, including one that writes new normative text into `012_ENGINE_RUNTIME.md` in order to site, enforce, or make explicit an obligation the engine already carries. The freeze protects the architectural basis, not the execution layer against the playtest findings the lifecycle mandates.

The test reads the diff, not the motivation. A change is foundational even when it is small, obvious, correct, and urgently wanted.

Consequences:

- **Foundational changes belong to a version's Planning and ADR Design stage.** They may not land against a released version.
- **Refinements may land against a released version**, and must name the roadmap milestone that owns them.
- **A change scoped entirely to one world or campaign is world authoring.** It is recorded in `030_ENGINE_CHANGELOG.md` and the world's own documents, and does not consume an engine decision number (Decisions 062 and 069).

Enforcement is mechanical and lives at the roadmap: `tools/test_decision_roadmap_sync.ps1` fails when an accepted decision is claimed by no milestone. It enforces ownership, not class — its purpose is to make an unclassified decision impossible to leave unnoticed.

## A Decision That Introduces Settled State Names Its Writer

**When a change introduces state the Runtime must later settle, read, or audit, it must also name the moment that state is *created* and the enforcement point for that creation — or record explicitly that none exists.**

This is the Version 0.3 postmortem's Finding 3, and it is a rule because the same shape produced three separate defects inside one version:

- **F-001 / `OBJ-23`.** A Runtime-authored NPC-behavior trigger with a due window, carried in prose. Nothing dispatched against it, and it failed within one in-fiction day.
- **F-003, closed channels.** The resident layer required a player's ruling to be recorded; two fetched skills told the Runtime to hold it in conversation until `/save`. Only the resident leg was gated, so the conflict passed every check while the same fact leaked twice and three times after correction.
- **Decision 082, pending commitments.** Runtime Section 2.4 specifies settlement in full and opens at *"when elapsed time reaches a commitment's due time"* — presupposing a record something had to write. Across two decisions and a declared trigger delta, the construct reached the version's close with **zero live instances**.

The pattern is not carelessness. Each of those fixes sited the read or settle side, where the obligation is legible and easy to state, and left the write side to instruction, where it is neither. A settler with no writer is indistinguishable at rest from a mechanism that is simply quiet, which is why all three survived review.

So a decision introducing such state answers three questions in its own text:

1. **What creates it**, and at which moment in a turn or barrier.
2. **What enforces that creation** — a mechanical barrier, a resident obligation, or nothing.
3. **What the absence looks like** if creation never happens, and whether that absence is detectable.

Answering (3) with *"not detectable"* is a permitted and often correct answer — absence of a record is frequently the thing that cannot be checked for. Recording it is what stops a settler-only mechanism from being mistaken for a complete one.

**This is not mechanically gated.** No checker can decide whether a given decision introduces settled state, and pretending otherwise would repeat the error the rule exists to name. It is a review obligation, enforced by the architecture review in Phase 3 and by the decision's own text surviving a reader who was not in the conversation.

---

# Standard Development Workflow

Every significant session should follow this sequence:

1. Review the repository.
2. Review the roadmap.
3. Perform an architecture review.
4. Discuss design.
5. Implement approved changes.
6. Review affected documents for consistency.
7. Commit changes.

---

# Session Start Required Reading

Before any architecture recommendation, implementation, or document edit, read these files first in this exact order:

1. `README.md`
2. `docs/INDEX.md`
3. `docs/PROJECT_CONTEXT.md`
4. `docs/AI_SESSION_TEMPLATE.md`
5. `engine/000_ENGINE_MANIFEST.md`
6. `engine/001_ENGINE_DECISIONS.md`
7. `engine/002_ENGINE_ROADMAP.md`
8. `engine/010_ENGINE_RULES.md`
9. `engine/011_ENGINE_DATA_MODEL.md`
10. `engine/012_ENGINE_RUNTIME.md`
11. `engine/020_ENGINE_GLOSSARY.md`
12. `engine/030_ENGINE_CHANGELOG.md`
13. `templates/000_TEMPLATE_CONVENTIONS.md`

If a new session begins without this review, stop and complete the reading pass before proposing changes.

---

# Repository Review

Start with:

- `README.md`
- `docs/INDEX.md`
- `docs/PROJECT_CONTEXT.md`
- `docs/AI_SESSION_TEMPLATE.md`
- `engine/000_ENGINE_MANIFEST.md`
- `engine/001_ENGINE_DECISIONS.md`
- `engine/002_ENGINE_ROADMAP.md`
- `engine/010_ENGINE_RULES.md`
- `engine/011_ENGINE_DATA_MODEL.md`
- `engine/012_ENGINE_RUNTIME.md`
- `engine/020_ENGINE_GLOSSARY.md`
- `engine/030_ENGINE_CHANGELOG.md`
- `templates/000_TEMPLATE_CONVENTIONS.md`

Review additional world, campaign, historical, or case-study documents when the current task depends on them.

---

# Roadmap Review

Determine:

- current engine version,
- current milestone,
- current sprint,
- current task.

Identify the highest-priority unfinished work before implementation begins.

---

# Architecture Review

Before writing or changing architecture, answer:

- Does this already exist?
- Which document owns this concept?
- Does this duplicate another definition?
- Does it belong in Engine, World, Campaign, Historical, or Project documentation?
- Does it require an Architectural Decision?
- Does it change previous assumptions?

If architectural issues are discovered, discuss them before implementation.

---

# Implementation

Implement only approved work.

While implementing:

- reuse existing abstractions,
- avoid duplication,
- maintain terminology consistency,
- preserve backward compatibility whenever practical.

Do not silently redesign accepted architecture.

---

# Cross-Document Review

After implementation, verify consistency across:

- Manifest
- Decisions
- Roadmap
- Rules
- Glossary
- supporting documentation

Update affected references when filenames, paths, or authority relationships change.

---

# Session Reporting

At the beginning of a significant session, provide:

```text
Development Status

Engine Version:
Current Milestone:
Current Sprint:
Current Task:

Repository Health:
Dependencies:
Potential Risks:

Recommended Next Action:
```

At the end of the session, provide:

```text
Session Summary

Completed:
Files Updated:
Architecture Changes:
ADR Changes:
Roadmap Progress:
Next Recommended Task:
```
