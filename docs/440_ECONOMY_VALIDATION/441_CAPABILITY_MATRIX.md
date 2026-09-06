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
| V04-08 | A need is met unobserved | A need settles and is met by someone other than the protagonist, with no player inquiry | **Pending — needs play** | Two standing needs are now live in `110_WORLD_LEDGER.md` (Dale Pruitt/`ENT-000135`'s eight-body B-Rank lead; Wade Bishop's guild-wide combat-rated recruiting) — both are declared, both `advanced` to the current anchor, and both remain `status: open`. Neither has settled to `met` yet; this row is genuinely still waiting on play rather than on adoption |
| V04-09 | An opening is lost to a competitor | A posting the protagonist ignores is taken by another claimant on the clock, and is gone when he returns | **Passed — observed** | `GB-05` (`110_WORLD_LEDGER.md` Tracked Board): surfaced to Alexander at the Ashfield staging 2026-08-22, taken by the trade four days later (🎲 12 vs. its 15% daily contest rate, `EVT-000689`) — "the first posting this campaign has watched go to somebody else after he had seen it." Reinforced by the ordinary case repeating at scale: `GB-10` through `GB-36` show dozens of postings staffed off-screen by the trade, most never even surfacing through Kesha's desk because they sit below Alexander's own standing A-Rank intake filter |
| V04-10 | An uncontested opening remains | An opening nobody claims persists with no decay or expiry pressure | **Passed — observed** | `GB-34` (live as of `EVT-000951`/`EVT-000918`): posted 2026-09-08, has now survived three contest rolls (🎲 90, 23, 70, all vs. its 15% daily rate) without being taken and without being withdrawn or altered — it simply remains posted, one day short of its own derived deadline, exactly as authored rather than pressured off the board |
| V04-11 | A supplier's failure suppresses supply | A source whose own need went unmet produces no downstream opening, recorded as a settled negative | **Pending — needs play** | The coupling the matrix flagged as the target (2026-08-02 note, below) is live but unexercised: `ENT-000135` (Dale Pruitt) is simultaneously a `supply_source` (harvest/mining postings) and a `standing_need` holder (his own B-Rank lead, unmet, staffed at zero for six days). No scene has yet shown his unmet need suppressing his own supply output — his `available: []` is currently explained by cadence timing, not by the coupling. This is the sharpest remaining gap in the matrix and the same actor the 2026-08-02 note already named as the obvious first case |
| V04-12 | An empty advance is recorded | An advance yielding nothing sets the anchor forward and records that it did | **Passed — observed** | All five live supply sources (`110_WORLD_LEDGER.md`, `EVT-000957`) were advanced to the 2026-09-14 10:37 anchor with `available` unchanged, and the ledger records explicitly *why*: the elapsed span (~22 minutes, no tick crossed) is shorter than any of the five cadences, so the advance is written as "a real settlement across the intervening span rather than a skipped one" |
| V04-13 | Contention does not read as a timer | Play does not experience contested openings as punishment for hesitating | **Pending — needs play, and it is a judgement** | `GB-05`'s loss (V04-09) is the first real data point — the record frames it factually ("the first posting this campaign has watched go to somebody else") rather than as a rebuke, which is a favorable early sign but not a verdict. Per Decision 089 and the matrix's own instruction, only the player's read across sustained play settles this row; it is left open rather than inferred from one instance |
| V04-14 | No new foundational abstraction | The version completes without a foundational change beyond Decisions 088 and 089 | **Failed, and correctly** | Decision 091 is a post-freeze foundational change. It satisfies Decision 086's four conditions, which is what the row was actually protecting; the row as written asked the wrong question and is answered rather than quietly amended — see below |

## Milestone 0.4.4 — NPCs Are Actors (Decisions 091, 092)

