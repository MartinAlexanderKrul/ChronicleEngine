# Chronicle Engine

## The Generative Layer — Chronicle Engine Implemented Mictian's Failures and Not Its Successes

**Status:** Analysis — no engine change proposed for adoption in this pass; two variants costed for an owner ruling. **The leg this document flagged as unproven was measured on 2026-08-20 and holds** — see *Recommendation*; the instrument is `tools/test_settlement_enforcement_locus.ps1`
**Milestone:** Version 0.4, milestone 0.4.4 owns one of the three changes; the other two are unowned and one of them is foundational (see *Classification*)
**Classification:** This document is a refinement artifact. The changes it costs are **not** — see *Classification*, which states the arguable leg on each rather than pronouncing a verdict
**Source:** Owner critique, 2026-08-20, with a 490,697-byte export of the reference campaign (`In_Character (2).txt`, 14,683 lines) supplied as evidence
**Authority:** Non-canonical analysis record. Engine documents and campaign ledgers govern over any restatement here.

---

# The request, stated as the owner stated it

> *"I build this at the beginning because I really enjoyed different AI narrative game but I was fed up with constantly correcting the AI — which is happening in my Chronicle Engine every session too."*

Three specific losses, in the owner's words:

1. *"if I asked about new world mechanics or were chasing something, the world actually gave me something and did not just say 'no, that is not possible.'"*
2. *"the world was giving me events and environment reacted to me"*
3. *"the NPC in the other game had actually their own voices — they did not repeat the AI system... They were livable NPC, they even disagree with me with their own character and not by the world rules."*

The reference game is the **Mictian campaign**. `docs/400_CASE_STUDIES/401_MICTIAN_CAMPAIGN.md` already records it as *"the primary architectural inspiration for Chronicle Engine."* The owner is not asking for a new influence. He is reporting that the engine built to reproduce that campaign's conditions does not reproduce them.

---

# Finding 1 — the engine implemented every failure of its founding case study and none of its successes

`401_MICTIAN_CAMPAIGN.md` is organized in two halves: **What Worked** and **What Failed**. Each item carries an *Engine Impact* or *Engine Response*. Trace each one against the repository as it stands.

| Case-study item | Half | Declared engine response | Built? |
|---|---|---|---|
| Inventory drift | Failed | Canonical inventory ledgers, provenance | **Yes** — `120_INVENTORY_AND_OWNERSHIP.md`, Rules Section 7 |
| NPC memory drift | Failed | Knowledge model, character memory | **Yes, heavily** — channel check, Closed Channels, seven flags, a resident gate |
| Rule drift | Failed | Single source of truth, canon hierarchy | **Yes, heavily** — rules fidelity, "a rule you have not read this session does not exist yet" |
| Historical compression | Failed | Campaign Chronicle, multi-layer memory | **Yes** — `160_CAMPAIGN_CHRONICLE.md` |
| Scaling problems | Failed | Institution framework | **Partially** — `worlds/*/institutions/` |
| Persistent consequences | Worked | Persistent world simulation | **Yes** — the engine's genuine strength |
| Emergent progression | Worked | No levels, emergent development | **Partially, and inverted** — Gatefall has levels, System Rank, a class ladder |
| Transformation of scale | Worked | Layered world simulation | **No** |
| **Creative problem solving** | **Worked** | **Intent before method / open action resolution / "Yes, but…" philosophy** | **One of three** |

The last row is the finding, and it is checkable rather than impressionistic. Grepping the whole repository for the three declared responses to *Creative Problem Solving*:

```text
     "Intent before method"       Decision 009; Rules Section 4.0;
                                  012_ENGINE_RUNTIME.md line 200      BUILT

     "Open action resolution"     one occurrence in the entire repo,
                                  and it is line 122 of the case
                                  study naming it                     NEVER BUILT

     "Yes, but"                   zero occurrences outside the case
                                  study                               NEVER BUILT
```

**Every architectural response the engine actually implemented came from the What Failed column.** Inventory drift produced ledgers. NPC memory drift produced the channel check. Rule drift produced the rules-fidelity contract. Those are the three heaviest, most-enforced, most-gated mechanisms in the engine, and all three are corrections.

