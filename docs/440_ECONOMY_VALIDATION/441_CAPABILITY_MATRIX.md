# Chronicle Engine

## Version 0.4 Capability Matrix

**Status:** In Progress
**Prototype:** Gatefall: Pendragon
**Authority:** Non-canonical validation record

---

# Status Vocabulary

Carried unchanged from Version 0.3's matrix, because the classes proved worth distinguishing:

- **Passed — gate:** the engine's own deterministic repository gate accepts or rejects the case. The strongest class: the enforcement point itself fires.
- **Passed — fixture:** a deterministic suite drives the real gate over isolated repository copies and asserts the outcome on durable message text.
- **Passed — observed:** traceable live campaign evidence exercises the case.
- **Pending — needs play:** the case can only be produced by the Prototype Campaign. No fixture substitutes.
- **Vacuous:** the gate exists and is proven to fire, but no live campaign carries the construct yet, so it currently checks nothing real.
- **Gap:** the accepted architecture cannot produce the required result.

---

# Matrix

| ID | Capability | Exact acceptance result | Current status | Evidence / next evidence |
|----|------------|-------------------------|----------------|--------------------------|
| V04-01 | Need shape | A standing need declares a holder, subject, due/cadence and one of five statuses | Passed — gate and fixture | `validate_repository.ps1`; `test_commitment_settlement_gate.ps1` cases N-06, N-07 reject a non-entity holder and an invalid status |
| V04-02 | Holder is an actor, not an aggregate | A need whose holder is not a defined entity is rejected | Passed — fixture | N-06 rejects a holder of *"the hunter population"* — the case that would quietly turn this into a demographic model (PA-001; Decision 088) |
| V04-03 | Need staleness | An `open` need whose due time is behind the campaign anchor fails the barrier | Passed — fixture | N-01 rejects; N-05 accepts a need not yet due. Staleness is checked only where `Due` is clock-reachable, because a cadence is not a deadline |
| V04-04 | An unmet need records why | `unmet` without an outcome is rejected; with one, accepted | Passed — fixture | N-02 rejects, N-03 accepts. Decision 080's negative-assertion discipline |
| V04-05 | A settled need is not stale | `met` past its due time is accepted | Passed — fixture | N-04. Settlement is what the gate asks for, not recency |
| V04-06 | Needs advance per turn | The resident layer advances needs and supply in the same settlement clause | Passed — gate | `test_opportunity_supply_contract.ps1` pins the clause; Runtime Section 2.4 sites the obligation |
| V04-07 | An opening carries claimants | Claimants and a settled claim are recordable on a standing opening | **Vacuous** | Data Model Section 7.5.1 defines the shape; no live campaign carries an opening yet, so nothing exercises it |
| V04-08 | A need is met unobserved | A need settles and is met by someone other than the protagonist, with no player inquiry | **Pending — needs play** | Gatefall: an institution's staffing shortfall settling across elapsed days |
| V04-09 | An opening is lost to a competitor | A posting the protagonist ignores is taken by another claimant on the clock, and is gone when he returns | **Pending — needs play** | The case Version 0.3 could not express: F-002's settlement reached for `held` to describe exactly this |
| V04-10 | An uncontested opening remains | An opening nobody claims persists with no decay or expiry pressure | **Pending — needs play** | The negative control for V04-09. If openings quietly vanish, contention has become a timer |
| V04-11 | A supplier's failure suppresses supply | A source whose own need went unmet produces no downstream opening, recorded as a settled negative | **Pending — needs play** | The case that proves need and supply are genuinely coupled rather than parallel bookkeeping |
| V04-12 | An empty advance is recorded | An advance yielding nothing sets the anchor forward and records that it did | **Pending — needs play** | Distinguishes *nothing was generated* from *nobody looked* (Decisions 080, 083) |
| V04-13 | Contention does not read as a timer | Play does not experience contested openings as punishment for hesitating | **Pending — needs play, and it is a judgement** | Decision 089's recorded risk. No fixture can answer this; the player's read is the evidence |
| V04-14 | No new foundational abstraction | The version completes without a foundational change beyond Decisions 088 and 089 | In progress | Anything foundational arriving now must satisfy Decision 086's four conditions |

---

# Current Assessment

**Six rows pass, one is vacuous, seven need play.** That ratio is the honest shape of this version and not a shortfall: Version 0.4's subject is what the world does when nobody is watching, and a fixture can prove the *shape* of that record while only play can prove the world actually moved.

Read the evidence by class. V04-01 through V04-06 are gate and fixture results — the enforcement point fires, proven against isolated copies of the real repository. **V04-07 is vacuous and labelled so**: the claimant shape exists and nothing uses it. That is the same state the commitment gate sat in for a version, and naming it here is the lesson from having discovered it late last time.

Three things to watch as play produces evidence:

- **V04-10 is the control for V04-09.** An opening lost to a rival is the capability; an opening that quietly disappears is the defect wearing the same clothes. Without the negative case the positive one proves nothing.
- **V04-11 is the row that proves the version is one capability rather than two.** If a supplier's unmet need never suppresses a downstream opening, then need and supply are parallel bookkeeping and 0.4.1 delivered a field nobody reads.
- **V04-13 cannot be settled by this document.** It is a judgement the player makes, and the postmortem should record it in those terms rather than converting it into a metric.

The Engine Postmortem is written only after this matrix is complete.
