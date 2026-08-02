# Chronicle Engine

# Engine Roadmap

**Engine Version:** 0.3.0 (Runtime & Persistence Hardening)
**Development Target:** Version 0.4 — Planning not yet begun
**Status:** Version 0.3 released 2026-08-01; Version 0.4 Planning is blocked on the number collision recorded below

# Current Sprint

Goal:

**Version 0.3 — Runtime & Persistence Hardening — is complete and released.** Its full lifecycle is closed under Decision 048: ADR approval and Architecture Freeze (Decisions 072–075), implementation of milestones 0.3.1–0.3.3 with 0.3.4 closed by drop, the Consistency Audit, Capability Validation, the Gatefall: Pendragon Prototype Campaign, and the Engine Postmortem.

Current Task:

**Version 0.4 Planning is unblocked on numbering and open on scope.** Decision 087 resolved the collision by reclassifying Magic Framework and Historical Simulation as world-authoring backlog: their engine layers were closed by Decisions 037 and 038 and they were holding version numbers while waiting for work already done. Resolving it surfaced a third correction — **four of Governance & Society's eight domains were also already delivered** by Decision 036 and Rules Section 10 — so Version 0.4 is now **Population & Material Society**, and smaller than its old name implied.

**All three postmortem refinements are incorporated**, which clears Decision 048's remaining precondition: the settler-without-writer rule in `docs/DEVELOPMENT_WORKFLOW.md`, the measured NPC-grounding proxy, and the generated validation-evidence block.

What remains before Planning can be approved is the scope itself — a proposal is recorded under Version 0.4 below, recommending **Economy & Opportunity** as the first capability on the grounds that Version 0.3's prototype produced the play evidence PA-001 found missing. It is a proposal and is not accepted.

Separately, three items are a play session's business and belong to campaign canon rather than the engine: backfilling Gatefall's live commitments so the settlement gate stops being vacuous (`tools/list_commitment_candidates.ps1` produces the worklist), settling F-004 into the Gatefall profile, and deciding the tracked-board floor in `test_gatefall_quest_contract.ps1`.

The Prototype Campaign continues as ordinary play. Gatefall: Pendragon is the natural Prototype Campaign for Version 0.4 when that version reaches the stage; no replacement campaign is created merely to repeat evidence.

The prototype's terminology audit also normalized the worlds' E–S classification to the single term **Rank** (E-Rank through S-Rank). This is a world-authoring/consistency refinement under 0.3.5: Gatefall Profile 1.7 migrates persisted `system_tier` to `system_rank`, Profile 1.8 additively aligns the `/system` rendering contract, and Reikon Profile 0.11 is additive because its renamed Rank identifiers are derived rather than stored.

The accepted scope replaced Governance & Society at 0.3 and moved it to Version 0.4. Its argument, its five capability milestones, and the recorded argument against it are in the Version 0.3 section below.

Next Review:

Capability Validation review. Evaluate the non-canonical fixtures and Gatefall prototype evidence against `docs/430_RUNTIME_PERSISTENCE_VALIDATION/431_CAPABILITY_MATRIX.md`. A failed case is recorded as a gap; it is not silently converted into new foundational work inside the frozen version.

Completed since the 0.2.0 release:

- Post-0.2 decision reconciliation and the change-classification gate (Decision 069). Decisions 049–069 are classified and claimed by a milestone; `tools/test_decision_roadmap_sync.ps1` keeps the record honest.

---

# Purpose

This document tracks the planned evolution of Chronicle Engine.

Unlike the Engine Rules, this document is expected to change frequently.

Unlike Engine Decisions, it records future work rather than accepted architectural choices.

A roadmap item is not considered part of the engine until it has been accepted, documented, and integrated into the Engine Rules.

---

# Development Philosophy

Chronicle Engine is developed incrementally.

Each milestone should:

- strengthen architectural consistency,
- avoid unnecessary complexity,
- preserve backward compatibility whenever practical,
- improve historical simulation rather than add isolated mechanics.

New systems should emerge from existing abstractions instead of introducing unrelated concepts.

---

# Development Lifecycle

Chronicle Engine follows a single, repeatable lifecycle for every engine version. Architecture is no longer developed indefinitely: each version advances through design, implementation, validation, playtesting, and postmortem before the next version is planned.

```text
Planning
   v
ADR Design
   v
ADR Approval  (Architecture Freeze)
   v
Implementation
   v
Consistency Audit
   v
Capability Validation
   v
Prototype Campaign
   v
Engine Postmortem
   v
Next Version Planning
```

A version is not complete until its Capability Validation, Prototype Campaign, and Engine Postmortem are finished and required refinements are incorporated.

This lifecycle is governed by `001_ENGINE_DECISIONS.md` Decision 048 (Version Evolution and Validation Lifecycle) and operationally defined in `docs/DEVELOPMENT_WORKFLOW.md`. This roadmap applies the lifecycle and shows where the current version sits within it; it does not redefine it.

---

# Current Milestone

## Version 0.2 - Knowledge & Civilization (Development Target: Engine Version 0.2.0)

Status: **Complete**

Version 0.2.0 is the first capability milestone built on the frozen Foundation. It models knowledge as a persistent historical force rather than a binary possession or global unlock. Its full lifecycle is complete, including Capability Validation, Prototype Alpha, the Engine Postmortem, and required refinements (Decision 048).

### Goal

Civilization-scale knowledge continuity without a global technology tree or universal unlock model.

### Lifecycle Position

Version 0.2 has advanced through the development lifecycle as follows:

- [x] Planning
- [x] Decision 046 — Civilizational Knowledge State and Propagation
- [x] ADR Review & Approval
- [x] Rules Implementation (Section 8 — Knowledge Subject / Knowledge State, non-linear propagation)
- [x] Terminology / Consistency Audit (Glossary knowledge terminology)
- [x] Decision 047 — Knowledge Custody, Continuity, and Rediscovery
- [x] ADR Review & Approval
- [x] Rules Implementation (Section 8 — custody, transmission, loss, passive extinction, rediscovery)
- [x] Capability Validation (0.2.5) — accepted; fixtures in `docs/410_CAPABILITY_VALIDATION/`
- [x] Prototype Alpha — Engine Validation Campaign
- [x] Engine Postmortem — `docs/420_PROTOTYPE_ALPHA/425_ENGINE_POSTMORTEM.md`
- [x] Version 0.2 Complete

The Engine Postmortem accepted the Version 0.2 architecture and incorporated the required refinements. Version 0.3 planning may now begin (Decision 048).

The five capability milestones (0.2.1–0.2.5) are specified in full under Planned Milestones → Version 0.2 below.

### Exclusions

- Population simulation
- Economy or logistics systems
- New governance subsystems
- World-specific magic rules
- Technology trees
- Research-point currencies
- Detailed institutional bureaucracy

---

# Foundation — Complete and Frozen (0.1.0–0.1.5)

The Foundation line built the reusable engine substrate: Rules, Data Model, Runtime, Persistent Objects, Canonical Records, templates, and — at 0.1.5 — the Version Evolution & Validation Lifecycle (Decision 048). The foundational architecture is now frozen. Every capability version, beginning with Version 0.2.0, builds on it without redesigning it.

The Foundation line is a closed block and owns its decisions as a block (Decision 069):

Decisions owned: 001-048

The milestones below record how the Foundation was built.

---

## Foundation Hardening

Status: **Complete**

A pre-0.2 milestone that strengthens the engine's architecture rather than adding gameplay systems. It arose from the Foundation Hardening architecture review, which found the runtime under-specified and identified missing data-model abstractions.

### Completed

- [x] Runtime Model - `012_ENGINE_RUNTIME.md`; Decision 041 (Runtime Model), Decision 042 (Durable Canon and Promotion Obligation)
  - [x] Separated *what is true* (Rules) from *how the engine operates* (Runtime)
  - [x] Defined the Runtime as substrate-independent, with the Interpreter as a component
  - [x] Resolved the repository-vs-transcript canon contradiction via the precedence/durability split and mandatory Canon Promotion
- [x] Data Model - `011_ENGINE_DATA_MODEL.md`, `system/ID_REGISTRY.md`; Decision 043 (Persistent Object and Data Model Structural Contract), Decision 044 (Stable Entity Identity)
  - [x] Persistent Object root abstraction with Entity, Record, Event, Relationship specializations
  - [x] Semantic-free identifiers with the repository-level registry and its allocation invariants
  - [x] Single-Canonical-Record invariant; Canonical State versus Historical Evidence
  - [x] Stable entity identity: aliases and the identity-continuity graph resolving the nine identity cases
  - [x] Relocated structural enumerations from Rules Section 3.10 and Section 2.8; repointed the Runtime
