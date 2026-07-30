# Chronicle Engine

## AI Runtime Load, Trigger, and Validation Recommendations

**Status:** Draft — non-authoritative architecture recommendation  
**Milestone:** Version 0.3, Milestone 0.3.5 — Capability Validation and Prototype Campaign  
**Evidence base:** Gatefall: Pendragon through `900_CHECKPOINT_0029`; repository audit dated 2026-07-27  
**Authority:** Design-retrospective input only. This document changes no Engine Rule, Data Model contract, Runtime obligation, World Rule Profile, campaign state, or accepted decision.

---

# 1. Purpose

This document turns the Gatefall runtime-load and validation audit into a decision-ready improvement program.

It addresses five observed problems:

1. the AI is instructed to load substantially more material than the immediate operation needs;
2. the same runtime obligation is repeated in enough places to drift or conflict;
3. Gatefall's trigger system depends on subjective repeated audits without an explicit idempotency contract;
4. checkpoint creation requires large semantic reads and full-file handling at the exact moment context pressure is already high;
5. current validators pass structurally valid but operationally stale configuration.

The recommendations preserve the accepted architecture:

- the repository remains the sole system of record;
- canon is still promoted at durability boundaries;
- the resident layer still carries per-turn enforcement;
- fetched material still supplies operation-specific procedure;
- every checkpoint remains a complete restorable state;
- immutable checkpoints remain immutable;
- deterministic validation remains mandatory;
- semantic judgments remain with the Runtime where they cannot be decided mechanically.

The aim is not to weaken validation or make the model remember less canon. The aim is to load the smallest authoritative working set, move decidable work to deterministic tooling, and remove duplicated or stale operational statements.

---

# 2. Measured Baseline

The figures below are approximate AI-context costs. Token estimates use characters divided by four and are suitable for comparing orders of magnitude, not for billing or exact model limits.

| Surface | Measured size | Approximate context |
|---|---:|---:|
| Explicit `/ChronicleEngine` boot documents and held skills | 330,902 bytes | 82,726 tokens |
| Gatefall campaign `required_sources`, if read in full | 925,626 bytes | 231,406 tokens |
| Gatefall live eight-ledger set | 715,045 bytes | 178,761 tokens |
| Gatefall Checkpoint 0029 | 672,723 bytes | 168,181 tokens |
| Live eight-ledger set plus Checkpoint 0029 read-back | 1,387,768 bytes | 346,942 tokens |
| Gatefall save history | 29 checkpoints / 261 files | 9,327,097 bytes |
| Repository validator | 2.2 seconds | one full live scan |
| Checkpoint contract | 0.75 seconds | all checkpoint trees |
| Full test suite | 57.5 seconds | development/CI workload |
| Progression and runtime-persistence suites | 48.4 seconds combined | repeated full scans and copies |

The current section-addressed policy prevents the worst full-preload case when followed correctly. The remaining problem is that several other instructions still say “read,” “load,” or “hold” broadly enough that a compliant Runtime can consume the large form rather than the bounded form.

---

# 3. Design Constraints

## 3.1 Accepted decisions that must remain intact

Any implementation must preserve:

- **Decision 054:** structural validity is checked mechanically after live write and read-back;
- **Decision 055:** every invariant has a named enforcement point; per-turn failures remain resident;
- **Decision 061:** session exports remain durable primary evidence and a recovery source;
- **Decision 070:** resident and fetched gameplay layers remain separate;
- **Decision 071:** the welcome page listing is rendered from a repository index, not recalled;
- **Decision 072:** one canonical checkpoint form contains all eight canonical campaign ledgers plus the manifest;
- **Decision 074:** World Rule Profile compatibility is explicit at restoration;
- **Decision 078:** deterministic campaign time settles from an exact anchor;
- **Decision 079:** tracked counters remain reconcilable against Event deltas;
- **Decision 080:** progression candidates retain typed evidence and run at profile-declared boundaries.

## 3.2 Change-classification boundary

Under Decision 069:

- documentation compression, tooling around an existing contract, stronger checks of already-required state, index generation, and test orchestration are **refinements**;
- any change to `010_ENGINE_RULES.md` or `011_ENGINE_DATA_MODEL.md`, or any new engine-general mechanism that worlds or campaigns must invoke, is **foundational**;
- a change limited to Gatefall's World Rule Profile or Gatefall campaign extension state is **world authoring**;
- a new checkpoint representation, mandatory manifest hash schema, or engine-general persistent trigger cursor requires an owner-approved ADR and cannot be slipped into Version 0.3 as an ordinary cleanup.

---

# 4. Target Architecture

The recommended execution shape is:

```text
Player operation
    |
    v
Compact dispatcher
    |
    +-- resident invariant card
    |
    +-- operation plan generated from operational metadata
    |       |
    |       +-- exact files
    |       +-- exact headings / object identifiers
    |       +-- exact deterministic gates
    |       +-- trigger delta classes
    |
    +-- bounded canonical reads
    |
    +-- semantic resolution
    |
    +-- deterministic mutation/checkpoint helper
    |
    +-- focused runtime gate
            |
            +-- full regression suite only in development/CI
```

The authoritative prose continues to own meaning. Operational metadata tells the Runtime where to fetch that meaning and which mechanical gate to execute. It does not become a second rules system.

---

# 5. Recommendation R1 — Define and Enforce Context Budgets

**Priority:** Immediate  
**Class:** Refinement  
**Owner:** Gameplay Runtime Profile and development validation  
**Implementation status:** Implemented 2026-07-27. The checked-in manifest, deterministic reporter, repository gate, and overload regression fixture are active.

## Problem

The repository describes resident and fetched layers but sets no measurable budget. The resident core can therefore grow indefinitely while still being called resident, and bootstrap can accumulate fetched sources without any failing gate.

