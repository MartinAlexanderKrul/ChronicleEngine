# Chronicle Engine

## Gatefall: Pendragon — Version 0.3 Prototype Log

**Status:** Active  
**Campaign:** `campaigns/gatefall_pendragon_001/`  
**World:** `worlds/gatefall/`  
**Authority:** Non-canonical validation record; campaign ledgers remain canonical

---

# Designation

By owner approval on 2026-07-24, the already-active Gatefall: Pendragon campaign is the Version 0.3 Runtime & Persistence Hardening prototype.

This designation does not change campaign canon, allocate identifiers, or authorize development edits during gameplay. It records that ordinary play supplies prototype evidence for roadmap milestone 0.3.5.

---

# Evidence Baseline

At designation, the campaign had:

- four canonical-form checkpoints (`900_CHECKPOINT_0001`–`0004`);
- a latest restore point at `900_CHECKPOINT_0004`;
- all eight campaign ledgers captured at each checkpoint;
- Data Model 0.1.2 live state;
- structured Gatefall World Rule Profile 1.0 metadata;
- profile status `workshop-draft`, making Checkpoint 0004 a prepared unfrozen-profile restoration case;
- repeated identifier allocation and same-change worlds/campaigns index updates;
- no baseline checkpoint, so `/restart` is correctly unavailable on the live campaign.

**Reconciliation (Decision 074 freeze):** After this baseline, the Gatefall World Rule Profile was frozen at version 1.0 (Rules Section 14.6, Decision 074), and later checkpoints capture `freeze_status: frozen`. This does not invalidate the baseline: Checkpoint 0004 was captured before the freeze and remains the real, immutable pre-freeze workshop-draft case (WRP-03), while the live frozen profile now supplies the genuine matching and mismatch cases (WRP-01, WRP-02, WRP-05). The validation harness reads the live profile's actual frozen version rather than assuming a fixed value, so it tracks the freeze instead of breaking against it.

The live campaign is the positive-path subject. Its absence of a baseline is not repaired retroactively.

---

# Protection Boundary

The following operations are forbidden on Gatefall main solely for validation:

- inserting contradictory locations,
- corrupting or editing an immutable checkpoint,
- changing the active World Rule Profile to manufacture a mismatch,
- restarting the canonical continuation,
- or restoring older state over newer live canon without an explicit player decision.

Branch and restart validation uses a disposable fork. Negative structure and compatibility cases use non-canonical fixtures.

---

# Recorded Evidence

## Evidence 001 — Canonical checkpoint sequence

**Result:** Observed pass.

Checkpoints 0001–0004 use the canonical four-digit directory form. Checkpoint 0004 contains all eight campaign ledgers and one manifest without a live registry identifier. The manifest records structured profile metadata and an explicit workshop-draft warning.

**Matrix:** V03-01, V03-09.

## Evidence 002 — Promotion target completeness

**Result:** Observed pass.

Checkpoint 0004 records the complete eight-ledger target set. Live `180_CURRENT_STATE.md` identifies the promoted Events, ledger effects, registry advances, and same-change index update.

**Matrix:** V03-02.

## Evidence 003 — Presence gate on live play

**Result:** Observed pass at rest.

The campaign advanced Alexander through several locations while the live repository continued to pass the Data Model 0.1.2 presence checks. This proves the positive shape is accepted; the negative fixture remains separate.

**Matrix:** V03-06.

## Evidence 004 — Disposable presence failure execution

**Date / checkpoint:** 2026-07-24 capability-validation worktree; no canonical checkpoint created.
**Command or barrier:** `tools/test_runtime_persistence_validation.ps1` → `tools/validate_repository.ps1 -RepositoryRoot <temporary-copy>`.
**Starting state:** Four independent copies of live repository state. P-01 removes Alexander's location; P-02 duplicates it; P-03 changes a carried Reikon resource to combined possessor/place syntax; P-04 names undefined possessor `ENT-999999`.
**Expected result:** Each disposable mutation fails the Repository Validation Barrier for the authored reason.
**Observed result:** All four failed. Verbatim `validate_repository.ps1` output from the dated run (identifier line numbers and the registry high-water mark are a snapshot and advance as the live campaign does; the harness assertions match on the durable message text, not these):

```text
P-01: Repository validation FAILED (1 error(s))
  - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md:29 active Character ENT-000125 must declare exactly one canonical_state.location; presence is owned by the entity's own record (Decision 073).

P-02: Repository validation FAILED (2 error(s))
  - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md:29 object ENT-000125 declares more than one location; presence has exactly one owner (Decision 073).
  - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md:29 active Character ENT-000125 must declare exactly one canonical_state.location; presence is owned by the entity's own record (Decision 073).

P-03: Repository validation FAILED (1 error(s))
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md:45 object ENT-000054 has a carried-by location that is not the bare 'carried by ENT-######' form; presence-by-possession names the possessor alone and asserts no place of its own (Decision 073).

P-04: Repository validation FAILED (3 error(s))
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md:66 references ENT-999999, above registry high-water mark ENT-000136.
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md:66 references ENT-999999, which has no allocation-log entry.
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md:66 references ENT-999999, which has no live object definition.
```