This is the structural explanation for `F-028`'s complaint — *"every remedy for four months had been a prohibition"* — and it is not a four-month pattern. It is the architecture's founding shape. A machine assembled entirely out of the corrections to a campaign will reliably prevent that campaign's defects and will not reproduce it, because **the part the owner enjoyed is in the other column, and the other column was never given a mechanism.**

`F-028` diagnosed this from inside the NPC surface and concluded prohibition could not close it. That conclusion generalizes past NPCs to the whole engine.

---

# Finding 2 — the resident card is 2:1 constraint, and only the constraint half has steps

`docs/AI_GAMEPLAY_RESIDENT_CORE.md` is the only layer that runs on every turn. Measured 2026-08-20 with `tools/measure_runtime_context.ps1`: **8,337 tokens, 33,345 bytes** against a warning of 8,350 and a hard failure of 10,000. Per-section, by the file's own estimator (UTF-8 bytes / 4):

| Section | Tokens | Function |
|---|---:|---|
| The NPC Channel Check | 766 | constrain |
| Turn-State Settlement | 887 | book-keep |
| Profile-Declared Proactive Trigger Audit | 862 | book-keep |
| Load a Recorded NPC Before Playing It | 524 | constrain |
| Action Resolution and the Die | 394 | constrain |
| A Roll Shows Its Arithmetic | 381 | constrain |
| Context-Preservation Watch | 237 | book-keep |
| Information Boundary | 206 | constrain |
| The Player Intent Domain | 204 | constrain |
| Characterization Settlement | 177 | book-keep |
| Compression Preserves the Intent Envelope | 169 | constrain |
| Intent Is Authored; Facts Are Grounded | 103 | constrain |
| Modifier Polarity | 81 | constrain |
| Content Boundary | 67 | constrain |
| **Constraint and book-keeping subtotal** | **5,058** | |
| Play the Character, Not a Filtered You | 636 | generate |
| The World Does Not Wait to Be Asked | 605 | generate |
| The World's Answer Is Due In The Scene That Asks | 375 | generate |
| A Canvass Is N Resolutions, Standing Is Read | 370 | generate (mixed) |
| Unnamed Is Not Absent — Author It | 325 | generate |
| Narrative Momentum | 77 | generate |
| **Generative subtotal** | **2,388** | |
| Purpose, headers, cadence, agency frame | 891 | frame |

**5,058 against 2,388 — 2.1 : 1.** That ratio alone would be defensible. What is not defensible is the *form* of each half:

- The constraint half contains a **nine-step numbered checklist** (Turn-State Settlement), a **four-trigger numbered audit** (Trigger Audit), a **lookup-not-a-judgment** register (the Bearer-Only Register), an **itemised arithmetic template** with a worked failure attached, and a **firing condition with three clauses** (Context-Preservation Watch).
- The generative half contains no numbered step, no template, no counter, and no trigger. It is six passages of prose maxim.

What is checked gets done. `F-034` said this outright about its own remedy — *"an obligation living in prose... will decay inside three sessions and leave no trace when it does"* — and then the Runtime half of `F-034`'s own fix was landed as prose in *The World Does Not Wait to Be Asked*, where it has been decaying since.

**The per-turn attention budget is the scarce resource and the constraint half owns 2.1x of it.** The reference campaign's turn is four to six sentences: a consequence, one new pressure, a status line. Chronicle Engine's turn is a channel check, an itemised roll, nine settlement steps, a four-trigger audit, characterization settlement and a context watch. There is no room left in the turn for the world to do anything, and that is a budget fact rather than a matter of instruction quality.

---

# Finding 3 — the three losses, traced individually

## 3a. "No, that is not possible" — the engine's own law says the opposite, and no resident sentence carries it

This is the only one of the three that is **not** on the design-flag register, because the engine is doing it deliberately.

`AGENTS.md` §2 and the `rules` skill: unauthored means *"narrate no version of the mechanic, and ask the owner for a ruling."* The Resident Core states the line as exactly two branches:

```text
     A MECHANICAL VALUE     -> stop, name the gap, take a ruling
     A FACT ABOUT THE WORLD -> author it now, from established texture
```

That distinction is correct and `F-034` was right to draw it. It is also **missing the branch the owner's best play lives in.** A forged badge made with a genuine seal; binding a soul permanently; evolving a drake with a captured heart; chasing a trade nobody wrote down — these are **player-proposed capabilities**. They have fictional consequences (branch two) *and* they will eventually need a number (branch one). Today every one of them routes to `stop`.

