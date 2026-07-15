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
| Entity | `ENT-` | Persistent Entity | ENT-000080 |
| Record | `REC-` | Canonical Record | REC-000055 |
| Event | `EVT-` | Event | EVT-000037 |
| Relationship | `REL-` | Relationship | REL-000047 |

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
| EVT-000029 - EVT-000030 | Event | Reikon Awakening transcript repair and Session 2 promotion: omitted morning physical training (029), pack-leader combat and resulting state (030) |
| ENT-000061 - ENT-000064 | Entity | Reikon Awakening live Data Model migration: the Aurology Institute's director, Captain Marissa Thorne, Lysander, and Warehouse 7 E-Rift. The director was recorded at allocation as "Dr. Kael Venn"; `EVT-000037` corrected the name to **Dr. Ambrose Teague** as a recording error, the string having collided with Dr. Sable Vane (`ENT-000036`) and Kael Travis (`ENT-000021`). Same identifier throughout; no former alias exists |
| REC-000038 - REC-000045 | Record | Reikon Awakening standard live campaign ledgers (100, 110, 120, 130, 140, 160, 170, 180) |
| REL-000040 - REL-000044 | Relationship | Reikon Awakening: Authority membership, Institute affiliation, and Daedalus's three established contacts |
| REC-000046 | Record | Reikon Awakening `saves/900_CHECKPOINT_0002/900_SAVE_MANIFEST.md` — the first conforming checkpoint manifest, superseding the quarantined Checkpoint 001 |
| REC-000047 | Record | Reikon Awakening `saves/900_CHECKPOINT_0003/900_SAVE_MANIFEST.md` — recovered post-pack-leader restore point under World Rule Profile 0.2 |
| REC-000048 | Record | Reikon Awakening `saves/900_CHECKPOINT_0004/900_SAVE_MANIFEST.md` — Health-recovery contract migration under World Rule Profile 0.3 |
| ENT-000065 | Entity | Reikon Awakening Session 2 gameplay: natural scale plate harvested from pack leader during loot phase (EVT-000031) |
| EVT-000031 | Event | Reikon Awakening Session 2 gameplay: warehouse exploration, basement core-chamber discovery, looting of all creatures (11 cores total), scale plate harvest, and medical treatment at Hunters' Association |
| REC-000049 | Record | Reikon Awakening `saves/900_CHECKPOINT_0005/900_SAVE_MANIFEST.md` — Session 2 checkpoint after exploration and medical treatment |
| EVT-000032 | Event | Reikon Awakening Session 2 audit: explicit ruling correcting the `EVT-000031` kill-count transcription error (six earlier kills → five; six total: 2 Broodlings, 3 Swarmers, pack leader). Core counts unaffected |
| REC-000050 | Record | Reikon Awakening `saves/900_CHECKPOINT_0006/900_SAVE_MANIFEST.md` — Session 2 checkpoint after the cross-ledger staleness repair and the `EVT-000032` ruling; supersedes Checkpoint 0005 as the restore point |
| ENT-000066 | Entity | Reikon Awakening: Daedalus's rented room in Verholt's working quarter, established by ruling alongside Reikon World Rule Profile 0.4 (economy). Grounds him as a Verholt local with lodging independent of Institute and Association |
| ENT-000067 - ENT-000070 | Entity | Reikon Awakening recovered session: healing-potion stack, energy-tonic stack, wound dressing salve, and research notebook |
| ENT-000071 - ENT-000073 | Entity | Reikon Awakening recovered session: Dr. Kalens, Dr. Soren, and Marta, the three Institute research contacts directly consulted before returning to Warehouse 7 |
| REL-000045 - REL-000047 | Relationship | Reikon Awakening recovered session: Daedalus's research relationships with Dr. Kalens, Dr. Soren, and Marta |
| EVT-000033 | Event | Reikon Awakening recovered session, promoted only through the last rules-valid exchange: recovery, purchases, training, Institute research, basement return, ledge-sentinel kill, XP settlement, and failed Fireball |
| REC-000051 | Record | Reikon Awakening `saves/900_CHECKPOINT_0007/900_SAVE_MANIFEST.md` — recovered shared-chat continuation at the last rules-valid mid-combat anchor |
| ENT-000074 - ENT-000077 | Entity | Reikon Awakening complete shared-chat continuation: the four harvested D-grade Breaker cores |
| EVT-000034 | Event | Reikon Awakening owner ruling and completed Breaker engagement under Profile 0.5: finite life-burn anomaly, basement clear, Ascension, harvest, research, and failed direct core extraction |
| REC-000052 | Record | Reikon Awakening `saves/900_CHECKPOINT_0008/900_SAVE_MANIFEST.md` — complete owner-approved shared-chat continuation after the finite life-burn anomaly and basement clear |
| REC-000053 | Record | Reikon Awakening `saves/900_CHECKPOINT_0009/900_SAVE_MANIFEST.md` — Profile 0.6 recurrent-intervention and succession migration; no fictional time elapsed |
| ENT-000078 – ENT-000080 | Entity | Reikon Awakening `EVT-000035` omission repair: Kalens's address slip (078), the Institute–Vigil tension over deep-Rift study (079), and Marta's core-depth collapse correlation (080) — artifacts and knowledge established by the Institute consultation but not recorded when `EVT-000033` promoted it |
| EVT-000035 | Event | Reikon Awakening: ruling repairing the `EVT-000033` under-promotion of the Institute consultation — the address slip, the same-day reporting condition on `REL-000045`, the Vigil disclosure, and Marta's hypothesis. No fiction added; no state recalculated |
| EVT-000036 | Event | Reikon Awakening: ruling that campaign-local Dr. Kael Venn (`ENT-000061`) and world-layer Dr. Sable Vane (`ENT-000036`) are distinct figures despite near-identical names and adjacent Institute roles. No identity link recorded; no state changed |
| REC-000054 | Record | Reikon Awakening `saves/900_CHECKPOINT_0010/900_SAVE_MANIFEST.md` — omission repair and identity disambiguation (`EVT-000035`, `EVT-000036`); no fictional time elapsed |
| EVT-000037 | Event | Reikon Awakening: ruling correcting `ENT-000061`'s name from "Dr. Kael Venn" to Dr. Ambrose Teague as a recording error, and correcting `EVT-000036`'s unsupported claim that Daedalus had met him. No former alias; identifier unchanged |
| REC-000055 | Record | Reikon Awakening `saves/900_CHECKPOINT_0011/900_SAVE_MANIFEST.md` — the `EVT-000037` name correction; no fictional time elapsed |

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

