# NPCs and Factions - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) tracking campaign-local figures and the protagonist's relationships to world-layer institutions and figures. References world canon; does not duplicate it.

---

## Record

```yaml
id: REC-000077
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-23 to 2026-07-24, crew assembly"
  record_time: "2026-07-24T09:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000126
  - ENT-000127
  - ENT-000128
  - ENT-000129
  - ENT-000130
  - ENT-000131
  - ENT-000132
  - ENT-000133
  - ENT-000134
  - ENT-000135
  - REL-000062
  - REL-000063
  - REL-000064
```

---

## Campaign-Local Figures — Session 1

### ENT-000126 — Tanya Voss

Crew lead and striker; mid-30s, an experienced Gate clearer with three-plus clears behind her alongside Marcus. She recruited Alexander onto the Red Line Corridor contract after reading him as someone who would commit rather than fold — reputation is "what the desk thinks," she told him, and "fact is what happens in a Gate." Her signature ability is **Keen Edge**: her mana runs along any blade she grips, holding an edge that bites seams plain steel skids off.

```yaml
id: ENT-000126
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-23, Coalition case table"
  record_time: "2026-07-24T09:00:00Z"
type: Character
subtype: crew leader / striker
scope: local
lifecycle: active
aliases:
  - name: "Tanya Voss"
    quality: current
relationships:
  - REL-000063
canonical_state:
  location: ENT-000087
  condition: "Healthy; equipped with a heavier reinforced jacket and shoulder plating than an E-rank starter kit"
  capabilities: "Experienced licensed hunter and crew leader; striker working type; three-plus prior Gate clears with Marcus. Reads people quickly and decisively."
  signature_ability: "Keen Edge — her mana runs along any blade she grips, holding an edge that bites armor seams plain steel skids off (Profile Section 13.6: method texture, resolved at her band)."
  personality: "Direct, competent, unsentimental. Judges hunters by conduct in a Gate, not by desk reputation. Takes calculated risks on people who show commitment; does not waste time on those she expects to fold."
  situation: "Led the five-hunter Red Line Corridor clear (true grade E, one below the unconfirmed D assessment) to a full, no-casualty clear on 2026-07-24 (`EVT-000059`), then the loot phase and exit (`EVT-000060`): coached Alexander through mining the vein herself (chisel technique), signed off on his safe-target haul (five mined E-crystals), and closed the contract at the Coalition desk, filing the payout and crystal sale on 2026-07-25. Her regard for him ended the day at genuine respect, reinforced once more by his sincere, unshowy goodbye and his candor about being new to a hunter's income. Crew dispersed that evening; she told Alexander he's welcome back on the next posting whenever the crew looks at the boards again, expected in a few days, not tomorrow."
```

### ENT-000127 — Marcus

The crew's sensor: an awakened whose gift reads Gate interiors — layout, population density, and whether a dungeon is holding something its assessment missed. Quiet and analytical; he is Tanya Voss's established partner and reads the space on entry so the crew knows what it is actually walking into.

```yaml
id: ENT-000127
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-23, crew briefing"
  record_time: "2026-07-24T09:00:00Z"
type: Character
subtype: sensor
scope: local
lifecycle: active
aliases:
  - name: "Marcus"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; no adverse condition established"
  capabilities: "Sensor working type: reads Gate interior layout, population density, and anomalies on entry. Tanya Voss's established clearing partner; better at field triage-by-read than at combat."
  signature_ability: "Deep Read — he perceives a Gate interior through the mana in its air: layout, population weight, age of a signature, and whether something is watching back (Profile Section 13.6)."
  personality: "Quiet, focused, observes before acting. Takes the measure of new people carefully."
  situation: "Assigned to point for the Red Line Corridor clear, reading the interior on entry. Present at the 2026-07-23 briefing and at the Gate entrance on 2026-07-24. At the walk-out (`EVT-000059`) he noted, without knowing why, that something seemed to be sitting unresolved behind Alexander's eyes since the fight — an observation of visible distraction, not knowledge of the System, which remains unknown to him. Surname unestablished."
```

