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
| Grounding — NPC channel | Before any NPC line carrying a protagonist-private specific, or asserting a fact about the player character beyond present visible conduct | Resident per-turn |
| No silent canon | When durable canon is authored | Resident per-turn, backed by the mechanical barrier (Section 5.4) |
| Promotion | At each durability boundary; obligation tracked per turn | Deferred barrier (Sections 2.2, 5.3), with resident promotion-obligation tracking |
| Canon-determinism | When state is written | Resident per-turn, backed by the mechanical barrier (Section 5.4) |

This obligation is substrate-general: any substrate whose default execution can diverge from an invariant must site enforcement at the point of divergence. A substrate that provably cannot violate an invariant records that as its enforcement point.

The **NPC channel** row is Grounding applied to dialogue rather than a fifth invariant: an NPC asserting a fact it has no in-fiction channel to is the Runtime treating its own knowledge as canon, which Invariant 1 already forbids. It is listed separately because it has its own moment of violation. It is sited resident for the reason Section 5.3 gives — a full channel test carried *only* by fetched reference is the configuration Decision 055 rules out, and in practice it did not fire: one campaign recorded four leaks in a single session, including three on one thread after two corrections, while a complete and well-written fetched treatment of the rule already existed.

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

When canon does not settle a question, the Interpreter first classifies the ambiguity, because the three classes resolve differently.

- **Unknown in-world.** The fact itself is what the fiction withholds. The Interpreter resolves this through Discovery (Rules Section 2.5, Law VI) or preserves the uncertainty deliberately (Rules Section 3.10). It does not force a clean answer.
- **Unnamed but entailed.** The world's established parameters imply the subject exists; canon has simply never named this instance. The Interpreter **authors it** under Section 1.3 — consistent with loaded canon, grounded in established texture, entering at the lowest canon tier with provenance — and promotes it under Section 8.3 once it becomes load-bearing. The class covers any subject the simulation carries: a person, an institution, a settlement, a record, a precedent, a historical event.
- **Unspecified by the engine.** The rules do not cover the situation. The Interpreter resolves this by inference within Section 1.3. If the gap is material and inference is unsafe, the Interpreter requests an explicit ruling rather than guessing.

**Absence from the record is evidence about the record, not about the world.** Where canon declares a population, capacity, trade, membership, or precedent in the aggregate, the unnamed remainder exists, and naming a member of it is authoring rather than invention. Authoring within these limits is not the fabrication the Rules forbid: fabrication asserts what canon does not support, and is already bounded by Section 1.3's consistency limit and Section 8.1's contradiction handling. Declining to author an entailed subject is not the conservative reading — it is a refusal to simulate, and Rules Sections 1.4 and 3.10 require the opposite, detail arriving as the subject becomes relevant to play.

Misclassifying *unnamed but entailed* as *unknown in-world* is the common failure, because both present as "canon does not answer." They are distinguished by what is missing: the second is missing a fact, the first only a name. Deferral is correct only where a settled world fact withholds the subject; the silence of the record is not such a fact, and an in-fiction deferral offered in its place creates a pending world-side commitment that must then be recorded and settled (`011_ENGINE_DATA_MODEL.md` Section 7.4).

Whether an opportunity *obtains* is a supply question, settled from the source's own clock and never generated at the point of asking (Rules Section 3.4.1; Decision 083). *Who or what it turns out to be*, once it obtains, is this class. Section 3.4.1 governs the generation of opportunity, not the naming of participants, and it is not grounds for withholding a name.

Authoring an entailed subject carries one obligation the permission does not imply: **a newly authored entity is checked for identity collision before it is named.** The Runtime reads the campaign's cast roster and the scope's entity records, and on a match — full name or surname alone — chooses differently, unless the fiction is deliberately buying the coincidence and says so. The failure mode is specific and was observed within a day of this class being introduced: the name that surfaces while authoring is disproportionately one the session used a few exchanges earlier, so the collision is likelier than chance rather than unlucky. An exact duplicate is rejected by the Repository Validation Barrier (Section 5.4); a partial one is a judgment the Runtime makes at authoring time and the barrier does not adjudicate.

