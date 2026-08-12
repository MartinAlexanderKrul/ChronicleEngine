# Chronicle Engine

## F-020, F-021 — The Channel Check Was Pointed At The Wrong Surface

**Status:** Actioned — three defects separated, three fixes landed, one residue recorded
**Milestone:** Version 0.4 — owning milestone for Version 0.3 Engine Postmortem Finding 2 (*"NPC grounding is the one obligation class with no mechanical proxy"*), carried by `002_ENGINE_ROADMAP.md`
**Classification:** Refinement under Decision 069 (no `010` section touched, no `011` change); the arguable leg and the alternative ruling are recorded in `030_ENGINE_CHANGELOG.md`
**Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-18 in-fiction session
**Authority:** Non-canonical validation record. Campaign ledgers remain canonical over any world or campaign fact named here.
**Supersedes in part:** `439_NPC_GROUNDING_ANALYSIS.md`'s finding that this class has no mechanical cause

---

# The record

Seven flags, one nominal class, seven days:

| Flag | Raised | Surface it met | Status before this pass |
|---|---|---|---|
| `F-003` | 2026-07-31 | A ruling already made and accepted | Actioned |
| `F-005` | 2026-08-01 | The chronicle; the profile's information boundary | Actioned, consolidated |
| `F-006` | 2026-08-01 | An Event's summary prose | Actioned, consolidated |
| `F-007` | 2026-08-01 | Ambiguous Current State prose | Actioned, consolidated |
| `F-016` | 2026-08-04 | Voice, independence, and derived records | Actioned |
| `F-020` | 2026-08-06 | An NPC's own-business line | **Open** |
| `F-021` | 2026-08-06 | The OOC register; Bearer-only System state | **Open** |

`F-003` was actioned into two skills, a gate, and `439`. `F-005`–`F-007` were consolidated and actioned into the Resident Core's *NPC Channel Check* and *Load a Recorded NPC Before Playing It*. `F-016` added voice and independence to the same sections and pinned them. Then `F-020` and `F-021` happened anyway, in one session, minutes apart, one turn after `F-020` was raised.

The player's own words in the moment are the most accurate summary anyone has written of it: *"you're just giving NPC non character dialogs and informations, this metagaming is very hard for you."*

---

# Where this sits relative to Decision 091

Decision 091 (*An NPC Is a Character, Not a Filtered Narrator*, accepted 2026-08-09) names `F-020` and `F-021` among its own evidence and **explicitly rejects** the alternative *"keep strengthening the channel check"*:

> Rejected: seven flags, three prior remedies, and `F-021` landing two fresh instances one turn after `F-020` was raised for the same session. The remedy surface kept growing and the recurrence rate did not fall, because the defect is not that NPCs know too much — it is that they are nobody.

**That is correct, it is not reopened here, and this document does not argue against it.** Want/Fear/Secret/Voice/Belief is the answer to *why the family kept recurring*, and nothing below competes with it.

What this document addresses is narrower, and 091 leaves room for it in its own text: **"the channel test is unchanged and is not replaced. It governs knowledge; this decision governs personhood."** The test 091 retained has three defects, and none of them is a missing prohibition:

- one class of question it should never have been asking (a lookup wearing a judgment's clothes);
- one class of content it never governed at all (out-of-character text);
- a trigger aimed at the wrong surface, so a whole shape of line never reached the test.

Every fix below either **removes** work from the check or **repairs its scope**. None enlarges the remedy surface 091 measured as ineffective. Where the two could appear to collide — an NPC holding a wrong idea about the Bearer — 091 governs and this document defers: a false *belief* is legitimate characterisation, and only holding the **quantity** as knowledge is barred.

---

# The finding: three failure modes, not one

`F-021`'s own text files itself as *"nominally the same failure family"* as the six before it. That consolidation is what kept the family alive. Seven fixes each targeted the average of three different problems.

| Mode | Instance | What actually failed |
|---|---|---|
| **A — Bearer-only state** | Kesha describing the Bearer as *"currently levelled up"* | Not a per-NPC question at all. Level is a **category** no NPC has access to; asking whether *she* could have found out has no correct answer because there is no NPC for whom the answer differs. |
| **B — Cross-register bleed** | The duck emoji | Nothing to do with NPC knowledge. Content crossed from the player's out-of-character register into the fiction as an artifact Owen sent. **Governed by no rule anywhere in the engine.** |
| **C — Ungrounded specificity** | Owen naming Nakamura and *"tonight"* | The record was loaded and correct — *"an artificer contact, no name and no address, and he did not ask for either."* The line needed a concrete detail to sound natural and reached for the nearest one. |

Mode A is a lookup against a closed list. Mode B is a quarantine rule. Mode C is the genuinely hard one, and it is the only one `439`'s *"no gate is available"* disposition actually describes.

---

# Why the check could not catch two of the three

This is the decisive evidence, and it is not in any of the seven flags. It is in the check's own trigger condition.

The Resident Core stated it:

> **It fires narrowly.** Only on a line where an NPC asserts something about the player character beyond **present visible conduct** … Greetings, atmosphere, **the NPC's own business**, and reactions to what is visibly happening need no check at all.

And `012_ENGINE_RUNTIME.md` Section 0.2 declared the enforcement moment in the same terms — *"Before any NPC line asserting a fact about the player character beyond present visible conduct."*

Run the three failures against that trigger:

| Mode | Inside the declared trigger? |
|---|---|
| A — Kesha citing a level | **Yes.** Asserts a fact about the player character beyond visible conduct. |
| B — the duck emoji | **No.** Asserts nothing about anyone; it is not a fact. |
| C — *"nothing until Nakamura's tonight"* | **Ambiguous, resolving to no.** Grammatically a statement about Owen's own evening — the exempted category, named outright. |

**Two of the three most recent leaks are outside the check's declared scope by construction.** Mode C is the sharpest: a Runtime executing the check faithfully would not have run it, because the line's subject is the NPC's own plans. No amount of stating the channel test harder reaches a line the trigger excludes.

That reframes seven flags. The check was not being skipped. **It was being executed correctly and pointed at the wrong surface.**

Mode A is the counter-case that proves the rest of the diagnosis, and it is worth stating plainly because it is the one where instruction genuinely failed. At the moment Kesha's line was generated, Mode A had the maximum fix surface available in this repository: the class named in the always-resident layer (*"mechanical counters, quest state … none is a channel"*), the token named in the fetched skill (*"No NPC knows his level, XP, stats, skills"*), an existing Closed Channels row on Bearer-only state carrying `Opens on:` **Nothing**, and that table in the readiness set. It fired anyway. For Mode A the problem is not coverage and not wording — it is that the rule asked for a judgment where a lookup would do.

---

# The mechanical cause 439 recorded as absent

`439` concluded that `F-005`–`F-007` had *"no equivalent structural cause"* to `F-003`'s four-document conflict. There is one, and it is one line wide.

The resident load obligation says to take *"the fields the campaign's declared entity dispatch names."* That dispatch, in `090_CAMPAIGN_STARTUP.md`, named:

```yaml
entity_fields:
  - canonical_state.location
  - canonical_state.condition
  - canonical_state.personality
  - canonical_state.situation
```

**`canonical_state.knowledge` was not in it.** The one field whose own first line reads *"What he knows about Alexander — check this before any scene where the System could surface"* was never in the fetch set. A Runtime following the load rule exactly fetched the narration and left the boundary on disk.

Three further facts make it a structural defect rather than an authoring oversight:

1. **The field exists on one of the ledger's sixty entity records.** Owen (`ENT-000139`) has a `knowledge` block. Kesha (`ENT-000130`), whose line produced Mode A, does not.
2. **No field was declared to own the boundary,** so it was authored wherever it fit. `F-020`'s own load-bearing fact — the artificer scoping — lives in `situation`, not `knowledge`. A checker reading `knowledge` alone would have passed Owen's line.
3. **`011_ENGINE_DATA_MODEL.md` defines no such field.** Presence has a declared structural owner under Decision 073; knowledge had none.

This is `F-019`'s ownership defect — *"too many fields with no designated owner"* — arriving on NPC knowledge. Two fields could carry the boundary, neither was authoritative, and the dispatch fetched the wrong one.

---

# What was live and broken

`F-020`'s player ruling was recorded, and had already evaporated by the time this analysis was written.

It was written into `180_CURRENT_STATE.md` prose rather than into the Closed Channels table. Current State is a rolling compressed view; it turned over:

```
Checkpoint 0079: present   0080: present   0081: absent   0082: absent   live: absent
```

There was **no Owen/Nakamura row** in the Closed Channels table — while the Kesha/Nakamura row written one scene later cited one: *"not even Owen has been given her name (see the Owen/Nakamura row above)."* A dangling citation in live canon, pointing at the ruling that had vanished.

So Owen's Nakamura channel was protected by nothing, and `F-020` was set up to recur with its own remedy gone. This is `F-003`'s mechanism — *"a correction held only in conversation evaporates with the scene"* — reproduced one layer over. The correction was durable-looking, went to a volatile ledger, and evaporated anyway.

**It also corrects a fair reading of the record.** `F-003`'s recording remedy is not unreliable: it fired correctly for both of `F-021`'s rulings, whose rows are dated 2026-08-18 and are still there. It failed for `F-020`'s because **nothing routes a ruling to the owning ledger.** The remedy works when it fires.

---

# What landed

Repaired and pinned, in cost order.

**0. The live row.** The Owen/Nakamura closed-channel row is written, resolving the dangling citation and restoring the ruling to the one NPC-knowledge artifact that is in readiness every session without a fetch.

**1. The OOC quarantine** (Mode B). Resident Core and both `npc-knowledge` mirrors: nothing the player wrote outside the fiction may reappear as something a character said, sent, or did. Scoped to **register origin, not tokens** — narrating what an OOC instruction *asked for* is correct, and a token-level rule would forbid ordinary compliance, since `// lets skip to the mining job already` is answered by narrating the mining job. Previously governed by nothing.

**2. The Bearer-Only Register** (Mode A). Gatefall Profile **1.75**, new Section 14.4.1: a ten-row closed list — level, XP, System Rank, skills, mastery, quest state, notifications, pending grants, exact pool values, and the System's existence. Section 14.4's prose is unchanged and still states the rule; 14.4.1 states its consequence in the form the narration-side check consumes. Section 20.5's prohibition on quoting numbers is extended to the quantities themselves, whether or not a number is spoken. The register carries no per-NPC reasoning **because the answer never varies by NPC**, which is exactly why it can be a lookup.

**3. The knowledge boundary has an owner, and it is fetched.** `canonical_state.knowledge` owns what an NPC knows about the protagonist and is the field the channel check reads; `situation` narrates around it and never establishes it. The `npc_present` dispatch now names it, listed first. A record with no knowledge field has been told nothing — a default-deny boundary, not a gap to fill, which is the rule `F-007` proposed and never got.

**4. The trigger is re-keyed from the line's grammatical subject to its content.** Any line carrying a specific the protagonist's private world supplies — a proper noun, a date, a time, a number, a named commitment — runs the check, **including a line about the NPC's own plans**. `012_ENGINE_RUNTIME.md` Section 0.2's declared enforcement moment is updated in the same pass, because a resident layer and an invariant table describing different triggers is precisely `F-003`'s four-document conflict.

**The narrowness property is preserved and still pinned.** Greetings, atmosphere, an NPC's own business carrying no protagonist specific, and reactions to what is visibly happening remain unchecked — still nearly all NPC dialogue. The gate's Leg 3 rationale was correct and is not repealed: an unscoped check costs pace and gets dropped. What changed is *what* the narrow trigger reads.

**Cost, and the larger half is not this change.** The card measured **7,921 against a recorded baseline of 6,328 before any of this work** — 1,593 tokens of unrecorded drift, most of it Decision 091's character model, and more than every deliberate addition in the budget file's history combined. It had been sitting 79 tokens under a hard failure nobody had looked at.

This change's own share is **+385**, taking the card to 8,306. Displacement was applied first — the trigger paragraph's illustrative gloss, its *"pace is not the tradeoff"* reassurance, and `mechanical counters, quest state` from the *"Runtime knows it"* list, which the register now owns.

**The hard ceiling moved for the first time**, on an owner ruling: warning 6,350 → 8,350, failure 8,000 → 10,000, baseline 6,328 → 8,306. That is a different kind of act from a warning move — the warning is advice to the next author, the ceiling is the architectural claim that a card above it cannot be held every turn — so it is recorded at more weight in `system/RUNTIME_CONTEXT_BUDGETS.yaml`. The structure is deliberately preserved: 8,350 keeps the tight 44-token warning margin this file has always used, and 10,000 keeps the 1,650-token warning-to-failure gap the old pair had. All four readiness baselines were re-measured behind it. **`readiness:gatefall_pendragon_001` now has 1,281 tokens against its 40,000 hard failure** and is the surface to watch.

**Enforcement.** `tools/test_npc_channel_contract.ps1` gains eight legs covering the content-keyed trigger, both lookups, the register's existence and every one of its ten rows, the knowledge owner, and the dispatch entry. **Each was verified to fail when its subject is removed** — the register rows are asserted against Section 14.4.1's own body rather than the whole profile, because `**Level` appears in a dozen unrelated places and a file-wide match would have passed either way. Leg 3's stale literal was re-pointed at the property it was protecting rather than the sentence carrying it, after the old literal failed on a one-word edit that strengthened the very claim it pinned.

---

# What this does not fix

**Mode C's residue, and it is the honest limit.** An NPC inventing a plausible *unnamed* detail — *"you've got that look like you're meeting someone tonight"* — passes the register, the quarantine, and the specifics test, and is still ungrounded. `439`'s finding stands for that residue unchanged: a line generated from correct recall and one generated from lucky invention are identical in the transcript.

The residue is much smaller than the family. The register, the quarantine, the specifics test and the re-keyed trigger cover `F-003`, `F-020`, and both halves of `F-021` — every documented instance except the unnamed-inference case.

**`names_known` is specified and not built.** The proposal — a typed list of proper nouns an NPC has been told, with a validator asserting that every name in the knowledge region appears in it — is sound and is now *possible*, because item 3 gives the knowledge boundary an owning field to validate against. It was not sound before: reading `knowledge` alone would have missed `F-020`'s own fact, and reading `situation` too would inherit a 10,382-token prose field carrying Wade Bishop, Brannigan, Priya, Kowalczyk, Reyna and Nikitas — nearly all of them people in events that NPC was not party to. That is the ~37% false-positive wall `439` measured, arriving from a new direction. Populating `knowledge` across the cast is campaign authoring for a play session, on the `F-004` precedent, and the validator should follow the authoring rather than lead it.

**The class still has no pre-emission instrument.** Mode A is now a lookup, which is strictly better than a judgment, but it is a lookup the Runtime is *instructed* to perform. The `F-009` precedent — `tools/check_name_collision.ps1`, where *"I checked"* became an act with an answer the author can be wrong about and see — is available here and is not taken in this pass. The register is what such an instrument would read.

**The evidence corpus does not exist, and that is why measurement is deferred.** `439` rests its disposition on *"the failure leaves no repository trace."* That is true today for a contingent reason rather than a necessary one: `/export`'s **Narrator** register is defined to carry NPC action, the Runtime Profile requires it verbatim — *"Keep player and narrator text exact; do not summarize, merge, or reorder turns"* — and the six existing exports summarize the Narrator side while quoting the Player side exactly. `validate_repository.ps1` excludes `exports/` from validation. The session that produced `F-020` and `F-021` has no export at all; the duck emoji appears nowhere in the repository except the flag text. Until exports conform, no false-positive rate can be measured for any detector in this family, and `439`'s own discipline — measure before ruling in or out — cannot be applied. **This is recorded as the next move and is not attempted here**, because making the export conform is a change to what a session writes, not to what a check reads.

---

# Carried forward

1. **A trigger condition is a load-bearing rule and was treated as framing.** Seven flags in one family were read as an instruction failing to fire. At least one was an instruction firing correctly on the wrong surface, and the evidence for that was sitting in the check's own first sentence the entire time. When a rule keeps failing, read what it says it applies to before strengthening what it says.
2. **A gate can pin the hole.** Leg 3 of `test_npc_channel_contract.ps1` required the exemption text that `F-020` fell through, with a correct rationale. A gate protecting a property should assert the property, not the sentence that happened to express it.
3. **Consolidation is a diagnosis and can be wrong.** `439` was right that four flags were one defect. `F-021` inherited that framing and applied it to three, which delayed all three fixes — two of which were cheap and one of which was ungoverned entirely.
4. **The fetch set is part of the rule.** An obligation to read a record is bounded by the dispatch that names the fields, so the dispatch is where the obligation actually lives. A rule pointing at a field list that omits the field it needs is not a weak rule; it is a rule that cannot be satisfied.
