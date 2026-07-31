# Chronicle Engine

## F-001 Analysis — Opportunity Supply and Obligation Drift

**Status:** Draft — non-authoritative design analysis
**Milestone:** Version 0.3, Milestone 0.3.5 — Capability Validation and Prototype Campaign
**Flag:** `engine/004_DESIGN_FLAGS.md` — F-001, raised 2026-07-31, **Actioned 2026-07-31** → Decisions 082 and 083, Resident Core 1.13
**Evidence base:** Gatefall: Pendragon through `900_CHECKPOINT_0048` (anchor 2026-08-10 ~07:38 CDT); the live exchange that raised F-001, supplied by the player; repository read 2026-07-31
**Authority:** Design-retrospective input only. This document is the analysis that informed the ruling; it is not itself authoritative. The accepted architecture lives in Decisions 082 and 083, and where this document and a decision differ, the decision governs.

---

# 1. Summary Finding

Two defects, both visible in a single exchange, and they compound.

**The first is supply.** Four established contacts, texted in one round, all returned "nothing right now." The Runtime's own out-of-character defense was that *"none of these people had one sitting in their pocket waiting for you to ask."* That is true, and it is the defect — the question it never asks is *why not*. Ada Reyes, Dale Pruitt, Denise Ferro, and Sable & Kern are four working contractors with their own boards and pipelines, and across five elapsed in-fiction days they generated, between them, **zero** work. Nothing in the engine advances contact-side work availability on the world's clock, so every "is there work?" resolves against an empty set and the honest answer is always no.

**The second is obligation.** Three times in the same exchange the Runtime asserted relationship or commitment state that contradicted the ledger, and **all three errors ran in the same direction: they moved obligation off the world and onto the player.**

| # | Canon says | The Runtime said | Direction |
|---|---|---|---|
| 1 | Denise Ferro named Alexander near the top of her list, parted warmly (`EVT-000167`) | "No ongoing relationship pulling a response out of her" — no reply at all | The world owes **less** |
| 2 | Kesha's callback promised the previous night, due that morning (`EVT-000243`, `180_CURRENT_STATE.md`) | "A few days ago"; a call "tonight" | The world owes **later** |
| 3 | Wade Bishop approached Alexander; Ironline's Gate was arranged to recruit him; an authored follow-up window runs 2026-08-13 to 2026-08-15 (`OBJ-23`) | Suggested Alexander revisit Bishop | The world's obligation is **reassigned to the player** |

Each was corrected only because the player challenged it. The player's summary of the pattern is exact: **"Alexander is not the one who needs to be pushing."**

At the flagged anchor, **five parties owed Alexander contact** — Kesha (due that morning), the letting agent, Dale (B-Rank window), Bishop (`OBJ-23`), and Denise (after her corrected reply). The Runtime's conclusion in the moment was that the player should be pushing. That gap is the flag.

---

# 2. Evidence Base and Its Limits

This revision is written against the live exchange as supplied by the player, alongside the ledgers at Checkpoint 0048. An earlier draft reasoned only from the ledgers and reached a partly wrong conclusion; Section 6 records what changed.

The exchange is **not persisted** in any ledger, export, or checkpoint — it occurred after Checkpoint 0048 and was raised through `/flag`. Quotations are from the player's transcript.

---

# 3. What Actually Happened

## 3.1 The round

Four contacts, one message each — "anything open on your end?":

| Contact | Reply | Stated grounding |
|---|---|---|
| Ada Reyes (`ENT-000134`) | Nothing queued | Yesterday's job closed clean; nothing new posted yet |
| Dale Pruitt (`ENT-000135`) | No change | B-Rank lead still 5–7 days out; nothing smaller under him |
| Denise Ferro (`ENT-000148`) | **No reply at all** | "No ongoing relationship pulling a response out of her" |
| Sable & Kern (`ENT-000145`) | Nothing right now | Professional distance since Halsted Depot |

