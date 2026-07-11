# Chronicle Engine

## Prototype Alpha - Engine Improvement Backlog

**Status:** Active
**Layer:** Design Retrospective / Validation (400-499) - non-canonical
**See:** `420_PROTOTYPE_PLAN.md`

---

# Purpose

Concrete proposed engine changes arising from Prototype Alpha. This is the actionable output of the campaign: the candidate refinements (and any genuine architectural gaps) that the Engine Postmortem will weigh before Version 0.2 is marked complete and Version 0.3 planning begins.

Each item is classified as a **refinement** (adjustment within the accepted architecture) or a **gap** (a missing foundational abstraction requiring new architecture). A prototype dominated by gaps rather than refinements indicates Prototype Alpha failure per the plan's failure criteria.

---

# Backlog Format

| ID | Source issue (421) | Proposed change | Owning document | Class (refinement/gap) | Priority |
|----|--------------------|-----------------|-----------------|------------------------|----------|

---

# Backlog

## PA-001 - Public and Cultural Knowledge-State Holders

**Status:** Observe During Prototype
**Severity:** Low
**Source:** Verra canonical world generation

Knowledge States require an Entity ID for the holder. Public and cultural states were attached to the Halden Settlement entity as a population proxy.

Validate during play whether settlement-level representation is sufficient or whether a reusable model for populations, communities, traditions, or publics is required. This may become awkward when several social groups within one settlement disagree, a religion spans multiple settlements, a cultural tradition survives without a current institution, or the "public" is fragmented by class, language, profession, or region.

Do not introduce a new Persistent Entity type without evidence from play.

---

## PA-002 - Location Granularity

**Status:** Observe During Prototype
**Severity:** Low
**Source:** Verra canonical world generation

Resource location currently references Halden rather than the specific guildhall or storage location. Settlement-level location loses the distinction between settlement, institution premises, building, room, and container.

Validate whether settlement-level location is sufficient for campaign continuity or whether institution premises, buildings, or containers need a clearer structural representation. Do not add a building subsystem now.

**Reinforced (campaign generation):** carried personal inventory - Ilse's instrument case (`ENT-000019`) and letter (`ENT-000020`) - also uses settlement-level location with possession by the character, because a Character is not a Place or container per the resource `location` field. The "on person" case strengthens this item.

---

## PA-003 - Institution Asset Index Versus Resource Ownership

**Status:** Review During Prototype
**Severity:** Medium
**Source:** Verra canonical world generation

The Glaziers' Guild lists a Resource as an institutional asset while the Resource object separately records the Guild as owner.

This is consistent but duplicates the same fact - a single-source-of-truth risk.

Validate whether institution asset lists should be:
- derived indexes,
- non-authoritative references,
- or separate operational holdings with clearly distinct semantics.

Resource ownership should remain the authoritative ownership source unless play demonstrates otherwise. The likely long-term rule: resource ownership is authoritative on the Resource object; institution asset lists are derived references or indexes, not separate ownership declarations.

---

## PA-004 - Operational Ledgers Own No Persistent Objects

**Status:** Observe During Prototype
**Severity:** Low
**Source:** Prototype Alpha campaign generation

The objectives, changelog, and current-state ledgers (`140`, `170`, `180`) are Canonical Records that carry a `REC-` identifier and universal block but own no persistent objects (`subjects: []`). The "a ledger is a Canonical Record with subjects" model fits entity-holding ledgers cleanly but is awkward for purely operational or narrative ledgers.

Validate whether operational ledgers should be persistent objects at all, or whether a lighter non-owning document class is warranted. Do not change the model yet.
