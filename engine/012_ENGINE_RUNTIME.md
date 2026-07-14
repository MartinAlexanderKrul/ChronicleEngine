# Chronicle Engine

## Engine Runtime

**File:** `012_ENGINE_RUNTIME.md`
**Status:** Workshop Draft
**Engine Version:** 0.2.0
**Layer:** Engine (000–099)

---

The Runtime is responsible for executing Chronicle Engine.

The Runtime does not define the world.

The Runtime applies the Engine Rules to the current repository state in order to advance the simulation.

---

# Purpose

This document defines the **Runtime**: the model by which Chronicle Engine is executed.

The Engine Rules (`010_ENGINE_RULES.md`) define *what is true*. This document defines *how the engine operates* on that truth. The two are deliberately separate documents so that the world model and the execution model may evolve independently.

This document is **normative** for runtime behavior. It states obligations that any runtime must uphold. It delegates procedure — reading order, working-set heuristics, session report formats, substrate-specific technique — to operational **Runtime Profiles** (see Section 0.4).

This document **references, but does not restate,** the Engine Rules and the Data Model. Where it names a behavioral or structural concept, it names that concept and its owning document. It never redefines it.

---

# Position in the Engine

Chronicle Engine is executed through the following chain:

```text
Player → Runtime → Engine → World → Campaign → History
```

The left of this chain is **actors**: the Player, and the Runtime that executes on the Player's behalf. The right of this chain is **substance**: the Engine Rules, the World that instantiates them, the Campaign played within that World, and the History it produces.

The Runtime is the **seam** between the two. The Player never acts on the Engine, World, Campaign, or History directly. Every interaction passes through the Runtime, which applies the Engine Rules to the repository and returns the result.

This is the execution view of the architecture. It complements, and does not replace, the data-dependency view defined in the Manifest (Engine → World → Campaign → Historical → Save).

---

# 0. The Runtime Model

## 0.1 Substrate Independence

A **Runtime** is any system capable of executing Chronicle Engine against a repository.

The Runtime is defined as an abstraction, independent of the substrate that implements it. A Runtime may be realized by a large language model, a local model, a native application, or a dedicated server. The specification is written against the Runtime, never against a substrate.

Any obligation that only makes sense for one substrate is not a Runtime obligation. It is substrate guidance and belongs in a Runtime Profile (Section 0.4), not in this document.

---

## 0.2 Runtime Invariants

Every Runtime, on any substrate, must uphold four invariants. All later sections are elaborations of these.

1. **Grounding.** All asserted state derives only from canon loaded from the repository. The Runtime does not treat memory of prior sessions, or unstated assumption, as canon.
2. **No silent canon.** Nothing durable is authored without provenance. The Runtime never replaces established canon with newly generated content silently (Section 2.10 of the Rules).
3. **Promotion.** Canon established during a session must reach the repository. In-session canon that has not been written to a durable ledger is not preserved (Section 5, Section 6).
4. **Canon-determinism.** Given the same loaded canon, the same rules, and the same resolved die results, the Runtime produces state consistent with that canon and never contradicts it (Section 7).

### Enforcement Points

An invariant is not upheld because it is documented; it is upheld only if a named enforcement point checks it at the moment it can be violated. Every invariant must declare its enforcement point — the moment it is checked and the layer that checks it (Decision 055). An enforcement point is one of three classes:

- **Resident per-turn** — applied every turn from always-in-context instruction, at the moment intent is resolved.
- **Mechanical barrier** — a deterministic check that fails the operation (Section 5.4, Decision 054).
- **Deferred barrier** — checked at a durability boundary such as a checkpoint or session close.

| Invariant | Moment checked | Enforcement layer |
|-----------|----------------|-------------------|
| Grounding | Before asserting any state, each turn | Resident per-turn |
| No silent canon | When durable canon is authored | Resident per-turn, backed by the mechanical barrier (Section 5.4) |
| Promotion | At each durability boundary; obligation tracked per turn | Deferred barrier (Sections 2.2, 5.3), with resident promotion-obligation tracking |
| Canon-determinism | When state is written | Resident per-turn, backed by the mechanical barrier (Section 5.4) |

