# Chronicle Engine

## Engine Data Model

**File:** `011_ENGINE_DATA_MODEL.md`
**Status:** Workshop Draft
**Engine Version:** 0.2.0
**Data Model Version:** 0.1.7
**Layer:** Engine (000–099)

---

The Data Model defines the stable structural contract of Chronicle Engine.

The Data Model does not define behavior, and it does not define execution.

It defines what a persistent thing *is*, how it is *identified*, and how records *reference* one another — the shape on which the Rules act and the Runtime operates.

---

# Purpose

The engine separates three concerns that must not be conflated:

- **`010_ENGINE_RULES.md`** defines *what is true* — behavior and simulation.
- **`011_ENGINE_DATA_MODEL.md`** (this document) defines *how truth is structured* — identity, shape, and references.
- **`012_ENGINE_RUNTIME.md`** defines *how the engine operates* — how a runtime loads, resolves, mutates, and persists that structure.

This document **references, but does not restate,** the Engine Rules and the Runtime. Where it names a behavior — when to promote, what ownership means, how canon is resolved — it names it and its owning document. It does not redefine it.

Ledger templates instantiate this structure. World and campaign files hold actual state. Neither is defined here.

---

# The Most Stable Layer

The Data Model is the most stable layer of the architecture.

Every other layer references its identifiers and structures. If the Data Model churns, everything that points at it breaks. It must therefore change least often and be amended most conservatively: any change requires the strongest architectural scrutiny, a schema-version increment, and explicit migration consideration.

The intended stability gradient, from most stable to most volatile:

```text
Data Model (011)  →  Rules (010)  →  Runtime (012)  →  Profiles / Templates  →  World / Campaign / History
```

**Stability is not authority.** The Data Model is authoritative on *structure* and is the most stable layer. It does not outrank the Engine Rules on *behavior*. Where this document and the Rules meet, the Rules take precedence on questions of behavior, and this document takes precedence on questions of structure, until any discrepancy is resolved through the formal revision process.

---

# 1. Identifier System

Every persistent object is identified by a stable identifier that carries no meaning.

## 1.1 Identifier Kinds

There are four kinds of identifier, one per direct specialization of the Persistent Object:

```text
ENT-   Persistent Entity
REC-   Canonical Record
EVT-   Event
REL-   Relationship
```

The prefix denotes the *kind of identifier*. It is metadata about the identifier, not about the thing identified. An identifier still encodes nothing about the referent's name, type, scope, legal status, or any other mutable attribute.

## 1.2 Identifier Format

An identifier is a kind prefix, a hyphen, and a zero-padded monotonic integer:

```text
ENT-000173
REC-000042
EVT-004120
REL-000088
```

Identifiers are **semantic-free, opaque, immutable, globally unique per kind, and never reused.** They do not embed the world, the campaign, or any scope. Globally unique per kind means an `ENT-` number is unique across the entire repository, not merely within one world.

## 1.3 Allocation and the Registry

Identifiers are allocated monotonically per kind by the repository-level registry at `system/ID_REGISTRY.md`. Minting an identifier — including at promotion (Section 11) — consults the registry, allocates the next value for that kind, and increments the high-water mark.

## 1.4 Registry Invariants

The following invariants govern allocation. They are structural and binding.

1. **Atomicity.** Registry allocation and object creation must occur in the same atomic repository change. An identifier is never allocated without the object it names being created in the same change, and no object is created without its identifier being allocated in the same change.
2. **Registration.** No persistent object may be committed without its identifier being registered.
3. **No reuse.** Identifiers are never reused, including after an object is destroyed or archived. A destroyed entity keeps its identifier permanently; its number is never issued again.
4. **Branch reconciliation.** Concurrent branch allocations must be reconciled before merge. Two branches that each allocate the same next value must be reconciled — by reassigning one branch's objects to fresh identifiers and advancing the registry — before the branches are merged.

## 1.5 Known Limitation — Concurrent Git Allocation

Because allocation is a monotonic counter in a version-controlled file, two branches developed in parallel can allocate the same identifier before merge. This is a known limitation of the document-driven form.

It is resolved by Invariant 4 (reconcile before merge), not by abandoning readable monotonic identifiers. Chronicle Engine 0.1.2 deliberately does **not** adopt UUIDs or distributed allocation to avoid this case. Semantic-free readable identifiers are preferred for a document substrate edited by humans and interpreters; distributed identity is reconsidered only if the engine gains a concurrent runtime beyond its current form.

---

# 2. Persistent Object

The **Persistent Object** is the root structural abstraction. Anything with a stable identifier that persists across time and carries provenance is a Persistent Object.

## 2.1 Universal Fields

Every Persistent Object, regardless of specialization, has:

```text
Object ID          one identifier of the appropriate kind (Section 1)
Canonical Record   the one record that owns its authoritative state (Section 2.3)
Provenance         the provenance envelope (Section 8.2)
Schema Version     the Data Model version the object conforms to (Section 12.2)
Status             existence status: active, ended, or superseded
```

Specializations add their own fields. The universal fields are never duplicated into specializations; they are inherited from the root. This is the reason the root exists: identity, ownership of state, provenance, and schema versioning are defined once.

## 2.2 Specializations

The Persistent Object has exactly four direct specializations, and the hierarchy is two levels deep. No deeper hierarchy is defined.

```text
Persistent Object
  ├─ Persistent Entity   (ENT-)   a simulated subject         → Section 4
  ├─ Canonical Record    (REC-)   a record owning state       → Section 8
  ├─ Event               (EVT-)   a timed, immutable fact      → Section 2.4
  └─ Relationship        (REL-)   a link between two entities  → Section 10
```

## 2.3 The Canonical Record Invariant

**Every persistent object has exactly one authoritative Canonical Record that owns its state.**

Other records may reference or describe an object — historical documents, chronicles, other ledgers — but exactly one record is authoritative for its state at any instant. This formalizes and tightens the record-responsibility requirement of Rules Section 3.10 from a soft field into a hard, exclusive rule, and it is the structural basis for the Runtime's canonical lookup (`012_ENGINE_RUNTIME.md`, Section 4).

