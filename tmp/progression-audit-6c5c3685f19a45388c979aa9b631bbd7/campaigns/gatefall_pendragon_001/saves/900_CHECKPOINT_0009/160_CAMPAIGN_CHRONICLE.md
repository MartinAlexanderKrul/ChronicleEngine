# Campaign Chronicle - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) preserving campaign events in durable narrative form. It holds the campaign's Events and their narrative record.

---

## Record

```yaml
id: REC-000079
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - EVT-000056
  - EVT-000058
  - EVT-000059
  - EVT-000060
  - EVT-000061
  - EVT-000062
  - EVT-000063
  - EVT-000064
  - EVT-000065
  - EVT-000066
  - EVT-000067
  - EVT-000068
  - EVT-000069
```

---

## EVT-000056 - Alexander Pendragon Begins His Hunting Career

```yaml
id: EVT-000056
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
type: Event
kind: campaign-start
importance: immediate
event_time: "2026-07-22"
participants:
  - ENT-000125
  - ENT-000102
description: "Alexander Pendragon (ENT-000125), one week into an active BGM hunter license carded E-rank, begins the campaign in Chicago (ENT-000087) as a freelancer registered with the Windy City Hunters Coalition (ENT-000102, REL-000062). No System has attached to him; he is an ordinary licensed E-rank whose reputation as the weakest E-rank in the city has so far kept every crew from taking him on. No gameplay has been resolved yet; no checkpoint has been taken."
```

## EVT-000058 - Session 1: Crew Assembly and Gate Approach

```yaml
id: EVT-000058
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-1-gameplay
  event_time: "2026-07-23 to 2026-07-24"
  record_time: "2026-07-24T08:00:00Z"
type: Event
kind: session-gameplay
importance: immediate
event_time: "2026-07-23 to 2026-07-24"
participants:
  - ENT-000125
  - ENT-000126
  - ENT-000127
  - ENT-000128
  - ENT-000129
  - ENT-000102
description: "Alexander Pendragon's first week as an active hunter (2026-07-22 through 2026-07-24). Alexander visited the Windy City Hunters Coalition desk, met Tanya Voss, and accepted a position on her Red Line Corridor crew (ENT-000126, ENT-000127, ENT-000128, ENT-000129). He purchased E-grade hunter gear from Ironbound on Milwaukee Avenue (leather jacket, dagger, gauntlets, shin guards; $2,000 total). The crew assembled at the Red Line Corridor Gate entrance on 2026-07-24 at 8:00 AM for a briefing by Tanya Voss and Marcus. The Gate is an unconfirmed D-grade linear dungeon with a timer breaking at midnight on 2026-07-24. The crew is prepared to enter. No uncertain actions have been resolved; no combat has occurred."
```

## EVT-000059 - Session 1: The Red Line Corridor Clear and System Onset

