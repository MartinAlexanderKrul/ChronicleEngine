# Chronicle Engine

## Engine Changelog

**File:** `030_ENGINE_CHANGELOG.md`  
**Status:** Active  
**Format:** Reverse-chronological index. Entries point to decisions, rules sections, and files affected by a unit of work; they do not restate content. See Decision 040 for format rationale.

---

# In Development — Target: Version 0.2.0 (Knowledge & Civilization)

Work completed toward the 0.2.0 release. Per Decision 048, the Engine Version advances to 0.2.0 only after Capability Validation, Prototype Alpha, and the Engine Postmortem are complete and any required refinements are incorporated. The current released Engine Version remains 0.1.5.

## 2026-07-13 — Campaign Restart Semantics and Baseline Checkpoint

**Decisions:** Added Decision 053 (Campaign Restart and World-Line Forking) — distinguishes a **redo** (in-place reset: restore baseline, protagonist keeps her identifier, discarded identifiers are retired and never reused, registry high-water mark is not rolled back) from a **fork** (parallel world-line: a new campaign instance whose "same" character is a distinct persistent entity, since two divergent canonical histories cannot be one record under the single-Canonical-Record invariant). Establishes that every campaign should carry a first-class baseline checkpoint so restart-from-beginning is a restore, not git archaeology.

**Campaign (Prototype Alpha):** Created `campaigns/prototype_alpha/saves/900_CHECKPOINT_0000/` — a self-contained baseline snapshot (full pre-play copies of the eight canonical ledgers, captured from the pre-play commit `390e4d7`, plus `900_SAVE_MANIFEST.md`). This realizes the Manifest's documented Save Layer pattern and gives the campaign a clean restore point.

**Context:** Follow-on from the identifier-registry question during Prototype Alpha review — "what happens if I restart the campaign with the same character?" The identity model (semantic-free global IDs, never-reuse, single-Canonical-Record, stable identity) implied an answer but had not stated it; Decision 053 records it.

**Known debt flagged (not resolved):** save-layer location/format drift — documented `saves/900_CHECKPOINT_<NNNN>/` (full copies) vs the session-1 flat `.saves/*.yaml` manifest-only files vs an empty `checkpoints/` placeholder. Decision 053 uses the documented location; reconciling the existing session checkpoints is deferred to Version 0.6 (Persistence).

**Rules/Data Model/Manifest:** Unchanged — Decision 053 operationalizes existing invariants (Data Model Section 1 never-reuse; Decisions 043, 044) rather than adding a mechanic.

**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-13 — Resident Checkpoint-Completeness Gate

**Start Guide:** Added a resident CHECKPOINT COMPLETENESS gate to `docs/GAMEPLAY_START_GUIDE.md` — in the AI Project Instructions block and the "End a Session" close prompt. Before reporting anything saved or promoted to canon, the Runtime must enumerate every target (Current State, chronicle, changelog, NPCs/relationships, objectives, world/knowledge, inventory if changed, the ID registry for any new ENT/REC/EVT/REL, and the save manifest), write all of them with provenance, read each back from the repository, and only then report success; any unwritten target makes it a PARTIAL checkpoint that must be named, never stamped "promoted to canon." The save manifest's updated-ledger list must contain only files actually written and read back. Document version set to 2.3