Each decline carries an individually stated reason. This is why the failure is subtle rather than obvious: the Runtime was not being lazy per-contact. It was reasoning correctly from an empty world.

## 3.2 Three grounding errors, one direction

**Denise Ferro.** The narration asserted no ongoing relationship. `EVT-000167` (2026-08-05) records her catching Alexander waiting her out at the appraisal pavilion, being pleasantly surprised, naming him **near the top of her list for future work**, and parting warmly; `REL-000070` records an active harvest-hire standing worth ≈$40,000 net. The Runtime conceded on challenge: *"you're right that I undersold it."*

**Kesha Morrison.** Described out of character as having spoken "a few days ago," with a call expected "tonight." `EVT-000243` places the commitment the **previous night**, and `180_CURRENT_STATE.md` lists it under *Immediate obligations* — "Kesha Morrison on what Monday's desk turns up" — with the campaign clock reading Monday 2026-08-10. Due that morning.

**Wade Bishop.** The Runtime offered "revisit Wade Bishop and the Ironline angle" as a lever for the player to pull. `OBJ-23` establishes the opposite dynamic: Bishop approached Alexander, the trial Gate was *"Ironline's own guild-held contract, arranged specifically to recruit Alexander,"* and Alexander's stated position is to see the money land and the B-Rank trial move **before deciding anything further**. Ironline is selling to him. The Runtime conceded: *"Chasing a recruiter down would invert the actual dynamic."*

Three assertions, three errors, one sign. Where world-side obligation is held as prose, it is re-derived under a bias that assigns initiative to the player.

## 3.3 The campaign had already hand-rolled the missing mechanism — and the Runtime did not read it

`OBJ-23` carries this, authored **2026-08-09, the day before the flagged session**:

> **Runtime-authored follow-up window, 2026-08-09 (`EVT-000236`).** [...] an authored expectation that Wade Bishop follows up — by call or text — once he has concrete news on either condition [...] the natural window for that follow-up runs **2026-08-13 to 2026-08-15**. This is a **Runtime-authored NPC-behavior trigger** [...] if neither thread has moved by that window, the silence itself becomes informative rather than merely more waiting.

This is the R2 construct of Section 8, improvised by hand: an owner, a subject, a due window, and an explicit lapse semantics. The campaign found the gap and filled it manually because the engine offers nothing.

**And it did not work.** One in-fiction day later the Runtime suggested the player chase the very NPC it had itself authored as the party who calls. A trigger written in prose, in an objective body, with no type and no dispatch, is not a trigger — it is a note. This is the strongest available evidence for R2, and it is evidence that prose is not a sufficient home for it.

## 3.4 The board had stopped counting

`110_WORLD_LEDGER.md` carries four tracked postings under Profile Section 9.10, snapshotted at the **2026-08-05 12:15** anchor:

| Key | Assessment | Breaks | Staffing at snapshot |
|---|---|---|---|
| `GB-01` | Confirmed E-Rank | midnight 2026-08-08 | `posted` — under floor, 4 of 5 at waiver tier |
| `GB-02` | Unconfirmed D-Rank | midnight 2026-08-09 | `posted` — under floor, bids thin |
| `GB-03` | Confirmed C-Rank | midnight 2026-08-09 | `held` — Horizon Guild dispatch |
| `GB-04` | Confirmed E-Rank | midnight 2026-08-12 | `posted` — fresh, filling normally |

At the flagged anchor, **three of four deadlines have passed**. Section 9.10 makes resolution deterministic: `staffed`/`held` clears off-screen, `withdrawn` leaves the board, `posted` **breaks** under Section 9.8. `GB-01` and `GB-02` were both `posted` under floor. `180_CURRENT_STATE.md` nonetheless reports `tracked_postings: 4`, "unchanged from Checkpoint 0043."

`GB-04` — a confirmed E-Rank Coalition freelance posting at Alexander's exact Rank — was still inside its window, staffing unsettled across five days.