### ENT-000128 — Elias Voss

Striker and Tanya's brother; broad-shouldered, blunt-force fighter carrying a reinforced steel hammer, two-plus years licensed. He greeted Alexander warmly and told him plainly that if they were in the Gate together, he had his back.

```yaml
id: ENT-000128
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-24, Gate entrance"
  record_time: "2026-07-24T09:00:00Z"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Elias Voss"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; equipped with a reinforced steel hammer"
  capabilities: "Striker working type, blunt-force specialty; two-plus years licensed. Holds a line in close combat."
  signature_ability: "Groundbreak — braced, he cannot be knocked from his feet, and his hammer-blows carry a ground-shock through whatever his stance is planted on (Profile Section 13.6)."
  personality: "Confident, warm, reassuring. Supportive of newer hunters."
  situation: "Crew member for the Red Line Corridor clear and Tanya Voss's brother. Introduced himself to Alexander at the Gate entrance on 2026-07-24 and assured him of support inside."
```

### ENT-000129 — Dr. Sarah Chen

The crew's mender — the rare awakened who heals by touch, closing wounds mid-fight (roughly one awakened in twelve). Six months licensed; Horizon Guild tried to poach her twice and she stayed independent. Petite, athletic, medical kit across her chest; calm and crisis-trained. She told Alexander plainly: stay alive, and let her keep him that way.

```yaml
id: ENT-000129
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-24, Gate entrance"
  record_time: "2026-07-24T09:00:00Z"
type: Character
subtype: mender
scope: local
lifecycle: active
aliases:
  - name: "Dr. Sarah Chen"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; carries a field medical kit"
  capabilities: "Mender working type: touch-based restorative ability, able to close wounds and restore Health mid-fight — a scarce and valuable gift (~1 in 12 awakened). Six months licensed; twice declined Horizon Guild recruitment to stay independent. Trained for crisis triage. Field-touch magnitudes per Profile Section 13.5."
  signature_ability: "Mending Touch — her mana closes what it is laid against: flesh knits under her hands, the classic mender manifestation (Profile Section 13.6; magnitudes per Section 13.5)."
  personality: "Calm, focused, prioritizes keeping people alive. Direct about her role and what she expects of the crew."
  situation: "Mender for the Red Line Corridor clear. Spent two of her three per-clear field-touches on Alexander after he took serious wounds from a common beast and, later, the boss's opening leap — both times bringing him back from a dangerous margin. One field-touch remains banked for the walk out. Currently treating the crew's wounds in the post-boss window before they exit."
```

### ENT-000130 — Kesha Morrison

Senior coordinator at the Windy City Hunters Coalition desk; about fifty, solid build, a memory for faces and files that makes her good at the job. She had spent days looking at Alexander's file with visible doubt — but when he came back with a signed contract, she witnessed it, filed it with Region V, and allowed that he had made a good pull.

```yaml
id: ENT-000130
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-23, Coalition desk"
  record_time: "2026-07-24T09:00:00Z"
type: Character
subtype: Coalition coordinator
scope: local
lifecycle: active
aliases:
  - name: "Kesha Morrison"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; no adverse condition established"
  capabilities: "Senior freelancer coordinator at the Windy City Hunters Coalition; manages postings, crew assignments, and contract witnessing/filing with BGM Region V. Strong memory for hunters' files and faces. Not established as a combat-active hunter."
  personality: "Direct and professional. Reads a file and communicates doubt without cruelty; respects hunters who follow through on a commitment."
  situation: "Alexander's principal Coalition desk contact. On 2026-07-23 she pointed him toward Tanya Voss's undersubscribed Red Line crew, witnessed and filed his signed contract, and gave him a list of three E-grade gear vendors. On 2026-07-25 (`EVT-000060`) she filed the Red Line Corridor contract's payout and crystal-sale paperwork (quoting 1–2 business days to clear) and walked Alexander through the current board: two E-D waiver-tier crews short a fifth, a standing ask for harvest-element hires (having heard through the crew grapevine that he'd done real mining work, not just stood around), a live confirmed-D rail-yard contract with one open harvest slot filed for 2026-07-26 07:00 (`EVT-000061`). She initially told him C-grade work was closed to him outright — corrected per `EVT-000062`: his E-card bars him only from **strike/combat** contracts at C-grade and above (Profile Section 19.4); harvest/support work is not rank-gated at all (Section 9.4, `d53114b`), so a C- or even B-Gate's mining crew is legally open to him right now, card notwithstanding.\n\n  Later that same day (`EVT-000063`), Alexander returned; she actually checked the board this time and surfaced a confirmed C-grade harvest slot at the Cicero Scar with the same corporate-adjacent contractor, staging that afternoon — he took it, and she filed him onto it. He came back a third time after the Cicero Scar job to ask about a further C-grade slot for 2026-07-26; she found one (Frozen Gallery archetype, same contractor, logistics run by Dale — `ENT-000135`) and pulled him off the never-confirmed D-grade rail-yard interest to put him on it instead. She also confirmed for him that Coalition freelancer registration carries no base salary — income comes only from work actually taken."
```

