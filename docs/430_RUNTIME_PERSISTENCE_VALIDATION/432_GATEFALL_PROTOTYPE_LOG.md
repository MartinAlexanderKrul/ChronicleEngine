# Chronicle Engine

## Gatefall: Pendragon — Version 0.3 Prototype Log

**Status:** Active  
**Campaign:** `campaigns/gatefall_pendragon_001/`  
**World:** `worlds/gatefall/`  
**Authority:** Non-canonical validation record; campaign ledgers remain canonical

---

# Designation

By owner approval on 2026-07-24, the already-active Gatefall: Pendragon campaign is the Version 0.3 Runtime & Persistence Hardening prototype.

This designation does not change campaign canon, allocate identifiers, or authorize development edits during gameplay. It records that ordinary play supplies prototype evidence for roadmap milestone 0.3.5.

---

# Evidence Baseline

At designation, the campaign had:

- four canonical-form checkpoints (`900_CHECKPOINT_0001`–`0004`);
- a latest restore point at `900_CHECKPOINT_0004`;
- all eight campaign ledgers captured at each checkpoint;
- Data Model 0.1.2 live state;
- structured Gatefall World Rule Profile 1.0 metadata;
- profile status `workshop-draft`, making Checkpoint 0004 a prepared unfrozen-profile restoration case;
- repeated identifier allocation and same-change worlds/campaigns index updates;
- no baseline checkpoint, so `/restart` is correctly unavailable on the live campaign.

## Current Evidence State

The counts, ranges and partitions below are **generated from the campaign's own save manifests** and checked by repository validation.

They were hand-maintained until 2026-08-02, and had drifted twenty-eight checkpoints and five decisions behind live state — inside the document that is supposed to be the postmortem's evidence base. That is the Version 0.3 postmortem's Finding 4 happening to the validation record itself, and it is why this half is no longer written by hand. The prototype was producing evidence faster than the record absorbed it, and nothing read the record closely enough to notice.

What is **not** generated: verdicts, evidence classes, and every assessment in this document. Those are judgment, and a generator emitting them would be authoritative and wrong — the limit Decision 071 already recorded when the same question was put to the worlds-and-campaigns index.

<!-- BEGIN GENERATED: evidence-state -->

*Derived by `tools/generate_validation_evidence.ps1` from the campaign's own save manifests. Do not edit inside the markers; edit the manifests and regenerate. Verdicts, evidence classes and assessment prose are deliberately not generated — they are judgment and live in the hand-written sections.*

**Checkpoints:** 65 (`900_CHECKPOINT_0001`–`900_CHECKPOINT_0065`)

**Data Model schema by capture**

| Schema | Checkpoints | Count |
|---|---|---:|
| 0.1.2 | 0001–0014 | 14 |
| 0.1.3 | 0015–0023 | 9 |
| 0.1.4 | 0024–0029 | 6 |
| 0.1.5 | 0030–0050 | 21 |
| 0.1.6 | 0051–0065 | 15 |

**World Rule Profile freeze status by capture**

| Freeze status | Checkpoints | Count |
|---|---|---:|
| workshop-draft | 0001–0008 | 8 |
| frozen | 0009–0065 | 57 |

**Latest capture:** `900_CHECKPOINT_0065` — kind `manual`, profile 1.47 (frozen), schema 0.1.6, parent `900_CHECKPOINT_0064`, source `EVT-000361`.

<!-- END GENERATED: evidence-state -->

Milestone captures within that sequence, hand-recorded because *first* is a claim about significance rather than a field in a manifest: Checkpoint 0015 is the first automatic Context-Preservation capture and the first native 0.1.3; Checkpoint 0020 the first under a frozen profile, at 1.10; Checkpoint 0024 the first 0.1.4; Checkpoint 0030 the first 0.1.5; Checkpoint 0051 the first 0.1.6. Every checkpoint remains immutable and runs the applicable readiness chain before play.

Live prototype evidence also produced Decision 076: Relationship Texture. That finding was accepted on 2026-07-25 repository time as an explicit foundational exception to the Version 0.3 Architecture Freeze and advances mutable live state to Data Model 0.1.3. Checkpoint 0014 and every earlier checkpoint remain byte-immutable at their captured schema; restoring them requires the explicit schema migration at readiness before validation and play. Checkpoint 0015 closes the positive path by capturing already-migrated live state directly as 0.1.3. The campaign's in-world date did not date the architectural decision.

