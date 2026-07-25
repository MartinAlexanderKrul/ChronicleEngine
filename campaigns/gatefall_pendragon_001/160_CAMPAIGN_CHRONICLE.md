# Campaign Chronicle - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) preserving campaign events in durable narrative form. It holds the campaign's Events and their narrative record.

---

## Record

```yaml
id: REC-000079
canonical_record: REC-000079
schema_version: "0.1.3"
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
  - EVT-000070
  - EVT-000071
  - EVT-000072
  - EVT-000073
  - EVT-000074
  - EVT-000075
  - EVT-000076
  - EVT-000077
  - EVT-000078
  - EVT-000079
  - EVT-000080
  - EVT-000081
  - EVT-000082
  - EVT-000083
  - EVT-000084
```

---

## EVT-000056 - Alexander Pendragon Begins His Hunting Career

```yaml
id: EVT-000056
canonical_record: REC-000079
schema_version: "0.1.3"
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
description: "Alexander Pendragon (ENT-000125), one week into an active BGM hunter license carded E-Rank, begins the campaign in Chicago (ENT-000087) as a freelancer registered with the Windy City Hunters Coalition (ENT-000102, REL-000062). No System has attached to him; he is an ordinary licensed E-Rank whose reputation as the weakest E-Rank in the city has so far kept every crew from taking him on. No gameplay has been resolved yet; no checkpoint has been taken."
```

## EVT-000058 - Session 1: Crew Assembly and Gate Approach

```yaml
id: EVT-000058
canonical_record: REC-000079
schema_version: "0.1.3"
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
description: "Alexander Pendragon's first week as an active hunter (2026-07-22 through 2026-07-24). Alexander visited the Windy City Hunters Coalition desk, met Tanya Voss, and accepted a position on her Red Line Corridor crew (ENT-000126, ENT-000127, ENT-000128, ENT-000129). He purchased E-Rank hunter gear from Ironbound on Milwaukee Avenue (leather jacket, dagger, gauntlets, shin guards; $2,000 total). The crew assembled at the Red Line Corridor Gate entrance on 2026-07-24 at 8:00 AM for a briefing by Tanya Voss and Marcus. The Gate is an unconfirmed D-Rank linear dungeon with a timer breaking at midnight on 2026-07-24. The crew is prepared to enter. No uncertain actions have been resolved; no combat has occurred."
```

## EVT-000059 - Session 1: The Red Line Corridor Clear and System Onset

```yaml
id: EVT-000059
canonical_record: REC-000079
schema_version: "0.1.3"
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
description: "The crew entered the Red Line Corridor Gate at 08:00. Unconfirmed Rank resolved true on first entry (Rules Section 9.5, d100 03): E, one below the posted D. Archetype resolved (d8 06): Shattered City — broken verticality, falls dealing Rank damage. Population rolled per the standard formula (Section 9.7): 9 common E-Rank beasts (3d6=9), 1 E-Rank elite (1d2=1), 1 E-Rank boss.

Ambush phase: Alexander killed two common beasts by surprise dagger strike (d100 50 -> effective 90 strong success; d100 79 -> effective 100 legendary success), Tanya Voss a third. Open engagement followed: the remaining six common beasts and the elite were fought through by the party (Alexander's contribution d100 76, effective 76, success). A common beast landed a solid hit on Alexander during this push (d100 66, effective 86 strong success against him; Health 40->30) -- his first real wound, and the first time he had ever actually been struck in combat.

That wound was the precipitating incident for System onset (World Rule Profile Section 14.7, owner ruling of 2026-07-24: onset no later than the protagonist's first genuine, lethal, uncertain fight). The System attached mid-exchange: attachment notice and STATUS window granted at creation values (Level 1, XP 0/100, Health 30/40, Mana 20/20, creation stat array). Perceptible to Alexander alone.

Alexander then finished a beast he had crippled in an earlier exchange (d100 66, effective 66 success) with an automatic mercy-blow (no live die -- no kill-XP credit, Section 3.8), and attempted to join Tanya against the elite: first attempt failed (d100 15, effective 35), provoking a punishing counter (d100 90, effective 100 legendary success against him; Health 30->10, a Severe wound). Sarah Chen applied one field-touch (E-Rank baseline, +10; Health 10->20). Alexander then read the elite's attack pattern (d100 83, effective 100 legendary success), identifying its post-block recovery window, and used it to land a setup strike (d100 26, effective 46 partial success) that staggered the elite; Tanya delivered the kill. Alexander disengaged cleanly (d100 82, effective 82 strong success). Sarah applied a second field-touch (+10; Health 20->30), her second of three per-clear.

The party advanced to the boss chamber: a wrong-jointed, cat-shaped apex predator adapted to the Shattered City's verticality, signature a leaping strike intended to knock a target off a ledge. It opened by targeting the wounded Alexander (d100 88, effective 88 strong success against him; Health 30->10, a second Severe wound), who avoided going over the edge on trained reflex alone. Alexander withdrew to a support position beside Sarah. A first read of the boss found no exploitable pattern (d100 39, effective 39, failure with information); a second read, informed by watching it strike Elias, succeeded completely (d100 83, effective 100 legendary success): the boss's leap leaves it locked and unable to redirect for roughly a second after landing. Alexander called this out to the crew. Tanya baited the leap deliberately; when it landed and locked, Elias and Tanya killed it together.

The boss kill collapsed the Gate, opening its two-hour post-boss window (Section 9.7) and awarding, per Alexander's setup-credit participation (Section 3.8): boss kill XP (10x4=40) and the E-Rank Gate clear milestone (70). Combined with the earlier elite-kill setup credit (20) and the crippling-strike common-beast kill (10), his session total reached 140 XP, crossing the Level 1->2 threshold: +3 unspent stat points, Health and Mana restored to their new maxima (40/40, 20/20). He ends the clear at Level 2, XP 40/200, stats unchanged (11/12/8/11/8), 3 unspent points.

No crew casualties. Loot has not yet been collected; the crew has not yet exited the Gate."
```

## EVT-000060 - Session 1 continued: Gate Exit, Loot Split, and the System's First Day

```yaml
id: EVT-000060
canonical_record: REC-000079
schema_version: "0.1.3"
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
description: "Loot and exit (2026-07-24, post-boss window). Tanya Voss briefed Alexander on the crew's under-strength waiver status (no dedicated harvest element) and handed him a resonance chisel; he mined the exposed vein himself, cutting five E-Rank crystals clean (first cut slow and corrected by Tanya mid-work, subsequent cuts clean once calibrated) against the crew's agreed safe target, choosing not to push the full ~8-crystal vein given the closing window. Combined with nine beast-drop E-Rank crystals and two E-Rank cores (elite, boss) and an E-Rank armored greave off the boss (split undecided), the crew declared the full haul at the Gate exit and walked out into Chicago with no further incident, Marcus and Sarah confirming nothing needed further treatment.

Contract close: standard party split (10% leader's share off the top, remaining 90% split equally among all five including the leader) applied to a pool of the $10,000 D-posted contract payout plus ≈$2,850 in beast-drop/mined-crystal and core value at licensed rates (14 E-Rank crystals × $150, 2 E-Rank cores × $375) — total ≈$12,850, Alexander's equal-fifth share ≈$2,313. The crew dispersed that evening; Tanya invited Alexander back for the crew's next posting, expected in a few days, not tomorrow.

Rest and the System's first day (2026-07-24 evening to 2026-07-25). Alexander rested the remainder of 2026-07-24 at home. At the next 06:00 local (2026-07-25), the System issued its first daily quest per World Rule Profile Section 14.7 (100 push-ups, 100 sit-ups, 10 km run, 24-hour deadline, penalty-zone consequence on failure). He completed all three objectives that morning (the last at Lincoln Park's lakefront path) and accepted the completion grant: +10 XP (40→50/200), +3 unspent stat points (3→6), streak 0/7→1/7; Health/Mana already full, unaffected. A voluntary, unrequired second 10 km run confirmed the level/daily grant's full restore is total — it clears ordinary physical fatigue from voluntary exertion, not only the Health/Mana pool numbers. Alexander then explored `/system` on his own initiative (full window, focused views, the interactive shop at 0 gold), confirming its shape without discovering a crafting function.

Coalition visit (2026-07-25). Alexander went to the Windy City Hunters Coalition, spoke with Kesha Morrison: she filed the Red Line contract's payout and crystal-sale paperwork that morning (1–2 business days to clear) and reviewed the live board — two E-Rank–D-Rank waiver-tier crews short a fifth, a standing ask for harvest-element hires (the crew grapevine had already told her he'd done real mining work), and a confirmed D-Rank rail-yard contract with one open harvest slot, filed for 2026-07-26, 07:00 (`EVT-000061`). She initially told him C-Rank work was closed to him outright; this was corrected the same day (`EVT-000062`) — his E-Rank card bars only strike/combat contracts at C-Rank and above (Profile Section 19.4), not harvest/support work, which is not rank-gated (Section 9.4). Alexander does not yet own a mining tool, needed for harvest work; he has not yet decided which opportunity, if any, to take."
```

## EVT-000061 - The Rail-Yard D-Rank Contract, Posted

```yaml
id: EVT-000061
canonical_record: REC-000079
schema_version: "0.1.3"
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
description: "A confirmed D-Rank Gate near Chicago's old rail yards is posted on the Coalition board with one open harvest-element slot, filed by the crew running it for 2026-07-26, 07:00. Pay is a harvest share off whatever the crew mines, not a full strike split. Named to Alexander by Kesha Morrison (`ENT-000130`) on 2026-07-25 (`EVT-000060`) as a live option; he has neither accepted nor declined it. No crew members, exact contract terms beyond the harvest-share arrangement, or Gate archetype are established beyond what Kesha stated."
```

## EVT-000062 - Ruling: Correcting the E-Rank–C-Rankard Contract-Tier Cap