### ENT-000131 — Diane

Owner and operator of **Ironbound**, the independent gear shop on Milwaukee Avenue; mid-40s, built solid, moving with the bearing of someone who has spent time in Gates. She fitted Alexander for his first kit, steered him toward mobility over heavy plate given his krav maga background, and told him to come back after his first clear to talk over what worked. (Ironbound the establishment is represented at this stage by its owner Diane; it carries no separate institution entity.)

```yaml
id: ENT-000131
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-23, Ironbound gear shop"
  record_time: "2026-07-24T09:00:00Z"
type: Character
subtype: gear-shop owner
scope: local
lifecycle: active
aliases:
  - name: "Diane"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; no adverse condition established"
  capabilities: "Owner/operator of Ironbound gear shop (Milwaukee Avenue, Chicago); stocks E- and D-grade gear and performs custom fittings. Gate-experienced; gives practical, function-first equipment advice."
  personality: "Professional, practical, plainspoken. Values mobility and function over decoration; takes fitting seriously."
  situation: "Sold Alexander his first hunter-grade kit on 2026-07-23 (reinforced leather jacket $800, E-grade dagger $500, reinforced gauntlets $600, shin guards $100; $2,000 total), custom-fitted the gauntlets, and invited him back after his first clear. Represents the Ironbound establishment, which has no separate entity."
```

### ENT-000132 — Cutting Edge

A custom E-/D-grade gear shop in Chicago's warehouse district, one of three vendors Kesha Morrison named to Alexander. Known for good-quality custom work on a slower turnaround. Alexander did not visit it.

```yaml
id: ENT-000132
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-23, named at the Coalition desk"
  record_time: "2026-07-24T09:00:00Z"
type: Institution
subtype: gear vendor
scope: local
lifecycle: active
aliases:
  - name: "Cutting Edge"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (worlds/gatefall/, ENT-000087); exact address unestablished"
  function: "Custom E- and D-grade hunter gear; made-to-order work on a slower turnaround than stock shops"
  standing: "Independent vendor named to Alexander by Kesha Morrison (ENT-000130) on 2026-07-23 as a custom option. Not visited; interior, staff, and pricing unestablished."
```

### ENT-000133 — Horizon's Outfitter

Horizon Guild's affiliated gear outfitter on Michigan Avenue, the third vendor on Kesha Morrison's list: pricier than the independents, but reliable stock and service with no custom-fitting delay. Alexander chose Ironbound over it for value and did not visit.

```yaml
id: ENT-000133
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-23, named at the Coalition desk"
  record_time: "2026-07-24T09:00:00Z"
type: Institution
subtype: gear vendor
scope: local
lifecycle: active
aliases:
  - name: "Horizon's Outfitter"
    quality: current
canonical_state:
  location: "Michigan Avenue, Chicago (worlds/gatefall/, ENT-000087); exact address unestablished"
  function: "Guild-affiliated retailer of E- and D-grade hunter gear with reliable in-stock inventory and no custom-fitting delay"
  standing: "Affiliated with Horizon Guild (ENT-000100). Named to Alexander by Kesha Morrison (ENT-000130) on 2026-07-23 as the pricier, reliable option; he chose Ironbound instead. Not visited; interior, staff, and exact pricing unestablished. No standing relationship between Alexander and Horizon established by this mention."
```

