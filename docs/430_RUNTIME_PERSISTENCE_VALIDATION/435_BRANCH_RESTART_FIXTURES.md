# Chronicle Engine

## Version 0.3 Fixture — Branch and Restart

**Status:** Fixture Ready  
**Canonicity:** Non-canonical  
**Governing Contracts:** Decision 053; Decision 072; Data Model Sections 1 and 2.3; Runtime Command Interface

---

# Capability Under Test

Branch and restart preserve identity, lineage, checkpoint immutability, and identifier non-reuse.

---

# Cases

## BR-01 — Branch from a checkpoint

Starting state: a campaign has a valid latest checkpoint and live continuation.

Required result:

- the original campaign and checkpoint remain unchanged;
- a new campaign instance is created;
- the forked protagonist receives a distinct entity identifier;
- the new campaign records its parent checkpoint and branch lineage;
- new identifiers advance the one repository registry monotonically;
- divergent canon is owned by distinct Canonical Records.

## BR-02 — Restart a campaign with a baseline

Starting state: a disposable campaign branch has a declared baseline checkpoint and later events have allocated identifiers.

Required result:

- live campaign ledgers return to baseline state;
- the protagonist keeps the same identifier within that campaign;
- the registry high-water marks do not roll back;
- identifiers allocated by discarded post-baseline history remain retired;
- the next new event receives a fresh identifier.

## BR-03 — Restart without a baseline

Starting state: Gatefall main has no baseline checkpoint.

Required result: `/restart` reports the unmet precondition and performs no mutation. It is not “reload latest.”

---

# Prohibited Shortcuts

- Reusing the original campaign's protagonist identifier in a parallel fork.
- Resetting the global registry.
- Editing or deleting the discarded history's checkpoint.
- Treating `/restart` as `/load latest`.
- Creating a baseline retroactively inside Gatefall main merely to pass validation.

---

# Architectural Resolution

Decision 053 gives each case a complete identity and persistence answer. Gatefall main naturally validates the no-baseline precondition; full branch and restart execution belongs on a disposable fork.

**Architectural verdict:** Pass.  
**Operational evidence:** Pending `/branch` and disposable-branch `/restart` observations.