| ID | Capability | Exact acceptance result | Current status | Evidence / next evidence |
|----|------------|-------------------------|----------------|--------------------------|
| V04-15 | Disposition is required, not advisory | A covered Character carrying no disposition and no referent declaration fails the barrier | Passed — gate and fixture | `validate_repository.ps1`; `test_disposition_contract.ps1` cases D-01, D-05, D-06, D-10 reject, D-02 accepts. D-05 proves the message names *which* fields are missing, D-06 that an empty field is not a present one |
| V04-16 | The played/referent split is declared | `disposition_class` accepts `played` and `referent` and rejects anything else; a referent owes nothing | Passed — fixture | D-03, D-04, D-10. The residue is a misfiled class and is recorded in Decisions 091 and 092 and Data Model 12.4.5, not designed around |
| V04-17 | Coverage is engine-general and prospective | Every campaign is covered; a Character below its campaign's declared baseline is backlog, not a defect | Passed — fixture | D-09, which asserts the below-baseline cast is *not named* while coverage is live — so a pass cannot be the gate having stopped running |
| V04-18 | A malformed baseline fails loudly | A `disposition_baseline` that is not an entity identifier is rejected, never parsed as "no coverage" | Passed — fixture | D-12. Silent degradation to a null policy is `F-002`'s cause one layer down: an unreachable domain is indistinguishable from a quiet one |
| V04-18a | Silence fails toward the obligation | A campaign declaring no baseline is fully covered, never uncovered | Passed — fixture | D-11. The property separating an engine-general obligation from an opt-in, and the one `F-002` is a standing warning about |
| V04-19 | An agenda is written, not only settled | A covered Character carrying a disposition and no agenda is rejected | Passed — gate and fixture | D-07, D-08. Of commitments, supply, needs and agendas this is the **only one whose absence a gate can see**, because Decision 092 bound its creation to something checkable |
| V04-19b | The character model reaches live play | Characters recorded from here carry a disposition and an agenda, authored at first play | **Passed — observed** | Multiple Characters above `disposition_baseline: ENT-000210` now carry full Want/Fear/Secret/Voice/beliefs/agenda, authored at first play under Decision 092 — e.g. Dale Pruitt (`ENT-000135`, `EVT-000614`), Elias Kane's first full disposition (`EVT-000857`), Junia Okonkwo and Emmett Hargrave (`ENT-000213`/`ENT-000214`, minted with coverage in the same response, several fields correctly left `unestablished` rather than invented) |
| V04-20 | An agenda advances unobserved | An agenda settles forward across elapsed time with the protagonist absent, recording an outcome when nothing moved | **Passed — observed** | Walt Adamik's agenda (`130_NPCS_AND_FACTIONS.md`): "Agenda tick, 2026-08-28 06:00 (`EVT-000804`), absorbed as a world-tick advance rather than a call: the second vouch he committed to inside 2-3 days is confirmed started... No new call this span — Alexander is out of Chicago for the National tour." An outcome moved on the holder's own clock with the protagonist absent and no player inquiry, exactly the acceptance shape |
| V04-21 | A false belief survives contact | An actor holding a false belief meets someone who knows better and is not silently corrected | **Passed — observed** | Hollis (`130_NPCS_AND_FACTIONS.md`, `EVT-000647`): concluded Alexander "might be an emanation of the Gate" from an honest but wrong reading of her instrument; "He never corrected it. The inference is honest, her evidence supports it, and Decision 091 requires the mistake be played rather than repaired." A second instance stands alongside it: Dale Pruitt believes Alexander is "support-side" and "has never seen him fight" — also held with conviction, also uncorrected |
| V04-22 | Disposition changes who speaks | Play produces actors that open scenes, withhold, and remain non-interchangeable | **Pending — needs play, and it is a judgement** | Not scored here on purpose — this is explicitly the player's read, not a document's. What is worth naming as raw material for that read rather than as a verdict: Kesha Morrison initiating an unprompted call "from the field, no lead-in" (`EVT-000922`) on her own agenda; Dale Pruitt's secret (what the B-Rank client's filing is really about) withheld across six days of scenes; Owen's three-beat sequence losing its third beat on the seed-packet scene. Whether these read as non-interchangeable actors is still the player's call, per the matrix's own instruction not to convert this into a metric |

## Milestone 0.4.5 — The Engine Has a Yes (Decision 093)