### ENT-000134 — Ada Reyes

Logistics coordinator for a corporate-adjacent contractor running harvest-hire C-grade Gate clears; broad-shouldered, carries a foreman's vest and a tablet, not a combatant. Ran the Cicero Scar operation on 2026-07-25 — Alexander's first job under this contractor.

```yaml
id: ENT-000134
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: session-1-gameplay
  event_time: "2026-07-25, Cicero Scar staging"
  record_time: "2026-07-25T00:00:00Z"
type: Character
subtype: contractor logistics coordinator
scope: local
lifecycle: active
aliases:
  - name: "Ada Reyes"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Runs support-side logistics for a corporate-adjacent contractor's Gate clears — briefs harvest hires on protocol (stay behind the secured line, drop and move on a fall-back call), logs declared hauls against a manifest tablet, is not the strike captain and does not command the combat line."
  personality: "Direct, professional, no patience for wasted time but fair — briefed Alexander plainly and complimented his declared haul (7 C-crystals) as better than a typical first-timer's."
  situation: "Ran the Cicero Scar C-grade harvest-element job on 2026-07-25 (`EVT-000063`): briefed Alexander, logged his 7 declared C-crystals, and gave him an off-the-cuff (and, on reconsideration, too low) verbal payout estimate of $1,500–2,500 before heading back to her own paperwork. Vouched for him afterward to the contractor's other logistics staff, which is how Dale (`ENT-000135`) already knew his name at the next job."
```

### ENT-000135 — Dale

Logistics coordinator for the same corporate-adjacent contractor, running a separate C-grade harvest-hire operation. Stocky, tablet-carrying, same role as Ada Reyes on a different site.

```yaml
id: ENT-000135
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: session-1-gameplay
  event_time: "2026-07-26, staging near the Frozen Gallery Gate"
  record_time: "2026-07-26T00:00:00Z"
type: Character
subtype: contractor logistics coordinator
scope: local
lifecycle: active
aliases:
  - name: "Dale"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Runs support-side logistics for the same corporate-adjacent contractor as Ada Reyes, on a different confirmed C-grade Gate clear."
  personality: "Easygoing, dryly amused — greeted Alexander's explanation for arriving sweaty (a run doubling as commute) with open approval rather than suspicion."
  situation: "Running the 2026-07-26 C-grade harvest-element job (confirmed grade, archetype Frozen Gallery) that Alexander signed onto through Kesha Morrison. Already knew his name and reputation as a reliable cutter from Ada Reyes's word passed through the contractor. Briefed him and the harvest crew at staging, then assigned him a first vein and later a second, richer one near the chamber edge (`EVT-000065`). Making rounds with his tablet, checking sections; complimented Alexander's pace secondhand via other harvesters' remarks. Granted Alexander a short break on request (ten minutes, not suspicious of the ask or of the dead vein worked moments before the call to move) — unaware of either private System-shop sale Alexander made while appearing to keep working."
```

---

## Campaign Relationships

### REL-000062 — Windy City Hunters Coalition (institutional affiliation)

Defined in `110_WORLD_LEDGER.md` (`REC-000075`). Alexander's freelancer registration with the Coalition; as of 2026-07-23 it is the channel through which he was placed on Tanya Voss's crew.

### REL-000063 — Alexander's membership in Tanya Voss's crew