The invariant has base cases, so it does not regress infinitely:

- **Persistent Entities and Relationships** each have a *distinct* owning ledger record.
- **Canonical Records** are self-authoritative: a record is its own authority. The invariant bottoms out here.
- **Events** are immutable and owned at creation by the record that first records them.

Record responsibility may transfer — for example when a campaign-scoped institution is promoted to a world-layer ledger (Rules Section 9.1). Transfer is **atomic**: there is exactly one Canonical Record at any instant, and the handover is an explicit, provenance-bearing Event.

This sense of *owner* — the record that owns an object's state — is distinct from resource **ownership** (Rules Section 7.1), which is the legal or practical right of an entity over a resource. The two must not be conflated (Section 9.1).

## 2.4 Event

An **Event** (`EVT-`) is a timed, immutable fact: something that happened at a point in simulated time. Mutations, transfers, transformations, promotions, and rulings are recorded as Events.

An Event is immutable once created. Provenance (Section 8.2) points at Event identifiers. An Event's historical importance is classified by the tiers already defined in Rules Section 3.5 (Immediate, Archived, Historical, Mythic); this document does not redefine those tiers.

An Event may carry any of three optional, typed audit blocks:

```yaml
counter_deltas:
  - subject: ENT-000125
    counter: skills.rupture.successful_uses
    delta: 1

progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: evidence-recorded
    candidate: twin_fang
    scene: cicero-gate-clear
    disposition: qualifying

participation_audits:
  - subject: ENT-000139
    result: record-updated
    record: REL-000066
```

For `counter_deltas`, `subject` is a defined Persistent Entity identifier, `counter` is a non-empty profile-owned path on that subject, and `delta` is a non-zero integer. A declared delta is part of the immutable causal record; it is not reconstructed later from prose.

For `progression_audits`, `subject` is a defined Persistent Entity identifier, `domain` is a non-empty profile-owned audit domain, and `result` is one of `none`, `evidence-recorded`, or `pending-classification`. `candidate`, `scene`, and `disposition` are absent when `result` is `none`. They are required otherwise: `candidate` and `scene` are stable profile-owned keys, and `disposition` is `qualifying` or `ambiguous`. One Event may carry several audit entries when it contains several distinct scenes or subjects.

For `participation_audits`, `subject` is a defined Persistent Entity identifier that also appears in this Event's own `participants`, and `result` is one of `record-updated` or `no-change`. `record` is required when `result` is `record-updated` and absent otherwise: it names the Canonical Record, entity, or relationship the promotion actually moved, and that named object must itself reference this Event. `no-change` asserts that the subject was considered and nothing about it changed — a negative assertion that is deliberately not machine-verifiable, and exists so that validation can tell "nothing moved" from "nobody looked" (Decision 085).

These blocks define evidence shape, not game semantics. The active World Rule Profile decides which Events require an audit, what a counter path means, what makes evidence qualify, what threshold changes a candidate's state, and which Events fall inside a participation coverage set.

---

# 3. Reference by Identifier

**All references between persistent objects are by identifier, never by name.**

A name is for humans. An identifier is for the machine and the interpreter. Referencing by identifier is what makes rename, disguise, and reclassification free, and it is what prevents a runtime from resolving references by fragile string-matching of names.

## 3.1 Referential-Integrity Invariants

- Every referenced identifier must exist and be registered.
- Every required field (Section 4.1) must be present.
- No record may be orphaned: every record has its place in the Canonical Record invariant (Section 2.3).
- No identifier may be silently collapsed into another, and none may be reused (Section 1.4).

These are invariants the Runtime checks (`012_ENGINE_RUNTIME.md`, Section 8).

---

# 4. Persistent Entity

A **Persistent Entity** (`ENT-`) is the specialization for a simulated subject: a character, institution, settlement or kingdom, resource, place, or discovery whose individual identity matters across time.

The behavior of persistent entities — when they are promoted, what their lifecycle stages mean, how transformation preserves identity, what end states signify — is defined in Rules Section 3.10 and the domain sections that build on it. This document defines their **structure**.

## 4.1 Minimal Required Fields

Every Persistent Entity has, in addition to the universal Persistent Object fields (Section 2.1):

```text
Type          one of the closed Persistent Entity Types (Section 4.2)
Subtype       optional; open, domain- or world-defined
Alias(es)     at least one name record (Section 5)
Scope         personal, local, regional, world, or historical
Lifecycle     emerging, active, transforming, declining, or an end state (Rules §3.10)
Canonical     the object's canonical state (Section 7)
State
Relationships references to Relationship objects (Section 10)
```

The universal `Canonical Record` field (Section 2.1) is the entity's record responsibility: the one ledger record that owns its authoritative state.

This five-value set is the canonical structural entity-scope taxonomy.

Terms such as `institutional` and `civilizational` may still appear elsewhere in the repository as behavioral, descriptive, or historical language, but they are not additional structural scope values.

## 4.2 Type and Subtype

**Type** is a small, engine-owned closed set. **Subtype** is open.

```text
Type (closed)         Character, Institution, Settlement/Kingdom,
                      Resource, Place, Discovery/Knowledge
Subtype (open)        e.g. Military Institution (Rules §9.7, Decision 034);
                      worlds and domains may define their own
```

This document owns the closed Type set and the fact that Subtype is open. The *meaning* of each Type is owned by its Rules domain section (Characters §5, Institutions §9, Politics §10, Resources §7, and so on).

## 4.3 Optional Domain Extensions

Beyond the minimal fields, a Persistent Entity may carry typed, additive **extension blocks** keyed by its Type or Subtype — for example institution governance and membership, settlement population and territory, or resource condition and provenance chain.

This document defines only the **extension mechanism**: extensions are additive, typed, and optional. The *content* of each extension is owned by its Rules domain section. The *layout* of each extension is owned by the ledger template. This keeps the core schema minimal while allowing every domain to extend it without altering the root.

