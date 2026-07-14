# Chronicle Engine

## Engine Changelog

**File:** `030_ENGINE_CHANGELOG.md`  
**Status:** Active  
**Format:** Reverse-chronological index. Entries point to decisions, rules sections, and files affected by a unit of work; they do not restate content. See Decision 040 for format rationale.

---

# Version 0.2.0 — Knowledge & Civilization

Released 2026-07-14 after Capability Validation, Prototype Alpha, the Engine Postmortem, and required refinements completed under Decision 048.

## 2026-07-14 — Decision 064: hard no-target gate and exact cold-start catalog

**Evidence:** The first post-Decision-063 `/chronicle` test still restored Prototype Beta, recapped its live scene, and invented `/checkpoint`, `/progress`, `/resume`, `/list`, and `/close` aliases while omitting canonical commands.
**Bootstrap boundary:** Target parsing now precedes every campaign read. Bare `/ChronicleEngine` or alias may load engine files and selection metadata only; it cannot read campaign state, restore, reconcile, recap, or enter readiness. No active or recent campaign becomes an implicit target.
**Catalog enforcement:** README now contains the exact cold-start command catalog and a closed-alias rule. No-target bootstrap renders that resident mirror instead of composing a catalog from memory. `/continue [world|campaign]` is reconciled across the table, guide, and selection prompt. `tools/test_runtime_command_catalog.ps1` mechanically rejects row drift among all three catalogs.
**Documents:** README 1.1; Runtime Profile 1.27; Gameplay Start Guide 2.12; Decision 064.

## 2026-07-14 — Decision 063: complete command catalog and chat debug export

**Evidence:** A live no-argument `/chronicle` run auto-restored Prototype Beta, `/help` omitted canonical commands, and `/export` could not preserve the diagnostic chat because no gameplay session had started.
**Bootstrap:** No-target `/ChronicleEngine` and aliases now stop at the engine boundary: load the boot set, render the complete command catalog and repository selection screen, and yield without loading campaign files, restoring state, or entering readiness.
**Command discovery:** `/help` and every session-start catalog render every Runtime Command Table row and alias. State affects whether a command can execute, never whether the player can discover it; unmet requirements are labelled. Active-world commands are appended after campaign selection.
**Debug/export split:** `/export` remains the campaign-scoped, recovery-capable gameplay transcript from Decision 061. `/export-debug [label]` writes a repository-level diagnostic transcript of the entire user-visible chat to `exports/debug/`, including pre-bootstrap chat and with no campaign required; hidden instructions and non-visible internals are excluded. `/debug` remains the full-roll-mechanics toggle.
**Documents:** Runtime Profile 1.26; Gameplay Start Guide 2.11; README 1.0; Glossary updated.

## 2026-07-14 — Decision 062: World Rule Profile document class and placement

**Context:** Decision 059 created the World Rule Profile; nothing said where it lives or what kind of document it is. Reikon's profile sat inside `205_THE_LEDGER.md`, whose header reads "narrative reference, not an Object-Block canonical ledger" while its body declares itself "the authoritative model for Reikon mana." Both claims were true — the header's binary was the error.
**Decisions:** Added Decision 062. Names **world rule content** as a third world-layer document class: authoritative on behavior, owning no Persistent Object, carrying no identifier — the world-layer peer of `010_ENGINE_RULES.md`, identifier-free for the same reason. Fixes placement at `worlds/<world>/206_WORLD_RULE_PROFILE.md`, one per world; forbids sharing a file with lore; and routes override-created entity state through the Data Model's existing Section 4.3 extension mechanism.
**Rules:** Added Section 14.5 (Placement and Document Class). Sections 14.1–14.4 unchanged, so existing references to the override contract and the non-overridable boundary remain valid.
**Manifest:** World layer records `206_WORLD_RULE_PROFILE.md` and the world-rule-content class.
**Templates:** `000_TEMPLATE_CONVENTIONS.md` gains Section 9 — a profile instantiates no Object Block and is never regenerated; the state an override creates is a typed domain extension.
**Glossary:** **World Rule Content** added; **World Rule Profile** updated with placement.
**Data Model:** Unchanged; no schema version increment. Section 4.3 already provides the extension mechanism.
**Class:** Refinement under Decision 048 — sites an artifact Decision 059 already created; adds no mechanism and no engine capability. Same class as Decision 055.

## 2026-07-14 — Reikon: profile split into 206; the ability-cost gap closed (world authoring)