```yaml
id: REL-000063
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000058
  event_time: "2026-07-23, contract signed"
  record_time: "2026-07-24T09:00:00Z"
endpoints:
  - ENT-000125
  - ENT-000126
type: crew-membership
qualities: "Alexander's place in Tanya Voss's five-hunter Red Line Corridor crew, anchored to the crew lead (Voss). Full roster: Tanya Voss (ENT-000126, lead/striker), Marcus (ENT-000127, sensor), Elias Voss (ENT-000128, striker), Dr. Sarah Chen (ENT-000129, mender), and Alexander Pendragon (ENT-000125, striker/martial artist). Contract: the posted Red Line Corridor clear (EVT-000051), unconfirmed D, timer breaking midnight 2026-07-24. Split: the Gatefall standard party split (Profile Section 13) — the crew leader takes a 10% leader's share off the top, and the remaining 90% is divided equally among all five members, leader included. Tanya's desk shorthand of a 'five-way split' referred to that equal division of the remainder; no flat-equal deviation was negotiated, so standard terms govern."
state: "Contract closed 2026-07-24 (`EVT-000060`): full clear, loot declared at exit, standard split applied ($10,000 contract + ≈$2,850 crystal/core value, Alexander's equal-fifth ≈$2,313), filed with Kesha Morrison at the Coalition on 2026-07-25 and pending payment (1–2 business days). The crew dispersed the evening of the clear; Tanya told Alexander he's welcome on the next posting whenever the crew looks at the boards again, expected in a few days. Her regard for him remains genuine respect, reinforced by his sincere goodbye and candor about being new to hunter income."
history: "Formed at the Coalition case table on 2026-07-23 when Alexander, directed by Kesha Morrison, committed to Voss's undersubscribed crew and signed the standard five-hunter contract (EVT-000058). Proved out on 2026-07-24 in the crew's first Gate together, the Red Line Corridor clear (EVT-000059)."
```

### REL-000064 — Alexander's harvest-hire standing with the corporate-adjacent contractor

```yaml
id: REL-000064
canonical_record: REC-000077
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000063
  event_time: "2026-07-25, Coalition desk and Cicero Scar staging"
  record_time: "2026-07-25T00:00:00Z"
endpoints:
  - ENT-000125
  - ENT-000134
type: harvest-hire
qualities: "Alexander's standing as a harvest-element hire (miner) for a corporate-adjacent contractor running C-grade Gate clears, routed through the Windy City Hunters Coalition rather than a direct guild posting. Not a peer-crew membership like `REL-000063` — hired support labor, paid a harvest share off declared mined crystals rather than an equal split, per Profile Section 9.4/11.1 (exact split formula not yet authored in the world rules; this campaign's payout is by Runtime ruling)."
state: "Two jobs completed or in progress: the Cicero Scar C-grade clear (2026-07-25, `EVT-000063`) — 7 declared C-crystals, ≈$5,700 harvest share pending — and the Frozen Gallery C-grade clear (2026-07-26, in progress, `EVT-000065`), staffed by a different site coordinator (Dale, `ENT-000135`) who already knew Alexander by reputation from Ada Reyes. Two vein assignments worked at the Frozen Gallery: 30 crystals mined, 13 currently held in the declarable count pending the job's eventual exit and formal declaration; 24 crystals sold privately through the System shop across the job and never entered this contract's declared pool — undeclared theft under the standard support-contract terms (Profile Section 13.2), unknown to Dale or the contractor. No standing contract beyond a per-job basis; each job is taken individually through Kesha Morrison at the Coalition desk."
history: "Formed 2026-07-25 when Kesha Morrison surfaced the Cicero Scar harvest slot after Alexander asked specifically about C-grade mining work, following the correction that his E-card does not bar harvest work at any grade (`EVT-000062`)."
```

---

## Referenced World-Layer Institutions

| Institution | Record | Relevance to Alexander |
|---|---|---|
| Windy City Hunters Coalition | `ENT-000102` (`worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md`), `REL-000062` | His registered freelancer affiliation; coordinated his placement on Tanya's crew. |
| BGM Region V | `ENT-000099` (`worlds/gatefall/institutions/bgm-region-v/250_INSTITUTION_LEDGER.md`) | His licensing authority; issued his E-rank card, and filed his signed crew contract. |
| Horizon Guild, Ironline Guild | `ENT-000100`, `ENT-000101` | Chicago's two major guilds; neither has expressed interest in fielding him. Horizon also operates the outfitter (`ENT-000133`) named to him. |