**And engine law already forbids that routing.** `engine/010_ENGINE_RULES.md` Section 4.0:

> *"The engine must never reject a creative solution solely because it differs from an anticipated approach."*

> *"A failed roll should rarely invalidate the player's intent completely. Instead, failure should create new situations"* — progress at unexpected cost, success with complications, incomplete success, delayed success, unintended consequences, new opportunities, new obstacles.

> *"Only when objective reality makes the intended goal impossible should the engine resolve complete failure."*

And Section 4.2:

> *"Automatic failure should be rare. Whenever possible, impossible actions should instead become alternative outcomes."*

That list of seven alternative outcomes **is** the "Yes, but…" table the case study named. It is engine law. It sits at line 1284 of a 121,549-byte fetched file.

**The resident layer references Section 4 exactly once**, in *A Canvass Is N Resolutions*, and only in the negative direction: *"Rules Section 4.2 permits automatic failure only where the attempt violates established reality."* Section 4.0's positive content — evaluate creative methods fairly, turn failure into a new situation, never reject for being unanticipated — appears nowhere in the Resident Core, nowhere in the `rules` skill, and nowhere in the `resolve` skill.

So the law says yes-but, the per-turn layer says stop, and the per-turn layer is the only one that runs.

**Evidence from the reference campaign, showing what the third branch buys.** The player argued his badge was not forged because he had used a genuine seal and genuine documents. The reply granted it — *"technically authentic... indistinguishable from one issued by the Guild Master himself"* — and in the same paragraph put armed guards in front of him beside two corpses. Twice the player challenged the world's logic out of character; both times the world **conceded the player's point and kept the pressure**, supplying a divine trigger for a bell no person rang, and a Light-Step teleport ritual for an army that could not have marched in time. Neither concession was a retcon and neither was a refusal.

This is the highest-value of the three changes and the cheapest to state.

## 3b. World initiative — actioned, and the gate measures the wrong thing

`F-034` is Actioned on all four questions: a daily world tick in Gatefall Profile 1.73 Section 9.1, sited `d100` so proximity is an input rather than a veto, a push channel on both quest triggers, and a validator gate.

The gate is `tools/validate_repository.ps1:2843`. It fails a campaign whose `world_clock.last_ticked` sits behind the most recent day boundary. **It proves the clock ran. It does not test that a single result ever reached the protagonist** — which was `F-034`'s actual measured finding:

```text
     Gate breaks in the campaign          4
     Gate breaks that reached the Bearer  0
     Quests the world proposed unprompted 0
     Red gates rolled                     0
     Tracked board postings               0
```

A world that ticks faithfully and absorbs every result off-screen passes this gate forever, and is indistinguishable from a world that is switched off — which is the sentence the gate's own failure message quotes. The obligation that would close it lives in *The World Does Not Wait to Be Asked*: 605 tokens of prose with no step, no counter and no trigger, competing against a nine-step settlement checklist for the same turn.

## 3c. NPC voice — actioned, and the model is unaffordable and prospective

`F-028` and Decision 091 authored the character model: **Want, Fear, Secret, Voice**, plus Belief and Agenda. Decision 092 made coverage engine-general. `tools/test_disposition_contract.ps1` enforces it and is mutation-tested. The machinery is real and correct.

Two things stop it reaching play.

**It is prospective.** `campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md` line 21 declares `disposition_baseline: ENT-000210`. Every entity minted before that — the entire cast the owner actually plays with — is exempt by design, and the gate is correctly silent on them. Live counts in `130_NPCS_AND_FACTIONS.md`, 2026-08-20:

| Field | NPCs carrying it |
|---|---:|
| `personality` | 50 |
| `situation` | 56 |
| `want` / `fear` / `secret` / `voice` | **18** |
| `agenda` | **8** |
| `belief` | **0** |

Roughly two thirds of the played cast has nothing to be played *from*, so it gets played from present visible conduct — which is `F-028`'s definition of the narrator with a name. The roadmap's Current Sprint already lists *"backfilling the cast beneath that baseline"* as owed play-session work.

