# Chronicle Engine

# Engine Roadmap

**Engine Version:** 0.2.0 (Knowledge & Civilization)
**Development Target:** Version 0.3 planning
**Status:** Version 0.2 Complete

# Current Sprint

Goal:

Version 0.2 architecture, implementation, Capability Validation, Prototype Alpha, and the Engine Postmortem are complete. Required refinements have been incorporated and Version 0.3 planning is unblocked.

Current Task:

Approve or reject the Version 0.3 scope proposal under the lifecycle in Decision 048.

A scope proposal is on the table: **Version 0.3 — Runtime & Persistence Hardening**, which would replace Governance & Society at 0.3 and move it to 0.4. It is **proposed, not accepted**. Its argument, its capability milestones, and the argument against it are recorded in the Version 0.3 section below.

Next Review:

Scope approval. No ADR may be designed or implemented against Version 0.3 until the scope is approved (Decision 048).

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

---

## Version 0.3 — Runtime & Persistence Hardening

Status: **PROPOSED — awaiting scope approval.** Nothing below is accepted. Decision 048 Planning stage output; no ADR may be drafted against it until the scope is approved.

Per the development lifecycle (Decision 048), Version 0.3 planning is unblocked: Version 0.2 implementation, Prototype Alpha, the Engine Postmortem, and the required refinements are all complete.

This proposal **replaces Governance & Society as Version 0.3** and moves it to Version 0.4. That is the substance of the proposal, and the reason for it is evidence rather than preference.

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

Pulls PA-008 forward from Version 0.6.

- Bless one checkpoint form and migrate existing checkpoints. Resolve the documented `saves/900_CHECKPOINT_<NNNN>/` (full ledger copies) versus flat `.saves/*.yaml` (manifest-only) versus the empty `checkpoints/` placeholder drift.
- Acceptance: every existing checkpoint either restores or is explicitly quarantined as non-restorable; the Reikon Checkpoint 0001 failure class is covered by a regression fixture.
- Excludes: campaign and world migration procedures, which remain Version 0.6.

#### 0.3.2 World Rule Profile Consolidation and Freeze

Owns the inherited architecture. Rules Section 14 arrived via Decisions 059 and 062 against a released version and is classified foundational by the Post-0.2 Decision Record above.

- Freeze the Section 14 override contract; define profile versioning and its save-compatibility rule.
- Reikon 0.3 becomes the first frozen profile and the conformance fixture.
- Acceptance: a save records the applicable profile version, and a mismatch is surfaced explicitly on restoration rather than silently resolved (Rules Section 13.6).

#### 0.3.3 Runtime Command Surface Settlement

- Reduce the command *model*, not only its documentation. Target: adding or changing a command requires no ADR.
- Acceptance: the catalog synchronization test still passes, and the command surface survives a prototype campaign without a new decision.
- The smallest and least certain of the three. If evidence does not support it at ADR Design, it should be dropped rather than padded.

#### 0.3.4 Capability Validation and Prototype Campaign

Per Decision 048. The prototype must exercise save, restore, branch, restart, and a world-profile mismatch — not a knowledge scenario, which Version 0.2 already validated.

### Exclusions

- Governments, laws, diplomacy, population, economy, trade, infrastructure, logistics — Version 0.4.
- Any new simulation domain or world-model abstraction.
- Campaign and world migration procedures (Version 0.6).
- Population/community entity types. The postmortem found settlement and institution proxies sufficient and recorded that no play evidence justifies a new entity type (PA-001).

### Completion Criteria

- Every checkpoint in the repository restores or is explicitly quarantined.
- A world profile is versioned and frozen, and save compatibility against it is enforced.
- The prototype campaign completes without requiring a new foundational abstraction.

### Consequences If Approved

- Governance & Society moves from Version 0.3 to Version 0.4 unchanged in scope.
- Version 0.6 — Persistence loses PA-008 and retains migration and multi-campaign continuity.
- Magic Framework and Historical Simulation already record their engine work as substantially closed and their remainder as world-layer authoring. They hold version numbers for engine work that no longer exists. Recommend reclassifying both as world-authoring backlog rather than engine versions — a separate decision, not part of this scope.

### The Argument Against This Proposal

Recorded because it is real, not to be dismissed. A hardening version delivers no player-visible capability, and a project can hide in hardening indefinitely — which is part of why Decision 048 exists. Two consecutive non-capability efforts would be a warning sign. The counter is that 0.3.4 forces a prototype campaign, and the completion criteria are binary and externally checkable rather than a matter of judgment. If the alternative is preferred, the narrow capability version is Population alone — but PA-001 records that even that lacks play evidence today.

---

## Version 0.4 - Governance & Society

Status: **Proposed** — moved from Version 0.3 by the Version 0.3 scope proposal above; scope itself unchanged and unapproved

Focus:

- Governments
- Laws
- Diplomacy
- Population
- Economy
- Trade
- Infrastructure
- Logistics

Goal:

Support believable civilizations without requiring direct player control.

Note: this focus list spans eight domains, several of which (economy, trade, logistics) Version 0.2 explicitly excluded as separate subsystems. Version 0.2 delivered one capability across a full lifecycle. Scoping this version will likely require splitting it; that is a planning problem for its own Planning stage, not a reason to hold it at 0.3.

---

## Version 0.4 - Magic Framework *(number contested)*

Status: **Rescoped** — **numbering pending.** The Version 0.3 scope proposal above moves Governance & Society into 0.4. If that proposal is approved, this milestone and the two below shift by one, or are reclassified as world-authoring backlog per that proposal's Consequences. The collision is left visible rather than pre-resolved, because renumbering accepted milestones on an unapproved proposal would be exactly the drift Decision 069 exists to stop.