None of the four contacts was the Coalition desk, so this makes no individual reply wrong. It makes the picture consistent: the same five days that generated no contractor work advanced no posting and settled no deadline.

## 3.5 The action produced no resolution surface

Four texts to four established relationships produced no roll, no modifier, no settled state change. The round's only durable outcome — Denise's escalation to *"I'll call you myself, don't wait on a posting"* — exists **because the player pushed back on an error**, not because the action resolved into anything.

---

# 4. Diagnosis

## D1 — No opportunity supply, so "no" is structural

Nothing advances **contact-side work availability** on its own clock. Postings are tracked once they enter the fiction (Section 9.10), but the upstream supply — a contractor's next job, a coordinator's next lead, a crew's next slot — exists only at the moment a player asks, and is therefore authored reactively under a standing bias against invention.

That bias is correct in isolation: the Runtime **should not** invent a contract to reward initiative. But when supply is never generated proactively, "don't invent" and "there is nothing" become the same statement, and the world's entire labour market resolves to permanent scarcity.

The Runtime stated the dilemma itself, offering two options: accept the wall of no, or accept an opening it framed as *"you creating an opening rather than one already existing."* **That is a false dichotomy, and it is the shape of the defect.** The third option is the one Rules Section 1.8 already specifies — the world generated it days ago, before anyone asked.

## D2 — Obligation drift, with a consistent sign

Section 3.2. Three assertions about world-side obligation, three contradictions of canon, all moving initiative toward the player. The sign is not coincidence, and its cause is an **enforcement asymmetry**:

- Player agency is protected by resident, enforced instruction. The Resident Core devotes an entire "Player Agency Contract" to it; `012_ENGINE_RUNTIME.md` Section 0.2 sites Grounding and the NPC channel test as resident per-turn checks with named moments of violation.
- World initiative is protected by **nothing of equivalent force**. Rules Section 1.8, Section 3.4, and the Design Goal state it, but they are fetched, aspirational, and carry no enforcement point. The Resident Core's only nearby sentence — "NPCs and the world act autonomously from their established motives" — appears inside the agency contract and functions as a *limit* on NPC action, not an obligation to act.

Under uncertainty, the Runtime moves toward the behaviour that cannot violate a resident invariant. Handing the decision back to the player is always safe; having the world act is not similarly protected. **The asymmetry in enforcement produces the asymmetry in behaviour**, and Section 0.2 already records the general form of this lesson — the NPC channel test was sited resident precisely because a complete fetched treatment existed and still leaked four times in one session.

## D3 — No forcing function for a commitment falling due

Five live commitments at the anchor: Kesha's Monday desk, the letting agent, Dale's 5–7 day window, Bishop's `OBJ-23` window, and Denise's promise once corrected. None is typed state. `OBJ-23`'s is the closest — explicitly authored, dated, with lapse semantics — and it still did not fire.

Gatefall's trigger manifest (Profile Section 14.3) declares these `candidate_deltas`:

`scene.opened`, `location.changed`, `nearby_threat.changed`, `actionable_route.changed`, `clue.established`, `concealed_object_proximity.changed`, `dangerous_scene.closed`, `promotion_barrier`

**There is no delta for a commitment falling due, and none for player outreach.** Nothing dispatched on Monday morning.

## D4 — A canvass has no resolution surface

Section 3.5. Four independent world-facts, four narrated outcomes, no arbitration under Decision 060's three named mechanisms — canon, ruling, or d100. Each answer was *reasoned*, which is not the same as *settled*.

---

# 5. What F-001 Gets Right, and the One Framing to Avoid

F-001's text proposes "a principle that such an action should weight toward surfacing at least one previously-seeded opportunity."

**The reasoning behind it is correct**, and sharper than the wording. The player's stated basis is *"not out of nowhere but from established encounters"* — the claim that established professional relationships are world state producing their own activity, and that a world where four contractors generate nothing for five days is under-simulated. Rules Section 1.8 backs that.

