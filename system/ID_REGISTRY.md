# Chronicle Engine

## Identifier Registry

**File:** `system/ID_REGISTRY.md`
**Status:** Active
**Governed by:** `engine/011_ENGINE_DATA_MODEL.md`, Section 1

---

# Purpose

This is the repository-level registry for persistent-object identifiers.

It holds the monotonic high-water mark for each identifier kind. Identifiers are allocated by advancing the high-water mark for the relevant kind. This file is the single source of truth for which identifiers have been issued.

The structure and rules for identifiers are defined in `engine/011_ENGINE_DATA_MODEL.md`, Section 1. This document is the operational record those rules act on.

---

# High-Water Marks

The last allocated identifier per kind. The next allocation for a kind is the high-water mark plus one. `none` means no identifier of that kind has been allocated yet.

| Kind | Prefix | Referent | Last Allocated |
|------|--------|----------|----------------|
| Entity | `ENT-` | Persistent Entity | ENT-000060 |
| Record | `REC-` | Canonical Record | REC-000037 |
| Event | `EVT-` | Event | EVT-000028 |
| Relationship | `REL-` | Relationship | REL-000039 |

---

# Allocation Log

Allocations are recorded per unit of work for traceability. The high-water marks above are the authoritative counters; this log explains what consumed each range.