Further play exposed the same clock-domain confusion in live provenance: fictional dates beyond the repository date had been written as `record_time`. Decision 077 advances mutable live state to Data Model 0.1.4, serializing the domains explicitly as `game_date` and `real_date`. Existing checkpoints remain byte-unchanged at their captured keys/schema; restoration migrates only the mutable graph.

Further play then exposed a separate operational clock defect: Gatefall Mana recovery
was mathematically authored but campaign state had no exact last-settled game-time
anchor or fractional carry, so narrators calculated it only when the player asked;
natural Health recovery was unauthored. Decision 078 and frozen Profile 1.13 add
the exact Chicago-local anchor, deterministic integer carry for both pools, and
automatic settlement before the next action. Checkpoint 0024 remains immutable at
Profile 1.12 and migrates only into mutable readiness state.

On 2026-07-27 repository time, two further persistence failures were dispositioned by explicit owner ruling. Decision 079 advances live state to Data Model 0.1.5 so stored skill counters reconcile against prospective Event deltas. Decision 080 adds a profile-declared progression audit and persistent candidates after Alexander's three-scene dual-wield technique was never recognized by the Runtime. Gatefall Profile 1.19 is the first implementation; `EVT-000130` baselines current counters and migrates Twin Fang's supported evidence without rewriting historical Events or Checkpoint 0029.

**Reconciliation (Decision 074 freeze):** After this baseline, the Gatefall World Rule Profile was frozen at version 1.0 (Rules Section 14.6, Decision 074), and later checkpoints capture `freeze_status: frozen`. This does not invalidate the baseline: Checkpoint 0004 was captured before the freeze and remains the real, immutable pre-freeze workshop-draft case (WRP-03), while the live frozen profile now supplies the genuine matching and mismatch cases (WRP-01, WRP-02, WRP-05). The validation harness reads the live profile's actual frozen version rather than assuming a fixed value, so it tracks the freeze instead of breaking against it.

The live campaign is the positive-path subject. Its absence of a baseline is not repaired retroactively.

---

# Protection Boundary

The following operations are forbidden on Gatefall main solely for validation:

- inserting contradictory locations,
- corrupting or editing an immutable checkpoint,
- changing the active World Rule Profile to manufacture a mismatch,
- restarting the canonical continuation,
- or restoring older state over newer live canon without an explicit player decision.

Branch and restart validation uses a disposable fork. Negative structure and compatibility cases use non-canonical fixtures.

---

# Recorded Evidence

## Evidence 001 — Canonical checkpoint sequence

**Result:** Observed pass.

Every checkpoint uses the canonical four-digit directory form. Each contains all eight campaign ledgers and one manifest without a live registry identifier. The sequence includes the original workshop-draft profile evidence at Checkpoint 0004, frozen Profile 1.6 / schema 0.1.2 evidence at Checkpoint 0014, the first native schema 0.1.3 capture at Checkpoint 0015, and the first frozen-profile capture at Checkpoint 0020, continuing unbroken through the schema and freeze transitions tabulated under *Current Evidence State*.

**The count and range are deliberately not restated here.** They are generated above and checked by repository validation; a second hand-written copy is exactly the duplication that let this document fall twenty-eight checkpoints behind, and it went stale again within a day of the last hand reconciliation.

The result itself is unchanged and is the strongest single one in the matrix: consecutive conforming captures across every Data Model version the campaign has held and a profile line from 1.0 onward, with the checkpoint form absorbing each schema advance without one malformed or abandoned point.

**Matrix:** V03-01, V03-09.

## Evidence 002 — Promotion target completeness

**Result:** Observed pass.

Checkpoint 0004 records the original complete eight-ledger target set, and subsequent checkpoints through **0052** repeat the canonical form. Checkpoint 0015 additionally observes the automatic Context-Preservation path: all eight ledgers promoted, registry advanced through `EVT-000084`, worlds-and-campaigns index advanced to 0015, and `play_export_0003.md` written in the same preservation operation.

**Matrix:** V03-02.

## Evidence 003 — Presence gate on live play

**Result:** Observed pass at rest.

The campaign advanced Alexander through several locations while the live repository continued to pass the Data Model 0.1.2 presence checks. The live state then migrated additively to Data Model 0.1.3 for Relationship Texture without changing the presence contract. This proves the positive shape remains accepted; the negative fixture remains separate.