This obligation is substrate-general: any substrate whose default execution can diverge from an invariant must site enforcement at the point of divergence. A substrate that provably cannot violate an invariant records that as its enforcement point.

---

## 0.3 Runtime Components

The Runtime is composed of the following components. This document is organized around them.

```text
Runtime
  ├─ Interpreter    the active execution agent
  ├─ Session        the bounded unit of execution
  ├─ Context        the loaded working set
  ├─ Canon          resolution: lookup and precedence (read side)
  ├─ Mutation       state writes and promotion (write side)
  └─ Persistence    the durable repository (system of record)
```

The Interpreter executes within a Session. The Session loads a Context. The Interpreter resolves facts through Canon and produces changes through Mutation. Mutation writes to Persistence. No component holds durable state except Persistence.

The Interpreter is a **replaceable component**. In the current era it is realized by a large language model. The Interpreter's obligations are defined so that a different implementation could satisfy the same contract without changing the rest of the model.

---

## 0.4 Runtime Profiles

A **Runtime Profile** is operational guidance for executing the Runtime on a specific substrate.

Profiles are not part of this normative document. They live in `docs/` and may evolve freely. A profile specifies technique — how a given substrate boots, budgets its working memory, sequences its reads, and formats its reports — without altering any obligation defined here.

The current profile is the large-language-model profile. Its session procedure is defined in `docs/AI_SESSION_TEMPLATE.md`. A future native or server Runtime would ship its own profile without modifying this document.

### Resident and Fetched Layers

A Runtime Profile must distinguish a **resident layer** — instruction that is always in context and applied every turn — from **fetched reference** material consulted on demand. Grounding, action-resolution, promotion-obligation awareness, and canon-determinism enforcement must live in the resident layer, or in a mechanical barrier (Section 5.4). Fetched material may elaborate a resident invariant but must never be the sole carrier of one. This requirement follows from Decision 055: on a substrate whose per-turn default competes with its guardrails, a guardrail that is only fetched effectively does not fire.

---

## 0.5 Relationship to the Data Model

The Runtime operates on data whose structure is defined by `011_ENGINE_DATA_MODEL.md`: the Persistent Object and its specializations (Persistent Entity, Canonical Record, Event, Relationship), stable identifiers, the single-Canonical-Record invariant, references by identifier, and the identity-continuity graph.

The Runtime **uses** this structure. It does not define it. It does not define identifiers, ledger schemas, or record formats — those are data-model concerns, owned by `011`. Behavioral meaning is owned by the Engine Rules; structural form is owned by the Data Model; this document references both and restates neither.

Ledger templates derive from the Data Model and are out of scope here.

---

# 1. Interpreter

The Interpreter is the active execution agent: the component that reads Player intent, resolves actions, applies the Engine Rules, and decides what changes to record.

The Interpreter authors and reads canon. It does not own canon. Canon is owned by the repository (Section 6).

## 1.1 Interpreter Responsibilities

The Interpreter must:

- execute faithfully within the Engine Laws and Rules,
- ground every asserted fact in loaded canon (Invariant 1),
- surface uncertainty rather than conceal it,
- never author durable canon without provenance (Invariant 2),
- respect the boundary between what it may infer and what it must not (Section 1.2).

## 1.2 Interpreter Modes

The Interpreter operates in one of two modes, and must not confuse them.

- **Interpreter mode** executes a world and campaign: it advances the simulation. This document governs Interpreter mode.
- **Architect mode** develops the engine itself: it edits the specification. Architect mode is governed by `docs/PROJECT_CONTEXT.md` and the development workflow, not by this document.

The mode determines what the Runtime is permitted to change. In Interpreter mode, the Runtime changes world, campaign, and historical state. It does not change engine rules.

## 1.3 Inference Boundaries

The Interpreter fills gaps by inference, within limits.

The Interpreter **may** generate detail that is not yet established, when that detail is consistent with existing canon. Such detail enters at the lowest tier of the canon hierarchy ("newly generated information," Rules Section 2.1).

The Interpreter **must not**:

- contradict any higher-tier canon (Rules Section 2.10),
- silently elevate inference to established fact.

