# Chronicle Engine

## Version 0.3 Runtime & Persistence Validation — Overview

**Status:** In Progress (roadmap milestone 0.3.5)  
**Development Target:** Version 0.3 — Runtime & Persistence Hardening  
**Layer:** Design Retrospective / Validation (400–499)  
**Canonicity:** Non-canonical validation artifacts  
**Prototype Campaign:** `campaigns/gatefall_pendragon_001/` (Gatefall: Pendragon)

---

# Purpose

This suite validates the frozen Version 0.3 architecture introduced by Decisions 072–075:

- the single canonical checkpoint form,
- single-owner presence and presence-by-possession,
- versioned and frozen World Rule Profiles with explicit restoration compatibility,
- and the settled Runtime command surface.

The suite does not add a simulation domain or redesign the accepted architecture. It asks whether the Rules, Data Model, Runtime, Runtime Profiles, and deterministic gates can execute and restore a real campaign without a new foundational abstraction.

Per Decision 048, Capability Validation precedes the Prototype Campaign in the lifecycle even though the roadmap groups both under milestone 0.3.5. The two evidence tracks are therefore kept distinct:

1. **Non-canonical fixtures** exercise destructive, contradictory, or compatibility-failure cases without contaminating live canon.
2. **Gatefall: Pendragon live play** exercises the positive end-to-end path through real promotion, checkpoints, restoration, and commands.

---

# Prototype Designation

Gatefall: Pendragon is the Version 0.3 prototype campaign.

It is already producing the exact evidence the milestone requires:

- four canonical-form checkpoints (`900_CHECKPOINT_0001`–`0004`),
- repeated eight-ledger promotion,
- structured workshop-draft World Rule Profile metadata,
- live presence changes under Data Model 0.1.2,
- identifier allocation and index updates at checkpoint barriers,
- and continued campaign play across session boundaries.

No replacement prototype campaign will be created merely to repeat that evidence.

The live canonical continuation remains protected. Destructive or divergent operations are not performed on it:

- malformed checkpoint and contradiction cases use non-canonical fixtures;
- `/branch` creates a disposable campaign fork;
- `/restart` is tested only on that disposable fork after it has a declared baseline;
- profile mismatches are simulated against copied metadata or a disposable branch, never by editing an immutable live checkpoint or changing Gatefall's active profile in place.

---

# Validation Sources

| Evidence source | What it proves |
|-----------------|----------------|
| `tools/validate_repository.ps1` | Live structural integrity, referential integrity, registry coverage, and presence invariants |
| `tools/test_checkpoint_contract.ps1` | Canonical checkpoint shape, ledger completeness, manifest constraints, profile metadata, and index/current-state agreement |
| `tools/test_runtime_command_catalog.ps1` | Exact command catalog and argumentless bootstrap contract |
| Other repository gates | Runtime residency, context preservation, decision ownership, and validator regressions |
| Non-canonical fixtures in this directory | Failure behavior that must not be injected into live canon |
| Gatefall: Pendragon checkpoints and session evidence | Real promotion, persistence, restoration, and command behavior |

---

# Fixture Format

Each fixture states:

1. the capability under test,
2. starting state,
3. operation,
4. required result,
5. prohibited shortcuts,
6. governing contracts,
7. architectural verdict,
8. operational evidence still required from the prototype, if any.

Fixture identifiers and example state are illustrative only. They allocate no repository identifiers and establish no world or campaign canon.

---

# Acceptance Rule

A validation case passes only when:

- the frozen Version 0.3 contracts resolve it without a new foundational abstraction;
- every required enforcement point fires;
- failure is explicit rather than silently repaired or guessed;
- no immutable checkpoint is edited;
- no live campaign is damaged to manufacture evidence;
- and any claimed operational pass has traceable repository evidence.

Architecture-level fixture resolution and live operational evidence are recorded separately in `431_CAPABILITY_MATRIX.md`. A fixture can prove that the architecture has an answer; only an observed run or deterministic gate proves that the implementation actually follows it.

---

# Global Prohibited Shortcuts

Validation may not:

- edit an immutable checkpoint to make it conform,
- roll back the identifier registry on restart,
- reuse identifiers across a fork,
- treat `180_CURRENT_STATE.md` or narrative `situation` prose as the owner of presence,
- give a carried resource both a possessor and an independent place,
- silently accept or migrate a profile mismatch,
- claim a checkpoint saved before write-through, read-back, and validation complete,
- turn a Runtime command into a second implementation of the procedure it dispatches,
- or alter the live Gatefall continuation solely to create a failure case.

---

# Deliverables

- `430_VALIDATION_OVERVIEW.md` — scope, authority, and method
- `431_CAPABILITY_MATRIX.md` — exact acceptance matrix and current evidence
- `432_GATEFALL_PROTOTYPE_LOG.md` — live prototype evidence
- `433_PRESENCE_FAILURE_FIXTURES.md` — contradictory presence and carried-resource cases
- `434_PROFILE_COMPATIBILITY_FIXTURES.md` — frozen, mismatched, unfrozen, and no-profile cases
- `435_BRANCH_RESTART_FIXTURES.md` — identity, lineage, baseline, and registry behavior
- `436_COMMAND_AND_RESTORE_FIXTURES.md` — bootstrap, named load, and dispatcher behavior

The Engine Postmortem is written only after the matrix is complete.

