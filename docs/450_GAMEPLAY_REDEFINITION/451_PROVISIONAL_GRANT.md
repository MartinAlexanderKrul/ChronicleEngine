# Chronicle Engine

## Decision P008 (draft) — A Proposed Capability Is Granted, Priced, and Owed

**Status:** **Proposed.** Not accepted, not claimed by a milestone, and deliberately not numbered into the accepted series. `engine/001_ENGINE_DECISIONS.md` carries the stub under *Pending Decisions*; this is its argument.
**Date:** 2026-08-20
**Classification:** **Foundational** under Decision 069 — it introduces an engine-general construct a world may invoke and a Runtime must satisfy, and it adds a Data Model section. The arguable leg is *which version owns it*, argued under **Where this belongs**, and that is the owner's ruling rather than this document's.
**Related Sections:** `010_ENGINE_RULES.md` Sections 4.0, 4.2; `011_ENGINE_DATA_MODEL.md` Sections 7.3, 7.4 (precedent), proposed 7.10; `012_ENGINE_RUNTIME.md`; `docs/AI_GAMEPLAY_RESIDENT_CORE.md`; `AGENTS.md` §2; Decisions 069, 082, 084, 086, 090; `docs/400_CASE_STUDIES/401_MICTIAN_CAMPAIGN.md`; `docs/450_GAMEPLAY_REDEFINITION/450_GENERATIVE_LAYER_ANALYSIS.md`
**Authority:** Non-canonical proposal. Nothing here is in force.

---

# Context

## The engine's own law already says yes, and no layer that runs carries it

`010_ENGINE_RULES.md` Section 4.0:

> *"The engine must never reject a creative solution solely because it differs from an anticipated approach."*

> *"A failed roll should rarely invalidate the player's intent completely. Instead, failure should create new situations"* — progress at unexpected cost, success with complications, incomplete success, delayed success, unintended consequences, new opportunities, new obstacles.

Section 4.2:

> *"Automatic failure should be rare. Whenever possible, impossible actions should instead become alternative outcomes."*

That is the "Yes, but…" table, in engine law, at line 1284 of a 121,549-byte fetched file. **The Resident Core cites Section 4 exactly once**, in *A Canvass Is N Resolutions*, and only in the negative direction — *"Rules Section 4.2 permits automatic failure only where the attempt violates established reality."* Section 4.0's positive content appears nowhere in the resident layer, nowhere in the `rules` skill, and nowhere in the `resolve` skill.

The law says yes-but. The per-turn layer says stop. Only one of them runs.

## The line has two branches and the interesting moves fall between them

The Resident Core states it precisely, and correctly as far as it goes:

```text
     A MECHANICAL VALUE          not the Runtime's to invent
        -> stop, name the gap, take a ruling, version the profile

     A FACT ABOUT THE WORLD      the Runtime's to author, now
        -> author it from established parameters and move
```

`F-034` drew that line and was right to. What it does not cover is the class the player's best play actually lives in: **a proposed capability** — a method the player invents that the profile does not author. A badge forged with a genuine seal. A soul bound permanently to an object. A trade nobody wrote down, pursued until it yields.

Such a move is *both*. It has fictional consequences, which branch two says author now. It will eventually need a number, which branch one says stop for. Today the whole class routes to `stop`, because `AGENTS.md` §2 has no third exit: unauthored means *"narrate no version of the mechanic, and ask the owner for a ruling."*

**There is no yes-path anywhere in the engine.** That is the gap this proposes to close, and it is the one complaint in `450_GENERATIVE_LAYER_ANALYSIS.md` with no design flag against it, because the engine is doing it deliberately.

## The founding case study named this and it was never built

`401_MICTIAN_CAMPAIGN.md` records *Creative Problem Solving* under **What Worked**, with three declared Engine Impacts. Grepped against the repository:

```text
     "Intent before method"       Decision 009; Rules Section 4.0;
                                  012_ENGINE_RUNTIME.md line 200      BUILT

     "Open action resolution"     one occurrence in the whole repo,
                                  and it is the case study naming it  NEVER BUILT

     "Yes, but"                   zero occurrences outside the
                                  case study                          NEVER BUILT
```

The case study's own standard for any change is *"Would this help create another campaign that feels as organically earned as Mictian?"* Two of the three answers it gave to its own strongest observation were never implemented.

## And rule drift is the reason, which is why the remedy must be a record

This must be said plainly or the proposal reads as reckless. **Rule drift was Mictian's real failure** — the case study records magic changing behaviour without explanation, soul vessels becoming inconsistent, rituals gaining and losing limitations. The rules-fidelity contract is the correct answer to it and is not weakened here.

What the contract lacks is a way to say yes *now* and settle the number *later* without the number being invented in the scene. The current design has no such path, so the safe answer and the correct answer have diverged, and a Runtime facing the choice takes the safe one every time. A provisional grant is a **tracked debt**, not a silent invention.