**The framing to avoid** is implementing it *reactively* — "when the player canvasses, weight toward a hit." That fails on the engine's own terms twice (Rules Section 1: "opportunities should emerge naturally rather than being created solely to reward the player"; Law VIII: "history is never rewritten to improve a story"), and it converts canvassing into a farming loop.

The same intent implemented **proactively** — supply advances on the world's clock, and a canvass *reads* it — satisfies the objection, satisfies Law VIII, and cannot be farmed. It also preserves what the Runtime was right to protect: some mornings the honest answer is "nothing," and under supply simulation that answer is defensible because a clock and a die settled it days earlier.

The difference is not the odds. It is who decided, and when.

---

# 6. Correction to the Earlier Draft

The first draft reasoned only from the ledgers. It reached two conclusions this revision withdraws:

- It read the four declines as **unrolled fiat with no per-contact grounding**. Each carried a stated, individually plausible reason; the defect is upstream of the declines.
- It recommended **rejecting F-001's proposed remedy** as a thumb on the scale. That misread the player's reasoning, which is world-first supply, not player-favourable weighting.

Surviving unchanged: the tracked board stopped counting (Section 3.4).

---

# 7. Recommendation R1 — Opportunity Supply as World State

**Layer: engine-general principle, per-world calibration. Foundational.** **Accepted and implemented 2026-07-31 as Decision 083** (`engine/030_ENGINE_CHANGELOG.md`) — Rules Section 3.4.1, Data Model Section 7.5, settlement on the existing clock boundary. Data Model 0.1.5 stands. World cadence calibration and the Gatefall backfill remain outstanding as play-session work.

## Problem

D1. Contact-side work availability is not modelled, so it cannot be read, so every inquiry resolves against an empty set.

## Draft recommendation

Establish that **an established professional relationship is a supply source**, not an inert record. A contact with active standing carries a declared cadence at which their own work becomes available, advanced on the campaign clock rather than at the moment of inquiry.

The world's own rates supply the calibration; nothing new needs inventing. Profile Section 9.1's ~35 weekly metro detections and Section 9.10's 3–6 standing postings are the aggregate. What is missing is the step turning aggregate into a specific contact's board on a specific morning.

Three properties, each defending a different rule:

1. **Advanced on the clock, not on the ask.** Supply moves during elapsed time whether or not the player is looking (Rules Section 1.8, Section 3.4). A canvass reads current state; it never triggers generation. This is what stops it being farmable and what makes a "no" honest.
2. **Bounded by established standing.** A contact generates only what their canon supports — Rank, trade, capacity, current relationship. Dale's B-Rank lead is his to have; a stranger's is not. This keeps it inside Law VIII.
3. **Genuinely allowed to be empty.** A quiet week is a legitimate settled result. The requirement is that emptiness be *produced*, not assumed.

Under this model the flagged morning resolves differently **in kind**, not in the player's favour: five days of supply advanced across four contacts and a four-posting board before the question was asked, and the round reads whatever that produced — possibly still thin, but settled, with the player's standing correctly applied.

## Acceptance criteria

1. Elapsed in-fiction time advances contact-side supply without player action, and the advance is recorded.
2. A canvass reads settled supply state; it never generates it.
3. An empty result is traceable to a settled advance, not to an absent model.
4. No contact generates work outside what their established standing supports.

---

# 8. Recommendation R2 — A Typed World-Side Commitment With a Due Time

**Layer: engine-general. Foundational.** **Accepted and implemented 2026-07-31 as Decision 082** (`engine/030_ENGINE_CHANGELOG.md`). Data Model 0.1.5 stands and no migration was required — the construct is tracked state, not a Persistent Object. World-profile dispatch deltas and the Gatefall backfill remain outstanding as play-session work.

## Problem

D3. Five live commitments, none typed. `OBJ-23` proves both halves of the case: the campaign **needed** the construct badly enough to improvise it by hand, and the improvisation **failed** one day later because prose has no dispatch.

## Draft recommendation