```yaml
id: EVT-000062
canonical_record: REC-000079
schema_version: "0.1.3"
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
description: "Correction to `EVT-000060`. Kesha Morrison's dialogue there stated that Alexander's carded E-Rank legally barred him from C-Rank work outright. That overstated Profile Section 19.4 in light of the standing world-rule amendment `d53114b` (support crew — miners, harvesters, porters — may be any rank; the legal minimum and the Section 19.4 card cap are a **combat/strike-contract** requirement only, per Section 9.4). Corrected statement: Alexander's E-Rank card caps him out of **strike/combat** contracts at C-Rank and above and their pay (Section 19.4) — it does not gate harvest/support work at any Rank, which is not rank-restricted (Section 9.4). He may legally take a C- or even higher-Rank Gate's harvest-element work right now, card notwithstanding, provided one is posted; none has specifically been named to him beyond the confirmed D-Rank rail-yard slot (`EVT-000061`). No fiction changes beyond Kesha's corrected statement and Alexander's corrected understanding; no XP, item, or relationship state is affected."
```

## EVT-000063 - The Cicero Scar C-Rank Harvest Job

```yaml
id: EVT-000063
canonical_record: REC-000079
schema_version: "0.1.3"
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
description: "Alexander returned to the Coalition and asked Kesha Morrison whether anything was available that day; she checked the board properly this time and surfaced a confirmed C-Rank harvest-element slot at the Cicero Scar with a corporate-adjacent contractor, staging that afternoon (displacing his unconfirmed interest in the D-Rank rail-yard slot, `EVT-000061`). He bought a resonance chisel from Diane at Ironbound for $80 (cash $2,000→$1,920) and made it to staging in time.

Logistics coordinator Ada Reyes (`ENT-000134`) briefed the harvest crew: follow the strike element in, work only secured ground, drop and move on any fall-back call. The strike element cleared the Gate's population (archetype Shattered City again) in a single push before support entered. Alexander was assigned a rich vein and mined it across the operation:

- First cut: natural 35, net +1 (untrained solo, no mentor) → effective 55, partial success. Crystal whole but slow.
- Watched two veteran harvesters' technique (read the resonance shift before striking, instead of correcting mid-swing), technique upgrade to net +2; second cut: natural 19 → effective 59, partial success (a stubborn pocket even with better form). Two good crystals.
- Third cut, technique consolidated further at the same net +2: natural 49 → effective 89, strong success. Three good crystals.
- Allocated 2 of 6 unspent stat points to Strength (11→13) — did not cross the next modifier-step threshold (still +1 step; next at 20).
- Rushed fourth cut under a 2-minute fall-back deadline: natural **2**, a critical fumble — always live regardless of any modifier — crystal shattered, zero gained. Still three good crystals.
- Moved to a new position with the advancing line (boss not yet engaged). Cut, unhurried this time, net +2 (no rush penalty): natural 7 → effective 47, partial success (an awkward pocket even done carefully). Four good crystals.
- Allocated remaining 4 points: 2 to Vitality (8→10), 2 to Intelligence (8→10) — both crossed the baseline-10 threshold, each now contributing its first modifier step. Unspent points 6→0.
- **Undeclared private sale:** opened `/system shop` while appearing to keep working and sold 1 C-Rank crystal for 170 gold — natural 53, net 0 (no stat governs self-concealment; circumstance-only) → effective 53, partial success: the sale itself is unwitnessable (System-only), but a nearby veteran harvester noticed him standing idle and gave him an odd look. This is real, undeclared theft under the standard harvest contract (Profile Section 13.2 — 'undeclared loot taken inside is theft under the contract'), known to no NPC. Declarable crystal count: 4→3.
- Resumed focused, unhurried work for the remainder of the position, net +2: natural 82 → effective 100 (capped), legendary success — three more crystals, clean. Declarable count 3→6.
- Boss killed by the strike element (heard, not witnessed). Two-hour window opened. One final cut before wrap-up, net +2: natural 37 → effective 77, success. Declarable count 6→7.

Declared 7 C-Rank crystals to Ada Reyes at the Gate mouth; she logged them, calling it an above-average first showing (most first-timers bring back four or five). She gave an off-the-cuff, unverified payout estimate of $1,500–2,500. On reflection with the player, this was corrected: the operation's total declared sellable pool (7 beast-drop C-Rank crystals + 19 total declared mined crystals from the 5-hunter harvest crew + 2 cores) values at ≈$77,500 at licensed rates; by Runtime ruling (no harvest-share formula is authored in the world rules — a gap flagged separately for future authoring), the harvest crew collectively receives 20% of total pool value, split weighted by individual declared mined-crystal contribution. Alexander's 7 of 19 declared mined crystals (≈36.8%) of the ≈$15,500 harvest-crew cut yields **≈$5,700** — the corrected, canonical pending figure, quietly, without an in-fiction correction scene.

Back at the Coalition, Alexander asked Kesha about further C-Rank mining work; she found a second confirmed C-Rank harvest slot with the same contractor for 2026-07-26, 08:00 (logistics run by a different coordinator, Dale — `ENT-000135`), and pulled him off the never-confirmed rail-yard interest to sign him onto it instead. He also asked whether Coalition registration itself pays anything; Kesha confirmed no — freelance income comes only from work actually taken, no base salary."
```

## EVT-000064 - The Second Daily Quest and the Frozen Gallery C-Rank Job

```yaml
id: EVT-000064
canonical_record: REC-000079
schema_version: "0.1.3"
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

Dale (`ENT-000135`) greeted him, already briefed by Ada Reyes's word that he was a reliable cutter. Confirmed C-Rank Gate; archetype rolled d8 8 → **Frozen Gallery** (deep cold, halved Mana recovery inside per Profile Section 5.2 — flavor-relevant to Alexander's unrevealed Bearer status, no mechanical effect yet since he holds no Mana-costing skill). Population rolled per the standard C-Rank formula: 3d6=8 common C-Rank beasts, 1d2=2 C-Rank elites, 1 C-Rank boss. The strike element entered first and secured the ground; Alexander entered behind them with the rest of the harvest crew. No mining has been resolved yet at this site as of this checkpoint."
```

## EVT-000065 - The Frozen Gallery Harvest: Two Veins and a Second Undeclared Sale

```yaml
id: EVT-000065
canonical_record: REC-000079
schema_version: "0.1.3"
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
schema_version: "0.1.3"
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
schema_version: "0.1.3"
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
schema_version: "0.1.3"
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

At his turn, Alexander declared **41 C-Rank crystals** to Dale — the highest single total of the day by a wide margin, well ahead of the other overheard declarations (11, 14, 9, 16). Dale logged it without scrutiny, praised the pace across both jobs, and, asked directly, confirmed the contractor occasionally takes B-Rank harvest contracts when one comes through — none currently posted, but Alexander would be near the top of the list given his track record. Alexander confirmed his interest in future B- or C-Rank harvest work before departing on good terms, exited the Gate with the rest of the crew, and returned home for the evening. No further mining, sales, or contact this event.

**Harvest-share ruling (Profile Section 13.2, Runtime ruling — ex-scene, no fiction changed).** The Frozen Gallery's 5-hunter harvest crew declared a combined 91 C-Rank crystals (Alexander's 41, plus overheard totals of 16, 14, 11, and 9 from the other four harvesters). The Gate's killed population (`EVT-000064`: 8 common C-Rank beasts, 2 C-Rank elites, 1 C-Rank boss = 11 kills) yielded 11 beast-drop C-Rank crystals and 3 C-Rank cores (elites + boss). Total declared pool at licensed rates (Section 12.1): 91 × $2,500 (mined) + 11 × $2,500 (beast-drop) + 3 × $6,250 (cores) = $227,500 + $27,500 + $18,750 = **$273,750**. The harvest share is 20% off the top: $273,750 × 0.20 = **$54,750**, split output-weighted among the 5-hunter crew. Alexander's cut: 41 of the crew's 91 declared crystals → 41/91 × $54,750 ≈ **$24,663**, filed with the contractor at declaration, payout pending 1–2 business days per the standing pattern (`EVT-000060`, `EVT-000063`). This is his third and by far largest pending USD payout, alongside the Red Line split (≈$2,313) and the Cicero Scar harvest share (≈$5,700).

The Frozen Gallery C-Rank harvest job is complete: contract closed, no further obligation to this crew or site. The 91 declared crystals are no longer in Alexander's physical possession, surrendered to the contractor's pool at declaration; only the privately sold gold (25,330, entirely his) and USD payouts (pending, not yet received) reflect his actual gain from the job. No XP, Health, or Mana change — no combat resolved. 3 unspent stat points remain unallocated."
```

## EVT-000069 - A Rest Day: Shop Purchases, Private Practice, the Third Daily Quest, and Priya Okafor's Crew

