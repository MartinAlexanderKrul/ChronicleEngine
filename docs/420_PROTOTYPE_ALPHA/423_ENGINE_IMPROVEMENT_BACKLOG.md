# Chronicle Engine

## Prototype Alpha - Engine Improvement Backlog

**Status:** Active
**Layer:** Design Retrospective / Validation (400-499) - non-canonical
**See:** `420_PROTOTYPE_PLAN.md`

---

# Purpose

Concrete proposed engine changes arising from Prototype Alpha. This is the actionable output of the campaign: the candidate refinements (and any genuine architectural gaps) that the Engine Postmortem will weigh before Version 0.2 is marked complete and Version 0.3 planning begins.

Each item is classified as a **refinement** (adjustment within the accepted architecture) or a **gap** (a missing foundational abstraction requiring new architecture). A prototype dominated by gaps rather than refinements indicates Prototype Alpha failure per the plan's failure criteria.

---

# Backlog Format

| ID | Source issue (421) | Proposed change | Owning document | Class (refinement/gap) | Priority |
|----|--------------------|-----------------|-----------------|------------------------|----------|

---

# Backlog

## PA-001 - Public and Cultural Knowledge-State Holders

**Status:** Observe During Prototype
**Severity:** Low
**Source:** Verra canonical world generation

Knowledge States require an Entity ID for the holder. Public and cultural states were attached to the Halden Settlement entity as a population proxy.

Validate during play whether settlement-level representation is sufficient or whether a reusable model for populations, communities, traditions, or publics is required. This may become awkward when several social groups within one settlement disagree, a religion spans multiple settlements, a cultural tradition survives without a current institution, or the "public" is fragmented by class, language, profession, or region.

Do not introduce a new Persistent Entity type without evidence from play.

---

## PA-002 - Location Granularity

**Status:** Observe During Prototype
**Severity:** Low
**Source:** Verra canonical world generation

Resource location currently references Halden rather than the specific guildhall or storage location. Settlement-level location loses the distinction between settlement, institution premises, building, room, and container.

Validate whether settlement-level location is sufficient for campaign continuity or whether institution premises, buildings, or containers need a clearer structural representation. Do not add a building subsystem now.

**Reinforced (campaign generation):** carried personal inventory - Ilse's instrument case (`ENT-000019`) and letter (`ENT-000020`) - also uses settlement-level location with possession by the character, because a Character is not a Place or container per the resource `location` field. The "on person" case strengthens this item.

---

## PA-003 - Institution Asset Index Versus Resource Ownership

**Status:** Review During Prototype
**Severity:** Medium
**Source:** Verra canonical world generation

The Glaziers' Guild lists a Resource as an institutional asset while the Resource object separately records the Guild as owner.

This is consistent but duplicates the same fact - a single-source-of-truth risk.

Validate whether institution asset lists should be:
- derived indexes,
- non-authoritative references,
- or separate operational holdings with clearly distinct semantics.

Resource ownership should remain the authoritative ownership source unless play demonstrates otherwise. The likely long-term rule: resource ownership is authoritative on the Resource object; institution asset lists are derived references or indexes, not separate ownership declarations.

---

## PA-004 - Operational Ledgers Own No Persistent Objects

**Status:** Observe During Prototype
**Severity:** Low
**Source:** Prototype Alpha campaign generation

The objectives, changelog, and current-state ledgers (`140`, `170`, `180`) are Canonical Records that carry a `REC-` identifier and universal block but own no persistent objects (`subjects: []`). The "a ledger is a Canonical Record with subjects" model fits entity-holding ledgers cleanly but is awkward for purely operational or narrative ledgers.

Validate whether operational ledgers should be persistent objects at all, or whether a lighter non-owning document class is warranted. Do not change the model yet.

---

## PA-005 - Resident-Layer Enforcement of Runtime Invariants