- [x] Ledger Templates (Phase 1) - `templates/`; Decision 045 (Ledger Template System)
  - [x] Template conventions; the fenced-YAML Object Block; the atom-and-container model
  - [x] Core Object Block templates for every specialization and entity type
  - [x] `100_CHARACTER_SHEET`, `130_NPCS_AND_FACTIONS`, `900_SAVE_MANIFEST` ledgers
  - [x] Deliberately-invalid placeholders with validation rejection (`011` Section 12.3)
  - [x] One non-canonical instantiated Character example

### Remaining

- [ ] Ledger Templates (Phase 2) - remaining campaign, world, and historical ledgers; completed as needed, may run alongside Version 0.2
- [ ] Terminology and doc-graph cleanup carried in Technical Debt (below)

---

## Version 0.1 - Engine Foundation

Status: **Complete**

### Completed

- [x] Engine Manifest
- [x] Engine Decisions (ADR)
- [x] Engine Rules
  - [x] Engine Laws
  - [x] Design Philosophy
  - [x] Canon & Knowledge
  - [x] Time & Simulation
  - [x] Action Resolution
  - [x] Living Characters
  - [x] Conflict, Combat, Injury & Death
  - [x] Resources & Ownership
  - [x] Research & Knowledge
  - [x] Canonical Record Architecture
  - [x] Persistent Entity Abstraction
  - [x] Institutions & Organizations
  - [x] Politics & Governance
  - [x] Magic Framework
  - [x] Historical Persistence
  - [x] Save State Architecture
- [x] Engine Glossary
- [x] Engine Changelog
- [x] World Bible (Asterra)

### Remaining

All Version 0.1 items complete.

---

# Planned Milestones

## Version 0.2 - Knowledge & Civilization

### Version 0.2 Vision

Version 0.2 exists to simulate a historical truth: civilizations do not advance because the world unlocks a stage, but because knowledge is discovered, preserved, misunderstood, validated, restricted, transmitted, lost, and rediscovered unevenly across people, institutions, records, and generations.

Its purpose is to make knowledge behave as a historical force whose continuity matters independently of any one holder.

### Version 0.2 Success Statement

Version 0.2 is complete when Chronicle Engine can model knowledge as a persistent historical force rather than a binary possession.

Knowledge should be able to:

- originate,
- diverge,
- be validated,
- be disputed,
- be restricted,
- be preserved,
- be forgotten,
- be rediscovered,
- and continue across generations,

without requiring a global technology tree, universal unlock system, or additional economy, governance, or world-specific simulation subsystems.

### Foundation

Version 0.2 must strengthen the existing engine rather than expand it. If a mechanic increases historical realism and can be expressed through existing Persistent Objects, Canonical Records, Relationships, Institutions, the Runtime, and the Knowledge State model, that approach is preferred over introducing a new subsystem.

Focus:

- Civilization-scale knowledge continuity
- Knowledge Subject and Knowledge State distinction
- Institutional knowledge systems
- Non-linear propagation and diffusion
- Restriction, fragmentation, and preservation
- Rediscovery and passive extinction
- Cultural memory

Goal:

Extend the foundational Research & Knowledge rules from Version 0.1 into civilization-scale historical development.

### Capability Milestones

#### 0.2.1 Knowledge State Model

Capability delivered:

- Holder-specific Knowledge States about shared Knowledge Subjects
- The normative principle: Knowledge Subjects persist. Knowledge States change.
- Qualitative state dimensions instead of binary unlocks

Dependencies:

- Decision 031
- Decision 032
- Decision 033
- `010_ENGINE_RULES.md` Section 8
- `011_ENGINE_DATA_MODEL.md`
- `012_ENGINE_RUNTIME.md`

Affected rules:

- Section 8
- Supporting cross-references in Sections 2, 7, and 12

ADR impact:

- Decision 046

Acceptance fixtures:

- University validates a finding while religious authorities restrict it
- Two regions inherit diverged versions of the same subject
- Discovery spreads through institutions and records rather than instant global canon

Explicit exclusions:

- No technology tree
- No research-point currency
- No mandatory local-to-world progression ladder

Completion criteria:

- One Knowledge Subject may have multiple divergent Knowledge States
- The rules distinguish truth, custody, validation, and holder state
- The model remains inside existing abstractions

#### 0.2.2 Institutional Knowledge Systems

Capability delivered:

- Institutional mediation of access, custody, validation, preservation, censorship, and monopoly without granting institutions ownership of objective truth

Dependencies:

- Decision 034
- Decision 035
- Decision 036
- Decision 038
- Rules Sections 8, 9, and 12

Affected rules:

- Sections 8 and 9
- Supporting cross-references in Sections 7 and 12

ADR impact:

- Decision 047

Acceptance fixtures:

- Guild monopolizes a practical technique without making its theory public
- Dangerous manuscript is archived, suppressed, then rediscovered
- University validates a finding while religious authorities restrict it

Explicit exclusions:

- No bureaucracy simulator
- No new institutional stat subsystem

Completion criteria:

- Institutions can preserve, restrict, validate, and suppress knowledge through existing mechanics
- Custody remains distinct from truth and holder understanding

#### 0.2.3 Transmission and Diffusion

Capability delivered:

- Non-linear spread of knowledge through transmission paths, distortion, delay, and selective adoption

Dependencies:

- Decision 046
- Section 8.10
- Existing institution, relationship, and canon-layer mechanics

Affected rules:

- Section 8
- Supporting cross-references in Sections 2, 9, 10, and 12

ADR impact:

- Decision 046

Acceptance fixtures:

- Two regions inherit diverged versions of the same knowledge through transmission drift
- Discovery spreads historically through institutions and records rather than instant global canon

Explicit exclusions:

- No map-wide diffusion engine
- No economy or trade subsystem added to justify spread

Completion criteria:

- Transmission is pathway-based rather than globally unlocked
- Reach remains descriptive rather than a mandatory progression stage

#### 0.2.4 Loss, Fragmentation, and Rediscovery

Capability delivered:

- Knowledge continuity through degradation, fragmentation, suppression, passive extinction, and rediscovery

Dependencies:

- Decision 038
- Rules Sections 7, 8, 9, and 12
- Existing resource, archive, and historical-persistence mechanics

Affected rules:

- Sections 8 and 12
- Supporting cross-references in Sections 7 and 9

ADR impact:

- Decision 047

Acceptance fixtures:

- Dangerous magical manuscript is archived, suppressed, then rediscovered later
- Civilization benefits from cultural memory of a lost practice without full understanding
- A technique disappears because the final knowledgeable practitioners die without transmitting it

Explicit exclusions:

- No separate archaeology subsystem
- No historical periodization work

Completion criteria:

- Loss does not require total erasure of all traces
- Rediscovery preserves continuity with the earlier Knowledge Subject
- Passive extinction is a valid historical outcome

#### 0.2.5 Capability Validation

**Status:** Complete and accepted — the seven fixtures are authored in `docs/410_CAPABILITY_VALIDATION/`, resolve without contradiction, and were accepted through the Version 0.2 postmortem.

Capability delivered:

- Formal non-canonical validation of the Version 0.2 model against the accepted capability fixtures

Dependencies:

- Decisions 046 and 047
- Revised Rules Section 8
- Frozen foundation documents

Affected rules:

- No new owning section; validates the integrated result across Sections 8, 9, and 12

ADR impact:

- No new ADRs; confirms sufficiency of Decisions 046 and 047

Acceptance fixtures:

1. A university validates a finding while religious authorities restrict it.
2. A guild monopolizes a practical technique without making its theory public.
3. A dangerous magical manuscript is archived, suppressed, then rediscovered later.
4. Two regions inherit diverged versions of the same knowledge through transmission drift.
5. A civilization benefits from cultural memory of a lost practice without fully understanding it.
6. A discovery spreads historically through institutions and records, not instant global canon.
7. A technique disappears because the final knowledgeable practitioners die without transmitting it.

Each fixture defines:

- starting state,
- relevant entities and records,
- required engine capability,
- prohibited shortcuts,
- expected durable outcome.

Explicit exclusions:

- Fixtures are validation artifacts, not canonical world content
- Fixtures must not become substitute system definitions

Completion criteria:

- All seven fixtures can be resolved without contradiction
- No fixture requires a technology tree, research currency, population model, economy/logistics subsystem, governance expansion, or world-specific magic rules

---

## Prototype Alpha — Engine Validation Campaign

Status: **Complete** — campaign closed on protagonist death; findings captured for the Engine Postmortem

Prototype Alpha is not an engine-feature milestone. It introduces no new engine systems and no new foundational abstractions. Its purpose is to validate the completed Version 0.2 implementation through the Prototype Campaign stage of the development lifecycle.

### Purpose

