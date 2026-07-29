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