Data Model 0.1.5 reserves three domain-neutral extension shapes used with Section 2.4 Events: `tracked_counters`, `progression_audit_baselines`, and `progression_candidates`. Their typed fields and invariants are defined in Section 12.4.3. A world opts into and names their paths, domains, evidence tests, thresholds, and rendered meanings; entities in worlds that do not opt in carry none of them.

---

# 5. Stable Entity Identity

An entity's identity is its `ENT-` identifier. It is never a name, a type, or a legal status. Those are mutable attributes; the identifier is the invariant they hang on.

## 5.1 Aliases

Names are modeled as **aliases**: a list of time-scoped, provenance-bearing name records on the entity. Each alias carries a quality:

```text
current     the name in present use
former      a prior name, retained
cover       a disguise or assumed name (scoped to who believes it)
legal       a name under a specific legal or institutional regime
mythic      a name used in legend or belief
posthumous  a name applied after an end state
```

The entity's identity does not change when its aliases do. A rename adds a `current` alias and demotes the prior to `former`. A disguise adds a `cover` alias.

## 5.2 The Identity Cases

The identifier, aliases, and the identity-continuity graph (Section 6) together resolve every identity transformation:

```text
Renamed                     new current alias; prior → former.  Same ID.
Disguised                   cover alias, scoped to believers.   Same ID.
Legally reclassified        type/status attribute change + version + provenance.  Same ID.
Transformed                 transforms-from self-event; continuity asserted.  Same ID.
Destroyed                   status → ended; records retained.   ID kept.
Mythologized                status/end recorded; myths link to the ID as evidence.  ID kept.
Merged                      new result ID + merges-from links; sources → ended (absorbed).
Divided                     original ID + new IDs with splits-from links recording inheritance.
Rediscovered as another     new alias on the ID; if uncertain, a disputed
name                        possibly-same-as link between IDs, reconciled explicitly later.
```

---

# 6. Identity-Continuity Graph

Continuity of identity across lifecycle changes is modeled as a graph of typed links between entity identifiers. The link set is closed:

```text
transforms-from   same identity, changed form (self-referential continuity)
succeeds /        a successor entity continues a predecessor's identity
succeeded-by
splits-from       an entity derived from a division of another
merges-from       a result entity absorbed one or more sources
emerges-from      a promoted entity emerged from an aggregate (Section 11)
possibly-same-as  a suspected but unproven identity link
```

## 6.1 Certainty and Reconciliation

Every identity link carries **provenance** and a **certainty** qualifier:

```text
asserted      established as canon
disputed      claimed but contested
believed      held in-world without confirmation
false-claim   asserted in-world but known to be untrue
```

This expresses Rules Section 3.10's principle — *when identity continuity is uncertain, preserve the uncertainty rather than force a clean answer* — structurally. A suspected rediscovery is a `disputed possibly-same-as` link, not a merge.

**Two identifiers are never silently collapsed into one.** If canon later confirms that two identifiers denote the same entity, reconciliation is an explicit, provenance-bearing Event, consistent with the Runtime's no-silent-canon rule (`012_ENGINE_RUNTIME.md`, Invariant 2). Nothing is ever deleted.

---

# 7. Canonical State versus Historical Evidence

An object's past is preserved as evidence, not as a second, replayable state.

## 7.1 Canonical State

**Canonical State** is the single authoritative present truth of an object, held in its one Canonical Record (Section 2.3). It is mutable and versioned. It is *what is true now*.

This is the structural name for what Rules Section 3.10 calls an entity's *current state*; the two are the same concept.

**Presence has exactly one structural owner: the entity's `canonical_state.location`** (Decision 073). Where an entity is *now* is held as the typed Location reference (Section 9) in its single Canonical State, and nowhere else. No other ledger may restate an entity's presence as authoritative content: a ledger that presents presence — such as a campaign's current-state ledger (Rules Section 13.2) — presents and points at this field without owning it. Presence is distinct from occupancy, possession, and ownership (Section 9.2).

## 7.2 Historical Evidence

**Historical Evidence** is the body of records *about* an object's past: superseded record versions, campaign chronicles, historical documents, and myths. Historical evidence is not authoritative state. It may be biased, incomplete, forged, or contradictory (Rules Section 2.8, Section 2.6, Decision 042).

When canonical state is updated (Section 12.1), the superseded version *becomes* historical evidence, carrying the provenance of its change. The Data Model does not mandate an append-only event log; historical continuity is preserved through record versioning, provenance, and promotion to Historical Documents, consistent with Rules Section 13.6.

## 7.3 Tracked State

**Tracked State** is present truth that carries no identifier. It is authoritative and mutable like Canonical State, but it is not object-shaped: it lives as fields inside a holding record rather than in a Canonical Record of its own, and it mints nothing from the registry.

This is the same structural line Section 11 draws through resources — counted quantities inside a holding record on one side, identified Persistent Entities on the other — generalized to any subject the simulation must carry but most instances of which never matter individually. Promotion is the act of minting an identifier (Section 11), and it applies here unchanged: tracked state that becomes campaign-durable is promoted to an Event or Entity at that moment, and only then.

Tracked state is still canon. It is read, settled, and checkpointed like any other present truth, and a Runtime may not treat it as scratch because it has no identifier. What it does not carry is referential integrity: nothing may point at it by identifier, because there is none to point at.

## 7.4 Pending World-Side Commitment

A **pending world-side commitment** is tracked state recording that an NPC or institution has undertaken to act by a stated time (Decision 082).

```text
Owner        the Entity or institution that owes the action
Subject      what was undertaken
Due          a due time or window on the campaign clock
Status       pending | met | partially-met | lapsed | deferred
Provenance   the Event, ruling, or transcript reference that established it
```

`Due` is required. An undertaking with no time a clock can reach is not recordable as a commitment, which is deliberate: an intention without a due time is the shape that cannot be settled and therefore cannot be distinguished from one nobody remembered.

Both an on-the-record NPC promise and a Runtime-authored expectation of NPC behavior are recorded this way. The second is not a lesser kind — the failure case that produced Decision 082 was an explicitly authored, correctly reasoned NPC-behavior trigger that carried a due window in prose and never fired.