---

# The proposed decision

**1. There are three branches, not two.**

```text
     A MECHANICAL VALUE       stop, name the gap, take a ruling
     A FACT ABOUT THE WORLD   author it now, from established texture
     A PROPOSED CAPABILITY    grant it in the fiction now, priced,
                              and record the ratification it owes
```

**2. Granting is naming, pricing, and continuing.** Name the thing the player invented, state what it costs and what it risks, and let the scene run. Never a flat refusal on the grounds that the profile is silent, and never a mid-scene deferral to the owner.

**3. A grant is recorded in the turn it is made,** as a **provisional mechanic** (Section 7.10 below): what was granted, the price narrated, and the profile section that owes a ruling. An unrecorded grant is a rule invented silently, which is exactly what the stop exists to prevent. **The record is what makes yes safe**, and a grant that cannot be recorded is not grantable — the same shape as Decision 082's rule that a commitment with no `Due` is not sayable.

**4. A grant never sets a number a later resolution reads.** This is the load-bearing constraint and the whole reason the mechanical-value stop survives intact:

- it grants **capability and consequence**, never **magnitude**;
- until ratified, every resolution involving it runs at the actor's already-established band, with existing modifiers and no new ones;
- it may not create a threshold, a multiplier, a cost, a cap, or a rung.

A Runtime that finds itself needing a new number to narrate the grant has left this branch and re-entered branch one. It stops there, as it does today.

**5. Ratification happens at the promotion barrier, by the owner, never in the scene.** At the barrier each open provisional mechanic is surfaced and takes one of four outcomes:

```text
   ratified    the profile authors it; version bump and migration record
   replaced    the profile authors something else that covers the fiction
   bounded     it stands as fiction with an explicit no-mechanical-effect ruling
   revoked     it is withdrawn, and the withdrawal costs something in-fiction
```

`revoked` carries a cost deliberately. A grant the player acted on cannot be un-happened for free, and a revocation that is free is a refusal delivered late.

**6. An open provisional mechanic has a due barrier and is checkable.** One older than its declared allowance is a validation finding, on the pattern `world_clock.last_ticked` established: an obligation that can be silently skipped is not an obligation. This is the leg that makes the proposal foundational, and it is the leg that makes it trustworthy.

---

# The construct

Proposed `011_ENGINE_DATA_MODEL.md` Section 7.10, modelled on Section 7.4 and deliberately **tracked state** rather than a Persistent Object — the Decision 082 and 084 precedent, so no record structure changes, no schema version advances, and no migration is owed.

```text
Subject      what the player proposed, in the fiction's own words
Granted      the capability actually conceded, and its stated limits
Price        the cost and risk narrated when it was granted
Owes         the profile section that must ratify, replace, bound, or revoke
Due          the barrier by which that ruling is owed
Status       open | ratified | replaced | bounded | revoked
Provenance   the Event that granted it
```

`Owes` is required for the same reason `Due` is required on a commitment: a debt with no named creditor cannot be settled, and is therefore indistinguishable from a rule somebody invented. A grant whose owing section cannot be named is a signal that the move was a mechanical value all along.

---

# Worked examples

**From the reference campaign, which is what the owner is asking for.** The player argued his badge was not forged because he had used a genuine seal and genuine documents. Granted: the badge is authentic and indistinguishable from an issued one. Priced, in the same paragraph: armed guards now standing over two withered corpses, and the badge is the reason they hesitate rather than the reason they leave. No number was set. Nothing about forgery difficulty, detection thresholds, or badge tiers entered the rules.

**In Gatefall terms.** A player proposes using a captured Gate-core to alter a piece of equipment in a way Section 12 does not author.

```text
   Granted    the alteration takes, and the item is changed in the fiction
   Price      the core is consumed, and the item carries an instability
              the world may use against him
   Owes       Gatefall Profile Section 12 (equipment)
   Due        next promotion barrier
   Status     open
```

The scene continues. No damage multiplier, no durability value, no new rung exists — the item resolves at his established band until the owner rules. If he pushes for a *magnitude* — "how much more damage" — that is branch one, and the Runtime stops there as it does today.

**And the counter-example, which matters as much.** A player asks what a new mastery rung grants. That is a mechanical value on its face, it is not a proposed capability, and no reading of this decision makes it grantable. `F-014` and `F-030` record what happens when such a number is invented quietly, and nothing here touches that.

---

# Consequences