```yaml
id: EVT-000069
canonical_record: REC-000079
schema_version: "0.1.3"
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
description: "Alexander took his declared rest day. That evening (2026-07-26) he called the Coalition's after-hours line about E-Rank striker/combat contracts (distinct from harvest work); Kesha Morrison, covering the desk, confirmed two open waiver-tier crew slots and that Tanya Voss's crew was not yet back on the boards, and offered to call back in the morning with more detail rather than dig further that night.\n\n**Shop purchases (evening of 2026-07-26).** Through `/system shop`, Alexander bought a C-Rank dagger (2,000 g) and an instant-dungeon key at his own E-Rank (500 g). Gold: 25,020 → 22,520. Both settle into the dimensional inventory (Profile Section 12.9) — private, weightless, undetectable.\n\n**Private practice (same evening).** Alexander tested the pocket-dimension exchange by repeatedly dismissing and summoning the new dagger, confirming it carries no perceptible delay in either direction — a genuine free action, exactly as described. He then drilled, slow to fast in front of a mirror, switching his grip from the old E-Rank dagger to the new C-Rank one mid-flourish, disguised as an ordinary grip adjustment. After a dozen reps he produced a version with no visible stutter or tell. Neither test was witnessed by anyone; this is recorded as a demonstrated qualitative technique in progress, not yet validated against a real observer.\n\n**Third daily quest (2026-07-27).** Issued 06:00 (100 push-ups, 100 sit-ups, 10 km run). Alexander completed the calisthenics at home in sets of 20 with short rests, then ran the 10 km at a nearby park, phone on him. Per Section 3.9's split, completion's XP and streak applied automatically (+10 XP → 70/200, streak 2/7 → 3/7); the +3 stat points/full-restore grant was deliberately **deferred**, banked for later.\n\n**Stat allocation.** Separately from the deferred grant, Alexander's 3 already-held unspent points (from the `EVT-000067` grant) were allocated entirely into Strength: 13 → 16. Unspent points 3 → 0.\n\n**Kesha's callback and Priya Okafor's crew.** Mid-run, Kesha called as promised: both waiver-tier crews were still open, one led by striker Priya Okafor (`ENT-000136`, newly named), short a fifth for about a week; the other rougher, having churned two fifth-slot hunters in a month. Alexander asked after Okafor's contract specifically: an unconfirmed E-Rank–D-Rank Gate (Assessment reading low-confidence D), timer breaking 2026-07-29 midnight, Okafor looking to stage as soon as she can round out the crew — potentially the next morning. Alexander committed to the slot, asked Kesha to request a 9 AM staging time rather than the general morning, and thanked her. Kesha undertook to relay the request and confirm back, defaulting to 9 AM absent word otherwise. No contract signed yet; recorded as pending (`REL-000065`).\n\nNo combat, no injury, no Health/Mana change beyond the ordinary daily-quest XP tick. Gold now 22,520. 0 unspent stat points; one deferred grant banked."
```

## EVT-000070 - The Ashfield Gate: Entry, First Wave, and Alexander's First Solo Kill Above His Band

```yaml
id: EVT-000070
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-28"
  record_time: "2026-07-28T09:30:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-28"
participants:
  - ENT-000125
  - ENT-000136
  - ENT-000137
  - ENT-000138
  - ENT-000139
description: "A fourth daily quest issued 06:00 (100 push-ups, 100 sit-ups, 10 km run); Alexander completed the calisthenics at home and ran the 10 km to staging, doubling as travel. Per Section 3.9's split, completion's XP and streak applied automatically (+10 XP → 80/200 at the time, streak 3/7→4/7); the accept/defer prompt on the grant was shown but never answered before play moved on to meeting the crew — left genuinely pending, not deferred by choice.

Staged with Priya Okafor (`ENT-000136`) at 9 AM as arranged. Met the rest of the crew for the first time: Julian (`ENT-000137`, ranged striker, carries a ranked/mana-bearing shotgun), Renata (`ENT-000138`, sensor/reader), and Owen (`ENT-000139`, mender, chronically late). Priya inspected Alexander's gear (approved, 'functional') and set the formation after hearing his self-description (krav maga plus dagger, analytical, support-leaning): Priya front, Julian/Renata mid, Owen/Alexander rear.

**Gate entry.** The posted Gate (unconfirmed, assessed low-confidence D-Rank) resolved on entry: true-Rank roll d100 **78** (71–92 result band) → true Rank **C-Rank**, one higher than assessed — a real mismatch for a 5-hunter waiver crew fielding no dedicated support element (legal minimum for C-Rank is 4 combat-rated, met; posting floor of 10–12 is not). Archetype roll d8 **7** → **Ashfield** (lingering burn hangs in the air; hourly Vitality check against a burn hazard). Population rolled per the standard C-Rank formula: 3d6 (3,4,5) = **12 common C-Rank beasts**, 1d2 (1) = **1 C-Rank elite**, plus the standard **1 C-Rank boss**. Renata immediately flagged the population as heavier than a D-Rank Gate on entry, before any of this was confirmed to the party in the fiction.

**First wave.** The front line (Priya, Julian, Renata) held the choke point cleanly against the first wave, killing four common beasts outright — Priya one by blade, Julian two by shotgun, Renata deflecting a fourth into an easy finish. Nothing reached the rear this wave.

**The fifth beast and Alexander's fight.** A fifth beast broke through toward Owen; Alexander, holding position per his declared support role, intercepted it and fought a five-exchange sequence:
1. Interception/counter — d100 90, net +1 step, effective 100, critical success. Damage: 10 (E-Rank baseline) × 0.75 (armed) × 4 (critical) = 30. The beast staggered, protected Owen fully.
2. Follow-up strike while the beast recovered — d100 42, net +2 (staggered target), effective 82, strong success. Damage: 10 × 0.75 × 2 = 15 (cumulative 45).
3. Feint-and-strike combo (E-Rank dagger as a visual feint, C-Rank dagger for the real strike, drawing on the pocket-dimension swap he privately drilled 2026-07-27) — d100 47, net +1, effective 67, success. Damage: 10 × 0.75 × 1 = 7.5 (cumulative 52.5). In the same exchange, the beast's own retaliation landed: d100 93, net −1 (wounded), effective 73, success — a full, Rank-honest hit (C-Rank baseline 62.5 × 0.75 armed × 1 standard = ~47), dropping Alexander's Health from **40 to 0** — the first genuinely lethal hit of his career, mismatched two full Ranks above his own Rank.
4. Alexander **claimed one of his two then-pending daily-quest grants** as a clutch recovery (Profile Section 3.9): Health 0→40/40 instantly, Mana unaffected (already full), +3 unspent stat points (0→3, unallocated). Owen witnessed the recovery directly, with no visibility into its mechanism — to him, Alexander was hit fatally and simply wasn't anymore.
5. Pressing the advantage on the shocked, staggered beast — d100 60, net +3 (overwhelming: shock, wound stacking, capped), effective 100, critical success. Damage: 10 × 0.75 × 4 = 30 (cumulative 82.5). The beast went down, alive but dying, unresisting.
6. Finishing blow on the defenceless creature — d100 44, net +3, effective 100, critical success. **Kill confirmed** — narratively finished by blood loss and the finishing strike together, independent of the raw cumulative damage tally against its full 250-point Rank Health, consistent with a creature already established as dying.

**Kill XP and level-up.** C-Rank base kill XP (60) × underdog bonus ×4 (2 Ranks above Alexander's E-Rank effective, Section 3.3) = **240 XP**. XP 70→310 against the 200 threshold for Level 2→3: **Level 3**, XP carried to 110/300. The resulting level-up grant was **deferred**, banked alongside the still-unanswered daily-quest grant from this morning — **two grants pending simultaneously** at the close of this event."
```

## EVT-000071 - The Elite: Alexander's Read, Priya's Fumble, and the Dual-Dagger Counter

```yaml
id: EVT-000071
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-28"
  record_time: "2026-07-28T09:45:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-28"
participants:
  - ENT-000125
  - ENT-000136
  - ENT-000138
description: "Immediately following `EVT-000070`'s kill and level-up, the Gate's elite closed on the party. Alexander read its attack pattern on his own initiative — d100 71, net +1 (Perception 11's one step, plus demonstrated analytical/pattern-reading background), effective 91, strong success — identifying a telegraphed lunge off its left shoulder every third stride, and called it out to the crew.

Priya attempted to intercept the elite on that exact read and **fumbled catastrophically**: d100 1, a natural critical failure (always live regardless of modifier). She was thrown hard into the ash, genuinely wounded and momentarily down, and the elite broke past the front line's gap toward the rear, closing on Owen and Alexander.

Alexander met it dual-wielding both daggers — the old E-Rank blade already in hand, the new C-Rank dagger summoned into his other hand mid-motion (Owen's second direct, unremarked observation of the trick this clear) — using the calculated timing from his own read: d100 76, net +1, effective 96, critical success. The strike redirected the lunge past both himself and Owen entirely and landed a real, damaging counter along the elite's flank. Damage: 10 (E-Rank baseline) × 0.75 (armed) × 4 (critical) = 30, against the elite's ×2 C-Rank health (500) — a real but proportionally modest wound.

The elite is badly hurt but still active and recovering its footing. Priya is pulling herself back up, favoring one side, wounded but fighting. Combat is ongoing; the Gate's boss has not yet been encountered. No further exchange has resolved past this point."
```

## EVT-000072 - Gatefall Profile 1.2 Readiness Migration

```yaml
id: EVT-000072
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: owner-approved-profile-migration
  event_time: "2026-07-28, before the next Ashfield Gate exchange"
  record_time: "2026-07-28T09:45:01Z"
type: Event
kind: rules-migration
importance: major
event_time: "2026-07-28"
participants:
  - ENT-000125
description: "Before the next exchange of the Ashfield Gate fight, the live campaign explicitly adopted frozen Gatefall World Rule Profile 1.2 from frozen 1.1. This was a readiness migration, not fiction: no elapsed time, voluntary action, prior roll, damage, XP, Health, Mana, gold, ownership, provenance, injury, skill, title, or resolved exchange changed.

Every owned ranked item was normalized under the profile-header migration and Section 11.5. The old E-Rank dagger became an E-Rank Quickknife (Agility +2, armed strike ×0.75); the purchased C-Rank dagger became a C-Rank Quickknife (Agility +7, armed strike ×0.75). The recorded dual-wielding state was preserved with C-Rank Quickknife main hand and E-Rank Quickknife off hand. The worn reinforced jacket, gauntlets, and shin guards became E-Rank Bastion torso/hands/legs armor (Vitality +1 and 3% physical reduction each). The disputed E-Rank armored greave became a stored E-Rank Bastion legs piece and remains unequipped and ownership-undecided.

Alexander's base stats remain Strength 16, Agility 12, Vitality 10, Perception 11, Intelligence 10. Equipped bonuses derive effective stats Strength 16, Agility 21, Vitality 13, Perception 11, Intelligence 10. The three equipped armor pieces derive total physical reduction `1 − (0.97 × 0.97 × 0.97) = 8.7327%` (display 8.7%). These values govern only subsequent resolutions; nothing already resolved was recalculated.

The current E-Rank Daily Premium cycle (2026-07-28 06:00 to 2026-07-29 06:00 Chicago) was initialized by seven real rolls: weapon d7=6, armor slot d5=2, armor style d5=4, accessory d5=3, consumable d6=5, rune d10=2, key d6=5. The six unpurchased offers are: Spellthread Focus [E-Rank] (200 g), Adaptive Watcher Torso [E-Rank] (120 g), Ascendant Heartward Sigil [E-Rank] (160 g), Quicksilver Phial (750 g), Dagger Mastery Rune [E-Rank] (2,500 g), and Runic Key [E-Rank] (1,000 g). All 6/6 remain available until the next 06:00 rotation."
```