Prototype Alpha validates the engine through play rather than through architecture. Its objective is to prove that the existing engine can sustain a coherent campaign without introducing new foundational abstractions.

### Scope

A deliberately small prototype world, optimized for engineering validation rather than storytelling:

- one region,
- one settlement or small city,
- one university or equivalent institution,
- one religious institution,
- one guild,
- 10–20 important NPCs,
- 1–3 Knowledge Subjects,
- approximately 5–10 gameplay sessions,
- approximately 10–20 in-world years.

### Validation Goals

The campaign should exercise:

- Runtime,
- Persistent Objects,
- Canonical Records,
- Knowledge Subjects,
- Knowledge States,
- Institutions,
- Historical Persistence,
- Save / Restore,
- Canon Promotion,
- Context Loading,
- repository workflow.

### Deliverables

- Prototype world,
- Prototype campaign,
- Session reports,
- Engine issue log,
- Architecture observations,
- Engine improvement backlog.
- Gameplay Runtime Profile and first-game onboarding.

### Readiness

- [x] Canonical Verra world
- [x] Canonical Prototype Alpha campaign baseline
- [x] Development and Gameplay Runtime Profile separation (Decision 049)
- [x] First-session boot without a save manifest
- [x] Prototype Alpha startup configuration and spoiler-safe player briefing
- [x] Player Agency Contract and Interaction Cadence (Decision 050) — refinement from Prototype Alpha preparation
- [x] Persistence preflight, checkpoint persistence, and promotion reconciliation hardening — refinement from Prototype Alpha preparation
- [x] Engine Readiness Review
- [x] Session 1 and first checkpoint
- [x] Campaign close and campaign-to-world promotion

### Success Criteria

Prototype Alpha succeeds if:

- a complete campaign can be played,
- no new foundational abstractions are required,
- existing abstractions feel natural during play,
- repository workflow remains practical,
- discovered improvements are primarily refinements rather than architectural redesigns.

### Failure Criteria

Prototype Alpha fails if gameplay repeatedly exposes:

- missing foundational abstractions,
- contradictions between Rules, Runtime, and Data Model,
- impractical repository workflows,
- runtime context becoming unmanageable,
- inability to preserve historical continuity using existing mechanics.

---

## Engine Postmortem

Status: **Complete** — findings and dispositions recorded in `docs/420_PROTOTYPE_ALPHA/425_ENGINE_POSTMORTEM.md`

The Engine Postmortem is a mandatory milestone that captures the lessons of Prototype Alpha before Version 0.3 begins.

The postmortem evaluates:

- which assumptions proved correct,
- which abstractions were difficult to use,
- which rules created friction,
- which workflows need improvement,
- which changes are refinements versus genuine architectural gaps.

Its output is the set of required engine refinements that must be incorporated before Version 0.3 planning begins.

---

## Post-0.2 Decision Record

Status: **Reconciled 2026-07-14** under Decision 069

Every accepted decision must name the milestone that owns it and its class under the structural test in Decision 069. This section is that record for Decisions 049–069, and it is the first application of the gate.

It exists because the record had drifted. Between Decision 051 and Decision 068, seventeen decisions were accepted and only one — Decision 053 — reached this roadmap, inside a Technical Debt bullet. Ten landed after Version 0.2 was declared complete and outside the five dispositions named in the Engine Postmortem's own refinement table. The roadmap is the document that owns milestone state; it had stopped describing the engine.

`tools/test_decision_roadmap_sync.ps1` now fails the build when an accepted decision is claimed by no milestone.

### Version 0.2 — Prototype Alpha preparation and play

| Decision | Subject | Class |
|----------|---------|-------|
| Decision 049 | Development / Gameplay Runtime Profile separation | Refinement — applies Decision 041's existing profile abstraction |
| Decision 050 | Player Agency and Interaction Cadence | Refinement — sites the latent Law III / Section 3.2 obligation |
| Decision 051 | Progression Surfacing | Refinement — presentation layer over Decisions 012–014; no mechanic |
| Decision 052 | Modifier application and always-live critical tails | Refinement — specifies existing Rules Section 4.6 |
| Decision 053 | Campaign restart and world-line forking | Refinement — applies existing identity invariants |

### Version 0.2 — Engine Postmortem required refinements

These are the dispositions the postmortem itself mandated. Decision 048 requires them to be incorporated before the version closes, so they land within the version by design.

| Decision | Subject | Class |
|----------|---------|-------|
| Decision 054 | Repository Validation Barrier (PA-007) | Refinement — mechanical enforcement point |
| Decision 055 | Invariant enforcement points and the resident layer (PA-005) | Refinement — sites existing invariants |
| Decision 058 | Modifier step scale and effective result | Refinement — specifies existing Rules Sections 4.4 / 4.6 |
| Decision 060 | Uncertain world-fact arbitration (PA-006) | Refinement — refines Decision 050's boundary |

### Version 0.2 — Post-release refinements

Accepted after the 0.2.0 release. Each is operational: it changes how the engine is executed, presented, or recorded, and none adds a Rules section, a Data Model change, or a mechanism a world builds against.

| Decision | Subject | Class |
|----------|---------|-------|
| Decision 056 | Runtime Command Interface | Refinement — thin dispatchers over existing procedures |
| Decision 061 | Session Export as durable transcript and recovery source | Refinement — record reclassification |
| Decision 063 | Complete command discovery; chat debug export | Refinement — operational boundary |
| Decision 064 | Cold-start no-target gate and exact catalog mirror | Refinement — operational boundary |
| Decision 065 | Per-exchange state settlement; literal diagnostic export | Refinement — settlement enforcement point |
| Decision 067 | Argumentless welcome bootstrap; `/resume` | Refinement — command surface |

Decisions 056, 063, 064, and 067 address one boundary — the bootstrap command — across four decisions, each written after a live test failed the previous one. The pattern is recorded in Technical Debt below rather than reopened here.

### World authoring — no engine decision required

Scoped entirely to Reikon: campaign startup, world profile, world lore, and the world's own regression tests. Decision 062 already established that world authoring requires no ADR, and Decision 069 point 4 makes that explicit. These three predate the rule and are left in place as immutable history rather than renumbered; future world authoring is recorded in `030_ENGINE_CHANGELOG.md` and the world's documents.

| Decision | Subject | Class |
|----------|---------|-------|
| Decision 057 | World-scoped diegetic System: tracked resources, inline surfacing | World authoring (Reikon) |
| Decision 066 | Deterministic Health recovery in Reikon | World authoring (Reikon) |
| Decision 068 | Command-local conformance gate for Reikon `/system` | World authoring (Reikon) |

### Reclassified — foundational

| Decision | Subject | Class |
|----------|---------|-------|
| Decision 059 | Declared World Rule Profiles (Rules Section 14) | **Foundational** — owned by Version 0.3 |
| Decision 062 | World Rule Profile document class and placement (Rules Section 14.5) | **Foundational** — same mechanism as Decision 059 |

Decision 059 added `010_ENGINE_RULES.md` Section 14, an engine-general mechanism permitting a world to replace engine-general behavioral rules. It meets the structural test on two counts: it adds a Rules section, and it introduces a mechanism worlds invoke. It is the furthest-reaching architectural change since the Foundation line, and it landed against a released version under a refinement label, in response to one world's authoring needs. Decision 062 completes the same mechanism and carries the same class.

Both remain **Accepted**. They are not reopened, reversed, or renumbered: accepted decisions are immutable history, the repository they produced passes every gate, and Reikon is authored against them. What changes is ownership — Section 14 is now recorded as Version 0.3 architecture that arrived early, and Version 0.3 scope approval must account for it as existing architecture rather than plan around a blank space. See Version 0.3 below.

### Version 0.3 — Planning

| Decision | Subject | Class |
|----------|---------|-------|
| Decision 069 | Change Classification Gate and Post-Release Change Control | Refinement — completes Decision 048; adds no mechanism |
| Decision 070 | The resident layer is a separate document | Refinement — sites the obligation `012` Section 0.4 already imposes |
| Decision 071 | The Worlds and Campaigns Index | Refinement — mechanical enforcement point for the Decision 067 welcome listing |

### Version 0.3 — Postmortem and release

| Decision | Subject | Class |
|----------|---------|-------|
| Decision 086 | The Architecture Freeze Binds Implementation, Not Validation | Refinement — completes Decision 048 as Decision 069 did; adds no Rules section, no Data Model change, and no mechanism a world may invoke |
| Decision 087 | Milestones Whose Engine Layer Is Closed Are World-Authoring Backlog | Refinement — reclassifies planning records; adds no Rules section, no Data Model change, no mechanism |