```yaml
id: EVT-000059
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-1-gameplay
  event_time: "2026-07-24"
  record_time: "2026-07-24T00:00:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-24"
participants:
  - ENT-000125
  - ENT-000126
  - ENT-000127
  - ENT-000128
  - ENT-000129
description: "The crew entered the Red Line Corridor Gate at 08:00. Unconfirmed grade resolved true on first entry (Rules Section 9.5, d100 03): E, one below the posted D. Archetype resolved (d8 06): Shattered City — broken verticality, falls dealing band damage. Population rolled per the standard formula (Section 9.7): 9 common E beasts (3d6=9), 1 E elite (1d2=1), 1 E boss.

Ambush phase: Alexander killed two common beasts by surprise dagger strike (d100 50 -> effective 90 strong success; d100 79 -> effective 100 legendary success), Tanya Voss a third. Open engagement followed: the remaining six common beasts and the elite were fought through by the party (Alexander's contribution d100 76, effective 76, success). A common beast landed a solid hit on Alexander during this push (d100 66, effective 86 strong success against him; Health 40->30) -- his first real wound, and the first time he had ever actually been struck in combat.

That wound was the precipitating incident for System onset (World Rule Profile Section 14.7, owner ruling of 2026-07-24: onset no later than the protagonist's first genuine, lethal, uncertain fight). The System attached mid-exchange: attachment notice and STATUS window granted at creation values (Level 1, XP 0/100, Health 30/40, Mana 20/20, creation stat array). Perceptible to Alexander alone.

Alexander then finished a beast he had crippled in an earlier exchange (d100 66, effective 66 success) with an automatic mercy-blow (no live die -- no kill-XP credit, Section 3.8), and attempted to join Tanya against the elite: first attempt failed (d100 15, effective 35), provoking a punishing counter (d100 90, effective 100 legendary success against him; Health 30->10, a Severe wound). Sarah Chen applied one field-touch (E-band baseline, +10; Health 10->20). Alexander then read the elite's attack pattern (d100 83, effective 100 legendary success), identifying its post-block recovery window, and used it to land a setup strike (d100 26, effective 46 partial success) that staggered the elite; Tanya delivered the kill. Alexander disengaged cleanly (d100 82, effective 82 strong success). Sarah applied a second field-touch (+10; Health 20->30), her second of three per-clear.

The party advanced to the boss chamber: a wrong-jointed, cat-shaped apex predator adapted to the Shattered City's verticality, signature a leaping strike intended to knock a target off a ledge. It opened by targeting the wounded Alexander (d100 88, effective 88 strong success against him; Health 30->10, a second Severe wound), who avoided going over the edge on trained reflex alone. Alexander withdrew to a support position beside Sarah. A first read of the boss found no exploitable pattern (d100 39, effective 39, failure with information); a second read, informed by watching it strike Elias, succeeded completely (d100 83, effective 100 legendary success): the boss's leap leaves it locked and unable to redirect for roughly a second after landing. Alexander called this out to the crew. Tanya baited the leap deliberately; when it landed and locked, Elias and Tanya killed it together.

The boss kill collapsed the Gate, opening its two-hour post-boss window (Section 9.7) and awarding, per Alexander's setup-credit participation (Section 3.8): boss kill XP (10x4=40) and the E-Gate clear milestone (70). Combined with the earlier elite-kill setup credit (20) and the crippling-strike common-beast kill (10), his session total reached 140 XP, crossing the Level 1->2 threshold: +3 unspent stat points, Health and Mana restored to their new maxima (40/40, 20/20). He ends the clear at Level 2, XP 40/200, stats unchanged (11/12/8/11/8), 3 unspent points.

No crew casualties. Loot has not yet been collected; the crew has not yet exited the Gate."
```

## EVT-000060 - Session 1 continued: Gate Exit, Loot Split, and the System's First Day

```yaml
id: EVT-000060
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-1-gameplay
  event_time: "2026-07-24 to 2026-07-25"
  record_time: "2026-07-25T00:00:00Z"
type: Event
kind: session-gameplay
importance: immediate
event_time: "2026-07-24 to 2026-07-25"
participants:
  - ENT-000125
  - ENT-000126
  - ENT-000127
  - ENT-000128
  - ENT-000129
  - ENT-000130
description: "Loot and exit (2026-07-24, post-boss window). Tanya Voss briefed Alexander on the crew's under-strength waiver status (no dedicated harvest element) and handed him a resonance chisel; he mined the exposed vein himself, cutting five E-crystals clean (first cut slow and corrected by Tanya mid-work, subsequent cuts clean once calibrated) against the crew's agreed safe target, choosing not to push the full ~8-crystal vein given the closing window. Combined with nine beast-drop E-crystals and two E-cores (elite, boss) and an E-grade armored greave off the boss (split undecided), the crew declared the full haul at the Gate exit and walked out into Chicago with no further incident, Marcus and Sarah confirming nothing needed further treatment.

Contract close: standard party split (10% leader's share off the top, remaining 90% split equally among all five including the leader) applied to a pool of the $10,000 D-posted contract payout plus ≈$2,850 in beast-drop/mined-crystal and core value at licensed rates (14 E-crystals × $150, 2 E-cores × $375) — total ≈$12,850, Alexander's equal-fifth share ≈$2,313. The crew dispersed that evening; Tanya invited Alexander back for the crew's next posting, expected in a few days, not tomorrow.

Rest and the System's first day (2026-07-24 evening to 2026-07-25). Alexander rested the remainder of 2026-07-24 at home. At the next 06:00 local (2026-07-25), the System issued its first daily quest per World Rule Profile Section 14.7 (100 push-ups, 100 sit-ups, 10 km run, 24-hour deadline, penalty-zone consequence on failure). He completed all three objectives that morning (the last at Lincoln Park's lakefront path) and accepted the completion grant: +10 XP (40→50/200), +3 unspent stat points (3→6), streak 0/7→1/7; Health/Mana already full, unaffected. A voluntary, unrequired second 10 km run confirmed the level/daily grant's full restore is total — it clears ordinary physical fatigue from voluntary exertion, not only the Health/Mana pool numbers. Alexander then explored `/system` on his own initiative (full window, focused views, the interactive shop at 0 gold), confirming its shape without discovering a crafting function.

Coalition visit (2026-07-25). Alexander went to the Windy City Hunters Coalition, spoke with Kesha Morrison: she filed the Red Line contract's payout and crystal-sale paperwork that morning (1–2 business days to clear) and reviewed the live board — two E-D waiver-tier crews short a fifth, a standing ask for harvest-element hires (the crew grapevine had already told her he'd done real mining work), and a confirmed D-grade rail-yard contract with one open harvest slot, filed for 2026-07-26, 07:00 (`EVT-000061`). She initially told him C-grade work was closed to him outright; this was corrected the same day (`EVT-000062`) — his E-card bars only strike/combat contracts at C-grade and above (Profile Section 19.4), not harvest/support work, which is not rank-gated (Section 9.4). Alexander does not yet own a mining tool, needed for harvest work; he has not yet decided which opportunity, if any, to take."
```