## EVT-000073 - Gatefall Profile 1.3 Daily Premium Rank Migration

```yaml
id: EVT-000073
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: owner-approved-profile-migration
  event_time: "2026-07-28, before the next Ashfield Gate exchange"
  record_time: "2026-07-28T09:45:02Z"
type: Event
kind: rules-migration
importance: major
event_time: "2026-07-28"
participants:
  - ENT-000125
description: "Before the next exchange of the Ashfield Gate fight, the live campaign explicitly adopted frozen Gatefall World Rule Profile 1.3 from frozen 1.2. This narrow rules migration consumed no fictional time and changed no action, roll, combat result, equipment, stat, Health, Mana, XP, gold, ownership, or purchase flag.

The current Daily Premium cycle preserved all six Profile 1.2 models and their wholly-unpurchased state. Five real d100 Rank rolls were made against Alexander's E-Rank effective Rank under Section 12.5: Weapon 46 = E-Rank; Armor 85 = C-Rank; Accessory 74 = D-Rank; Rune 23 = E-Rank; Key 70 = D-Rank. The unranked Consumable received no Rank roll.

The migrated offers are Spellthread Focus [E-Rank] (Intelligence +4, active-skill Mana costs -1 minimum 1, 200 g); Adaptive Watcher Torso [C-Rank] (Perception +5, physical reduction 11%, 2,400 g); Ascendant Heartward Sigil [D-Rank] (Vitality +5, 720 g); Quicksilver Phial (750 g); Dagger Mastery Rune [E-Rank] (2,500 g); and Runic Key [D-Rank] (D-Rank instant dungeon with one guaranteed rolled boss rune, 4,500 g). All 6/6 remain available until 2026-07-29 06:00 Chicago."
```

## EVT-000074 - Gatefall Profile 1.4 Causal-Stats Migration

```yaml
id: EVT-000074
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: owner-approved-profile-migration
  event_time: "2026-07-28, before the next Ashfield Gate exchange"
  record_time: "2026-07-28T09:45:03Z"
type: Event
kind: rules-migration
importance: major
event_time: "2026-07-28"
participants:
  - ENT-000125
description: "Before the next exchange of the Ashfield Gate fight, the live campaign explicitly adopted frozen Gatefall World Rule Profile 1.4 from frozen 1.3. This readiness migration consumed no fictional time and did not re-resolve any prior roll, hit, damage, recovery, XP award, or combat position. The elite remains wounded and active; Priya remains wounded; the boss remains unencountered.

Daily-quest XP was removed and the XP track replayed chronologically from non-daily awards only. The Red Line rewards total 140 XP, producing Level 2 at 40/200; the later C-Rank beast kill adds 240, producing Level 3 at **80/300**. Level 3 therefore remains reached, but the three historical +10 daily ticks no longer remain in the current XP total.

Alexander still has two completed level-ups. The 1.4 automatic growth therefore added +2 to every base Stat: Strength 16→18, Agility 12→14, Vitality 10→12, Perception 11→13, Intelligence 10→12. The increase from the old three-point to the new five-point level entitlement credited +4 unspent points. His pending Level 3 grant then settled immediately, adding its original +3 points and applying its full recovery. With the 3 already unspent, the resulting pool is 10. Equipped bonuses derive effective Stats Strength 18, Agility 23, Vitality 15, Perception 13, Intelligence 12. Maximum Health is `4 × 15 = 60`; maximum Mana is `2 × 12 = 24`. Because the pending level-up recovery settled during migration, both pools filled to 60/60 and 24/24 and ordinary fatigue cleared; no injury existed to change.

All four recorded daily completions remain complete and are established to have included 100 squats performed off-screen during their existing exercise periods; no extra time passed. Their consecutive streak remains 4. The streak will continue to advance on completion and reset on failure but has no cache, multiplier, or other reward. Each completion created one unopened Daily Random Box, so four boxes are pending. The one still-pending 2026-07-28 bundle separately became Ability Points +3 and one Status Recovery; previously settled point/recovery effects remain settled.

The C-Rank Quickknife gained weapon power 7 and the E-Rank Quickknife weapon power 2, with Rank, chassis, ownership, condition, and equipped slots unchanged. The Spellthread Focus [E-Rank] premium line gained focus power 2. The level-derived `effective_band: E` field became `system_tier: E`; it now governs content/reward brackets only, while Stats govern Alexander's body, resources, physical magnitude, and relative contested margins."
```

## EVT-000075 - Stat Allocation and a Daily Random Box

```yaml
id: EVT-000075
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-28, immediately after the Profile 1.4 migration, before the next Ashfield Gate exchange"
  record_time: "2026-07-28T09:46:00Z"
type: Event
kind: session-gameplay
importance: minor
event_time: "2026-07-28"
participants:
  - ENT-000125
description: "Before resuming the Ashfield Gate fight, Alexander allocated all 10 unspent stat points from the Profile 1.4 migration: Strength +3 (18→21), Perception +3 (13→16), Intelligence +3 (12→15), Vitality +1 (12→13). Effective Vitality rose 15→16 and effective Intelligence 12→15, re-deriving maximum Health 60→64 and maximum Mana 24→30; both pools were already full and refilled to the new maxima (Health 64/64, Mana 30/30). Unspent points 10→0.

Alexander then opened one of his four pending Daily Random Boxes (World Rule Profile Section 8.1). Contents roll: d100 **85** (81–93 band) → ranked gear at his System Rank (E). Chassis roll: d20 **8** → Channeling Focus. Result: an E-Rank Channeling Focus (Intelligence +2, focus power 2, Good condition), added to his dimensional inventory unequipped — main hand is occupied by the equipped C-Rank Quickknife, and he holds no Mana-costing skill yet to spend focus power on. Pending Daily Random Boxes: 4→3."
```

## EVT-000076 - The Elite's Defeat

```yaml
id: EVT-000076
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-28"
  record_time: "2026-07-28T09:52:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-28"
participants:
  - ENT-000125
  - ENT-000136
  - ENT-000139
description: "Continuing directly from `EVT-000071`'s dual-dagger counter, Alexander pressed the wounded elite across three further exchanges, using krav maga footwork and gauntlet feints to set up the C-Rank Quickknife:

1. Follow-up strike — d100 37, net +1 step (Agility margin 0 against the elite's C-Rank domain rating 30; +1 circumstance for the elite already wounded), effective 57, **partial success** (graze, ×0.5). Damage: (Strength 21 + C-Rank weapon power 7) × 0.75 × 0.5 = 10.5 → 11. The strike lands shallow; Alexander overextends slightly closing the distance to attempt it.
2. Calculated weak-point strike — d100 58, net +2 (elite-wounded +1, deliberate weak-point targeting from Alexander's demonstrated pattern-reading +1), effective 98, **critical success** (×4). Damage: 28 × 0.75 × 4 = 84. The elite staggers hard, badly wounded, barely able to hold its stance.
3. Repeat of the same read against the same seam — d100 30, net +3 (elite now critically wounded and barely standing +2, weak-point targeting +1, at the ordinary net cap), effective 90, **strong success** (×2). Damage: 28 × 0.75 × 2 = 42. The elite collapses, defenceless — down, breathing, unable to resist further.

Finishing blow: resolved **automatically**, no roll (Rules Section 4.2 — failure is impossible against an already-collapsed, unresisting target; Alexander has more than demonstrated the competence). The elite is confirmed dead.

**Kill XP and level-up.** C-Rank base kill XP (60) × elite multiplier (×2) × underdog bonus (×4, elite two System Ranks above Alexander's System Rank: E-Rank) = 480. XP 80→560 against the Level 3→4 threshold (300, Section 3.1): **Level 4**, XP carried to 260/400. The level-up package settled immediately and completely (Section 3.2): all five base Stats +1 (Strength 21→22, Agility 14→15, Vitality 13→14, Perception 16→17, Intelligence 15→16), +5 unspent stat points (0→5), effective Stats re-derived (Strength 22, Agility 24, Vitality 17, Perception 17, Intelligence 16), Health/Mana maxima re-derived and fully restored (68/68, 32/32). System Rank remains E-Rank (next tier at level 10).

Priya, Julian, Renata, and Owen all witnessed the finish; the clearing went quiet. Priya's immediate reaction was a flat, visibly recalculating '...Right. Okay.'"
```

## EVT-000077 - Aftermath: Crew Regroup, Rank Reveals, and the Northeast Read

