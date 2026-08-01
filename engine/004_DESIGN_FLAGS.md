# Chronicle Engine

## Design Flags

**File:** `004_DESIGN_FLAGS.md`
**Status:** Active
**Engine Version:** 0.2.0
**Layer:** Engine (000–099)
**Authority:** Non-canonical intake log; campaign ledgers remain canonical over any world/campaign fact mentioned here

---

# Purpose

This is the **intake queue** for design friction surfaced during ordinary play, in any world or campaign, before it becomes anything else.

- `002_ENGINE_ROADMAP.md` records *planned* work — something already scoped for a version.
- `001_ENGINE_DECISIONS.md` records *accepted* architectural choices — something already ruled on.
- `004_DESIGN_FLAGS.md` (this document) records *raised, undecided* concerns — something a player or the Runtime noticed during play that nobody has yet decided what to do with.

A flag is not a Decision and not a Roadmap commitment. It becomes one of those only when an owner actually rules on it — through the normal Decision or Roadmap process — at which point this entry is marked **Actioned** with a pointer to where it landed. A flag the owner rules against is marked **Dismissed** with the reason. Neither disposition edits campaign canon; this file governs no gameplay fact.

---

# Format

Each flag gets a stable ID (`F-001`, `F-002`, ...), never reused. New flags append at the end; existing entries are only ever amended for a status change, never deleted.

```text
## F-NNN — <short title>

**Raised:** <real date> · **Source:** <campaign/session it came from, or "cross-campaign">
**Status:** Open | Actioned (→ Decision/Roadmap ref) | Dismissed (reason)

<what was observed during play, and what about it felt like an engine-level gap
rather than a one-off narration choice — enough context for someone with no
memory of the session to evaluate it.>
```

---

# Flags

## F-001 — Openings from established NPC contacts default to uniform decline

**Raised:** 2026-07-31 · **Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-10 in-fiction session

During live play, the player had the protagonist text four NPCs he already has real established rapport with, asking after open work. All four came back "nothing right now," each individually grounded in that NPC's own prior state — but the player pushed back that a real, multi-contact proactive action drawing on established relationships should have a real chance of surfacing a genuine opening, not fabricated from nothing, rather than the Runtime defaulting every contact to uniform decline and then treating it as the player's job to manufacture an opening some other way.

**The open design question:** does `docs/AI_GAMEPLAY_RESIDENT_CORE.md` or `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` need explicit guidance for handling a player's proactive outreach to multiple established contacts at once — e.g., a principle that such an action should weight toward surfacing at least one previously-seeded opportunity rather than uniform decline, while still never inventing something that contradicts established state. Worth reviewing the Resident Core's Narrative Momentum and Profile-Declared Proactive Trigger sections, and the Runtime Profile's Returning/Takeover and Derived Operation Plans sections, to see where (or whether) this belongs, and whether it is resident-core-level (all worlds) or per-world-authored.

