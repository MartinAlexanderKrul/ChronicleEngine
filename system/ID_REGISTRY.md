# Chronicle Engine

## Identifier Registry

**File:** `system/ID_REGISTRY.md`
**Status:** Active
**Governed by:** `engine/011_ENGINE_DATA_MODEL.md`, Section 1

---

# Purpose

This is the repository-level registry for persistent-object identifiers.

It holds the monotonic high-water mark for each identifier kind. Identifiers are allocated by advancing the high-water mark for the relevant kind. This file is the single source of truth for which identifiers have been issued.

The structure and rules for identifiers are defined in `engine/011_ENGINE_DATA_MODEL.md`, Section 1. This document is the operational record those rules act on.

---

# High-Water Marks

The last allocated identifier per kind. The next allocation for a kind is the high-water mark plus one. `none` means no identifier of that kind has been allocated yet.

| Kind | Prefix | Referent | Last Allocated |
|------|--------|----------|----------------|
| Entity | `ENT-` | Persistent Entity | ENT-000020 |
| Record | `REC-` | Canonical Record | REC-000016 |
| Event | `EVT-` | Event | EVT-000008 |
| Relationship | `REL-` | Relationship | REL-000018 |

---

# Allocation Log

Allocations are recorded per unit of work for traceability. The high-water marks above are the authoritative counters; this log explains what consumed each range.

| Range | Kind | Consumed by |
|-------|------|-------------|
| ENT-000001 – ENT-000017 | Entity | Prototype world Verra (`worlds/verra/`): 2 places, 3 institutions, 6 figures, 3 Knowledge Subjects, 3 resources |
| REC-000001 – REC-000008 | Record | Verra ledgers: places, notable figures, knowledge subjects, resources, three institution ledgers, seed events |
| EVT-000001 – EVT-000007 | Event | Verra seed events: four foundings, fever validation, fever condemnation, rivermason decline |
| REL-000001 – REL-000015 | Relationship | Verra: 9 Knowledge States, 1 governance, 5 membership |
| ENT-000018 – ENT-000020 | Entity | Campaign Prototype Alpha (`campaigns/prototype_alpha/`): Ilse Varn, instrument case, letter of introduction |
| REC-000009 – REC-000016 | Record | Prototype Alpha campaign ledgers (100, 110, 120, 130, 140, 160, 170, 180) |
| EVT-000008 | Event | Ilse arrives in Halden (campaign start) |
| REL-000016 – REL-000018 | Relationship | Prototype Alpha: Ilse/Corvane introduction; Ilse's marsh-fever and tempered-glass Knowledge States |

---

# Allocation Invariants

These invariants are binding. They are defined in `engine/011_ENGINE_DATA_MODEL.md`, Section 1.4, and restated here because this is the record they govern.

1. **Atomicity.** Registry allocation and object creation must occur in the same atomic repository change.
2. **Registration.** No persistent object may be committed without its identifier being registered here.
3. **No reuse.** Identifiers are never reused, including after an object is destroyed or archived. A retired identifier's number is never issued again.
4. **Branch reconciliation.** Concurrent branch allocations must be reconciled before merge. If two branches allocate the same next value, one branch's objects are reassigned to fresh identifiers and the high-water mark advanced, before the branches are merged.

---

# Allocation Procedure

To allocate an identifier of a given kind:

1. Read the high-water mark for that kind.
2. Compute the next value (high-water mark plus one, or the first value if `none`).
3. Create the object with that identifier and update the high-water mark, in the same atomic repository change (Invariant 1).

Identifiers are zero-padded to six digits by current convention (for example `ENT-000173`). Padding is presentational; the value is the integer.

---

# Known Limitation — Concurrent Git Allocation

Because allocation is a monotonic counter in a version-controlled file, two branches developed in parallel can allocate the same identifier before merge.

This is a known and accepted limitation of the document-driven form. It is resolved by Invariant 4 — reconcile before merge — not by abandoning readable monotonic identifiers. Chronicle Engine 0.1.2 deliberately does not adopt UUIDs or distributed allocation. Distributed identity is reconsidered only if the engine gains a concurrent runtime beyond its current form.