```yaml
id: EVT-000077
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-28"
  record_time: "2026-07-28T10:05:00Z"
type: Event
kind: session-gameplay
importance: immediate
event_time: "2026-07-28"
participants:
  - ENT-000125
  - ENT-000136
  - ENT-000137
  - ENT-000138
  - ENT-000139
description: "With the elite dead, the crew regrouped. Alexander raised his earlier near-death against the common beast directly, pointedly asking why no one came for him. Owen answered first: he'd had the kit half open and simply wasn't fast enough to matter either way, and apologized genuinely. Priya took formal responsibility for the rear-pair formation gap — she'd been mid-fight with the elite's own fumbled intercept and hadn't seen it happen, and Julian confirmed the same with a short nod — but owned the structural problem rather than deflecting, and asked to be told in the future rather than finding out after.

Alexander, sardonic toward the crew broadly but genuinely warm toward Owen specifically, joked about an owed beer, then declined Owen's offer to be checked over so as to preserve his limited healing for worse need, and put a friendly arm around his shoulder — the first smile anyone on this crew has seen from him. Owen, visibly startled, agreed to hold the healing in reserve, and separately put the dagger question on the record without pressing it: he still has no explanation for it twice appearing in Alexander's hand with no draw, states he intends to keep not asking, but wanted that said plainly rather than left unspoken — an explicit, mutual acknowledgment of the exposure thread (Profile Section 19) that stops short of confrontation.

Asked directly, Priya confirmed the crew's ranks for the first time: herself **D-Rank** (made D roughly eight months ago), Julian and Renata both **E-Rank**, and — corrected mid-sentence after an initial misstatement — Owen **C-Rank**, the reason a waiver-tier crew could field a real mender at all. Asked his practical healing capacity, Owen estimated four to five people at ordinary severity per clear, or as few as two for something as severe as Alexander's earlier near-lethal hit — no hard cutoff, just diminishing effect under load.

Renata laid out the crew's live options: push toward the unlocated den structure the elite emerged from, fall back to regroup, or split someone off to sweep the remaining common-beast pack (status unconfirmed since the first wave). Priya deferred the call to Alexander directly, citing his read's track record this fight.

Alexander then read the battlefield for a tactical picture on his own initiative (Perception-governed, no established opposing domain rating — general environmental difficulty): d100 40, net +1 step (demonstrated analytical capability edge, offset by the Ashfield archetype's burn-haze obscuring sightlines), effective 60, **partial success**. Finding: burn-scarring density climbs steadily northeast of the party's position — a real directional lead toward wherever the boss and den structure are — but the same scarring intensifying rather than tapering suggests the terrain gets worse approaching it, not safer; an unconfirmed but genuine complication, not a clean read. Alexander reported both the lead and its catch to Priya plainly.

As of this event, the crew stands at the same position: elite dead, boss unencountered and unlocated beyond the northeast lead, remaining common-beast pack status unconfirmed, Priya wounded but active, Owen uninjured and his kit unused. Priya has asked Alexander directly for the crew's next move and is waiting on his answer. No further exchange has resolved past this point."
```

## EVT-000078 - Gatefall Profile 1.5 Mender-Treatment Migration

```yaml
id: EVT-000078
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: owner-approved-profile-migration
  event_time: "2026-07-28, mid-boss-fight pause, before the next exchange"
  record_time: "2026-07-28T10:40:00Z"
type: Event
kind: rules-migration
importance: major
event_time: "2026-07-28"
participants:
  - ENT-000125
  - ENT-000139
description: "During the Ashfield Gate's boss fight, at an out-of-character pause between exchanges, the live campaign explicitly adopted frozen Gatefall World Rule Profile 1.5 from frozen 1.4 by owner ruling. This readiness migration consumed no fictional time and re-resolved no prior roll, hit, damage, XP award, or combat position. The boss remains wounded and active; Priya remains engaged; Julian's fire continues; Owen remains at Alexander's shoulder.

**What changed.** Under 1.4, a mender's care merely halved an injury's healing clock (Section 6.3), leaving a C-Rank mender unable to set a broken bone — a rule the owner ruled inconsistent with what the mender working type is in this world's fiction and with the crew economics that make a mender worth the split. Profile 1.5 authors the mender's resolved treatment touch as **clearing an injury's severity outright**, gated by mender rank against injury tier: E clears Minor, D clears Moderate, C clears Severe, B and above clear Critical. Clearing severity consumes one of the mender's limited per-clear touches; a single touch either restores Health or clears one injury, never both; a mender treating above their tier still supplies the professional-care halving and may step severity down one tier by Runtime ruling. Section 6.4's independence of the Health and severity axes is preserved and clarified: a mender's touch is the one authored effect that acts on the severity axis, while potions, Status Recovery, and level-ups act only on Health.

**What was preserved.** Every Stat, level, XP total, pool value, item, equipment slot, skill, title, currency, ownership, and provenance is unchanged. Alexander's **Severe left-rib injury**, sustained from the boss's retaliation earlier this fight, is preserved at its recorded severity and becomes clearable under the new rule from this point forward rather than being retroactively erased. Owen (`ENT-000139`) has spent no per-clear touches this clear; his full capacity remains available under the new treatment rule, and his C-Rank reaches the Severe tier.

The migration was adopted out-of-character; no NPC is aware of a rules change, and nothing about the fiction's state moved."
```

## EVT-000079 - The Ashfield Boss: The Plan, the Ambush, and Alexander's Severe Injury

```yaml
id: EVT-000079
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-28"
  record_time: "2026-07-28T10:40:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-28"
participants:
  - ENT-000125
  - ENT-000136
  - ENT-000137
  - ENT-000138
  - ENT-000139
description: "Continuing from `EVT-000077`. Alexander proposed finishing the Gate rather than withdrawing, and asked the crew to commit; he looked to Owen (`ENT-000139`) first and Owen agreed first, openly citing both Alexander's demonstrated competence and the beer he still owed him. Julian and Renata agreed; Priya (`ENT-000136`) accepted, explicitly ceding the tactical call — 'you've earned the call twice today' — but demanded a real plan rather than a direction, including a contingency for her going down again.

**The plan.** Alexander assigned: Renata (`ENT-000138`) on reading alone, calling gos and no-gos, and locating the boss and its terrain; Julian (`ENT-000137`) holding fire until the go, then firing without break from distance; Alexander and Priya working the boss from opposite sides in a deliberate rotation, each striking while it committed to the other, deferring its attention back and forth; Owen held back, unguarded, to reach whoever went down. Each crew member raised a genuine objection: Renata that reading and covering Owen were incompatible jobs; Julian that his lane closes whenever the melee crosses it; Owen that he would be one bad thirty seconds from being the failure point; Priya that her wound made her unreliable on the front line and that Alexander had to choose between a thinner watch on Owen or losing constant fire.

Alexander revised in response: the approach would be unseen and guided by Renata's read rather than a charge, he and Priya striking from concealment before Julian opened up; Renata freed to read exclusively; Owen instructed explicitly not to come for him if both he and Priya were down. He then **drew a lesser healing potion from his dimensional inventory and gave it to Priya** — framed to the crew as something he had bought. She drank it: her Health improved visibly and she could fight properly again, though the underlying wound's severity was unaffected (Profile Section 6.4). Priya noted, without pressing, that he had been carrying it all along. Owen registered the moment and deliberately set it aside — the fourth unexplained thing, uncommented.

**The approach.** Resolved unseen: d100 50, net +2 (Renata's guidance +1, Ashfield burn-haze concealing sightlines +1), effective 90, **strong success**. The crew moved into a den chamber — ash deep and patterned from long occupancy — with the C-Rank boss circling unaware, Priya positioned on the far rim, Julian holding a clean lane from the high lip, Owen held back. The boss rendered **red, pulsing** under Section 14.6 (two or more Ranks above Alexander's System Rank: E-Rank).

**The engagement.** On Alexander's hand signal: Julian opened, hitting the shoulder and turning the boss into Alexander's flank. Alexander's ambush strike — d100 43, net +2 (unaware target), effective 83, **strong success** — drove the C-Rank Quickknife behind the shoulder joint where the plating gaps; damage `(Strength 22 + weapon power 7) × 0.75 × 2 = 43.5`. Priya's strike followed into the ribs. The boss committed to Priya as the wounded target; Renata called it.

Alexander's weak-point strike to pull it off her — d100 50, net +3 (target's attention committed elsewhere +2, calculated weak-point targeting +1), effective 100, **critical success**; damage `29 × 0.75 × 4 = 87`. The E-Rank blade feint drew the flinch and the C-Rank blade went into the seam to the hilt and turned. The boss abandoned its lunge at Priya entirely and fixed on Alexander.

Alexander then planted the E-Rank Quickknife in the wound, recalled the C-Rank Quickknife out of the seam through the dimensional inventory (instant, per the technique drilled in `EVT-000069`), and struck again — **d100 1, a natural critical fumble, always live**. His back foot went through churned ash; the strike went wide and low and put him on one knee inside the boss's reach. The boss's retaliation: d100 41, net +2 (target off-balance and exposed), effective 61, **success** — `(250 band ÷ 4) × 1 × 1 × (1 − 0.087) = 57` damage. **Health 68 → 12/68.** He got the C-Rank blade into the angle and rolled on landing, which is the only reason it was not fatal.

Under Section 6.3 this hit met the injury threshold on both tests — it removed over half his remaining Health and dropped him below 25% of maximum — inflicting a **Severe injury to the left ribs**, assigned from the hit's magnitude and the established fiction.

**The recovery, and its limit.** With Owen running toward him across open ground, Alexander claimed his pending **Status Recovery** (Profile Section 3.9): Health 12 → 68/68, Mana already full. Pending rewards reduced to Ability Points +3 and three Daily Random Boxes. Owen arrived to find a man he had watched take a killing hit standing whole — the third impossible recovery he has personally witnessed — closed his kit without a word, and visibly decided something he did not share.

The Status Recovery restored the pool and did **not** clear the injury. Alexander's next strike, attempted on a body that could not plant on the left side — d100 5, **a second natural critical fumble** — failed completely and carried him past the wound into open floor, the broken ribs refusing the load. The boss turned on him as the exposed target.

**Evasion.** Alexander broke perpendicular to the charge — d100 88, net −1 (Severe injury −1, open ground −1, boss badly wounded +1), effective 68, **success** — clearing the line entirely. The boss overshot, and Priya exploited the pass with a two-handed strike under its ribs on Alexander's call. Owen reached Alexander and found nothing his gift could act on: no missing Health, only a broken body, and asked what he needed.

**State at this event's close.** The boss is badly wounded — five separate wounds, one front limb dragging, Alexander's E-Rank Quickknife still standing in its shoulder seam — and still active and dangerous. Julian's fire is unbroken; Priya is engaged and fighting properly since the potion; Renata is reading; Owen is at Alexander's shoulder with his per-clear touches unspent. Alexander is at Health 68/68 with an untreated Severe injury, 5 unspent stat points, and his C-Rank Quickknife in hand. Combat is ongoing; no exchange has resolved past the evasion."
```