**Status:** Decide at Postmortem
**Severity:** High
**Source:** Issues PA-I004, PA-I009, PA-I010, PA-I012, PA-I014; Architecture Observation "Critical Invariants Must Be Enforced at the Resident Layer"

The dominant finding of Prototype Alpha. Four invariant failures shared one shape: the rule was correct and written, but lived only in the fetched Runtime Profile or in a late barrier, so it did not fire at the moment of action on an LLM substrate. Each was fixed by making the invariant resident, imperative, and per-turn.

Proposed changes for the postmortem to weigh:
- `012_ENGINE_RUNTIME.md`: add an explicit obligation that each of the four Runtime Invariants (Section 0.2) name its enforcement point — the moment and layer at which it is checked — rather than being assumed to hold because it is documented.
- Runtime Profiles: formally distinguish a **resident** layer (always in-context, enforced every turn) from **fetched reference** material, and require that grounding, action-resolution, promotion, and canon-determinism checks live in the resident layer.

Class: refinement (architectural). Candidate for a new Engine Decision at the postmortem. This is substrate-shaping guidance and applies to any runtime, not only the LLM profile.

---

## PA-006 - Intent Versus Engine-Arbitrated World-Facts

**Status:** Refine
**Severity:** Medium
**Source:** Issue PA-I015

The Player Agency Contract cleanly separates player-authored *intent* from engine-resolved *consequence*, but Session 2 exposed a seam: a player can phrase a declared action so that it also asserts the *outcome* of an uncertain inquiry ("I've found nothing that breaks the pattern — not in the records, not in the ward"), and the Runtime may narrate the world to match rather than arbitrating whether the counter-case exists.

Proposed change: sharpen the Agency Contract (Runtime Profile, and possibly `012` 1.6) to state that whether an uncertain world-fact obtains — what an investigation finds, whether a searched-for thing exists — is engine-arbitrated (by ruling or die), even when the player's phrasing presupposes it. The player authors the attempt and the character's interpretation; the engine authors what the world yields.

Class: refinement (Agency Contract boundary). No canon corruption observed (objective truth stayed unestablished), so this is a boundary clarification, not a defect fix.

---

## PA-007 - Registry Maintenance Robustness

**Status:** Implemented — Decision 054 / Repository Validation Barrier (2026-07-13)
**Severity:** High
**Source:** Issues PA-I013, PA-I014, **PA-I016** (three consecutive checkpoint recurrences: CP2, CP3, CP4)

Gameplay-generated identifiers were repeatedly left unregistered or under-registered: unallocated IDs from CP1; a stale high-water mark at CP3; and again at CP4, where `EVT-000013` was consumed but the registry was not touched at all. This failed **three checkpoints in a row**, including after the resident checkpoint gate explicitly named the registry as a required target and after the gate was clarified to require advancing the high-water mark (Guide 2.4 / Profile 1.19). Each occurrence required an out-of-band manual repair.

Conclusion from the recurrence: a **narrated instruction to maintain the registry does not work** — this is the resident-layer lesson (PA-005) hitting its limit. When the enforcement point cannot be made reliable by prose at all, it must become **mechanical**. Proposed change for the postmortem:

- Add a checkpoint-time **validation step** (not a narration) that scans every identifier referenced in the campaign ledgers, compares them to the registry high-water marks, and **fails the checkpoint** if any referenced id exceeds its high-water mark or is otherwise unallocated. Catch it before commit, not by later audit.
- Consider deriving the high-water mark from actual ledger contents (max id in use) rather than a counter the runtime updates by hand, so the registry cannot drift behind reality.

**Resolution (2026-07-13):** Accepted as Decision 054 and implemented through `012_ENGINE_RUNTIME.md` Section 5.4, the Gameplay Runtime Profile, the Gameplay Start Guide, and `tools/validate_repository.ps1`. The gate now runs after live write/read-back and before immutable checkpoint creation or any promotion-success claim. The validator checks registry bounds and complete allocation-log coverage, live definition uniqueness, resolved references, universal object fields, Canonical Record references, and placeholders. Prototype Beta passes the executable gate with its new campaign identifiers and references to promoted Prototype Alpha history.