`Status` moves at the due time, from the owner's own state and knowledge, whether or not the player is present or aware the commitment exists (`012_ENGINE_RUNTIME.md` Section 2.4; Rules Sections 1.8 and 3.4). A `lapsed` commitment records the grounded reason it lapsed and a `deferred` one carries a new `Due`. **A lapse is a settlement, not an absence:** settled silence is information the fiction may use, while unsettled silence is indistinguishable from an obligation that was forgotten.

Rules Sections 1.8, 3.4, and 3.6 own *when* a world actor plausibly commits and how long it takes; a World Rule Profile owns its own actors' cadence. This section owns the structure.

## 7.5 Supply Source

A **supply source** is tracked state recording that an entity or institution generates opportunity — work, custom, patronage, advancement — on its own schedule (Decision 083; Rules Section 3.4.1).

```text
Owner        the Entity or institution that generates
Kind         what it generates
Cadence      how often, as its world declares, or derived from the source's canon
Advanced     the campaign-clock anchor through which supply has been settled
Available    zero or more standing openings, each tracked state until taken
```

`Advanced` is the field that makes supply honest. It is the exact analogue of the recovery anchor (Decision 078): it records how far the source has been settled, so a later read cannot be confused with a first generation, and repeated inquiry inside one span cannot produce a second draw. **A source is advanced by the clock and read by the inquiry; these are different operations and only the first may create anything.**

An advance that yields nothing sets `Advanced` forward with `Available` unchanged or empty. That is a recorded settlement, not a skipped one — the same negative-assertion discipline Decision 080 requires of progression audits, and for the same reason: it is what distinguishes *nothing qualified* from *nobody looked*.

`Available` openings are tracked state under Section 7.3 and mint no identifier. An opening is promoted to an Event when it becomes campaign-durable — taken, bid on, refused consequentially, or cited later — exactly as a commitment is under Section 7.4.

### 7.5.1 Claimants — An Opening Is Contested

A standing opening may carry who else can take it (Decision 089):

```text
Claimants    who else may take this opening — a named entity, a role, or a
             world-declared pool
Claimed      the actor that took it, and the campaign-clock anchor at which
             the claim settled
```

Both fields are optional, and their absence is meaningful rather than incomplete: **an opening with no claimants is one nobody else wants, and behaves exactly as openings behaved before this section existed.** A world adopting none of this loses nothing it had.

A claim settles at the same clock boundary that advances the source, by ordinary resolution against the claimants' own established standing — capability, proximity, interest, competing obligations (Rules Section 4; Decision 060). It is never resolved by a rule that raises or lowers the protagonist's odds, which Law VII forbids, and the protagonist is himself a claimant like any other: if he acts first he takes it.

An unclaimed opening simply remains. There is no decay and no expiry pressure, and **no opening becomes more likely to be taken because the protagonist was told about it** — that is a drama timer, which Rules Section 1.2 and Decision 003 forbid. An advance in which nobody claimed anything sets the anchor forward and records that it did, on the same negative-assertion discipline as an empty generation.

A pool or role is sufficient and usually correct. Naming every rival individually is the population model Version 0.4 exists without (PA-001).

Rules Section 3.4.1 owns when and how far supply advances and the limits on what it may produce. A World Rule Profile owns its own sources' rates and capacities. This section owns the structure.

---

## 7.6 Standing Need

A **standing need** is tracked state recording that an entity or institution requires something, on its own schedule (Decision 088; Rules Sections 1.8 and 3.4).

```text
Holder       the Entity or institution that has the need
Subject      what is needed
Due          when it is needed by, or the cadence on which it recurs
Advanced     the campaign-clock anchor through which the need has been settled
Status       open | met | partially-met | unmet | withdrawn
Outcome      what met it or why it went unmet, and when
```

**`Holder` is an entity that already exists in canon.** A need is a property of an actor, never of an aggregate — which is the line that keeps this construct out of population simulation and leaves PA-001 standing. An institution needs staff because that institution exists and has a stated shortfall, not because a modelled populace wants something.

Section 7.5 is its mirror and the two are deliberately separate. A supply source records what an actor *offers*; a standing need records what it *wants*. They frequently pair — a need commonly produces an opening — and they are recorded apart because **a need that produces no opening is precisely the case the model could not previously express.** Where only supply existed, an opportunity's output was modelled while its cause was not, so a withdrawn posting took its reason with it and nothing carried forward that the thing still needed doing.

`Advanced` carries the same weight it does for a supply source: it records how far the need has been settled, so a later read is not confused with a first settlement.

**A need may be met by anyone, including nobody.** Settlement resolves from the holder's own state, standing and reach — not from the protagonist's involvement — and a need met by a third party is the ordinary case. `Status` moves at the due time or cadence boundary whether or not the player is present or aware the need exists (`012_ENGINE_RUNTIME.md` Section 2.4; Rules Sections 1.8 and 3.4).

**An `unmet` need records why, in `Outcome`.** This is Decision 080's negative-assertion discipline unchanged: settled failure is information the fiction may use, while unsettled silence is indistinguishable from a need nobody carried. An institution that failed to staff a contract and one that staffed it must not look identical at rest.

A need is tracked state under Section 7.3 and mints no identifier. It is promoted to an Event when it becomes campaign-durable, exactly as a commitment is under Section 7.4.

Rules Sections 1.8 and 3.4 own when a world actor plausibly needs something and how long fulfilment takes; a World Rule Profile owns its own actors' cadence. A world that declares no cadence still settles a need forward from its established canon by ordinary resolution (Rules Section 4; Decision 060) rather than assuming it lapsed. This section owns the structure.

## 7.7 Disposition

A **disposition** is the authored interiority of a Character: what it wants, what it protects, what it withholds, and how it behaves in a scene (Decision 091).

It is **canonical state** under Section 7.1, held on the Character's own record. It is not tracked state and not description: it is a property of who the actor *is*, which the clock does not settle and narration may not contradict.

```text
Want         what the actor is pursuing, concrete enough to act on
Fear         what it protects against, and the flaw that protection creates
Secret       what it holds and will not volunteer, and who already knows
Voice        how it behaves in a scene -- register, habit, tell, what it does under pressure
```