Owned by milestone 0.3.5 and accepted at the version's close, as the disposition of the Engine Postmortem's Finding 1. It is the answer to a question the version itself raised: ten foundational changes were admitted to a frozen version by owner ruling, and the freeze had no written condition an exception must meet. Decision 086 supplies one. It does not excuse the ten — all ten already satisfy it — and it does not replace the owner ruling, which is still required.

Decision 071 is the fifth decision against the bootstrap boundary (with 056, 063, 064, 067) and the second disposition of the profile-churn technical debt below. It is recorded there rather than treated as a separate pattern.

---

## Version 0.3 — Runtime & Persistence Hardening

Status: **Complete — released 2026-08-01.** Scope approved 2026-07-19; ADRs (Decisions 072–075) accepted 2026-07-23 (Architecture Freeze, Decision 048); milestones 0.3.1–0.3.3 implemented, 0.3.4 closed by drop, Consistency Audit complete, and milestone 0.3.5 — Capability Validation and the Prototype Campaign — closed with the Engine Postmortem at `docs/430_RUNTIME_PERSISTENCE_VALIDATION/440_ENGINE_POSTMORTEM.md`.

**Release evidence.** Fifty-six consecutive conforming checkpoints across six Data Model versions (0.1.2 → 0.1.6) and forty-six Gatefall profile versions, with exact named restoration, branch, restart, registry preservation, and profile-compatibility readiness all demonstrated; every capability row in `431_CAPABILITY_MATRIX.md` passing; every design flag dispositioned. The persistence layer this version existed to harden did not fail once.

**Ten foundational findings arrived from played evidence** and were dispositioned as Decisions 076–085, advancing the Data Model to 0.1.6. **Decision 086 then scoped the Architecture Freeze** so that path is falsifiable rather than resting on unrecorded judgment: the freeze binds Implementation and the Consistency Audit, and from Capability Validation onward a foundational change is permitted only when it comes from played evidence, is classified under Decision 069, is versioned and migrated, and is revalidated. All ten already met those conditions.

**Carried to Version 0.4** (postmortem Findings 2–4): NPC grounding is the one obligation class with no mechanical proxy, and the resident card that would carry it is full at 5,978 of a 6,000-token warning; the "settler without writer" shape recurred three times and should be checked for whenever a decision introduces state the Runtime must settle; and operational metadata decays wherever no gate reads it.

Version 0.2 implementation, Prototype Alpha, the Engine Postmortem, and the required refinements are all complete, which is what unblocked this version under the development lifecycle (Decision 048).

This scope **replaces Governance & Society as Version 0.3** and moves it to Version 0.4 (now reflected in the Version 0.4 section below). That is the substance of the decision, and the reason for it is evidence rather than preference.

### Why this version

The engine's simulation model is validated. Its execution and persistence layer is not. The Engine Postmortem states it directly:

> The failures were enforcement and authoring-contract failures, not failures of the Persistent Object, Canonical Record, Knowledge Subject, Knowledge State, or world-first models.

Everything since agrees:

- Of the decisions accepted after the 0.2.0 release, roughly ten are runtime, command, profile, or export work. None is a knowledge-model correction.
- Reikon's only checkpoint was malformed and unrestorable; its live canon had to be rebuilt from a damaged snapshot, and the rebuild could only be verified because a transcript happened to exist on the owner's disk (Decision 061).
- Save-layer location/format drift has been open since Decision 053 and is parked in Version 0.6, three versions away. It has already drawn blood.
- Rules Section 14 has exactly one client, no freeze point, and save compatibility depends on its version — while the changelog itself notes it "needs a freeze point before its version can be trusted for save compatibility under Decision 059."
- One bootstrap verb consumed four decisions in a day. Decision 070 removed the structural cause; whether the command surface is over-specified is unanswered.

Building eight new simulation domains on a persistence layer that cannot reliably restore its own checkpoints inverts the engine's own priority order (`docs/AI_SESSION_TEMPLATE.md`: architectural consistency and long-term maintainability above simulation depth).

**Precedent:** Foundation Hardening was exactly this shape — a milestone between capability versions that strengthened the architecture rather than adding gameplay systems. It is how the Foundation reached a state worth freezing.

### Goal

The engine can be executed and restored reliably by any conforming Runtime, and a world can declare overrides against a frozen, versioned contract.

### Proposed Capability Milestones

#### 0.3.1 Save Layer Unification

**Status: Implemented 2026-07-23** (Decision 072 accepted and landed; regression fixture in `tools/tests/fixtures/nonconforming_checkpoint/`).

Pulls PA-008 forward from Version 0.6.

- Bless one checkpoint form and migrate existing checkpoints. Resolve the documented `saves/900_CHECKPOINT_<NNNN>/` (full ledger copies) versus flat `.saves/*.yaml` (manifest-only) versus the empty `checkpoints/` placeholder drift.
- Acceptance: every existing checkpoint restores, or is re-issued into a conforming restorable checkpoint carrying its reconstructed state — no save-point is abandoned; the Reikon Checkpoint 0001 failure class is covered by a regression fixture.
- Excludes: campaign and world migration procedures, which remain Version 0.6.
- ADR: Decision 072 — Save Layer Unification (**Accepted** 2026-07-23).

#### 0.3.2 Presence and Location Structural Representation

**Status: Implemented 2026-07-23** (Decision 073 accepted and landed; Data Model 0.1.2; presence invariants enforced by `tools/validate_repository.ps1`; migration corrected two live stale-location defects, `EVT-000057`).

Owns the cross-ledger staleness gap the Prototype Alpha checkpoint audits drew blood on twice: Checkpoint 0005 recorded the protagonist as occupying a Rift he had left, and the Checkpoint 0006 repair reproduced the same defect in the same commit because its mutation target set was judged rather than derived. Foundational under Decision 069 — it changes `011_ENGINE_DATA_MODEL.md` — and therefore could not land against released 0.2.0. Promoted from Technical Debt to a first-class milestone by owner decision (2026-07-19). Full evidence is in the Technical Debt entry "Cross-ledger staleness has no enforcement point."

- Give **presence** — where an entity is *now* — a structured representation with exactly one owning record, so it is comparable rather than prose in `180_CURRENT_STATE.md` (Rules Section 13.2). Keep `occupants` as **standing state** (controllers, residents, contained entities), per the disambiguation already made in `templates/objects/place.md`; presence and occupancy stay distinct.
- Only once presence has one structured owner can the invariant become mechanical: a character is in exactly one place, and every ledger that says otherwise is stale. Add that check to the Repository Validation Barrier (Rules Section 5.4; Decision 054).
- Weigh together with **PA-002 — Location Granularity** (`docs/420_PROTOTYPE_ALPHA/423_ENGINE_IMPROVEMENT_BACKLOG.md`); do not resolve PA-002 as a granularity question alone. Carried inventory having no "on person" representation — a Character is neither a Place nor a container — is the same gap and the exact case that broke here.
- Acceptance: the Checkpoint 0005 "protagonist in two places" state fails a mechanical gate; a possessor's carried items can be checked against the possessor's location; the Data Model change is versioned and its save-compatibility rule recorded.
- Excludes: a spatial/coordinate model, map system, or travel geometry. Presence needs one owner and one invariant, not coordinates.
- ADR: Decision 073 — Presence and Location Structural Representation (**Accepted** 2026-07-23).

#### 0.3.3 World Rule Profile Consolidation and Freeze

**Status: Implemented 2026-07-23** (Decision 074 accepted and landed; Rules 14.6; Reikon 0.10 frozen as the first conformance fixture; manifest profile field and per-world declaration enforced by `tools/test_checkpoint_contract.ps1`).

Owns the inherited architecture. Rules Section 14 arrived via Decisions 059 and 062 against a released version and is classified foundational by the Post-0.2 Decision Record above.

- Freeze the Section 14 override contract; define profile versioning, freeze status, and its save-compatibility rule.
- Reikon's current profile (0.6, presently an unfrozen `Active` draft) becomes the first frozen profile and the conformance fixture. *(The original proposal named "Reikon 0.3"; Reikon advanced to 0.6 during play, so the freeze target is its current version.)*
- Acceptance: a save records the applicable profile version as a structured field, and a mismatch — or a checkpoint captured under an unfrozen version — is surfaced explicitly on restoration rather than silently resolved (Rules Sections 14.4, 13.6).
- ADR: Decision 074 — World Rule Profile Consolidation and Freeze (**Accepted** 2026-07-23).

#### 0.3.4 Runtime Command Surface Settlement — assessed, closed by drop

Assessed at ADR Design (Decision 075) and **closed without a foundational change**, per this milestone's own instruction to drop rather than pad. The command model (Decision 056) is already minimal — thin dispatchers over existing procedures — and the six-decision bootstrap churn was a residency/listing-source fault, structurally removed by Decisions 070 and 071, not command-surface over-specification. The target "adding or changing a command requires no ADR" is already met for the dispatcher/display-toggle class, demonstrated by `/length` landing as a Decision 069 refinement.