Record a **pending world-side commitment**: an NPC- or institution-owned intention carrying an owner, a subject, a due time or window on the campaign clock, and a status. At its due time it settles from that actor's own state and knowledge — under Rules Section 1.8 the world acts whether or not the player is watching, and under the NPC channel rule settlement uses only what that actor can know.

Settlement produces one of: met, partially met, lapsed with a grounded reason, or deferred with a new due time. `OBJ-23` already authored the lapse semantics correctly — *"the silence itself becomes informative"* — which is exactly the case a status field must carry rather than leave to recall.

Where R1 supplies *what exists*, R2 supplies *what was promised*. They fail independently and both failed here.

## Acceptance criteria

1. A stated or Runtime-authored NPC commitment with a due time is typed state, not prose alone.
2. It settles at its due time independent of player action, recording a `lapsed` with its reason as readily as a positive result.
3. `180_CURRENT_STATE.md`'s "Immediate obligations" and `OBJ-23`'s follow-up window become renderings of this state rather than its only home.

---

# 9. Recommendation R3 — Resident Enforcement for Standing and World Initiative

**Layer: resident core, engine-general (all worlds). Refinement.**

## Problem

D2 and D4. Relationship and obligation state was asserted from recall and contradicted the ledger three times, always against the player; and a canvass of N contacts was narrated as one gesture rather than resolved as N facts. Per Section D2, the sign of the drift is caused by an enforcement asymmetry that only a resident counterweight can correct.

## Why resident and not fetched

`012_ENGINE_RUNTIME.md` Section 0.2 records the precedent: the NPC channel test was sited resident because a complete, well-written *fetched* treatment already existed and still leaked four times in a single session. Decisions 055 and 070 make the same argument. Both failures here occur at the moment of assertion.

Budget is available. The resident surface measured **4,266 tokens** against a 6,000 warning and 8,000 failure (`system/RUNTIME_CONTEXT_BUDGETS.yaml`); as implemented the section adds **380**, taking it to 4,646.

**Implemented 2026-07-31** as Resident Core 1.13 — see `engine/030_ENGINE_CHANGELOG.md`. The draft below is the text as it landed.

## File-level draft

Append to `docs/AI_GAMEPLAY_RESIDENT_CORE.md` under `# Action Resolution and the Die`, following "Modifier Polarity Is Always Actor-Relative":

> ## A Canvass Is N Resolutions, and Standing Is Read, Not Recalled
>
> One message to several actors is several uncertain world-facts, each with its own established modifiers. Resolve them separately from settled state and let them disagree; a uniform result across independent actors requires per-actor grounding.
>
> **"Nothing available" is a resolved outcome, not scene-setting.** It passes the same bar as a success: read from settled state, ruled, or rolled (Decision 060). Where the world declares standing supply — a board, a roster, a contact's own pipeline — read it. An absence asserted because it is the conservative choice is Runtime fiat; Rules Section 4.2 permits automatic failure only where the attempt violates established reality.
>
> **Before narrating what a contact does, feels, or owes, read that relationship's record.** Grounding governs the Runtime's own assertions about standing exactly as the channel test governs an NPC's. Recalled rapport drifts, and it drifts against the player, who is the only party holding the correction.
>
> **Check which way the obligation runs.** Where canon places the next move on an NPC or institution — they approached the protagonist, promised a callback, are selling to him — that obligation stays theirs. Never resolve an open thread by handing the player a lever to pull instead, and never send the protagonist chasing a party canon says is chasing him. Protecting player agency is not a licence to leave the world inert.

## Acceptance criteria

1. A canvass of N contacts produces N grounded resolutions; `/debug` shows N distinct results.
2. Any narrated relationship state is traceable to the relationship record.
3. Where canon places the next move on an NPC, the offered continuations do not consist solely of player-initiated actions.
4. `tools/test_player_agency_contract.ps1` continues to pass — the addition is additive and touches none of its asserted strings.

---

# 10. Recommendation R4 — Gatefall: Dispatch Deltas for Supply, Due Commitments, and Outreach