## EVT-000061 - The Rail-Yard D-Grade Contract, Posted

```yaml
id: EVT-000061
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-1-gameplay
  event_time: "2026-07-25"
  record_time: "2026-07-25T00:00:00Z"
type: Event
kind: world-fact
importance: background
event_time: "2026-07-25"
participants:
  - ENT-000130
description: "A confirmed D-grade Gate near Chicago's old rail yards is posted on the Coalition board with one open harvest-element slot, filed by the crew running it for 2026-07-26, 07:00. Pay is a harvest share off whatever the crew mines, not a full strike split. Named to Alexander by Kesha Morrison (`ENT-000130`) on 2026-07-25 (`EVT-000060`) as a live option; he has neither accepted nor declined it. No crew members, exact contract terms beyond the harvest-share arrangement, or Gate archetype are established beyond what Kesha stated."
```

## EVT-000062 - Ruling: Correcting the E-Card Contract-Tier Cap

```yaml
id: EVT-000062
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-07-25"
  record_time: "2026-07-25T00:00:00Z"
type: Event
kind: correction
importance: background
event_time: "2026-07-25"
participants:
  - ENT-000125
  - ENT-000130
description: "Correction to `EVT-000060`. Kesha Morrison's dialogue there stated that Alexander's carded E-rank legally barred him from C-grade work outright. That overstated Profile Section 19.4 in light of the standing world-rule amendment `d53114b` (support crew — miners, harvesters, porters — may be any rank; the legal minimum and the Section 19.4 card cap are a **combat/strike-contract** requirement only, per Section 9.4). Corrected statement: Alexander's E-card caps him out of **strike/combat** contracts at C-grade and above and their pay (Section 19.4) — it does not gate harvest/support work at any grade, which is not rank-restricted (Section 9.4). He may legally take a C- or even higher-grade Gate's harvest-element work right now, card notwithstanding, provided one is posted; none has specifically been named to him beyond the confirmed D-grade rail-yard slot (`EVT-000061`). No fiction changes beyond Kesha's corrected statement and Alexander's corrected understanding; no XP, item, or relationship state is affected."
```

## EVT-000063 - The Cicero Scar C-Grade Harvest Job