**And the backfill is blocked on cost, which `F-028` measured.** Owen Callahan's record reached 88,557 bytes against a ratchet of 88,722 — 165 bytes of headroom — after his four disposition fields were cut roughly in half to fit. `canonical_state.situation` alone was 46,968 bytes of dated historical spans inside a field the Data Model defines as *"what is true now"*, and the entity dispatch fetches it before he speaks. Loading one NPC and its relationship costs about 29,000 tokens against a 30,000 readiness ceiling. Current measurement confirms the pressure has not eased: `ENT-000125` sits at 159,260 bytes against a ratchet of 159,345 — **85 bytes** — and `REL-000066` at 70,381.

**The character model exists and nothing can afford to load it.** That is why NPCs still sound like the narrator, and it is not a discipline problem.

---

# The three changes

Two are resident text. One is generator and data work already owned by a milestone.

## Change 1 — a third branch: a proposed capability is granted, priced, and owed

Draft resident clause, measured at **1,308 bytes / 327 tokens**:

> ## A Proposed Capability Is Granted, Priced, and Owed
>
> Rules Section 4.0 governs this and no resident sentence has ever carried it: *the engine must never reject a creative solution solely because it differs from an anticipated approach*, and Section 4.2 makes automatic failure rare — *impossible actions should instead become alternative outcomes*. A player inventing a capability the profile does not author is a third branch, not the mechanical-value stop:
>
> ```text
>      A MECHANICAL VALUE       stop, name the gap, take a ruling
>      A FACT ABOUT THE WORLD   author it now, from established texture
>      A PROPOSED CAPABILITY    grant it in the fiction now, priced,
>                               and record the ratification it owes
> ```
>
> Granting is naming the thing the player just invented, stating what it costs him and what it risks, and letting the scene continue. **Never a flat refusal, and never a deferral to the owner mid-scene.** Record it in the same turn as a provisional mechanic — what was granted, the price narrated, the profile section that must ratify or replace it — and its number is authored at the next checkpoint, by the owner, never in the scene. An unrecorded grant is a rule invented silently, which is what the stop exists to prevent: the record is what makes yes safe.

**Why this does not reopen rule drift**, which is the objection it must survive. Rule drift was Mictian's genuine failure and the rules-fidelity contract is the correct answer to it. What the contract lacks is a way to say yes *now* and settle the number *later* without the number being invented in the scene. A provisional grant is a **tracked debt**, not a silent invention: it is recorded the turn it is made, it names the profile section that owes a ruling, and it is checkable — a provisional grant older than N checkpoints is a validator finding, on the same pattern as `world_clock.last_ticked`. The current design has no yes-path at all, which is why the safe answer and the correct answer have diverged.

## Change 2 — the turn owes a push

Draft resident clause, measured at **916 bytes / 229 tokens**:

> ## The Turn Owes a Push
>
> Settlement asks what changed. This asks what **arrived**. Before yielding, name one thing the world did that the player did not cause and that reaches him: a person, a message, a deadline moving, a break landing on his route rather than off-screen.
>
> `F-034` measured the alternative — four Gate breaks, none reaching the Bearer; two quests, both mirroring something he had already touched; zero unprompted offers in ninety in-fiction days. The clock was gated and the clock ran. **A tick nothing reached is indistinguishable from a world that is switched off**, so `world_clock.last_ticked` does not discharge this and never did.
>
> A push does not interrupt the declared action and does not choose for the protagonist. It is what the scene contains when he looks up. Record it with the tick that produced it; a push you did not record is one the next session cannot tell you already spent.

The recording half is what makes it gateable: a second leg on the existing world-clock check, asserting that ticks in the settled span produced at least one recorded protagonist-reaching result. Design that leg carefully — a counter the Runtime can satisfy by writing the word "none" is the `F-012` failure repeated, and a floor set too high manufactures events the fiction does not support.

## Change 3 — disposition moves to the cast card, and the baseline comes down

**Landed 2026-08-20, in the generator half.** Schema 1.1 of `tools/generate_campaign_cast.py` emits a `Disposition` section carrying the lead of each Character's Want, Fear, Secret and Voice. Measured outcome, replacing this section's estimates: the Gatefall roster went 7,662 -> 14,479 bytes, the readiness-loaded `Cast` section is **byte-identical**, and the readiness surface is **unchanged at 37,212 tokens** — because `campaign_readiness_headings` selects `Cast` alone, so the new section costs a session nothing until fetched. Coverage is now printed rather than inferred: **53 Characters, 18 authored in full, 0 partial, 35 with nothing.** The paragraphs below stand as the reasoning; the numbers here supersede the ones in them.