- **The engine gains a yes.** The behaviour the owner reports missing — *"the world actually gave me something and did not just say no, that is not possible"* — becomes the default for a class of move that currently always stops.
- **Rule drift is bounded by a ledger rather than by refusal.** Every grant is written, attributed to a profile section, and surfaced at a barrier. That is strictly more traceable than today's alternative, which is a player arguing a Runtime out of a refusal and the outcome living in prose.
- **A new backlog exists and can be ignored.** Open provisional mechanics accumulate, and an owner who does not rule on them accrues fiction the profile has not caught up with. The due-barrier gate is the answer, and it is not optional; without it this decision reproduces `F-012`, where mandatory offers went unsurfaced for a whole campaign.
- **It inherits `F-029`'s staleness risk.** A provisional mechanic is state that can outlive its fiction, exactly as `open_questions` did. More state to keep current is a real cost and is accepted rather than hidden.
- **It adds a per-turn obligation, and the standing Version 0.4 constraint requires naming what it displaces.** See below; this is not discharged and the decision is incomplete without it.

---

# Alternatives considered

- **Keep the stop and reword it warmly.** Rejected. The defect is not tone; it is that there is no exit. A more apologetic refusal is the same refusal, and the owner's complaint is about outcomes rather than phrasing.
- **Let the Runtime author mechanics freely when the profile is silent.** Rejected outright. That is rule drift, it is Mictian's actual recorded failure, and it is the class `F-014` and `F-030` call the worst defect in the flag record.
- **A resident maxim with no construct — instruct the Runtime to be more generous.** Rejected on the engine's own evidence. `F-034` recorded that an obligation living in prose *"will decay inside three sessions and leave no trace when it does"*, and `450_GENERATIVE_LAYER_ANALYSIS.md` measured the general case: deleting the entire per-exchange settlement procedure from the resident card changes no behavioural verdict anywhere in the repository. A maxim is what has already been tried.
- **Ask the owner in-scene and continue once ruled.** Rejected. That is the stop wearing a question mark. It breaks the scene, which is the complaint, and it makes every creative move cost a session interruption — a tax paid precisely by the play the engine wants to encourage.
- **Grant magnitude too, and reconcile later.** Rejected. It collapses the third branch back into the first, and a number narrated once is a number the player has already built on. Capability is recoverable at a barrier; a magnitude is not.

---

# Where this belongs

Decision 069 places foundational work in a version's Planning and ADR Design, and forbids it landing against a released version. Engine Version 0.3.0 is released; Version 0.4 is in Capability Validation. So there are three candidate homes, and the choice is the owner's.

| Home | The case for | The case against |
|---|---|---|
| **Version 0.4, a new milestone 0.4.5**, admitted post-freeze under Decision 086 | Decision 086's conditions are met on their face: played evidence (the owner's own sessions plus a 490,697-byte export), classified here, no schema advance or migration, revalidatable | It would be Version 0.4's **third** post-freeze foundational admission, into a version already blocked on `441_CAPABILITY_MATRIX.md`. Two is already recorded as notable |
| **Version 0.5 — Persistence** | Planning has not begun, so nothing is frozen | 0.5's declared scope is campaign and world migration. This has nothing to do with it, and filing it there is scope drift by another name |
| **A new version whose subject is the generative layer**, carrying this, the Push obligation, and the settlement split | It is what `450_GENERATIVE_LAYER_ANALYSIS.md` Finding 1 actually found — a whole architectural axis, the case study's *What Worked* column, that was never built. Three related foundational changes want one Planning pass, not three admissions | It is a version, and scoping one is an owner act. It also defers the fix furthest |

**This document's reading, offered as an argument rather than a verdict:** the third. Finding 1 is not a defect report, it is a missing axis, and three foundational changes arriving separately into a version that is trying to close is how the 0.4 record acquired the two admissions it already documents as notable. **If the owner rules the first**, nothing in the decision text changes — only its milestone claim and the roadmap siting.

---

# The displacement obligation, unmet

Version 0.4 carries a standing constraint on every ADR: **any decision adding a per-turn obligation must name what it displaces.** Decisions 088 and 089 discharged it explicitly; Decision 091 did not and is recorded as unmet rather than retroactively satisfied. This proposal will not repeat that.

The resident clause drafted for this decision measures **1,308 bytes / 327 tokens**. The card stands at **8,337 tokens against an 8,350 warning — 13 tokens of headroom.** So the clause cannot be appended.

**The named displacement is the settlement condensation in `450_GENERATIVE_LAYER_ANALYSIS.md` Variant A**, which frees roughly 1,111 tokens and is itself an open owner ruling. That makes this proposal's displacement **conditional**, and the condition is stated rather than assumed:

- **If the owner rules Variant A**, this clause is paid for with room to spare and the constraint is discharged.
- **If the owner rules Variant B**, this decision owes its own displacement and **is not complete until it names one.** It would then be an append onto a surface whose own budget file says *"Do not read a moved ceiling as permission to append."*

Recorded here so the obligation is visible before acceptance rather than audited afterwards.