```yaml
id: EVT-000063
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-25"
  record_time: "2026-07-25T23:00:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-25"
participants:
  - ENT-000125
  - ENT-000130
  - ENT-000131
  - ENT-000134
description: "Alexander returned to the Coalition and asked Kesha Morrison whether anything was available that day; she checked the board properly this time and surfaced a confirmed C-grade harvest-element slot at the Cicero Scar with a corporate-adjacent contractor, staging that afternoon (displacing his unconfirmed interest in the D-grade rail-yard slot, `EVT-000061`). He bought a resonance chisel from Diane at Ironbound for $80 (cash $2,000→$1,920) and made it to staging in time.

Logistics coordinator Ada Reyes (`ENT-000134`) briefed the harvest crew: follow the strike element in, work only secured ground, drop and move on any fall-back call. The strike element cleared the Gate's population (archetype Shattered City again) in a single push before support entered. Alexander was assigned a rich vein and mined it across the operation:

- First cut: natural 35, net +1 (untrained solo, no mentor) → effective 55, partial success. Crystal whole but slow.
- Watched two veteran harvesters' technique (read the resonance shift before striking, instead of correcting mid-swing), technique upgrade to net +2; second cut: natural 19 → effective 59, partial success (a stubborn pocket even with better form). Two good crystals.
- Third cut, technique consolidated further at the same net +2: natural 49 → effective 89, strong success. Three good crystals.
- Allocated 2 of 6 unspent stat points to Strength (11→13) — did not cross the next modifier-step threshold (still +1 step; next at 20).
- Rushed fourth cut under a 2-minute fall-back deadline: natural **2**, a critical fumble — always live regardless of any modifier — crystal shattered, zero gained. Still three good crystals.
- Moved to a new position with the advancing line (boss not yet engaged). Cut, unhurried this time, net +2 (no rush penalty): natural 7 → effective 47, partial success (an awkward pocket even done carefully). Four good crystals.
- Allocated remaining 4 points: 2 to Vitality (8→10), 2 to Intelligence (8→10) — both crossed the baseline-10 threshold, each now contributing its first modifier step. Unspent points 6→0.
- **Undeclared private sale:** opened `/system shop` while appearing to keep working and sold 1 C-crystal for 170 gold — natural 53, net 0 (no stat governs self-concealment; circumstance-only) → effective 53, partial success: the sale itself is unwitnessable (System-only), but a nearby veteran harvester noticed him standing idle and gave him an odd look. This is real, undeclared theft under the standard harvest contract (Profile Section 13.2 — 'undeclared loot taken inside is theft under the contract'), known to no NPC. Declarable crystal count: 4→3.
- Resumed focused, unhurried work for the remainder of the position, net +2: natural 82 → effective 100 (capped), legendary success — three more crystals, clean. Declarable count 3→6.
- Boss killed by the strike element (heard, not witnessed). Two-hour window opened. One final cut before wrap-up, net +2: natural 37 → effective 77, success. Declarable count 6→7.

Declared 7 C-crystals to Ada Reyes at the Gate mouth; she logged them, calling it an above-average first showing (most first-timers bring back four or five). She gave an off-the-cuff, unverified payout estimate of $1,500–2,500. On reflection with the player, this was corrected: the operation's total declared sellable pool (7 beast-drop C-crystals + 19 total declared mined crystals from the 5-hunter harvest crew + 2 cores) values at ≈$77,500 at licensed rates; by Runtime ruling (no harvest-share formula is authored in the world rules — a gap flagged separately for future authoring), the harvest crew collectively receives 20% of total pool value, split weighted by individual declared mined-crystal contribution. Alexander's 7 of 19 declared mined crystals (≈36.8%) of the ≈$15,500 harvest-crew cut yields **≈$5,700** — the corrected, canonical pending figure, quietly, without an in-fiction correction scene.

Back at the Coalition, Alexander asked Kesha about further C-grade mining work; she found a second confirmed C-grade harvest slot with the same contractor for 2026-07-26, 08:00 (logistics run by a different coordinator, Dale — `ENT-000135`), and pulled him off the never-confirmed rail-yard interest to sign him onto it instead. He also asked whether Coalition registration itself pays anything; Kesha confirmed no — freelance income comes only from work actually taken, no base salary."
```

## EVT-000064 - The Second Daily Quest and the Frozen Gallery C-Grade Job