## Draft recommendation

Adopt explicit size budgets:

| Surface | Warning | Failure |
|---|---:|---:|
| Resident gameplay core | 6,000 tokens | 8,000 tokens |
| Engine welcome/bootstrap working set | 12,000 tokens | 16,000 tokens |
| Campaign readiness working set before situation-specific objects | 20,000 tokens | 30,000 tokens |
| Any single fetched rules operation | 12,000 tokens | requires further subdivision |

Budgets measure the material actually designated for unconditional loading, not the total size of authoritative files available for lookup.

Add `tools/measure_runtime_context.ps1` to report:

- bytes, words, and estimated tokens by resident, bootstrap, readiness, save, and operation-specific group;
- the files and selectors contributing to each group;
- budget warnings and failures;
- changes from a checked-in baseline.

## File-level draft

- `docs/AI_GAMEPLAY_RESIDENT_CORE.md` — declare the resident budget.
- `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` — declare bootstrap/readiness budgets and fetched-operation subdivision.
- `README.md` — point bootstrap to the compact manifest rather than enumerating full documents as unconditional reads.
- `tools/measure_runtime_context.ps1` — new deterministic measurement tool.
- `tools/test_runtime_context_budget.ps1` — regression gate.

## Acceptance criteria

- A clean `/ChronicleEngine` boot plan is below 16,000 estimated tokens.
- The resident core is below 8,000 estimated tokens.
- Adding a full fetched document to bootstrap fails the budget test.
- The report names the exact contributor that caused the overage.

---

# 6. Recommendation R2 — Reduce the Resident Core to an Executable Invariant Card

**Priority:** Immediate  
**Class:** Refinement under Decisions 055 and 070  
**Owner:** `docs/AI_GAMEPLAY_RESIDENT_CORE.md`
**Implementation status:** Implemented 2026-07-27. Resident Core 1.12 is the compact invariant card; operation detail remains fetched from the Runtime Profile and governing sources.

## Problem

The resident core contains required checks, explanations, examples, rationale, acceptance scenarios, and repeated world-specific elaboration. The whole document is declared active every turn even though much of it is teaching material rather than an enforcement point.

## Draft recommendation

Split the current document into:

1. **Resident invariant card** — only checks that must fire during each relevant turn:
   - intent/fact grounding;
   - decision-point and beat boundary;
   - uncertain-action roll-before-narration;
   - NPC information-channel check;
   - turn-state settlement;
   - active-profile trigger dispatch;
   - pending-promotion tracking;
   - context-preservation watch.
2. **Fetched gameplay guidance** — examples, acceptance scenarios, narrative-richness explanation, worked dialogue, detailed modifier exposition, and rationalizations.

Each resident obligation should use a uniform shape:

```yaml
obligation: turn-state-settlement
fires_when:
  - resolved_exchange
requires:
  - immediate costs and harm
  - exact elapsed-time settlement when declared
  - known counter settlement
  - profile trigger dispatch by changed delta class
before:
  - narration yield
failure:
  - stop and repair before next resolution
authority:
  - engine/012_ENGINE_RUNTIME.md#...
  - active profile selector
```

The YAML is an operational index to the prose, not a replacement for it.

## Acceptance criteria

- Every enforcement point from Runtime Section 0.2 remains resident.
- No obligation exists only in fetched guidance.
- Gatefall-specific prose is removed from the engine-general resident card and referenced through its active profile selector.
- Existing player-agency, context-preservation, command-catalog, quest, and progression contract tests still pass after being updated to the new selectors.

---

# 7. Recommendation R3 — Introduce a Generated Operation Plan

**Priority:** Immediate  
**Class:** Refinement if it only operationalizes existing startup/profile metadata  
**Owner:** Gameplay Runtime Profile and campaign startup template

**Implementation status (2026-07-27):** Implemented in two slices. `tools/resolve_operation_plan.ps1` derives bounded readiness, save, and declared diegetic-command plans from existing startup metadata. The second slice adds exact protagonist field selectors and named `available_on_demand_selectors`, allowing action, progression, and shop state to remain deferred without becoming an ambiguous whole-ledger fetch. Selector, stale-heading, overload, and dispatch regression tests are active. No new mandatory campaign schema was introduced.

## Problem

`required_sources` currently mixes authority declaration with loading behavior. A model can interpret the list as a full preload even though adjacent prose says not to. Runtime operations have no single compact answer to “what exactly must be read for this operation?”

## Draft recommendation

Extend the existing non-canonical startup configuration with selectors:

```yaml
source_loading:
  bootstrap:
    files: []
  readiness:
    whole_files:
      - campaigns/<campaign>/180_CURRENT_STATE.md
      - campaigns/<campaign>/095_PLAYER_BRIEFING.md
    selectors:
      - file: campaigns/<campaign>/100_CHARACTER_SHEET.md
        object: ENT-000125
      - file: worlds/<world>/206_WORLD_RULE_PROFILE.md
        headings:
          - compatibility from <checkpoint profile> to <active profile>
          - temporal settlement
          - proactive trigger manifest
  operations:
    uncertain_action:
      selectors:
        - engine rules section 4
    combat:
      selectors:
        - engine rules section 6
        - active profile damage section
    save:
      procedure:
        - gameplay runtime profile#Save Algorithm
      tools:
        - tools/validate_checkpoint.ps1
```

Create a read-only helper that resolves the campaign, checkpoint version, current version, and requested operation into a concise operation plan. The Runtime still performs the reads; the helper removes ambiguity about their scope.

## Required safeguards

- Selectors must resolve to existing files and unique headings or object identifiers.
- A selector never copies authoritative text into startup metadata.
- A missing or ambiguous selector fails readiness before narration.
- Historical chronicles and changelogs are always identifier- or range-addressed.