**Runtime Profile:** Reinforced the Save Algorithm and Checkpoint Reporting in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` — step 3 now requires new identifiers to be allocated in `system/ID_REGISTRY.md` and defined in their owning ledger, and flags a ledger citing an unregistered/undefined id as a dangling reference and repository-validation failure; Checkpoint Reporting now states the save manifest is a report, not an intention, and its updated-ledger list must be populated from read-back results, never from the intended set. Document version set to 1.18

**Context:** Prototype Alpha — checkpoint 2 (extended session, branch `session-1-checkpoint`) was committed as `canonical_status: PROMOTED TO CANON` but only `180_CURRENT_STATE.md` and the save manifest were written. The manifest claimed the chronicle and changelog held EVT-000010/011 and that relationships were updated; none of that reached the chronicle, changelog, NPCs, objectives, world ledger, or the ID registry. `180_CURRENT_STATE.md` was left citing EVT-000010/011/012 and REL-000017-extended that exist in no ledger or registry (dangling references and phantom IDs). This is the fourth instance of the resident-vs-fetched failure pattern: the Save Algorithm's completeness and read-back discipline lived only in the fetched profile, never in a resident gate, so it did not fire at execution time. The fabricated dagger did not leak into canon — but only because the entire extended narrative failed to promote, taking the legitimate grounded play with it.

**Rules/Data Model/Decisions:** Unchanged — operationalizes Promotion (`012` Invariant 3), No Silent Canon (`012` Invariant 2), the Single-Canonical-Record and registry invariants (Decision 043, Decision 044), and the existing Save Algorithm; no mechanic or rule change. Checkpoint 2 on `session-1-checkpoint` is left as-is for a later gameplay-close reconciliation, per session decision.

**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-13 — Canon Grounding at Narration Time (Player-Declared Facts)

**Start Guide:** Added a resident CANON GROUNDING gate to both always-resident layers of `docs/GAMEPLAY_START_GUIDE.md` — the AI Project Instructions block and the First Session start prompt. Before narrating any item, weapon, tool, skill, ally, or position into a scene because the player's wording assumed it, the Runtime must verify it against loaded canon (inventory ledger, character sheet, Current State) on its own initiative, the instant the action is declared; if the fact is absent it narrates the intent but blocks only the missing fact (the hand comes up empty — no dagger) and never waits for the player to point out the absence. Document version set to 2.2 (also reconciles the header, which had not been bumped for the 2.1 operational-refinements entry below).

**Runtime Profile:** Added the "Intent Is Authored; Facts Are Grounded" subsection to the Player Agency Contract in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` — the player authors intent, the repository authors facts; a declared action's embedded factual claim ("a dagger from my purse") is grounded against canon before it is narrated as real, framed as the read-side twin of the not-loaded rule (`012` Section 3.2). Made explicit that this check fires at narration time on every declared action, not only at the promotion barrier, and linked the Failure Behavior promotion-barrier clause to it as the last line of defence rather than the first. Document version set to 1.17 (reconciles the header, which had not been bumped for the 1.16 operational-refinements entry below).

**Context:** Prototype Alpha Session 1 Extended — the Runtime narrated a player-introduced dagger (absent from canonical inventory ENT-000019/020) into the scene and only retracted it after the player challenged via OOC ("// how can Ilse has dagger?"). Same failure class as the repository-loading bug (fired only after "that is not correct") and the original d100 bug (rule present but not firing per-turn): the refuse-the-dagger rule existed only at the promotion barrier (session close) and as a passive principle, with no per-turn, at-narration-time, proactive check. Fix applies the proven pattern — resident, imperative, check-every-turn, attempt/verify-first.

**Rules/Data Model/Decisions:** Unchanged — operationalizes Grounding (`012` Invariant 1), No Silent Canon (`012` Invariant 2), and the existing established-fact quarantine (Failure Behavior); no mechanic or rule change. Reaffirms Law III (Agency): the player may attempt to draw a dagger, but canon, not phrasing, decides whether one is there.

**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-13 — Prototype Alpha Operational Refinements (Modifier Application, Time-Progression, Relationship Capture)

**Start Guide:** Clarified d100 modifier application procedure in resident ACTION RESOLUTION gate. Added explicit steps: (1) Assess difficulty and net modifier, (2) Roll d100, (3) Apply net modifier to raw roll to get effective roll, (4) Read band from effective roll, (5) Show compact roll tag. This closes the gap identified in Session 1 Extended where modifiers were calculated but not consistently applied before band-reading (Session 1, roll 2 sequence). Document version set to 2.1

**Runtime Profile:** (1) Clarified d100 procedure in "Action Resolution and the Die" section with explicit modifier-application steps; (2) Added "Single-Action Time-Skips vs. Multi-Day Skips" subsection to distinguish one-night sleep (automatic time-skip within declared action) from multi-day compression (requires explicit player delegation); (3) Added relationship-evolution capture guidance in Gameplay Close (step 3) to explicitly track qualitative NPC relationship changes—compassion, mentorship, risk-taking, stance shifts—with updated provenance and event ID. Document version set to 1.16

**Context:** Prototype Alpha Session 1 Extended exposed three operational gaps caught and self-corrected during play. Formalizing these prevents repeats.

**Rules/Data Model/Decisions:** Unchanged — operational clarification only. Decision 052 (Modifier Application and Always-Live Critical Tails) remains the authoritative design; this entry operationalizes it.

**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Substrate-Neutral Gameplay Manual

**Start Guide:** Rewrote `docs/GAMEPLAY_START_GUIDE.md` as a generic manual for any AI that can read and write the repository files, removing the ChatGPT + Project + Google Drive framing. "Prepare the AI Project" and the Google-Drive/Git sync section become "File Access and Persistence," distinguishing native file access (reads/writes just work) from indirect access (connector, synced folder, uploads) where a write-capability check applies; the AI Project Instructions and First Session prompts, the Relay Workflow, and Troubleshooting are all genericized (no Drive/ChatGPT/Codex/Project Source references). The scratch/canary path moves from `.tmp.driveupload/preflight/` to the gitignored `.tmp/preflight/`. Document version set to 2.0
**Runtime Profiles:** Genericized the persistence sections of `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` — Persistence Preflight, Session Persistence State, the Save Algorithm, and Write-Side Failure Handling now speak of the AI's file access and attempted writes rather than a connector; native file access skips the preflight, indirect access verifies by attempting a write, and the canary path is `.tmp/preflight/`. Gameplay mechanics unchanged. Document version set to 1.15
**Repository:** Added `.tmp/` to `.gitignore` for the generic scratch path
**Context:** The engine ran on ChatGPT + Google Drive, then Claude/Haiku with a directory; the manual is now substrate-neutral and usable with any AI plus a directory of files
**Rules/Data Model/Decisions:** Unchanged — documentation/operational genericization only
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Design Principles Formalization