```yaml
id: EVT-000064
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-26"
  record_time: "2026-07-26T09:00:00Z"
type: Event
kind: session-gameplay
importance: immediate
event_time: "2026-07-26"
participants:
  - ENT-000125
  - ENT-000135
description: "At 06:00 on 2026-07-26 the System issued Alexander's second daily quest (100 push-ups, 100 sit-ups, 10 km run), with only two hours before an 08:00 staging deadline for the Frozen Gallery job. He alternated push-up and sit-up sets to finish both to 100/100 efficiently, then worked out that running the 10 km route to the job site in full gear could double as both the daily quest's run and his commute — completing it in harder conditions than his first, leisurely lakefront run, arriving at staging with minutes to spare. Per Section 3.9 (the same split that applies to a level-up: the threshold advances immediately, only the grant waits), completion applied its XP and streak progress automatically — +10 XP (50→60/200), streak 1/7→2/7 — while the +3 stat points and full Health/Mana restore grant was left deliberately unaccepted, choosing instead to hydrate and present himself to the new site's coordinator.

Dale (`ENT-000135`) greeted him, already briefed by Ada Reyes's word that he was a reliable cutter. Confirmed C-grade Gate; archetype rolled d8 8 → **Frozen Gallery** (deep cold, halved Mana recovery inside per Profile Section 5.2 — flavor-relevant to Alexander's unrevealed Bearer status, no mechanical effect yet since he holds no Mana-costing skill). Population rolled per the standard C-grade formula: 3d6=8 common C beasts, 1d2=2 C elites, 1 C boss. The strike element entered first and secured the ground; Alexander entered behind them with the rest of the harvest crew. No mining has been resolved yet at this site as of this checkpoint."
```

## EVT-000065 - The Frozen Gallery Harvest: Two Veins and a Second Undeclared Sale

```yaml
id: EVT-000065
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-26"
  record_time: "2026-07-26T11:00:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-26"
participants:
  - ENT-000125
  - ENT-000135
description: "Alexander worked two vein assignments inside the Frozen Gallery under Dale's (`ENT-000135`) logistics, with no combat resolved this span (strike element handled the population out of sight; no kills credited to Alexander).

**First vein (Dale's initial assignment).** Full roll-by-roll sequence at net +2 (practiced Cicero Scar technique) unless noted: success (d100 27, eff 67) — 1; strong success (42, eff 82) — 1; strong success (41, eff 81, deliberately working harder for warmth) — 1; strong success (49, eff 89) — 1; partial success pushing into an untested deeper section (17, eff 57) — 1; legendary success after recalibrating to the vein's layered structure (95, eff 100) — 3; exceptional success (59, eff 99) — 2; legendary success (65, eff 100) — 3; success working slower and more carefully as the seam thinned (34, eff 74) — 1; legendary success at net +1 (thinning seam offsetting technique) (85, eff 100) — 3; major failure working a genuinely spent pocket at net 0 (8, eff 8) — 0, no crystal, prompting Dale's five-minute wrap-up call. Vein total: **17 crystals**, all declared to the running count, none sold.

**Move to second location.** Crew relocated to a new chamber; Dale offered Alexander an unclaimed, wider/richer vein near the chamber edge, close to the strike element's forward watch position.

**Second vein.** Full roll-by-roll sequence at net +2 unless noted: exceptional success (56, eff 96) — 2; partial success (11, eff 51) — 1 (running total 20). **Undeclared private sale #1:** opened `/system shop` while continuing to work, sold 12 crystals for 12 × 170 = 2,040 gold (strong success, d100 86, net 0 circumstance-only — no odd looks this time; declarable count 20→8; gold 170→2,210). Continued: legendary (91, eff 100) — 3; legendary (91, eff 100) — 3; critical fumble (natural 2, always live) — 0, no crystal, shattered on a rushed angle; legendary (67, eff 100) — 3; legendary (91, eff 100) — 3; legendary (82, eff 100) — 3 (running total 23, a harvester audibly complimented his pace). **Undeclared private sale #2:** sold another 12 crystals for 2,040 gold, this time with Dale actively making rounds nearby — critical success (natural 96, always live, overriding the −1 circumstance step for Dale's proximity) — undetected; declarable count 23→11; gold 2,210→4,250. Continued at net 0 (thinning vein + rising fatigue offsetting technique): strong success (83, eff 83) — 1; partial success (45, eff 45) — 1 (running total 13).

**Break.** Alexander asked Dale for a five-minute break to catch his breath and drink water; Dale readily granted it (ten minutes, in fact), remarking that Ada's word about his pace hadn't been an exaggeration, with no suspicion attached to the request or to the dead vein he'd worked moments before the call to move.

**Running totals as of this checkpoint (job in progress, not yet declared to Dale's manifest, no exit and no boss kill yet):** 30 crystals mined across both veins (17 + 13), of which 24 were privately sold through the System shop (2 × 12) and never entered the declarable count; **13 crystals remain in the current declarable count**, pending formal declaration at the Gate's eventual exit. Total private gold from this job's two sales: 4,080 g, on top of the 170 g carried in from the Cicero Scar job — **current gold: 4,250 g**, entirely unknown to any NPC, including Dale. This is real, repeated theft under the standard harvest contract (Profile Section 13.2), now compounding what began at the Cicero Scar. No XP, Health, or Mana change this span — mining is not a combat challenge and awards no kill XP; Health and Mana remain full. The pending daily-quest grant (+3 stat points, full restore) remains unaccepted."
```