**The check is performed before the name is spoken, not at the durability boundary.** The barrier runs at a checkpoint or a session close, which can be an entire session after a name entered play — so a rejection there arrives when the only repair left is a retraction inside the fiction, and the partial case never reaches it at all. The comparison itself is decidable at either moment; what differs is the cost of acting on the answer, which at authoring time is a different name and nothing else. A Runtime Profile may therefore declare a naming-time collision check and the sources it reads, on the same basis as any other declared dispatch (Section 0.4), and where a profile declares one the check is run before a freshly authored name is narrated. The barrier is unchanged and remains the backstop: it still rejects the exact duplicate, and it still does not adjudicate the partial one, because a shared surname between two existing records is ordinary and no checker can decide whether it was meant.

**Runtime uncertainty is never a world fact.** An unresolved question may not be discharged by having a character postpone it. A delay narrated because the *Runtime* has not decided converts an answerable question into an open thread, and because fictional time advances only as play drives it, that thread may never come back on its own — so the deferral is not a neutral pause but a durable cost, carried by the player. A character may postpone only what that character's own state, role, and access make them unable to answer now. Before narrating a delay, the Runtime establishes what the character must do to obtain the answer and that they cannot do it in the present scene; where the answer is available to them, the scene that asks the question is the scene that answers it.

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

**A settlement that declines a claim binds every derived record written in the same pass.** Where a canon-bearing Event's own settlement refuses a claim — recording it as corrected in play, retracted, or not carried into canon — no ledger derived from that Event may assert it. The Event governs, and the derived write is not a second opportunity to decide.

This is stated because the opposite happened and nothing stopped it. In `F-016` a Runtime-authored disagreement between two characters was **identified as invention by the settlement and explicitly declined**, and the NPC ledger and Current State carried it anyway — one of them elevating it to a standing tension between the protagonist and his partner, against the very Event it derived from. The claim then survived a checkpoint and needed a forward repair Event of its own. **A derived record contradicting its own source is not a disagreement between two ledgers; it is one ledger overruling a barrier that had already ruled**, and no gate reads prose closely enough to catch it.

The operational procedure for session close — including the session report — is defined by the active Runtime Profile.

## 2.3 Context-Preservation Barrier

A Runtime must not knowingly allow unresolved transcript-only canon to cross a context compaction, context-window exhaustion, or equivalent loss of working memory. Before a known or detected context reduction, it executes a checkpoint promotion barrier after settling the current exchange and before advancing the simulation again.

The active Runtime Profile defines detectable pressure signals and a deterministic fallback cadence for hosts that expose no context telemetry. The fallback is mandatory: lack of a pre-compaction hook does not permit indefinite transcript-only play.

If the host compacts without warning, the first subsequent operation is re-grounding from Persistence. The Runtime must not continue from the compacted summary alone. It reloads the latest verified checkpoint and live ledgers, reconciles any surviving exact post-checkpoint record, and either promotes that recoverable span or identifies it as unverified. Canonical play remains stopped whenever the lost span cannot be grounded exactly enough to promote without fabrication.

A context-preservation checkpoint is a normal immutable checkpoint under Rules Section 13. It changes no fiction by itself and requires the same complete target derivation, read-back, repository validation, and honest failure reporting as a manual checkpoint.

## 2.4 Canonical Time Settlement

When an active world declares a deterministic time-based mechanic, the Runtime
must carry an exact canonical campaign-time anchor at the precision and in the
calendar/timezone that world declares. A response that advances fictional time
establishes its elapsed duration and new anchor, settles every applicable
time-based rule from the old anchor through the new one, and updates in-flight
state before the next action reads it.

World-declared fractional carry is canonical state. Equivalent fictional time
must produce identical settlement regardless of how many Runtime responses span
it. A status view, checkpoint, or session close reads and promotes already-settled
state; none may be the first operation that notices elapsed recovery. Where the
fiction establishes only a time range, the Runtime may narrate within that range
but must resolve an exact anchor before a time-dependent action or deadline is
settled. Decision 078 owns this mechanism; the active World Rule Profile owns the
clock representation, rates, modes, rounding, and migration.

The same boundary settles **pending world-side commitments** (Decision 082;
`011_ENGINE_DATA_MODEL.md` Section 7.4). When elapsed time reaches a commitment's
due time or window, the Runtime settles it from the owner's own state and
knowledge — the NPC channel test governs that settlement as it governs dialogue —
and records the resulting status, including a `lapsed` with its grounded reason.
Settlement does not depend on the player being present, asking, or knowing the
commitment exists; the world acts on its own account (Rules Sections 1.8, 3.4).
An open commitment is never discharged by offering the player an action in its
place. As with recovery, no status view, checkpoint, or session close may be the
first operation that notices a commitment has come due.