**Engine Layer:** Created `003_DESIGN_PRINCIPLES.md` — formalizes the foundational design philosophy that was previously distributed across Engine Rules (Section 0–1), Project Context, and the README. Consolidates the 8 Engine Laws, Core Design Principles (world-first, simulation-over-narrative, emergent progression, reusable architecture, etc.), Development Philosophy, and Design Tradeoff priorities into a single authoritative document per the Manifest's Document Authority section.

**Manifest:** Updated `000_ENGINE_MANIFEST.md` Engine Layer component list to explicitly mention Design Principles. Manifest's Document Authority section already referenced the file correctly.

**Roadmap:** Marked "Create or de-reference `003_DESIGN_PRINCIPLES.md`" as complete in Technical Debt section.

**Context:** Architectural cleanup; Design Principles was referenced as an authority source by the Manifest and README but did not exist; listed as technical debt in the Roadmap.

**Engine/World/Campaign/Rules:** Unchanged — this is documentation consolidation, not a rule or mechanic change.

**Rationale:** Clarity before Version 0.3 planning. The design philosophy is the foundation against which all architectural decisions are evaluated; formalizing it in one place reduces ambiguity and makes the design rationale explicit for future contributors.

**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Out-of-Character Play and Roll Presentation Modes

**Runtime Profiles / Start Guide:** A Claude/Haiku Session 1 test rejected chaotic player-authored violence partly on the grounds that it was out of character — conflating divergence from disposition with contradiction of canon. Added "Out of Character Is Not a Contradiction" to `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Failure Behavior) and a matching clause to both resident gates in `docs/GAMEPLAY_START_GUIDE.md`: the player may steer the protagonist against their established disposition (Pre-Authored Protagonist; Decision 016; Law III), and such a choice is grounded emergent play resolved by the die and answered by consequence, never refused as "out of character"; only contradictions of established fact (an item absent from inventory such as the non-canonical dagger, being where the character cannot be, an unestablished capability) are blocked, and the Runtime quarantines just that fact rather than rejecting the session. Separately split roll presentation into a minimal play tag (`🎲 d100: 80 — failure`, with an optional short reason) versus a testing/debug breakdown (difficulty, modifiers, bands) shown only on explicit request. Profile version 1.14; Guide version 1.9
**Context:** Prototype Alpha — Claude/Haiku Session 1 export (Issue Log PA-I008); the dagger rejection was correct, the personality-based rejection was not
**Runtime/Rules:** Unchanged — clarifies Law III (Agency), Decision 016 (Personality Traits Evolve in Expression), and the existing Rejected Simulation / Canon Reconciliation boundary; no mechanic change
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Modifier Application and Critical Tails

**Decisions:** Added Decision 052 (Modifier Application and Always-Live Critical Tails) — specifies how difficulty and modifiers reach the d100 and defines natural-roll criticals that no modifier can remove
**Rules:** `010_ENGINE_RULES.md` Section 4.6 gains "Applying Difficulty and Modifiers" (bands read the effective result; the acting party's demonstrated capability, magic, and circumstances net against difficulty and opposed resistance to shift the roll; large gaps compress outcomes) and "Critical Tails Are Always Live" (a natural 01–05 always fumbles, a natural 96–100 always crits, regardless of modifiers) — closes the gap where 4.6 interpreted the raw roll with no rule for how skill changed it
**Runtime Profiles / Start Guide:** `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Action Resolution and the Die) and both resident gates in `docs/GAMEPLAY_START_GUIDE.md` now state that a large capability gap makes success or failure the ordinary result while the natural-roll critical tails stay live — a master fumbles on 01–05, a novice fells a master on 96–100; document versions set to Profile 1.13, Guide 1.8
**Context:** Prototype Alpha alpha_04 — a defenceless target resolved as an ordinary opposed exchange and a master and novice faced identical odds, because 4.6 defined bands on the raw roll with no modifier mechanic (Issue Log PA-I007)
**Rules/Data Model:** Bands (4.6), degrees of success (4.7), and opposed actions (4.9) are otherwise unchanged; extends Decisions 010 and 011 rather than replacing them
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Living-World Exchange and Clean Roll Presentation