**Required for any Character a Runtime will play.** A Character that exists only as a referent — a name on a roster, the author of a document, a casualty in a record — needs no disposition until it speaks or acts. One that speaks needs all four.

**That distinction is declared, not inferred.** A Character carries `disposition_class`, one of `played` or `referent`, and its absence means `played`:

```text
disposition_class    played | referent    (absent means played)
```

The field exists because *a Character a Runtime will play* is not decidable from a record: a name on a roster and a character who speaks next session are the same shape at rest. The writer declares which one it is and the enforcement point reads the declaration — the only detector shape that survived measurement in this version (Decision 090). A `referent` that is then played escapes the check; that residue is real and is stated rather than designed around.

Coverage is **prospective and declared per world**, on the Section 12.4.4 model: a World Rule Profile names the entity identifier its obligation begins at, and Characters recorded before it are backlog rather than defects. A world that declares nothing carries no obligation — an engine-general default would impose the authoring cost on every world from one world's evidence (Decision 069).

**The failure this exists to close is that the engine had only prohibitions.** A Runtime holds the whole world's truth and an actor holds a fraction of it, and every structure the engine offered for that gap was negative: the NPC channel test governs what an actor may *not* know, and a closed-channel record makes one such ruling outlive its scene. Those stop an actor saying wrong things. **They cannot produce a character, and an actor can pass every one of them while remaining the narrator with a name.**

Each field answers a specific way that failure manifests:

- **`Want` is what lets an actor open a scene instead of answering one.** An actor pursuing nothing can only react, and reacting means drawing its content from the Runtime's context — which is the narrator's context, holding everything.
- **`Fear` is what makes it act against its own interest**, which is most of what distinguishes a person from an optimizer. An actor that always plays its position correctly is a solved position, not a character.
- **`Secret` is the structural reason an actor does not simply say what it knows.** Without one, nothing stands between an actor's knowledge and its speech, and the shortest path from *the Runtime knows it* to *the NPC said it* runs directly through an actor with nothing to withhold.
- **`Voice` is what makes two loaded actors non-interchangeable.** Manner is precisely what compression removes, so an actor recalled rather than read converges on one register regardless of what its record says.

`Secret` names who already knows, because a secret with no holders but its owner cannot leak, be traded, or be discovered, and a secret nobody can reach is indistinguishable from an absent one.

A world may specialise this — adding fields its own fiction requires — and a World Rule Profile owns whether a given class of actor is playable. This section owns the structure.

## 7.8 Belief

A **belief** is tracked state recording that an actor holds something to be true. **A belief may be false, and that is the entire reason the construct exists** (Decision 091).

```text
Holder       the Entity that holds it
Claim        what it holds to be true
Ground       how it came to hold it: seen, told, inferred, or assumed
Confidence   certain | confident | suspects | doubts
Accuracy     true | false | partly-true | unresolved
Since        when it formed, with the Event or provenance that formed it
```

**Knowledge and belief are different constructs and a simulation needs both.** The channel test asks whether an actor *may* know a fact — was it present, was it told through a channel that exists, does its role give records access, is it common knowledge. That is a **filter on truth**: it decides which true facts an actor holds. It has no expression for something an actor holds that is *not* true, so an actor that satisfies it holds a strict subset of reality and nothing besides. Every belief such an actor has is correct. That is not a person; it is an instrument reading the world at reduced resolution — and it is why a correctly-filtered NPC still sounds like the narrator, only less informed.

`Accuracy` is **owner-facing and never rendered**. The actor experiences a belief as knowledge; the distinction exists so the Runtime can play the actor honestly, not so it can signal to the player which of them are wrong.

**A false belief is not an error queued for correction.** It is canon until the fiction changes it, it survives contact with someone who knows better, and an actor may well refuse the correction — `Confidence` is what governs whether it does. A world in which every mistaken actor is corrected on first contact has no rumour, no reputation, no misplaced trust and no grudge held for the wrong reason.

A belief is tracked state under Section 7.3 and mints no identifier. It is promoted to an Event when it becomes campaign-durable — acted upon consequentially, disclosed, traded, or disproved in play.

## 7.9 Agenda

An **agenda** is tracked state recording what an actor is actively pursuing, and it **advances on the campaign clock whether or not anyone is watching** (Decision 091).

```text
Holder       the Entity or institution pursuing it
Objective    what it is trying to bring about
Method       how it goes about it, from its own capability, standing and reach
Advanced     the campaign-clock anchor through which the agenda has been settled
Status       active | achieved | abandoned | blocked | overtaken
Outcome      what moved, or why nothing did, and when
```

`Advanced` carries exactly the weight it carries for a supply source (Section 7.5) and a standing need (Section 7.6): it records how far the agenda has been settled, so a later read cannot be mistaken for a first settlement and repeated enquiry inside one span cannot produce a second advance.

**An agenda is a distinct thing from a commitment, and the difference is who it is owed to.** A commitment (Section 7.4) is owed *to someone*, carries a required `Due`, and is discharged. An agenda is owed to nobody, has no due time, and is *pursued* — it advances by degrees, stalls, gets overtaken, and may never conclude. An actor with commitments and no agenda does only what it has promised, which is an actor that exists exclusively in relation to the protagonist.

**This is the thing elapsed time does to the world that nothing else covered.** Decisions 082, 083 and 088 settle what the world *owes*, *offers* and *wants*, and the Decision 084 line settles what falls *due*. None of them is an actor doing something on purpose. An agenda is the only construct here in which the world acts from its own intent rather than from an obligation, an inventory, or a clock — which is why a campaign without it has NPCs who exist only while on screen.

**Settlement is from the holder's own state, standing and reach**, never from the protagonist's involvement, and an agenda that advanced while the player was elsewhere is the ordinary case rather than the exception. An `Outcome` recording that nothing moved, and why, is a settlement exactly as a positive one is (Decision 080).

An agenda is tracked state under Section 7.3 and mints no identifier. It is promoted to an Event when it becomes campaign-durable, exactly as a commitment is under Section 7.4.