Inferred detail is **provisional**. It carries no durability until it is either promoted (Section 5) or discarded. Provisional detail that is never promoted does not survive the session.

## 1.4 Ambiguity Handling

When canon does not settle a question, the Interpreter first classifies the ambiguity, because the two classes resolve oppositely.

- **Unknown in-world.** The world has not revealed the fact. The Interpreter resolves this through Discovery (Rules Section 2.5, Law VI) or preserves the uncertainty deliberately (Rules Section 3.10). It does not force a clean answer.
- **Unspecified by the engine.** The rules do not cover the situation. The Interpreter resolves this by inference within Section 1.3. If the gap is material and inference is unsafe, the Interpreter requests an explicit ruling rather than guessing.

## 1.5 Action Resolution Responsibilities

When resolving an action, the Interpreter applies Action Resolution (Rules Section 4). This document does not restate that procedure. It states the Interpreter's obligations in applying it:

- determine whether uncertainty exists before invoking resolution (Rules Section 4.2),
- honor Intent Before Method (Rules Section 4.0),
- respect the die: a resolved roll and its result band are not re-rolled or reinterpreted to fit a preferred narrative (Law VII — Fairness),
- record the consequences through Mutation (Section 5).

## 1.6 Player Authority Boundary

The Player and the Runtime author different things. The Player authors **intent**: whether and how the character chooses to act, within the **Player Intent Domain** — the character's volitional decisions, including action, speech, belief, trust, consent, and disclosure. The Runtime authors **consequence**: it resolves that intent through the Engine Rules and records the result. The Runtime must not author intent on the Player's behalf. A declared intent is not yet canon; canon is the resolved outcome the simulation produces from it.

The Runtime distinguishes three things and treats them differently:

- **Declared intent** — what the Player states the character is trying to do. Player-authored.
- **Automatic execution** — the involuntary steps and micro-actions that carry out a declared intent (walking, opening an unbarred door, crossing a room, sitting when invited). The Runtime performs these without yielding.
- **Meaningful player choice** — a juncture at which a decision within the Player Intent Domain could materially change the direction, stakes, or outcome of the simulation.

Player phrasing may also presuppose an uncertain world-fact: that a search found no counterexample, a hidden object exists, an inference is true, or another actor will yield. The Player authors the attempt and the character's interpretation; the Runtime arbitrates whether the world-fact obtains through loaded canon, ruling, or action resolution. A presupposition is proposed state, not canon (Decision 060).

Only meaningful player choices require yielding. Accordingly, the Runtime advances the simulation from the Player's last declared intent to the next meaningful player choice, then yields control. A meaningful player choice is reached when the declared intent has been carried to completion and continuing would require a new intent the Player has not given; a response may narrate any number of involuntary world reactions, but it resolves at most one such player opportunity — the point at which it yields. This applies the simulation cycle (Rules Section 3.2), which begins with the Player declaring intent, and Law III (Agency). This boundary protects the Player character's volition, not the world's: NPCs and world forces still act on their own initiative. Fabricating intent within the Player Intent Domain is a Grounding violation (Invariant 1) and is handled as a contradiction (Section 8), not as narration.

Operational cadence — how a substrate paces beats, scenes, transitions, and montages, and how it judges what is meaningful — is defined by the active Runtime Profile (Section 0.4). The architectural reasoning is recorded in `001_ENGINE_DECISIONS.md`, Decision 050.

---

# 2. Session

A **Session** is a bounded unit of execution. It has a start and a close, and it is the boundary at which durable canon is committed.

No canon is durable merely because it exists within a Session. A Session is transient. Durability is a property of Persistence (Section 6), reached through Promotion (Section 5).

## 2.1 Session Start

At the start of a Session, before advancing the simulation, the Interpreter must establish current durable state from the repository. This is the grounding obligation (Invariant 1) applied to session boundaries.

The Interpreter reads the current state from Persistence and loads the Context it needs (Section 3). It does not resume from memory of a prior session.

The operational procedure for session start — which files to read, in what order — is defined by the active Runtime Profile.

## 2.2 Session Close

At the close of a Session, the Interpreter must execute the **promotion barrier**: all canon established during the Session that has not yet been written to a durable ledger is promoted (Section 5).

