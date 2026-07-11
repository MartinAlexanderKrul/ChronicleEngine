# Chronicle Engine

## Version 0.2 Capability Validation — Overview

**Status:** In Progress (roadmap milestone 0.2.5)
**Development Target:** Version 0.2.0 — Knowledge & Civilization
**Layer:** Design Retrospective / Validation (400–499)
**Canonicity:** Non-canonical validation artifacts

---

# Purpose

This suite validates the Version 0.2 Knowledge & Civilization model — the Knowledge Subject / Knowledge State distinction (Decision 046) and knowledge custody, continuity, and rediscovery (Decision 047), as implemented in `engine/010_ENGINE_RULES.md` Section 8 — against the seven acceptance fixtures defined in `engine/002_ENGINE_ROADMAP.md` (milestone 0.2.5).

A fixture passes when the existing engine can resolve it **without introducing a new foundational abstraction and without a prohibited shortcut**. The goal is to prove that Section 8, the Data Model, the Runtime, Institutions (Section 9), and Historical Persistence (Section 12) are sufficient — or to surface a gap requiring rule refinement before Version 0.2.0 can be declared complete.

These files are validation artifacts, not canonical world content, and must never become substitute system definitions (`engine/002_ENGINE_ROADMAP.md`, 0.2.5 exclusions; Decision 032).

---

# Non-Canonical Status

Under the Canonical Record Architecture (Decision 032; Rules Section 2.8), these documents are Design Retrospective artifacts. They establish no world, campaign, or historical canon and allocate no persistent-object identifiers.

**Identifier convention.** Every identifier in this suite is prefixed `…-F<n>-…` (fixture number). This deliberately violates the canonical semantic-free monotonic scheme (`ENT-000173`) defined in `engine/011_ENGINE_DATA_MODEL.md` Section 1, so a fixture identifier can never be confused with a registry-allocated one, consistent with the placeholder-rejection principle in `011` Section 12.3. Fixtures are **not** registered in `system/ID_REGISTRY.md`.

---

# Fixture Format

Each fixture states:

1. **Capability under test** — the Version 0.2 capability and roadmap acceptance fixture it exercises.
2. **Starting state** — the situation before resolution.
3. **Relevant entities and records** — illustrative persistent objects and Knowledge States.
4. **Required engine capability** — what the engine must be able to represent.
5. **Prohibited shortcuts** — resolutions that would count as failure.
6. **Expected durable outcome** — what must be true in the ledgers afterward.
7. **Resolution** — the walkthrough mapping the outcome to existing mechanics, citing the owning rule.
8. **Verdict** — pass/gap, and the mechanics that carried it.

---

# Fixture Index

| # | Fixture | Primary capability | Acceptance fixture |
|---|---------|--------------------|--------------------|
| 411 | University validates a finding while religious authorities restrict it | 0.2.1, 0.2.2 | 1 |
| 412 | Guild monopolizes a practical technique without publishing its theory | 0.2.2 | 2 |
| 413 | Dangerous manuscript is archived, suppressed, then rediscovered | 0.2.4 | 3 |
| 414 | Two regions inherit diverged versions through transmission drift | 0.2.3 | 4 |
| 415 | Civilization benefits from cultural memory of a lost practice | 0.2.4 | 5 |
| 416 | Discovery spreads through institutions and records, not instant canon | 0.2.3 | 6 |
| 417 | Technique disappears through passive extinction | 0.2.4 | 7 |

---

# Global Prohibited Shortcuts

No fixture may be resolved using any of the following (`engine/002_ENGINE_ROADMAP.md`, 0.2.5 completion criteria):

- a technology tree or research-point currency,
- a binary known/unknown knowledge flag,
- an instant or global "unlock" of a discovery,
- a mandatory local-to-world diffusion ladder,
- a population, economy/logistics, governance, or world-specific magic subsystem,
- a dedicated archive, bureaucracy, or archaeology subsystem.

---

# Verdict Summary

| # | Verdict | Carried by |
|---|---------|-----------|
| 411 | Pass | §8.2, §8.7, §8.8, §8.9; Relationships (`011` §10) |
| 412 | Pass | §8.2, §8.8, §8.10; Section 9; Decision 022 |
| 413 | Pass | §8.9, §8.12; §7.8/§7.10; Section 12; identity-continuity graph (`011` §5–6) |
| 414 | Pass | §8.10, §8.2; Events/Relationships (`011`) |
| 415 | Pass | §8.12, §8.2; Myth & Belief (§2.2) |
| 416 | Pass | §8.10, §8.2; Runtime Invariants 2–3; event-driven time (§3) |
| 417 | Pass | §8.12, §8.2, §8.1(9); §5.10; identity continuity (`011` §6) |

All seven fixtures resolve without a prohibited shortcut and without a new foundational abstraction.

---

# Relationship to the Roadmap and Decision 048

Authoring these fixtures and their resolutions is the Capability Validation stage of the development lifecycle (Decision 048). The walkthroughs are the author's validation assertions. Milestone 0.2.5 remains open — and Version 0.2.0 remains an unstamped development target — until these fixtures are reviewed and accepted, after which the engine proceeds to Prototype Alpha — Engine Validation Campaign.
