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

**Status:** Review at Postmortem
**Severity:** Medium-High
**Source:** Issues PA-I013, PA-I014

Gameplay-generated identifiers were repeatedly left unregistered or under-registered (unallocated IDs from CP1; a stale high-water mark at CP3 that risked a reuse collision). Even after the checkpoint gate named the registry as a target, the high-water step under-fired. The registry is a hand-maintained monotonic counter in Markdown, and the runtime keeps failing to maintain it exactly.

Proposed change for the postmortem to weigh: keep the readable Markdown registry but add a mechanical safeguard — a validation step that cross-checks every identifier referenced in campaign ledgers against the registry high-water marks at checkpoint, so an unregistered or reused id is caught before commit rather than by later audit. Consider whether allocation should be verified against actual ledger contents rather than a counter the runtime updates by hand.

Class: refinement. Recurring; the enforcement point needs to be mechanical, not narrative (compare PA-005).

---

## PA-008 - Save-Layer Format Unification

**Status:** Deferred (Version 0.6 - Persistence)
**Severity:** Low
**Source:** Decision 053; save-layer drift noted during checkpoint work

Three checkpoint conventions coexist: the documented `saves/900_CHECKPOINT_<NNNN>/` (full ledger copies, used for the baseline), flat `.saves/*.yaml` manifest-only files (used for the session checkpoints), and an empty `checkpoints/` placeholder. Bless a single form and migrate the existing checkpoints.

Class: refinement. Already on the roadmap Technical Debt list and deferred to Version 0.6; recorded here for traceability.
