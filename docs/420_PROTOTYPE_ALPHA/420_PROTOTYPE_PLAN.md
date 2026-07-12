# Chronicle Engine

## Prototype Alpha — Engine Validation Campaign — Plan

**Status:** Active (roadmap milestone: Prototype Alpha)
**Development Target:** Version 0.2.0 — Knowledge & Civilization
**Layer:** Design Retrospective / Validation (400–499)
**Canonicity:** This plan and the Prototype Alpha tracking artifacts (421–424) are non-canonical validation records. The prototype **world** and **campaign** they describe are canonical content in their own layers.

---

# Purpose

Prototype Alpha validates the engine through play rather than architecture (Decision 048; `engine/002_ENGINE_ROADMAP.md`). It proves — or refutes — that the existing engine can sustain a coherent campaign that exercises the Version 0.2 knowledge model without introducing a new foundational abstraction. It is a required gate before Version 0.2 can be marked complete and the Engine Version can advance to 0.2.0.

This is a Prototype **Campaign**, the seventh stage of the development lifecycle, following the accepted Capability Validation (`docs/410_CAPABILITY_VALIDATION/`).

---

# Canon Boundary

| Artifact | Location | Canonicity |
|----------|----------|-----------|
| Prototype world (World Bible, institutions, knowledge subjects) | `worlds/verra/` | Canonical (world layer) |
| Prototype campaign (character sheet, ledgers, saves) | `campaigns/prototype_alpha/` | Canonical (campaign layer) |
| This plan, issue log, observations, backlog, session reports | `docs/420_PROTOTYPE_ALPHA/` | Non-canonical (validation records) |

The prototype world and campaign use the real templates, allocate real identifiers from `system/ID_REGISTRY.md`, and are subject to the same canon, promotion, and save mechanics as any world — that is the point. The validation records observe the exercise; they establish no world or campaign canon.

---

# Scope

Deliberately small, optimized for engineering validation rather than storytelling (`engine/002_ENGINE_ROADMAP.md`, Prototype Alpha scope):

- one region,
- one small city,
- one university, one religious institution, one guild,
- ~12–15 important NPCs,
- 3 Knowledge Subjects,
- ~5–10 gameplay sessions,
- ~10–20 in-world years of potential span.

---

# World Design — Verra

A small river-valley setting built to put the three institution types the Version 0.2 model most needs — a **validator**, a **restrictor**, and a **monopolist** — in one place, around shared Knowledge Subjects.

**Region:** the Verran Reach (a river valley).
**City:** Halden (a river market town, small-city scale).

**Institutions:**

| Role | Institution | Function in validation |
|------|-------------|------------------------|
| Validator | the Halden Athenaeum (college of natural philosophy) | Validates findings under its own evidentiary standard |
| Restrictor | the Order of the Ember (an established temple-order) | Holds doctrine; may restrict/condemn findings |
| Monopolist | the Halden Glaziers' Guild | Holds a practical technique in secret; claims monopoly |

**Knowledge Subjects (seeded from the accepted fixtures):**

| Subject | Fixture(s) | Seed situation |
|---------|-----------|----------------|
| The Halden tempering method (durable glass) | 412 | Guild applies and monopolizes it; theory unpublished |
| Marsh-fever waterborne transmission | 411 | Athenaeum validates it; the Order condemns it as heresy |
| The rivermason's mortar (a durable hydraulic mortar) | 415, 417 | Passively going extinct; a degraded festival custom preserves fragments; one aging mason remains |

**NPC roster (~14):**

- *Athenaeum:* Rector Maelis; Fellow Corvane (fever researcher / mentor); Fellow Ostrey (senior skeptic); Student Bree.
- *Order of the Ember:* Prelate Solenne; Inquisitor Vachen (zealous); Cleric Anwe (sympathetic junior).
- *Glaziers' Guild:* Guildmaster Torv; Master glazier Della; Apprentice Nim (disgruntled — a possible leak of the monopoly).
- *Town:* Physician Honce; Printer-scribe Alder (records and transmission); Old mason Berrec (half-remembers the mortar); Merchant Sable.

