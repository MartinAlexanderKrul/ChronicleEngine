# Campaign Changelog - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) indexing campaign state changes.

---

## Record

```yaml
id: REC-000080
canonical_record: REC-000080
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Changes

**2026-07-22 - Campaign initialized.**
Gatefall: Pendragon campaign created in the Gatefall world (`worlds/gatefall/`), start city Chicago, as the world's first live campaign. Protagonist Alexander Pendragon (`ENT-000125`) established: pre-System licensed E-rank, creation stat array Strength 11 / Agility 12 / Vitality 8 / Perception 11 / Intelligence 8 (latent, no mechanical effect until System onset), $4,000 starting funds (stable background, Profile Section 12.6), $30,000 tuition debt at $400/month recorded as a standing liability per Section 20.3. Freelancer affiliation with the Windy City Hunters Coalition recorded (`REL-000062`). Campaign-start event `EVT-000056`. No gameplay resolved yet; no checkpoint taken.

**Repository allocation (2026-07-22).**
Allocated campaign identifiers in `system/ID_REGISTRY.md` in the same initialization change: `ENT-000125`, `REC-000074` through `REC-000081`, `EVT-000056`, and `REL-000062`. Updated `system/WORLDS_AND_CAMPAIGNS.md`: Gatefall world status to Active with 1 live campaign, and added this campaign's row.

**2026-07-23 to 2026-07-24 - Session 1: Crew Assembly (EVT-000058).**

- **2026-07-23, Coalition desk:** Alexander accepted position on Tanya Voss's Red Line Corridor crew (unconfirmed D-grade Gate, timer 2026-07-24 midnight). Signed crew contract with BGM Region V.
- **2026-07-23, Ironbound gear shop:** Purchased E-grade hunter gear for $2,000: reinforced leather jacket ($800), E-grade dagger ($500), reinforced gauntlets ($600), shin guards ($100). Cash remaining: $2,000.
- **2026-07-23 evening, Coalition headquarters:** Briefing by Tanya Voss and Marcus (sensor). Strategy confirmed; crew roles assigned.
- **2026-07-24, 8:00 AM, Red Line Corridor Gate entrance:** Crew assembled and prepared to enter Gate. Participants: Alexander Pendragon (ENT-000125, striker), Tanya Voss (ENT-000126, crew lead/striker), Marcus (ENT-000127, sensor), Elias Voss (ENT-000128, striker), Dr. Sarah Chen (ENT-000129, mender).
- **Ledger updates:** Inventory updated (E-grade gear added, cash $2,000). NPCs and Factions updated (crew members promoted to campaign-local figures). Current State updated (location at Gate, situation, date). Chronicle updated (EVT-000057 recorded).
- **Repository allocation (2026-07-24):** Allocated new campaign-local NPC/location identifiers: `ENT-000126` (Tanya Voss), `ENT-000127` (Marcus), `ENT-000128` (Elias Voss), `ENT-000129` (Dr. Sarah Chen), `ENT-000130` (Kesha Morrison, Coalition coordinator), `ENT-000131` (Diane, Ironbound gear shop owner), `ENT-000132` (Cutting Edge gear shop, warehouse district), `ENT-000133` (Horizon's outfitter on Michigan Avenue). Allocated event identifier `EVT-000058` (Session 1 narrative). Allocated new relationship identifier `REL-000063` (crew membership). Each now carries a full YAML Object Block in its owning ledger (`130`, plus `REL-000063`); `ENT-000132`/`ENT-000133` are authored as minimal Institution (gear-vendor) blocks rather than retired.
- **Objectives:** OBJ-1 (get onto a crew) marked **met**; OBJ-5 (clear the Red Line Corridor with Voss's crew) opened as the live objective. OBJ-2 cushion corrected to $2,000.
- **Checkpoint `900_CHECKPOINT_0001` written (2026-07-24T09:00Z)** at the Red Line Corridor Gate entrance: full copies of all eight canonical ledgers plus `900_SAVE_MANIFEST.md` (new form per Decision 072; captured under the workshop-draft Gatefall Profile 1.0, flagged not save-trustworthy). Declared the latest restorable checkpoint in `180_CURRENT_STATE.md` and named it in `system/WORLDS_AND_CAMPAIGNS.md` in the same change. `tools/validate_repository.ps1` and `tools/test_checkpoint_contract.ps1` both run clean against the resulting state.

**2026-07-24 - Session 1 continued: The Red Line Corridor Clear and System Onset (`EVT-000059`).**

- Entered the Gate at 08:00. True grade resolved E (one below the unconfirmed D assessment); archetype Shattered City. Population rolled: 9 common E beasts, 1 E elite, 1 E boss.
- Full population cleared with no crew casualties: ambush (3 common beasts), open engagement (6 common beasts + elite), boss kill. Full roll-by-roll detail recorded in `EVT-000059`.
- **System onset.** The System attached to Alexander (`ENT-000125`) mid-fight, per World Rule Profile Section 14.7 (first genuine, lethal, uncertain fight). Perceptible to him alone. `100_CHARACTER_SHEET.md` gained a `system_state` block; the prior `latent_stat_array` is marked superseded and retained for provenance.
- Alexander ended the session at **Level 2, XP 40/200, Health 40/40, Mana 20/20, 3 unspent stat points** — via setup-credit kill XP (Section 3.8) for the elite kill, a common-beast kill, and the boss kill, plus the E-Gate clear milestone.
- Sustained two Severe wounds during the fight (beast/elite exchange, boss's opening leap); both resolved through Sarah Chen's field-touches (2 of her 3 per-clear touches spent) and the Level 2 grant's full restore. No lasting injury tier recorded — Health is whole, though the fight is fresh in memory.
- **Ledger updates:** `100` (system_state added, condition/situation updated), `110` (Bearer knowledge note added), `130` (Tanya's and Sarah's situations updated; `REL-000063` state/history updated to reflect the clear), `140` (OBJ-3 tested-and-held, OBJ-5 boss killed/Gate cleared but not yet exited), `160` (`EVT-000059` recorded), `180` (protagonist state, current situation, scene anchor, promotion status).
- **Repository allocation (2026-07-24):** Allocated event identifier `EVT-000059` in `system/ID_REGISTRY.md`. No new entities, records, or relationships were minted this session — the System is not a Persistent Entity (World Rule Profile Section 14.1) and lives entirely in `ENT-000125`'s `canonical_state`; no new NPCs, items, or places were introduced.
- Loot has not yet been collected and the crew has not yet exited the Gate; both remain open for the next session.
- **Checkpoint `900_CHECKPOINT_0002` written**, superseding `900_CHECKPOINT_0001` as the latest restorable checkpoint.

**2026-07-24 to 2026-07-25 - Session 1 continued: Gate Exit, Loot Split, and the System's First Day (`EVT-000060`, `EVT-000061`, `EVT-000062`).**

- **Loot and exit (2026-07-24):** Alexander mined five E-crystals himself under Tanya Voss's field instruction (safe target, vein left partly unworked); combined with nine beast-drop E-crystals, two E-cores, and an E-grade boss-drop armored greave (split undecided), the crew declared the full haul and exited with no incident.
- **Contract close:** standard split ($10,000 contract + ≈$2,850 crystal/core value = ≈$12,850 pool; Alexander's equal-fifth ≈$2,313) — filed with Kesha Morrison 2026-07-25, payment pending 1–2 business days. Crew dispersed that evening; Tanya invited Alexander back for the next posting in a few days.
- **The System's first day (2026-07-25):** first daily quest issued at 06:00 (100 push-ups, 100 sit-ups, 10 km run) and completed same morning; grant accepted (+10 XP → 50/200, +3 unspent points → 6, streak → 1/7). A voluntary extra 10 km confirmed the full-restore grant clears ordinary physical fatigue, not only Health/Mana numbers. Alexander explored `/system`'s full window, focused views, and the shop (0 gold) on his own initiative.
- **Coalition visit (2026-07-25):** Kesha Morrison confirmed the payout timeline and reviewed the live board: two E-D waiver-tier crew openings, a harvest-element hiring trend, and a confirmed D-grade rail-yard harvest slot filed for 2026-07-26 07:00 (`EVT-000061`). He has not yet decided or bought mining gear.
- **Correction, same session (`EVT-000062`):** Kesha's dialogue initially overstated the E-card cap as barring all C-grade work. Checked against the repository's commit history (`d53114b`, already live before this session): support crew (miners, harvesters, porters) may be **any rank** — the legal minimum and the Section 19.4 card cap are a combat/strike-contract requirement only. Corrected before capture: Alexander's E-card caps him out of strike/combat contracts at C-grade and above and their pay, but **not** harvest/support work, which is legally open to him at any grade right now. No fiction, XP, item, or relationship state changed beyond the corrected statement.
- **Ledger updates:** `100` (system_state XP/points/daily-quest fields, capabilities, condition/situation — corrected), `120` (armored greave added, pending-income note added, cash unchanged), `130` (Tanya's, Marcus's, Kesha's situations updated — Kesha's corrected; `REL-000063` state updated to contract-closed), `140` (OBJ-5 complete, OBJ-2 updated, OBJ-6 opened and corrected), `160` (`EVT-000060`, `EVT-000061`, `EVT-000062` recorded), `180` (location, date, situation, scene anchor, promotion status).
- **Repository allocation (2026-07-25):** Allocated event identifiers `EVT-000060`, `EVT-000061`, and `EVT-000062` in `system/ID_REGISTRY.md`. No new entities, records, or relationships minted — the rail-yard contract is tracked as an event (consistent with `EVT-000051`'s treatment of the Red Line posting), not a new Persistent Entity.
- **Checkpoint `900_CHECKPOINT_0003` written**, superseding `900_CHECKPOINT_0002` as the latest restorable checkpoint.

**2026-07-25 to 2026-07-26 - Session 2: The Cicero Scar and Frozen Gallery C-Grade Harvest Jobs (`EVT-000063`, `EVT-000064`).**

- **Cicero Scar job (2026-07-25, `EVT-000063`):** bought a resonance chisel from Diane at Ironbound ($80; cash $2,000→$1,920). Took a confirmed C-grade harvest slot with a corporate-adjacent contractor (logistics: Ada Reyes), declining the never-confirmed D-grade rail-yard interest. Mined 8 C-crystals total across a full roll-by-roll sequence (partial/partial/strong, one natural-critical-fumble shattering a rushed cut, partial, then a private undeclared sale, a legendary-success batch of three, and a final success) — 7 declared, 1 sold privately through the System shop for 170 gold (real, undeclared theft under the standard harvest contract, unknown to any NPC). Allocated all 6 unspent stat points: Strength +2 (11→13), Vitality +2 (8→10, crosses threshold), Intelligence +2 (8→10, crosses threshold).
- **Harvest-share correction:** Ada's off-the-cuff $1,500–2,500 estimate was reworked with the player against actual licensed rates and a Runtime ruling (no harvest-share formula is authored in the world rules — flagged separately as a background task for future authoring). Corrected, canonical, no-scene figure: **≈$5,700** pending.
- **Follow-up at the Coalition:** signed onto a second C-grade harvest slot (Frozen Gallery archetype, confirmed grade) for 2026-07-26, 08:00, under a different site coordinator (Dale) with the same contractor. Confirmed with Kesha that Coalition freelancer registration carries no base salary.
- **Second daily quest (2026-07-26, `EVT-000064`):** issued 06:00, completed same morning under a 2-hour staging deadline — push-ups and sit-ups alternated in sets, the 10 km run doubled as his commute to the job site in full gear. Per Section 3.9, XP and streak applied automatically on completion (+10 XP → 60/200, streak → 2/7); only the +3 stat points/full-restore grant was left deliberately unaccepted. Entered the Frozen Gallery Gate behind the strike element (population: 8 common C beasts, 2 C elites, 1 C boss); no mining resolved yet at this site.
- **Ledger updates:** `100` (system_state stats/gold/daily-quest fields, capabilities, situation), `120` (chisel added, cash updated, second pending-income line added), `130` (Kesha's situation extended; Ada Reyes and Dale added as new figures; `REL-000064` harvest-hire relationship added), `140` (OBJ-2 updated, OBJ-6 superseded, OBJ-7 opened), `160` (`EVT-000063`, `EVT-000064` recorded), `180` (location, date, situation, scene anchor, promotion status).
- **Repository allocation (2026-07-26):** Allocated entity identifiers `ENT-000134` (Ada Reyes) and `ENT-000135` (Dale), relationship identifier `REL-000064`, and event identifiers `EVT-000063` and `EVT-000064` in `system/ID_REGISTRY.md`.
- **Checkpoint `900_CHECKPOINT_0004` written**, superseding `900_CHECKPOINT_0003` as the latest restorable checkpoint.

**2026-07-26 - Session 2 continued: The Frozen Gallery Harvest, Two Veins and a Second Undeclared Sale (`EVT-000065`).**

- **First vein:** full roll-by-roll mining sequence at net +2 (practiced technique) with one push into an untested deeper section (partial success, net +2 held) and a late stretch at reduced net (+1, then 0) as the seam thinned and finally proved spent. 17 crystals mined, all declared to the running count; one major failure (natural 8) on the spent pocket yielded nothing and prompted Dale's call to wrap up and move.
- **Second vein:** a wider, richer assignment near the chamber edge. Continued strong rolls (several capped-100 legendary successes, one natural-2 critical fumble costing a shattered crystal) brought the running total to 23, then to a final 13 after fatigue and a thinning seam reduced the net to 0 for the last two cuts. **Two undeclared private sales** of 12 crystals each (170 g/crystal) were made mid-work through `/system shop` while continuing to appear to work — the first a straightforward circumstance-only concealment roll (strong success), the second made with Dale actively making his rounds nearby, resolved by a natural critical success that overrode the added risk. Neither sale was noticed by Dale or anyone else. Combined with the 170 g already held from the Cicero Scar, gold now stands at **4,250 g**, entirely private and unknown to any NPC.
- **Break:** Alexander asked Dale for five minutes to catch his breath and drink water; Dale granted ten, unbothered and complimentary of his pace, unaware of the dead vein worked minutes earlier or of either private sale.
- **No combat, no XP, no Health/Mana change this span** — mining awards no kill XP under World Rule Profile Section 3; Health and Mana remain full. The pending daily-quest grant remains unaccepted.
- **Ledger updates:** `100` (system_state `gold` field; `capabilities`/`situation` narrative updated), `120` (13 declarable C-crystals added as a held generic holding, gold cross-reference updated), `130` (Dale's `situation` and `REL-000064`'s `state` updated with the job's mid-progress totals), `140` (OBJ-2 gold figure updated, OBJ-7 status updated to mid-job with current declarable count), `160` (`EVT-000065` recorded), `180` (location, situation, scene anchor, promotion status).
- **Repository allocation (2026-07-26):** Allocated event identifier `EVT-000065` in `system/ID_REGISTRY.md`. No new entities, records, or relationships minted — Dale (`ENT-000135`) and `REL-000064` already existed.
- **Checkpoint `900_CHECKPOINT_0005` written**, superseding `900_CHECKPOINT_0004` as the latest restorable checkpoint.

**2026-07-26 - Session 2 continued: The Third Vein, a Third and Fourth Undeclared Sale, and a Read on the Strike Line (`EVT-000066`).**

- **Third vein:** the crew advanced with the strike element to a new chamber after a brief, distant, unthreatening combat noise; Dale assigned Alexander the deepest, richest vein yet, near the strike line's flank. An extended roll-by-roll sequence (net +2 practiced technique, dipping to +1 under fatigue and recovering via a deliberate mid-session recalibration) yielded 74 crystals, including a 16-crystal delegated stretch resolved under explicit player delegation ("continue until I reach at least 15 more crystals") and one always-live critical-tail roll read as exceptional success.
- **Two further undeclared private sales** (12 crystals each, 170 g/crystal) brought this vein's private total to 4,080 gold — combined with the job's existing 4,250, **gold now stands at 8,330**, still unknown to any NPC. The second of the two sales was made with deliberate care (keeping his hands moving throughout) after the near-miss earlier in the session.
- **A performed exhaustion.** Sensing the vein nearing its limit, Alexander deliberately slowed and looked visibly worn out for Dale's benefit. It worked completely — Dale read it as genuine and pulled him off the vein for a mandatory fifteen-minute break rather than the standard five, a real cost to his mining time but no suspicion whatsoever attached to it.
- **Tactical observation.** During the enforced break, Alexander studied the strike element's held position on his own initiative: their formation geometry, then their pre-emptive timing ahead of a barely-perceptible cue. Recorded as qualitative capability growth (an externally-observed framework for reading a coordinated fight), not a stat or mechanical change. Unknown to any NPC.
- **No combat, no XP, no Health/Mana change this span** — mining and the deception/observation rolls are not combat challenges; Health and Mana remain full. The pending daily-quest grant remains unaccepted.
- **Running totals:** 104 crystals mined at the Frozen Gallery across all three veins, 63 in the current declarable count, 48 sold privately across four sales, 8,330 total private gold.
- **Ledger updates:** `100` (system_state `gold` field; `capabilities` appended with the tactical-framework note; `situation` updated), `120` (declarable C-crystal count updated to 63), `130` (Dale's `situation` and `REL-000064`'s `state` updated with the job's running totals), `140` (OBJ-2 gold figure updated, OBJ-7 status and totals updated), `160` (`EVT-000066` recorded), `180` (location, situation, scene anchor, promotion status).
- **Repository allocation (2026-07-26):** Allocated event identifier `EVT-000066` in `system/ID_REGISTRY.md`. No new entities, records, or relationships minted.
- **Checkpoint `900_CHECKPOINT_0006` written**, superseding `900_CHECKPOINT_0005` as the latest restorable checkpoint.