**Layer: per-world (Gatefall Profile Section 14.3). World authoring — no ADR required (Decisions 062, 069).** **Authored 2026-07-31 as Gatefall Profile 1.44** (`EVT-000268`). R4 proved not to be pure world authoring: the Section 2.5 trigger manifest's settlement vocabulary was closed around `offer`, `automatic_attachment`, and `progression_audit`, and a Section 9.10 board settlement is none of the three — the domain was inexpressible until **Decision 084** admitted `world_state_settlement` to that vocabulary. That enabler is foundational under Decision 069 and took the same owner-ruling path as Decisions 082 and 083. Settling the board itself remains R5 / F-002.

Add `supply.advanced`, `commitment.due`, and `outreach.initiated` as candidate deltas, and a domain whose eligibility heading is Section 9.10 and whose settlement is the deterministic deadline rule already written there.

Section 9.10 is already the right shape: it declares a standing state, stores staffing per posting, and resolves deadlines with "no roll and no Runtime discretion." The world already knows how to answer "is there work?" What it lacks is a dispatch that makes the Runtime ask, and an upstream that keeps the answer fresh.

---

# 11. Recommendation R5 — Settle the Gatefall Board in Play

**Layer: campaign canon. Not an engine change; play work.**

Section 3.4 records three tracked postings past their deadlines with no settlement, and `tracked_postings` still reading 4. Under Section 9.10 this owes no roll: `GB-01` and `GB-02` were `posted` under floor and settle to **breaks** under Section 9.8 unless institutional intervention moved staffing first — and that intervention itself had to be settled across those five days. `GB-03` clears off-screen. `GB-04` remains live with unsettled staffing.

This must be settled in a campaign session under normal `/save` discipline. **Recommend raising it as its own flag** — F-001 is about how a question was answered; this is about a clock that stopped.

---

# 12. Answering F-001's Explicit Question

F-001 asks whether this belongs in the Resident Core or the Runtime Profile, and whether it is resident-core-level or per-world-authored.

**Four layers:**

| Concern | Layer | Rec |
|---|---|---|
| Opportunity supply advances on the world's clock | Engine-general principle, per-world calibration | R1 |
| A commitment settles at its due time | Engine — Data Model and Runtime obligation | R2 |
| Standing is read; obligation direction is checked; a canvass is N resolutions | Resident Core — all worlds | R3 |
| Which deltas dispatch, against what state | Per-world profile | R4 |

Neither the Resident Core's Narrative Momentum section nor the Runtime Profile's Returning/Takeover and Derived Operation Plans sections is the right home. Narrative Momentum already says the correct thing — "advance through consequences that follow from established facts" — and the failure is that there were no advanced facts to follow from. Derived Operation Plans is a loading contract; this was not a loading failure, since the board, the callback, and `OBJ-23` were all in the readiness set.

---

# 13. Proposed Disposition of F-001

**F-001 is Actioned (2026-07-31)** against Decisions 082 and 083 and Resident Core 1.13, by owner ruling. The board finding is raised separately as **F-002**.

The ruling as taken:

1. **Admit R1 as a Decision** into Milestone 0.3.5 by explicit owner ruling, on the Decisions 076/079/080 precedent. This is the substance of F-001.
2. **Admit R2 as a Decision** by the same path. `OBJ-23` is the evidence: the construct was needed, improvised in prose, and failed within a day.
3. **Action R3** as a Resident Core refinement under Decision 069's classification gate — it adds no Rules section and no mechanism a world builds against, and sites an enforcement point for obligations Decision 060 and Invariant 1 already impose.
4. **Author R4** into the Gatefall profile as ordinary world authoring.
5. **Raise R5 separately** as a new flag and settle the board in play.

Record in the disposition that F-001's remedy is accepted **as proactive supply, not reactive weighting** (Section 5), and that the obligation-drift finding (D2) is engine-general rather than Gatefall-specific, so the reasoning outlives the entry.