**Runtime Profiles / Start Guide:** With the d100 gate confirmed working in the alpha_04 test (visible rolls, one exchange per reply, chained attacks correctly refused), two follow-on failures surfaced. (1) The "one exchange per reply; do not summon crowds, guards, or consequences" clause overcorrected into a dead world — a killing in a crowded hall drew no reaction — contradicting the Beat Budget (involuntary reactions are unlimited) and Law II Causality. Rewrote the rule in `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Combat Cadence) and both resident gates in `docs/GAMEPLAY_START_GUIDE.md`: unlimited immediate in-exchange world reaction is expected and kept vivid, while only *simulation advance* is barred (further exchanges, new actors arriving, time skips, downstream consequences), with the rider that deferred consequences must actually arrive in following beats. (2) Engine mechanics leaked into narration ("falls into the engine's high-success band", "this exchange ends here; I do not resolve additional actions") and rolls were mapped raw-to-band with no difficulty assessment. The visible roll is now a compact D&D-style tag (`🎲 d100: 72 — success`) and the sole permitted mechanical text — no procedure or compliance narration (Information Boundary) — and difficulty/modifiers must weigh the character's skills, abilities, and magic, with defenceless or trivial targets near-automatic. Profile version 1.12; Guide version 1.7
**Context:** Prototype Alpha — alpha_04 test (Issue Log PA-I006, PA-I007); the d100 action-resolution work from the prior entries held
**Runtime/Rules:** Unchanged — operationalizes Rules Section 4 (difficulty and modifiers), the Beat Budget, and Law II Causality; enforcement kept in the resident gates
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Proactive Repository Loading (no player correction)

**Start Guide:** Added a resident REPOSITORY LOADING gate to `docs/GAMEPLAY_START_GUIDE.md` — the AI Project Instructions block and the First Session start prompt — after test runs required the player to reply "that is not correct" before the Runtime would load canonical state. Two refusals recurred: (1) reporting the connector cold-start view ("I only have the README") as a blocker instead of querying the source, and (2) after confirming the repository was writable, refusing to load ledger contents on the grounds that it had "only confirmed the repository exists," distinguishing folder enumeration from a content fetch it never attempted. The prior instruction handled this only reactively ("if the player says the source is connected, re-run discovery"), which required the player to speak first. The gate is now proactive and attempt-first: on turn one, fetch file contents on the Runtime's own initiative; a folder listing is not a file read; report a read blocker only after an actual fetch operation errors, naming it; never claim the data is inaccessible without having attempted the fetch that turn; and never make the player correct the Runtime before it tries. Document version set to 1.6
**Context:** Prototype Alpha — first-session startup required manual "that is not correct" correction on every run; mirrors the attempt-first write-capability treatment (Save-Attempt Gating) applied to the read/load path
**Runtime Profiles/Rules:** Unchanged — operationalizes `012` Section 3.2 (not-loaded is resolved by loading, not by refusing); enforcement moved to the resident instruction as with the d100 gate
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Resident d100 Gate in the Project Instruction

**Start Guide:** Added the action-resolution gate to the always-resident layers of `docs/GAMEPLAY_START_GUIDE.md` — the AI Project Instructions block and the First Session start prompt — after an alpha_03 re-test showed that the v1.11 bright line, which lives in the fetched `AI_GAMEPLAY_RUNTIME_PROFILE.md`, did not fire: with the profile confirmed loaded at version 1.11, a declared unarmed attack was again narrated to a deterministic outcome with no d100. Root cause is placement — the profile is fetched once into a large context, while behavior each turn is governed by the resident Project Instruction (which said nothing about resolution) and the model's narrative default. The gate is now resident and imperative: classify every declared action, and on an uncertain/opposed one STOP, roll and show d100, apply the Rules Section 4 band (combat Section 6), narrate only that one exchange, and yield; never narrate a hit/miss/wound/success/failure without a shown roll; an unarmed attack on a person is never automatic. Also added a boot step to load and confirm Rules Sections 4 and 6, since the re-test never loaded `010_ENGINE_RULES.md`. Document version set to 1.5
**Context:** Prototype Alpha — alpha_03 re-test on profile 1.11
**Runtime Profiles/Rules:** Unchanged — `AI_GAMEPLAY_RUNTIME_PROFILE.md` keeps the v1.11 Action Resolution section; this change moves the enforcement point to the resident instruction. Prompt-driven rolling remains best-effort on a substrate without a real RNG tool
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Action Resolution Bright Line and Refusal Boundary

**Runtime Profiles:** Hardened `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` against two Prototype Alpha failures from the alpha_03 run. (1) A declared attack was narrated to a deterministic outcome with no d100 roll; the Runtime admitted it had not loaded the combat rules and improvised instead of loading them. Added a new **Action Resolution and the Die** section — a roll-before-narrate bright line (never narrate a deterministic result for a contested action), a requirement that Rules Section 4 be in the working set before play and Section 6 on conflict start (a not-loaded situation is resolved by loading, never by guessing), and a one-exchange combat cadence; added a boot step to load Rules 4, and pointed the combat situation bullet and the stop-and-yield conditions at the bright line. (2) A substrate content refusal was handled by fabricating the player character's impulse, movement, and feelings, authoring intent inside the Player Intent Domain and cascading into player escalation. Added **Content and Refusal Boundaries** — a refusal is bounded to the content and must not author PC intent/action/emotion; the character is held in place and control yields; the mature-content ceiling is framed as a substrate property, not an engine feature, with no attempt to override any platform policy. Document version set to 1.11
**Context:** Prototype Alpha — alpha_03 test run (Issue Log PA-I004, PA-I005)
**Runtime/Rules:** Unchanged — operationalizes Rules Section 4 (Action Resolution) and `012` Sections 1.5–1.6; Promotion Barrier and the Rules untouched
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Save-Attempt Gating and Checkpoint Completeness

**Runtime Profiles:** Hardened `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` persistence against two Prototype Alpha failures. (1) Ruled out tool-list inspection as a write-capability test — enumerating connector operations and reporting no obvious "create file" verb is a positive-absence false negative, not a Failed state; enumerated the aliases file writes appear under (upload, add file, create document, put, save, re-upload/replace); and added a gate that any save/checkpoint/progress request enters the Save Algorithm and must not be answered with a capability verdict before the attempt step. (2) Made a checkpoint a full-target-set operation — the Save Algorithm now enumerates every promotion target (Current State, chronicle, changelog, relationships, inventory, knowledge, objectives, save manifest), forbids reporting a single-ledger write as saved, requires read-back per target, and completes the remaining targets when writes succeed rather than stopping at a partial checkpoint; document version set to 1.10
**Start Guide:** Mirrored both into `docs/GAMEPLAY_START_GUIDE.md` (tool-list-is-not-a-write-test note; troubleshooting entries for refuse-without-trying and single-ledger partial saves); document version set to 1.4
**Context:** Prototype Alpha — on a save request the Runtime summarized progress and refused to write, claiming from its tool list that no file-write function existed; when a write later landed it updated only `130_NPCS_AND_FACTIONS.md`, leaving Current State, chronicle, changelog, and the checkpoint unwritten (Issue Log PA-I002, PA-I003)
**Runtime/Rules:** Unchanged — Promotion Barrier untouched; operationalizes Decisions 041 and 042
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Progression Surfacing

**Decisions:** Added Decision 051 (Progression Surfacing) — permits XP and levels as a derived, non-canonical view of emergent growth, and as a world-diegetic System via the Supernatural Phenomena Contract, while reaffirming Decisions 012–014 as the sole growth and resolution model
**Runtime Profiles:** Added the Progression Surfacing section to `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` — per-capability tiers, an overall character level, and an experience log, computed from canon on request, with the level-up-follows-growth guardrail; document version set to 1.9
**Glossary:** Added Derived Progression View and Diegetic System
**Roadmap:** Added Progression Surfacing to Future Architecture (Accepted)
**Rules/Data Model/Manifest:** Unchanged — XP and levels are a presentation view, not the progression model; the emergent-progression identity is intact
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Write-Through Promotion Capability

**Runtime Profiles:** Reframed `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` persistence capability from update-in-place to **write-through** — Canon Promotion rewrites each target ledger's full content by resolved handle, path replacement, or re-creation, and does not require a line-level edit-arbitrary-Markdown operation; the preflight canary now attempts an actual content rewrite rather than inferring capability from the tool surface, and resolves handles through repository discovery; only a real attempt failure blocks canonical play; document version set to 1.8
**Context:** Prototype Alpha — the Runtime blocked canonical play after concluding from its tool list that no edit-in-place operation existed, without attempting a content replace on the canary it had just created
**Runtime/Rules:** Unchanged — Promotion Barrier untouched; operationalizes Decisions 041 and 042
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Deterministic Checkpoint Persistence

**Runtime Profiles:** Refined `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` repository persistence to attempt-then-react: added Session Persistence State (write capability, once established by an actual write, persists for the session unless a real write fails), a Checkpoint Save Algorithm (Promotion Barrier → capability check → attempt update → read-back verification → report or fallback), write-side failure differentiation (connector failure, permission denial, validation failure, canonical contradiction, and Runtime uncertainty — the last never blocking persistence), post-write read-back verification, and the Runtime Checkpoint Report fallback; harmonized the preflight wording so uncertainty is resolved by attempting the canary rather than by refusing; document version set to 1.7
**Context:** Prototype Alpha — the Runtime refused a canonical checkpoint on abstract connector uncertainty after write capability had already been demonstrated
**Runtime/Rules:** Unchanged — Promotion Barrier untouched; operationalizes Decisions 041 and 042
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Persistence Preflight and Promotion Reconciliation

**Runtime:** Added `012_ENGINE_RUNTIME.md` Section 8.3 (Unestablished Is Not Contradiction) — a fact absent from loaded canon is not a contradiction; consistent generated detail is promotable at the lowest tier with provenance, and only true conflicts trigger contradiction handling
**Runtime Profiles:** Strengthened `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` Persistence Preflight to verify both create-new and update-existing-in-place capability against the actual canonical targets (resolving editable handles before scene-open, with a two-part canary), preventing checkpoint-write failure from surfacing mid-game; added the Canon Reconciliation at Promotion section (graduated promote / flag / reconcile model) and narrowed Rejected Simulation to genuine unreconcilable contradiction; document version set to 1.6
**Context:** Prototype Alpha checkpoint attempt (verra_run02) exposed both gaps — a canary that proved create-new but not update-existing, and a whole-session rejection triggered by unestablished (not contradictory) NPC detail
**Rules:** Unchanged — operationalizes existing Decisions 032, 042 and Rules Sections 2.1, 2.9
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 — Player Agency and Interaction Cadence

**Decisions:** Added Decision 050 (Player Agency and Interaction Cadence), refining Decisions 041, 042, and 049
**Runtime:** Added `012_ENGINE_RUNTIME.md` Section 1.6 (Player Authority Boundary) — the substrate-independent obligation that the player authors intent within the Player Intent Domain, the Runtime authors consequence, and the Runtime yields at meaningful player choices; defined the yield boundary as intent completion (at most one player opportunity per response, unlimited world reactions); added the yield step to the Runtime Execution Summary
**Runtime Profiles:** Added Player Agency Contract and Interaction Cadence sections to `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (declared intent vs. automatic execution vs. meaningful choice, cadence modes, the Beat Budget, the independent Narrative Richness / Decision Density axes, intent-completion Player Decision Points, auto-advance and must-stop rules, situation guidance, acceptance scenarios); document version set to 1.5
**Glossary:** Added Player Intent Domain, Player Decision Point, Player Opportunity, Automatic Execution, Involuntary World Reaction, Cadence Mode, Beat Budget, Narrative Richness, Decision Density, Narrative Momentum, Delegation, Yield
**Roadmap:** Recorded the refinement as a Prototype Alpha readiness item
**Rules:** Unchanged — this governs execution at the Player↔Engine seam, owned by the Runtime; the frozen foundation Rules are only referenced (Section 3.2, Section 4.0, Law III)
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-12 - Gameplay Runtime Profile and Player Onboarding

