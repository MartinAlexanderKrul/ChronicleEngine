# Chronicle Engine

## Version 0.3 Capability Matrix

**Status:** In Progress  
**Prototype:** Gatefall: Pendragon  
**Authority:** Non-canonical validation record

---

# Status Vocabulary

- **Passed — automated:** a deterministic repository gate exercises the case.
- **Passed — observed:** traceable live campaign evidence exercises the case.
- **Fixture ready:** the non-canonical case and expected result are authored; execution evidence remains.
- **Pending:** no sufficient operational evidence yet.
- **Gap:** the accepted architecture or its enforcement point cannot produce the required result.

---

# Matrix

| ID | Capability | Exact acceptance result | Current status | Evidence / next evidence |
|----|------------|-------------------------|----------------|--------------------------|
| V03-01 | Canonical checkpoint form | Four-digit checkpoint directory contains all eight ledgers and exactly one conforming manifest | Passed — automated and observed | `test_checkpoint_contract.ps1`; Gatefall checkpoints 0001–0004 |
| V03-02 | Promotion barrier completeness | Every affected live target is written and read back before the immutable checkpoint is sealed | Passed — observed | Gatefall Checkpoint 0004 manifest and `180_CURRENT_STATE.md` promotion target list |
| V03-03 | Malformed checkpoint rejection | Alternate shape, missing ledgers, or self-reported validation verdict is rejected | Passed — automated | `tools/tests/fixtures/nonconforming_checkpoint/` |
| V03-04 | Exact restoration | A named checkpoint restores its captured ledger state without newer live state leaking through | Pending | Exercise `/load 900_CHECKPOINT_0004` or a later disposable checkpoint and compare all eight restored ledgers |
| V03-05 | Registry preservation on restore | Restoration never rolls the repository registry backward | Fixture ready | Verify registry high-water marks before and after disposable restore |
| V03-06 | Single-owner presence | Every active campaign Character has exactly one `canonical_state.location` | Passed — automated and observed | Repository validator passes Gatefall live state |
| V03-07 | Contradictory presence rejection | Missing, duplicate, or malformed structured presence fails mechanically | Fixture ready | `433_PRESENCE_FAILURE_FIXTURES.md`; execute against a disposable repository copy |
| V03-08 | Presence-by-possession | Carried resource names one defined possessor and asserts no independent place | Fixture ready | `433_PRESENCE_FAILURE_FIXTURES.md`; live evidence when Gatefall promotes an individually identified carried Resource |
| V03-09 | Structured profile metadata | New checkpoint records world, version, and freeze status, or explicit no-profile | Passed — automated and observed | Gatefall Checkpoint 0004; checkpoint Contract 6 |
| V03-10 | Unfrozen-profile restoration | Workshop-draft capture surfaces the not-save-trustworthy warning and halts at readiness | Pending | Gatefall Checkpoint 0004 is the prepared live case; perform a restore/readiness test |
| V03-11 | Profile-version mismatch | Mismatch is reported and halts; no silent migration occurs | Fixture ready | `434_PROFILE_COMPATIBILITY_FIXTURES.md` |
| V03-12 | No-profile world | Manifest records explicit absence and restoration does not treat absence as missing data | Fixture ready | `434_PROFILE_COMPATIBILITY_FIXTURES.md` |
| V03-13 | Argumentless bootstrap | `/ChronicleEngine` renders the complete welcome page and loads no campaign | Passed — automated; live observation pending | `test_runtime_command_catalog.ps1`; record one cold-start observation |
| V03-14 | Named load | `/load <checkpoint>` restores the named point, not merely the latest point | Pending | Test on a disposable Gatefall branch |
| V03-15 | Branch | Fork preserves original campaign, creates distinct identities and lineage, and advances registry monotonically | Fixture ready | `435_BRANCH_RESTART_FIXTURES.md`; execute `/branch` from a Gatefall checkpoint |
| V03-16 | Restart | Same campaign/protagonist returns to baseline while post-baseline identifiers remain retired | Fixture ready | Main Gatefall correctly refuses because it has no baseline; full test on disposable branch with a baseline |
| V03-17 | Command dispatch | `/save`, `/load`, `/branch`, and `/restart` preserve the procedures' existing barriers | Fixture ready | `436_COMMAND_AND_RESTORE_FIXTURES.md`; live command observations |
| V03-18 | No command-surface redesign | Prototype completes command exercise without a new command ADR | In progress | Decision 075; evaluate after V03-13–17 |
| V03-19 | No foundational gap | Prototype completes without changing Rules section structure or Data Model | In progress | Final 0.3 postmortem |

---

# Current Assessment

The positive checkpoint path is already strongly evidenced. The remaining work is concentrated in restoration and failure behavior:

- exact named restoration,
- the workshop-draft readiness halt,
- a deliberate profile mismatch,
- negative presence cases,
- and safe branch/restart execution.

None requires altering the live Gatefall continuation. Cases V03-07, V03-08, V03-11, and V03-12 belong in disposable fixtures. Cases V03-14–16 belong on a disposable branch. Gatefall main remains the canonical positive-path prototype.