## EVT-000080 - The Ashfield Gate Cleared: Owen's Treatment, the Boss Kill, the Harvest, and the Withheld Report

```yaml
id: EVT-000080
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-28"
  record_time: "2026-07-28T12:30:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-28"
participants:
  - ENT-000125
  - ENT-000136
  - ENT-000137
  - ENT-000138
  - ENT-000139
description: "Continuing from `EVT-000079` under the newly adopted Profile 1.5 (`EVT-000078`).

**Owen clears the injury.** Asked what he needed, Alexander answered 'my ribs.' Owen (`ENT-000139`, C-Rank) applied a resolved treatment touch — d100 38, net +2 (patient still and cooperative, boss momentarily off him), effective 58, **partial success**: the Severe left-rib injury was **cleared outright** per Profile 1.5 Section 6.3 (C-Rank reaches the Severe tier), at the cost of **one of Owen's per-clear touches** and roughly four seconds — long enough that the window bought by the evasion closed and the boss squared up on both of them, with Owen exposed in the open. During those seconds Alexander read the boss: the dragging front limb was carrying no weight at all, making every turn to its own left slow and wide; the embedded E-Rank Quickknife widened the shoulder seam with each movement; its breathing had gone deep and labored.

**The hinge.** Alexander ordered Julian to lay fire between the boss and Owen — not to kill but to deny that ground. The boss flinched off its line, which turned it left, onto the dead limb. Alexander's strike into that opening — d100 21, net +3 (boss badly wounded and limb non-functional, known seam, attacking the slow side; at the ordinary cap), effective 81, **strong success**; damage `(Strength 22 + weapon power 7) × 0.75 × 2 = 43.5`. Using the embedded E-Rank blade as a fulcrum, he levered the seam apart; the front-left quarter collapsed and the boss went down on its ruined side.

**The last exchanges.** An attempted finishing strike — d100 9, net +3, effective 69, **success** — opened a long wound low on the throat but did not kill it. The boss, understanding it was dying, heaved its whole ruined mass sideways as a collapse aimed like an attack. Alexander **allocated all 5 unspent stat points to Agility** (base 15→20, effective 24→29; noted at the time as not changing the roll's modifier bracket, both margins reading 0 steps under Section 4.3) and evaded — d100 67, net 0, effective 67, **success** — going forward and across along the line of the fall rather than away from it, out through the gap where the dead limb had been. The impact pinned the boss's remaining good limb beneath its own mass and turned its entire ruined side skyward, immobilizing it completely.

**The kill.** With the boss pinned, unable to move, defend, or reach, the finishing blow **resolved automatically** (Rules Section 4.2 — failure impossible against a target that cannot resist). Alexander drove the C-Rank Quickknife into the throat wound he had already opened. **Boss killed; the Gate cleared and began to collapse** (Profile Section 9.7).

**XP and three level-ups.** C-Rank boss kill: base 60 × boss ×4 = 240, × underdog ×4 (boss two System Ranks above Alexander's E-Rank, Section 3.3) = **960**. Plus the C-Rank **Gate-clear milestone, 320** (Section 3.4, unaffected by the underdog bonus). Total **1,280 XP**. From Level 4 at 260/400: crossing 400 → Level 5, 500 → Level 6, 600 → Level 7, leaving **Level 7, XP 40/700**. All three level-ups settled immediately and completely (Section 3.2): base Stats **+3 each** (Strength 22→25, Agility 20→23, Vitality 14→17, Perception 17→20, Intelligence 16→19), **+15 unspent stat points**, and Health/Mana re-derived and fully restored. Effective Stats: Strength 25, Agility 32, Vitality 20, Perception 20, Intelligence 19; **Health 80/80, Mana 38/38**. System Rank remains **E-Rank** (D-Rank at Level 10). No stat reached the base-30 milestone threshold (Section 4.4).

**The seven survivors, and the barrier.** Renata read the interior — d100 83, net +1, effective 100, **legendary success**: seven common C-Rank beasts remained alive of the twelve, clustered agitated at the north wall. Per Profile Section 9.8 the standing Gate's barrier contains its population absolutely — only a break dissolves it, and a break requires the timer to expire *before* a clear. The boss was dead and the Gate cleared, so nothing could leave. The seven were a fight the crew could choose or decline, not a threat to the city. They declined it and the seven went down with the instance.

**The harvest.** Alexander extracted the boss core — d100 92, net 0 (Intelligence margin −1 against C-Rank, demonstrated technique +1), effective 92, **strong success**, clean and uncracked — and recovered his E-Rank Quickknife from the shoulder seam. Loot per Section 11: one C-Rank crystal per killed common beast (**5**), a C-Rank core from the elite, and the boss core. The **boss drop** rolled d100 **6** (01–40 band) → equipment at Gate Rank; chassis d20 **7** → **Longshot [C-Rank]** (Gate-forged bow, mana-bearing: Perception +5, Agility +2, weapon power 7, ranged armed strike ×0.75, two-handed). Julian offered it directly to Priya as the better shot; Alexander overruled him coldly — it goes to the split or is bought out — and Julian accepted without argument.

Alexander then directed a harvest near the aperture with Renata on watch: a five-cut stretch at net +1 yielded 4 crystals (97 exceptional, 70 success, 58 partial, 29 and 37 failures — the shallow ground near a Gate mouth being genuinely poor), and the crew added 6 more. Pushing the spent seam further produced **two natural critical fumbles (5 and 5)** and a major failure: a crystal shattered, and the **resonance chisel broke outright**, its head shearing from the shaft — the Section 4.8 cost of repeated attempts on exhausted ground. A final hand-worked cut gave one more crystal. Alexander called the work at that point.

**Total haul, undeclared and unsold, pending the crew split:** 16 C-Rank crystals, 2 C-Rank cores, and the Longshot [C-Rank].

**Exit.** The crew walked out with the barrier holding and the seven never engaging; the aperture collapsed behind them, leaving scorched ground. Total time inside: four hours and eleven minutes. Priya sat down and laughed and cried at once; nobody found it remarkable.

**The reporting decision.** Priya raised the filing problem: the board posted the Gate E-Rank–D-Rank, the true Rank was C, and her signature goes on the assessment line. Alexander advised against reporting immediately, arguing that the whole crew except Owen was under-ranked for what they had done and that none of them should face BGM's questions while spent. Priya pushed back hard — she distinguished falsification (which she refused outright) from delay (which she accepted) — and Renata added the decisive practical point: **the loot declares the Rank**, since no appraiser logs C-Rank crystals and cores against an E-Rank–D-Rank clear without asking, so the crew can lie on the form or sell the loot but not both. Owen noted plainly that as the only correctly-ranked member he carries none of the risk and was not comfortable being quiet about that. Alexander clarified he had never proposed falsifying, only not filing while exhausted. The crew agreed: **nobody files and nobody sells tonight**; they reconvene **2026-07-29 at 18:00** to agree the facts and let Priya file a true account of a mis-posted Gate. Priya stated she will not sit on it longer than that. No contract has yet been filed with BGM Region V, and no loot has been sold or split.

**The bar.** Alexander and Owen went for the beer Owen had joked about earlier, at a bar near the Gate site. Owen, unprompted and without accusation, laid out everything he had witnessed — a beast opening Alexander up and Alexander then being unharmed with no mender's touch; a knife appearing in his hand from nothing, twice; a potion produced that he had not been carrying; and being told his ribs were broken while reading as physically untouched, which Owen confirmed by hand was nonetheless true. He stated explicitly that he is not confused and will not later invent a normal explanation, that he is keeping his promise not to ask, and that he has watched what carrying it alone costs. He left the door open without pushing it. **This is the most direct acknowledgment of Alexander's exposure by any NPC to date** (Profile Section 19) — still uninvestigated and unreported, but no longer unspoken. Alexander has not yet answered."
```

## EVT-000081 - The Half-Answer, the Night, and the Agreed Filing