---

# 8. Canonical Record

A **Canonical Record** (`REC-`) is the specialization that owns the authoritative state of entities and relationships. Every persistent object has exactly one (Section 2.3).

## 8.1 Record Role

The *authority and role* of records — canonical ledger, historical document, chronicle, session summary, machine-readable save — is defined behaviorally in Rules Section 2.8 and is not redefined here. This document references that taxonomy and defines the record's **structure**.

## 8.2 Provenance Envelope

Every record and every material update carries a provenance envelope. This formalizes the fields enumerated in prose in Rules Section 2.8:

```text
Source           the Event ID, ruling reference, or transcript reference
                 that caused the record or update
Scope            the scope the record is responsible for
Game Date        the in-world date/time of the represented event
Real Date        the real repository date/time when the record was updated
Uncertainty      any unresolved uncertainty
```

The serialized provenance keys are `game_date` and `real_date`. They are deliberately
domain-named: `game_date` is fiction, while `real_date` is repository provenance and
must never be calculated from, copied from, or advanced with the campaign clock.
Each accepts an ISO 8601 timestamp or an honestly less-precise ISO 8601 date when the
exact real clock time is unavailable. A fictional calendar may use its authored
world notation in `game_date`.

---

# 9. References

All references below are typed pointers to identifiers (Section 3). None are names.

```text
Ownership     → owner Entity ID, with quality: legal, social, magical, or practical (Rules §7.1)
Possession    → possessor Entity ID; distinct from ownership (Decision 022)
Location      → place Entity ID, a region descriptor, or carried by <possessor ENT- id> (§9.2)
Containment   → container Entity or Resource ID; a specialization of location
Cross-ledger  → an identifier plus the target's record responsibility, so the
                Runtime knows which Canonical Record to load
```

## 9.1 Ownership Is Not Record Ownership

Resource **ownership** (above, Rules Section 7.1) is an entity's right over a resource. The **Canonical Record** of an object (Section 2.3) is the record that owns the object's *state*. These are different relations and use different words deliberately.

## 9.2 Presence, Occupancy, and Possession

Three location-shaped relations are distinct, and each has exactly one owner (Decision 073):

```text
Presence      where an entity is now.  Owned solely by the entity's own
              canonical_state.location (Section 7.1).
Occupancy     standing state of a Place: its controlling, resident, or
              contained entities (occupants).  Never who is present now.
Possession    which entity holds a resource (Decision 022).
```

**`occupants` is standing state, never presence.** A Place's `occupants` records controllers, residents, or contained entities. It changes when tenancy, control, or containment changes — never when someone walks in or out. This elevates the disambiguation formerly carried as a template comment (`templates/objects/place.md`) to a normative structural statement.

**Carried inventory is presence-by-possession.** A carried Resource's `canonical_state.location` takes the form `carried by <possessor ENT- id>`, a Location form in its own right. Its physical presence is the possessor's `canonical_state.location`, resolved through the possessor rather than stored independently. A carried-by location names an existing possessor and asserts no place of its own, so it cannot contradict the possessor's location. This expresses "on person" (PA-002) without making a Character a Place or a container.

The invariant these relations establish — a character is in exactly one place, and every ledger that says otherwise is stale — is enumerated in Section 12.3 and enforced through the Repository Validation Barrier (`012_ENGINE_RUNTIME.md`, Section 5.4).

A **Relationship** (`REL-`) is a first-class persistent object, not a field on an entity.

```text
Endpoints    exactly two Entity IDs
Type         the kind of relationship
Qualities    e.g. trust, rivalry, obligation (Rules §5.6); governance quality
             and legitimacy band (Rules §10.2, §10.3); diplomatic quality (Rules §10.5);
             membership rank (Rules §9.4)
State        the relationship's own current state and history
Texture      how these two behave toward one another — the manner a reader of
             Type, Qualities, and State alone would get wrong (Decision 076)
```

`Qualities` answers *what this relationship is* — its standing, direction, and rank. `Texture` answers *how it is expressed*. The two are not interchangeable: standing is a scalar the simulation reads structurally, while manner is the observable behavior that makes a restored relationship recognizable as the same one.

**`Texture` is required for a relationship whose endpoints are both Characters and whose type is not institutional, once play has established any.** It is optional and normally empty for membership, governance, jurisdiction, and diplomatic links, which have standing but no manner. `tools/validate_repository.ps1` checks presence only — that the field exists where required — and never adjudicates its content, for the reason Decision 071 gives when it declines to check whether an index row is still true.

What belongs in it: habits, verbal patterns, physical tells, forms of address, what each party does with this person and no other, and the firsts that established them. What does not: interior state the Player Intent Domain reserves to the player, and anything the fiction has not actually shown. `Texture` records observable behavior, not inferred feeling.

It exists because the loss it prevents is invisible. A relationship recorded as a role label is well-formed, resolves cleanly, and passes every gate — identically to one recorded well. A Runtime restoring from the first does not play the relationship badly; it plays a different relationship, correctly, from an accurate file (Decision 076).

Rules Section 9 models membership as a relationship, and Rules Section 10 models governance, legitimacy, and diplomacy as relationships. That requires relationships to be identifiable, bidirectional objects with their own state. Governance, membership, and diplomatic state therefore reference `REL-` identifiers rather than duplicating relationship state on each entity. The *meaning* of each relationship type remains owned by its Rules domain section.

---

# 11. Resources: Generic versus Individual, Aggregated versus Promoted

The Data Model draws one structural line through resources (Rules Section 7.12, Decision 024).

```text
Generic / aggregated     counted as quantities inside a holding record.  No identifier.
                         (grain, common arrows, a population, a stockpile)
Individual resource      a Persistent Entity of Type Resource.  Has an ENT- identifier
                         and the full Persistent Object contract.
                         (heirloom, prototype, famous manuscript, artifact)
```

**Promotion is the structural act of minting an identifier.** When an aggregated or generic subject gains individual identity (Rules Section 3.10, Section 7.12), the Runtime mints a new `ENT-` identifier through the registry and creates the entity, optionally linking it to the aggregate it came from with an `emerges-from` link (Section 6).

