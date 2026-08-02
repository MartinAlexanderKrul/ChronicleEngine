# The Naming-Time Collision Gate

**Date:** 2026-08-02
**Scope:** Engine tooling, runtime, and the resident layer — no Rules or Data Model change
**Classification:** Refinement under Decision 069; no ADR, no owner ruling required
**Status:** specified and implemented

---

## 1. Why

F-009 recorded a freshly authored NPC being given an established NPC's name, and its
disposition split along what is decidable:

- **the exact collision is mechanical** — two live entities in one campaign may not carry
  the same current name, enforced by `tools/validate_repository.ps1` with fixture N-01;
- **the partial collision stays a judgment** — a shared surname in a city of millions is
  ordinary, so the barrier does not adjudicate it, and a resident clause carries it.

Both halves are correct. Together they leave a gap that the flag's own evidence walks
straight into.

**The mechanical half fires at the wrong moment.** The Repository Validation Barrier
(`012_ENGINE_RUNTIME.md` Section 5.4) runs at a durability boundary — checkpoint, session
close, campaign-termination promotion. A name enters play the moment it is spoken, which
can be an entire session earlier. By the time the barrier can reject it the player has
already read it, and the repair is a retraction inside the fiction. That is what happened:
`EVT-000280` records the artificer's name being corrected from "Reyes" to "Marnie" in
play, because nothing checked before the name was said.

**The mechanical half also does not cover the observed failure.** "Reyes" against
`ENT-000134` **Ada Reyes** is a *partial* match. The validator added in response to F-009
would not have failed F-009. This is by design and the design is defensible — but it means
the only thing standing between the engine and a repeat is the resident clause, which is
an instruction rather than a gate.

**And an unpromoted NPC is invisible to the barrier entirely.** The check reads `- name:`
entries carrying `quality: current` inside an `ENT-` block. A one-scene character named in
narration and never written to the ledger never reaches it.

So the enforcement that exists is late, partial, and conditional on promotion, while the
enforcement that covers the real case is resident prose. This is the *settler without a
writer* shape the Version 0.3 postmortem named three times over (Finding 3), inverted:
here there is a checker, sited where the thing it checks has already happened.

## 2. What is decidable, and where

The disposition F-009 made is right. It was applied at the wrong layer.

| | at naming time | at the barrier |
|---|---|---|
| **Exact match against a live name** | decidable | decidable — enforced today |
| **Shared name token (surname/given)** | decidable | decidable, but *wrong to enforce* |
| **Whether a shared token is deliberate** | the author's own answer, given now | not recoverable after the fact |

The middle row is the whole design. Comparing a candidate name against the campaign's live
roster is pure string work — no judgment, no canon reading. What is *not* decidable is
whether an existing shared surname is deliberate, and the live repository proves it:

- `ENT-000126` **Tanya Voss** and `ENT-000128` **Elias Voss** are siblings, both live, both
  in Gatefall: Pendragon. Canon says so in prose and nowhere in structure.
- `ENT-000136` **Priya Okafor** shares a surname with `Naomi Okafor` in
  `worlds/gatefall/220_NOTABLE_FIGURES.md`, across the campaign/world scope boundary.

A barrier that failed on a shared surname would reject correct canon on its first run.
F-009 saw this and concluded the check could not be mechanized. The conclusion holds only
for the barrier. **At naming time the same comparison costs nothing to act on**, because
nothing has been written yet and the answer is a different name.

So: the decidable comparison moves to the moment of authoring, where acting on it is free.
The barrier is left exactly as it is.

## 3. Design

Three parts. None of them changes the Data Model, the Rules, or any accepted decision —
which is what keeps this a refinement rather than an eleventh Architecture Freeze
exception under Decision 086.

### 3.1 `tools/check_name_collision.ps1` — the instrument

```
tools/check_name_collision.ps1 -Campaign gatefall_pendragon_001 -Name "Marnie Reyes"
```

Reads every current name of every non-retired entity in the campaign's
`130_NPCS_AND_FACTIONS.md`, plus the world's `220_NOTABLE_FIGURES.md`, and reports one of
three verdicts:

| Verdict | Exit | Meaning |
|---|---|---|
| `BLOCKED` | 2 | Exact match on a live current name. The barrier would reject this. |
| `REVIEW` | 1 | A shared name token with a live entity. Pick another, or say the coincidence is deliberate. |
| `OK` | 0 | No match. |

Three properties are load-bearing:

**It parses the ledger the same way the barrier does.** Same `- name:` / `quality: current`
shape, same exclusion of `retired` entities, same exclusion of former and alternate aliases
— because a name colliding with a *previous* name is how identity continuity records a
rename. `BLOCKED` therefore means *the barrier will reject this*, by construction rather
than by coincidence, and the test suite asserts that agreement against the real validator.

**`REVIEW` is advisory and stays advisory.** It never becomes a failure, at any layer. It
is the Voss/Voss case, and it is answered by the author in the turn, not by a checker.
Given-name tokens count as well as surnames: "Marcus" is a live current alias in this
campaign, and the F-009 diagnosis — the name that surfaces while authoring is
disproportionately one the session just used — is indifferent to which half of a name it
lands on.