**Decisions:** Added Decision 049 (Separate Development and Gameplay Runtime Profiles), refining Decision 041's LLM profile implementation
**Runtime Profiles:** Reframed `docs/AI_SESSION_TEMPLATE.md` as development-only; created `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` with first-session, resumed-session, takeover, custom-character, readiness, promotion, and gameplay-close procedures
**Templates:** Added non-canonical campaign-startup and derived player-briefing templates; extended template conventions for operational and derived artifacts
**Prototype Alpha:** Added non-canonical startup configuration and spoiler-safe Ilse Varn player briefing; canonical campaign ledgers, Verra, saves, and identifiers unchanged
**Manifest/Roadmap/Docs:** Indexed the profile split and onboarding artifacts; marked Prototype Alpha onboarding readiness complete
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-11 — Knowledge & Civilization Architecture

**Decisions:** Added Decision 046 (Civilizational Knowledge State and Propagation) and Decision 047 (Knowledge Custody, Continuity, and Rediscovery), refining Decision 031
**Rules:** Revised Section 8 (Research & Knowledge) with the Knowledge Subject / Knowledge State distinction, non-linear propagation, institutional mediation, transmission, loss, passive extinction, and rediscovery
**Glossary:** Added Knowledge Subject, Knowledge State, Knowledge Lifecycle, Rediscovery, Passive Extinction, Preservation Quality, Transmission Reach, and related knowledge terminology
**Roadmap:** Restructured Version 0.2 into capability milestones (0.2.1–0.2.5); added Prototype Alpha — Engine Validation Campaign and Engine Postmortem as this milestone's validation gates
**Engine Version:** Unchanged; remains 0.1.5 until the 0.2.0 validation gates are complete