- Deliverable: the command-change classification (Decision 075) — dispatcher/toggle changes are refinements needing no ADR; new bootstrap semantics, mutation barriers, or namespace rules are foundational.
- Verification folds into 0.3.5: the prototype must exercise the command surface without a new decision.
- ADR: Decision 075 — Command Surface Settlement: No Foundational Change (**Accepted** 2026-07-23).

#### 0.3.5 Capability Validation and Prototype Campaign

**Status: In Progress (2026-07-24).** Gatefall: Pendragon is the designated live prototype campaign. The validation plan, exact acceptance matrix, failure fixtures, and prototype evidence log live under `docs/430_RUNTIME_PERSISTENCE_VALIDATION/`.

Per Decision 048, Capability Validation and the Prototype Campaign remain distinct evidence stages even though this milestone groups them. Non-canonical fixtures exercise failure cases without contaminating live canon; Gatefall play exercises the positive end-to-end path.

The combined evidence must exercise:

- canonical checkpoint creation, complete promotion, and exact named restoration;
- registry preservation during restoration;
- single-owner presence and presence-by-possession, including mechanical rejection of invalid structured state;
- matching, mismatched, unfrozen, and explicitly absent World Rule Profile metadata;
- argumentless bootstrap and `/save`, `/load`, `/branch`, and `/restart` preserving their existing barriers;
- branching into a disposable campaign with distinct identity and lineage;
- restart on that disposable branch without registry rollback or identifier reuse;
- and completion with every prototype finding explicitly classified, governed, versioned, migrated where required, and revalidated, with no known architectural gap left unaddressed at postmortem.

Gatefall main remains the canonical continuation. It is never corrupted, restarted, or given a retroactive baseline merely to manufacture evidence. Its lack of a baseline validates the `/restart` precondition; the full restart path is tested on a disposable branch.

### Exclusions

- Governments, laws, diplomacy, population, economy, trade, infrastructure, logistics — Version 0.4.
- Any new simulation domain or world-model abstraction.
- Campaign and world migration procedures (Version 0.6).
- Population/community entity types. The postmortem found settlement and institution proxies sufficient and recorded that no play evidence justifies a new entity type (PA-001).

### Completion Criteria

- Every checkpoint in the repository restores or is explicitly quarantined.
- A world profile is versioned and frozen, and save compatibility against it is enforced.
- The prototype campaign reaches postmortem with every finding explicitly dispositioned under the accepted governance model and no known architectural gap left unaddressed; prototype-driven foundational changes are permitted only when classified, governed, versioned, migrated where required, and revalidated.

### Consequences of Approval (applied 2026-07-19)

- Governance & Society moves from Version 0.3 to Version 0.4 unchanged in scope (reflected in the Version 0.4 section below).
- Version 0.6 — Persistence loses PA-008 (pulled forward to 0.3.1) and retains migration and multi-campaign continuity.
- The presence/location structural gap is promoted from Technical Debt to an explicit milestone, 0.3.2 above (owner decision, 2026-07-19), making it a peer deliverable of Save Layer Unification.
- Magic Framework and Historical Simulation still hold version numbers (0.4, 0.5) for engine work already substantially closed, and now collide with Governance & Society at 0.4. Reclassifying both as world-authoring backlog rather than engine versions remains a **separate decision, not part of this scope**; the collision is left visibly unresolved below rather than renumbered here (Decision 069 anti-drift).

### The Argument Against This Proposal

Recorded because it is real, not to be dismissed. A hardening version delivers no player-visible capability, and a project can hide in hardening indefinitely — which is part of why Decision 048 exists. Two consecutive non-capability efforts would be a warning sign. The counter is that 0.3.4 forces a prototype campaign, and the completion criteria are binary and externally checkable rather than a matter of judgment. If the alternative is preferred, the narrow capability version is Population alone — but PA-001 records that even that lacks play evidence today.

---

## Version 0.4 — Population & Material Society

Status: **Number resolved (Decision 087), scope unapproved.** The collision with Magic Framework is settled and Planning is unblocked on numbering. The scope below is a **proposal awaiting the owner's Planning approval** and is not accepted.

### The focus list was half-done, and the correction matters

The old list named eight domains. **Four were already delivered.** Rules Section 10, integrated by Decision 036, defines Settlement and Kingdom typing, Governance as Relationship, Legitimacy, Law, Diplomacy, Treaties and Agreements, and Conflict Between Political Entities. The roadmap's own Future Architecture entry has said so all along — "Population, Economy, Trade, Infrastructure, and Logistics remain out of scope" — but the milestone kept the full list in its heading, so the version looked twice its real size and carried a name describing closed work.

Governments, Laws, and Diplomacy are struck (Decision 087 point 4). What genuinely remains:

- Population
- Economy
- Trade
- Infrastructure
- Logistics

Goal:

Support believable civilizations without requiring direct player control.

### Even corrected, this is not one version

Version 0.2 delivered **one** capability across a full lifecycle. Five domains is not one capability, and the same reasoning that split the old list applies again. The recommended shape is one capability version first, with the rest explicitly unscheduled rather than queued.

**Recommended first capability: Economy & Opportunity.** The argument is play evidence, which is what PA-001 said was missing when Population was floated as the narrow alternative during Version 0.3 scope approval:

- The Version 0.3 prototype produced **economy-shaped findings under load**, and two of them became foundational decisions. Decision 083 (opportunity supply advances on the world's clock) and Decision 082 (pending world-side commitments) exist because a contractor economy failed to generate work when nobody was looking. Data Model Sections 7.4 and 7.5 are already the beachhead: a supply source with a cadence and an `Advanced` anchor is a production model with one product.
- Gatefall carries the shape live and unmodelled — a Coalition with 420 registered freelancers and a 22-strong C-Rank ceiling, a tracked board with postings, pay, staffing status and deadlines, and contract rates the campaign reasons about constantly.
- **Population remains without play evidence.** PA-001's finding stands: settlement and institution proxies were sufficient, and nothing in fifty-seven Gatefall checkpoints has demanded a population entity type. Taking Economy first also tests whether Population is needed at all, since a production model that works against institution proxies is evidence that it is not.

Infrastructure and Logistics are deliberately left unscheduled. Version 0.2 excluded them as separate subsystems, nothing since has produced evidence for them, and Version 0.3's own warning applies: a focus list assembled from adjacency rather than evidence is how eight domains got here.

### Explicit exclusions for the proposed capability

- No population simulation, demographic model, or new entity type (PA-001).
- No infrastructure, logistics, or travel-geometry subsystem.
- No currency or price system beyond what a world already declares; the engine owns the obligation, a World Rule Profile owns the rates (Decision 083 point 5).

### What Planning must settle before this is accepted

1. Whether Economy & Opportunity is the right first capability, or whether Population's absence of evidence is itself the reason to take it.
2. Its success statement, in the shape Version 0.2's was written — one sentence naming what the engine can model that it cannot today.
3. Whether the postmortem's carried findings belong here or stay unscheduled: NPC grounding's enforcement class, and the resident card's exhausted capacity.

---

## Magic Framework — reclassified as world-authoring backlog

Status: **Closed as an engine version (Decision 087, 2026-08-02).** It holds no version number and blocks nothing.

The engine-level portion — abstraction, world extension model, the cost/limitation/discoverability contract, and magical research — is closed by `001_ENGINE_DECISIONS.md` Decision 037 and `010_ENGINE_RULES.md` Section 11. Magical research already runs through the existing Research & Knowledge lifecycle (Section 8) and required no separate mechanic. That has been recorded here since the milestone was first rescoped; what changes is that it no longer holds a number while waiting for engine work that is already done.

Remaining work is world authoring, recorded in `030_ENGINE_CHANGELOG.md` and the world's own documents when it lands, consuming no engine decision number (Decisions 062, 069 point 4, 087):

- Expanding Asterra's Weave in `worlds/asterra/200_WORLD_BIBLE.md` against the Supernatural Phenomena Contract (Section 11.2)
- Any world-specific magic content for future worlds

Goal:

Ensure magic extends the simulation instead of replacing it.

---

## Historical Simulation — reclassified as world-authoring backlog, with one carve-out

Status: **Closed as an engine version (Decision 087, 2026-08-02).** Version 0.5 is vacated. Renumbering the versions above it is deliberately *not* done as a side effect; that belongs to their own Planning stages.

Historical documents, myths, biographies, archives, and historical interpretation are closed at the engine layer by `001_ENGINE_DECISIONS.md` Decision 038 and `010_ENGINE_RULES.md` Section 12 — a historical document is an Individual Resource / Knowledge Asset needing no dedicated mechanic, and Libraries and Archives are achievable today as Institutions holding such resources (Section 9.6).

World-layer authoring of Asterra's historical documents and myths against Section 12 is backlog like Magic Framework's.

**The carve-out: Retrospective Ages / Historical Periodization is not closed** and does not disappear with the milestone. World Bible Section 8 demonstrates the concept narratively and no engine mechanic exists. It returns to **Future Architecture** below as an unscheduled engine item, to be claimed by a version when there is play evidence for it — deliberately not folded into Version 0.4, since attaching an unrelated unscheduled item to the nearest open version is how an eight-domain focus list was assembled in the first place.

Goal:

Allow history itself to become part of gameplay.

---

## Version 0.6 - Persistence

Status: **Partially Rescoped**

Save architecture and basic version-compatibility recording are closed by `001_ENGINE_DECISIONS.md` Decision 039 and `010_ENGINE_RULES.md` Section 13 - saves are ledger checkpoints with manifests, not a new format, and restoration is already defined.

Remaining genuinely new focus:

- Campaign migration and world migration procedures for reconciling version mismatches, deferred by Decision 039
- Long-term continuity across many campaigns and checkpoints within one persistent world

Goal:

Support multiple campaigns within one persistent world.

---

# Future Architecture

The following abstractions have been identified but are not yet finalized.

## Persistent Entity

Status: Accepted

Purpose:

Provide a common lifecycle model for:

- characters,
- institutions,
- settlements,
- kingdoms,
- artifacts,
- armies,
- religions,
- discoveries,
- technologies.

Integrated through `001_ENGINE_DECISIONS.md` Decision 033 and `010_ENGINE_RULES.md` Section 3.10.

---

## Civilizational Knowledge State and Propagation

Status: Accepted

Knowledge Subject persists

v

Holder-specific Knowledge States diverge

v

Institutions mediate custody, access, and validation

v

Transmission spreads unevenly through people, records, and institutions

v

Loss, fragmentation, and passive extinction remain possible

v

Rediscovery restores continuity without retroactive invention

Integrated through `001_ENGINE_DECISIONS.md` Decisions 046 and 047 and `010_ENGINE_RULES.md` Section 8.

---

## Institution Lifecycle

Status: Accepted

Foundation

v

Growth

v

Division

v

Transformation

v

Decline

v

Legacy

Integrated through `001_ENGINE_DECISIONS.md` Decision 035 and `010_ENGINE_RULES.md` Section 9.

---

## Political Entities & Governance

Status: Accepted

Settlement/Kingdom Typing

v

Governance as Relationship

v

Legitimacy

v

Law

v

Diplomacy

v

Treaties

Population, Economy, Trade, Infrastructure, and Logistics remain out of scope, and are the whole of what Version 0.4 — Population & Material Society — still has to deliver (Decision 087).

Integrated through `001_ENGINE_DECISIONS.md` Decision 036 and `010_ENGINE_RULES.md` Section 10. **This entry is the record that Governments, Laws, and Diplomacy were closed here**, which is why Version 0.4's focus list was corrected rather than planned against.

---

## Retrospective Ages / Historical Periodization

Status: **Open, unscheduled engine work**

Carried out of the reclassified Historical Simulation milestone by Decision 087. World Bible Section 8 demonstrates historical periodization narratively; no engine mechanic exists. It has no play evidence yet and is deliberately attached to no version — it is claimed when a prototype produces a reason for it, on the same standard Decision 087 applied to Population.

---

## Supernatural Phenomena Contract

Status: Accepted

World Extension Principle

v

Contract Declaration (source, access, cost, limitation, risk, discoverability, consequence)

v

Integration with Existing Mechanics

v

Consistency

Deliberately minimal by design: the engine defines only the contract a world must satisfy. Any specific magic or supernatural system, including Asterra's Weave, remains world-layer content.

Integrated through `001_ENGINE_DECISIONS.md` Decision 037 and `010_ENGINE_RULES.md` Section 11.

---

## Historical Source Model

Status: Accepted

Historical Documents as Resources

v

Generation and Provenance

v

Promotion from Campaign Chronicle

v

Legacy (generalized to all Persistent Entities)

v

Document Variety (no closed taxonomy)

v

Multiplicity and Compression

Deliberately reuses Individual Resources, Knowledge Assets, and Promotion rather than introducing a document-generation subsystem. Archive, Chronicle, Biography, Memoir, Treatise, Myth, Propaganda, and Legal Record remain descriptive examples, not enforced categories.

Integrated through `001_ENGINE_DECISIONS.md` Decision 038 and `010_ENGINE_RULES.md` Section 12.

---

## Save State Architecture

Status: Accepted

Ledger-as-Save (checkpoint of canonical Markdown ledgers)

v

Save Manifest (metadata only)

v

Restoration Procedure

v

Version Compatibility (recording and mismatch detection only)

Deliberately avoids a compiled or derived save format. Migration procedures remain reserved for Version 0.6 - Persistence.

Integrated through `001_ENGINE_DECISIONS.md` Decision 039 and `010_ENGINE_RULES.md` Section 13.

---

## Canonical Record Architecture

Status: Accepted

Purpose:

Define how authoritative state, play transcripts, campaign chronicles, historical sources, session summaries, and machine-readable saves relate to one another.

This architecture must clarify which records are:

- authoritative canon,
- evidence inside the world,
- retrospective interpretation,
- convenience summaries,
- machine persistence.

This has been resolved before Historical Persistence or Save State Architecture are formalized.

Integrated through `001_ENGINE_DECISIONS.md` Decision 032 and `010_ENGINE_RULES.md` Section 2.8.

---

## Progression Surfacing

Status: Accepted

Emergent capability (Decisions 012–014)

v

Derived Progression View — XP, per-capability tiers, and an overall character level as a non-canonical readout of emergent growth

v

World Diegetic System — a world may make levels in-world-real via the Supernatural Phenomena Contract (deferred world authoring)

A presentation layer over the emergent model, not a mechanic: the view never affects resolution or growth, and a level-up only surfaces an advance that already occurred in canon.

Integrated through `001_ENGINE_DECISIONS.md` Decision 051 and `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Progression Surfacing).

---

# Technical Debt

Current architectural debt:

- ✓ Create `003_DESIGN_PRINCIPLES.md` — completed 2026-07-12
- ✓ Reconcile the decision record with the roadmap; gate change classification — completed 2026-07-14 (Decision 069)
- Remove remaining terminology drift.
- Eliminate duplicated definitions through cross-references.
- Stabilize repository governance. *(Partially addressed by Decision 069: classification is now structural and ownership is mechanically enforced. The remaining gap is that no gate checks the class itself — only that one is recorded.)*
- **Bootstrap command churn.** *(Partially addressed by Decisions 070 and 071: the resident layer is now its own document, and the welcome page's listing now has a rendered source and a gate.)* Decisions 056, 063, 064, and 067 addressed one boundary across four decisions in a single day, each written after a live test failed its predecessor; Decision 068 repeated the shape for Reikon `/system`, and Decision 071 makes six after a live bootstrap omitted an entire campaign. Each decision is individually sound and all gates pass, so nothing was broken. Decision 070 removes the structural cause Decision 055 predicted — a fetched profile as sole carrier of a per-turn obligation. Decision 071 removes the same cause from the other half of the welcome page. What remains open is whether the *command surface itself* is over-specified: six decisions to pin one bootstrap verb suggests the cost sits in the command model, not only in where it was written down. Evaluate during Version 0.3 planning. Neither split proves per-turn or per-boot compliance improves; the next prototype campaign is the evidence. **Disposition (Decision 075, 0.3.4 ADR Design):** assessed — the command *model* is not over-specified (Decision 056 is already thin dispatchers); the churn's causes were residency and listing-source, removed by Decisions 070 and 071; the residual question is empirical and folds into the 0.3.5 prototype. Closed by drop, not by a foundational change.
- **The worlds-and-campaigns index is maintained by hand.** *(Surfaced by Decision 071. Owned by Version 0.3 planning.)* `tools/validate_repository.ps1` proves every world and campaign is listed and that each row resolves. It cannot prove a row's status, protagonist, or capture timestamp is still true, so those decay silently between promotion barriers — the same class of cross-ledger staleness recorded above, in a file the welcome page trusts. Generating the index from the filesystem would remove the maintenance cost but not the judgment: status, protagonist, and spoiler-safe framing are not derivable from a directory tree, and a generator that fabricated them would be authoritative and wrong. The tractable middle — generate what is derivable (the campaign and world sets, the latest checkpoint and its timestamp from the save manifests) and check the judged fields against the ledgers — is Version 0.3 scope. Two stale `initialization_state: initialized-no-save` declarations in the Prototype startup files, against campaigns that have written checkpoints and in one case have ended, are the standing evidence that operational metadata drifts when nothing reads it.
- **Cross-ledger staleness has no enforcement point.** *(Surfaced by the Reikon Awakening Session 2 checkpoint audit, 2026-07-14; evidence: commit `4039de3` / `saves/900_CHECKPOINT_0005/`. Now owned by Version 0.3 milestone 0.3.2 — Presence and Location Structural Representation.)* The Repository Validation Barrier (Decision 054) passed on a checkpoint in which the world ledger listed the protagonist as occupying a Rift he had left, seven carried items were located in a building their possessor was no longer in, and the restoration entry point contradicted itself on mana, on whether creatures remained in the Rift, and on which checkpoint was latest. The gate was right to pass: every defect was staleness or semantic contradiction *between* ledgers, not structural malformation, and the mechanical contract does not look for it. The cause is that Promotion (Runtime Section 5.3) fixes *when* canon is written but leaves the **mutation target set** to interpreter judgement — a session's events change ledgers the interpreter did not decide it had touched, and nothing checks the difference. This is the Decision 055 shape again (an obligation with no enforcement point holds only by assumption), one layer up from the registry bookkeeping Decision 054 mechanised. The obvious mechanical check — a possessor's carried items must agree with the possessor's location — is **not implementable against the current model**: the protagonist's location lives in `180_CURRENT_STATE.md` as prose, so there is no structured ground truth to compare against. Making it checkable means giving location and occupancy a structural representation, which is `011_ENGINE_DATA_MODEL.md` work and therefore **foundational under Decision 069** — it may not land against released 0.2.0 and belongs in Version 0.3 ADR design. It is entangled with **PA-002 — Location Granularity** (`docs/420_PROTOTYPE_ALPHA/423_ENGINE_IMPROVEMENT_BACKLOG.md`), deferred on the judgement that "existing Place and descriptive containment remain sufficient": sufficient for expressing a location, but they are the reason there is nothing to enforce against. PA-002's own reinforcing case — carried inventory has no "on person" representation because a Character is neither a Place nor a container — is exactly the case that broke here. Weigh the two together during scope approval; do not resolve PA-002 as a granularity question alone.

  **Update 2026-07-14 — the repair did not hold, and the field is overloaded.** Two findings sharpen this entry and both argue the same way.

  First: the Checkpoint 0006 repair opened five ledgers and fixed them. It did not open `100_CHARACTER_SHEET.md`, whose `situation` field still read *"Solo inside Warehouse 7 E-Rift … surviving Broodlings retreating"* against a Current State placing Daedalus at Association headquarters — carrying the exact phrase `EVT-000032` had just corrected elsewhere. **A hand repair of cross-ledger staleness reproduced the very defect it was repairing**, in the same commit, because the repair's own target set was judged rather than derived. This is the strongest evidence yet that the problem is structural and not a matter of care: the audit that knew about this failure class, and was looking for it, still missed an instance.

  Second: `occupants` — the one field that could carry occupancy — **has no single meaning.** `templates/objects/place.md` defined it as "controlling or resident entities"; the world files use it for containment (the Aldish Republic's occupants are its cities); and the Checkpoint 0005 audit read it as presence, which is how a protagonist came to be recorded as occupying a Rift he had left. Three readings, no gate, and a field that only goes stale under one of them. The template now disambiguates it — occupancy is standing state, presence is owned by `180_CURRENT_STATE.md` — which removes the cause but adds no enforcement.

  **What this means for 0.3 scope.** The mechanical check remains unimplementable today, and the reason is now precise rather than general: presence has no representation at all, and occupancy has three. No validator can compare a protagonist's location against a Place's occupancy while one is prose and the other is ambiguous. The 0.3 ADR shape is therefore: give **presence** a structural representation with exactly one owner, keep `occupants` as standing state, and only then can the invariant "a character is in exactly one place, and every ledger that says otherwise is stale" become a gate. Until that lands, the derivation rule in the Save Algorithm is the whole defence, and it is enforced by nothing.

  **Disposition (2026-07-23): resolved by Decision 073 / milestone 0.3.2.** Presence now has exactly one structural owner (`canonical_state.location`; Data Model 0.1.2 Sections 7.1 and 9.2), `occupants` is normatively standing state, carried inventory is presence-by-possession, and the Repository Validation Barrier enforces the presence invariants mechanically. The migration itself vindicated the gate class: it found and corrected two live stale-location defects (the protagonist's location field pointing at his rented room against every other source, and 180 prose still describing a sold core as carried — `EVT-000057`). Whether per-turn promotion now keeps presence current is 0.3.5 prototype evidence.
- Reconcile canon hierarchy wording between Manifest, Decisions, and Rules. *(Partially addressed by Decision 042: precedence vs. durability separated; promotion made mandatory.)*
- Define version compatibility model.
- Complete missing governance documents.
- Reconcile save-layer location/format drift — documented `saves/900_CHECKPOINT_<NNNN>/` (full ledger copies) vs the session-1 flat `.saves/*.yaml` manifest-only files vs an empty `checkpoints/` placeholder. Bless a single form and migrate existing checkpoints. *(Surfaced by Decision 053; originally deferred to Version 0.6.)* **Disposition (2026-07-23): resolved by Decision 072 / milestone 0.3.1.** The directory form is normative (Rules 13.1) and mechanically enforced (`tools/test_checkpoint_contract.ps1`, with a regression fixture for the Checkpoint 001 failure class); Prototype Alpha's terminal state is re-issued as conforming Checkpoint 0001 and its `.saves/*.yaml` records are retired as documented evidence (`campaigns/prototype_alpha/saves/README.md`); the `checkpoints/` placeholder is removed.
- **Encounter pacing has no cadence governor.** *(Surfaced by Reikon Awakening play, ~Checkpoints 0013–0016; recorded with two entangled world-authoring gaps in `worlds/reikon/270_PLAYTEST_BACKLOG.md` PT-001–PT-003.)* Long stretches of low-stakes logistics play at full scene detail, with nothing in the resident cadence layer (Decision 050) or Simulation Priority (Rules Section 3.12) governing when to **compress** them or surface the world's standing stakes. Engine-general. The fix is compression plus richer standing stakes — **not** a drama timer: forcing an encounter on a clock would violate Consistency Before Drama (Decision 003) and "no event exists solely because it would be dramatic" (Rules 1.2). A candidate for a future runtime-cadence refinement, evaluated together with the world-authoring gaps (Rift threat model, uncertainty-resolves-benign) that give it honest material.

---

# Current Dependencies

Version 0.2 - Knowledge & Civilization is complete. Capability Validation, Prototype Alpha, the Engine Postmortem, and required refinements are complete.

**Version 0.3 — Runtime & Persistence Hardening is complete and released (2026-08-01).** Its ADRs — Decisions 072, 073, and 074 (foundational) and 075 (refinement; milestone 0.3.4 closed by drop) — were accepted on 2026-07-23 under the Architecture Freeze. Milestone 0.3.5 closed with the Engine Postmortem, and Decision 086 scoped the freeze so the exception path is falsifiable. The entries below record the ten prototype-driven decisions that arrived during validation; they are history now rather than open work, and remain here because Decision 069 requires every accepted decision to name the milestone that owns it.

**Version 0.4 Planning has not begun.** It is blocked on the number collision recorded under Version 0.4 below, and Decision 048 requires the postmortem's refinements to be incorporated first.

**Decision 076 — Relationship Texture (2026-07-25), admitted to Version 0.3 by owner ruling as an explicit exception to the Architecture Freeze.** It is foundational under Decision 069's structural test (it changes `011_ENGINE_DATA_MODEL.md`), and that classification stands unrevised — the ruling overrides a correct classification rather than reinterpreting it. Admitted on three grounds recorded in the decision: the defect is characterization failing to survive the promotion barrier, which is this version's declared domain; Version 0.4 currently holds Governance & Society at unapproved scope with an unresolved number collision, so the deferral target could not receive it; and the interval is not neutral, because every session played meanwhile promotes relationships through a schema with no slot for manner, undetectably.

It was surfaced by the 0.3 prototype rather than by design review — `campaigns/gatefall_pendragon_001/` promoted a personal relationship correctly, passed both gates at two successive checkpoints, and preserved the whole of that relationship's manner as one phrase. That is the prototype milestone doing exactly what it exists to do, and it is the first 0.3 finding to come from played evidence rather than audit.

Delivered: the `Texture` field (Data Model Section 10), the Data Model **0.1.2 → 0.1.3** migration contract (Section 12.4.1), a resident Characterization Settlement obligation with named character-first triggers, a presence-only coverage gate in `tools/validate_repository.ps1`, and automatic Session Export on the Context-Preservation Barrier. Four pre-existing personal relationships across Prototype Alpha, Prototype Beta, and Reikon Awakening carry explicit *not recorded* markers rather than reconstructed manner; two of them, in the closed-terminal Prototype Alpha, are permanently unrecoverable and are retained as the clearest evidence of what the field prevents. Immutable checkpoints retain their captured schema and migrate only into mutable live state at a restoration readiness gate.

**Decision 077 — Distinct Game and Repository Dates (2026-07-26), admitted to Version 0.3 by owner ruling as a second explicit foundational exception.** Gatefall live records had copied the fictional campaign clock into repository `record_time`, creating future-dated provenance. Delivered: Data Model **0.1.3 → 0.1.4**, universal `game_date` / `real_date` serialized keys, validator coverage, template and manifest alignment, and an immutable-checkpoint restoration chain that migrates only mutable live state. This finding is owned by milestone 0.3.5 and does not reopen the completed architecture milestones.

**Decision 078 — Canonical Campaign Clock and Automatic Recovery Settlement (2026-07-26), admitted to Version 0.3 by owner ruling as a third explicit foundational exception.** Gatefall's Mana formula existed, but its live state carried no exact last-settled game-time anchor or fractional recovery carry; the narrator therefore settled only when the player asked. Gatefall Health recovery was unauthored. Delivered under milestone 0.3.5: an engine-general exact-clock settlement obligation for worlds with deterministic time rules, Gatefall Profile 1.13 recovery state and integer carry formulas, deterministic natural Health recovery, live migration, and regression coverage. Engine 0.2.0 and Data Model 0.1.4 do not advance; immutable checkpoints remain unchanged and migrate only into mutable readiness state.

**Decision 079 and Decision 080 — Reconcilable Counters and Profile-Declared Progression Candidates (2026-07-27), admitted to Version 0.3 by owner ruling as explicit foundational exceptions owned by milestone 0.3.5.** Gatefall play demonstrated both stale known-skill counters and a three-scene earned technique that the Runtime never recognized. Both are foundational under Decision 069 because they change `011_ENGINE_DATA_MODEL.md`. Delivered: Data Model **0.1.4 → 0.1.5**, typed Event `counter_deltas` and `progression_audits`, prospective counter and audit baselines, persistent candidate evidence/status, resident settlement, deterministic validation, Gatefall Profile 1.19, and the `EVT-000130` live migration. Immutable checkpoints remain unchanged.

**Decision 081 — Runtime Load Audit: Owner Rulings on the Five Open Questions (2026-07-28), owned by milestone 0.3.5.** The runtime load, trigger, and validation audit closed with five questions it refused to answer from the draft alone, while four of its recommendations shipped against them. All five are now settled and every ruling confirms current behaviour or defers work: the declared context budgets stand as written; Tier-2 triggers fire at the first qualifying yield and delayed settlement is rejected; checkpoint integrity hashes (R12) are refused as a Version 0.3 freeze exception; migration records remain Gatefall world authoring rather than an engine-general mechanism until a second world adopts the shape; and the checkpoint duplication problem (R13) stays with a later persistence version. No Engine Rule, Data Model section, or checkpoint form changes. Ruling 2 unblocks the audit's three missing trigger fixtures, which Recommendation R6 shipped without.

**Decision 082 — Pending World-Side Commitments (2026-07-31), admitted to Version 0.3 by owner ruling as a further explicit foundational exception owned by milestone 0.3.5.** Design flag F-001 recorded a player texting four established contacts and receiving four declines. The analysis found that five parties owed the protagonist contact at that moment — a coordinator's callback due that morning, a letting agent, a contractor's lead, a recruiter's follow-up window, and a crew lead's promise — and that none was recorded as anything a Runtime could settle. The campaign had already diagnosed this itself and improvised the construct by hand in `OBJ-23`, explicitly labelling it a *Runtime-authored NPC-behavior trigger* with a due window and lapse semantics; it failed within one in-fiction day, because nothing dispatches against prose. Delivered: an engine-general pending world-side commitment as **tracked state carrying no identifier** (Data Model Sections 7.3 and 7.4), settlement at the due time from the owner's own state on Decision 078's existing clock boundary, five statuses of which `lapsed` records a grounded reason, and a resident settlement obligation. **Data Model 0.1.5 does not advance and no migration is required** — no Persistent Object structure changes, which is why that structure was chosen over the Persistent Object alternative. Immutable checkpoints are untouched. World-profile dispatch deltas and the Gatefall backfill are separate world-authoring and campaign work. F-001's second half — opportunity supply advancing on the world's clock — is Decision 083.

**Decision 083 — Opportunity Supply Advances on the World's Clock (2026-07-31), admitted to Version 0.3 by owner ruling as a further explicit foundational exception owned by milestone 0.3.5.** The substance of design flag F-001. Four established contractors generated zero work across five elapsed in-fiction days, in a world declaring ~35 weekly metro Gate detections and 3–6 standing postings as its ordinary state, because nothing advanced contact-side supply on the clock — so "nothing available" was not a settled result but the only answer the fiction could structurally return. Delivered: **Rules Section 3.4.1**, an engine-general obligation that established sources of work, custom, patronage, or advancement generate on their own schedule; Data Model Section 7.5 supply-source **tracked state** with an `Advanced` anchor that makes read and advance different operations; settlement on Decision 078's existing clock boundary; and the negative-assertion discipline Decision 080 established, so an empty advance is recorded rather than skipped. **Data Model 0.1.5 does not advance and no migration is required.** This is foundational under Decision 069 because it adds a Rules section and a mechanism worlds build against. It raises no probability in the player's favour and forecloses farming — an inquiry reads settled state and never generates. F-001's own proposed remedy, a reactive weighting toward surfacing a seeded opportunity, is recorded as **rejected as written** in the decision, with its underlying reasoning accepted and implemented proactively instead. World cadence calibration and the Gatefall backfill are separate world-authoring and campaign work.

**Decision 084 — World-State Settlement as a Declarable Trigger Domain (2026-07-31), admitted to Version 0.3 by owner ruling as a further explicit foundational exception owned by milestone 0.3.5.** Decisions 082 and 083 gave the engine two world-side obligations that settle on the campaign clock, but a World Rule Profile had no way to *declare* their dispatch: the Section 2.5 trigger manifest carries a closed settlement vocabulary — `offer`, `automatic_attachment`, `progression_audit` — authored when the only declarable domains were quests and progression candidates, and every member of it describes something presented to or resolved for the player. Gatefall's Section 9.10 tracked board fits none of them, and the nearest member would have obliged a `progression_audits` write for a mechanism with no subject, candidate, or evidence threshold. F-001's Recommendation R4 was therefore not merely undone but inexpressible. Delivered: a fourth member, **`world_state_settlement`**, which writes no progression audit, declares no capacity-notice policy, settles at the declared boundary where recovery, commitments, and supply already settle, and asserts that its eligibility heading resolves the outcome without Runtime discretion. **Data Model 0.1.5 does not advance and no migration is required** — this adds a declarable value, not a shape. Foundational under Decision 069 because it introduces an engine-general mechanism a world may invoke, and it shares the owning milestone of Decisions 082 and 083 under the same clause that one mechanism spanning several decisions carries one class. Gatefall Profile 1.44 is its first consumer.

**Decision 085 — NPC Participation Audit (2026-07-31), admitted to Version 0.3 by owner ruling as an explicit foundational exception owned by milestone 0.3.5.** Gatefall play left the read side of NPC canon with no enforcement point: the NPC ledger reached 262 KB while nothing required a record to be read before the character it describes was played, and the Closed Channels table recorded the same leak returning after correction. Foundational under Decision 069 because it changes `011_ENGINE_DATA_MODEL.md`. Delivered: Data Model **0.1.5 → 0.1.6**, the typed Event `participation_audits` block, a profile-declared prospective coverage set, mechanical validation of the `record-updated` half, Gatefall Profile 1.45 and its `EVT-000269` adoption. Immutable checkpoints remain unchanged and no historical Event is backfilled. The decision records, and the ruling does not withdraw, that `no-change` is not machine-verifiable.

---

# Release Criteria

Version 1.0 may be declared when:

- All planned engine domains are complete.
- Terminology is stable.
- Repository governance is complete.
- No major architectural duplication remains.
- Each engine version has passed its Prototype Campaign and Engine Postmortem gates (Decision 048).
- The engine successfully supports a complete campaign from beginning to end without requiring structural redesign.

Version 1.0 does **not** require the first world to be complete.

The engine and the world are versioned independently.

---

# Long-Term Vision

Chronicle Engine aims to become a reusable historical simulation framework capable of supporting multiple worlds, multiple campaigns, and multiple genres.

Its purpose is not to tell stories.

Its purpose is to simulate worlds from which stories naturally emerge.
