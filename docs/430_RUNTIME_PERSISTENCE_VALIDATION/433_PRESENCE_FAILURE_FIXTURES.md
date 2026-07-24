# Chronicle Engine

## Version 0.3 Fixture — Presence Failure Cases

**Status:** Fixture Ready  
**Canonicity:** Non-canonical  
**Governing Contracts:** Decision 073; Data Model Sections 7.1, 9.2, 12.3; Runtime Section 5.4

---

# Capability Under Test

Presence has one structural owner, and invalid structured presence cannot cross the Repository Validation Barrier.

---

# Cases

## P-01 — Active Character has no location

Starting state: an active campaign Character block omits `canonical_state.location`.

Required result: validation fails with the active-Character location invariant. The Runtime may repair live mutable state from higher-precedence evidence, but it may not checkpoint the invalid state.

## P-02 — One entity declares two locations

Starting state: one object block contains two `location` fields.

Required result: validation fails because presence has more than one structured value.

## P-03 — Carried resource also asserts a place

Starting state: a carried Resource records a combined value such as `carried by ENT-000125 at ENT-000087`, or carries both a `carried by` location and an independent place.

Required result: validation fails. Presence-by-possession names the possessor alone; the resource's physical place derives through that possessor.

## P-04 — Carried resource names an undefined possessor

Starting state: a carried Resource uses `carried by ENT-999999` where the identifier has no live definition.

Required result: referential-integrity validation fails.

---

# Prohibited Shortcuts

- Treating `180_CURRENT_STATE.md` prose as a second owner.
- Treating a Character as a Place or container.
- Adding coordinates or a spatial graph.
- Copying the possessor's place onto every carried item.
- Creating an immutable checkpoint and promising to repair it later.

---

# Architectural Resolution

The accepted architecture resolves every case without a new abstraction:

- the Character requirement and duplicate-location check are deterministic validator obligations;
- the bare carried-by form rejects combined possessor/place state;
- general referential integrity rejects an undefined possessor;
- and the validation barrier prevents invalid state from becoming a checkpoint.

**Architectural verdict:** Pass.  
**Operational evidence:** Execute all four mutations against a disposable repository copy and record the validator output in `431_CAPABILITY_MATRIX.md`. Do not inject them into Gatefall main.