## Acceptance criteria

- `/continue gatefall_pendragon_001` produces a finite list of exact whole-file reads and bounded selectors.
- The plan never includes the whole Gatefall profile, chronicle, changelog, or NPC ledger.
- A deliberately stale heading selector fails deterministically.
- The same helper works for Reikon and both Verra campaigns without world-specific code.

---

# 8. Recommendation R4 — Validate Operational Campaign Configuration Generically

**Priority:** Immediate  
**Class:** Refinement/enforcement of Decision 049's existing startup artifact  
**Owner:** New operational validator
**Implementation status:** Implemented 2026-07-27. `tools/validate_runtime_configuration.ps1` and its Python core parse startup YAML with a real parser that rejects duplicate keys, and enforce campaign/world resolution, profile binding, initialization state, latest-checkpoint agreement, protagonist resolution, known validation flags, and selector resolution. It has since caught the live stale latest-checkpoint declaration twice.

## Problem

Current gates do not reject:

- a startup profile version that differs from active world and live campaign bindings;
- `initialized-no-save` when checkpoints exist;
- a missing `required_sources` path;
- a stale latest-checkpoint declaration;
- a missing player briefing;
- an unknown validation flag;
- a campaign/world mismatch.

The repository already contains each of these drift classes.

## Draft recommendation

Add `tools/validate_runtime_configuration.ps1` with these checks:

1. Parse the fenced startup YAML with a real YAML parser.
2. Validate it against a versioned startup schema.
3. Confirm campaign and world paths resolve.
4. Confirm all required sources and selectors resolve.
5. Confirm `world_rule_profile` equals the active profile advertised by the world and the live campaign binding after migration.
6. Confirm initialization state agrees with live state and save presence.
7. Confirm latest checkpoint agrees across startup, Current State, the campaign index, and save existence.
8. Confirm default protagonist resolves to an active Character in the campaign.
9. Confirm validation flags are recognized and mapped to real enforcement points.
10. Confirm diegetic-command selectors resolve.

## Required fixture cases

- Gatefall startup profile drift.
- Reikon 0.6/0.8/0.11 drift.
- Prototype Alpha and Beta `initialized-no-save` drift.
- missing required source;
- ambiguous profile heading;
- unknown validation flag;
- campaign row with wrong captured date;
- incorrect world live-campaign count.

## Acceptance criteria

- The current known stale startup fields fail the new validator until corrected.
- Every startup `validation:` key is either executed by a named gate or rejected as unknown.
- No world-specific string assertion is required for generic profile binding.

---

# 9. Recommendation R5 — Make the Worlds and Campaigns Index Minimal and Generated

**Priority:** Immediate  
**Class:** Refinement of Decision 071  
**Owner:** `system/WORLDS_AND_CAMPAIGNS.md` and index tooling
**Implementation status:** Implemented 2026-07-27. The 2.7 KB index is deterministic, generated from owning metadata, limited to tables and four bounded selection caveats, and checked byte-for-byte by repository validation.

## Problem

The index is both the welcome-page source and a long campaign-history summary. Gatefall checkpoint narratives duplicate campaign canon, contain superseded statements, and enter context before campaign selection.

## Draft recommendation

Restrict the rendered index to:

```text
World table
Campaign table
One short pre-selection caveat per campaign, maximum 240 characters
Maintenance metadata
```

Generate the tables from:

- world directories and active profile metadata;
- campaign startup files;
- `180_CURRENT_STATE.md` latest-checkpoint declaration;
- latest manifest `real_date`;
- explicit campaign status.

Move long notes to:

- `campaigns/<campaign>/saves/README.md` for checkpoint/restorability history;
- `180_CURRENT_STATE.md` for live readiness and current situation;
- campaign chronicle/changelog for canon and history.

## Acceptance criteria

- The index is below 8 KB.
- It contains no historical checkpoint narrative.
- Generated output is stable and deterministic.
- Manual edits to generated rows fail a synchronization test.
- `/ChronicleEngine` displays every world and campaign while reading no campaign ledger.

---

# 10. Recommendation R6 — Separate Trigger Detection, Eligibility, and Settlement

**Priority:** High  
**Class:** Gatefall world-authoring refinement for the immediate fix; foundational only if generalized into an engine mechanism  
**Owner:** Gatefall World Rule Profile and resident dispatcher

**Implementation status (2026-07-27):** Implemented for Gatefall Profile 1.24. The profile carries a validated operational trigger manifest, Tier-2 settlement is synchronized to the Runtime's first-qualifying-yield contract, and the resident dispatcher selects domains by changed delta class.

## Problem

Current trigger wording blends:

1. when an audit is considered;
2. which state delta can make a trigger newly eligible;
3. whether an eligible Tier-2 opportunity must fire immediately or at a chosen beat;
4. how repeated audits avoid duplicate offers or warnings.

This produces timing conflict between the resident core and Gatefall Profile Section 14.3.

## Draft Gatefall trigger manifest

```yaml
trigger_domains:
  gatefall.quest.urgent:
    candidate_deltas:
      - scene.opened
      - location.changed
      - nearby_threat.changed
      - actionable_route.changed
    eligibility: section 8.4.2
    timing: before the next yield after all conditions become true
    identity: crisis Event plus objective key
    repeat: never while pending, accepted, completed, failed, declined, or expired
    settlement: offer

  gatefall.quest.hidden:
    candidate_deltas:
      - scene.opened
      - location.changed
      - clue.established
      - concealed_object_proximity.changed
    eligibility: section 8.4.3
    timing: before the next yield after all conditions become true
    identity: authored concealed-object/objective key
    repeat: never while attached, completed, failed, abandoned, or expired
    settlement: automatic attachment

  gatefall.skill_formation:
    candidate_deltas:
      - dangerous_scene.closed
      - promotion_barrier
    eligibility: section 7.1
    timing: exact declared boundary
    identity: candidate signature plus stable scene key
    repeat: one audit per subject/domain/scene key
```