The same boundary advances an **agenda** (Decision 091;
`011_ENGINE_DATA_MODEL.md` Section 7.9). Where a commitment is settled *at* its
due time, an agenda has no due time and is advanced *through* the elapsed span
from its `Advanced` anchor, from the holder's own capability, standing and
reach. It may progress, stall, be blocked, or be overtaken by something else that
happened in the span, and an `Outcome` recording that nothing moved is a
settlement exactly as a positive one is. Advancement does not depend on the
player being present, asking, or knowing the agenda exists — this is the one
construct in which the world acts from its own intent rather than from an
obligation it owes, an inventory it holds, or a clock it is subject to, and an
agenda that moved while the protagonist was elsewhere is the ordinary case.

**An agenda is advanced by the clock and read by the enquiry, and only the first
may move it.** This is Decision 083's rule for supply, carried unchanged: asking
what an actor has been doing settles the agenda *before* the answer and never
generates the answer, so a protagonist who asks twice in one span learns the same
thing twice rather than finding that the world advanced because he looked.

**A commitment is recorded when it is made, not when it comes due.** Everything
above is unreachable for an undertaking that was never written down, and
narration is not a record: a promise that exists only as dialogue dispatches
nothing, which is Decision 082's own `OBJ-23` finding restated at the moment the
obligation is created rather than the moment it lapses. When a response has a
world actor undertake future action — a callback, an enquiry, an order, a
delivery, a decision promised by a date — the Runtime records that commitment in
the **same response that narrates it**, before yielding, carrying its owner,
subject, and due time. An undertaking whose due time cannot be established is not
recordable under Section 7.4 and is therefore not narratable as an undertaking:
the Runtime resolves the timing, or has the actor decline rather than promise.
Where the Runtime will not record the undertaking, it does not offer it.

**Standing needs settle at the same boundary** (Decision 088;
`011_ENGINE_DATA_MODEL.md` Section 7.6; Rules Sections 1.8 and 3.4). Elapsed
time advances each established need through its due time or cadence and records
the result. A need is met from the holder's own state, standing and reach —
**by anyone, including nobody, and a need met by a third party is the ordinary
case.** An `unmet` need records why it went unmet. Settlement does not depend on
the player being present, asking, or knowing the need exists: an institution
that failed to staff its work and one that staffed it must not look identical
at rest, which is the whole reason the construct exists.

**Opportunity supply settles at the same boundary** (Decision 083;
`011_ENGINE_DATA_MODEL.md` Section 7.5; Rules Section 3.4.1). Elapsed time
advances each established supply source through its cadence and records the
result, including an empty one. A player inquiry **reads** settled supply and
never advances it: where a source's `Advanced` anchor lags the current clock,
the Runtime settles it forward from that anchor before answering, and does not
generate at the point of asking. Two inquiries inside one unadvanced span return
the same answer.

**A contested opening settles inside that advance** (Decision 089;
`011_ENGINE_DATA_MODEL.md` Section 7.5.1). Where a standing opening carries
claimants, the same advance resolves whether one of them took it, by ordinary
resolution against those claimants' own established standing — never by a rule
that raises or lowers the protagonist's odds (Law VII). The protagonist is a
claimant like any other: if he acted first, he has it.

Two constraints bound this and are not negotiable at the profile layer. **An
unclaimed opening simply remains** — no decay, no expiry pressure, and no
opening becomes more likely to be taken because the protagonist was told about
it, which would be a drama timer (Rules Section 1.2; Decision 003). And **an
advance in which nobody claimed anything is recorded**, on the same
negative-assertion discipline as an empty generation: a settled *nobody took it*
is information, while an unsettled one is indistinguishable from an advance that
never ran. Inquiry reads a settled claim and never triggers one.

**A declared deadline settles at the same boundary, and it is the one obligation
no dispatch can reach.** Where world-side state carries an authored deadline — a
posting that expires, a window that closes, a countdown a profile makes
deterministic — the advance that crosses it settles it, from the rule that
authors it, recording the outcome whether or not the protagonist was present,
told, or affected. This completes the set: commitments, needs, supply and
contested openings all settle on elapsed time, and a deadline is the fourth thing
time does to the world.