`campaigns/<c>/135_CAST_IN_PLAY.md` already exists: generated by `tools/generate_campaign_cast.ps1`, **7,662 bytes**, one row per entity, byte-for-byte gated by `-Check`, and already a readiness read. It carries Entity / Name / Kind / Status / Location / Relationship and **no disposition columns**.

Extend the generator to carry Want / Fear / Secret / Voice / Agenda per row. At roughly 150 bytes an NPC across ~56 entities that is about 8,400 bytes — call it 16 KB total, ~4,000 tokens — for the **whole cast**, against ~29,000 tokens to load **one** NPC through the entity dispatch today. The blanks then become visible as blanks rather than being invisible below a prospective baseline, which is what turns the backfill into a worklist.

Then two things the roadmap already lists as owed:

- lower `disposition_baseline` and backfill the cast beneath it — **campaign canon, so a play session, not an engine change**;
- retire `canonical_state.situation`'s superseded dated spans to the chronicle for the heavy records, which is `F-028`'s named unblock and `F-019`'s open ownership question with a forcing case attached.

**Resident cost: approximately zero net**, because the disposition-loading sentences in *Load a Recorded NPC* (524 tokens) and *Play the Character* (636 tokens) get shorter when the fields are already resident on the card. **This figure is not yet measured and should not be trusted until it is.** `system/RUNTIME_CONTEXT_BUDGETS.yaml` records two prior displacement attempts in exactly this section that were rejected by `tools/test_npc_channel_contract.ps1`, which pins the load-bounding sentence resident on purpose. Expect the same here.

---

# The two variants, costed

Measured baseline, 2026-08-20: **8,337 tokens**. Warning **8,350** (13 tokens of headroom). Hard failure **10,000** (1,663 tokens).

## Variant A — settle at scene boundaries

> **Ruled and implemented, 2026-08-20.** The owner ruled Variant A. What actually happened, against what this section projected — both figures kept, because the estimate was labelled an estimate and editing it to match would destroy the only record of how good the estimate was:
>
> | | Projected | Realised |
> |---|---:|---:|
> | Card after the change | ~7,782 | **7,681** |
> | Freed by condensation | ~1,111 | **656** |
> | Suites needing re-pointing | 4 | **0** |
>
> **The saving is 455 tokens short of the estimate**, which is why headroom is 669 rather than ~1,100. It still covers both remaining clauses (+556 measured) with 113 to spare and needs no warning move, so the ruling holds on the realised number and not only on the projected one.
>
> **The displacement cost was zero, against four predicted, and the prediction was wrong for an instructive reason.** The four-suite figure came from the *deletion* measurement. All eight literals those suites pin turned out to live in the elapsed-time step — commitments, supply, needs, deadlines, the exact anchor — which is world-side settlement and stays resident on its own merits. Condensing around them cost nothing. **Deleting a section and condensing it are different operations, and this document costed the wrong one.**
>
> The moved material lives in `AI_GAMEPLAY_RUNTIME_PROFILE.md`, *Boundary Settlement*. Baselines re-recorded in `system/RUNTIME_CONTEXT_BUDGETS.yaml`; Gatefall's readiness surface gained margin for the first time from engine work rather than a hand trim, 1,281 -> 3,443 tokens against its hard failure.

Per-exchange settlement retains only what the *next resolution reads*: immediate costs, harm, conditions, item use, the campaign-time anchor with its commitments and deadlines, and in-flight session state. Counters, `counter_deltas` reconciliation, participation coverage, characterization settlement and the progression half of the trigger audit move to the scene boundary and to `/save`, with a boundary pointer left resident and the full procedure fetched from `AI_GAMEPLAY_RUNTIME_PROFILE.md`.

| Line | Tokens |
|---|---:|
| Baseline | 8,337 |
| Turn-State Settlement 887 -> ~330 | −557 |
| Characterization Settlement 177 -> ~55 | −122 |
| Trigger Audit, progression half 862 -> ~430 | −432 |
| Change 1, measured | +327 |
| Change 2, measured | +229 |
| Change 3, unmeasured | ~0 |
| **Projected** | **~7,782** |