| ID | Capability | Acceptance | Status | Evidence |
|---|---|---|---|---|
| V04-23 | A grant that outlives its barrier is a finding | An `open` provisional mechanic whose `due_checkpoint` the campaign has passed fails the barrier | Passed — gate and fixture | `validate_repository.ps1`; `test_provisional_grant_contract.ps1` P-01. Mutation-verified: disabling the leg fails P-01 by name |
| V04-24 | The gate is correctly narrow | A grant still inside its barrier, and a grant already ruled on, are both left alone | Passed — fixture | P-02, P-03. A gate that fired on correct canon would be routed around, which is the reasoning 0.4.4 recorded for the disposition gate |
| V04-25 | A malformed grant fails loudly | A grant with no `due_checkpoint`, no `owes`, or no `status` is rejected rather than parsed as no obligation | Passed — fixture | P-04, P-05, P-06. `F-002`'s cause one layer down: an unreachable obligation is indistinguishable from a quiet one |
| V04-26 | The yes is resident | The third branch, the recording obligation, and the magnitude prohibition are on the card the Runtime holds every turn | Passed — fixture | P-08. Decision 055: a fetched-only guardrail does not fire, and this failure happens at narration time. Mutation-verified on the magnitude line |
| V04-27 | Magnitude is never conceded | A grant concedes capability and consequence; the Data Model and the card say so in the same terms | Passed — fixture | P-08, P-09. Asserted on both surfaces separately so weakening one cannot pass as editing the other. **This is the row that distinguishes Decision 093 from rule drift** |
| V04-28 | The engine actually says yes in play | A player proposes a method the profile does not author and the scene continues, priced, instead of stopping | **Pending — needs play, and a near-miss is now on record** | `100_CHARACTER_SHEET.md`/`170_CHANGELOG.md` (`EVT-000952`, 2026-09-14): Alexander aimed Overpower at Kane's own live Standfast field to reshape rather than destroy it — "a genuinely unprecedented working," priced at 400 Mana, that landed and stood as "the first known exception to a general signature-fixity rule in this world." This is the exact shape V04-28 asks for: an unauthored method, granted and priced rather than stopped. **But it was not recorded through the Decision 093 construct** — no `provisional_mechanic` block exists anywhere in the live campaign, no `due_checkpoint`, no `owes`, no `status`; the event is captured only as an inline comment ("recorded provisional pending an owner ruling") on the skill-counter line. The capability fired in the fiction and the construct that exists to govern it was not invoked, which means this row stays Pending rather than Passed — and the gap is worth a design flag: play has now produced the case Decision 093 was written for, and the engine's own recording obligation did not catch it |
| V04-29 | A grant is ruled on at a barrier | An open grant reaches a checkpoint and the owner moves it to `ratified`, `replaced`, `bounded` or `revoked` | **Pending — needs play** | The backlog half. If grants accumulate and are never ruled on, the construct has produced a debt ledger nobody reads — which is what Version 0.6 milestone 0.6.1 is now sited to answer |

**V04-23 through V04-27 are fixture-only and the suite says so on every run.** The validator leg is vacuous against real canon until play makes the first grant. That is stated here and printed by the test rather than left for a reader to discover, because V04-07 is in this same matrix as the standing example of a shape that existed for a version with nothing exercising it.

**V04-14 fails harder, and is again not reworded.** It asked that the version complete with no foundational change beyond Decisions 088 and 089; Decision 093 is the third. Its four Decision 086 conditions are addressed in the decision itself, including the explicit record that condition (a) — played evidence — is the arguable one. The row asked the wrong question and is answered in the postmortem rather than edited until it passes.

**V04-19 is deliberately listed as its own row rather than folded into V04-15.** The gate passing and the world using it are different claims, and V04-07 is in this same matrix as the standing example of what happens when they are not separated: the claimant shape existed for a version with nothing exercising it.

---

# Current Assessment

> **Re-statused 2026-09-05 against live campaign state through `900_CHECKPOINT_0148` (captured 2026-09-04; live ledger reflects play through the 2026-09-14 game-date anchor).** The prior revision (2026-08-02, carried unedited for seventeen days) is superseded below rather than left to be discovered stale a second time — that recurrence is exactly what Version 0.3's Finding 4 named, and it is why this pass reads the play record against each row individually instead of re-asserting the old text.
>
> **Six rows moved this pass**, all from evidence, none by assumption: V04-09, V04-10, V04-12, V04-19b, V04-20, and V04-21 move to **Passed — observed**; V04-08, V04-11, V04-13, V04-22 and V04-29 were re-read and confirmed still genuinely pending rather than carried forward unchecked; V04-28 was re-read and found to have a real near-miss in play (see its row) that does not yet clear the bar. V04-07 was re-checked directly — `grep` for `claimant` across the live world ledger returns nothing — and stays **Vacuous**, correctly.
>
> The 0.4.4 rows (V04-15 onward) were authored 2026-08-19 and were already current at the last pass; they are re-confirmed here, not re-derived.

**Current tally.** Rows V04-01 through V04-14: **nine Passed** (six gate/fixture, three now observed), **one Vacuous** (V04-07), **three Pending** (V04-08, V04-11, V04-13), **one Failed and correctly recorded as such** (V04-14). Rows V04-15 through V04-22: **nine Passed** (six gate/fixture, three now observed), **one Pending, and a judgement** (V04-22). Rows V04-23 through V04-29: **five Passed — fixture**, **two Pending** (V04-28, with a near-miss now on record; V04-29, which cannot be exercised until a grant is). That ratio is the honest shape of this version and not a shortfall: Version 0.4's subject is what the world does when nobody is watching, and a fixture can prove the *shape* of that record while only play can prove the world actually moved. What changed this pass is that play has now supplied several of those proofs.