This document owns the structural act of allocating an identifier. Rules Section 3.10 owns *when* promotion is warranted. The Runtime owns *performing* it at execution time (`012_ENGINE_RUNTIME.md`, Section 5). Three layers, one concept.

The same line runs beyond resources. Section 7.3 generalizes it as **Tracked State**: any subject the simulation carries without an identifier until it becomes durable enough to need one.

---

# 12. Schema Versioning, Validation, and Migration

## 12.1 Record Versioning

A record's canonical state changes over time through material updates, each carrying provenance (Section 8.2). Versioning is per material update, not per keystroke. Superseded versions become historical evidence (Section 7.2).

## 12.2 Schema Versioning

Every record declares the Data Model version it conforms to (Section 2.1). The Data Model version is the schema version recorded as the Campaign Schema version in the save manifest (Rules Section 13.3).

## 12.3 Validation Constraints

A conforming repository satisfies the referential-integrity invariants (Section 3.1) and the registry invariants (Section 1.4): every referenced identifier exists and is registered, every required field is present, no record is orphaned, and no identifier is reused or silently collapsed. These are invariants the Runtime checks through the mechanical Repository Validation Barrier (`012_ENGINE_RUNTIME.md`, Section 5.4; Decision 054); they are not a formal schema language.

Every Persistent Object in live mutable canon declares the current Data Model version in `schema_version`. The Repository Validation Barrier rejects a stale live schema tag. Immutable checkpoints are excluded from this live-state check and retain their captured schema; their mismatch is handled explicitly through restoration and migration (Section 12.4).

A conforming repository also satisfies the presence invariants (Section 9.2; Decision 073): every entity holds at most one `canonical_state.location`; a Character entity in a live campaign ledger declares exactly one; and a carried Resource's location uses the `carried by <ENT->` form alone, naming a defined possessor and asserting no additional place.

A conforming canonical file also contains **no unresolved template placeholder tokens**. A filled world or campaign file holds real identifiers and values only; the placeholder tokens used by templates (`ENT-XXXXXX`, `REC-XXXXXX`, `EVT-XXXXXX`, `REL-XXXXXX`, `<required: …>`, `<optional: …>`, `<generated: …>`) must not appear in a canonical file. The template conventions are defined in `templates/000_TEMPLATE_CONVENTIONS.md`.

## 12.4 Migration

The Data Model defines the compatibility contract: records are schema-tagged, and the Runtime surfaces version mismatches on restoration (`012_ENGINE_RUNTIME.md`, Section 6.2). Automatic migration is deferred to Version 0.6 — Persistence (Rules Section 13.6). Reconciling a schema mismatch is handled explicitly when it arises, not silently.

### 12.4.1 Data Model 0.1.2 → 0.1.3

Decision 076 adds `Texture` to Relationship structure. This is an additive schema change, but it is still a Data Model change and therefore advances the schema version from 0.1.2 to 0.1.3.

Migration of live mutable state:

1. Retag every live Persistent Object and Canonical Record from schema 0.1.2 to 0.1.3.
2. For each non-institutional Relationship whose endpoints are both Characters, preserve an already-authored `texture`; where play established the relationship but no manner survives in evidence, record an explicit *not recorded* marker rather than inventing one.
3. Leave institutional relationships without `texture` unless play established relevant manner.
4. Run the Repository Validation Barrier after the complete live object graph is migrated.

Immutable checkpoints are never edited. A checkpoint captured under 0.1.2 or earlier retains that schema version and surfaces a Campaign Schema mismatch on restoration. The Runtime restores it into mutable live state, performs the explicit steps above at the readiness gate, retags the restored graph to 0.1.3, and validates before play continues. This metadata-and-coverage migration consumes no fictional time, allocates no identifier, and changes no historical event.

### 12.4.2 Data Model 0.1.3 → 0.1.4

Decision 077 replaces the ambiguous serialized provenance keys `event_time` and
`record_time` with `game_date` and `real_date`. The meaning is not new; the names
make the already-distinct time domains impossible to confuse without an explicit
schema violation.

Migration of live mutable state:

1. Retag every live Persistent Object and Canonical Record from schema 0.1.3 to 0.1.4.
2. Rename `provenance.event_time` to `provenance.game_date`, preserving its value.
3. Rename `provenance.record_time` to `provenance.real_date` only when it is genuine repository provenance. If the old value was demonstrably derived from the fictional clock, replace it with the most precise real date supported by repository evidence; never invent precision.
4. Update current manifests, templates, bindings, and compatibility declarations, then run the Repository Validation Barrier.

Immutable checkpoints remain byte-unchanged at their captured schema and field
names. Restoring a 0.1.3-or-earlier checkpoint first loads it as historical input,
then applies every required migration in order to the mutable live graph before
validation and play. This migration consumes no fictional time, allocates no
identifier, and changes no fictional event.

### 12.4.3 Data Model 0.1.4 → 0.1.5

Decisions 079 and 080 add reconcilable counter evidence and persistent progression-candidate audits. Both are additive, optional mechanisms, but their structure advances the schema version.

Migration of live mutable state:

1. Retag every live Persistent Object and Canonical Record from schema 0.1.4 to 0.1.5.
2. For every existing world-declared tracked counter, add a `tracked_counters` entry on its owning entity:

   ```yaml
   tracked_counters:
     - path: skills.rupture.successful_uses
       baseline_value: 16
       baseline_as_of: EVT-000130
       current_value: 16
   ```

   `path` is unique per owning entity; all values are integers; `baseline_as_of` is the migration Event. Future Events after that baseline declare every change in `counter_deltas`. The invariant is `current_value = baseline_value + Σ(delta)` over later live Events for the same subject and path.