**Protagonist:** a newly-licensed physician-scholar arriving at the Athenaeum to study the marsh-fever. This vantage naturally touches all three institutions (research at the Athenaeum, doctrinal friction with the Order, dependence on the guild's glass for instruments) and all three Knowledge Subjects.

---

# Identifier Plan

The prototype world and campaign are canonical, so every persistent object allocates a real identifier from `system/ID_REGISTRY.md` (currently all `none`), advancing the high-water marks atomically with object creation (`011` Section 1.4). Approximate first allocations:

- `ENT-` — region + city (2), institutions (3), NPCs (~14), protagonist (1), Knowledge Subjects (3), key resources such as the fever treatise, sample panes, and mortar fragments (~4): ~27 entities.
- `REC-` — one Canonical Record per entity, plus the ledger records.
- `REL-` — Knowledge States (holder ↔ subject), governance, membership, and custody relationships.
- `EVT-` — seed events: institution foundings, the Athenaeum's validation, the Order's condemnation, the guild's monopoly grant, the mason's line thinning.

Exact identifiers are minted when each ledger is written, in the same change that advances the registry.

---

# Validation Goals

Each targeted engine capability is exercised by a concrete element of the prototype:

| Capability | Exercised by |
|-----------|--------------|
| Runtime | Playing sessions through the Interpreter against the repository |
| Persistent Objects | The world's entities, records, events, and relationships as real `ENT-`/`REC-`/`EVT-`/`REL-` objects |
| Canonical Records | Single-Canonical-Record ownership of each entity's state |
| Knowledge Subjects | The three seeded subjects persisting across the campaign |
| Knowledge States | Divergent holder states (Athenaeum vs. Order; guild vs. public; mason vs. custom) |
| Institutions | The three institutions' lifecycles, doctrine, custody, and assets |
| Historical Persistence | The fever treatise, guild records, and mortar fragments as in-world evidence |
| Save / Restore | Checkpoints of the campaign ledgers and restoration between sessions |
| Canon Promotion | Promoting in-session rulings and events into durable ledgers at each barrier |
| Context Loading | Loading only the scope-responsible ledgers per session |
| Repository workflow | Whether authoring and updating ledgers by hand remains practical in play |

---

# Method

- Sessions are played through the Runtime in Interpreter mode; each session advances the campaign and is captured in a session report (424).
- Canon Promotion runs at each session close and at any checkpoint (Runtime Sections 2.2, 5).
- Any friction — a missing abstraction, a contradiction between Rules/Runtime/Data Model, an impractical workflow, or unmanageable context — is recorded immediately in the Engine Issue Log (421).
- Broader design observations go to Architecture Observations (422); concrete proposed changes go to the Engine Improvement Backlog (423), each classified as a refinement or a genuine architectural gap.

---

# Deliverables

- Prototype world — `worlds/verra/`
- Prototype campaign — `campaigns/prototype_alpha/`
- Session reports — `docs/420_PROTOTYPE_ALPHA/424_SESSION_REPORTS.md`
- Engine issue log — `docs/420_PROTOTYPE_ALPHA/421_ENGINE_ISSUE_LOG.md`
- Architecture observations — `docs/420_PROTOTYPE_ALPHA/422_ARCHITECTURE_OBSERVATIONS.md`
- Engine improvement backlog — `docs/420_PROTOTYPE_ALPHA/423_ENGINE_IMPROVEMENT_BACKLOG.md`

---

# Success Criteria

Prototype Alpha succeeds if:

- a complete campaign can be played,
- no new foundational abstractions are required,
- existing abstractions feel natural during play,
- repository workflow remains practical,
- discovered improvements are primarily refinements rather than architectural redesigns.

# Failure Criteria

Prototype Alpha fails if gameplay repeatedly exposes:

- missing foundational abstractions,
- contradictions between Rules, Runtime, and Data Model,
- impractical repository workflows,
- runtime context becoming unmanageable,
- inability to preserve historical continuity using existing mechanics.

---

# Build Sequence

- [x] Prototype Alpha plan and tracking artifacts (this document; 421–424)
- [x] Prototype world — World Bible, three institution ledgers, three Knowledge Subjects, NPC roster (`worlds/verra/`)
- [x] Prototype campaign — character sheet and starting ledgers (`campaigns/prototype_alpha/`)
- [x] Gameplay Runtime Profile and first-game player onboarding (Decision 049)
- [ ] Engine Readiness Review
- [ ] Session 1 and first session report
- [ ] Continue sessions; log issues; produce the input to the Engine Postmortem