The promotion barrier is mandatory. A Session must not close leaving canon-bearing facts recorded only in the transcript.

Checkpoints (Rules Section 13.2) are additional promotion barriers within a Session.

The operational procedure for session close — including the session report — is defined by the active Runtime Profile.

---

# 3. Context

The **Context** is the working set: the canon a Runtime has loaded and can currently operate on. It is the Runtime's working memory.

The Context is not canon. It is a loaded view of canon. Canon is owned by Persistence (Section 6).

## 3.1 The Working Set

A Runtime does not load the entire repository to act. It loads a **working set**: the canon relevant to the current situation.

The working set is assembled from:

- a **boot set** — the engine documents and top-level state required to establish grounding, and
- **scope-responsible ledgers** — the ledgers that own the facts currently in play (Rules Section 2.8).

Which ledgers to load, and how much, is guided by Simulation Priority (Rules Section 3.12): the same relevance that governs how much of the world is simulated also governs how much is loaded into Context. The save manifest (Rules Section 13.3) identifies what is relevant on restoration.

The specific loading strategy is operational and defined by the active Runtime Profile.

## 3.2 Minimal and Missing Context

The Runtime must distinguish two situations that look alike but resolve oppositely.

- **Not loaded.** The canon exists in the repository but is not in the current Context. The Runtime loads the scope-responsible ledger, or requests it. It must not fabricate durable canon to cover the gap.
- **Not established.** The canon does not exist. The Runtime treats this as ambiguity (Section 1.4): it may infer within boundaries, or preserve the uncertainty.

Under context pressure, when a required ledger cannot be loaded, the Runtime may operate **provisionally**, but must flag its output as ungrounded and pending reconciliation. Provisional output must not be promoted as established canon until it is grounded.

---

# 4. Canon

The **Canon** component is the read side of resolution: how the Runtime determines what is true. It applies the canon rules defined in Rules Section 2. This document does not restate them.

## 4.1 Canon Lookup

To resolve a fact, the Runtime:

1. identifies the fact required,
2. identifies the **scope-responsible ledger** that owns it (Rules Section 2.8),
3. applies the canon hierarchy (Rules Section 2.1) only when sources conflict,
4. if the fact is absent, hands off to inference boundaries (Section 1.3).

Scope determines *which record owns a fact*. Precedence determines *which record wins when records disagree*. These are distinct questions and must not be conflated.

## 4.2 Precedence and Durability Are Distinct

The canon hierarchy (Rules Section 2.1) orders sources by **precedence**: which source controls when sources conflict *during play*. By that order, an explicit ruling or the gameplay transcript outranks a canonical ledger, because it reflects what was just agreed or what just happened, and the ledger may be stale.

Precedence is not durability.

**Durability** is a separate axis: which record is authoritative *between sessions*. On that axis, the repository is the sole system of record. The transcript is not a durability tier. It is volatile, and it does not persist.

These two axes are reconciled by Promotion (Section 5). A high-precedence transcript fact governs play in flight, and becomes durable canon only when promoted into a ledger. Until then it is a pending write, not preserved canon.

This resolves the apparent conflict between "the repository is the single source of truth" and the canon hierarchy placing the transcript above ledgers. The first statement is true at rest. The second is true in flight. Promotion is the bridge.

---

# 5. Mutation

The **Mutation** component is the write side: how the Runtime changes canon. Mutation is the only path by which state becomes durable.

## 5.1 The Write Path

When an event changes state, the Runtime:

1. determines the affected records by scope, resolving each object through its identifier and its single Canonical Record (`011_ENGINE_DATA_MODEL.md`, Sections 2.3, 3),
2. when creating a new persistent object, mints its identifier through the registry in the same atomic change (`011_ENGINE_DATA_MODEL.md`, Section 1; `system/ID_REGISTRY.md`),
3. writes the change with **provenance** — its source, scope, event time, record time, and any unresolved uncertainty (Rules Section 2.8; envelope structure in `011_ENGINE_DATA_MODEL.md`, Section 8.2),
4. does not overwrite higher-tier canon silently (Rules Section 2.10).

## 5.2 Mutation Constraints