**Matrix:** V03-06.

## Evidence 004 — Disposable presence failure execution

**Date / checkpoint:** 2026-07-24 capability-validation worktree; no canonical checkpoint created.
**Command or barrier:** `tools/test_runtime_persistence_validation.ps1` → `tools/validate_repository.ps1 -RepositoryRoot <temporary-copy>`.
**Starting state:** Four independent copies of live repository state. P-01 removes Alexander's location; P-02 duplicates it; P-03 changes a carried Reikon resource to combined possessor/place syntax; P-04 names undefined possessor `ENT-999999`.
**Expected result:** Each disposable mutation fails the Repository Validation Barrier for the authored reason.
**Observed result:** All four failed. Verbatim `validate_repository.ps1` output from the dated run (identifier line numbers and the registry high-water mark are a snapshot and advance as the live campaign does; the harness assertions match on the durable message text, not these):

```text
P-01: Repository validation FAILED (1 error(s))
  - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md:29 active Character ENT-000125 must declare exactly one canonical_state.location; presence is owned by the entity's own record (Decision 073).

P-02: Repository validation FAILED (2 error(s))
  - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md:29 object ENT-000125 declares more than one location; presence has exactly one owner (Decision 073).
  - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md:29 active Character ENT-000125 must declare exactly one canonical_state.location; presence is owned by the entity's own record (Decision 073).

P-03: Repository validation FAILED (1 error(s))
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md:45 object ENT-000054 has a carried-by location that is not the bare 'carried by ENT-######' form; presence-by-possession names the possessor alone and asserts no place of its own (Decision 073).

P-04: Repository validation FAILED (3 error(s))
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md:66 references ENT-999999, above registry high-water mark ENT-000136.
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md:66 references ENT-999999, which has no allocation-log entry.
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md:66 references ENT-999999, which has no live object definition.
```

**Repository evidence:** Deterministic mutations and output assertions in `tools/test_runtime_persistence_validation.ps1`, run against the real `tools/validate_repository.ps1` gate.
**Matrix cases:** V03-07, V03-08.
**Verdict:** Pass.

## Evidence 005 — Profile readiness matrix

**Date / checkpoint:** 2026-07-24 capability-validation worktree; copied Gatefall 0004 and Prototype Alpha 0001 manifests, read against the live frozen Gatefall profile.
**Command or barrier:** `tools/test_runtime_persistence_validation.ps1`, WRP-01 through WRP-05.
**Starting state:** Copied manifests and the live world profile only; no immutable checkpoint edited and the live profile is never modified. The Gatefall profile is now frozen at version 1.0 (Decision 074); the harness reads that live version rather than assuming it, so the matching and mismatch cases track live authoring. Only the copied manifest metadata is synthesized.
**Observed result:**

- WRP-01 manifest captured frozen at the live version (1.0) against the live frozen profile → `ready-matching-frozen`;
- WRP-02 frozen 1.0 capture against a one-step-advanced (1.1) profile → `halt-version-mismatch:1.0-to-1.1`;
- WRP-03 Gatefall 0004 pre-freeze workshop-draft capture → `halt-unfrozen-not-save-trustworthy`;
- WRP-04 explicit Verra `none` with no profile file → `ready-no-profile`;
- WRP-05 additive 1.0→1.1 → readiness halt with no recomputation; migrating 1.0→1.1 → explicit migration required.

**Matrix cases:** V03-10, V03-11, V03-12.
**Verdict:** Pass.

## Evidence 006 — Exact named restoration and dispatcher

**Date / checkpoint:** 2026-07-24 capability-validation worktree; copied Gatefall checkpoints 0003 and 0004.
**Command or barrier:** Disposable `/load 900_CHECKPOINT_0003`; Runtime Profile command-row assertions.
**Starting state:** All eight copied live ledgers carry a deliberately newer marker; 0004 remains present as the latest checkpoint.
**Observed result:** The named operation selected 0003, not 0004; every restored ledger was SHA-256-identical to its 0003 source; the registry hash was unchanged; `/load 900_CHECKPOINT_9999` failed without mutation. `/save`, `/load`, `/branch`, and `/restart` still dispatch respectively to the existing Save Algorithm, Returning/Fork, Fork, and Redo procedures.
**Matrix cases:** V03-04, V03-05, V03-14, V03-17, V03-18.
**Verdict:** Pass.

## Evidence 007 — Disposable branch and restart