## Immediate wording resolution

Choose one Tier-2 timing contract:

- **Recommended:** eligibility becomes mandatory at the first qualifying yield; the Runtime chooses presentation phrasing, not whether or when to fire after the boundary.
- Alternative: the Runtime may delay within a declared window, but must store a pending opportunity immediately and define the window's final mandatory boundary.

Do not retain the current combination of “the Runtime picks the beat” and “settle before yielding.”

## Acceptance criteria

- A trigger fixture proves one and only one offer for the same crisis.
- Re-entering a place does not duplicate a settled Hidden pointer.
- Capacity warnings have a defined repeat policy.
- An irrelevant exchange performs no full quest eligibility scan.
- Every candidate delta maps to one exact audit selector.

---

# 11. Recommendation R7 — Extract Version Migrations from the Active Rule Profile

**Priority:** High  
**Class:** Gatefall world authoring when limited to Gatefall; broader migration framework requires architectural review  
**Owner:** Gatefall world documentation

**Implementation status (2026-07-28):** Implemented for Profile 1.30. `worlds/gatefall/migrations/` holds twenty-nine records, one per edge from 1.1 forward, declared by `INDEX.md`; the active profile keeps current law, freeze status, and a pointer. All relocated prose is byte-identical to its source and machine-verified as appearing in exactly one record. Chain contiguity, acyclicity, non-branching, two-way declaration, record/row agreement, termination at the active version, and absence of migration prose from the active profile are enforced by `tools/validate_runtime_configuration.ps1`, with eight defect classes covered by `tools/test_migration_chain.ps1`. Records carry routing metadata only; the verbatim prose remains the authority. The migration-record schema stays a Gatefall convention — generalizing it to an engine mechanism remains the open question in Section 24.

## Problem

The beginning of the Gatefall profile contains the full 1.1→1.22 migration history. Restoration needs only the chain between a checkpoint's version and the active version, but the Runtime must search a large active rules file containing both current law and historical transformations.

## Draft layout

```text
worlds/gatefall/
  206_WORLD_RULE_PROFILE.md
  migrations/
    INDEX.md
    1.16_to_1.17.md
    1.17_to_1.18.md
    ...
    1.21_to_1.22.md
```

The profile retains:

- current version and freeze status;
- current compatibility policy;
- a pointer to the migration index;
- current mechanical law only.

The migration index declares a directed, contiguous chain. Each migration file declares:

- source and target version;
- required/optional classification;
- touched state paths;
- preserved state;
- whether rolls or owner rulings are required;
- fictional-time cost;
- validation commands;
- immutable-checkpoint policy.

## Acceptance criteria

- Restoring Profile 1.16 loads exactly six migration records, not the full historical header.
- Missing, duplicate, branching, or cyclic migration edges fail validation.
- Current rule lookup never needs migration-history text.
- Historical checkpoint descriptions remain immutable and are superseded through the migration index rather than index prose.

---

# 12. Recommendation R8 — Add One Transactional Checkpoint Command

**Priority:** High  
**Class:** Refinement while preserving Decision 072's checkpoint form  
**Owner:** Runtime tooling

**Implementation status (2026-07-27):** Implemented. `tools/new_checkpoint.ps1` consumes a Version 1.0 hash-bound mutation receipt and owns locking, parent/ordinal checks, byte-verified complete copying, manifest generation, restore-pointer/index synchronization, final gates, rollback, recoverable staging, and the compact machine receipt. Focused fixtures cover a 130 KB unchanged ledger, stale hashes, parent drift, concurrent writers, and post-promotion gate failure.

## Problem

The AI currently orchestrates directory numbering, copying, manifest creation, index updates, read-back, and two separate gates. It is required to semantically reload large files when byte comparison or focused diff verification would be safer.

## Draft command

```powershell
tools/new_checkpoint.ps1 `
  -Campaign campaigns/gatefall_pendragon_001 `
  -CheckpointType automatic-context-preservation `
  -Label "scene boundary" `
  -ExpectedParent 900_CHECKPOINT_0029 `
  -MutationReceipt tmp/runtime-mutation-receipt.json
