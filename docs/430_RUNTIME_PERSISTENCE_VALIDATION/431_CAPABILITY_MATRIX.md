# Chronicle Engine

## Version 0.3 Capability Matrix

**Status:** In Progress  
**Prototype:** Gatefall: Pendragon  
**Authority:** Non-canonical validation record

---

# Status Vocabulary

- **Passed — gate:** the engine's own deterministic repository gate mechanically accepts or rejects the case — `validate_repository.ps1` (the Repository Validation Barrier, Decision 054), `test_checkpoint_contract.ps1`, or `test_runtime_command_catalog.ps1`. This is the strongest class: the enforcement point itself fires.
- **Passed — harness model:** the deterministic harness `test_runtime_persistence_validation.ps1` models a Runtime *procedure* — named load, branch, restart, or profile-readiness — over real repository artifacts on temporary copies, and asserts the required outcome. The Chronicle Engine Runtime is interpreter-executed, so these procedures have no compiled implementation to call directly; the harness proves the frozen 0.3 contract is satisfiable and deterministic, and every resulting state is re-checked by the real `validate_repository.ps1` gate. It does not prove the interpreter follows the procedure in live play — that is what the observed prototype evidence adds.
- **Passed — observed:** traceable live campaign evidence exercises the case.
- **Passed — by construction:** the claim holds because the validation itself introduces nothing that would violate it (used only for V03-18: this validation adds no command and no ADR).
- **Fixture ready:** the non-canonical case and expected result are authored; execution evidence remains.
- **Pending:** no sufficient operational evidence yet.
- **Gap:** the accepted architecture or its enforcement point cannot produce the required result.

A row may carry more than one class (for example *gate and observed*). Where a harness-model row's end state is additionally validated by the real gate, the Evidence column says so.

---

# Matrix