```yaml
id: EVT-000081
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-28 afternoon to 2026-07-29 14:11"
  record_time: "2026-07-29T14:11:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-28 to 2026-07-29"
participants:
  - ENT-000125
  - ENT-000136
  - ENT-000139
description: "Continuing directly from `EVT-000080`'s bar conversation.

**The half-answer.** Alexander did not deflect with the luck story he considered. He told Owen instead that something had happened to him and that **he does not understand it either** — the first time he has admitted the System's existence to another person in any form, though he named nothing of what it is or does. Owen refused to grab at it: he offered an immediate exit from the topic that 'does not expire,' then made the point that **nobody in this world knows what awakening is** — that he himself heals by touch and could not explain why, that BGM has a screening test rather than an explanation, and that 'something happened to me and I don't understand it' is most of the awakened population's position rather than a strange sentence. He asked no questions.

Alexander told him it was the nicest thing anyone had said to him since he awakened, and promised to tell him everything. **Owen released him from the promise** — explicitly, on the grounds that a promise made after a near-death, a healing, and a beer on an empty stomach is neither binding nor fair — and substituted 'when you want to, if you want to.' He also observed that the crew has effectively adopted Alexander. Alexander answered that the only one of them he cares about was not in that list.

**The relationship (`REL-000066`).** An afternoon of deliberate drinking in place of thanks; Owen falling asleep in the booth mid-argument; Alexander paying the whole tab and taking him home by taxi to his own studio rather than leaving him. Owen slept in Alexander's bed and Alexander beside him, roughly fourteen hours. The relationship became explicitly personal and physical on the morning of 2026-07-29. Owen disclosed ordinary biography — Rogers Park, awakened at twenty-two, twice declined Horizon Guild contracts because 'guilds put you where the money is, not where the people are' — and learned almost nothing about Alexander that was not true, a first for this campaign. **Alexander's apartment has not held another person since he awakened three months ago.**

**Owen's counsel on the filing.** Owen laid out the problem: Priya intends to file true, that account lists the crew, and Alexander's E-Rank card bars him from C-Rank *strike* contracts under Section 19.4. Alexander made the sharper argument himself — **the contract was posted E-Rank–D-Rank, everyone signed something legal, and the true Rank resolved only on entry**, which is what an unconfirmed posting means and what the waiver covers; no cap was breached because no one took a C-Rank contract. Owen conceded immediately and named the real exposure: Region V will not ask why an E-Rank was inside, it will ask **how a D-Rank/E-Rank/E-Rank/E-Rank/C-Rank crew walked out of a C-Rank Gate with the boss dead and nobody hospitalized** — and the honest answer names Alexander.

Alexander chose the 'boring' version and proposed Owen take credit for the boss kill. **Owen said he would sign it if asked, and then argued it down**: a mender with six years and zero combat commendations killing a C-Rank boss is *more* interesting than a striker doing it, would open a file on him instead, requires four people to hold one lie under questioning, and Renata lies badly. His counter-proposal, adopted: **no hero.** The crew killed the boss in a long coordinated fight; Julian's fire held it, Priya opened its flank, it went down in stages; Alexander was the support striker who was badly hurt and treated — true and dull. A lie of emphasis, not of fact. Owen's one condition was that Alexander put it to Priya plainly rather than cleverly, and give her back a decision she had repeatedly ceded to him, because it is her signature.

**Priya's messages and the call.** Priya had written twice: that she was at a clinic having her side properly treated and would be slow but present, and that **Kesha Morrison had called** — Region V's monitoring registered the Gate's closure and the Coalition has been asked when the clear report is coming, without accusation. Priya told Kesha tonight, so it is tonight; she asked for Alexander's thoughts before six rather than in front of everyone.

Alexander called and put it plainly, without selling it and without attributing the idea to Owen — d100 62, net +1 (her explicit invitation and high regard, and the version's substantial truth, against her honest commitment to filing true), effective 82, **strong success**. Priya accepted and disclosed why it landed: she had spent two hours drafting honest sentences that all made her sound like a passenger on her own clear, knew that objection was vanity, and had intended to file it anyway. She set exact limits: **she will not write that Alexander was absent or did not fight, and she will answer any direct question from Region V honestly.** What she agreed is that the report does not *lead* with him — it leads with the crew and the mis-posting. If asked point-blank who killed the boss she will say all of us and believe it, but she will not lie, on the stated grounds that she is bad at it and it would hurt him worse when it broke. She required that Julian and Renata be told the same thing in the same room, by Alexander, so nobody holds a secret they did not agree to. She volunteered that in eight years, attention from Region V is 'not a promotion, it's a process.'

**The daily quest.** The fifth daily quest issued 2026-07-29 at 06:00 and was dismissed unanswered while Alexander slept. At 13:30 he completed the calisthenics — 100 push-ups, 100 sit-ups, 100 squats in five rounds of twenty — resolved automatically as demonstrated reliable competence (Rules Section 4.2). **The 10 km run remains outstanding**, window open until 2026-07-30 06:00. The Daily Premium cycle rotated at 06:00 into stock not yet viewed or generated.

No combat, injury, XP, Health, Mana, or gold change across this event. 15 unspent stat points and three unopened Daily Random Boxes remain untouched; the resonance chisel is still broken and unreplaced. Alexander is alone in his apartment at **14:11 on 2026-07-29**, with the run ahead of him, Ironbound needing a visit, and the Coalition at 18:00."
```

## EVT-000082 - Gatefall Profile 1.6 Midnight Daily Deadline Migration

```yaml
id: EVT-000082
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: owner-rule-migration
  event_time: "2026-07-29 14:11"
  record_time: "2026-07-29T14:11:00Z"
type: Event
kind: world-rule-migration
importance: major
event_time: "2026-07-29"
participants:
  - ENT-000125
description: "At an out-of-character readiness pause, the live campaign explicitly adopted frozen Gatefall World Rule Profile 1.6 from frozen 1.5. The migration consumed no fictional time and re-resolved no prior action.

**Rule change.** The daily quest continues to issue at 06:00 local, but no longer runs for 24 hours. Its deadline is now 00:00 immediately following its issue date: the Bearer may finish from 06:00 through 23:59, and an incomplete quest fails at midnight. Failure resets the informational streak and fires the penalty-zone transfer then; if the Bearer is already inside a sealed instance, the failure records at midnight and only the transfer defers until exit (Profile Sections 8.1 and 8.3).

**Active-quest migration.** Alexander's fifth daily quest issued 2026-07-29 06:00. Its existing progress is preserved exactly: push-ups 100/100, sit-ups 100/100, squats 100/100, run 0/10. Its deadline moves from 2026-07-30 06:00 to **2026-07-30 00:00 America/Chicago**. At the current fictional time, 14:11, the quest remains active and no penalty fires.

No reward, streak, Health, Mana, XP, Stat, gold, item, ownership, relationship, or fictional-state value changed. Profile version and deadline state alone changed."
```

## EVT-000083 - The Filing, the Split, and the First Night

```yaml
id: EVT-000083
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-29 14:11 to 2026-07-30 morning"
  record_time: "2026-07-30T09:00:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-29 to 2026-07-30"
participants:
  - ENT-000125
  - ENT-000130
  - ENT-000136
  - ENT-000137
  - ENT-000138
  - ENT-000139
  - ENT-000140
description: "Continuing directly from `EVT-000081`/`EVT-000082`'s apartment interval, 14:11 on 2026-07-29.

**Rewards and allocation.** Alexander claimed the pending Ability Points +3 (unspent 15→18) and opened one Daily Random Box (d100 36 → System gold, +500 g, gold 22,520→23,020). He allocated all 18 unspent points: Strength +4, Vitality +3, Perception +10, Intelligence +1 (base 25/23/17/20/19 → 29/23/20/30/20), re-deriving Health to 92/92 and Mana to 40/40.

**The Daily Premium cycle**, rotated unseen at 06:00, was rolled for real on opening `/system shop`: Rank rolls weapon d100=71 (D-Rank, +1 Rank), armor d100=16 (E-Rank), accessory d100=39 (E-Rank), rune d100=24 (E-Rank), key d100=48 (E-Rank); model rolls weapon d7=4 (Horizon Reacharm), armor slot d5=2/style d5=1 (Bastion torso), accessory d5=1 (Hunter's Band), consumable d6=6 (Clarity Phial), rune d10=4 (Stone Skin), key d6=5 (Runic Key). Alexander bought the **Ascendant Hunter's Band [E-Rank]** (160 g, Strength +4, equipped) and a **Premium Rune teaching Stone Skin** (2,500 g, consumed — taught at its native D-Rank since the E-Rank offer-Rank rolled below the skill's floor), then the **Adaptive Bastion Torso [E-Rank]** (120 g, Vitality +3, physical reduction 6%), equipping it in place of the Reinforced Leather Jacket, which he sold back for 15 g (gold 23,020→20,255). He activated Stone Skin once to test it (Mana 40→36) and dropped it without incident. The Horizon Reacharm, Clarity Phial, and Runic Key remain unpurchased, available until the 2026-07-30 06:00 rotation.

**Civilian dress and the errand.** To avoid arriving at the evening meeting looking like he'd trained or fought, Alexander showered and unequipped everything but the Hunter's Band — main hand, off hand, torso, gauntlets, and shin guards have been stored since and were not re-equipped for the rest of the day. He routed his outstanding 10 km daily-quest run through **Vanguard Trade & Gear** (`ENT-000140`), a larger licensed Chicago outfitter distinct from Ironbound, and bought two replacement resonance chisels with cash: a standard model ($75) and a heavier 'Longhaul' model ($140, cash $1,920→$1,705). The run itself completed the fifth daily quest in full (push/sit/squat/run all at maximum; streak 4→5), resolved automatically as demonstrated competence. He ate lunch at a diner, changed into packed civilian clothes in its restroom, and took transit to the Coalition, arriving 17:34.

**The payout discrepancy.** Alexander asked Kesha Morrison (`ENT-000130`) after his three pending payouts. By explicit ruling, standard Coalition contract-payout processing is **2–3 business days** — which meant Red Line ($2,313, filed 07-25), Cicero Scar ($5,700, same batch), and Frozen Gallery ($24,663, filed 07-26) should already have arrived and hadn't, despite Kesha's system showing all three released. A stale account-sync issue was identified and fixed by re-saving the account record, forcing a re-push; all three cleared within the hour. Cash $1,705 → **$34,381**.

**The Coalition case table.** Julian (`ENT-000137`), Renata (`ENT-000138`), Priya (`ENT-000136`), and Owen (`ENT-000139`) convened at 18:00. Alexander delivered the agreed 'no hero' account of the Ashfield clear to Julian and Renata plainly, without embellishment; both accepted it as matching what they'd personally lived through, Renata noting it 'tracks with my read of the fight.' Priya confirmed she would file it the morning of 2026-07-30.

**The loot split.** Alexander proposed waiving Priya's 10% leader's share outright, citing shared risk; Priya held her ground, citing the real liability her signature carries. Alexander conceded the point but countered with a different ask — that Priya formally cede tactical and strategic field command to him going forward, keeping the contractual lead and the 10% (d100 49, net +2 — the precedent she'd already set ceding him the call inside the Ashfield boss fight, his demonstrated competence, and the ask not touching her name on the contract, against the pride cost of conceding it in front of her own crew — effective 89, **strong success**). Priya agreed plainly, citing the field precedent herself; Julian and Renata both endorsed it without reservation. The crystal/core pool (16 C-Rank crystals, 2 C-Rank cores, $52,500 declared value) then split under standard terms: Priya $14,700 (10% plus an equal fifth), Julian/Renata/Owen/Alexander $9,450 each. The Longshot [C-Rank] will sell and split the same way once appraised, since no one on the crew uses a bow. Priya carries the physical loot to file and close the contract 2026-07-30.

**The crew dinner.** Alexander joined Julian, Renata, Priya (briefly, before leaving to ice her injury), and Owen for food — the first time the five have been together with nothing left to survive, decide, or file. Backgrounds surfaced: Julian's downstate Illinois farm upbringing and the shotgun he already knew before awakening, and a truck restoration he lit up describing; Renata's six years as a Chicago beat cop (explaining her read as trained instinct, not a signature ability) and her private, badly-played competitive chess habit; Priya's amateur boxing past, a partner at home, and a garden she's disproportionately proud of; Owen's mother, a hospice nurse, and mending as inherited work. Alexander disclosed his own background in turn — a physics/mathematics master's, part-time teaching, and krav maga since early childhood — drawing genuine surprise and warmth from the table. A recurring crew training and coordination schedule was agreed: first session in 2–3 days, then roughly weekly or every 10 days thereafter (no specific date fixed). Under the table, unseen by the others, Alexander and Owen held hands after Owen's quiet admission that he didn't mind sharing Alexander with his own calculating mind, 'long as you come back.'

**The first night (`REL-000066`).** Alexander deliberately gave Owen the evening alone after dinner, then texted him within the hour — 'Are you still up?' Owen: 'was hoping you'd cave first tbh... come over or you want me there?' Alexander went to Owen's Rogers Park apartment. Both named the relationship plainly for the first time: Alexander — 'I want you. I want us. What do you want?' — Owen — 'You. Just you... I don't know what you are, Alexander... and it doesn't change this.' They spent the night together for the first time. Morning found them still together, Owen asleep with an arm over Alexander, in his own apartment for the first time in the three months since Alexander awakened. The relationship is no longer an open question for either of them, though neither has used a name for it yet.

No combat, injury, or XP this event. Ending state: 2026-07-30 morning, Owen's apartment; Health 80/80, Mana 36/40 (equipment currently limited to the Hunter's Band, main hand/off hand/torso/hands/legs stored); gold 20,255; cash $34,381 with a further ≈$9,450 pending Priya's filing; 15 stat points now 0, fully allocated; one skill known (Stone Skin, Novice); pending rewards Ability Points +3, Status Recovery ×1, Daily Random Box ×3."
```

