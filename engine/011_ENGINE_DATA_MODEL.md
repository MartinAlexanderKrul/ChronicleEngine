# Chronicle Engine

## Engine Data Model

**File:** `011_ENGINE_DATA_MODEL.md`
**Status:** Workshop Draft
**Engine Version:** 0.1.2
**Data Model Version:** 0.1.0
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

## 7.2 Historical Evidence

**Historical Evidence** is the body of records *about* an object's past: superseded record versions, campaign chronicles, historical documents, and myths. Historical evidence is not authoritative state. It may be biased, incomplete, forged, or contradictory (Rules Section 2.8, Section 2.6, Decision 042).

When canonical state is updated (Section 12.1), the superseded version *becomes* historical evidence, carrying the provenance of its change. The Data Model does not mandate an append-only event log; historical continuity is preserved through record versioning, provenance, and promotion to Historical Documents, consistent with Rules Section 13.6.

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
Event Time       the time of the represented event
Record Time      the time the record was updated
Uncertainty      any unresolved uncertainty
```

---

# 9. References

All references below are typed pointers to identifiers (Section 3). None are names.

```text
Ownership     → owner Entity ID, with quality: legal, social, magical, or practical (Rules §7.1)
Possession    → possessor Entity ID; distinct from ownership (Decision 022)
Location      → place Entity ID, or a region descriptor
Containment   → container Entity or Resource ID; a specialization of location
Cross-ledger  → an identifier plus the target's record responsibility, so the
                Runtime knows which Canonical Record to load
```

## 9.1 Ownership Is Not Record Ownership

Resource **ownership** (above, Rules Section 7.1) is an entity's right over a resource. The **Canonical Record** of an object (Section 2.3) is the record that owns the object's *state*. These are different relations and use different words deliberately.

---

# 10. Relationships as First-Class Objects

A **Relationship** (`REL-`) is a first-class persistent object, not a field on an entity.

```text
Endpoints    exactly two Entity IDs
Type         the kind of relationship
Qualities    e.g. trust, rivalry, obligation (Rules §5.6); governance quality
             and legitimacy band (Rules §10.2, §10.3); diplomatic quality (Rules §10.5);
             membership rank (Rules §9.4)
State        the relationship's own current state and history
```

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

---

# 12. Schema Versioning, Validation, and Migration

## 12.1 Record Versioning

A record's canonical state changes over time through material updates, each carrying provenance (Section 8.2). Versioning is per material update, not per keystroke. Superseded versions become historical evidence (Section 7.2).

## 12.2 Schema Versioning

Every record declares the Data Model version it conforms to (Section 2.1). The Data Model version is the schema version recorded as the Campaign Schema version in the save manifest (Rules Section 13.3).

## 12.3 Validation Constraints

A conforming repository satisfies the referential-integrity invariants (Section 3.1) and the registry invariants (Section 1.4): every referenced identifier exists and is registered, every required field is present, no record is orphaned, and no identifier is reused or silently collapsed. These are invariants the Runtime checks; they are not a formal schema language.

## 12.4 Migration

The Data Model defines the compatibility contract: records are schema-tagged, and the Runtime surfaces version mismatches on restoration (`012_ENGINE_RUNTIME.md`, Section 6.2). Automatic migration is deferred to Version 0.6 — Persistence (Rules Section 13.6). Reconciling a schema mismatch is handled explicitly when it arises, not silently.

---

# 13. Document Authority

This document defines the Data Model: the stable structural contract of Chronicle Engine.

It is authoritative on structure and is the most stable layer of the architecture. It is subordinate to the Engine Rules on behavior. If this document conflicts with the Engine Rules on a question of behavior, the Engine Rules take precedence until the discrepancy is resolved through the formal revision process.

It references the Engine Rules and the Runtime. It does not restate or redefine them. Ledger templates instantiate this structure and are defined separately; world and campaign files hold actual state.

The architectural reasoning behind this document is recorded in `001_ENGINE_DECISIONS.md`, Decision 043 (Persistent Object and Data Model Structural Contract) and Decision 044 (Stable Entity Identity).