**Status:** **Actioned (2026-07-31)** → Decision 082 (Pending World-Side Commitments), Decision 083 (Opportunity Supply Advances on the World's Clock), and Resident Core 1.13 (*A Canvass Is N Resolutions, and Standing Is Read, Not Recalled*). Full analysis and evidence: `docs/430_RUNTIME_PERSISTENCE_VALIDATION/438_F001_MULTI_CONTACT_OUTREACH_ANALYSIS.md`.

The flag's own proposed remedy — weighting a canvass toward surfacing a seeded opportunity — is **rejected as written**, and the reasoning behind it is **accepted and implemented proactively instead**. Reactive weighting fails Rules Section 1 and Law VIII and makes canvassing farmable; supply advancing on the world's clock delivers the same intent without raising any probability in the player's favour. The distinction is recorded in Decision 083's Alternatives Considered so it outlives this entry.

**Dispatch deltas delivered 2026-07-31 as Decision 084 and Gatefall Profile 1.44** (`EVT-000268`), completing disposition item 4. Authoring them exposed that the trigger manifest's settlement vocabulary had no member a world-side settlement could declare, so R4 needed a foundational enabler rather than ordinary world authoring. Two findings remain *not* covered by this disposition: the Gatefall backfill of live commitments and supply sources is campaign-canon work for a play session, and the unsettled tracked board is raised separately as F-002.

## F-002 — Gatefall's tracked board stopped counting

**Raised:** 2026-07-31 · **Source:** `campaigns/gatefall_pendragon_001/`, found while analysing F-001

`110_WORLD_LEDGER.md` carries four tracked Gate postings under Profile Section 9.10, snapshotted at the 2026-08-05 12:15 anchor. At the campaign's current anchor of 2026-08-10 07:38, **three of the four derived deadlines have passed** — `GB-01` at midnight 2026-08-08, `GB-02` and `GB-03` at midnight 2026-08-09 — and none appears to have been settled. `180_CURRENT_STATE.md` still reports `tracked_postings: 4`, annotated "unchanged from Checkpoint 0043".

Section 9.10 makes deadline resolution deterministic and discretion-free: `staffed` or `held` clears off-screen, `withdrawn` leaves the board, and `posted` **breaks** under Section 9.8. `GB-01` and `GB-02` were both `posted` and under floor at the snapshot, so absent an intervening staffing change both settle to breaks — and Section 9.10 is explicit that institutions avert breaks by changing staffing status, which is itself something that had to be settled across those five days. `GB-04` remains inside its window (deadline midnight 2026-08-12) with staffing unsettled.

This is distinct from F-001. F-001 concerned how a question was answered; this is a clock that stopped in a mechanism authored specifically to stop postings evaporating when nobody is looking. It owes no roll and no discretion — only settlement.

**The open question is not what the rule says but why it did not fire**, and whether Section 9.10 needs a declared audit boundary the way Decisions 082 and 083 gave commitments and supply one, or whether this is purely a settlement lapse in play. Resolving the board itself is campaign canon and belongs in a session under normal save discipline; it is not an engine change.

**Status:** **Actioned (2026-07-31)** — the board settled in play at `campaigns/gatefall_pendragon_001/`, `EVT-000270`: `GB-01` and `GB-02` broke, `GB-03` cleared off-screen, `GB-04` remains live. The underlying engine question (whether Section 9.10 needs a declared audit boundary, per the open question above) remains genuinely unaddressed — this closes the campaign-canon lapse only, not the design question. Settling it surfaced a distinct authoring gap, raised separately as **F-004**.

## F-003 — Repeated NPC-knowledge leak on the same closed channel within one scene

**Raised:** 2026-07-31 · **Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-11 in-fiction session

During a single short scene (Alexander and Owen discussing how to commission a weapon for Owen), the Runtime had Owen reference Walt Adamik — by inference and then by name — **twice**, despite `130_NPCS_AND_FACTIONS.md`'s existing Closed Channels table already recording that Owen has no channel to Alexander's dealings with Walt. The player caught and corrected the leak the first time (Owen inferring "the pawnbroker's guy... the one who doesn't ask" from context that only the player and Runtime shared); the Runtime was told to re-narrate from Owen's real knowledge, apparently retracted the reference, and then reintroduced Walt by name two exchanges later in the same scene, prompting a second correction.

This is the same class of defect the existing Owen/Walt and Owen/Kesha rows in the Closed Channels table were written to catch — "the same leak has recurred three and four times in one session," per that table's own framing note — recurring again after an in-scene correction had just been made and accepted. The npc-knowledge skill's channel test was run and passed once, then silently not re-run on the very next NPC line touching the same fact.

**The open design question:** whether the Resident Core's turn-by-turn discipline needs an explicit "closed-channel facts stay suppressed for the rest of the scene, not just the next line" rule — i.e., once a fact is confirmed closed to an NPC mid-scene, treat it as a standing constraint on every subsequent line for that NPC in that scene (and arguably that session), not a check that resets after one corrected turn. Worth reviewing whether this belongs in the `npc-knowledge` skill itself, the Resident Core's per-turn checklist, or as a lightweight scene-local working-memory convention (e.g., restate active closed channels for present NPCs at scene start).

**Status:** Open.

## F-004 — Section 9.5's true-Rank roll has no trigger for an unconfirmed Gate that breaks unentered

**Raised:** 2026-07-31 · **Source:** `campaigns/gatefall_pendragon_001/`, found while resolving F-002 (`EVT-000270`)

Settling the tracked board (`EVT-000270`) hit a genuine authoring gap on `GB-02`, an unconfirmed D-Rank Gate that sat under-bid until its deadline and broke under Section 9.8 without ever being entered. Section 9.5 resolves an unconfirmed Gate's true Rank **on first entry**, on a d100 — the only trigger the profile names for that roll. `GB-02` had no entry, so the roll had nothing to fire on, and Section 9.10's break rule (deterministic settlement from staffing status) says nothing about Rank at all.

**The owner ruling made in play, for this instance only:** consistent with Section 9.10's own "no roll" character for deadline settlement, an unconfirmed Gate that breaks without ever being entered never triggers the Section 9.5 roll — the assessed Rank is what the board, the institutions, and the resulting population respond to. `GB-02` broke as its assessed D-Rank, population rolled from that Rank.

**The open design question:** whether Section 9.10 (or Section 9.5 itself) should author this case explicitly — an unconfirmed Gate's Rank-at-break when no entry ever occurred — rather than leaving it to a per-instance ruling each time an unconfirmed posting goes unstaffed to its deadline, which Section 9.4's own economics (cheap jobs sit) suggests will not be rare. Worth reviewing alongside Section 9.6's anomaly table, since an entered unconfirmed Gate can anomaly-roll to a Rank swing that an unentered break, under the ruling above, can never produce.

**Status:** Open.

## F-005 — Two fresh NPC-knowledge channel violations back-to-back, neither caught before generation

**Raised:** 2026-08-01 · **Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-11 in-fiction session (the return-from-checkpoint scene, immediately after `/continue`)

In a single short exchange (Alexander asking Owen what reputation is circulating about him), the Runtime committed two distinct, previously-unrecorded channel violations in consecutive turns, both caught by the player rather than by the Runtime's own pre-narration check:

1. Owen was written asserting he'd "never told" Alexander about the old "weakest E-Rank" reputation and reacting to it as live news — when the campaign chronicle (`EVT-000138`, 2026-08-04) already records Owen raising exactly this with Alexander a week earlier in-fiction. This wasn't a closed-channel leak (no rule barred Owen from knowing it) — it was the Runtime inventing an NPC's conversational history against an already-written record, without checking the chronicle first.
2. Immediately after correcting #1, the Runtime had Owen assert Alexander is "D-Rank... nobody's rewritten your file" — attributing knowledge of Alexander's **System Rank** to an NPC, when World Rule Profile Section 14.4 makes System Rank perceptible to the Bearer alone and the character sheet shows Alexander's public BGM card is still carded E-Rank. This is a channel violation of the same shape F-003 already named, but on a wholly new fact (System Rank, not the Walt Adamik thread), in a different session, with no prior Closed Channels row to have caught it.

Both are distinct from F-003's repeat-after-correction pattern: these were first-occurrence errors, not a re-leak of an already-ruled-closed fact, and both happened at the very start of a session (during the post-`/continue` recap scene) rather than deep in an established scene. This suggests the failure mode is broader than "closed-channel facts don't stay suppressed" (F-003's framing) — it looks more like NPC dialogue asserting things about the protagonist or world state is being generated from plausible-sounding recollection rather than from an actual grounding check against the chronicle and the World Rule Profile's information boundary, even on a session's very first substantive NPC line.

**The open design question:** whether the Resident Core's *Load a Recorded NPC Before Playing It* and *NPC Channel Check* sections need a stronger, more mechanical precondition — e.g., an explicit instruction that any NPC line asserting shared conversational history (not just present-tense fact-knowledge) must be checked against the chronicle before being written, and that any line implying knowledge of a Bearer-only System quantity (Rank, level, XP, Mana, quests) must be checked against the active World Rule Profile's Information Boundary section before being written — rather than relying on the general "channel check fires narrowly" framing, which two consecutive misses in one exchange suggests is not catching this class of error reliably even when a Closed Channels table has just been loaded into the working set at readiness.

**Status:** Open.

## F-006 — F-005's exchange required a third correction before landing a clean answer

**Raised:** 2026-08-01 · **Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-11 in-fiction session, same exchange as F-005

F-005 already recorded two channel violations in one short exchange (Owen's invented "never told you" conversational history, then his invented knowledge of Alexander's Bearer-only System Rank). Continuing the same exchange, the Runtime's very next attempt at a corrected answer had Owen cite **Ada Reyes and Dale Pruitt by name** as people whose vouching he was aware of — grounded, at the time, in `EVT-000138`'s summary phrasing ("Owen... flagged Ada, Dale, a Horizon contact, and now Ironline"). The player ruled this wrong too: that phrasing describes what the Event's own prose summarizes Owen as having flagged in aggregate, not a record of Alexander ever having given Owen those two names specifically, and treating a summary line as proof of an NPC's granular knowledge was itself the error. The player asked the Runtime to stop patching the exchange turn-by-turn and re-narrate the whole thing clean.

Three corrections inside one exchange, over what should have been a low-stakes opening beat of a returning session, is a materially worse instance of F-005's concern, not a duplicate of it: it shows the failure recurring even immediately after being named and logged, and it shows a second failure mode alongside F-005's two — treating an Event's own narrative *summary* prose as if it were a citable record of exactly which facts passed between two characters, when a summary line compresses in ways a direct provenance record does not.

**The open design question:** beyond F-005's proposed fixes, whether the Resident Core needs an explicit warning against treating chronicle *summary/description* prose as granular proof of what one character told another — i.e., a description line naming several facts in aggregate ("flagged X, Y, and Z") is not itself evidence that every named item was individually communicated, and asserting it as would-be grounding for an NPC's specific knowledge is a subtler version of the same "recollection instead of an actual read" failure the Resident Core already warns about for state and channel checks. Also worth asking whether three corrections in one exchange, immediately after the first two were logged, indicates the fix needs to land before the next NPC line is generated in-session, not just as a future engine change.

**Status:** Open.

## F-007 — A fourth ungrounded NPC-knowledge claim landed immediately after the player reset the scene to get a clean start

**Raised:** 2026-08-01 · **Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-11 in-fiction session, same session as F-005/F-006

After F-005 and F-006 (two, then a third, ungrounded claims about Owen's knowledge in one exchange), the player asked the Runtime to discard the whole scene and reset to right after the checkpoint load, hoping a clean restart would avoid repeating the pattern. The very next attempt at opening the scene had Owen ask Alexander about "whatever Wade Bishop wants tomorrow" — treating Owen as aware that Wade Bishop's follow-up call is specifically due. Checking the record: Owen does know Wade Bishop by name and was told the full account of the 2026-08-08 D-Rank trial (`EVT-000258`); nothing in his loaded entity block or the Closed Channels table establishes that he was also told the call is locked to a specific day. The detail ("Wade Bishop's own follow-up... locked to call tomorrow, 2026-08-11") appears in `180_CURRENT_STATE.md`'s narrative prose describing that evening, in a way that reads ambiguously as either part of what was told to Owen or a separate fact settled the same beat — and the Runtime again resolved that ambiguity by asserting Owen has the more specific knowledge, rather than checking or asking.

This is the same failure shape as F-006's Ada/Dale error (treating adjacent narrative prose as license for an NPC to know something not clearly established as communicated to them), but notable on its own because it occurred on the **very first Owen line after an explicit reset intended to produce a clean start**, meaning the reset was not sufficient by itself to interrupt the pattern — whatever is producing these claims is not scene-state carryover, it is happening fresh at each NPC-line generation.

**The open design question:** whether the underlying issue is that ambiguous provenance in `180_CURRENT_STATE.md`'s narrative prose (a paragraph mixing "what happened" with "what was told to whom") needs to be written more strictly to separate protagonist-only facts from facts actually communicated to a present NPC, and/or whether the Runtime needs a harder default rule for exactly this ambiguity: when a current-state or chronicle passage does not unambiguously state that an NPC was told a specific fact, default to the NPC not knowing it, rather than defaulting to the more informed reading. Four corrections across three consecutive exchange attempts, surviving an explicit scene reset, suggests this needs a structural fix rather than continued in-session vigilance.

**Status:** Open.

## F-008 — "Nothing named in canon yet" should default to authoring it, not deferring or citing a supply-cadence rule against the player

**Raised:** 2026-08-01 · **Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-11 in-fiction session

The player asked Kesha Morrison, an established, well-connected NPC, to help find a crewless C-Rank hunter for a new crew. No such person existed anywhere in canon. Rather than simply authoring one — exactly as the Runtime has done throughout this campaign for Corinne Whitlock, Elias Ward, Walt Adamik, and others whenever a scene needed a new contact — the Runtime instead had Kesha defer ("give me a day or two"), and when pressed, justified the deferral by citing **Decision 083 (Opportunity Supply Advances on the World's Clock)**. The player correctly identified this as a misapplication: Decision 083 governs *automatic job/contract supply* from an established source's clock-advancing cadence, specifically to stop the Runtime from inventing farmable opportunities at the moment of asking. It says nothing about naming a new person, and citing it here just relitigated a settled engine question as if it barred an entirely ordinary act of world-authoring. The Runtime corrected course only after the player explicitly named the mismatch and had to argue for why an AI-run world requires exactly this kind of on-demand authoring to function at all — the player cannot pre-author every NPC who might plausibly exist, and refusing to fill an ordinary gap defeats the point of running the engine.

Once corrected, authoring a real candidate (Reyna Castillo, `ENT-000182`) — grounded in already-established texture (the Coalition's thin C-Rank pool from the same sitting's institution-ledger ruling, and the "crew failure that maims or kills" theme the player's own pitch to Kesha had just raised) — took one clean pass and produced something usable immediately. The friction was entirely in the Runtime defaulting to withholding rather than authoring.

**The open design question:** whether the Resident Core or Runtime Profile needs an explicit default rule distinguishing *when an NPC should say "I don't know, let me check"* (deferring to genuine world-clock supply per Decision 083 — jobs, contracts, market openings from a source's own cadence) from *when the Runtime itself should simply author a new grounded entity on the spot* (a new named contact, vendor, or candidate the fiction calls for, with no existing canon to check against) — since the current failure mode treats these as the same case and defaults to the more restrictive one, requiring the player to argue the Runtime out of its own overcaution rather than the Runtime recognizing the distinction unprompted. Worth reviewing whether this belongs as an explicit clarifying note on Decision 083 itself (scoping it clearly to *supply from established sources*, not *first introduction of a new NPC*), a Resident Core addition under Narrative Momentum, or both.

**Status:** **Actioned (2026-08-01)** → `012_ENGINE_RUNTIME.md` Section 1.4 (third ambiguity class, *Unnamed but entailed*), Resident Core 1.16 (*Unnamed Is Not Absent — Author It*), and `tools/test_world_authoring_default.ps1`. Refinement under Decision 069, milestone 0.3.5; no ADR, no Rules or Data Model change.

**The flag's own diagnosis is amended by the transcript, and the amendment changed the fix.** The flag reads Decision 083 as the cause. The Runtime's recorded reasoning shows it was the *rationalization*: the decision to withhold was already taken one step earlier, on the bare inference **"I don't have any other named C-Rank freelancers without crew affiliations in the established lore, so I shouldn't fabricate one"** — stated as a premise, citing nothing. Decision 083 arrives afterwards, introduced as "the key insight is…", to justify a conclusion already reached. Scoping 083 alone would therefore have removed the citation and left the default intact.

The load-bearing equation is `absent from canon → fabrication → forbidden`, and the word doing the work is *fabricate*. The repository has correctly and repeatedly trained against invention — never invent a channel, never invent a precondition so a trigger can fire, never manufacture protagonist intent, never silently repair a broken reference by invention, never create an opportunity solely to reward the player. Each is right in its own scope. Together they generalized into a prior against authoring world material at all, and no rule contradicted that prior at the moment it fired, because every rule that grants authoring is phrased as a permission ("**may** generate detail") rather than a default.

**Nothing needed to be granted.** Rules 1.4 scopes its own restraint to detail that has not yet become relevant; Rules 3.10 lets an abstract entity become detailed when it affects play; Rules 2.1 makes newly generated information a canon tier; Runtime 1.3 permits unestablished detail consistent with canon; Runtime 8.3 says unestablished is not contradiction. Five grants, no default, and no class to file the case in — so it fell into Runtime 1.4's *unknown in-world*, whose own text correctly says it "does not force a clean answer."

The sharpest evidence is in the same transcript: the world declares **twenty-two C-Rank hunters citywide** and names a handful. The Runtime held that population count in context while reporting it could not name a member of it. That is what the new class is built on — where canon declares an aggregate and names a fraction, the unnamed remainder exists, and naming a member of it is authoring rather than invention.

Two further findings are recorded rather than actioned here. First, **deferral is the expensive branch, not the cheap one**: Kesha's "give me a day or two" is a Decision 082 pending world-side commitment that something must now settle, so withholding a name manufactures exactly the obligation F-001 found goes unsettled. Both documents now say so. Second, the player's own argument is the design rationale and is recorded so it outlives this entry — *"I can't as an author create a full world with every detail; that would make using AI obsolete."* On-demand authoring within canon's constraints is the engine's function, not a concession it makes.

**Not done:** Decision 083 is unedited. Accepted decisions are immutable history here, so its boundary is stated in Runtime 1.4 and the resident card and cross-referenced, rather than amended into the decision. If the owner wants that floor recorded in 083 itself, it needs a Revision Policy amendment or a short ADR.