---

## EVT-000084 - The Morning After: Training, the Queue, and the Word

```yaml
id: EVT-000084
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: session-2-gameplay
  event_time: "2026-07-30, 05:40 to 08:15"
  record_time: "2026-07-30T08:15:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-30 morning"
participants:
  - ENT-000125
  - ENT-000139
description: "The morning after `EVT-000083`, entirely in Rogers Park: Owen Callahan's apartment, Loyola Park and the lakefront path, and a neighborhood diner. No combat, no injury, no XP.

**Waking (Owen's apartment, before 06:00).** Alexander woke beside Owen for the first time and stayed — an unhurried hour of affection with no objective attached to any part of it. Overnight rest settled Mana 36 → 40/40 under Section 5.2's resting recovery, deferred from the prior event's settlement.

**06:00 — the System's two Tier-1 events fired mid-embrace** (Sections 8.1, 12.5, 14.3). The 2026-07-29 Daily Premium cycle expired with the Horizon Reacharm [D-Rank], Clarity Phial, and Premium Runic Key [E-Rank] unpurchased; they do not carry forward. The 2026-07-30 cycle was generated by twelve real rolls — Rank d100s weapon 6 (E-Rank), armor 50 (E-Rank), accessory 60 (D-Rank, +1 Rank), rune 13 (E-Rank), key 68 (D-Rank, +1 Rank); model rolls weapon d7=7 (Aegis Guard Shield), armor slot d5=1 / style d5=4 (Adaptive Watcher, head), accessory d5=1 (Hunter's Band), consumable d6=3 (Mender's Seal), rune d10=9 (Rupture — an unknown skill, so no reroll was required), key d6=2 (Crystal Key). The sixth daily quest issued on the standard 06:00-to-midnight window. Alexander opened neither the shop tab nor any `/system` panel this event; the cycle is recorded state he has not yet looked at.

**The daily quest, run as a two-person session.** Rather than train alone, Alexander invited Owen — a man whose own stated cardio is a rumour — borrowed shorts from him, and took him out to Loyola Park at dawn. A 2.4 km lakefront warm-up loop, with Owen supplying the local distance and correcting Alexander's 5 km estimate, finished Owen and completed a fifth of the run objective. Alexander then ran the remaining 8 km at his own pace across five further loops while Owen alternately tried to keep up, stretched, and acquired coffee. He came back not visibly winded, which Owen — a C-Rank mender, two days after watching him nearly die — noticed carefully and declined to remark on.

The calisthenics were run as coaching. Alexander set a 10/10/10 round for Owen against his own 20/20/20, five rounds, two-minute rests, and taught him form throughout in an instructor's register the crew has never heard from him: weight back and knees out on the squat, ribs down and no hinge on the push-up, a fist's space under the chin on the sit-up. Owen was offered a descending ladder (dropping two reps per round) or the exit; he took the ladder and completed 30 of each without once taking the exit — the first time in his life he has pushed his own body for anything, and a first he did not need to be asked twice about. **The sixth daily quest resolved complete** (100/100/100, 10/10 km) at approximately 07:40. Streak 5 → 6. Its three rewards stack alongside the existing pending bundle.

**The diner — the first biography Alexander has volunteered.** Owen raised, without accusation, that the previous night's crew dinner had produced real backgrounds for everyone at the table except Alexander, and asked explicitly for the ordinary things while restating that the other matter remains unasked. Alexander answered honestly and at length, establishing new campaign canon: he took the secondary-school mathematics and physics post because the research field has a queue no fresh graduate enters directly, not from preference — **he wanted to be a scientist, to study physical law and discover something usable** — and krav maga was lifelong rather than chosen, with him already an established instructor in his first year of university and genuinely loving the teaching of it.

Owen answered with the observation nobody had put to Alexander before: that he wanted to discover new physical laws and ended up in the one profession on Earth that walks through a hole into a place with its own weather, light, and ground, which no laboratory, regulator, or awakened — Owen included, about his own five-year-old gift — can explain. **Alexander then stated his actual motive for the first time in the campaign: he intends to continue as a hunter and to get better at fighting specifically because capability is the price of access — he cannot study the phenomenon from the cordon.** This converts OBJ-4 from an unearned aspiration into a stated mechanism.

**Owen's tactical terms, and Alexander's use of him.** Owen asked to be used properly rather than parked at the rear like a fire extinguisher, noting that he could not reach Alexander twice inside the Ashfield Gate. Alexander explained the rear placement as ignorance rather than dismissal — on Tuesday he did not yet know Owen's endurance and had nobody to cover him — named him **the most valuable asset in the crew**, tied the agreed weekly crew training (OBJ-11) to building a formation in which everyone is positioned to contribute, and asked for Owen's help outright, an ask he has made of nobody else in this campaign.

Owen supplied three operating requirements, expressed diegetically and without numbers (Section 20.5): he must be able to **see the line** rather than stand behind it, so he can move before a wound rather than after; **he must be told the instant someone is hurt** (on Tuesday he learned of Alexander's near-death by looking over); and because his real repairs per clear are finite — four or five ordinary, as few as two for something like the boss's damage — **the call on when he spends one belongs to the field commander, not to the person asking to be patched up.** Alexander now holds that call under `REL-000065`.

**The complication, named aloud.** Owen raised the collision between the two ties before anyone else could: Alexander now decides when Owen spends himself in a Gate *and* shares his bed, and the two will rub the first time Alexander orders him to hold back or refuses to let him come. Neither treated it as solvable this morning; it is on the record deliberately rather than discovered at a bad moment. Owen further flagged that the crew will work the relationship out regardless — he gives Renata, six years a beat cop, about two more dinners.

**The word (`REL-000066`).** Alexander said he did not want the relationship to be strictly business; Owen answered flatly and immediately that he did not either, then asked the practical question. Alexander then asked him directly — visibly red, grinning, entirely unguarded — **whether Owen would be his boyfriend**, and Owen said yes without hedging and took his hand in open view of the diner. Both had named the relationship plainly the night before; this is the first time either has used a word for it. Owen intends to tell Priya first, before the tactical arrangement, specifically to watch her reorganize her opinion of Alexander in real time.

**State at close.** 2026-07-30, approximately 08:15, a diner two blocks from Owen's apartment in Rogers Park. Level 7, XP 40/700, Health 80/80, Mana 40/40, 0 unspent points, gold 20,255, cash $34,381 (≈$9,450 Ashfield share still pending Priya's filing). Equipment unchanged and still stored but for the Ascendant Hunter's Band; he trained in borrowed shorts and yesterday's shirt. Pending rewards: Ability Points +3 ×2, Status Recovery ×2, Daily Random Box ×4. Daily streak 6, no quest active until 2026-07-31 06:00. Nothing scheduled, owed, or urgent."
```

---

## EVT-000085 - Gatefall Profile 1.7 Rank Terminology Migration

```yaml
id: EVT-000085
canonical_record: REC-000079
schema_version: "0.1.3"
status: active
provenance:
  source: owner-approved-world-authoring
  event_time: "2026-07-30, approximately 08:15; readiness pause"
  record_time: "2026-07-25"
type: Event
kind: profile-migration
importance: routine
event_time: "2026-07-30, approximately 08:15"
participants:
  - ENT-000125
description: "At an out-of-character readiness pause, the live campaign explicitly adopted frozen Gatefall World Rule Profile 1.7 from frozen 1.6. The migration consumed no fictional time and re-resolved no prior action. Gatefall's E-Rank–S-Rank classification is now called Rank everywhere and its values render E-Rank through S-Rank. Alexander's persisted `system_tier: E` field became `system_rank: E`, preserving the same content/reward bracket. Every Stat, level, XP total, Health and Mana value, item, loadout slot, skill, title, currency, ownership fact, pending reward, quest state, streak, injury, relationship, and resolved outcome remains unchanged. Immutable checkpoints through 0015 retain their captured terminology and profile metadata; restoration runs the applicable profile chain through 1.7 before play."
```
