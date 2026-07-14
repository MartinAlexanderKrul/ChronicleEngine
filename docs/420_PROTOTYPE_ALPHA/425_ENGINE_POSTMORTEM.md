# Chronicle Engine

## Version 0.2 Engine Postmortem

**Status:** Complete
**Date:** 2026-07-14
**Evidence:** `420_PROTOTYPE_PLAN.md`, `421_ENGINE_ISSUE_LOG.md`, `422_ARCHITECTURE_OBSERVATIONS.md`, `423_ENGINE_IMPROVEMENT_BACKLOG.md`, `424_SESSION_REPORTS.md`

---

# Conclusion

Prototype Alpha succeeded. Chronicle Engine sustained a complete campaign, preserved holder-specific knowledge independently from objective truth, carried consequences through protagonist death, and promoted public history into a later campaign without requiring a new foundational abstraction.

The failures were enforcement and authoring-contract failures, not failures of the Persistent Object, Canonical Record, Knowledge Subject, Knowledge State, or world-first models. Version 0.2 therefore closes as a successful capability release with refinements.

# Validated Architecture

- Knowledge Subjects persist while holder-specific Knowledge States diverge, change, spread, and end.
- Objective Reality, evidence, institutional validation, public belief, and character acceptance remain distinct in play.
- Existing Entity, Relationship, Event, and Record abstractions carry the Version 0.2 capability without a technology tree or research currency.
- Campaign-to-world historical promotion works through existing Historical Persistence and Canonical Record rules.
- Player agency remains intact under adversarial and self-defeating choices; the world responds through consequence rather than refusal.

# Required Refinements Incorporated

| Finding | Disposition |
|---------|-------------|
| PA-005 — resident invariant enforcement | Implemented by Decision 055 and Runtime enforcement points. |
| PA-006 — intent vs uncertain world-facts | Implemented by Decision 060 in Runtime Section 1.6 and the Gameplay Runtime Profile. |
| PA-007 — registry robustness | Implemented by Decision 054 and strengthened to reject prose-only live campaigns; regression fixture added. |
| PA-009 — campaign-to-world promotion | Implemented as the campaign-termination promotion trigger; validated by Prototype Beta inheriting the Varn history. |
| Modifier notation ambiguity exposed during subsequent conformance review | Implemented by Decision 058: one step is 20 percentile points, ordinary net capped at ±3. |

# Backlog Disposition

- **PA-001 — public/cultural holders:** deferred. Settlement and institution proxies were sufficient for Version 0.2; no play evidence justifies a new population/community entity type. Revisit with population simulation.
- **PA-002 — location granularity:** deferred. Existing Place entities and descriptive containment are sufficient; no building subsystem is justified.
- **PA-003 — institution asset indexes:** resolved by interpretation. Resource state is authoritative for ownership; institution asset lists are references/indexes, not competing ownership records.
- **PA-004 — operational records with empty subjects:** accepted. A Canonical Record may authoritatively own operational campaign state without owning another Persistent Object; `subjects: []` is intentional.
- **PA-008 — save format unification:** remains deferred to Version 0.6. It did not block Version 0.2 capability validation.

# Conformance Work

Reikon exposed a separate repository-conformance problem: intentional world behavior had no declared override mechanism, and its live campaign was prose-only while an immutable checkpoint contained malformed object blocks. Decision 059 and Rules Section 14 now define declared World Rule Profiles. Reikon 0.1 explicitly owns causal System progression and numeric vitality/damage reduction, and its live campaign has been reconstructed under Data Model 0.1.1 without altering the immutable checkpoint.

# Release Decision

All Version 0.2 lifecycle gates are complete: planning, approved ADRs, implementation, consistency audit, capability validation, Prototype Alpha, and postmortem. Required refinements are incorporated and repository validation plus validator regression tests pass. Engine Version 0.2.0 is accepted. Version 0.3 planning is unblocked; deferred items retain their recorded milestone ownership.