## EVT-000066 - The Third Vein, a Third and Fourth Undeclared Sale, and a Read on the Strike Line

```yaml
id: EVT-000066
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-26"
  record_time: "2026-07-26T12:30:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-26"
participants:
  - ENT-000125
  - ENT-000135
description: "Following the break granted at the end of `EVT-000065`, the harvest crew advanced with the strike element into a new, larger chamber. Distant combat noise reached the crew once, brief and unthreatening (the strike line held position throughout; nothing advanced on the harvest crew). Dale assigned Alexander a third vein — deeper and richer than either prior assignment — near the strike line's flank.

**Mining, third vein.** Extended roll-by-roll sequence at net +2 (practiced technique) unless noted, occasionally dropping to net +1 as fatigue told (85 eff via +1 step; 25 eff via +1 step) and recovering to net +2 after a deliberate mid-session recalibration toward a lower-effort, higher-precision method (mirroring the Cicero Scar/first-Gallery-vein recalibrations). The sequence ran overwhelmingly to strong/legendary results with several capped-100 legendary triples, interspersed with successes and partial successes; a delegated stretch (explicit player delegation: 'continue until I reach at least 15 more crystals') resolved nine further rolls at net +2, yielding 16 crystals in one compressed pass. One roll (natural 97) landed in the always-live critical tail, read as exceptional success. Total mined this vein: **74 crystals**.

**Undeclared private sale #3:** 12 crystals sold via `/system shop` mid-work (strong success, net 0, no tell). **Undeclared private sale #4:** a further 12 crystals sold with deliberate care to keep his hands moving after the earlier near-miss (success, net +1). Combined: 4,080 gold this vein, on top of the Frozen Gallery job's already-existing 4,250 — **gold now 8,330**, entirely private, unknown to any NPC.

**A performed exhaustion, and a real pull from the vein.** Sensing the vein nearing its limit and wanting to look ordinary rather than exceptional, Alexander deliberately slowed and performed visible fatigue for Dale's benefit on his next round. It worked, and then some (partial success, net 0): Dale, reading it as genuine overexertion, pulled him off the vein for a mandatory 15-minute break rather than the standard five — an unplanned real cost, not just cover, though it drew no suspicion whatsoever.

**Observing the strike line.** During the break, Alexander studied the strike element's held position on his own initiative — first their formation geometry and stance trade-offs (success, net +1, Perception), then their timing and pre-emptive positional shifts ahead of a distant, barely-perceptible cue (legendary success, net +1, Perception). Neither roll altered any tracked stat or granted a mechanical bonus; both are recorded as qualitative capability growth — an externally-observed framework for reading a fight's rhythm, distinct from and complementary to his own established pattern-reading demonstrated in the Red Line Corridor (`EVT-000059`). No NPC is aware this observation occurred or what conclusions he drew from it.

**Running totals as of this checkpoint (job still in progress; no boss engaged, no exit, no formal declaration to Dale):** 63 crystals in the current declarable count (13 carried in from Checkpoint 0005, +74 mined this vein, −24 sold this vein). Gold: 8,330 (4,250 carried in, +4,080 this vein). No XP, Health, or Mana change — mining and the deception/observation rolls are not combat challenges; Health and Mana remain full. The pending daily-quest grant remains unaccepted."
```

## EVT-000067 - Vein's End, the Daily Grant Accepted, a Fifth Sale, a Near-Miss, and the Boss Falls

