# Chronicle Engine

## Version 0.3 Fixture — Commands and Named Restoration

**Status:** Fixture Ready  
**Canonicity:** Non-canonical  
**Governing Contracts:** Decisions 056, 064, 067, 075; Rules Section 13.4; Gameplay Runtime Profile

---

# Capability Under Test

Runtime commands remain thin dispatchers over existing procedures. They do not bypass readiness, promotion, compatibility, or validation barriers.

---

# Cases

## CMD-01 — Argumentless bootstrap

Operation: invoke `/ChronicleEngine`.

Required result:

- render the complete command catalog;
- render every row from `system/WORLDS_AND_CAMPAIGNS.md`;
- load no campaign or checkpoint;
- stop and wait for a player selection.

Trailing text is not parsed as a target.

## CMD-02 — Save

Operation: invoke `/save`.

Required result: dispatch the complete Save Algorithm. “Saved” is unavailable until promotion, complete target write-through, read-back, repository validation, checkpoint creation, and index update all succeed.

## CMD-03 — Named load

Operation: invoke `/load <checkpoint>` on a disposable branch with more than one checkpoint.

Required result:

- restore the named checkpoint rather than the latest by default;
- compare versions and profile compatibility;
- preserve registry high-water marks;
- present a restoration summary and readiness gate before play.

## CMD-04 — Branch and restart

Operation: invoke `/branch` and `/restart`.

Required result: dispatch the identity and persistence procedures in `435_BRANCH_RESTART_FIXTURES.md`; the command itself adds no alternate semantics.

## CMD-05 — Failure propagation

Operation: make any dispatched procedure fail validation or a precondition.

Required result: the command reports the actual failure and performs no success claim. A command never converts a failing procedure into a successful convenience action.

---

# Prohibited Shortcuts

- Auto-resuming from bootstrap.
- Loading the latest checkpoint when a different checkpoint was named.
- Treating a command as permission to skip confirmation or readiness.
- Reporting success from manifest prose rather than external gate output.
- adding a new command or alias to avoid an existing procedure's requirements.

---

# Architectural Resolution

The command model is already a dispatcher surface. The synchronized catalog and bootstrap tests provide automated contract evidence; named restoration and failure propagation still require prototype observations.

**Architectural verdict:** Pass.  
**Operational evidence:** CMD-01 automated, live observation pending; CMD-02 observed through Gatefall checkpoints; CMD-03–05 pending disposable execution.