**Scope is per campaign, plus the world it runs in.** The same name in two campaigns is two
unrelated fictions and is not a collision. A campaign NPC and a world Notable Figure are
the same fiction, and F-009's open design question named that source explicitly.

### 3.2 `source_loading.entity_authoring_check` — the siting

A tool nobody is told to run is worth nothing. The check is declared in the campaign's
startup configuration alongside the reads it belongs with:

```yaml
  entity_authoring_check:
    tool: tools/check_name_collision.ps1
    object_source: campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY.md
    ledger: campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md
    world_ledger: worlds/gatefall/220_NOTABLE_FIGURES.md
    reason: "..."
```

This is the `entity_deferred_groups` pattern one step over: that key made an NPC *read*
addressed rather than remembered, and this one does the same for the name *check*.
`tools/validate_runtime_configuration.py` verifies the tool exists, every declared source
exists, and every declared source is in `required_sources` — so a declaration that rots
fails the build. Postmortem Finding 4, applied where it applies: metadata is accurate
exactly where a gate reads it.

**Two resolution roots, deliberately.** Declared *data* sources resolve against the
repository root under validation, because they are campaign data and a fixture root is
exactly where you want them checked. The declared *tool* resolves against the engine's own
installation, because it is engine machinery: every fixture root under `tools/` is a
partial copy of `campaigns`, `system`, and `worlds`, and requiring `tools/` inside one
fails six existing suites on the absence of a fixture rather than on anything under test.
Copying `tools/` into those roots was tried first and is worse — it switches on the
generator `-Check` gates inside `validate_repository.ps1`, which then fail on an
unsynchronized index in a partial copy. The rot this guards against is a renamed or
deleted check, which is a property of the engine, so the engine is where it is checked.

### 3.3 The resident clause — the obligation

Resident Core **1.19 → 1.20**. The existing clause asks for a check against recollection of
a roster; the replacement names the instrument and the moment.

The card stands at 5,978 tokens against a 6,000 warning — 22 tokens of headroom, recorded
in `system/RUNTIME_CONTEXT_BUDGETS.yaml` as a **closed surface**. This change therefore
*replaces* the existing clause rather than appending to it, and its net cost must be at or
below zero. That is a hard constraint on the edit, not a preference.

**Met:** 5,978 → **5,976**, a net −2. Naming the instrument and both verdicts costs less
than the sentence it displaced. The surface stays closed; the constraint is unchanged, not
relaxed by having been satisfied once.

## 4. What this does not claim

**Nothing gates a token before it is emitted.** There is no hook between the Runtime
deciding on a name and the player reading it. This design does not pretend otherwise. What
it changes is that "I checked the roster" becomes an act with an answer the author can be
wrong about and see, instead of a recollection that cannot be distinguished from a
recollection nobody had. That is the same distinction Decision 080's explicit `none` and
Decision 085's explicit `no-change` are built on.

**The resident clause is still the load-bearing layer**, and it is still the enforcement
class with no mechanical proxy that the postmortem named. This narrows that class by one
case; it does not close it.

**The current clause has no recorded failure.** F-009's correction predates it. This change
is argued from architecture — a checker sited after the thing it checks — and not from a
second observed defect. That is worth stating plainly, because the repository's own
standard under Decision 086 is that a change arises from played evidence, and the played
evidence here is F-009 itself rather than a recurrence.

## 5. Files

| File | Change |
|---|---|
| `tools/check_name_collision.ps1` | new — the naming-time check |
| `tools/test_name_collision_check.ps1` | new — nineteen legs, including barrier agreement |
| `tools/validate_runtime_configuration.py` | validates `entity_authoring_check` |
| `campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md` | declares the check |
| `docs/AI_GAMEPLAY_RESIDENT_CORE.md` | 1.19 → 1.20, clause replaced in place |
| `engine/012_ENGINE_RUNTIME.md` | Section 1.4 sites the naming-time check |
| `engine/004_DESIGN_FLAGS.md` | F-009 follow-up disposition |
| `engine/030_ENGINE_CHANGELOG.md` | entry |
| `system/RUNTIME_CONTEXT_BUDGETS.yaml` | resident baseline re-recorded |

## 6. Audit obligations

- The suite must prove the check *can* fail: a `-Check` that cannot fail is
  indistinguishable from one that always passes.
- The agreement leg must run the **real** validator against an isolated repository copy and
  require rejection of a name the tool called `BLOCKED` — not merely assert a non-zero exit
  from the tool itself.
- The Voss/Voss and Okafor cases must come back `REVIEW`, not `BLOCKED`, against live state.
  If either ever hardens into a failure, the gate has started adjudicating judgment.
- The resident baseline must be re-measured and re-recorded, and must not exceed 5,978.

All four hold. The suite was additionally run against a deliberately broken check — the
exact-match branch short-circuited — and failed three legs rather than passing quietly.

**Known unrelated failure:** `test_gatefall_quest_contract.ps1` fails on this branch and
fails identically on the base commit (`Tracked board holds 1 parsable postings; at least 3
are required`). It is the world-contract floor the Version 0.3 postmortem already records
as a known exception, not an engine regression and not touched here. Every other suite in
`tools/` passes.