```yaml
id: EVT-000067
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-26"
  record_time: "2026-07-26T14:00:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-26"
participants:
  - ENT-000125
  - ENT-000135
description: "Continuing from `EVT-000066`, Alexander accepted his pending daily-quest grant mid-work (+3 unspent stat points; Health/Mana already full so the restore was cosmetic only — `system_state.unspent_points` 0→3, `pending_grants` cleared). Established precedent (`EVT-000060`) holds that the grant's full restore also clears ordinary physical fatigue, not only pool numbers; one mining stretch was initially misresolved against a fatigue penalty that should not have applied and was corrected in play by re-reading the same natural rolls at the un-penalized modifier (net +2 instead of +1), adding 2 crystals the error had cost.

**Continued mining, third vein (to exhaustion).** Further extended rolling at net +2 (no fatigue, technique holding) pushed the declarable count from 91→104→124 across two further batches (one delegated by the player as 'another batch work'), before a **fifth undeclared private sale of 50 crystals** — a natural-3 critical fumble on the concealment roll — dropped it to 74. The much larger transaction produced an extended, obvious stillness this time; Dale (`ENT-000135`) crossed the chamber directly and challenged Alexander outright, the first time genuine suspicion (not casual concern) was directed at him. Alexander's explanation — that reading a vein requires the same still, unbroken focus as reading his own status window, which is honestly true as far as it goes — resolved successfully (net 0, success) and Dale stood down, though visibly more watchful afterward. Mining resumed and continued (exceptional and mixed successes) to 87, then a final push at net +1 (vein genuinely thinning) carried it to **91**, at which point the vein read as truly spent — no give, no resonance, done.

**Fifth sale total:** 50 crystals × 170 g = 8,500 gold. Combined with the 8,330 carried in from Checkpoint 0006, **gold now stands at 16,830**, entirely private, unknown to any NPC including Dale, despite his heightened wariness.

**The boss falls; the clear window opens.** While Alexander was finishing the vein and then helping another (unnamed) harvester finish theirs — one crystal credited to that harvester's own declared tally, not Alexander's — the strike element killed the Frozen Gallery's boss off-screen, resolving the Gate's population per World Rule Profile Section 9.7 by ordinary world simulation (no player-facing roll; the fight was never witnessed). The kill opened the standard two-hour clear window (Section 9.7); Dale relayed the call to the harvest crew and began organizing a declaration queue at the Gate mouth. Alexander deliberately positioned himself mid-queue — neither first nor last — and is listening to other harvesters' declared totals (the highest overheard, 16, from the harvester he'd just helped) while deciding what, if anything, to sell privately before his own turn at the tally screen. His declarable count of 91 dwarfs every other number he's heard.

No XP, Health, or Mana change this event — no combat resolved for Alexander; Health and Mana remain full (40/40, 20/20). 3 unspent stat points await allocation."
```

## EVT-000068 - Formal Declaration, Exit, and the Frozen Gallery Harvest-Share Ruling

```yaml
id: EVT-000068
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-07-26"
  record_time: "2026-07-26T20:00:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-26"
participants:
  - ENT-000125
  - ENT-000135
description: "Before his turn, Alexander made a sixth undeclared private sale — 50 crystals, using a stretching cover for the extended transaction (partial success, net 0): the sale itself was unwitnessable as always, but Dale caught the unnatural pause in the stretch from across the chamber. He did not approach or challenge it this time, watching only, visibly still more guarded than before the Cicero Scar job. Sale total: 50 × 170 = 8,500 gold; combined with the 16,830 carried in, **gold now stands at 25,330**.

At his turn, Alexander declared **41 C-crystals** to Dale — the highest single total of the day by a wide margin, well ahead of the other overheard declarations (11, 14, 9, 16). Dale logged it without scrutiny, praised the pace across both jobs, and, asked directly, confirmed the contractor occasionally takes B-grade harvest contracts when one comes through — none currently posted, but Alexander would be near the top of the list given his track record. Alexander confirmed his interest in future B- or C-grade harvest work before departing on good terms, exited the Gate with the rest of the crew, and returned home for the evening. No further mining, sales, or contact this event.

**Harvest-share ruling (Profile Section 13.2, Runtime ruling — ex-scene, no fiction changed).** The Frozen Gallery's 5-hunter harvest crew declared a combined 91 C-crystals (Alexander's 41, plus overheard totals of 16, 14, 11, and 9 from the other four harvesters). The Gate's killed population (`EVT-000064`: 8 common C beasts, 2 C elites, 1 C boss = 11 kills) yielded 11 beast-drop C-crystals and 3 C-cores (elites + boss). Total declared pool at licensed rates (Section 12.1): 91 × $2,500 (mined) + 11 × $2,500 (beast-drop) + 3 × $6,250 (cores) = $227,500 + $27,500 + $18,750 = **$273,750**. The harvest share is 20% off the top: $273,750 × 0.20 = **$54,750**, split output-weighted among the 5-hunter crew. Alexander's cut: 41 of the crew's 91 declared crystals → 41/91 × $54,750 ≈ **$24,663**, filed with the contractor at declaration, payout pending 1–2 business days per the standing pattern (`EVT-000060`, `EVT-000063`). This is his third and by far largest pending USD payout, alongside the Red Line split (≈$2,313) and the Cicero Scar harvest share (≈$5,700).

The Frozen Gallery C-grade harvest job is complete: contract closed, no further obligation to this crew or site. The 91 declared crystals are no longer in Alexander's physical possession, surrendered to the contractor's pool at declaration; only the privately sold gold (25,330, entirely his) and USD payouts (pending, not yet received) reflect his actual gain from the job. No XP, Health, or Mana change — no combat resolved. 3 unspent stat points remain unallocated."
```