That lands **568 tokens under the current warning**. No warning move, no owner ruling on the budget, and headroom restored for the first time since 2026-08-01. The three `-> ~` figures are estimates of condensed text not yet drafted; the two `+` figures are measured byte counts of drafted text.

**What Variant A risks, stated plainly.** `F-011`, `F-012` and `F-015` are all counters narrated and never written. Moving counter settlement off the exchange moves it toward the failure those flags record. The mitigating fact is that **the gates enforcing settlement already fire at the promotion barrier and at the Event, not at the exchange** — measured rather than argued, under *Recommendation* below and permanently by `tools/test_settlement_enforcement_locus.ps1`. The per-turn obligation is already prose with no enforcement point, and it is prose costing about 1,100 tokens of the scarcest surface in the engine. Variant A moves an unenforced obligation to where its enforcement actually is rather than weakening anything.

## Variant B — keep per-turn settlement, pay from the budget

| Line | Tokens |
|---|---:|
| Baseline | 8,337 |
| Change 1, measured | +327 |
| Change 2, measured | +229 |
| Change 3, unmeasured | ~0 |
| **Projected** | **~8,893** |

That is **543 over the current warning** and 1,107 under the hard failure. It requires a third deliberate warning move — 8,350 -> roughly 8,950 — with all four readiness baselines re-measured behind it, and it leaves the card 1,100 tokens from a ceiling that has already been raised once.

`RUNTIME_CONTEXT_BUDGETS.yaml` closes its own account of the last ceiling move with: *"Do not read a moved ceiling as permission to append."* Variant B is that append. It is not thereby wrong — the same file also records, honestly, that displacement *"is the wrong instrument when every candidate for removal is still doing work"* — but it should be chosen knowing it is the third move of a line the file's own commentary treats as architecture.

**What Variant B risks.** Nothing in settlement regresses. The cost is that the two new generative clauses are added to a turn that is already 2.1 : 1 against them, and Finding 2 argues the ratio is the mechanism. Variant B buys the rules and not the room, and the most likely failure mode is that both new clauses decay exactly as `F-034`'s prose remedy did — at which point the diagnosis will read as wrong when it was only underfunded.

---

# Recommendation, and the leg that is genuinely arguable

**Recommended: Variant A**, on the argument that Finding 2 identifies the ratio as the cause and Variant B does not change the ratio. Sequencing 3 -> 1 -> 2 -> 4: Change 3 is enabling work already owned by milestone 0.4.4 and needs no ruling; Change 1 is the largest felt improvement per line of diff; Change 2 needs its gate leg designed carefully; the settlement split is the ruling and should be taken last, on the measured condensed drafts rather than on the estimates in this table.

**The arguable leg — measured 2026-08-20, and it holds.** This section originally recorded the leg as unproven: Variant A's claim rests on *"the gates enforcing settlement already fire at the barrier, not the exchange,"* asserted from reading those suites' purpose and fixtures rather than from mutation. It asked for the test before the ruling. `tools/test_settlement_enforcement_locus.ps1` is that test, and it is now in the Tier 3 suite. The original reading is preserved here because it was a reading; what follows is the measurement.

| Mutation | Suites swept | Changed verdict |
|---|---:|---|
| Cadence sentence rewritten — *"After every resolved exchange and before yielding"* to *"At each Event boundary and before promotion"* | 10 | **0** |
| Entire `# Turn-State Settlement` section deleted — all 887 tokens | 10 | **4** |

**All four of the four are literal string-presence assertions on the card**: `test_commitment_contract`, `test_opportunity_supply_contract`, `test_reikon_runtime_contract`, `test_gatefall_recovery_contract`. Every behavioural gate — the repository validator, the checkpoint contract, the participation audit — stayed green under both mutations.

**So the leg holds, and it holds harder than the recommendation needed.** It is not merely that settlement is enforced at the barrier rather than at the exchange. It is that **deleting the engine's entire per-exchange settlement procedure from the only layer that runs every turn changes no behavioural verdict anywhere in the repository.** The obligation is carried by prose; the four suites that notice its absence are checking that the prose is still present. Variant A is therefore not trading a guarantee for room — there is no guarantee at that locus to trade. It is moving an unenforced 887-token obligation to where enforcement actually sits, and Decision 090's skill-credit coverage and Decision 085's participation audit both key on the **Event**, which is scene granularity — the granularity Variant A proposes.