**Date / checkpoint:** 2026-07-24 capability-validation worktree; branch source Gatefall 0004.
**Command or barrier:** Disposable branch creation, baseline restart, and `validate_repository.ps1` after each state transition.
**Starting state:** A complete temporary repository copy. The branch remaps every campaign-local definition into new monotonic registry allocations, including a protagonist distinct from `ENT-000125`, and records Gatefall 0004 as its parent.
**Observed result:** Original campaign and source checkpoint directory digests stayed unchanged; the branch used distinct entity and Canonical Record identities, performed the explicit 0.1.2→0.1.3 migration on its new mutable graph before sealing its baseline, recorded non-canonical-continuation lineage, and passed repository validation. After a post-baseline Event allocation, restart restored all eight baseline ledgers byte-for-byte, kept the branch protagonist, preserved the registry high-water mark, left the discarded Event identifier retired, allocated the next Event identifier, and passed repository validation again.
**Matrix cases:** V03-15, V03-16, V03-17.
**Verdict:** Pass.

## Evidence 008 — Human-observed cold bootstrap

**Date / checkpoint:** 2026-07-24; no campaign checkpoint involved.
**Command or barrier:** Cold `/ChronicleEngine` bootstrap.
**Starting state:** A new Chronicle Engine session with no campaign selected.
**Expected result:** Render the complete welcome page and load no campaign before the player chooses.
**Observed result:** The repository owner confirmed the cold bootstrap worked as intended.
**Repository evidence:** Automated command-catalog coverage remains in `tools/test_runtime_command_catalog.ps1`; this entry records the required human observation without reconstructing an unavailable transcript.
**Matrix case:** V03-13.
**Verdict:** Pass.

## Evidence 009 — Prototype-driven architecture finding and Checkpoint 0014

**Date / checkpoint:** 2026-07-25 repository time; Gatefall Checkpoint 0014 at campaign time 2026-07-30.
**Command or barrier:** Ordinary play, automatic Context-Preservation checkpoint and export, Decision 076 implementation, Data Model 0.1.3 live migration.
**Starting state:** Thirteen earlier immutable checkpoints; a personal Character-to-Character Relationship whose standing survived promotion but whose manner required a new structural field.
**Expected result:** Prototype evidence may change architecture when the finding is explicitly classified and governed; the Data Model version advances; live mutable state migrates; immutable checkpoints remain unchanged and acquire an explicit restoration migration.
**Observed result:** Decision 076 was accepted as a recorded foundational exception; Relationship `Texture`, Characterization Settlement, coverage validation, and automatic transcript export were implemented. Four historical relationships carry honest *not recorded* markers. Live records are schema 0.1.3; Checkpoint 0014 remains a 0.1.2 capture and requires the additive readiness migration on restore.
**Repository evidence:** Decisions 076; Data Model Sections 10 and 12.4.1; `tools/validate_repository.ps1`; Gatefall `180_CURRENT_STATE.md`; `exports/play_export_0001.md` and `play_export_0002.md`; Checkpoint 0014.
**Matrix cases:** V03-01, V03-02, V03-09, V03-19.
**Verdict:** Pass for finding disposition and migration; V03-19 remains open for the final postmortem determination.

## Evidence 010 — Automatic Context-Preservation Checkpoint 0015

**Date / checkpoint:** 2026-07-25 repository time; Gatefall Checkpoint 0015 at campaign time 2026-07-30 approximately 08:15.
**Command or barrier:** Resident Context-Preservation Watch → automatic Session Export plus complete Save Algorithm after twenty-one resolved player exchanges since Checkpoint 0014.
**Starting state:** Live campaign already migrated to Data Model 0.1.3; latest immutable checkpoint 0014 remained a 0.1.2 capture requiring readiness migration.
**Expected result:** Without waiting for a player `/save`, context pressure triggers complete promotion, writes and reads back all eight ledgers, advances the registry and index atomically, creates an immutable canonical-form 0.1.3 checkpoint, and exports the non-regenerable transcript. The resulting checkpoint restores under the matching frozen profile and current schema without migration.
**Observed result:** Checkpoint 0015 contains all eight ledgers and exactly one identifier-free manifest. Its immutable manifest records `checkpoint_type: automatic-context-preservation`, parent 0014, frozen Gatefall Profile 1.6, `campaign_schema: "0.1.3"`, compatible status, and no required migration at capture. `EVT-000084` records the promoted interval; the repository index and live current-state ledger both name 0015 as latest. Following live adoption through Profile 1.8, restoration now chains the terminology-only 1.6→1.7 Rank migration and additive 1.7→1.8 layout adoption without altering the checkpoint. `exports/play_export_0003.md` exists as the automatic transcript export.
**Repository evidence:** `campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0015/`; `campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md`; `system/WORLDS_AND_CAMPAIGNS.md`; `campaigns/gatefall_pendragon_001/exports/play_export_0003.md`; commit `de73e20`.
**Gate output:** `validate_repository.ps1` passed (352 live Persistent Objects); `test_checkpoint_contract.ps1` passed; `test_context_preservation_contract.ps1` passed.
**Matrix cases:** V03-01, V03-02, V03-09, V03-19.
**Verdict:** Pass — first native Data Model 0.1.3 checkpoint and first observed automatic context-preservation checkpoint/export pair after Decision 076.