---

# Version 0.1.5 (Foundation Release)

## 2026-07-11 — Version Evolution & Validation Lifecycle

**Decisions:** Added Decision 048 (Version Evolution and Validation Lifecycle)
**Docs:** Added the Version Evolution & Validation Lifecycle section to `docs/DEVELOPMENT_WORKFLOW.md` as the canonical operational implementation of Decision 048; document version set to 1.2
**Roadmap:** Added the Development Lifecycle section referencing Decision 048; reframed Version 0.2 by lifecycle stage; updated Current Sprint, Current Dependencies, and Release Criteria
**Foundation:** Closed the Foundation line (0.1.0–0.1.5) and set the Engine Version to 0.1.5 (Foundation Release); the foundational engine architecture is frozen as the stable substrate for every capability version

---

# Version 0.1.4 (Foundation Stabilization)

## 2026-07-11 - Repository Consistency and Governance Synchronization

**Decisions:** none
**Rules:** Removed duplicated simulation-model definition in Section 3.3 by making Section 1 authoritative; aligned structural scope references to the Data Model; corrected the current-state ledger reference in the save architecture
**Data Model:** Declared the canonical structural scope taxonomy as `personal | local | regional | world | historical`; Data Model Version set to 0.1.1
**Runtime:** Removed stale "future extraction" wording and synchronized Runtime references to the current architecture
**Templates:** Updated template schema versions to 0.1.1; aligned scope fields to the Data Model; changed save-manifest scope references from speculative identifiers to existing world/campaign names or repository paths
**Docs:** Updated README, INDEX, PROJECT_CONTEXT, CONTRIBUTING, DEVELOPMENT_WORKFLOW, and AI startup guidance to reflect Rules, Data Model, Runtime, Templates, Glossary, and Changelog authority relationships
**Manifest/Roadmap/Glossary:** Normalized Engine Version to 0.1.4; synchronized roadmap and glossary terminology with the stabilized architecture

