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
| V04-14 | No new foundational abstraction | The version completes without a foundational change beyond Decisions 088 and 089 | **Failed, and correctly** | Decision 091 is a post-freeze foundational change. It satisfies Decision 086's four conditions, which is what the row was actually protecting; the row as written asked the wrong question and is answered rather than quietly amended — see below |

## Milestone 0.4.4 — NPCs Are Actors (Decision 091)

| ID | Capability | Exact acceptance result | Current status | Evidence / next evidence |
|----|------------|-------------------------|----------------|--------------------------|
| V04-15 | Disposition is required, not advisory | A Character inside a declared coverage set carrying no disposition and no referent declaration fails the barrier | Passed — gate and fixture | `validate_repository.ps1`; `test_disposition_contract.ps1` cases D-01, D-05, D-06, D-09 reject, D-02 accepts. D-05 proves the message names *which* fields are missing, D-06 that an empty field is not a present one |
| V04-16 | The played/referent split is declared | `disposition_class` accepts `played` and `referent` and rejects anything else; a referent owes nothing | Passed — fixture | D-03, D-04. The residue is a misfiled class and is recorded in Decision 091 and Data Model 12.4.5, not designed around |
| V04-17 | Coverage is prospective and opt-in | A world declaring nothing carries no obligation; a Character below the baseline is backlog, not a defect | Passed — fixture | D-07, D-08. D-08 asserts the below-baseline cast is *not named* while coverage is live, so a pass cannot be the gate having stopped running |
| V04-18 | A malformed coverage manifest fails loudly | A manifest declaring an obligation and naming no baseline is rejected, never parsed as "no coverage" | Passed — fixture | D-10. Silent degradation to a null policy is F-002's cause one layer down: an unreachable domain is indistinguishable from a quiet one |
| V04-19 | Disposition is adopted by a world | A live campaign carries dispositions inside a declared coverage set | **Vacuous** | The model is authored and the gate is proven; **no world declares coverage**, so it currently checks nothing real. Adoption is world authoring and belongs to a play session |
| V04-20 | An agenda advances unobserved | An agenda settles forward across elapsed time with the protagonist absent, recording an outcome when nothing moved | **Pending — needs play** | The Agenda half of Decision 091. Same evidence class as V04-08, and blocked on the same adoption |
| V04-21 | A false belief survives contact | An actor holding a false belief meets someone who knows better and is not silently corrected | **Pending — needs play** | The row that proves Belief is not knowledge with a flag on it. If every mistaken actor is corrected on first contact, the construct delivered nothing |
| V04-22 | Disposition changes who speaks | Play produces actors that open scenes, withhold, and remain non-interchangeable | **Pending — needs play, and it is a judgement** | The seven flags this milestone answers were all raised by a reader, not a gate. Whether the remedy worked is read the same way, and the postmortem records it in those terms |

**V04-19 is deliberately listed as its own row rather than folded into V04-15.** The gate passing and the world using it are different claims, and V04-07 is in this same matrix as the standing example of what happens when they are not separated: the claimant shape existed for a version with nothing exercising it.

---

# Current Assessment

> **This document went seventeen days without a revision while the campaign it describes moved, and parts of it below are known to be stale.** Rows V04-01 through V04-14 and the section *The One Thing Blocking Every Pending Row* are as written on 2026-08-02. That section's central claim — *"No actor in Gatefall declares a supply source or a standing need"* — **has been false since 2026-08-14**, when five supply sources and two standing needs were authored into `campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md` (design flag `F-035`, Q1). V04-07's *Vacuous* status has not been re-read against live state either.
>
> This is Version 0.3's Finding 4 recurring **inside the version that opened by saying it would apply the lesson at the start**, and it is flagged here rather than repaired in passing: re-statusing the pending-play rows requires reading the play record against each row, which is its own task and is the next one. Marking them *provisionally* from a document rather than from evidence is how a validation record becomes decorative.
>
> The 0.4.4 rows below (V04-15 onward) were authored 2026-08-19 and are current.

**Six rows pass, one is vacuous, seven need play** — as assessed on 2026-08-02, and subject to the note above. Milestone 0.4.4 adds four passing on gate and fixture, one vacuous, and three needing play. That ratio is the honest shape of this version and not a shortfall: Version 0.4's subject is what the world does when nobody is watching, and a fixture can prove the *shape* of that record while only play can prove the world actually moved.

**On V04-14, which now reads as failed.** The row asked that the version complete with no foundational change beyond Decisions 088 and 089, and Decision 091 is exactly that. It is recorded as failed rather than reworded, because the row was a proxy for a real property — that foundational change inside a validating version be *disciplined* rather than absent — and Decision 086 states that property directly and in four checkable conditions. Decision 091 meets all four. **A version that admits one classified, versioned, migrated, revalidated foundational finding from played evidence is the lifecycle working, not the freeze leaking**; a row that cannot say so should be answered in the postmortem rather than edited until it passes.

Read the evidence by class. V04-01 through V04-06 are gate and fixture results — the enforcement point fires, proven against isolated copies of the real repository. **V04-07 is vacuous and labelled so**: the claimant shape exists and nothing uses it. That is the same state the commitment gate sat in for a version, and naming it here is the lesson from having discovered it late last time.

Three things to watch as play produces evidence:

- **V04-10 is the control for V04-09.** An opening lost to a rival is the capability; an opening that quietly disappears is the defect wearing the same clothes. Without the negative case the positive one proves nothing.
- **V04-11 is the row that proves the version is one capability rather than two.** If a supplier's unmet need never suppresses a downstream opening, then need and supply are parallel bookkeeping and 0.4.1 delivered a field nobody reads.
- **V04-13 cannot be settled by this document.** It is a judgement the player makes, and the postmortem should record it in those terms rather than converting it into a metric.

---

# The One Thing Blocking Every Pending Row

**No actor in Gatefall declares a supply source or a standing need.** Decision 083's construct has had zero live instances since Version 0.3 accepted it, and Decision 088's has had none since yesterday. Every row marked *Pending — needs play* is blocked on the same missing adoption, not on seven separate things.

`tools/list_supply_and_need_candidates.ps1` produces the worklist: **45 candidate actors** already described in canon as offering work or wanting something, none of them modelled — 11 that do both, 27 supply-only, 7 need-only. The obvious first entries are the ones the campaign already reasons about constantly:

- `ENT-000102` **Windy City Hunters Coalition** — postings, a roster, a desk, and recruiting; the institution the tracked board belongs to
- `ENT-000130` **Kesha Morrison** — a Coalition coordinator whose whole function is contracts and postings
- `ENT-000134` **Ada Reyes** — postings and hires, and canon already says she is *short of* people
- `ENT-000136` **Priya Okafor** — a crew leader canon already describes as *down a* member

That last pair matter disproportionately: a crew lead short a member and a coordinator with postings are a standing need and a supply source **that should be coupled**, which is exactly what V04-11 exists to test.

The rates are world authoring and belong to the owner. The engine owns the obligation; the profile owns the cadence (Decision 083 point 5). The lister is a worklist and never a gate — prose matching for *"this actor generates work"* is unreliable, which disqualifies it as a check and is fine for a starting set.

---

The Engine Postmortem is written only after this matrix is complete.
