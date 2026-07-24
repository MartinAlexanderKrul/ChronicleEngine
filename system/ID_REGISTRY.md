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
| Entity | `ENT-` | Persistent Entity | ENT-000133 |
| Record | `REC-` | Canonical Record | REC-000081 |
| Event | `EVT-` | Event | EVT-000059 |
| Relationship | `REL-` | Relationship | REL-000063 |

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
| EVT-000038 | Event | Reikon Awakening: wound treatment, complete Institute data handoff to Kalens/Soren/Marta honoring the `REL-000045` same-day condition, and the Hunters' Authority clear report including the anomalous core |
| EVT-000039 | Event | Reikon Awakening: night recovery — a light post-injury workout resolved by the die (d100 78, success), followed by a full night's rest settling Health and Mana to maximum under the deterministic recovery formulas |
| EVT-000040 | Event | Reikon Awakening: Profile 0.6 Section 9.6 recurrent intervention check (first-safe-exchange-of-a-new-day trigger), d100 82, granting the one-use finite technique Emberbrand |
| REC-000056 | Record | Reikon Awakening `saves/900_CHECKPOINT_0012/900_SAVE_MANIFEST.md` — Institute handoff, Association report, night recovery, and the Emberbrand intervention grant |
| ENT-000081 | Entity | Reikon Awakening: Ashgate E-Rift, a new Place — a second, solo-eligible assignment entered while Warehouse 7 sits with the Institute |
| EVT-000041 | Event | Reikon Awakening: morning training, Warehouse 7 observation-only re-examination (new framework-asymmetry detail), Institute follow-up, declined D-core sale, and the Ashgate E-Rift engagement through the Emberbrand-empowered Fireball; encounter left unresolved |
| REC-000057 | Record | Reikon Awakening `saves/900_CHECKPOINT_0013/900_SAVE_MANIFEST.md` — the Ashgate assignment and mid-encounter state |
| ENT-000082 | Entity | Reikon Awakening: the extracted, unappraised Ashgate Rift core, distinct from monster-loot E-cores |
| EVT-000042 | Event | Reikon Awakening: Ashgate core-chamber mop-up (confirming all nine kills), clean core extraction, and Rift collapse |
| EVT-000043 | Event | Reikon Awakening: ruling flagging the unauthored Rift-clear milestone XP magnitude (206 Section 8.2) and awarding only confirmed per-kill XP for the Ashgate clear |
| REC-000058 | Record | Reikon Awakening `saves/900_CHECKPOINT_0014/900_SAVE_MANIFEST.md` — the Ashgate closure and the milestone-XP ruling |
| EVT-000044 | Event | Reikon Awakening: owner ruling authoring the Rift-clear milestone XP formula (World Rule Profile 0.7, Section 8.2, flat ×10 grade-baseline multiplier) and applying it retroactively to the Ashgate clear — 70 milestone XP, moving Daedalus from 85 to 155/130, crossing T(2) into Ascension to Level 3 at 25/170. Also corrects a transcription error on `100_CHARACTER_SHEET.md`'s `situation` field, which read "ten Broodlings"/"Ten E-cores" against nine established everywhere else (checkpoint manifests, changelog, and the XP arithmetic itself) |
| REC-000059 | Record | Reikon Awakening `saves/900_CHECKPOINT_0015/900_SAVE_MANIFEST.md` — the milestone-XP formula ruling, its retroactive Ashgate application, and the resulting Ascension to Level 3 |
| EVT-000045 | Event | Reikon Awakening: owner ruling removing the 20-point Stat cap (World Rule Profile 0.8, Section 4.2 — indefinite growth, Mana Affinity's die contribution unaffected and still capped at +1 per Law VII) and raising the Ascension point rate from 2 to 5 (Section 4.1), applied retroactively to Daedalus's 2 already-completed Ascensions. `unspent_points` moves from 2 to 8 (+3 per Ascension x 2). Power, Speed, and Perception's indefinite-growth payoff has no authored formula and is recorded as an open gap, not invented |
| EVT-000046 | Event | Reikon Awakening: player allocation of all 8 unspent points from `EVT-000045` — Power +3, Endurance +2, Mana Affinity +1, Perception +1, Fireball Efficiency +1. `unspent_points` 8 to 0; `max_health` 110 to 121; `max_mana` unaffected at 15; Fireball stays Lv 1, cost 12 to 11. Also corrects a stale Level-2 derived readout on `100_CHARACTER_SHEET.md` left over from `EVT-000044`/`EVT-000045` |
| REC-000060 | Record | Reikon Awakening `saves/900_CHECKPOINT_0016/900_SAVE_MANIFEST.md` — the Stat-cap removal and Ascension-rate ruling |
| ENT-000083 | Entity | Reikon Awakening: Wren Ashcombe, independent resonance/calibration contractor brought in for Warehouse 7 |
| ENT-000084 | Entity | Reikon Awakening: Tannery E-Rift, a second solo-eligible assignment, closed unguarded |
| ENT-000085 | Entity | Reikon Awakening: the extracted, unappraised tannery Rift core |
| ENT-000086 | Entity | Reikon Awakening: Daedalus's 24-vell holding from the Ashgate core's sale, a corrected prior omission |
| EVT-000047 | Event | Reikon Awakening: new-day silent intervention check, Institute joint session, Athenaeum resonance lead, meeting Wren Ashcombe, Association referral and escalation filing, tannery assignment taken. **Renumbered from the ashgate world-line's `EVT-000045` during branch reconciliation (Data Model Invariant 4), the ashgate `EVT-000045`–`EVT-000048` block shifted +2 to `EVT-000047`–`EVT-000050` to sequence after main's Stat-cap ruling (`EVT-000045`) and allocation (`EVT-000046`)** |
| EVT-000048 | Event | Reikon Awakening: Warehouse 7 resonance extraction — Thorne's approved attempt, four passes, successful core extraction, MAIN objective complete, no milestone XP to Daedalus (clearing act was Wren's) |
| EVT-000049 | Event | Reikon Awakening: tannery-district E-Rift solo clear, no guardians encountered, full milestone XP awarded (clearing act performed by Daedalus himself) |
| EVT-000050 | Event | Reikon Awakening: ruling flagging Captain Thorne's unauthored assignment-bonus claim, and correcting a prior omission (24 vells from the Ashgate core sale) |
| REL-000048 | Relationship | Reikon Awakening: Daedalus–Wren Ashcombe, professional contact formed for the Warehouse 7 extraction job |
| REC-000061 | Record | Reikon Awakening `saves/900_CHECKPOINT_0017/900_SAVE_MANIFEST.md` — Warehouse 7's resonance resolution and the tannery clear, sequenced after the Stat-cap removal (CP0016) |
| ENT-000087 - ENT-000098 | Entity | World Gatefall (`worlds/gatefall/`) places ledger: 2 cities (Chicago, Prague) and 10 Places — Chicago: Lakefront Gate Corridor, Red Line Corridor, the Cicero Scar, Horizon Tower, BGM Region V Field Office; Prague: Old Town Gate Cluster, Metro Corridor, the Libeň Scar, Karlov House, CGA Headquarters |
| REC-000062 | Record | Gatefall world ledger: `worlds/gatefall/210_PLACES.md` |
| ENT-000099 - ENT-000106 | Entity | World Gatefall institutions: BGM Region V, Horizon Guild, Ironline Guild, Windy City Hunters Coalition, Czech Gate Administration, Karlov Guild, Horizon Guild — Europe, Staroměstská Lodge |
| REC-000063 - REC-000070 | Record | Gatefall institution ledgers: `worlds/gatefall/institutions/{bgm-region-v,horizon-guild,ironline-guild,windy-city-coalition,czech-gate-administration,karlov-guild,horizon-europe,staromestska-lodge}/250_INSTITUTION_LEDGER.md` |
| REL-000049 - REL-000051 | Relationship | Gatefall institutions: BGM Region V's governance jurisdiction over Chicago (049), the Czech Gate Administration's governance jurisdiction over Prague (050), and the Horizon Guild — Europe / Karlov Guild rivalry over Prague's foreign-guild siege (051) |
| ENT-000107 - ENT-000118 | Entity | Gatefall notable figures (`worlds/gatefall/220_NOTABLE_FIGURES.md`): 12 Characters under the character depth law — Chicago: BGM Region V director Naomi Okafor (107), Horizon guildmaster Preston Vaughn (108), Horizon S-rank ace Dominic Crane (109), Ironline guildmaster Dee Brannigan (110), BGM appraiser Nell Foss (111), black-market core buyer "Deacon" (112); Prague: CGA director Miloš Beran (113), Czech S-rank Tereza Blažková (114), Karlov guildmaster Vlastimil Karlov (115), Karlov heir Ivana Karlová (116), Horizon Europe branch chief Ondřej Dušek (117), black-market smuggler "Sova" (118) |
| REC-000071 | Record | Gatefall notable figures ledger: `worlds/gatefall/220_NOTABLE_FIGURES.md` |
| REL-000052 - REL-000061 | Relationship | Gatefall notable figures: ten membership relationships binding each institution-affiliated figure to its institution (Okafor→BGM 052, Vaughn→Horizon 053, Crane→Horizon 054, Brannigan→Ironline 055, Foss→BGM 056, Beran→CGA 057, Blažková→Karlov 058, Karlov→Karlov 059, Karlová→Karlov 060, Dušek→Horizon Europe 061). The two black-market figures (ENT-000112, ENT-000118) hold no institutional membership by design |
| ENT-000119 - ENT-000122 | Entity | Gatefall resources (`worlds/gatefall/240_RESOURCES.md`): 4 world-level Resource entities — mana crystals (119), beast cores (120), graded hunter gear (121), System-shop consumables (122) — each priced from World Rule Profile Sections 11-12 (Anchors A7/A8) |
| REC-000072 | Record | Gatefall resources ledger: `worlds/gatefall/240_RESOURCES.md` |
| EVT-000051 - EVT-000055 | Event | Gatefall seed events (`worlds/gatefall/260_SEED_EVENTS.md`): the Red Line Reading — an unconfirmed D-Gate reading worse than posted (051); the Auction War — Ironline vs Horizon fought through the clearance-contract auction (052); the Old Town Climb — a Gate re-graded upward twice in one cycle, unexplained (053); the Karlov Tilt — the CGA favoring Karlov Guild over a stronger Horizon Europe bid because it holds Blažková's contract (054); the Steepening Curve — the worldwide break-rate acceleration confirmed at regulator tier and left publicly unexplained (055), consistent with `200_WORLD_BIBLE.md` Section 9 without revealing it |
| REC-000073 | Record | Gatefall seed events ledger: `worlds/gatefall/260_SEED_EVENTS.md` |
| ENT-000123 - ENT-000124 | Entity | Gatefall world-ranked S-rank figures appended to `worlds/gatefall/220_NOTABLE_FIGURES.md` (REC-000071): Reid Calloway (123), the highest-ranked American and IGR World Ranking #7, Keystone Guild; Lukas Reinhardt (124), Brandhof's ace and IGR #8, the nearest world-ranked hunter to Prague. Their guilds (Keystone, Brandhof) are bible-level institutions with no entity, so both memberships are prose/canonical_state only and mint no relationship |
| ENT-000125 | Entity | Campaign Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`), initialization: protagonist Alexander Pendragon, pre-System licensed E-rank hunter, Chicago |
| REC-000074 - REC-000081 | Record | Gatefall: Pendragon campaign ledgers (100, 110, 120, 130, 140, 160, 170, 180) |
| EVT-000056 | Event | Gatefall: Pendragon campaign-start event: Alexander Pendragon begins his hunting career in Chicago |
| REL-000062 | Relationship | Gatefall: Pendragon: Alexander's freelancer membership with the Windy City Hunters Coalition |
| EVT-000057 | Event | Reikon Awakening: Decision 073 presence migration — character location corrected from stale ENT-000066 to the tannery-district descriptor; nineteen carried holdings converted to presence-by-possession; 180 presentation prose corrected |
| ENT-000126 - ENT-000129 | Entity | Campaign Gatefall: Pendragon Session 1: campaign-local crew members — Tanya Voss (126), Marcus (127), Elias Voss (128), Dr. Sarah Chen (129) — promoted from world-layer institutional figures to campaign-local named figures through direct play interaction |
| EVT-000058 | Event | Gatefall: Pendragon Session 1: crew assembly and Gate approach (2026-07-23 to 2026-07-24) — Alexander joined Tanya Voss's Red Line Corridor crew, purchased E-grade gear, participated in crew briefing, and assembled at Gate entrance |
| REL-000063 | Relationship | Gatefall: Pendragon Session 1: Alexander's crew membership in Tanya Voss's Red Line Corridor contract crew (five-hunter crew, equal split) |
| ENT-000130 | Entity | Campaign Gatefall: Pendragon Session 1: Kesha Morrison, senior coordinator at the Windy City Hunters Coalition desk — witnessed Alexander's crew contract signing and directed him to gear vendors |
| ENT-000131 | Entity | Campaign Gatefall: Pendragon Session 1: Diane, owner of Ironbound gear shop on Milwaukee Avenue — sold Alexander his E-grade hunting gear and performed custom fitting on gauntlets |
| ENT-000132 | Entity | Campaign Gatefall: Pendragon Session 1: Cutting Edge, custom E-/D-grade gear shop in Chicago's warehouse district — recommended vendor, not visited |
| ENT-000133 | Entity | Campaign Gatefall: Pendragon Session 1: Horizon's outfitter on Michigan Avenue, Horizon Guild-affiliated gear shop — recommended vendor, not visited; Alexander chose Ironbound for better pricing |
| EVT-000059 | Event | Gatefall: Pendragon Session 1: the Red Line Corridor clear and System onset (2026-07-24) — Gate entry (true grade E, archetype Shattered City), full population cleared (9 common, 1 elite, 1 boss) with no crew casualties, System attachment to Alexander (`ENT-000125`) mid-fight per Profile Section 14.7, and the Level 1→2 grant off the elite-kill, common-beast-kill, and boss-kill/Gate-clear-milestone XP. No new entities, records, or relationships minted — the System is not a Persistent Entity (Profile Section 14.1) and lives in `ENT-000125`'s `canonical_state` alone |

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