3. For each profile-declared progression domain activated on a subject, add:

   ```yaml
   progression_audit_baselines:
     - domain: gatefall.skill_formation
       baseline_as_of: EVT-000130
   progression_candidates:
     - domain: gatefall.skill_formation
       key: twin_fang
       signature: two-equipped-quickknives.same-target.separate-strikes
       status: ratified
       evidence:
         - EVT-000071#ashfield-elite-counter
       resolution_event: EVT-000129
       result_ref: skills.twin_fang
   ```

   `domain` plus `key` is unique per subject. `status` is one of `tracking`, `pending-classification`, `pending-ratification`, `ratified`, or `rejected`. Each evidence reference is a defined Event identifier plus a non-empty scene key and may occur only once within that candidate. `resolution_event` and `result_ref` are required for `ratified`; a rejected candidate instead records a profile-owned rejection reason.
4. Do not rewrite historical Events to add audit blocks. Supported historical evidence may be cited by migrated candidate state. Beginning after `baseline_as_of`, every Event in the profile-declared coverage set must carry its `progression_audits` result, including `none`.
5. Update current manifests, templates, bindings, and compatibility declarations, then run the Repository Validation Barrier.

Immutable checkpoints remain byte-unchanged at their captured schema and fields. Restoration applies 0.1.2 → 0.1.3, 0.1.3 → 0.1.4, and 0.1.4 → 0.1.5 in order as applicable. The 0.1.5 migration consumes no fictional time, derives no missing historical evidence, and allocates no identifier beyond a campaign's recorded migration Event.

### 12.4.4 Data Model 0.1.5 → 0.1.6

Decision 085 adds `participation_audits`, a third optional Event audit block recording, per participating subject, whether the promotion moved that subject's record. It is additive and optional, but it is a Data Model change and therefore advances the schema version.

Migration of live mutable state:

1. Retag every live Persistent Object and Canonical Record from schema 0.1.5 to 0.1.6.
2. Do not rewrite historical Events to add the block. Coverage is **prospective**: it begins at the Event identifier the active World Rule Profile declares as its participation baseline, and applies only to Events allocated after it.
3. A world that declares no participation coverage set carries no obligation and no entries. There is no entity-side extension and no per-subject state to create — unlike 0.1.5, this migration adds nothing to any entity.
4. Update current manifests, templates, bindings, and compatibility declarations, then run the Repository Validation Barrier.

Immutable checkpoints remain byte-unchanged at their captured schema. Restoration applies each migration in order as applicable, through 0.1.5 → 0.1.6. This migration consumes no fictional time, derives no historical evidence, creates no entity state, and **allocates no identifier**: the baseline is the campaign's existing Event high-water mark at adoption, not a newly minted migration Event.

### 12.4.5 Data Model 0.1.6 → 0.1.7

Decision 091 adds Disposition (Section 7.7), Belief (Section 7.8), and Agenda (Section 7.9). **Only the first of the three moves this version**, and the distinction is the whole content of this contract.

- **Belief and Agenda are tracked state under Section 7.3.** They mint no identifier, are held in records that already exist, and change no Persistent Object's canonical structure. They land on the Decision 082 / 083 / 088 / 089 precedent, under which tracked state does not advance the schema.
- **Disposition is canonical state on a Character**, and Section 7.7 says so in its own words. Four fields become **required** on an existing Persistent Object specialization. That is the Decision 076 shape — `Texture` on Relationship, Section 12.4.1 — which advanced 0.1.2 → 0.1.3 and authored a contract, and it is why this one exists.

This is recorded because a reader arriving at Sections 7.7–7.9 will see three sections from one decision and one schema advance, and the asymmetry is deliberate rather than an omission.

Migration of live mutable state:

1. Retag every live Persistent Object and Canonical Record from schema 0.1.6 to 0.1.7.
2. **Do not backfill dispositions.** Coverage is **prospective** and is declared per world, exactly as participation coverage is (Section 12.4.4): it begins at the entity identifier the active World Rule Profile names as its disposition baseline and binds only Characters recorded at or after it. A world that declares no disposition coverage carries no obligation.
3. A Character within coverage carries `want`, `fear`, `secret` and `voice` in its `canonical_state`, **or declares itself a referent**:

   ```yaml
   canonical_state:
     disposition_class: referent
   ```

   `disposition_class` is one of `played` or `referent`, and its absence means `played`. The opt-out exists because *"a Character a Runtime will play"* is not mechanically decidable — a name on a roster and a character who speaks next session are the same shape at rest. The writer declares the classification and the gate reads it, which is the only detector shape that survived measurement in this version (Decision 090). **The residue is a misfiled class**: a Character declared `referent` that is then played escapes the check, and that is written here rather than implied away.
4. Existing Characters below a world's declared baseline are **backlog, not defects.** They are backfilled by play under save discipline, one record at a time, and no gate demands them.
5. Update current manifests, templates, and bindings, then run the Repository Validation Barrier.

**World-profile compatibility declarations are world authoring and are not moved by this contract.** A `206_WORLD_RULE_PROFILE.md` compatibility line advances with its own profile version, and nothing gates it against the current Data Model — Reikon has declared `Data Model 0.1.4` across two schema advances with every gate green, which is the standing evidence that this surface is documentation rather than a binding. Prior contracts listed it among the things to update; none of them did. Recording the gap is the accurate treatment, and closing it is a separate change against the surface itself.

Immutable checkpoints remain byte-unchanged at their captured schema. Restoration applies each migration in order as applicable, through 0.1.6 → 0.1.7. This migration consumes no fictional time, derives no historical evidence, creates no entity state, and **allocates no identifier**: no Character gains a disposition by migrating, and the baseline is an entity high-water mark a world declares at adoption rather than a newly minted migration Event.

---

# 13. Document Authority

This document defines the Data Model: the stable structural contract of Chronicle Engine.

It is authoritative on structure and is the most stable layer of the architecture. It is subordinate to the Engine Rules on behavior. If this document conflicts with the Engine Rules on a question of behavior, the Engine Rules take precedence until the discrepancy is resolved through the formal revision process.

It references the Engine Rules and the Runtime. It does not restate or redefine them. Ledger templates instantiate this structure and are defined separately; world and campaign files hold actual state.

The architectural reasoning behind this document is recorded in `001_ENGINE_DECISIONS.md`, Decision 043 (Persistent Object and Data Model Structural Contract) and Decision 044 (Stable Entity Identity).