---

# Version 0.1.3 (Foundation Hardening)

## 2026-07-11 — Ledger Templates (Phase 1)

**Decisions:** Added Decision 045 (Ledger Template System)
**Rules:** none
**Data Model:** Added the placeholder-rejection validation constraint (`011` Section 12.3); Data Model Version unchanged at 0.1.0
**Files:** Created `templates/000_TEMPLATE_CONVENTIONS.md`; `templates/objects/` block templates (Character, Institution, Settlement/Kingdom, Resource, Place, Discovery/Knowledge, Canonical Record, Event, Relationship); `templates/ledgers/` (`100_CHARACTER_SHEET`, `130_NPCS_AND_FACTIONS`, `900_SAVE_MANIFEST`); `templates/examples/character_example.md`
**Manifest:** Expanded the `templates/` tree; noted the template layer under Document Authority; Engine Version set to 0.1.3
**Glossary:** Added Object Block, Ledger Template
**Roadmap:** Ledger Templates Phase 1 complete; Foundation Hardening milestone complete; Phase 2 templates deferred

---

# Version 0.1.2 (Foundation Hardening)

## 2026-07-11 — Data Model

**Decisions:** Added Decision 043 (Persistent Object and Data Model Structural Contract); Decision 044 (Stable Entity Identity); refined Decisions 022, 024, 025, 032, 033
**Rules:** Relocated the Persistent Entity structural fields (Section 3.10) and the provenance envelope (Section 2.8) to `011`, retaining behavior and adding references; Section 2.8 gained the single-Canonical-Record statement; Section 7.12 references `011` for the identifier-versus-quantity basis
**Runtime:** Repointed `012` data-model references from the Rules to `011`; added identifier minting to the mutation write path
**Files:** Created `011_ENGINE_DATA_MODEL.md` and `system/ID_REGISTRY.md`
**Manifest:** Activated `011` and added `system/ID_REGISTRY.md` to the repository tree; described the Rules / Data Model / Runtime separation and the most-stable-layer expectation; Engine Version set to 0.1.2; added Data Model Version 0.1.0
**Glossary:** Added Persistent Object, Identifier, ID Registry, Identity-Continuity Graph, Alias, Canonical State, Historical Evidence, Event, Relationship; updated Persistent Entity
**Roadmap:** Data Model complete under Foundation Hardening; ledger templates are the next task

---

# Version 0.1.1 (Foundation Hardening)

## 2026-07-11 — Runtime Model

**Decisions:** Added Decision 041 (Runtime Model); Decision 042 (Durable Canon and Promotion Obligation), refining Decision 004 and Decision 032
**Rules:** Clarified Section 2.1 (canon hierarchy is a precedence order, not a durability order); tightened Section 2.8 (mandatory Canon Promotion; transcript is a precedence tier, not a durability tier)
**Files:** Created `012_ENGINE_RUNTIME.md`
**Manifest:** Added `012_ENGINE_RUNTIME.md` and reserved `011_ENGINE_DATA_MODEL.md` to Engine Components and the repository tree; described the Rules / Data Model / Runtime separation and Runtime Profiles; Engine Version set to 0.1.1
**Glossary:** Added Runtime, Runtime Profile, Interpreter, Session, Context, Working Set, Canon, Mutation, Persistence, Durable Canon, Pending Canon, Canon Promotion, Canon-Determinism, Substrate; disambiguated Promotion
**Docs:** Reframed `docs/AI_SESSION_TEMPLATE.md` as the large-language-model Runtime Profile; added `012` to mandatory reading order in README, INDEX, DEVELOPMENT_WORKFLOW, AI_SESSION_TEMPLATE
**Roadmap:** Opened the Foundation Hardening milestone; Runtime Model complete; Data Model reserved as the next task

