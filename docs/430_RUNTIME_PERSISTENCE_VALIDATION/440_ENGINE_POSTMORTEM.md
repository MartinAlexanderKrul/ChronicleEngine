# Chronicle Engine

## Version 0.3 Engine Postmortem — Runtime & Persistence Hardening

**Status:** Accepted — Engine Version 0.3.0 released 2026-08-01
**Milestone:** 0.3.5 — Capability Validation and Prototype Campaign
**Prototype:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`)
**Evidence base:** `431_CAPABILITY_MATRIX.md`, `432_GATEFALL_PROTOTYPE_LOG.md`, `438`, `439`
**Authority:** Non-canonical retrospective (Design Retrospective Layer, 400–499). It records findings and required refinements; it changes no Rule, Data Model contract, or accepted decision.

---

# Conclusion

**The Version 0.3 architecture is validated. Its governance is not.**

The version set out to prove that the engine can be executed and restored reliably by any conforming Runtime, and that a world can declare overrides against a frozen, versioned contract. Both hold, on evidence that is unusually strong for this project: fifty-six consecutive conforming checkpoints across six Data Model versions and forty-six profile versions, with exact named restoration, branch, restart, and registry preservation all demonstrated, and every capability row in the matrix passing.

What the version did not hold was its own Architecture Freeze. Decisions 072–075 froze the architectural basis on 2026-07-23. Nine further foundational changes were then admitted by explicit owner ruling, each individually justified, none reversed here. That is the version's largest finding and the one that should shape 0.4's planning.

The second finding is narrower and sharper: **the engine's enforcement model has a class of obligation it cannot mechanize**, and 0.3 found its edge. Presence became mechanical (Decision 073). A claimed promotion became checkable (Decision 085). A commitment that came due became a build failure. But what an NPC *knows* — and whether the Runtime read anything before speaking for it — leaves no repository trace, and four flags across two sessions proved that instruction alone does not hold it.

---

# Validated Architecture

The following were exercised in live play and are accepted without reservation.

| Capability | Evidence |
|---|---|
| Canonical checkpoint form | 56 consecutive conforming captures; no malformed or abandoned point |
| Schema evolution under load | Six Data Model versions (0.1.2 → 0.1.6) migrated on live state with immutable checkpoints untouched |
| World Rule Profile freeze | Workshop-draft through frozen 1.45 captured in manifests; mismatch, unfrozen, and no-profile readiness all halt correctly |
| Exact restoration | Named load selects the named point, byte-for-byte, while newer state exists |
| Branch and restart | Distinct identity and lineage; registry never rolls backward; retired identifiers stay retired |
| Promotion barrier | Eight-ledger completeness held across every checkpoint, including automatic context-preservation captures |
| Presence | Single-owner location and presence-by-possession enforced mechanically |

The persistence layer that Version 0.3 existed to harden did not fail once in fifty-six checkpoints. **The original diagnosis was correct**: the Engine Postmortem for 0.2 said the failures were "enforcement and authoring-contract failures, not failures of the Persistent Object, Canonical Record, Knowledge Subject, Knowledge State, or world-first models," and 0.3's evidence says the same thing about 0.3.

---

# Finding 1 — The Architecture Freeze has no exception test

Decision 048 defines the freeze. Decision 069 gave change *classification* a structural test that reads the diff rather than the motivation, and made it mechanical at the roadmap. **The freeze's exception path received no equivalent.**

Ten decisions were admitted to a frozen version by owner ruling:

| Decision | Subject |
|---|---|
| 076 | Relationship Texture |
| 077 | Distinct game and repository dates |
| 078 | Canonical campaign clock and recovery settlement |
| 079 | Event-declared counter deltas |
| 080 | Profile-declared progression candidates |
| 081 | Runtime load audit rulings |
| 082 | Pending world-side commitments |
| 083 | Opportunity supply on the world's clock |
| 084 | `world_state_settlement` trigger domain |
| 085 | NPC participation audit |

Each carries a recorded justification, and the record is honest — every one names its classification as foundational and does not reinterpret it. The problem is not any individual ruling. It is that "admitted by owner ruling" is currently unfalsifiable: there is no stated test a proposed exception must pass, so the freeze constrains nothing that an owner is willing to rule on.

Two readings are available and the postmortem does not choose between them:

- **The freeze was advisory during a prototype milestone, and should say so.** Decision 048 requires the Prototype Campaign to find things; forbidding it from changing architecture would invert the lifecycle's purpose, which Decision 076 argued explicitly when it became the first exception.
- **The freeze meant what it said, and ten exceptions is a governance failure** that should have triggered either a version re-plan or an explicit suspension.

**Required refinement:** Version 0.4 planning must state which reading governs, and if the first, give the exception path a structural test on the Decision 069 pattern — a written condition an exception meets, checkable by someone who was not in the conversation.

---

# Finding 2 — Enforcement has a class it cannot reach

The version's most durable contribution is a working method: an obligation is not upheld because it is documented, but because a named enforcement point checks it at the moment it can be violated (Decision 055). 0.3 applied that method repeatedly and successfully.

It also found the method's boundary. Three enforcement classes emerged, and they are not interchangeable:

1. **Mechanically decidable** — presence, checkpoint form, registry monotonicity, schema conformance, commitment staleness, name collision. A validator fails the operation. Strongest.
2. **Decidable on a claim** — Decision 085's `record-updated` is verified against the object it names, so a false claim fails. The paired `no-change` is not verifiable and the decision says so.
3. **Not decidable at all** — whether an NPC's line was generated from a read or from recollection. Four flags (F-003, F-005, F-006, F-007) with the rule present, sited resident, and gated.

Class 3 is the finding. `439_NPC_GROUNDING_ANALYSIS.md` records why it resists mechanization rather than asserting it: a line generated from recollection and one generated from a correct read are identical in the transcript whenever the recollection happens to be right, and Decision 085 *measured* the nearest derived check at 147 of 390 participations — 38% false positives — before rejecting it.

**A second constraint compounds it.** The resident card is the only layer that can carry a class-3 obligation, and it is now full: **5,978 tokens against a 6,000-token warning — 22 tokens of headroom.** "State the rule harder" is not merely ineffective against class 3; it is unavailable. The next per-turn rule of any kind must displace an existing one, or the warning must move as a deliberate ruling with all four readiness surfaces re-measured behind it.

**Required refinement:** 0.4 should decide whether an NPC encounter must leave evidence that a record was fetched, on the Decision 085 pattern, and at what writer cost — governed by Decision 085's own measurement discipline rather than by argument.

---

# Finding 3 — A recurring structural shape: settler without writer

Three separate defects in this version share one form. Something is given a home in the specification and a settlement path, and nothing obliges anyone to *write* the thing in the first place:

- **F-001 / `OBJ-23`.** A Runtime-authored NPC-behavior trigger with a due window, carried in prose. Nothing dispatched against it; it failed within one in-fiction day.
- **F-003 closed channels.** The resident layer required the ruling to be recorded; two fetched skills told the Runtime to hold it in conversation until `/save`. Only the resident leg was gated, so the conflict passed every check.
- **Decision 082 commitments.** Section 2.4 specifies settlement in full and opens at *"when elapsed time reaches a commitment's due time"* — presupposing a record something had to write. **The construct still has zero live instances**, across two decisions and a declared trigger delta that fires against commitments nobody records.

The shape is worth naming because it is not a coincidence of three careless moments. Each fix sited the read or settle side, where the obligation is legible, and left the write side to instruction, where it is not.

**Required refinement:** when a future decision introduces state the Runtime must settle, it must name the moment that state is *created* and the enforcement point for that creation, or record explicitly that none exists.

---

# Finding 4 — Operational metadata decays wherever nothing reads it

The roadmap has carried this as Technical Debt since Decision 071. Version 0.3 produced three fresh instances, one of them inside this very evidence base:

- `431_CAPABILITY_MATRIX.md` and `432_GATEFALL_PROTOTYPE_LOG.md` drifted twenty-eight checkpoints and five decisions behind live state — in the documents the postmortem depends on.
- Gatefall's `180_CURRENT_STATE.md` header carried Profile 1.44 and Data Model 0.1.5 while live state was 1.46 and 0.1.6.
- Two `initialization_state: initialized-no-save` declarations remain against campaigns that have written checkpoints.

The pattern holds without exception: **metadata is accurate exactly where a gate reads it.** The worlds-and-campaigns index and the cast roster are generated and checked, and neither has drifted.

**Required refinement:** either generate the derivable parts of the validation record and check the judged parts, or accept the drift explicitly and date every claim.

---

# Backlog Disposition

| Item | Disposition |
|---|---|
| F-001, F-002, F-003, F-005–F-009 | **Actioned.** F-005/006/007 consolidated as one recorded finding (`439`). |
| F-004 | **World authoring**, deferred to a play session. Gatefall §9.5/§9.10; the in-play owner ruling governs meanwhile. |
| Commitment gate vacuity | **Carried.** The checker exists and its firing is proven by fixture; no live campaign records a commitment, so a play session must backfill Gatefall before it bites. |
| Mandatory commitment block | **Owner ruling required.** Making *absence* fail needs a declared serialization home in Data Model §7.4 — foundational. |
| Gatefall readiness at 28,448 / 30,000 | **Carried.** Will breach on ordinary play, not engine work. Trimming is authoring (Recommendation R14). |
| `test_gatefall_quest_contract` board floor | **Carried.** Requires ≥3 tracked postings; the board holds 1 after the F-002 settlement. A world-contract decision. |
| Resident card at 5,911 / 6,000 | **Carried as an architectural constraint**, not a budget note. |
| Version 0.4 number collision | **Blocks 0.4 planning.** Governance & Society and Magic Framework both hold 0.4. |
| R12 checkpoint integrity hashes, R13 storage model | **Deferred** by Decision 081, unchanged. |

---

# Conformance Work

All gates pass on the merged tree at the time of writing, with one known exception recorded above (`test_gatefall_quest_contract`, a world-contract floor, not an engine regression). Tier 1 live validation passes; runtime context measurement passes; the Version 0.3 persistence suite passes including the new N-01 name-collision case; the commitment settlement gate passes its eight fixtures.

---

# Release Decision

**Engine Version 0.3.0 — Runtime & Persistence Hardening — is released, 2026-08-01, by owner ruling.**

Version 0.3's declared goal is met, its capability matrix is complete, every flag carries a disposition, and no known architectural gap is unaddressed. The two limits that remain are recorded with their boundaries stated rather than papered over — class-3 enforcement has no mechanical proxy, and making a *missing* commitment fail would need a declared serialization home — which is the acceptance condition Decision 048 sets.

**Finding 1 was ruled on before release rather than carried**, as Decision 086. The freeze was not violated ten times; it was mis-scoped once. It binds Implementation and the Consistency Audit, and from Capability Validation onward a foundational change is permitted when it arises from played evidence, is classified under Decision 069, is versioned and migrated, and is revalidated. All ten of Decisions 076–085 already met those conditions, so the rule now describes the practice instead of being routed around by it — and remains falsifiable, because a foundational change from design review, or one skipping migration or revalidation, still fails a written condition.

The alternative — holding the version open to resolve a governance question about its own freeze — was rejected. Decision 048 requires the postmortem's refinements before **Version 0.4 Planning**, not before release, so holding bought nothing; and this roadmap's own argument for the version warns that "a project can hide in hardening indefinitely," which is precisely the shape that delay would have taken.

Findings 2, 3 and 4 are carried to Version 0.4 as required refinements. Under Decision 048 they must be incorporated before Version 0.4 Planning begins, and Planning is separately blocked until the 0.4 number collision is settled.
