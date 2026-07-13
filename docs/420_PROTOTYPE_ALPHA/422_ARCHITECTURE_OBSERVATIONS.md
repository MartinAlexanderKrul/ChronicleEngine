# Chronicle Engine

## Prototype Alpha - Architecture Observations

**Status:** Active
**Layer:** Design Retrospective / Validation (400-499) - non-canonical
**See:** `420_PROTOTYPE_PLAN.md`

---

# Purpose

Broader design observations from playing Prototype Alpha that are not discrete issues: which abstractions felt natural, which created friction, which rules were clarifying, which workflows helped or hindered, and where the engine behaved better or worse than expected.

These are narrative observations. Discrete, actionable problems belong in the Engine Issue Log (421); concrete proposed changes belong in the Engine Improvement Backlog (423). This document is the reflective record that informs the Engine Postmortem.

---

# Observations

## Knowledge-State Typing Is Currently Informal

**Source:** Verra world and Prototype Alpha campaign generation

Knowledge States are currently modelled as relationships using `type: knowledge-state`. This works with the existing engine and campaign initialization, but it sits outside the relationship examples currently named in the template vocabulary, such as membership, governance, diplomacy, personal, and rivalry.

This is recorded here as an observation rather than an engine change request. Prototype Alpha should test whether this remains a harmless naming convenience in play, or whether it creates practical ambiguity when authoring, validating, or reasoning about relationship records. No model change should be made before play evidence exists.

## Promotion Barrier Correctly Rejected Divergent Play

**Source:** Rejected Simulation 001

The attempted first scene diverged from the canonical campaign before play was grounded: it changed equipment, chronology, motivation, and conflict, and introduced unsupported artifacts. At promotion, the Runtime detected the contradictions and left the repository unchanged.

This is positive evidence for the existing canon and promotion architecture. The defect was not missing campaign state or failed promotion; it was an execution-level opening procedure that allowed narration before a final anchor check. The corrective action belongs in the Gameplay Runtime Profile. No Engine Rules, Data Model, Runtime architecture, world canon, or campaign canon change is indicated.

## Critical Invariants Must Be Enforced at the Resident Layer, Not the Fetched Layer

**Source:** Cross-cutting — issues PA-I004, PA-I009, PA-I010, PA-I012 (and the narrower PA-I014)

**Candidate for formalization:** This is the dominant architectural finding of Prototype Alpha. It is recorded here as an observation during the prototype; it should be promoted to an Engine Decision (an ADR) at the Engine Postmortem rather than minted mid-playtest, per the lifecycle (Decision 048).

Four separate failures share one exact shape:

| Issue | Invariant that failed to fire | Where the rule lived |
|-------|-------------------------------|----------------------|
| PA-I009 | Grounding — load canon before asserting state | fetched profile + a reactive "if the player says…" clause |
| PA-I004 | Action resolution — roll before narrating a contested outcome | fetched profile (Rules Section 4) |
| PA-I010 | Grounding — a player-declared object is not canon | promotion barrier (end of session) + a passive principle |
| PA-I012 | Promotion — a checkpoint writes the whole target set with read-back | fetched Save Algorithm |

In every case the rule was **correct and already written** — but it lived only in the fetched Runtime Profile, or in a barrier that runs later (promotion/session close), and so it **did not fire at the moment of action.** On a large-language-model substrate the behaviour each turn is governed by the resident instruction and the model's narrative default; a rule the model read once into a large context, or a check deferred to session close, loses to the turn-by-turn default. Each fix was the same move: make the invariant **resident, imperative, and enforced per-turn**, at the moment the action is declared — not fetched, and not deferred to a barrier.

The narrower PA-I014 is the same lesson one level down: even with the checkpoint gate resident, the *registry* step under-fired because "the id is mentioned in the registry" was not the same as "the high-water mark reflects it as issued." The enforcement point has to be exact, not merely present.

The reusable principle: **on an LLM substrate, a guardrail that is not in the resident instruction effectively does not exist.** This is not four bugs; it is one property of the substrate. It should shape every future Runtime Profile, and it is a genuine engine-architecture concern rather than a per-campaign fix, because it governs how *any* runtime — LLM or otherwise — must site the enforcement of the four Runtime Invariants (`012` Section 0.2): the invariants cannot be assumed to hold because they are documented; each must have an enforcement point at the moment it can be violated.

**Open question for the postmortem:** should `012_ENGINE_RUNTIME.md` gain an explicit obligation that each Runtime Invariant name its enforcement point, and should Runtime Profiles carry a designated *resident* layer distinct from fetched reference material? Both are candidate refinements, not yet decided.

## Version 0.2 Knowledge-State Model Validated in Play

**Source:** Session 2 — the marsh-fever investigation and commitment decision (EVT-000012)

The 0.2.1 Knowledge-State model got its strongest validation to date, and it held cleanly. Across the session the Runtime kept four things distinct that the model requires to be distinct: objective truth (deliberately unestablished), the evidence, institutional validation (Athenaeum) versus condemnation (Order), and Ilse's holder-specific state. When the player drove independent investigation and then authored a conclusion, the Runtime surfaced genuine disconfirming evidence (a counter-case, sampling bias, "suggestive but not proof") without pre-deciding, and the persisted canon recorded `Acceptance: DECIDED` while explicitly preserving "objective reality remains unestablished… her personal medical certainty, not objective fact."

This is positive evidence that the core Version 0.2 abstraction is sound and does not need structural change. The access-versus-acceptance distinction, holder-specific divergence, and the truth/belief/validation separation all behaved as designed under active, adversarial play. Notably, the model held *without* the informal `type: knowledge-state` typing concern (recorded above) causing any practical ambiguity in this session.

## Player Agency Held Under Adversarial Play

**Source:** Sessions 1-extended and 2 — the crisis cascade, the double-agent gambit, and the failed infiltration

The Player Agency Contract (Decision 050; `012` 1.6) was stress-tested by deliberately chaotic and self-defeating play: self-harm, repeated violence against authority figures, a high-risk deception strategy, and a failed bluff ending in detention. In every case the Runtime resolved the action by die and consequence rather than refusing it as "out of character," authored no player intent, and let the world react proportionately (guards, detention, institutional response) — Law II Causality and the Beat Budget both holding. The single agency slip was PA-I015 (the Runtime accepting a player-authored *outcome* of an uncertain inquiry, distinct from a player-authored *intent*), which is a boundary-sharpening item, not a failure of the contract itself.

This is positive evidence that world-first agency and consequence, the crisis-and-recovery arc, and institutional response all function under exactly the kind of unpredictable play the engine is meant to absorb.
