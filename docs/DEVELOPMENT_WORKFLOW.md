# Chronicle Engine

# Development Workflow

**Document Version:** 1.1
**Status:** Active Development Workflow

---

# Purpose

This document defines the standard workflow for Chronicle Engine development sessions.

It exists to give the repository a stable, canonical workflow reference for contributors and AI collaborators.

For the session-oriented opening and closing format used by AI collaborators, see:

`docs/AI_SESSION_TEMPLATE.md`

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