The engine-level portion of this milestone - abstraction, world extension model, cost/limitation/discoverability contract, and magical research - is substantially closed by `001_ENGINE_DECISIONS.md` Decision 037 and `010_ENGINE_RULES.md` Section 11. Magical research already runs through the existing Research & Knowledge lifecycle (Section 8) and required no separate mechanic.

Remaining focus is world-layer authoring rather than engine work:

- Expanding Asterra's Weave system in `worlds/asterra/200_WORLD_BIBLE.md` against the Supernatural Phenomena Contract (Section 11.2)
- Any world-specific magic content for future worlds

Goal:

Ensure magic extends the simulation instead of replacing it.

---

## Version 0.5 - Historical Simulation

Status: **Partially Rescoped**

Historical documents, myths, biographies, archives, and historical interpretation are substantially closed at the engine layer by `001_ENGINE_DECISIONS.md` Decision 038 and `010_ENGINE_RULES.md` Section 12 - a historical document is an Individual Resource/Knowledge Asset with no dedicated mechanic required, and Libraries/Archives are achievable today as Institutions holding such resources (Section 9.6), without new engine work.

Remaining genuinely new focus:

- Retrospective Ages / Historical Periodization - not yet formalized; World Bible Section 8 demonstrates the concept narratively but no engine mechanic exists
- World-layer authoring of Asterra's historical documents and myths against Section 12

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

Population, Economy, Trade, Infrastructure, and Logistics remain out of scope, reserved for Version 0.3 - Governance & Society.

Integrated through `001_ENGINE_DECISIONS.md` Decision 036 and `010_ENGINE_RULES.md` Section 10.

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
- **Bootstrap command churn.** *(Partially addressed by Decision 070: the resident layer is now its own document, so per-turn obligations are structurally separable from on-demand procedure.)* Decisions 056, 063, 064, and 067 addressed one boundary across four decisions in a single day, each written after a live test failed its predecessor; Decision 068 repeated the shape for Reikon `/system`. Each decision is individually sound and all gates pass, so nothing was broken. Decision 070 removes the structural cause Decision 055 predicted — a fetched profile as sole carrier of a per-turn obligation. What remains open is whether the *command surface itself* is over-specified: five decisions to pin one bootstrap verb suggests the cost sits in the command model, not only in where it was written down. Evaluate during Version 0.3 planning. The split does not by itself prove per-turn compliance improves; the next prototype campaign is the evidence.
- **Cross-ledger staleness has no enforcement point.** *(Surfaced by the Reikon Awakening Session 2 checkpoint audit, 2026-07-14; evidence: commit `4039de3` / `saves/900_CHECKPOINT_0005/`. Owned by Version 0.3 planning.)* The Repository Validation Barrier (Decision 054) passed on a checkpoint in which the world ledger listed the protagonist as occupying a Rift he had left, seven carried items were located in a building their possessor was no longer in, and the restoration entry point contradicted itself on mana, on whether creatures remained in the Rift, and on which checkpoint was latest. The gate was right to pass: every defect was staleness or semantic contradiction *between* ledgers, not structural malformation, and the mechanical contract does not look for it. The cause is that Promotion (Runtime Section 5.3) fixes *when* canon is written but leaves the **mutation target set** to interpreter judgement — a session's events change ledgers the interpreter did not decide it had touched, and nothing checks the difference. This is the Decision 055 shape again (an obligation with no enforcement point holds only by assumption), one layer up from the registry bookkeeping Decision 054 mechanised. The obvious mechanical check — a possessor's carried items must agree with the possessor's location — is **not implementable against the current model**: the protagonist's location lives in `180_CURRENT_STATE.md` as prose, so there is no structured ground truth to compare against. Making it checkable means giving location and occupancy a structural representation, which is `011_ENGINE_DATA_MODEL.md` work and therefore **foundational under Decision 069** — it may not land against released 0.2.0 and belongs in Version 0.3 ADR design. It is entangled with **PA-002 — Location Granularity** (`docs/420_PROTOTYPE_ALPHA/423_ENGINE_IMPROVEMENT_BACKLOG.md`), deferred on the judgement that "existing Place and descriptive containment remain sufficient": sufficient for expressing a location, but they are the reason there is nothing to enforce against. PA-002's own reinforcing case — carried inventory has no "on person" representation because a Character is neither a Place nor a container — is exactly the case that broke here. Weigh the two together during scope approval; do not resolve PA-002 as a granularity question alone.
- Reconcile canon hierarchy wording between Manifest, Decisions, and Rules. *(Partially addressed by Decision 042: precedence vs. durability separated; promotion made mandatory.)*
- Define version compatibility model.
- Complete missing governance documents.
- Reconcile save-layer location/format drift — documented `saves/900_CHECKPOINT_<NNNN>/` (full ledger copies) vs the session-1 flat `.saves/*.yaml` manifest-only files vs an empty `checkpoints/` placeholder. Bless a single form and migrate existing checkpoints. *(Surfaced by Decision 053; deferred to Version 0.6 — Persistence.)*

---

# Current Dependencies

Version 0.2 - Knowledge & Civilization is complete. Capability Validation, Prototype Alpha, the Engine Postmortem, and required refinements are complete. Version 0.3 planning is unblocked (Decision 048).

Version 0.3 is blocked on scope approval only. A proposal — Runtime & Persistence Hardening — awaits a decision; see Version 0.3 below. Nothing downstream of it is renumbered until that approval lands.

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