**What this does not settle.** That per-exchange settlement is unenforced is not an argument that it is worthless; a discipline the Runtime actually follows is worth something whether or not a gate checks it. The measurement bounds the *risk* of Variant A, not its *merit*. And Variant A's displacement cost is now exact rather than estimated: **four suites need their assertions re-pointed at wherever the text moves**, which the test will report by name if the set ever changes.

**The second arguable point is unaffected.** Change 2's classification — refinement or foundational — turns on its validator leg, not on this measurement.

A second, smaller arguable point: Change 2's push obligation may be readable as *"an engine-general mechanism a world must satisfy"* (Decision 069 leg 3), which would make it foundational rather than a refinement. It reads to this document as a refinement — it sites and enforces an obligation `F-034` already established and *The World Does Not Wait to Be Asked* already carries — but the gate leg is what tips it, and a leg that fails a campaign is a mechanism a world must satisfy. If the owner rules it foundational it cannot land against 0.4 and belongs in 0.5 Planning.

---

# Classification

| Change | Decision 069 legs | Reading |
|---|---|---|
| **1 — Provisional Grant** | Leg 3, and probably leg 2 | **Foundational.** It introduces an engine-general mechanism (a provisional mechanic with a ratification debt) and likely a Data Model object to carry it. It may not land against a released version except from played evidence, classified, versioned and migrated — and it *does* come from played evidence, so it needs a Decision and a milestone rather than a refinement note. |
| **2 — The Turn Owes a Push** | Leg 3 is the question | **Arguable, argued above.** Refinement if the resident clause lands alone; foundational once the validator leg makes it a thing a world must satisfy. |
| **3 — Cast-card disposition** | None | **Milestone 0.4.4 work, already owned.** Generator change plus a baseline decision. The cast backfill and the `situation` retirement are **campaign canon and therefore a play session**, not an engine change. |
| **4 — Settlement split** | Leg 3, possibly leg 1 | **Owner ruling.** Restructures a per-turn obligation the engine carries generally. |

---

# What this document does not do

- It writes no canon. No `EVT-`, `ENT-` or `REC-` identifier is minted, no campaign ledger is touched, no profile version is bumped, and no adoption Event is written. Where a change below reaches campaign state — the cast backfill, the `situation` retirement, lowering `disposition_baseline` — **that is play, and it is owed to a play session.**
- It supersedes nothing. `F-028`'s diagnosis, `F-034`'s four questions and `F-035`'s finding all stand exactly as written; Finding 1 generalizes `F-028`'s conclusion past the NPC surface rather than overturning it.
- It leaves two items unflagged that probably should be flagged: the absent yes-path in the rules-fidelity contract (Finding 3a — no existing flag covers it), and the world-clock gate testing that the clock ran rather than that anything arrived (Finding 3b — `F-034` is Actioned and this is residue, not a reopening).
- The three `-> ~` condensation figures in Variant A are **estimates**. Nothing in this document should be adopted on them; draft the condensed sections and re-measure with `tools/measure_runtime_context.ps1` before the ruling. The `+327` and `+229` clause figures and every number under *Recommendation* are measured.
- ~~One pre-existing suite failure... pins a mutation precondition to the live value `Keen Sense ... **Uses 88`, and Checkpoint 0107 advanced that counter to 89.~~ **That diagnosis was wrong and is corrected here rather than deleted.** The count is not pinned — it comes from `Get-CounterLine` and is correctly derived — and the counter and the render both read 88 and agree. The actual defect was that the mutation pinned the render *label* `**Uses ` while Keen Sense renders `**Successful uses `. Both spellings are authorised: `validate_repository.ps1` matches `(?:Successful uses|Uses)`, and both are live in the same sheet across twenty skills. Fixed 2026-08-20 by reusing the validator's own alternation, together with the mirror-image latent bug in the sibling Twin Fang mutation. The lesson generalises in the direction the original note guessed at but misidentified: **an incidental literal is as brittle as a live value, and a label is not the property under test.**