- **Causality.** A mutation must have a cause (Law II). State does not appear or disappear without an identifiable reason (Rules Section 7.11).
- **Immutability.** Records defined as immutable must not be mutated: save checkpoints (Rules Section 13.2) and superseded decisions (`001_ENGINE_DECISIONS.md`, Revision Policy).
- **Consistency.** A mutation must leave canon cross-reference-consistent. It must not leave a relationship, succession, or reference pointing at a record it did not also update.

## 5.3 Promotion

**Canon Promotion** — referred to as *promotion* throughout this document — is the mandatory act of writing in-session canon (explicit rulings and canon-bearing transcript events) into durable ledgers, with provenance.

This is distinct from **Persistent Entity Promotion** (Rules Section 3.10), which elevates an aggregated subject to independent entity status. Both elevate something to a more durable standing, but they are different mechanics on different subjects and must not be conflated.

Promotion occurs:

- at each checkpoint,
- at session close (the promotion barrier, Section 2.2),
- opportunistically, when an in-session fact becomes load-bearing for continued play.

What must be promoted is canon: facts that establish or change state. What need not be promoted is narrative color that establishes no canon.

Before promotion, a transcript fact is a **pending write**. After promotion, the ledger holds the fact — with provenance pointing at the ruling or transcript that established it — and the transcript becomes historical evidence of how that canon was established, not the canon itself.

Promotion is the mechanism that satisfies Invariant 3 and reconciles the precedence and durability axes (Section 4.2).

## 5.4 Repository Validation Barrier

Every mutation that creates or promotes durable canon must pass the **Repository Validation Barrier** before the Runtime declares it successful. This applies to campaign initialization, checkpoints, session close, campaign-termination promotion, and any equivalent durability boundary.

The barrier runs against Persistence, not Context:

1. determine the complete live mutation target set, including the identifier registry when identifiers are allocated,
2. write every target and read each one back from Persistence,
3. run deterministic repository validation against the resulting live state,
4. only after validation passes, create an immutable checkpoint or report the mutation as saved or promoted.

The validator enforces the structural constraints owned by the Data Model (`011_ENGINE_DATA_MODEL.md`, Sections 1.4, 3.1, and 12.3): registry coverage and high-water bounds, one live definition per referenced identifier, referential integrity, universal Persistent Object fields, Canonical Record references, and placeholder rejection. Immutable save snapshots are excluded from live duplicate-definition checks because they intentionally preserve copied historical state; their contents and manifest are verified through checkpoint completeness and read-back.

A validation failure is an execution error. It fails the checkpoint or promotion claim, but it is not by itself a canonical contradiction and does not erase grounded play. The Runtime reports the incomplete targets, repairs the live mutation when possible, and reruns the barrier. It must not create an immutable checkpoint from failing state or describe that state as successfully promoted.

The validation procedure must be mechanical and deterministic. A Runtime Profile may select the tool appropriate to its substrate, but may not replace the barrier with an interpreter's unaided assertion that the repository appears valid. The architectural reasoning is recorded in Decision 054.

---

# 6. Persistence

**Persistence** is the durable substrate: the repository and everything version-controlled within it.

The repository is the sole system of record. All durable canon lives here. A fact that is not in the repository, after a promotion barrier, is not preserved.

## 6.1 Persistence and Saves

A save is an immutable checkpoint of canonical ledgers (Rules Section 13). Persistence aligns with the Save State Architecture:

- checkpoints are immutable once written (Rules Section 13.2),
- the save manifest carries metadata only, not duplicated ledger content (Rules Section 13.3),
- restoration reads from Persistence to reconstruct Context (Section 3), following Rules Section 13.4.

## 6.2 Version Compatibility

Persistence records Engine, World, Campaign, and Save Format versions (Rules Section 13.5). The Runtime surfaces version mismatches explicitly on restoration. This document defines no automatic migration; reconciling a mismatch is handled explicitly when it arises (Rules Section 13.6).

---

# 7. Determinism and Reproducibility

The Runtime provides **canon-determinism**, not output-determinism.