The Checkpoint 001 gameplay session (commit line `019cffa` / `b840bf2`) left this registry and the campaign in an inconsistent state. The allocation-log coverage has been repaired (the three ranges above were relocated into the Allocation Log table from below this section, where they had been appended outside the parsed table and so failed validation). The findings and their resolution:

- **Canon reconstructed in standard live ledgers.** The played Session 1 canon was originally written only into the immutable snapshot and later copied into prose-only live files. The Version 0.2 conformance pass reconstructed it in standard live Canonical Records (`100` through `180`) with fresh record identifiers, proper ownership, and live definitions for the already-allocated campaign objects. The older prose files remain non-canonical historical presentation.
- **Snapshot object blocks remain malformed and immutable.** The snapshot is unchanged. Its blocks were not imported verbatim; live canon now correctly defines `ENT-000051`–`ENT-000060` and `EVT-000025`–`EVT-000028` under fresh records. `ENT-000052` and `ENT-000053` represent the observed Broodling and Swarmer creature archetypes rather than individual killed creatures.
- **Phantom record allocations.** `REC-000035`–`REC-000037` are not defined anywhere (not even in the snapshot). The high-water mark was advanced for them without objects being created; under never-reuse the numbers are retired, not reclaimed, and are logged above as consumed.

## Update — reconstruction verified and Checkpoint 001 quarantined (2026-07-14)

The reconstruction recorded above was structurally valid but had never been verified against play, because the Session 1 transcript was not in the repository. It is now committed at `campaigns/reikon_awakening_001/exports/play_export_0001.md`.

**The reconstruction is confirmed faithful.** XP (36/100), kill counts (2 Broodlings, 3 Swarmers), both resolution rolls (43, 61), health, mana, location, inventory, and stats all match the transcript. The XP arithmetic independently confirms Reikon's declared per-challenge award model. The reconstruction also correctly resolved a contradiction inside the transcript itself, which narrates "three Broodlings" at one point where both the scene and the arithmetic establish two. Full audit and logged discrepancies: `campaigns/reikon_awakening_001/exports/README.md`.

**Checkpoint 001 is quarantined as non-restorable**, and superseded by `saves/900_CHECKPOINT_0002/` (manifest `REC-000046`), the first conforming checkpoint for this campaign. The snapshot's bytes are unchanged per Rules Section 13.2; its status is recorded externally in `campaigns/reikon_awakening_001/saves/README.md`. Its manifest additionally misattributes identifiers across scopes — claiming `REC-000025` (Prototype Beta) and `REC-000030`/`REC-000031` (Reikon world) as its own campaign allocations — which is a second, independent account of the same corruption and disagrees with this registry's own record that the checkpoint consumed `REC-000035`–`REC-000037`. Neither account is correct; both are retained as evidence and neither is authoritative over the live ledgers.