**On V04-14, which now reads as failed.** The row asked that the version complete with no foundational change beyond Decisions 088 and 089, and Decision 091 is exactly that. It is recorded as failed rather than reworded, because the row was a proxy for a real property — that foundational change inside a validating version be *disciplined* rather than absent — and Decision 086 states that property directly and in four checkable conditions. Decision 091 meets all four. **A version that admits one classified, versioned, migrated, revalidated foundational finding from played evidence is the lifecycle working, not the freeze leaking**; a row that cannot say so should be answered in the postmortem rather than edited until it passes.

Read the evidence by class. V04-01 through V04-06 are gate and fixture results — the enforcement point fires, proven against isolated copies of the real repository. **V04-07 is vacuous and labelled so**: the claimant shape exists and nothing uses it. That is the same state the commitment gate sat in for a version, and naming it here is the lesson from having discovered it late last time.

Three things watched as play produced evidence, and where each now stands:

- **V04-10 was the control for V04-09, and both now have evidence.** `GB-05` is the positive case (an opening lost to a rival after being seen); `GB-34` is the negative control (an opening nobody has yet taken, persisting on its own schedule with no artificial pressure to resolve it). The pair together, not either alone, is what makes the pass real.
- **V04-11 is still open, and remains the row that proves the version is one capability rather than two.** `ENT-000135` already carries both halves — a supply source and an unmet standing need on the same actor — but no scene has yet shown the coupling firing. This is the sharpest remaining gap in the matrix, not a formality.
- **V04-13 still cannot be settled by this document.** `GB-05`'s loss is the first data point and reads favorably, but one instance is not a pattern; it is a judgement the player makes over sustained play, and the postmortem should record it in those terms rather than converting it into a metric.

---

# What Was Blocking Every Pending Row, and What Is Left

**Superseded 2026-09-05.** This section originally recorded that no actor in Gatefall declared a supply source or a standing need, and that every pending row traced to that single missing adoption. **That stopped being true on 2026-08-14**, when five supply sources and two standing needs were authored into `110_WORLD_LEDGER.md` (design flag `F-035`, Q1) — the adoption this section called for has happened, and three of the seven originally-pending rows (V04-09, V04-10, V04-12) have since cleared to Passed on the evidence it produced. The claim below is left in place, struck rather than deleted, because a document correcting itself in place is how this exact defect (Version 0.3's Finding 4) recurred once already; a later reader should see what was wrong and when it stopped being true, not just the fixed text.

~~**No actor in Gatefall declares a supply source or a standing need.** Decision 083's construct has had zero live instances since Version 0.3 accepted it, and Decision 088's has had none since yesterday. Every row marked *Pending — needs play* is blocked on the same missing adoption, not on seven separate things.~~

**What is actually left, now that adoption is no longer the blocker.** Three rows remain pending, and each is blocked on something narrower than "nothing is modelled":

- **V04-08** (a need is met unobserved) — both live standing needs (`ENT-000135`, `ENT-000101`) are declared and `advanced`, but both remain `status: open`. Blocked on one of them actually reaching `met`, not on adoption.
- **V04-11** (a supplier's failure suppresses supply) — `ENT-000135` already carries both a supply source and an unmet need, the exact coupling this row was written to test. Blocked on a scene that plays the coupling, not on declaring the actors.
- **V04-13** (contention doesn't read as a timer) and **V04-22** (disposition changes who speaks) — both are judgements, not gates; blocked on sustained play giving the player enough instances to read, not on any missing construct.

The original worklist remains useful for the two genuinely open rows: `tools/list_supply_and_need_candidates.ps1` still lists 54 of its original 59 candidates undeclared (five wired: `ENT-000134`, `ENT-000135`, `ENT-000130`, `ENT-000145`, `ENT-000148` for supply; `ENT-000135`, `ENT-000101` for need). `ENT-000135` (Dale Pruitt) is already both a supply source and a need holder in the live ledger — the coupling case V04-11 needs is not hypothetical, it already exists on one actor and simply hasn't been played through yet.

The rates are world authoring and belong to the owner. The engine owns the obligation; the profile owns the cadence (Decision 083 point 5).

---

The Engine Postmortem is written only after this matrix is complete.