**Repository evidence:** Deterministic mutations and output assertions in `tools/test_runtime_persistence_validation.ps1`, run against the real `tools/validate_repository.ps1` gate.
**Matrix cases:** V03-07, V03-08.
**Verdict:** Pass.

## Evidence 005 — Profile readiness matrix

**Date / checkpoint:** 2026-07-24 capability-validation worktree; copied Gatefall 0004 and Prototype Alpha 0001 manifests, read against the live frozen Gatefall profile.
**Command or barrier:** `tools/test_runtime_persistence_validation.ps1`, WRP-01 through WRP-05.
**Starting state:** Copied manifests and the live world profile only; no immutable checkpoint edited and the live profile is never modified. The Gatefall profile is now frozen at version 1.0 (Decision 074); the harness reads that live version rather than assuming it, so the matching and mismatch cases track live authoring. Only the copied manifest metadata is synthesized.
**Observed result:**

- WRP-01 manifest captured frozen at the live version (1.0) against the live frozen profile → `ready-matching-frozen`;
- WRP-02 frozen 1.0 capture against a one-step-advanced (1.1) profile → `halt-version-mismatch:1.0-to-1.1`;
- WRP-03 Gatefall 0004 pre-freeze workshop-draft capture → `halt-unfrozen-not-save-trustworthy`;
- WRP-04 explicit Verra `none` with no profile file → `ready-no-profile`;
- WRP-05 additive 1.0→1.1 → readiness halt with no recomputation; migrating 1.0→1.1 → explicit migration required.

**Matrix cases:** V03-10, V03-11, V03-12.
**Verdict:** Pass.

## Evidence 006 — Exact named restoration and dispatcher

**Date / checkpoint:** 2026-07-24 capability-validation worktree; copied Gatefall checkpoints 0003 and 0004.
**Command or barrier:** Disposable `/load 900_CHECKPOINT_0003`; Runtime Profile command-row assertions.
**Starting state:** All eight copied live ledgers carry a deliberately newer marker; 0004 remains present as the latest checkpoint.
**Observed result:** The named operation selected 0003, not 0004; every restored ledger was SHA-256-identical to its 0003 source; the registry hash was unchanged; `/load 900_CHECKPOINT_9999` failed without mutation. `/save`, `/load`, `/branch`, and `/restart` still dispatch respectively to the existing Save Algorithm, Returning/Fork, Fork, and Redo procedures.
**Matrix cases:** V03-04, V03-05, V03-14, V03-17, V03-18.
**Verdict:** Pass.

## Evidence 007 — Disposable branch and restart

**Date / checkpoint:** 2026-07-24 capability-validation worktree; branch source Gatefall 0004.
**Command or barrier:** Disposable branch creation, baseline restart, and `validate_repository.ps1` after each state transition.
**Starting state:** A complete temporary repository copy. The branch remaps every campaign-local definition into new monotonic registry allocations, including a protagonist distinct from `ENT-000125`, and records Gatefall 0004 as its parent.
**Observed result:** Original campaign and source checkpoint directory digests stayed unchanged; the branch used distinct entity and Canonical Record identities, recorded non-canonical-continuation lineage, and passed repository validation. After a post-baseline Event allocation, restart restored all eight baseline ledgers byte-for-byte, kept the branch protagonist, preserved the registry high-water mark, left the discarded Event identifier retired, allocated the next Event identifier, and passed repository validation again.
**Matrix cases:** V03-15, V03-16, V03-17.
**Verdict:** Pass.

## Evidence 008 — Human-observed cold bootstrap

**Date / checkpoint:** 2026-07-24; no campaign checkpoint involved.
**Command or barrier:** Cold `/ChronicleEngine` bootstrap.
**Starting state:** A new Chronicle Engine session with no campaign selected.
**Expected result:** Render the complete welcome page and load no campaign before the player chooses.
**Observed result:** The repository owner confirmed the cold bootstrap worked as intended.
**Repository evidence:** Automated command-catalog coverage remains in `tools/test_runtime_command_catalog.ps1`; this entry records the required human observation without reconstructing an unavailable transcript.
**Matrix case:** V03-13.
**Verdict:** Pass.

---

# Future Session Evidence Template

Append one entry per validation-relevant operation:

```text
## Evidence NNN — <operation>

Date / checkpoint:
Command or barrier:
Starting state:
Expected result:
Observed result:
Repository evidence:
Gate output:
Matrix cases:
Verdict: pass | gap | inconclusive
Follow-up:
```

Normal story events need no entry unless they exercise a Version 0.3 persistence contract.