```

The helper should:

1. acquire an exclusive writer lock;
2. validate the mutation receipt and target paths;
3. verify live target files exist;
4. run repository and runtime-configuration validation;
5. allocate the next four-digit checkpoint ordinal;
6. copy all eight canonical ledgers mechanically;
7. generate the existing Decision 072 manifest;
8. update the index and Current State pointer through validated fields;
9. run the unified checkpoint gate;
10. return a compact machine-readable receipt.

The AI verifies semantic intent from the mutation diff and receipt. It does not need to re-ingest every unchanged byte in both live and checkpoint copies.

## Safeguards

- No overwrite of an existing checkpoint directory.
- Parent checkpoint must match the caller's expected parent.
- The eight source paths are fixed by the canonical form, not caller input.
- A partial run leaves a recoverable staging directory that is not named as a checkpoint.
- Promotion success is reported only after the final gate.

## Acceptance criteria

- An unchanged 130 KB NPC ledger is copied and byte-verified without entering model context.
- Interrupted creation never leaves a checkpoint that the index can target.
- Concurrent writers fail before identifier or ordinal allocation.
- The command emits exact validator output plus a compact receipt.

---

# 13. Recommendation R9 — Unify Production Validation and Tier the Test Suite

**Priority:** Immediate  
**Class:** Refinement  
**Owner:** `tools/`

**Implementation status (2026-07-28):** The tiers exist; the performance work does not. `tools/validate_live.ps1` (Tier 1), `tools/validate_checkpoint.ps1` (Tier 2), and `tools/test_all.ps1` (Tier 3) are in place, and the README, Runtime Profile Save Algorithm, Gameplay Start Guide, `docs/INDEX.md`, and the `/validate` skill now name the Tier 1 gate instead of four callers disagreeing about which validator "validated" meant.

**Two acceptance criteria are not met, and neither should be read as met:**

- Tier 2 completes in **6.5 seconds** against the under-five-second target, dominated by `validate_repository.ps1` itself plus one PowerShell process launch per gate.
- Tier 3 completes in **150 seconds** against the under-twenty-second target — worse than the 57.5s audit baseline, because the suite has grown while still copying the full repository per fixture. `test_progression_audit_contract` (50s), `test_runtime_persistence_validation` (34s), and `test_progression_policy` (25s) are the cost. `test_all.ps1` prints its own total and a note when it exceeds the target so the gap stays visible.

Tier 2's scope is also narrower than the draft signature: `test_checkpoint_contract.ps1` is repository-wide and takes no `-Campaign`/`-Checkpoint` argument, so the wrapper does not offer one rather than faking it.

## Measured correction to this section's performance diagnosis (2026-07-28)

**This section blames the wrong thing, and the fixture work it prescribes does not pay.** Three hypotheses were tested and two were refuted:

| Hypothesis | Measurement | Verdict |
|---|---|---|
| Fixtures copying the 9.3 MB save tree | Pruning 28 MB of binary assets and all saves changed the suite by ~4 s; a per-file filtered copy was *slower* than bulk copy | **Refuted** — the live scan already excludes saves |
| Process startup / script parse | Parse 0.015 s, PowerShell launch 0.179 s, execution 3.4 s | **Refuted** — hosting validation in-process saves ~0.19 s per call |
| Live ledger bytes | 2.43 MB → 3.75 s; truncating three ledgers to 1.77 MB → 1.6 s | **Confirmed** — 27% fewer bytes cut 57% of the time |

The cost is `validate_repository.ps1` running roughly fifty regular expressions over multi-hundred-kilobyte live ledgers, once per invocation. A 127-file fixture costs the same as the full repository because it still contains the same large ledgers. Suite time is therefore about 35 validator invocations × ~3.5 s, and no amount of fixture-copy tuning reaches the twenty-second target.

**Two consequences:**

1. **R9's performance half and R10 are the same work.** Replacing regex scanning with structured parsing is what makes the scan cheap; doing R9's performance items first would mean optimizing a scanner R10 then replaces. They should be sequenced as one change, with R10 first.
2. **The production gate degrades with play.** This is not only a developer-experience cost: `validate_live.ps1` is 5.6 s today and grows with the chronicle, and it runs on every save. A campaign twice this length pays it twice over at every checkpoint.

What was delivered against the performance goal: `validate_repository.ps1` gains `-CoreOnly`, which skips the three composite gates it otherwise spawns as separate processes (generated-index synchronization, runtime configuration, context budgets — each already the subject of its own suite). That saves ~1.4 s per invocation in fixture tests and is used by the two progression suites. `tools/lib/FixtureRepository.ps1` gives the suite one fixture builder that omits binary assets and, by default, checkpoint history. Suite total moves 150 s → 146 s. The target remains unmet and the remaining work is R10's.

## Problem

The authoritative Save Algorithm names the repository validator, while the save skill also requires the checkpoint contract. `/validate`, save, development tests, and CI therefore do not share one declared gate. Full regression tests also repeat complete repository scans.

## Draft validation tiers

### Tier 1 — Live structural gate

Command:

```powershell
tools/validate_live.ps1
```

Runs:

- repository structural validation;
- runtime configuration validation;
- focused world-profile binding checks.

### Tier 2 — Checkpoint production gate

Command:

```powershell
tools/validate_checkpoint.ps1 -Campaign <path> -Checkpoint <name>
```

Runs:

- Tier 1;
- checkpoint form, completeness, lineage, and index/current-state synchronization;
- immutable-file verification if Recommendation R10 is accepted.

This becomes the one command named by the Save Algorithm, save skill, README, and start guide.

### Tier 3 — Development regression suite

Command:

```powershell
tools/test_all.ps1
```

Runs all fixtures and behavioral contract tests. It is not a gameplay save gate.

## Performance improvements

- Parse the live repository once per test process.
- Expose validator functions for in-memory fixture mutation.
- Use minimal fixtures for parser behavior instead of copying all worlds/campaigns.
- Keep one end-to-end full-repository fixture for integration coverage.

## Acceptance criteria

- Save documentation names one production checkpoint command everywhere.
- Tier 2 completes in under five seconds on the current repository.
- Tier 3 completes in under twenty seconds on the current machine.
- No unit fixture copies the complete 9.3 MB Gatefall save tree unless it is specifically testing historical traversal.

---

# 14. Recommendation R10 — Replace Regex YAML Parsing with Structured Parsing

**Priority:** High  
**Class:** Refinement when enforcing existing Data Model constraints  
**Owner:** Repository validation tooling

**Implementation status (2026-07-28):** The compatibility procedure ran in order and the structured gate is live. **Step 1–2 (survey and inventory):** `tools/survey_object_blocks.py` parses all 571 live fenced blocks with a duplicate-key-rejecting loader. 27 failed a strict parse that the regex scanner reported clean. **Step 3 (repair live mutable records only):** all eight live defects are fixed and no checkpoint was touched — two unescaped inner quotes, three misnested `aliases:` keys, one duplicate `provenance_chain` carrying two different values (merged, losing neither), and six multi-paragraph prose values converted to YAML literal block scalars by a script that verified each conversion by parsing it back and comparing the recovered string. Every live campaign and world block now parses strictly; the 19 remaining failures are in `templates/`, which use placeholder syntax by design and are outside the live validator's scope.

**Step 4 (switch):** `tools/validate_object_blocks.py` validates all 492 live object blocks structurally — parse validity, no duplicate keys anywhere, exactly one object identifier per block, required fields typed rather than merely present, provenance as a mapping owning its own date fields, known status values, and current schema version. It runs as a composite gate inside `validate_repository.ps1` (skipped by `-CoreOnly`), so it covers `/validate`, Tier 1, and the save path. `tools/test_object_block_structure.ps1` proves it rejects six defect classes.

**Two corrections to this section.** First, the worst live defect was not on its list: two Events embed a bare ``` fence inside their `description`, which by markdown rules closes the enclosing ```yaml block early — every tool reading them saw a *truncated* block, and `validate_repository.ps1` passed because the fields it checks all precede the cut. Second, "date fields in the wrong provenance mapping" needs care as a rule: under Decision 077 an Event legitimately carries a top-level `game_date` (when the fiction happened) alongside `provenance.game_date` (when the record was written). A gate that rejects the top-level field fails 131 correct live blocks. The real check is that provenance owns its own dates, which this gate enforces.

**Still open:** the existing regex scan in `validate_repository.ps1` is unchanged. This adds a structural floor beneath it rather than replacing it, so R9's performance target — which depends on removing that regex scan — is not yet delivered.

## Problem

The validator extracts fenced blocks, indentation, fields, and list entries with regular expressions. It checks many required fields by presence rather than structure. Misnested fields, duplicate YAML keys, and some malformed values can pass.

## Draft recommendation

Adopt a real YAML parser for:

- Persistent Object Blocks;
- campaign startup configuration;
- save manifests;
- structured world-profile metadata and trigger manifests.

Retain Markdown scanning only to locate fenced blocks and headings.

Validation should reject:

- duplicate keys;
- invalid nesting;
- scalar/list/mapping type mismatches;
- unknown required-schema keys where the schema is closed;
- invalid enum values;
- date fields in the wrong provenance mapping;
- multiple object IDs inside one block when the schema expects one.

All reads and writes must specify UTF-8 explicitly.

## Compatibility

Before switching the production validator:

1. parse every current live Object Block;
2. inventory tolerated non-YAML constructs;
3. repair live mutable records only;
4. leave immutable checkpoints unchanged;
5. use a checkpoint-compatible reader for historical forms.

## Acceptance criteria

- Every live block parses under the chosen parser.
- A misnested `game_date` fails.
- Duplicate YAML keys fail.
- Unicode content and the validation checkmark behave identically under Windows PowerShell and PowerShell Core.

---

# 15. Recommendation R11 — Strengthen Progression Audit Linkage

**Priority:** High  
**Class:** Mixed:

- stricter checks over existing fields are refinements;
- new mandatory Data Model fields are foundational.

**Implementation status (2026-07-28):** Item 8 is implemented; items 1–7 remain open. The validator no longer hard-codes `dimensional_weapon_control`, the Gatefall domain name, the evidence threshold, or the settlement Event kinds for progression ratification — all four are read from a `ratification` block the World Rule Profile declares per progression domain. This closes item 8's own hard-codes; it does not make `tools/validate_repository.ps1` world-agnostic in general — the same file still hard-codes Gatefall's Section 7.2/7.3 scope-skill list and Stat Passive ladder, and special-cases the live protagonist by identifier (`ENT-000125`), each an explicit, comment-labeled exception outside R11's scope. `tools/test_progression_policy.ps1` proves a newly declared pre-authored key is enforced with no validator change. **Still open:** the evidence cross-checks of items 1–7 (that each cited Event carries a matching subject, domain, candidate, scene, and qualifying result, that `resolution_event` resolves, and that `result_ref` resolves to a profile-authored key) are not implemented. No Data Model field was added, so the foundational half of this recommendation is untouched.

## Problem

Current validation checks that evidence Event IDs exist, but not that each cited Event carries the matching subject, domain, candidate, scene, and qualifying result. Coverage also depends on the Event voluntarily using one of two recognized `kind` values.

## Draft refinement checks

Without changing the Data Model:

1. Every candidate evidence reference must resolve to an Event.
2. That Event must contain a matching `progression_audits` entry.
3. The audit subject and domain must match the candidate owner/domain.
4. The audit candidate and scene must equal the evidence reference.
5. `resolution_event` must resolve and include the candidate subject.
6. `result_ref` must resolve to a profile-authored skill key or section selector.
7. Ratified/rejected status must agree with the resolution Event.
8. Gatefall's pre-authored automatic results must be discovered from profile metadata, not a validator hard-code for `dimensional_weapon_control`.

## Coverage limitation

A mechanical validator still cannot infer that arbitrary prose describes a dangerous scene. The recommended solution is to make scene closure an explicit runtime settlement action and test the event-generation path behaviorally. Do not pretend a retrospective prose scan can decide the semantic boundary.

## Acceptance criteria

- Evidence pointing at an unrelated Event fails.
- Candidate/scene mismatch fails.
- A ratified candidate with a free-text non-resolving result reference fails.
- Adding a second pre-authored Gatefall result requires no validator code change.

---

# 16. Recommendation R12 — Add Checkpoint Integrity Hashes

**Priority:** Medium  
**Class:** Foundational — changes the canonical checkpoint manifest contract  
**Owner:** Future ADR or explicit Version 0.3 freeze exception

## Problem

Checkpoint immutability is a rule but not a mechanically persistent fact. Read-back proves files immediately after creation; it does not prove that their bytes remain unchanged later.

## Draft manifest extension

```yaml
integrity:
  algorithm: sha256
  files:
    100_CHARACTER_SHEET.md: <hash>
    110_WORLD_LEDGER.md: <hash>
    120_INVENTORY_AND_OWNERSHIP.md: <hash>
    130_NPCS_AND_FACTIONS.md: <hash>
    140_OBJECTIVES.md: <hash>
    160_CAMPAIGN_CHRONICLE.md: <hash>
    170_CHANGELOG.md: <hash>
    180_CURRENT_STATE.md: <hash>