**It needs saying separately because a deadline has no actor.** The others are
reached by someone doing something — an owner owing a callback, a source
producing, a claimant taking — so the exchange that settles them has an event to
notice. **A deadline is reached by time alone, and elapsed time is the background
against which settlement happens rather than a change anyone settles.** A
dispatcher keyed to what an exchange *changed* therefore cannot see it: there is
no delta, and the absence is not distinguishable from nothing having been due.
Section 2.5's manifest is a dispatch index and must not be the only route to a
deadline for exactly this reason:
**a domain whose candidate deltas nothing produces never intersects anything**,
and the posting breaks unobserved while every gate stays green. This is `F-002`'s recorded recurrence: a Gate posting
reached its deadline, its profile made the settlement deterministic and
discretion-free, its world declared a trigger domain for it, and it still went
four days unsettled because the domain waited on a delta no document emits.

**As with recovery and commitments, no status view, checkpoint, or session close
may be the first operation that notices a deadline has passed.**

## 2.5 Profile-Declared Proactive Trigger Settlement

When an active World Rule Profile declares a proactive trigger audit, the
Runtime must load the governing profile section at readiness and execute the
audit at every trigger point that profile names. This is an automatic
state-settlement obligation: it does not wait for the player to request a
status view, ask whether a trigger exists, or name the mechanic.

The Runtime audits once before yielding a scene opening and again after every
resolved exchange that may have established or changed a declared trigger
condition. If the profile's eligibility contract is satisfied, the Runtime
settles the declared state change and notification before yielding. If the
profile requires a later player choice—such as accepting an offered quest—the
automatic operation stops at that choice; it never chooses for the player.

An audit does not create its own facts. Eligibility derives only from loaded
canon and the just-resolved exchange, and a failed audit produces no trigger.
The active Runtime Profile must site this obligation in its resident per-turn
layer. A proactive trigger carried only by fetched reference material has no
enforcement point and is therefore not implemented.

A declared domain names its settlement kind from a closed vocabulary the engine
owns: `offer`, `automatic_attachment`, `progression_audit`, and
`world_state_settlement`. A profile may not invent a fifth.

A profile may declare a **world-state settlement** domain for state the world
carries on its own behalf rather than presents to the player — a pending
world-side commitment coming due, a supply source falling behind its cadence, or
any deterministic world rule the profile owns. Such a domain settles at the
declared boundary of Section 2.4, where recovery, commitments, and supply already
settle, and introduces no new audit point. It offers nothing, attaches nothing,
and writes no `progression_audits` result; it records its settlement in the state
its eligibility heading governs, and an empty settlement is recorded as readily
as a positive one. Declaring this kind asserts that the eligibility heading
resolves the outcome without Runtime discretion. Where the profile's own rule
calls for a roll, that roll belongs to the heading under Rules Section 4 and the
dispatcher never invents one. It also
never substitutes a player prompt for a settlement the world owes itself.

A profile may declare a progression-candidate domain as one such audit. The
profile must provide a closed eligibility test, evidence unit, distinct-scene
rule, threshold, audit boundary, and settlement behavior. For every post-baseline
Event in the profile's boundary coverage set, the Runtime writes a Data Model
Section 2.4 `progression_audits` result, including `none`. A profile may batch
dangerous evidence at scene close, defer bounded non-combat evidence to the next
promotion barrier, and prohibit per-exchange candidate work. When classification
is deferred, the profile must require stable scene keys, compact pending notes,
one promotion-time audit Event, and a pre-write reconciliation of any immediate
scene-close audits from the same unpromoted span. Qualifying or ambiguous evidence
also updates the subject's persistent candidate state. Candidate recognition
never authorizes the Runtime to invent the resulting mechanic: an unauthored
Rank, cost, effect, or balance remains an owner ruling.

When a profile declares a ratification threshold, reaching it must produce a
settled result rather than a forgettable notification. A completely pre-authored
result may be granted automatically at the profile's declared settlement
boundary. An unauthored result becomes a persistent pending candidate and a
mandatory owner-adjudication item before the next gameplay scene. The Runtime
may preserve that item through a checkpoint or session close, but readiness and
scene-opening audits must surface it and prohibit rolls, NPC actions, fictional
time advance, or new scene narration until the profile-required ruling is
recorded. Several pending candidates are surfaced together; this obligation
never adds per-action candidate checks.

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
- **Not established.** The canon does not exist. The Runtime classifies the gap under Section 1.4 and resolves it there: a subject the world's parameters entail is **authored**, a fact the fiction withholds is left to Discovery, and a rules gap is inferred within boundaries or escalated. The prohibition in the bullet above is on covering a *load* failure with invention. It does not reach this case, and reading it across the two bullets is how an unnamed subject becomes a refusal instead of an authoring act.

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
- **Supersession is retirement, not demotion.** When a mutation replaces a state field's value, the old value is **removed**, not kept beside the new one under a "prior" or "superseded" label. `011_ENGINE_DATA_MODEL.md` Section 7.1 makes canonical state *what is true now*; Section 7.2 makes everything else historical evidence, which the chronicle and the immutable checkpoints already own. A demoted copy is therefore a third copy, and it is the only one that grows.

  **What this does not touch:** history is not being discarded. The narrative of every span is in the campaign chronicle by Event id, and the previous value is the previous checkpoint's own current state, byte-immutable under Rules Section 13.2. A field may still narrate *what changed to reach the present value* — that is a description of now, not a second value.

  This is stated because it was never stated. No rule, skill, or profile authored the demotion habit anywhere in the repository, and it reached 97.7% of the largest object in it — twenty-eight stacked snapshots in one campaign's `canonical_state.condition`, unmeasured because no budget reads that field. Enforced at the Repository Validation Barrier (Section 5.4), which is what runs on every save; a rule carried only by instruction would refill between checks.

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