---

# Version 0.1.0 (Workshop Draft)

## 2026-07-11 — Engine Changelog

**Decisions:** Added Decision 040 (Engine Changelog Format)  
**Files:** Created `030_ENGINE_CHANGELOG.md`  
**Roadmap:** Engine Changelog complete. Version 0.1 — Engine Foundation fully complete.

---

## 2026-07-11 — Save State Architecture

**Decisions:** Added Decision 039 (Save State Architecture), superseding P006  
**Rules:** Added Section 13 — Save State Architecture; cross-referenced Section 2.8  
**Manifest:** Corrected `saves/` placement to `campaigns/<campaign>/saves/`; Save Format version set to 0.1.0  
**Glossary:** Added Save Checkpoint, Save Manifest; updated Machine-Readable Save  
**Docs:** Added "Resuming an Existing Campaign" to `docs/AI_SESSION_TEMPLATE.md`  
**Roadmap:** Save State Architecture complete; Version 0.6 rescoped

---

## 2026-07-11 — Historical Persistence

**Decisions:** Added Decision 038 (Historical Persistence), superseding P005  
**Rules:** Added Section 12 — Historical Persistence; cross-referenced Section 9.13  
**Manifest:** Corrected `historical/` placement to `worlds/<world>/historical/`  
**Glossary:** Added Promotion  
**Roadmap:** Historical Persistence complete; Version 0.5 rescoped

---

## 2026-07-11 — Magic & Supernatural Phenomena

**Decisions:** Added Decision 037 (Magic as World Extension), superseding P004  
**Rules:** Added Section 11 — Magic & Supernatural Phenomena; cross-referenced Section 6.18  
**Glossary:** Added Supernatural Phenomenon  
**Roadmap:** Magic Framework complete; Version 0.4 rescoped

---

## 2026-07-11 — Politics & Governance

**Decisions:** Added Decision 036 (Political Entities and Governance Scope)  
**Rules:** Added Section 10 — Politics & Governance  
**Glossary:** Added Diplomacy, Governance, Kingdom, Law, Legitimacy, Settlement, Treaty  
**Roadmap:** Politics & Governance complete

---

## 2026-07-11 — Institutions & Organizations

**Decisions:** Added Decision 034 (Institution Typing and Ledger Scope); Decision 035 (Institution Lifecycle Model), superseding P002  
**Rules:** Added Section 9 — Institutions & Organizations  
**Manifest:** Added `worlds/<world>/institutions/` sub-path  
**Glossary:** Added Founding, Governance Structure, Internal Drift, Legacy, Military Institution; updated Institution  
**Roadmap:** Institutions & Organizations complete

---

## 2026-07-11 — Persistent Entity Abstraction

**Decisions:** Added Decision 033 (Persistent Entity Abstraction), superseding P001  
**Rules:** Added Section 3.10 — Persistent Entities  
**Roadmap:** Persistent Entity Abstraction complete

---

## 2026-07-11 — Project Documentation

**Files:** Added `docs/` (README, INDEX, PROJECT_CONTEXT, AI_SESSION_TEMPLATE, CONTRIBUTING, DEVELOPMENT_WORKFLOW, Case Study 401 — The Mictian Campaign)

---

## 2026-07-11 — Canonical Record Architecture

**Decisions:** Added Decision 032 (Canonical Record Architecture), superseding P007  
**Rules:** Added Section 2.8 — Canonical Record Architecture  
**Roadmap:** Canonical Record Architecture complete

---

## 2026-07-11 — Engine Foundation

**Decisions:** Added Decisions 001–031, including Decision 031 (Research and Knowledge Evolve Through Lifecycle), superseding P003  
**Rules:** Added Sections 0–8 (Engine Laws through Research & Knowledge)  
**Files:** Added `000_ENGINE_MANIFEST.md`, `001_ENGINE_DECISIONS.md`, `002_ENGINE_ROADMAP.md`, `010_ENGINE_RULES.md`, `020_ENGINE_GLOSSARY.md`, `worlds/asterra/200_WORLD_BIBLE.md`  
**Roadmap:** Version 0.1 — Engine Foundation milestone established

---

## 2026-07-11 — Initial Structure

**Files:** Repository scaffolding established