```

The manifest cannot include its own hash. Git supplies repository history; these hashes supply checkpoint-local corruption and mutation detection.

## Migration policy

- Existing immutable checkpoints are not edited.
- Hashes are mandatory only for checkpoints created after the adopted save-format version.
- Older checkpoints retain structural verification and are reported as legacy-unhashed.

## Acceptance criteria

- One-byte modification to a new checkpoint ledger fails integrity validation.
- Existing checkpoints remain valid under their captured save format.
- Restore refuses a hash-mismatched checkpoint and reports the exact file.

---

# 17. Recommendation R13 — Defer Any New Checkpoint Storage Model

**Priority:** Explicit non-recommendation for Version 0.3  
**Class:** Foundational future architecture  

## Problem

Full snapshots duplicate growing chronicles and changelogs. Gatefall already stores 9.3 MB across 29 checkpoints.

## Draft disposition

Do not replace Decision 072's complete snapshots during Version 0.3.

Content-addressed storage, deduplicated blobs, delta checkpoints, or append-only event logs could reduce disk and write volume, but they change the restoration contract and create new failure modes. They require:

- a later-version ADR;
- restore and corruption fixtures;
- portability analysis;
- human-readable disaster recovery;
- explicit interaction with Git history and Session Export recovery.

The immediate solution is mechanical copying and hash verification without AI semantic loading, not a new persistence architecture.

---

# 18. Recommendation R14 — Reduce Canonical Narrative Duplication

**Priority:** Medium  
**Class:** Primarily refinement; any ledger-role change requires architecture review  

**Implementation status (2026-07-28):** Applied to Gatefall's Current State, which had reached 50 KB and 45% of the readiness surface. Eleven per-Event and per-profile-adoption sections, the accumulated version history in `Bindings and Versions`, and four superseded trigger-audit spans were removed to the records that own them, after each was verified present there. The file falls to 15,501 bytes and Gatefall readiness to 19,011 estimated tokens. The ownership rule below is now demonstrated on the largest live campaign; it is not yet enforced by a gate, and the duplication audit this section proposes is still unbuilt — a future Current State can drift back without failing anything.

## Problem

One Gatefall event may be restated in:

- the Event block in `160_CAMPAIGN_CHRONICLE.md`;
- `170_CHANGELOG.md`;
- `180_CURRENT_STATE.md`;
- the affected Character, Relationship, Objective, or inventory record;
- the checkpoint manifest;
- the worlds/campaigns index.

Some duplication serves a distinct record role. Other duplication merely repeats prose and becomes stale.

## Draft ownership rule

- **Chronicle:** complete canon-bearing Event definitions and historical sequence.
- **Changelog:** compact mutation index—what records changed and why; no second full narration.
- **Current State:** only current operational anchors, open pressures, and post-checkpoint continuation.
- **Entity/Relationship/Objective records:** current durable state and texture owned by that object.
- **Manifest:** checkpoint identity, lineage, versions, included ledgers, and concise capture note.
- **World/campaign index:** discovery metadata only.

Add a duplication audit that flags unusually long index notes, manifests, and changelog entries but reports rather than fails until explicit limits are accepted.

## Acceptance criteria

- New checkpoint manifests do not reproduce full Event narratives.
- Changelog entries point to Event IDs and changed records.
- Current State contains no superseded checkpoint history beyond the current and immediately prior restore pointer.

---

# 19. Phased Delivery Plan

## Phase A — Safe Version 0.3 refinements

Recommended order:

1. R9 — unified validation commands and tiers;
2. R4 — generic runtime-configuration validator;
3. R5 — minimal generated index;
4. R1 — context measurement and budgets;
5. R2 — compact resident invariant card;
6. R3 — generated operation plan;
7. R10 — structured YAML parsing;
8. R11 — stronger linkage over existing progression fields;
9. R8 — transactional checkpoint helper preserving current form;
10. R14 — duplication cleanup and ownership guidance.

Each step should land independently with fixtures.

## Phase B — Gatefall world-authoring corrections

1. R6 — resolve Tier-2 trigger timing and add the Gatefall trigger manifest;
2. R7 — extract Gatefall migration history into versioned migration records;
3. correct current Gatefall startup/index wording through generated operational state.

These changes must not rewrite immutable checkpoints or resolved campaign outcomes.

## Phase C — Owner decision required

1. R12 — checkpoint integrity hashes and save-format versioning;
2. any engine-general persistent trigger cursor;
3. any content-addressed or delta checkpoint architecture;
4. any new mandatory Data Model fields for progression linkage.

No Phase C item should be implemented from this draft alone.

---

# 20. Cross-Campaign Migration Plan

## Gatefall: Pendragon

- preserve all 30 checkpoints unchanged;
- repair startup/index operational metadata;
- use Profile 1.24 and Data Model 0.1.5 as the live binding;
- move compatibility history to the migration index;
- convert proactive trigger instructions to the trigger manifest;
- retain current candidate and counter state exactly.

## Reikon Awakening

- reconcile startup Profile 0.6, live Profile 0.8, and active Profile 0.11 through explicit current binding plus migration chain;
- add an exact operation selector for `/system`;
- validate its latest-checkpoint and save-index contract generically.

## Prototype Alpha

- replace `initialized-no-save` with its actual terminal/checkpoint state;
- keep the terminal campaign non-resumable except through the already-authored branch/new-instance path;
- ensure its baseline checkpoint remains correctly classified.

## Prototype Beta

- replace `initialized-no-save` with resumable state;
- ensure latest-checkpoint metadata is derived rather than manually duplicated.

---

# 21. Required Behavioral Fixtures

The recommendation set is not complete without these end-to-end cases:

**Coverage status (2026-07-28).** Cases 2, 6, 7, 8, 9, 10, 11, and 12 have suites. Cases 3 and 5 are now covered by `tools/test_trigger_state.ps1` at the level a script can reach — see the note below. Case 1 has no suite. Case 4 cannot be mechanically tested and should not be recorded as covered.

**On cases 3, 4, and 5.** These describe narration decisions, and only their stored consequences leave a repository trace. `tools/test_trigger_state.ps1` validates those consequences generically from each profile's trigger manifest: one crisis identity may hold one live opportunity (case 3), one concealed record may be attached once (case 5), a settled opportunity may not be re-offered, capacity arithmetic must hold, and every stored entry must route to a declared domain. Case 4 — "an irrelevant exchange performs no full eligibility scan" — is a claim about work the Runtime does *not* do inside a turn. It leaves no trace, so no fixture can prove it; it remains a resident-layer text assertion, which is weaker, and that limit is recorded rather than papered over.

1. **Cold boot:** welcome page lists all worlds and campaigns without reading any campaign ledger.
2. **Gatefall continue:** readiness loads only bounded current-state, compatibility, trigger, and situation records.
3. **Relevant trigger:** a nearby lethal Gate threat produces exactly one Urgent offer.
4. **Irrelevant exchange:** ordinary dialogue performs no full quest scan and produces no offer.
5. **Hidden deduplication:** leaving and re-entering does not attach the same pointer twice.
6. **Formation evidence:** a scene audit and candidate evidence cross-link exactly.
7. **Pending ratification:** save succeeds while scene opening remains blocked.
8. **Automatic context preservation:** checkpoint and export succeed without loading full unchanged ledgers into context.
9. **Stale startup:** a wrong profile version fails before readiness.
10. **Checkpoint interruption:** staged partial output is not indexed as restorable.
11. **Concurrent writer:** checkpoint creation refuses before ordinal or identifier collision.
12. **Legacy restore:** an older unhashed checkpoint follows its migration chain without mutation.

---

# 22. Success Metrics

The work should be considered successful only when:

- bootstrap and resident budgets pass mechanically;
- Gatefall readiness stays below 30,000 estimated tokens before situation-specific fetches — **this is the enforced bound** (owner ruling, 2026-07-29). The 20,000 warning threshold is a signal, not a gate: a campaign that grows legitimately will cross it, and `tools/test_runtime_context_budget.ps1` asserts the 30,000 hard budget while leaving the warning visible in every report. Gatefall measured 23,024 at Profile 1.36 / Checkpoint 0041, with Alexander at Level 11, seventeen skills, and a live Hidden quest;
- checkpoint creation requires no full semantic reread of unchanged ledgers;
- save uses one documented production gate;
- all startup validation flags map to real enforcement points;
- index, startup, Current State, manifest, and active profile versions cannot drift silently;
- one trigger opportunity produces one state transition;
- no current validator contains a hard-coded campaign candidate key;
- full regression time is below twenty seconds on the audit machine;
- immutable checkpoint bytes are never modified during migration.

---

# 23. Risks

## Over-compression

Removing explanatory text from the resident layer can accidentally remove an enforcement point. Mitigation: map every resident line to Runtime Section 0.2/0.4 obligations before moving it, and fail the resident contract test if any mapping disappears.

## Metadata becoming a second rules source

Operational selectors and trigger manifests can accidentally duplicate rules. Mitigation: store identifiers, event classes, headings, and dispatch policy only; mechanical formulas and eligibility meaning remain in authoritative Rules or World Rule Profile prose.

## Tool dependence

A transactional helper can become the only path anyone understands. Mitigation: keep its outputs human-readable, retain complete snapshot files, and document a manual recovery procedure.

## False confidence from structured validation

Structured parsing does not make semantic prose decidable. Mitigation: explicitly label which checks prove structure, linkage, arithmetic, or behavior, and retain resident semantic judgment where required.

## Architecture-freeze leakage

Useful tooling can conceal a new mechanism. Mitigation: apply Decision 069 to the actual diff. Any Rules/Data Model change or new campaign-invoked engine mechanism stops for owner approval.

---

# 24. Recommended Owner Decisions

The owner should decide:

1. whether the proposed token budgets are acceptable;
2. whether Gatefall Tier-2 triggers fire at the first eligible yield or may be delayed through persisted pending opportunities;
3. whether checkpoint integrity hashes should enter Version 0.3 as a freeze exception or wait for later planning;
4. whether migration records remain a Gatefall convention or become an engine-general future mechanism;
5. whether the long-term checkpoint duplication problem belongs to a later persistence version.

Everything else in Phase A can be implemented as enforcement and operational refinement of already accepted obligations, subject to normal repository review.

---

# 25. Recommended Next Action

Begin with one small, reversible vertical slice:

1. add the generic runtime-configuration validator;
2. make it fail on the known Reikon and Verra startup drift;
3. correct those operational files;
4. generate a minimal worlds/campaigns index;
5. measure the resulting bootstrap reduction.

This proves the central direction—one structured operational source, mechanically checked—without changing canon, checkpoint form, the Data Model, or any world mechanic.