| ID | Capability | Exact acceptance result | Current status | Evidence / next evidence |
|----|------------|-------------------------|----------------|--------------------------|
| V03-01 | Canonical checkpoint form | Four-digit checkpoint directory contains all eight ledgers and exactly one conforming manifest | Passed — gate and observed | `test_checkpoint_contract.ps1`; Gatefall checkpoints 0001–0023. Checkpoint 0015 is the first native Data Model 0.1.3 capture; Checkpoint 0020 is the first frozen Profile 1.10 capture; Checkpoint 0023 is the latest immutable capture. |
| V03-02 | Promotion barrier completeness | Every affected live target is written and read back before the immutable checkpoint is sealed | Passed — observed, including automatic context preservation | Gatefall checkpoints through 0023 repeat the complete eight-ledger form. Checkpoint 0015 was initiated by the resident Context-Preservation Watch after twenty-one resolved exchanges, advanced the registry through `EVT-000084`, updated the index, and emitted `exports/play_export_0003.md`. |
| V03-03 | Malformed checkpoint rejection | Alternate shape, missing ledgers, or self-reported validation verdict is rejected | Passed — gate | `test_checkpoint_contract.ps1` against `tools/tests/fixtures/nonconforming_checkpoint/` |
| V03-04 | Exact restoration | A named checkpoint restores its captured ledger state without newer live state leaking through | Passed — harness model (gate-confirmed) | `test_runtime_persistence_validation.ps1`: disposable Gatefall `/load 900_CHECKPOINT_0003` restores all eight ledgers byte-for-byte while 0004 exists and newer live markers are present |
| V03-05 | Registry preservation on restore | Restoration never rolls the repository registry backward | Passed — harness model | `test_runtime_persistence_validation.ps1`: registry SHA-256 and high-water marks are preserved across named load and restart |
| V03-06 | Single-owner presence | Every active campaign Character has exactly one `canonical_state.location` | Passed — gate and observed | `validate_repository.ps1` passes Gatefall live state |
| V03-07 | Contradictory presence rejection | Missing, duplicate, or malformed structured presence fails mechanically | Passed — gate | `test_runtime_persistence_validation.ps1` drives the real `validate_repository.ps1`: P-01 through P-04 run against isolated repository copies with asserted validator failures |
| V03-08 | Presence-by-possession | Carried resource names one defined possessor and asserts no independent place | Passed — gate | Live Reikon carried resources pass `validate_repository.ps1`; P-03 rejects combined possessor/place and P-04 rejects an undefined possessor |
| V03-09 | Structured profile metadata | New checkpoint records world, version, and freeze status, or explicit no-profile | Passed — gate and observed | Gatefall workshop-draft Checkpoint 0004; frozen Profile 1.6 / Data Model 0.1.2 Checkpoint 0014; frozen Profile 1.6 / Data Model 0.1.3 Checkpoint 0015; Profile 1.10 checkpoints 0020–0021; Profile 1.11 checkpoints 0022–0023; and Profile 1.12 / Data Model 0.1.4 Checkpoint 0024. Older captures remain immutable and run their applicable readiness chain through live Profile 1.13. `test_checkpoint_contract.ps1` Contract 6. |
| V03-10 | Unfrozen-profile restoration | Workshop-draft capture surfaces the not-save-trustworthy warning and halts at readiness | Passed — harness model | WRP-03 evaluates the real pre-freeze Gatefall Checkpoint 0004 manifest against the live frozen profile and returns `halt-unfrozen-not-save-trustworthy` |
| V03-11 | Profile-version mismatch | Mismatch is reported and halts; no silent migration occurs | Passed — harness model | WRP-02 and WRP-05: a frozen capture against a one-step-advanced live-derived version halts; additive requires readiness acknowledgement without recomputation, migrating requires explicit migration |
| V03-12 | No-profile world | Manifest records explicit absence and restoration does not treat absence as missing data | Passed — harness model | WRP-04 evaluates Prototype Alpha's explicit Verra `none` metadata with no profile file and returns `ready-no-profile` |
| V03-13 | Argumentless bootstrap | `/ChronicleEngine` renders the complete welcome page and loads no campaign | Passed — gate and owner-observed | `test_runtime_command_catalog.ps1`; repository owner confirmed a cold bootstrap worked as intended on 2026-07-24 |
| V03-14 | Named load | `/load <checkpoint>` restores the named point, not merely the latest point | Passed — harness model | Disposable Gatefall load names 0003 while 0004 exists; all eight live ledgers match 0003 and an unknown name fails without mutation |
| V03-15 | Branch | Fork preserves original campaign, creates distinct identities and lineage, and advances registry monotonically | Passed — harness model (gate-confirmed) | Disposable full-repository fork from Gatefall 0004 remaps campaign-local identities, allocates a distinct protagonist and Canonical Records, records parent lineage, preserves source hashes, and passes `validate_repository.ps1` |
| V03-16 | Restart | Same campaign/protagonist returns to baseline while post-baseline identifiers remain retired | Passed — harness model (gate-confirmed) | Disposable fork restart restores all eight baseline ledgers exactly, keeps the protagonist, preserves the registry, retires the discarded Event identifier, allocates the next Event monotonically, and passes `validate_repository.ps1` |
| V03-17 | Command dispatch | `/save`, `/load`, `/branch`, and `/restart` preserve the procedures' existing barriers | Passed — gate | Dispatcher rows are asserted against the real Runtime Profile catalog; named load/branch/restart execute in the disposable harness; `/save` remains bound to the complete Save Algorithm |
| V03-18 | No command-surface redesign | Prototype completes command exercise without a new command ADR | Passed — by construction | V03-13–17 use the settled catalog and existing procedures; this validation adds no command or ADR |
| V03-19 | Prototype findings are dispositioned | The live prototype may reveal and drive changes to Rules, Data Model, Runtime, or other architecture; every finding must be explicitly classified, governed, versioned, migrated, and revalidated, with no known architectural gap left unaddressed at postmortem | In progress — Decisions 076–078 and the Checkpoint 0020 agency refinement implemented and revalidated | Decision 076 closes Relationship Texture loss at Data Model 0.1.3. Decision 077 closes real/game-date ambiguity at Data Model 0.1.4. Decision 078 closes on-demand-only recovery by adding an exact canonical settlement anchor and Gatefall Profile 1.13 deterministic carry. Checkpoint 0020 exposed two compression-time Player Agency violations; Resident Core 1.6 covers both agency and automatic settlement obligations. Final determination remains the 0.3 postmortem. |

---

# Current Assessment

The requested safe Capability Validation cases now have deterministic operational evidence. The harness `tools/test_runtime_persistence_validation.ps1` operates only on temporary repository copies and removes them after execution; Gatefall main, every immutable checkpoint, and the live world profile remain byte-unchanged. It reconciles with the Decision 074 profile freeze by reading the live profile's actual frozen version rather than assuming a fixed value, so it tracks live authoring instead of breaking against it.

Read the evidence honestly by class: the presence, malformed-checkpoint, structured-metadata, and command-catalog rows are **gate** results — the engine's own enforcement point fires. The named-load, registry-preservation, branch, restart, and profile-readiness rows are **harness-model** results — the harness reproduces the interpreter-executed Runtime procedure over real artifacts and the real gate confirms each end state, but only observed prototype play proves the interpreter follows the procedure live.

The live prototype is validation through use, not a promise that frozen architecture cannot change. Decision 076 is the first played finding: it changed the Data Model because preserving a known defect merely to satisfy the old V03-19 wording would invert Decision 048's purpose. The acceptance condition is therefore disciplined disposition and revalidation, not architectural immobility.

The remaining lifecycle work is not another destructive persistence case:

- V03-19 remains open until the prototype and postmortem can conclude that every finding has been dispositioned and no known architectural gap remains;
- the Engine Postmortem is not authored until the matrix's remaining lifecycle evidence is complete.