## Evidence 011 — Compression-time Player Agency violations at Checkpoint 0020

**Date / checkpoint:** 2026-07-26 repository time; Gatefall Checkpoint 0020 at campaign time 2026-07-31.
**Command or barrier:** Ordinary play across compressed work and travel spans; Player Agency Contract correction and rewind before promotion.
**Starting state:** The resident core already reserved protagonist intent to the player, but its cadence section did not separately constrain what a Runtime may fill into a compressed multi-beat summary.
**Observed result:** The Runtime twice converted a plausible default into an undeclared protagonist action. After “go to work with my better chisel,” it invented that Alexander stayed on Ruth's shared vein and declared every crystal, foreclosing the player's intended private-skimming choice. After arrival at a park bench, it invented an outgoing text to Owen and a reply without the player declaring any contact. The player caught both; each narration was rewound before Checkpoint 0020 was sealed.
**Disposition:** Runtime refinement, not foundational architecture and no ADR. Resident Core 1.5 adds the compression intent envelope: summaries may include only declared conduct, strictly necessary execution, autonomous world behavior, and automatic consequences. It expressly prohibits invented communications and choices among materially different methods, states that established behavior is not delegation, and requires a protagonist-as-actor pre-send test plus clarification at ambiguity. Runtime Profile 1.36 advertises the resident guard.
**Repository evidence:** `docs/AI_GAMEPLAY_RESIDENT_CORE.md`; `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`; `tools/test_player_agency_contract.ps1`; immutable Checkpoint 0020 and commit `242ecb7` remain unchanged.
**Gate output:** `test_player_agency_contract.ps1` passes alongside the repository and checkpoint gates.
**Matrix cases:** V03-19.
**Verdict:** Pass for finding disposition; V03-19 remains open for the final postmortem determination.

## Evidence 012 — The design-flag intake path, and F-001's two decisions

**Date / checkpoint:** 2026-07-31 repository time; checkpoints 0043–0051.
**Command or barrier:** `/flag`; ordinary play; owner rulings admitting Decisions 082–084.
**Starting state:** No intake path existed between "noticed in play" and "accepted decision," so friction either became an ADR immediately or evaporated.
**Observed result:** `engine/004_DESIGN_FLAGS.md` was added as the intake queue with an explicit three-state vocabulary — Open, Actioned, Dismissed. F-001 recorded a player texting four established contacts and receiving four declines. Analysis (`438_F001_MULTI_CONTACT_OUTREACH_ANALYSIS.md`) found five parties owed the protagonist contact and none was recorded as anything a Runtime could settle, and that the campaign had already improvised the construct by hand in `OBJ-23` — labelled a *Runtime-authored NPC-behavior trigger* — which failed within one in-fiction day because nothing dispatches against prose. Decisions 082 and 083 followed, then 084 when authoring the dispatch exposed that the trigger manifest's settlement vocabulary had no member a world-side settlement could declare.
**Repository evidence:** `engine/004_DESIGN_FLAGS.md`; Decisions 082, 083, 084; Gatefall Profile 1.44; `EVT-000268`.
**Matrix cases:** V03-19.
**Verdict:** Pass for finding disposition. The flag path itself is the result worth recording: three of the version's ten foundational changes entered through it rather than through design review.

## Evidence 013 — F-002: a deterministic mechanism that stopped firing