## EVT-000069 - A Rest Day: Shop Purchases, Private Practice, the Third Daily Quest, and Priya Okafor's Crew

```yaml
id: EVT-000069
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-27"
  record_time: "2026-07-27T09:00:00Z"
type: Event
kind: session-gameplay
importance: minor
event_time: "2026-07-27"
participants:
  - ENT-000125
  - ENT-000130
  - ENT-000136
description: "Alexander took his declared rest day. That evening (2026-07-26) he called the Coalition's after-hours line about E-grade striker/combat contracts (distinct from harvest work); Kesha Morrison, covering the desk, confirmed two open waiver-tier crew slots and that Tanya Voss's crew was not yet back on the boards, and offered to call back in the morning with more detail rather than dig further that night.\n\n**Shop purchases (evening of 2026-07-26).** Through `/system shop`, Alexander bought a C-grade dagger (2,000 g) and an instant-dungeon key at his own E-band (500 g). Gold: 25,020 → 22,520. Both settle into the dimensional inventory (Profile Section 12.9) — private, weightless, undetectable.\n\n**Private practice (same evening).** Alexander tested the pocket-dimension exchange by repeatedly dismissing and summoning the new dagger, confirming it carries no perceptible delay in either direction — a genuine free action, exactly as described. He then drilled, slow to fast in front of a mirror, switching his grip from the old E-grade dagger to the new C-grade one mid-flourish, disguised as an ordinary grip adjustment. After a dozen reps he produced a version with no visible stutter or tell. Neither test was witnessed by anyone; this is recorded as a demonstrated qualitative technique in progress, not yet validated against a real observer.\n\n**Third daily quest (2026-07-27).** Issued 06:00 (100 push-ups, 100 sit-ups, 10 km run). Alexander completed the calisthenics at home in sets of 20 with short rests, then ran the 10 km at a nearby park, phone on him. Per Section 3.9's split, completion's XP and streak applied automatically (+10 XP → 70/200, streak 2/7 → 3/7); the +3 stat points/full-restore grant was deliberately **deferred**, banked for later.\n\n**Stat allocation.** Separately from the deferred grant, Alexander's 3 already-held unspent points (from the `EVT-000067` grant) were allocated entirely into Strength: 13 → 16. Unspent points 3 → 0.\n\n**Kesha's callback and Priya Okafor's crew.** Mid-run, Kesha called as promised: both waiver-tier crews were still open, one led by striker Priya Okafor (`ENT-000136`, newly named), short a fifth for about a week; the other rougher, having churned two fifth-slot hunters in a month. Alexander asked after Okafor's contract specifically: an unconfirmed E-D Gate (Assessment reading low-confidence D), timer breaking 2026-07-29 midnight, Okafor looking to stage as soon as she can round out the crew — potentially the next morning. Alexander committed to the slot, asked Kesha to request a 9 AM staging time rather than the general morning, and thanked her. Kesha undertook to relay the request and confirm back, defaulting to 9 AM absent word otherwise. No contract signed yet; recorded as pending (`REL-000065`).\n\nNo combat, no injury, no Health/Mana change beyond the ordinary daily-quest XP tick. Gold now 22,520. 0 unspent stat points; one deferred grant banked."
```