- **Required — canon-determinism.** Given the same loaded canon, the same rules, and the same resolved die results, the Runtime produces state consistent with that canon and never contradicts established facts. Replaying from the same ledgers and the same rulings reproduces the same canonical state.
- **Not required, and not achievable — output-determinism.** The exact prose of narration, and the exact inference of detail the engine leaves unspecified, may vary between runs. This variation is expected and is not a defect.

Randomness in the simulation is owned by the die (Rules Section 4.5), not by Interpreter judgment. The Interpreter must not substitute its own preference for a resolved roll.

Reproducibility is anchored to the repository, not to the substrate. Two different substrates executing the same repository must reach the same canonical state, even though their narration differs.

---

# 8. Error and Contradiction Handling

The Runtime detects, classifies, and resolves contradictions rather than proceeding past them. It applies Rules Section 2.9. This document states the Runtime's obligations in doing so.

## 8.1 Procedure

1. **Detect and pause.** Pause affected resolution when a contradiction is found (Rules Section 2.9).
2. **Classify.** Determine the kind of error:
   - a transcription or recording error,
   - a genuine conflict between canon sources,
   - an engine gap (unspecified situation, Section 1.4),
   - a load or version error (Section 8.2).
3. **Resolve** by precedence (Section 4), for canon conflicts.
4. **Record** the resolution with provenance (Section 5.1).
5. **Escalate** when unresolvable: surface the contradiction and request a ruling. The Runtime does not proceed on a guess.

## 8.2 Execution-Specific Errors

Beyond canon conflicts, the Runtime handles errors arising from execution itself:

- **Missing ledger** — a scope-responsible ledger does not exist. Treat as Section 3.2 (not loaded vs. not established).
- **Stale load** — the Context no longer reflects Persistence. Reload before asserting.
- **Broken cross-reference** — a record points at a record that does not exist. Flag and resolve; do not silently repair by invention.
- **Version mismatch** — recorded versions differ from current versions (Section 6.2). Surface explicitly on restoration.

## 8.3 Unestablished Is Not Contradiction

A fact absent from loaded canon is not, by that absence, a contradiction. Newly generated detail that is consistent with higher-tier canon is promotable at the lowest tier with provenance (Section 1.3; Rules Section 2.1); only a fact that conflicts with higher-tier canon triggers contradiction handling (Section 8.1). The Runtime does not discard grounded work because it also produced unestablished-but-consistent detail: it promotes what is consistent, reconciles what conflicts, and, for load-bearing new canon, requests a ruling rather than silently accepting or rejecting it. Operational classification at the promotion barrier is defined by the active Runtime Profile.

---

# Runtime Execution Summary

When executing Chronicle Engine, the Runtime:

1. Establishes grounding from Persistence at session start (Section 2.1).
2. Loads a working set into Context, guided by Simulation Priority and the save manifest (Section 3).
3. Resolves facts through Canon, distinguishing scope from precedence (Section 4).
4. Infers only within boundaries, holding inference provisional (Section 1.3).
5. Applies Action Resolution faithfully, respecting the die (Section 1.5).
6. Advances from the Player's last declared intent to the next meaningful player choice, then yields control (Section 1.6).
7. Records changes through Mutation, with provenance and consistency (Section 5).
8. Promotes in-session canon to durable ledgers at every promotion barrier (Section 5.3).
9. Validates the resulting live repository before creating a checkpoint or claiming successful promotion (Section 5.4).
10. Detects and resolves contradictions rather than proceeding past them (Section 8).
11. Commits all pending canon to Persistence at session close (Section 2.2).

---

# Document Authority

This document defines the Runtime: how Chronicle Engine is executed.

It is normative for runtime behavior and subordinate to the Engine Rules where they overlap. If this document conflicts with the Engine Rules, the Engine Rules take precedence until the discrepancy is resolved through the formal revision process.

It references the Engine Rules and the data-model concepts they contain. It does not restate or redefine them.

Operational procedure and substrate-specific technique belong in Runtime Profiles under `docs/`, not in this document.

The architectural reasoning behind this document is recorded in `001_ENGINE_DECISIONS.md`, Decision 041 (Runtime Model), Decision 042 (Durable Canon and Promotion Obligation), and Decision 054 (Repository Validation Barrier).