**Date / checkpoint:** 2026-07-31; `EVT-000270`, checkpoint 0051.
**Command or barrier:** Section 9.10 tracked-board deadline settlement.
**Starting state:** Four tracked Gate postings snapshotted at the 2026-08-05 12:15 anchor. At the campaign's 2026-08-10 anchor, three of the four derived deadlines had passed and none had been settled; `180_CURRENT_STATE.md` still reported `tracked_postings: 4`.
**Observed result:** The board settled in play — `GB-01` and `GB-02` broke, `GB-03` cleared off-screen, `GB-04` remained live — and `tracked_postings` fell to 1.
**Verdict:** **Gap, then closed.** This is the clearest case in the version of the recurring shape: a rule authored *specifically* so postings would not evaporate unobserved, which owed no roll and no discretion, went three deadlines past without firing because nothing named the moment it had to be consulted. Decision 084 gave it a declarable dispatch. Settling it also surfaced F-004, dispositioned as world authoring.

## Evidence 014 — F-008: the Runtime declining to author, and then to answer

**Date / checkpoint:** 2026-08-01 repository time; no checkpoint (development session).
**Command or barrier:** Ordinary play; owner correction; Runtime Sections 1.4, 2.4, 3.2 and Resident Core 1.16–1.18.
**Starting state:** A player asked an established fixer to find a crewless C-Rank hunter. None was named in canon.
**Observed result:** The Runtime had the NPC defer in fiction and cited Decision 083 when pressed. The recorded reasoning shows the decision was taken a step earlier, on a bare inference stated as a premise citing nothing — *"I don't have any other named C-Rank freelancers … so I shouldn't fabricate one"* — with Decision 083 arriving afterwards as justification. Five existing grants permitted the authoring (Rules 1.4, 3.10, 2.1; Runtime 1.3, 8.3); what was missing was a default and a class to file the case in, so it fell into Runtime 1.4's *unknown in-world*, which correctly refuses to force an answer. The same world declares twenty-two C-Rank hunters citywide and names a handful.
**Disposition:** Refinement, no ADR. Runtime 1.4 gains a third ambiguity class, *unnamed but entailed*. A second correction established the broader rule — Runtime uncertainty is never a world fact, and a delay narrated because the *Runtime* has not decided is not a world fact either.
**Repository evidence:** `engine/004_DESIGN_FLAGS.md` F-008; `tools/test_world_authoring_default.ps1`; `tools/test_commitment_contract.ps1`.
**Matrix cases:** V03-19.
**Verdict:** Pass for finding disposition. Notable as the first finding where the flag's own diagnosis was wrong and the transcript corrected it.

## Evidence 015 — Four flags, one generator: NPC grounding

**Date / checkpoint:** 2026-07-31 to 2026-08-01; sessions around checkpoints 0051–0052.
**Command or barrier:** Resident *NPC Channel Check* and *Load a Recorded NPC Before Playing It*; `tools/test_npc_channel_contract.ps1`.
**Starting state:** The channel check was complete, sited resident, and gated, with a rationalization table naming the exact excuses the earlier failures ran on.
**Observed result:** Four further flags. F-003 re-leaked a fact two exchanges after an accepted correction; F-005 invented conversational history against `EVT-000138` and then asserted a Bearer-only System Rank; F-006 treated an Event's aggregate summary as proof of what passed between two characters; F-007 landed on the *first* NPC line after an explicit scene reset.
**Disposition:** F-003 had a mechanical cause and is closed — four documents governed recording a closed-channel ruling and two pointed the wrong way, with only the resident leg gated. F-005/006/007 are consolidated as one recorded architectural finding; they have no decidable proxy, and Decision 085's own measurement (38% false positives on the nearest derived check) rules that route out on evidence.
**Repository evidence:** `439_NPC_GROUNDING_ANALYSIS.md`; `tools/test_npc_channel_contract.ps1`.
**Matrix cases:** V03-19.
**Verdict:** **Partial pass, one gap carried.** The recording half is closed; whether the read happens at all is the version's weakest enforcement and is carried to the postmortem with its limit stated rather than patched.

---

# Future Session Evidence Template

Append one entry per validation-relevant operation:

```text
## Evidence NNN — <operation>

Date / checkpoint:
Command or barrier:
Starting state:
Expected result:
Observed result:
Repository evidence:
Gate output:
Matrix cases:
Verdict: pass | gap | inconclusive
Follow-up:
```

Normal story events need no entry unless they exercise a Version 0.3 persistence contract.
