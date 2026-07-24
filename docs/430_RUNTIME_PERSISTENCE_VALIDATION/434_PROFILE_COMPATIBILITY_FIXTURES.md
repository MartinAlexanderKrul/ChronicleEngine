# Chronicle Engine

## Version 0.3 Fixture — World Rule Profile Compatibility

**Status:** Fixture Ready  
**Canonicity:** Non-canonical  
**Governing Contracts:** Decision 074; Rules Sections 13.3, 13.5, 14.4, 14.6; Runtime Section 6.2

---

# Capability Under Test

World Rule Profile compatibility is structured, comparable, and surfaced before play. The Runtime never silently guesses or migrates incompatible behavior.

---

# Cases

## WRP-01 — Matching frozen profile

Checkpoint metadata and the active world both declare the same frozen profile version.

Required result: profile compatibility passes and restoration may continue through the remaining readiness checks.

## WRP-02 — Version mismatch

The checkpoint records one profile version and the active world declares another.

Required result: the Runtime reports both versions and halts at the readiness gate. It does not edit the checkpoint, reinterpret stored state, or begin play.

## WRP-03 — Workshop-draft capture

The checkpoint records `freeze_status: workshop-draft`.

Required result: the Runtime surfaces the explicit unfrozen / not-save-trustworthy warning and halts at readiness. Gatefall Checkpoint 0004 is the prepared live instance of this case.

## WRP-04 — World with no profile

The world has no `206_WORLD_RULE_PROFILE.md`, and the manifest records explicit `none`.

Required result: absence is accepted as meaningful. The engine defaults apply; restoration does not report a missing-file error.

## WRP-05 — Additive versus migrating version

A newer profile version is classified additive or migrating.

Required result:

- additive: the older checkpoint requires no state recomputation, but the version change is still surfaced at readiness;
- migrating: play cannot continue until an explicit migration has been approved and performed.

Neither path silently changes immutable checkpoint bytes.

---

# Prohibited Shortcuts

- Comparing free-form labels instead of structured fields.
- Treating workshop draft as frozen because its version string matches.
- Editing an immutable checkpoint to match the current profile.
- Automatically migrating a behavior-changing mismatch.
- Treating a profile-less world as malformed.

---

# Architectural Resolution

Rules Section 14.6 and Runtime Section 6.2 provide a complete resolution for all five cases, while the checkpoint contract mechanically verifies the metadata needed to make the comparison.

**Architectural verdict:** Pass.  
**Operational evidence:** WRP-03 is ready in Gatefall Checkpoint 0004. WRP-02 and WRP-04 should be exercised against copied metadata or a disposable branch.

