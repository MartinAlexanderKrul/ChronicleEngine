# Chronicle Engine

## Prototype Alpha — Session Reports

**Status:** Active
**Layer:** Design Retrospective / Validation (400–499) — non-canonical
**See:** `420_PROTOTYPE_PLAN.md`

---

# Purpose

A chronological record of each Prototype Alpha session: what was played, what canon it produced, which engine mechanics it exercised, and what friction it surfaced. Session reports are the primary evidence base for the Engine Postmortem.

Each report follows the template below. Canon produced during a session is promoted into the campaign ledgers at session close (Runtime Sections 2.2, 5); the report records that promotion happened, it does not replace the ledgers.

---

# Session Report Template

```text
## Session NN — <title>

Date played (real):
In-world span:

Summary:
- what happened

Mechanics exercised:
- e.g. Knowledge State divergence, Canon Promotion, Save/Restore, Context Loading

Canon produced / promoted:
- entities, records, events, relationships created or changed (by identifier)

Issues logged:
- references into 421_ENGINE_ISSUE_LOG.md

Observations:
- references into 422_ARCHITECTURE_OBSERVATIONS.md

Next session hook:
- where play resumes
```

---

# Reports

## Rejected Simulation 001 - Ungrounded Opening

Date attempted (real): 2026-07-12
Canonical in-world span: none
Classification: Rejected Simulation; non-canonical validation evidence

Summary:
- The Runtime opened a scene without grounding narration in the initialized Prototype Alpha campaign.
- The scene changed Ilse's equipment, replaced her letter of introduction, altered the timeline and opening conflict, and introduced unsupported artifacts.
- At the Promotion Barrier, the Runtime detected the divergence and refused to write it into canonical ledgers.

Mechanics exercised:
- Canon consistency checking
- Promotion Barrier
- No-silent-mutation protection
- First-session context loading and opening narration

Canon produced / promoted:
- None.
- Repository status remained unchanged.

Issues logged:
- PA-I001 - first-session narration lacked an internal Opening Anchor Validation.

Observations:
- The Promotion Barrier successfully protected canonical state.
- Divergent play is retained as a Rejected Simulation rather than treated as a canonical session or merely discarded.

Next canonical session:
- Restart Session 1 through the player briefing and readiness gate.
- Internally validate time, location, inventory, relationships, objectives, and immediate pressure before immersive narration.
- Do not invent additional setup.