Class: refinement, implemented as a required pre-0.3 change. The enforcement point is mechanical rather than narrative.

---

## PA-009 - Campaign-to-World Promotion at Campaign Termination

**Status:** Implemented — campaign-termination trigger added to Gameplay Close 1.20 (2026-07-13)
**Severity:** Medium-High
**Source:** Issue PA-I017 (Ilse's death / campaign termination, Checkpoint 4)

**Update (2026-07-13):** The promotion was performed manually for Prototype Alpha's close, and it required **no new architecture** — the closed campaign's durable, publicly-known consequences (Ilse's execution, the fever outbreak escalation, the sharpened institutional conflict) were promoted into a world-layer **historical document** (`worlds/verra/300_HALDEN_RECENT_HISTORY.md`, REC-000017) using the existing Historical Persistence mechanism (Decision 038 / Rules Section 12), plus a pointer in `220_NOTABLE_FIGURES.md`. The single-Canonical-Record invariant was respected: Ilse's canonical record stays in the closed campaign; the world holds an in-world historical *document about* her, not a competing entity record. The Information Boundary was respected: only publicly-observable facts were promoted, the fever's true cause was left unestablished, and Ilse's private reasoning was not carried over.

**Conclusion:** this is a **refinement, not a foundational gap.** The abstractions to carry history across campaigns already exist and work. What is missing is only a **trigger** — a defined step at campaign termination that performs this promotion, rather than leaving it to manual action or runtime improvisation.

**Resolution (2026-07-13):** Gameplay Close now requires the campaign-termination promotion step and an explicit "no world-layer promotion required" conclusion when nothing qualifies. The Repository Validation Barrier applies to the resulting world writes before checkpoint creation or a promotion-success claim.

The death test exposed the single largest gap in the world-first model. When Ilse died, the campaign closed cleanly at the campaign layer, and the Runtime correctly treated protagonist death as campaign termination. But **nothing was promoted to the world layer.** Ilse's public execution (witnessed by hundreds — now a piece of Halden's history), the escalated fever outbreak, and Corvane's suppression were listed as "threads that persist in Halden canon" but were written nowhere in `worlds/verra/`. A future Verra campaign would have no record that any of it happened.

The engine's premise is "campaigns end, characters die, history continues" — but there is currently **no procedure by which a campaign's durable consequences become world or historical canon.** History only "continues" if the world layer actually inherits it. Decision 038 / Rules Section 12 define historical documents as promotable from the campaign chronicle, but nothing triggers or requires that promotion at campaign close.

Proposed change for the postmortem to weigh: define a **campaign-termination promotion step** — when a campaign closes, its world-affecting outcomes (deaths as public events, institutional shifts, unresolved pressures, notable historical occurrences) are promoted into world-state records and/or historical documents in the world layer, with provenance back to the closing campaign. This is what makes multi-generation play in one persistent world real.

Original classification: **gap** while the trigger was missing. Final classification: **refinement**, implemented after Prototype Beta confirmed that a second protagonist in Verra inherits Ilse's promoted history.

---

## PA-008 - Save-Layer Format Unification

**Status:** Deferred (Version 0.6 - Persistence)
**Severity:** Low
**Source:** Decision 053; save-layer drift noted during checkpoint work

Three checkpoint conventions coexist: the documented `saves/900_CHECKPOINT_<NNNN>/` (full ledger copies, used for the baseline), flat `.saves/*.yaml` manifest-only files (used for the session checkpoints), and an empty `checkpoints/` placeholder. Bless a single form and migrate the existing checkpoints.

Class: refinement. Already on the roadmap Technical Debt list and deferred to Version 0.6; recorded here for traceability.
