# Chronicle Engine

## F-003, F-005, F-006, F-007 — NPC Dialogue Is Generated From Recollection

**Status:** Consolidated finding — one defect, four flags
**Milestone:** Version 0.3, Milestone 0.3.5 — Capability Validation and Prototype Campaign
**Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-11 in-fiction sessions
**Authority:** Non-canonical validation record. Campaign ledgers remain canonical over any world or campaign fact named here.

---

# Why these are one finding

Four flags were raised across two sessions. They read as four defects and are one:

**an NPC's line is generated from what the Runtime recalls about that character, rather than from a read of what canon says the character knows.**

Every flag is that failure meeting a different surface.

| Flag | Surface it met | What was asserted |
|------|----------------|-------------------|
| F-003 | A ruling already made and accepted | Owen referenced Walt Adamik twice in one scene, on a channel the table already recorded as closed |
| F-005 (a) | The campaign chronicle | Owen "never told" Alexander about the E-Rank reputation, against `EVT-000138` recording that he had |
| F-005 (b) | The World Rule Profile's information boundary | Owen cited Alexander's System Rank, which Section 14.4 makes perceptible to the Bearer alone |
| F-006 | An Event's summary prose | Ada Reyes and Dale Pruitt cited by name, from a line summarising what Owen flagged *in aggregate* |
| F-007 | Ambiguous Current State prose | Owen knew Wade Bishop's callback was locked to a specific day, from a paragraph that does not say he was told |

Treating them separately produces four narrow patches — suppress this fact, check that section, disambiguate this paragraph — and leaves the generator untouched. The generator is the finding.

---

# What the evidence rules out

**It is not scene-state carryover.** F-007 landed on the *first* Owen line after the player explicitly discarded the scene and reset to the checkpoint, specifically to get a clean start. Whatever produces these claims runs fresh at each line.

**It is not an absent rule.** The channel test existed, was complete, and named the exact rationalizations these failures ran on. `tools/test_npc_channel_contract.ps1` records that it "still produced four leaks in a single session." F-005 and F-006 then occurred *after* that test was written and the check was sited resident.

**It is not weak wording.** The resident layer already says a correction "does not inoculate a later turn, and does not generalize to a different fact." F-003 is that sentence being violated two exchanges after a correction was accepted.

**It is not one thread the Runtime is confused about.** F-005(b), F-006 and F-007 are three unrelated facts. The NPC ledger's own note reaches the same conclusion from the other direction: the habit is "reaching for whatever detail is nearest to make a line sound informed, not mishandling one plot thread."

---

# The one mechanical cause found, and fixed

F-003 alone had a structural cause, and it is closed.

Four documents governed recording a closed-channel ruling, and two pointed the wrong way:

- **Resident Core** — record it "so the ruling outlives the scene." Correct, and the only leg pinned by a gate.
- **`130_NPCS_AND_FACTIONS.md`** Closed Channels framing — add a row "the moment a channel is ruled closed… do not wait for a checkpoint." Correct.
- **`npc-knowledge` skill** — "hold the closed channel as a pending ruling in conversation rather than writing it to the NPC ledger file mid-scene." **Wrong.**
- **`save` skill** — named an "NPC-knowledge ruling" among the deltas held until `/save`. **Wrong.**

A Runtime following the fetched skills holds the ruling in conversation, nothing durable exists two exchanges later, and the fact leaks again in the same scene. That is exactly F-003's shape, and the table's own rows record the cost: one fact leaked twice and another three times, each after a correction was made and accepted.

**Resolved 2026-08-01.** Both skills now carve out the closed-channel write as the single deliberate exception to the mid-scene prohibition — narrow by construction, since the row mints no identifier, bumps no provenance, and changes no canonical state. `test_npc_channel_contract.ps1` pins the agreement across all four documents and asserts the `.claude` / `.agents` mirrors stay byte-identical.

---

# What remains, and why it is not mechanizable

F-005, F-006 and F-007 have no equivalent structural cause. Each is the Runtime asserting an NPC's knowledge without performing the read that would have settled it, and **the failure leaves no repository trace**: a line generated from recollection and a line generated from a correct read are byte-identical in the transcript when the recollection happens to be right, and merely wrong when it is not. There is no artifact to check.

This is the same wall recorded three times already:

- Decision 085 measured the purely-derived version of a related check at **147 of 390 participations, 38% false positives**, and rejected it on that measurement rather than on argument.
- Decision 085 further records that a `no-change` audit entry "is not verifiable and is not pretended to be."
- Recommendation R6 case 4 — "an irrelevant exchange performs no full eligibility scan" — is a claim about work the Runtime does *not* do, leaves no trace, and "remains a resident-layer text assertion, which is weaker, and that limit is recorded rather than papered over."

The load obligation (Resident Core, *Load a Recorded NPC Before Playing It*) is the strongest available answer and it is instruction. Decision 085 built the nearest mechanical proxy — `participation_audits` verifies that a claimed promotion moved a real record — and its own decision text is explicit that this catches the *write* side and cannot prove a file was read.

**F-005/006/007 are therefore dispositioned as a recorded architectural finding, not as four fixes.** Suppressing each named fact as it is caught produces a table of individual prohibitions and no improvement in the generator, which is what the four flags across two sessions already demonstrate.

---

# Disposition

| Flag | Disposition |
|------|-------------|
| F-003 | **Actioned.** Document conflict resolved in both skills; agreement and mirror parity pinned by `test_npc_channel_contract.ps1`. |
| F-005 | **Actioned → consolidated here.** No separate fix; carried as part of this finding. |
| F-006 | **Actioned → consolidated here.** |
| F-007 | **Actioned → consolidated here.** |

---

# Carried to the Version 0.3 Engine Postmortem

1. **NPC grounding is enforced only by instruction, and instruction has now failed four times across two sessions with the rule present, sited resident, and gated.** This is the clearest instance in the version of Decision 055's finding — an obligation carried only by instruction does not reliably fire — and unlike presence (Decision 073) or promotion (Decision 085) it has no decidable proxy.
2. **The resident card cannot absorb the obvious response.** At 5,911 of a 6,000-token warning it is effectively full, so "state the rule harder" is not available even if it worked, and the evidence above is that it does not.
3. **The open question for 0.4 is whether a read can be made evidencing at all** — whether an NPC encounter should be required to leave a trace that a record was fetched, on the Decision 085 pattern, and at what writer cost. Decision 085's own measurement discipline should govern: measure the false-positive rate before ruling it in or out.
4. **Ambiguous provenance in narrative prose is a contributing authoring defect** (F-007). `180_CURRENT_STATE.md` paragraphs mix what happened with what was told to whom. That is world and campaign authoring, not engine work, and is noted here so the postmortem does not mistake it for one.