**Context:** 205 held authoritative costs and recovery rates while its own header disclaimed being canonical, and costs were world-scoped while ability levels are per-character — a gap that would fire the moment an Ability left Level 1. 205 also said a levelled Ability's cost "is recorded on the character's own ledger," but the character sheet carried its mechanics as prose strings, so there was nowhere to record one.
**Split (Decision 062):** The World Rule Profile moves to `worlds/reikon/206_WORLD_RULE_PROFILE.md`. `205_THE_LEDGER.md` reverts to lore — it describes, the profile governs, neither restates the other.
**Resolution of the gap:** Ability level is **derived**, not stored: `1 + floor(points/5)`. Cost is derived from base + Efficiency allocation. The character stores allocations and Awakening basis values only; `max_mana`, `max_health`, cost, level, next threshold, effective band, and passive reduction are all computed. Nothing is world-scoped that varies per character, and nothing is stored twice.
**Model declared in 206:** pool `max(round(base × 1.05^(L−1)), base + (L−1))` — closed form, because an iteratively-compounded curve is path-dependent and diverges on a single rounding difference (canon-determinism, `012` Section 7); 2 points/Ascension; stats hard-capped at 20; Efficiency −5%/point to a 50% floor; Strength +10%/point uncapped (magnitude only); band gap ≥2 → **no roll** (Rules 4.2); modifier steps from band gap + Mana Affinity (max +1) + circumstance, net ±3, allocation buying none; `T(L) = 1.4L² + 29L + 70` rounded to 10; XP awards ×2.75/grade; band-anchored damage; multiplicative reductions.
**Character:** `ENT-000051` gains a Subtype-keyed domain extension (`011` Section 4.3) replacing the `capabilities`/`system_state` prose. **No Data Model change; no schema version increment.** At Level 1 the derived readout reproduces the previous numbers exactly — no canon changed, only where it lives and what produces it.
**System contract:** declared non-entity (its state and continuity are the Bearer's; initiative is not agency — an interface, not an actor, with the testable property that the same Bearer state and trigger yield the same output). Never lies; authoritative about the Bearer, may point but not describe about the world. Trigger tiers — mandatory / permitted-with-bounded-timing / prohibited-without-precondition — replace narrator discretion over *whether* it speaks while preserving discretion over *when*. Quests are Bearer-only Objectives: no holder ever gets a Knowledge State about one, and a hidden quest is never promoted to world canon. The quest is secret; its footprint is not.
**Scope correction:** the profile is entity-agnostic. It binds the Bearer *role*; campaigns name who holds it. A forked world-line inherits it unchanged with its own protagonist identifier (Decision 053).
**Pointers:** campaign startup `required_sources` now loads 206 before affected state (Rules 14.4); world bible, world README, Gameplay Runtime Profile, and Glossary repointed. Decision 057 and prior changelog entries are immutable history and untouched.
**Validation:** every formula verified numerically before commit. Repository validation passes; regression tests pass.

## 2026-07-14 — Validator: exports excluded from live canon

**Context:** Decision 061 reclassified the Session Export as a durable Gameplay Transcript and requires it to record every identifier allocated during a session, including sessions whose canon was never promoted. The validator scanned `campaigns/**/*.md` excluding only saves, so exports were scanned as live canon.
**Failure modes closed:** an export recording an allocation as `id: ENT-NNNNNN` would register as a live definition and collide with the real ledger; and recovery-from-export — the case Decision 061 exists for — would fail validation precisely because the export's identifiers have no live definition yet.
**Tooling:** `tools/validate_repository.ps1` excludes `exports/` alongside `saves`, `.saves`, and `checkpoints`. Exports are evidence, not state (Decision 061 point 2): they establish no canon, mint no identifiers, and run no validation gate.
**Validation result:** 59 → 55 live Markdown files (the four export documents); 178 object blocks and 178 identifiers unchanged. Regression tests pass.
**Engine Version:** Unchanged.

## 2026-07-14 — Reikon: the System is Bearer-only; mana model declared (world authoring)

**Context:** The first Reikon session's game log exposed a mana model that was being played but never declared — the recovery rate existed only in campaign prose, Flame Shield's declared cost made it unusable, potions restored 20 into a 13-point pool, and physical exertion drained mana under no rule at all. Recovery ladders were narrated rather than computed, drifting in both directions before landing on "full." World-layer authoring; no engine change.

**Terminology (owner decision).** Reikon now has three tiers, and the middle one changed meaning: **Dormant** (no mana), **Awakened hunter** (mana, Abilities, certified Rank — **and no System whatsoever**), and the **System Bearer** (an Awakened who also bears the System). Previously both `200_WORLD_BIBLE.md` and `205_THE_LEDGER.md` stated that a System interface "appears to every Awakened," with a Bearer merely having a fuller one — a difference of degree. It is now a difference of kind. Daedalus (`ENT-000051`) is the System Bearer; no other living person is known to have it.

**Override scope narrowed materially.** Because XP, levels, Ascension, Stat Points, and pool growth are System mechanics, and one person has a System, **`RKO-OVR-001` now scopes to the System Bearer alone** — every ordinary Awakened runs on engine defaults with emergent capability, no levels, and no XP (Decisions 012–014). `RKO-OVR-002` likewise: numeric Health is how the Bearer's System renders what it sees, not how Reikon works; ordinary hunters use the engine injury model (Rules Sections 6.8–6.10). Reikon's overrides are no longer genre-wide replacements of the engine's progression and vitality models — they are two exceptions inside a world that otherwise obeys them.

**Mana model declared** (`205` — now authoritative; other passages point at it rather than restating numbers): mana pool is capacity and **Mana Affinity is control**, decoupled (the growth rule forces it — pool grows per level while Affinity is allocated). Official Rank is a **band of pool capacity**, contiguous and non-overlapping (E 5–15, D 16–45, C 46–120, B 121–300, A 301–750, S 751+, Anomalous unmeasurable); Daedalus's 13 sits at the top of E. The pool is **fixed for life** with three exceptions: re-awakening, rare cores/artifacts, and bearing the System. For the Bearer, every Ascension grows the pool by ≈5% (minimum +1), tuned so Level 90 reaches ~910 — making the world's existing claim that "Level 90+ approaches S-Rank capability" literally true of the pool rather than a figure of speech. Costs: Fireball 12, Flame Shield **2/sec** (was 8/sec, which permitted 1.6 seconds of use against a 13 pool), Combustion Touch 6, Endurance Surge 10, **Reinforced Body 0** — and ordinary exertion costs nothing. Recovery: 1/10s resting, 1/30s active, not scaling with pool. Potions hold 20 in **half-doses of 10**; the vial retains what is not drunk and a draw never exceeds the shortfall, so nothing is wasted.

**"Never changes" made truthful.** Re-ranking is opt-in — the Association re-measures only on request. An ordinary hunter's pool never grows, so a re-test finds nothing, which is why almost nobody bothers. The **Bearer's** pool does grow, so his E-Rank licence is a **choice renewed by silence**, and a growing pool is the one thing about him that cannot be explained as talent or luck. He reaches D-range capacity at Level 4.

**The System has initiative** (owner decision). It is perceptible to its Bearer alone — it cannot be shown, shared, or proven, which is why the legend survived 31 years unconfirmed. It surfaces on request (`/system`) **or on its own initiative**: daily quests, notice that a hidden quest exists, appraisals, warnings, Ascensions, at moments of its choosing. Boundaries declared against three engine rules: its quests are ordinary **Objectives** (Decision 030 — no quest mechanic is added); interjecting is a **world reaction** costing no player opportunity, while putting a choice to the Bearer is a **Player Decision Point** where the Runtime yields (Decision 050); and it is **not an oracle** — authoritative about the Bearer himself, but about the world a source subject to the Layers of Truth that does not bypass Discovery (Law VI). Its pronouncements are automatic (Rules Section 4.2); anything uncertain that follows still resolves on the die.

**Open:** `205` holds the authoritative mana bands, costs, and recovery rates while its own header declares it "narrative reference, not an Object-Block canonical ledger" — the ability-cost-location gap, now load-bearing. Ability costs are world-scoped while ability *levels* are per-character. Whether the System is a Persistent Entity (it now has continuity, state, and initiative) is unmodelled and deliberately left open, as is whether it can be wrong or deceptive. The Reikon 0.1 profile was **not** version-bumped: it remains an unfrozen workshop draft, consistent with how Asterra was authored at 0.9 — but it needs a freeze point before its version can be trusted for save compatibility under Decision 059.

**Validation:** PASSES — 59 live files, 178 object blocks, 178 resolved identifiers, exit 0. No campaign state changed. **Engine Version:** Unchanged; remains 0.2.0.

---

## 2026-07-14 — Session Export as durable transcript and recovery source; command-table rendering and destructive-command guards

**Decisions:** Added **Decision 061** (Session Export as Durable Transcript and Recovery Source), refining Decision 056. Decision 056 classified `/export` output as "a non-canonical **derived** artifact... like the player briefing and the Progression Surfacing view." That is a category error: the briefing and the progression view are computed from canonical ledgers and can be regenerated, whereas **a transcript cannot be regenerated from canon** — it is the primary record canon was promoted *from* (Decision 042), and once the session ends it is unreproducible. An export is reclassified as a durable **Gameplay Transcript** (the record class Rules Section 2.8 already defines), the durable form of the tier-2 record the canon hierarchy already ranks above ledgers.

**The bright line is unchanged.** An export still establishes no canon, mints no identifiers, runs no barrier, is never a restoration entry point, and `/export` remains distinct from `/save`. Where every checkpoint has failed, ledgers may be rebuilt from an export by **re-promotion** — a repair operation that runs the Promotion Barrier and the Repository Validation Barrier and produces canon the ordinary way. `/load` restores a checkpoint; recovery from an export reconstructs one.

**Sufficiency contract:** an export must now capture, beyond every message verbatim and classified, the **opening state**, every **resolution in full** (natural roll, net modifier steps and the circumstances behind them, effective result, band — per Decisions 052 and 058), every **identifier allocated** with the object it names, every **promotion** with provenance, and the **closing state**. Message text alone shows what was narrated, not the identity graph the session produced. Recovery reuses attested identifiers — the same object restored to the record, not a retired number reissued (Data Model Invariant 3) — and records gaps rather than guessing where the export is silent.

**Runtime Profile (1.25):** Session Export section rewritten (primary-not-derived; The Bright Line; the sufficiency contract; the required structured sections; the Recovery from an Export procedure). `/export` command-table row updated.

**Command-table rendering.** Added "The Command Table Is Rendered, Not Recalled": `/help` renders from the Command Table and is never answered from memory or paraphrase; shortening a row may drop detail but never change meaning. This mirrors the requirement already placed on a world's diegetic render template, applied to the control surface, and its enforcement point is the render itself (Decision 055). It exists because it was broken: a Reikon session's `/help` described `/restart` as "Restart from latest checkpoint" — the inverse of its actual effect — on a campaign with no baseline to reset to. The table was correct; the Runtime narrated over it. **No command definition was wrong in the profile, the start guide, or the glossary**; the defect was rendering, not definition.

**Destructive-Command Guards.** Added as part of each command's definition rather than as advice: `/restart` requires a baseline checkpoint and explicit confirmation, and fails rather than substituting the latest checkpoint for a missing baseline (which would silently convert "replay from the start" into "discard recent play"); `/load` and `/continue` refuse a checkpoint recorded as quarantined, superseded, or nonconforming rather than restoring it "with warnings"; an invalid restore target is never rounded to a nearby one. The `/restart` and `/load` table rows carry the guards.

**Start Guide (2.10):** `/restart` marked destructive and described in full player-facing terms ("not 'reload my last save' — that's `/continue`"); `/export` described as complete enough to rebuild a campaign from; `/load` notes it refuses non-restorable checkpoints.

**Glossary:** **Session Export** updated for the primary-record reclassification, the sufficiency contract, and recovery by re-promotion.

**Not retroactive:** existing exports predate the contract. `campaigns/reikon_awakening_001/exports/play_export_0001.md` is sufficient to *verify* that campaign's reconstruction but attests no identifiers and no modifiers, so it could not fully rebuild it. Old exports are evidence for checking a reconstruction, not complete sources for one.

**Rules / Data Model / Runtime:** unchanged. This is a Runtime Profile contract plus a record-classification correction; Decision 056 remains Accepted and is refined rather than superseded (immutable-history policy).

**Validation:** `tools/validate_repository.ps1` PASSES — 59 live files, 178 object blocks, 178 resolved identifiers, exit 0.

**Engine Version:** Unchanged; remains 0.2.0.

---

## 2026-07-14 — Reikon save-layer repair: transcript committed, reconstruction verified, conforming checkpoint created

**Context:** The Reikon Awakening campaign's only checkpoint was unrestorable, and its live canon — reconstructed from that malformed snapshot on 2026-07-14 — had never been verified against play. Campaign-layer conformance repair in Architect mode; no campaign state was advanced and no simulation was resolved.

**Evidence:** Committed the Session 1 gameplay transcript to `campaigns/reikon_awakening_001/exports/play_export_0001.md` verbatim, plus a later four-turn inspection session as `play_export_0002.md`. Both are non-canonical derived artifacts (Decision 056), preserved unedited; provenance and audit live in the sibling `README.md`. This closes the changelog's previously dangling citations to `REIKON_SESSION_001_TRANSCRIPT.md`, which had been cited as evidence for Decisions 057 and the combat-fairness fix while living outside the repository.

**Audit:** The reconstruction is **confirmed faithful** against the transcript on every material fact — XP 36/100, five kills (2 Broodlings + 3 Swarmers), both resolution rolls (43, 61), health, mana, location, inventory, stats. The XP arithmetic independently confirms Reikon's declared per-challenge model, and the reconstruction correctly resolved a contradiction internal to the transcript. Three discrepancies logged without correction: Flame Shield narrated at ~1/10 its declared cost; the enemy's in-flight charge never resolved (the already-closed finding #3, now with primary evidence); and modifier steps `+2`/`+1` recorded in the chronicle with no tier-2 attestation (pre-dispositioned by Decision 058).

**Campaign:** Corrected `180_CURRENT_STATE.md`, which falsely advertised the campaign as "resumable from immutable Checkpoint 001," and scoped it to its Rules Section 13.2 role — removing character, inventory, objective, relationship, and combat-history blocks duplicated from `REC-000038`–`REC-000044`. No state lost; every trimmed fact retains an owning record.

**Saves:** Added `saves/900_CHECKPOINT_0002/` (manifest `REC-000046`), the first conforming Reikon checkpoint: all eight canonical ledgers, hash-verified read-back, conforming to `templates/ledgers/900_SAVE_MANIFEST.md` and the Rules Section 13.3 minimum — the first checkpoint in the repository to use the template shape. `saves/900_CHECKPOINT_001/` is recorded as quarantined and non-restorable in a new external `saves/README.md`; its bytes are unchanged (Rules Section 13.2). Nonconforming records are quarantined and explained, not deleted.

**Findings for the proposed checkpoint-validation work:**

- **The narrated-gate pattern is not confined to the save layer.** Beyond `SAVE_MANIFEST_001.md` self-reporting a validator PASS that never ran, `play_export_0002.md` claims files were "verified and checksummed" (Rules Section 13.6 defers checksums; no such mechanism exists) and its improvised `/help` describes `/restart` as "restart from latest checkpoint" — the inverse of the Gameplay Runtime Profile's definition (Redo to baseline, Decision 053), and destructive on a campaign with no baseline. Where no mechanical gate exists, the Runtime narrates the gate's success.
- **Identifiers defined only inside a checkpoint are unreferenceable from live canon.** The validator excludes `saves/` from its scan, so it cannot resolve them; citing `REC-000046` from a live ledger failed the gate as a dangling reference. The exclusion does not merely skip checking snapshots — it makes their contents invisible. This bears directly on whether manifests should carry `REC-` identifiers under the current validator contract.
- **Reikon has no baseline checkpoint** (Decision 053 requires one) and cannot honestly acquire one now. `/restart` (Redo) is unavailable for this campaign; `/branch` and `/load` are unaffected. Open for decision.

**Validation:** `tools/validate_repository.ps1` PASSES — 59 live Markdown files, 178 Persistent Object blocks, 178 resolved identifiers, exit 0. Checkpoint 0002's own contents remain outside the gate's scope by the standing `saves/` exclusion; its conformance rests on construction and hash-verified read-back, not on the validator.

**Engine Version:** Unchanged; remains 0.2.0. No Decision, Rules, Data Model, or Runtime change.

## 2026-07-14 — Version 0.2 postmortem, modifier contract, and Reikon conformance

**Postmortem:** Added `docs/420_PROTOTYPE_ALPHA/425_ENGINE_POSTMORTEM.md`; accepted the Version 0.2 knowledge architecture, disposed the Prototype Alpha backlog, and closed the release lifecycle.
**Decisions:** Added Decision 058 (20-point Modifier Step Contract), Decision 059 (declared World Rule Profiles), and Decision 060 (uncertain world-fact arbitration).
**Rules/Runtime:** Added the modifier formula and Rules Section 14; clarified the Player/Runtime fact boundary; versioned core engine documents at 0.2.0.
**Reikon:** Declared causal System progression and numeric vitality as world overrides; reconstructed the live campaign into standard Data Model 0.1.1 ledgers using `REC-000038`–`REC-000045`, defined the previously malformed campaign objects correctly, and preserved the immutable checkpoint unchanged.
**Validation:** The repository validator now rejects prose-only live campaigns missing the standard Canonical Record ledger set; added an executable regression fixture and test runner.
**Validation result:** 56 live Markdown files, 178 Persistent Object blocks, 178 resolved identifiers; regression tests pass.
**Engine Version:** Advanced to 0.2.0.

## 2026-07-14 — Reikon Awakening: Session 1 promoted to live canon (narrative)

**Context:** Continuation of finding #4. The played Session 1 canon existed only in the immutable snapshot `saves/900_CHECKPOINT_001/`, which was also internally malformed: the player-character object `ENT-000051` and `ENT-000052/053` were never defined (only referenced); inventory/event objects pointed `canonical_record` at world/other-campaign records (`REC-000025` = Prototype Beta; `REC-000030/031` = Reikon world); `REC-000035-037` were unused. A plain copy would have failed validation and corrupted live canon.
**Decision (owner):** Promote in **narrative** form, matching this campaign's authored style (its live ledgers use prose, not object blocks), rather than reconstructing the object model.
**Change (campaign `reikon_awakening_001`):** Advanced the live ledgers to post-Session-1 state — replaced `100_CHARACTER_DAEDALUS.md` with the played sheet (Level 1, XP 36/100, inventory incl. Evacuation Stone, pack-leader standoff), added `180_CURRENT_STATE.md`, and updated `050_CAMPAIGN_LOG.md` with the Session-1 expedition log and checkpoint status. Fixed the stale "0 XP / 500 XP to D-Rank" line and aligned the campaign's rules-in-effect with Decision 057. The malformed snapshot object blocks were **not** imported; the affected ids remain logged/retired under never-reuse.
**Registry:** Updated the Remediation Note in `system/ID_REGISTRY.md` to record the promotion and the malformed-snapshot findings. Repository validation PASSES (48 files).
**Note:** The immutable snapshot `saves/900_CHECKPOINT_001/` is unchanged (immutable); its object blocks remain malformed but are excluded from live validation.
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-14 — Registry Repair: Reikon Awakening Checkpoint 001 allocation-log coverage

**Context:** First Reikon session analysis, finding #4. The pushed Checkpoint 001 failed repository validation with 17 "allocation log does not cover" errors (ENT-000051–060, REC-000035–037, EVT-000025–028).
**Root cause:** The allocation-log rows for those ranges had been appended **after** the "Known Limitation" section — outside the contiguous `# Allocation Log` table the validator parses (`tools/validate_repository.ps1`, allocation-section regex stops at the next `# ` heading) — so the high-water marks (advanced to ENT-000060 / REC-000037 / EVT-000028) were not covered by the parsed log.
**Fix:** Relocated the three ranges into the Allocation Log table (no fabrication — the entries already existed, only misfiled). Repository validation now PASSES (47 files, 147 objects).
**Remaining (documented, not fixed — gameplay-canon decisions):** Added a Remediation Note to `system/ID_REGISTRY.md` recording that (1) the played Session 1 canon lives only in the immutable snapshot `saves/900_CHECKPOINT_001/` and was never promoted to the live campaign ledgers (the "Promoted to Canon" claim was inaccurate), and (2) REC-000035–037 are defined nowhere (phantom allocations; numbers retired under never-reuse).
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-14 — Bootstrap Selection Screen: no-arg /ChronicleEngine must not auto-load

**Context:** A live `/chronicle` run auto-loaded Prototype Alpha and dragged the player into a checkpoint-restoration/reconciliation dialog. Root cause: the spec permitted no-argument bootstrap to "resume the most recently played campaign," licensing an auto-load the player never requested.
**Decision 056:** Point 4 amended — with no argument, `/ChronicleEngine` presents a Bootstrap Selection Screen and waits; it never auto-loads or auto-resumes (that is `/continue`'s job).
**Runtime Profile (1.23):** Removed the "or resume the most recently played campaign" default from the no-target bootstrap; added a **Bootstrap Selection Screen** subsection — engine-loaded confirmation, the command menu, a worlds/campaigns listing with status and latest checkpoint (combined `/worlds` + `/campaigns` + `/saves`), and a choose-prompt — with an explicit prohibition on auto-selecting, auto-resuming, or starting restoration/reconciliation/readiness before the player names a target.
**README + Start Guide (2.9):** Updated the `/ChronicleEngine` no-target behavior to "present the menu and wait," matching.
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-14 — Start Guide: AI Instructions block condensed to <8000 chars

**Start Guide (2.8):** Rewrote the resident "AI Instructions" block in `docs/GAMEPLAY_START_GUIDE.md` from ~10,978 to ~6,974 characters (under an 8000-char budget) by merging the action-resolution steps, cutting repeated justifications and redundant examples, and tightening prose. No guardrail dropped: cold-start loading, full action-resolution procedure, out-of-character allowance, canon grounding, one-exchange/enemy-acts/no-frictionless-win, before-narration checklist, indirect-write preflight, and the checkpoint-completeness gate are all preserved.
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-14 — Combat Fairness (enemy acts; no frictionless win) and Reikon XP-threshold fix

**Context:** From the first Reikon session analysis (`REIKON_SESSION_001_TRANSCRIPT.md`), findings #3 and #7. In that session a single Fireball roll wiped out three charging Swarmers with zero damage and zero cost — the enemy's in-progress action never resolved against the character.
**Runtime Profile (1.22):** Added "The Roll Resolves the Action, Not the Encounter — and the Enemy Acts" to Combat Cadence: one roll settles the declared action, not the whole fight; enemy actions **already in motion** resolve this same exchange (sequenced by initiative, Rules Section 6) and land their consequences; a fresh counter or next-round action still waits for the next beat (consistent with one-exchange-per-reply). Frictionless, zero-risk wins are the special narrative protection the engine forbids (Law VII); capability/Rank/level/mana are Modifiers, never immunity or removal of the enemy's turn (Decision 057 bright line)
**Start Guide (2.7):** Mirrored the "enemy acts this exchange / no frictionless win" rule into both resident combat blocks so it fires per-turn (Decision 055 — resident-layer enforcement), reconciled with the existing "no further exchange" wording (in-progress action resolves now; fresh action is next beat)
**Campaign (Reikon):** Fixed a canon contradiction in `campaigns/reikon_awakening_001/100_CHARACTER_DAEDALUS.md` Growth Model — "When XP fills to 500, you Level Up (D-Rank)" replaced with the canonical Level 1→2 = 100 XP threshold, and the Level/Official-Rank conflation corrected (leveling raises Character Level, never the license). Cites Decisions 051, 057. Live ledger only; the immutable checkpoint snapshot is unchanged
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-14 — World-Scoped Diegetic System: Tracked Resources and Inline Surfacing

**Decisions:** Added Decision 057, refining Decision 051 Layer 3. In a world that declares a diegetic System under the Supernatural Phenomena Contract (Rules Section 11), the System's quantities (mana, XP, stats, level) may be **tracked canonical state**, XP may be accrued from challenges by **world-defined per-challenge values**, and these may be surfaced **inline during play** — a permitted exception to Decision 051 Layer 2's meta/on-request view. The bright line is unchanged: the die still resolves every action; stats/level/mana are Modifiers (Section 4.4) and resources, never overrides or gates. World-scoped; Decisions 012–014 and 051 are not superseded; Decision 051's body is unchanged (immutable-history policy)
**Runtime Profile:** Progression Surfacing gains the inline diegetic-System exception (When to surface it; Guardrails)
**World (Reikon):** `205_THE_LEDGER.md` now declares Reikon's System as diegetically real and tracked — updated compliance note (Decisions 051, 057) retaining the bright line, an inline-surfacing progression model, a per-challenge XP model with baseline E-grade values (Broodling ≈ 6, Swarmer ≈ 8) and level thresholds, and a mana-as-tracked-resource model; `worlds/reikon/README.md` updated (replaces the earlier "no UI notifications" framing)
**Glossary:** Extended **Diegetic System** for the tracked, inline variant
**Context:** Requested after analysis of the first Reikon session (`REIKON_SESSION_001_TRANSCRIPT.md`), which ran the System as inline mechanical tracking with per-kill XP; the world owner confirmed this is intended for Reikon
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-14 — Canonical `/system` Render Template (Reikon)

**World (Reikon):** Promoted the illustrative `/system` display in `worlds/reikon/205_THE_LEDGER.md` into a **normative Canonical `/system` Template** with deterministic rendering rules (fixed section order, fixed Stats order, data bindings to the Character Sheet / Inventory / Objectives, always-shown Condition line, empty-section handling, in-fiction-only content) plus a worked example bound to Daedalus's canonical state. Given the same canonical character state, every Runtime now renders the same window on any substrate (canon-determinism, `012` Section 7, applied to a fixed display)
**Runtime Profile:** Generalized the requirement in the Runtime Command Interface (Namespace and Precedence): a world that declares a diegetic command should also declare its canonical render template, and the Runtime renders that command verbatim to the template rather than improvising a layout
**Glossary:** Extended **Diegetic Command** to note the world-declared render template
**Rationale:** `/system` was described as "Solo Leveling-style" with an example marked *Example*, so different Runtimes would style it differently; making the template normative fixes the format across all sessions
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-13 — Runtime Command Interface

**Decisions:** Added Decision 056 (Runtime Command Interface), registering a set of out-of-character control verbs (`/ChronicleEngine`, `/save`, `/continue`, `/new`, `/end`, `/restart`, `/branch`, `/load`, `/worlds`, `/campaigns`, `/saves`, `/export`, `/recap`, `/status`, `/validate`, `/help`, `/debug`) as thin dispatchers onto procedures the Gameplay Runtime Profile already defines — no new persistence, resolution, or canon mechanic
**Bootstrap:** `/ChronicleEngine` (aliases `/start`, `/game`, `/rpg`, `/chronicle`, `/chronicles`) is the cold-start entry point; because a Runtime may initially see only the root `README.md`, the bootstrap command and its boot file set are documented there so the engine can be loaded from the README alone
**Runtime Profile:** Added the Runtime Command Interface section to `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (1.21): command table, the Bootstrap Command subsection, dispatch targets, reserved-namespace and precedence rules over world diegetic commands, and resolution rules for "most recently played" and missing/ambiguous arguments; each command inherits its dispatched procedure's obligations (Save Algorithm, Restoration, initialization, Fork/Redo per Decision 053, Progression Surfacing per Decision 051)
**Session export:** Added `/export` and the Session Export section — a formatted, non-canonical transcript written to `campaigns/<campaign>/exports/` that classifies every message (Player, Narrator, Player · OOC, Narrator · OOC, System, Roll) and keeps both sides' out-of-character text and system/loading messages verbatim; it establishes no canon and runs no promotion/validation barrier, distinct from `/save`. Added a **Session Export** glossary term
**Command discovery:** Added Command Availability at Session Start — the Runtime presents a compact, spoiler-safe menu of available commands (runtime commands plus the active world's declared diegetic commands, e.g. Reikon's `/system`) at every session start: after `/ChronicleEngine`, at First-Session Boot, and on restoration/fork/restart. Wired into First-Session Boot, Emergent Campaign, Returning and Takeover Sessions, and the Readiness Gate; `/help` re-displays on demand
**Glossary:** Added **Runtime Command** and **Diegetic Command** to `020_ENGINE_GLOSSARY.md`, cross-linked to the existing Diegetic System term
**Start Guide:** Added a Runtime Commands reference to `docs/GAMEPLAY_START_GUIDE.md` (2.6); the prose start/resume/close prompts remain valid and authoritative
**World content:** Clarified in `worlds/reikon/README.md` that `/system` is a diegetic (world-specific) command, distinct from the reserved engine-general runtime commands, and that `/status` (meta progress view) and `/system` (in-world interface) are separate
**Runtime / Rules / Data Model:** Unchanged — the interface is operational convenience over existing procedures; `012_ENGINE_RUNTIME.md` is not touched
**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-13 — Repository Validation Barrier

**Decisions:** Added Decision 054 (Repository Validation Barrier), converting existing Data Model validity constraints into a mandatory deterministic gate after live write/read-back and before immutable checkpoint creation or promotion-success reporting
**Runtime:** Added `012_ENGINE_RUNTIME.md` Section 5.4; campaign initialization, checkpoints, session close, and campaign-termination promotion now require mechanical repository validation
**Tooling:** Added `tools/validate_repository.ps1`, checking registry high-water bounds, allocation-log completeness and uniqueness, live object-definition uniqueness, reference resolution, universal Persistent Object fields, Canonical Record references, and unresolved placeholders; immutable save snapshots are excluded from live duplicate-definition checks
**Runtime Profile / Guide:** Updated the Gameplay Runtime Profile to 1.20 and Gameplay Start Guide to 2.5; live ledgers are now written and read back, validated, and only then copied into an immutable checkpoint
**Prototype Validation:** Current Prototype Beta state passes: 42 live Markdown files, 84 Persistent Object blocks, 84 unique referenced identifiers; PA-007 marked implemented
**Roadmap:** Prototype Alpha marked complete; Engine Postmortem is now the current Version 0.2 validation gate
**Engine Version:** Unchanged; remains 0.1.5 pending completion of the Version 0.2 Engine Postmortem

---

## 2026-07-13 — Campaign→World Promotion on Prototype Alpha Close (Historical Layer First Use)

**World (Verra):** Promoted the closed Prototype Alpha campaign's durable, publicly-known consequences into world canon, so later campaigns in Verra inherit the history. Created `worlds/verra/300_HALDEN_RECENT_HISTORY.md` (REC-000017) — the first use of the Historical Layer (300–399) — an in-world historical record of the Varn affair (Ilse Varn's arrival, entanglement in the Athenaeum–Order dispute, assault on Prelate Solenne, trial, and public execution), the marsh-fever outbreak escalation (to 13+ cases), and the institutional aftermath. Added a pointer to Ilse (`ENT-000018`, deceased) in `220_NOTABLE_FIGURES.md`. Allocated REC-000017 (registry high-water advanced).

**Architecture:** No new architecture was required — this used the existing Historical Persistence mechanism (Decision 038 / Rules Section 12): historical documents are in-world evidence, and a campaign's chronicle promotes into world/historical records. Invariants respected: single-Canonical-Record (Ilse's canonical record stays the closed campaign; the world holds a historical document *about* her, not a competing entity record — Decision 043); and the Information Boundary (only publicly-observable facts promoted; the fever's true cause left unestablished; private campaign reasoning not carried over).

**Context:** Prototype Alpha — issue PA-I017. The death test (Checkpoint 4) closed the campaign but promoted nothing to the world layer, so a second campaign found a Verra with no memory of Ilse. This promotion gives the world its memory and validates the campaign→world path.

**Finding reclassified:** PA-009 downgraded from foundational **gap** to **refinement** — the abstractions to carry history across campaigns already exist and work; only a **trigger** (a defined campaign-termination promotion step) was missing. That trigger was subsequently added to Gameplay Close 1.20 as part of the Repository Validation Barrier work.

**Rules/Data Model/Decisions:** Unchanged — exercises Decision 038 and Section 12; no mechanic or rule change.

**Engine Version:** Unchanged; remains 0.1.5

---

## 2026-07-13 — Checkpoint Gate: Reserved-Marker Consumption Advances the High-Water Mark

**Start Guide / Runtime Profile:** Clarified the checkpoint-completeness gate in both resident layers of `docs/GAMEPLAY_START_GUIDE.md` and the Save Algorithm (step 3) of `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`: registry allocation means **advancing the kind's high-water mark**, not merely mentioning the identifier. Consuming an id the registry lists only as a reserved/pending forward marker is a real allocation — advance the high-water mark to it and reclassify it from reserved to consumed. An id present only as a reserved note, with the high-water mark still behind it, is not yet allocated, and leaving it that way makes the next checkpoint allocate the same number and collide (never-reuse violation, Data Model Invariant 3). Start Guide 2.4; Profile 1.19.

**Context:** Prototype Alpha Session 2 / Checkpoint 3 (commit `6e7db51`). CP3 promoted `EVT-000012` from the reserved forward marker (added by the 2026-07-13 reconciliation) to a real, structured event, but did not update `system/ID_REGISTRY.md` — the Event high-water mark stayed at `EVT-000011`. Because the registry is the authoritative allocation counter, the next event allocation would have reissued `EVT-000012` and collided. Root cause: the engine saw the id already "mentioned" in the registry and concluded no registry work was needed, missing that a reserved marker being consumed requires advancing the high-water mark. The checkpoint-completeness gate fired correctly otherwise — CP3 wrote six ledgers plus a manifest with read-back, a clean pass versus CP2's silent single write.

**Rules/Data Model/Decisions:** Unchanged — operationalizes the registry allocation procedure and never-reuse invariant (Data Model Section 1; Decision 044); no mechanic change.

**Engine Version:** Unchanged; remains 0.1.5

---

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