When an Event changes a world-declared tracked counter, promotion includes the
Event's `counter_deltas` and the owning entity's corresponding `current_value`.
When a profile-declared progression audit applies, promotion includes both the
Event's `progression_audits` result and any candidate-state mutation. Promoting
only one side of either pair is incomplete.

When a profile declares a participation coverage set, promotion of an Event
inside it includes a `participation_audits` result for every Character the Event
names among its own participants — `record-updated` naming the object the
promotion actually moved, or an explicit `no-change`. The negative assertion is
required for the same reason the progression audit's `none` is: without it,
nothing distinguishes a subject whose record correctly did not move from a
subject nobody considered. A `record-updated` claim is verified against the named
object, so it is a claim the barrier can fail (Section 5.4; Decision 085).

## 5.4 Repository Validation Barrier

Every mutation that creates or promotes durable canon must pass the **Repository Validation Barrier** before the Runtime declares it successful. This applies to campaign initialization, checkpoints, session close, campaign-termination promotion, and any equivalent durability boundary.

The barrier runs against Persistence, not Context:

1. determine the complete live mutation target set, including the identifier registry when identifiers are allocated,
2. write every target and read each one back from Persistence,
3. run deterministic repository validation against the resulting live state,
4. only after validation passes, create an immutable checkpoint or report the mutation as saved or promoted.

The validator enforces the structural constraints owned by the Data Model (`011_ENGINE_DATA_MODEL.md`, Sections 1.4, 3.1, and 12.3): registry coverage and high-water bounds, one live definition per referenced identifier, referential integrity, universal Persistent Object fields, Canonical Record references, required `game_date` / `real_date` provenance (Decision 077), placeholder rejection, tracked-counter arithmetic and progression-audit coverage (Decisions 079–080), participation-audit coverage and the backing of every `record-updated` claim (Decision 085), and the presence invariants (Section 9.2; Decision 073) — each entity holds at most one current location, a live campaign's Character entities declare exactly one, and a carried Resource's location uses the carried-by form alone, naming a defined possessor and asserting no contradicting place. Immutable save snapshots are excluded from live duplicate-definition checks because they intentionally preserve copied historical state; their contents and manifest are verified through checkpoint completeness and read-back.

The barrier also enforces the settlement obligation Section 2.4 states. Where live state records a pending world-side commitment (`011_ENGINE_DATA_MODEL.md` Section 7.4), the validator checks its shape — a defined owner, a subject, one of the five statuses, a clock-reachable `Due`, and a grounded reason on a `lapsed` entry — and, against the campaign's own exact anchor (Section 2.4; Decision 078), that no commitment still stands open with a due time already behind it. **A commitment recorded and then never settled is the failure this catches**, and it is decidable because Section 7.4 already requires the due time and fixes the statuses; the barrier adds no structure of its own. What it cannot see is a commitment that was never recorded — absence of a record is precisely what would have to be detected — so a campaign holding none passes vacuously. That limit is stated rather than implied, on the same discipline Decision 085 applies to its own unverifiable half.

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

Persistence records Engine, World, World Rule Profile, Campaign, and Save Format versions (Rules Sections 13.5, 14.6). The Runtime surfaces version mismatches explicitly on restoration — including a World Rule Profile mismatch or a checkpoint captured under an unfrozen profile version, both of which halt at the readiness gate rather than resolving silently (Rules Section 14.4; Decision 074). This document defines no automatic migration; reconciling a mismatch is handled explicitly when it arises (Rules Section 13.6).

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