| Range | Kind | Consumed by |
|-------|------|-------------|
| ENT-000001 – ENT-000017 | Entity | Prototype world Verra (`worlds/verra/`): 2 places, 3 institutions, 6 figures, 3 Knowledge Subjects, 3 resources |
| REC-000001 – REC-000008 | Record | Verra ledgers: places, notable figures, knowledge subjects, resources, three institution ledgers, seed events |
| EVT-000001 – EVT-000007 | Event | Verra seed events: four foundings, fever validation, fever condemnation, rivermason decline |
| REL-000001 – REL-000015 | Relationship | Verra: 9 Knowledge States, 1 governance, 5 membership |
| ENT-000018 – ENT-000020 | Entity | Campaign Prototype Alpha (`campaigns/prototype_alpha/`): Ilse Varn, instrument case, letter of introduction |
| REC-000009 – REC-000016 | Record | Prototype Alpha campaign ledgers (100, 110, 120, 130, 140, 160, 170, 180) |
| EVT-000008 | Event | Ilse arrives in Halden (campaign start) |
| REL-000016 – REL-000018 | Relationship | Prototype Alpha: Ilse/Corvane introduction; Ilse's marsh-fever and tempered-glass Knowledge States |
| EVT-000009 – EVT-000011 | Event | Prototype Alpha session 1 play: Athenaeum meeting and commitment (009), day-2 crisis cascade (010), infirmary interlude and Order's offer (011) |
| REL-000019 | Relationship | Prototype Alpha session 1 play: Ilse/Maelis relationship |
| EVT-000012 | Event | Prototype Alpha session 2 (Checkpoint 3): Ilse's commitment decision and double-agent strategy; independent field investigation; marsh-fever Knowledge State accepted |
| EVT-000013 | Event | Prototype Alpha session 2 (Checkpoint 4): Ilse's final spiral — assault on Solenne, detention, refusal, trial, public execution; campaign termination on protagonist death |
| REC-000017 | Record | Verra world Historical Layer: `worlds/verra/300_HALDEN_RECENT_HISTORY.md` — the Varn affair, the marsh-fever outbreak, and institutional aftermath, promoted to world canon on Prototype Alpha's close (campaign→world promotion) |
| ENT-000021 - ENT-000022 | Entity | Campaign Prototype Beta (`campaigns/prototype_beta/`): Kael Travis, Kael's serviceable sword |
| REC-000018 - REC-000025 | Record | Prototype Beta campaign ledgers (100, 110, 120, 130, 140, 160, 170, 180) |
| EVT-000014 | Event | Kael Travis arrives in Halden (Prototype Beta campaign start) |
| REL-000020 - REL-000023 | Relationship | Prototype Beta: Kael's starting Knowledge States and Order exposure relationship |
| ENT-000023 - ENT-000029 | Entity | Prototype Beta checkpoint 0001: Tollen Var, Sister Avel, Brant, Edrin Vale, Lysa Vale, unidentified wrong-stair man, Caldus |
| EVT-000015 - EVT-000017 | Event | Prototype Beta checkpoint 0001: first job search and Tollen altercation; Order hiring and lower-passage briefing; first watch, wrong-stair alert, fever-door incident, and contamination response |
| REL-000024 - REL-000028 | Relationship | Prototype Beta checkpoint 0001: Order day-hire/security relationship, Kael's working contacts with Avel and Brant, Edrin/Lysa family connection, and Kael's fever-contact exposure state |
| ENT-000030 - ENT-000050 | Entity | World Reikon (`worlds/reikon/`) instantiation: 4 places/settlements (Aldish Republic, Verholt, Kessler Rift, Danesmoor collapse), 7 notable figures, 4 institutions (Hunters' Authority, Meridian Guild, Aurology Institute, Vigil of the Rupture), 3 Knowledge Subjects, 3 resources |
| REC-000026 - REC-000034 | Record | Reikon world ledgers: places, notable figures, knowledge subjects, resources, four institution ledgers, seed events |
| EVT-000018 - EVT-000024 | Event | Reikon seed events: the Rupture, the Authority charter, Meridian incorporation, Institute founding, Vigil hardening, Danesmoor collapse, Institute deep-Rift recovery |
| REL-000029 - REL-000039 | Relationship | Reikon: institution governance/jurisdiction and membership relationships, and world-layer Knowledge States over Reikon's Knowledge Subjects |
| ENT-000051 - ENT-000060 | Entity | Campaign Reikon Awakening (`campaigns/reikon_awakening_001/`), Checkpoint 001: Daedalus (player character), 2x Broodling, 3x Swarmer, and inventory items (license, sword, repair kit, potions, rope, evacuation stone, cores). Defined in the Checkpoint 001 snapshot; see remediation note below |
| REC-000035 - REC-000037 | Record | Reikon Awakening Checkpoint 001: record identifiers consumed (high-water advanced to REC-000037) for the Session 1 campaign ledgers (chronicle, objectives, inventory ownership). The individual records were not separately defined; the numbers are retired under never-reuse (Invariant 3). See remediation note below |
| EVT-000025 - EVT-000028 | Event | Reikon Awakening Session 1 gameplay: expedition begin (025), first combat / broodling kills (026), mana recovery and observation (027), swarmer combat (028). Defined in the Checkpoint 001 snapshot; see remediation note below |

---

# Allocation Invariants

These invariants are binding. They are defined in `engine/011_ENGINE_DATA_MODEL.md`, Section 1.4, and restated here because this is the record they govern.

1. **Atomicity.** Registry allocation and object creation must occur in the same atomic repository change.
2. **Registration.** No persistent object may be committed without its identifier being registered here.
3. **No reuse.** Identifiers are never reused, including after an object is destroyed or archived. A retired identifier's number is never issued again.
4. **Branch reconciliation.** Concurrent branch allocations must be reconciled before merge. If two branches allocate the same next value, one branch's objects are reassigned to fresh identifiers and the high-water mark advanced, before the branches are merged.

---

# Allocation Procedure

To allocate an identifier of a given kind:

1. Read the high-water mark for that kind.
2. Compute the next value (high-water mark plus one, or the first value if `none`).
3. Create the object with that identifier and update the high-water mark, in the same atomic repository change (Invariant 1).

Identifiers are zero-padded to six digits by current convention (for example `ENT-000173`). Padding is presentational; the value is the integer.

---

# Known Limitation — Concurrent Git Allocation

Because allocation is a monotonic counter in a version-controlled file, two branches developed in parallel can allocate the same identifier before merge.

This is a known and accepted limitation of the document-driven form. It is resolved by Invariant 4 — reconcile before merge — not by abandoning readable monotonic identifiers. Chronicle Engine 0.1.2 deliberately does not adopt UUIDs or distributed allocation. Distributed identity is reconsidered only if the engine gains a concurrent runtime beyond its current form.

---

# Remediation Note — Reikon Awakening Checkpoint 001

The Checkpoint 001 gameplay session (commit line `019cffa` / `b840bf2`) left this registry and the campaign in an inconsistent state. Two issues are recorded here for follow-up; the allocation-log coverage itself has been repaired (the three ranges above were relocated into the Allocation Log table from below this section, where they had been appended outside the parsed table and so failed validation).

- **Canon not promoted to live ledgers.** The played Session 1 objects (`ENT-000051`–`ENT-000060`, `EVT-000025`–`EVT-000028`) are defined **only** inside the immutable snapshot `campaigns/reikon_awakening_001/saves/900_CHECKPOINT_001/`. The live campaign directory still holds only pre-play files (`050_CAMPAIGN_LOG.md`, `100_CHARACTER_DAEDALUS.md`, `CHECKPOINT_000.md`); the full live ledgers (`120/140/160/170/180`) were never written. Canon Promotion into the live ledgers did not occur, so the checkpoint's "Promoted to Canon" claim was not accurate. Promoting the snapshot state into the live ledgers is a pending gameplay-canon operation.
- **Phantom record allocations.** `REC-000035`–`REC-000037` are not defined anywhere in the repository (not even in the snapshot). The high-water mark was advanced for them without objects being created. Under never-reuse (Invariant 3) the numbers are retired, not reclaimed; they are logged above as consumed.
