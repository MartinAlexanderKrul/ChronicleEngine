# NPCs and Factions - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) tracking campaign-local figures and the protagonist's relationships to world-layer institutions and figures. References world canon; does not duplicate it.

---

## Record

```yaml
id: REC-000077
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000224
  game_date: "2026-08-09 ~14:45 -05:00"
  real_date: "2026-07-30"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000178
  - ENT-000179
  - ENT-000180
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
  - ENT-000136
  - ENT-000137
  - ENT-000138
  - ENT-000139
  - ENT-000140
  - ENT-000141
  - ENT-000142
  - ENT-000143
  - ENT-000144
  - ENT-000145
  - ENT-000146
  - ENT-000147
  - ENT-000148
  - ENT-000149
  - ENT-000150
  - ENT-000168
  - ENT-000169
  - ENT-000170
  - ENT-000172
  - ENT-000177
  - REL-000062
  - REL-000063
  - REL-000064
  - REL-000065
  - REL-000066
  - REL-000067
  - REL-000068
  - REL-000069
  - REL-000070
```

---

## Closed Channels

Facts a named NPC has **no in-fiction channel to**, ruled by the player during play (Resident Core, *The NPC Channel Check*). A correction is otherwise only a conversational event: it evaporates at the end of the scene, which is why the same leak has recurred three and four times in one session. Writing it here is what makes the ruling outlive the turn.

Deliberately lightweight — a row, not a Persistent Object. Add one the moment a channel is ruled closed; do not mint an identifier, bump provenance, or wait for a checkpoint. A row is retired only when its **Opens on** condition actually happens in the fiction, and is then dated rather than deleted.

| NPC | Fact they have no channel to | Ruled | Opens on |
|---|---|---|---|
| Kesha Morrison (`ENT-000130`) | Marcus's private read on Alexander's distraction | 2026-07-24 | Marcus telling her, or Alexander doing so |
| Kesha Morrison (`ENT-000130`) | Diane's private invitation for Alexander to return to her shop | 2026-07-24 | Either party telling her. **Leaked twice**, the second time after correction |
| Owen Callahan (`ENT-000139`) | The Lakefront Gate booking Alexander arranged with Kesha | 2026-08-05 | Alexander telling him. No voicemail, sponsor-of-record text, or automated notification exists — the booking is **unconfirmed** until Alexander personally confirms it with Kesha, so no system message can have been generated. **Leaked three times in one scene**, twice after correction |
| Owen Callahan (`ENT-000139`) | Alexander's quest, regimen, and completion data — "the sheet" | 2026-08-05 | **Nothing.** Owen is not the Bearer; the System is perceptible to its Bearer alone (Profile §14.4) and there is no artifact to see. He can read Alexander's *state* — tired, favouring a side, off his usual pattern — and say so as a read, never as data |

**On the two Owen rows.** Both come from one session and are the same failure on unrelated facts, which is the point: the habit is reaching for whatever detail is nearest to make a line sound informed, not mishandling one plot thread. Owen is close to Alexander and therefore the NPC most likely to attract it — he has the most reason to ask, and the least channel to the System.

---

## Campaign-Local Figures — Session 1

### ENT-000126 — Tanya Voss

Crew lead and striker; mid-30s, an experienced Gate clearer with three-plus clears behind her alongside Marcus. She recruited Alexander onto the Red Line Corridor contract after reading him as someone who would commit rather than fold — reputation is "what the desk thinks," she told him, and "fact is what happens in a Gate." Her signature ability is **Keen Edge**: her mana runs along any blade she grips, holding an edge that bites seams plain steel skids off.

```yaml
id: ENT-000126
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, Coalition case table"
  real_date: "2026-07-23T15:03:14+02:00"
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
  condition: "Healthy; equipped with a heavier reinforced jacket and shoulder plating than an E-Rank starter kit"
  capabilities: "Experienced licensed hunter and crew leader; striker working type; three-plus prior Gate clears with Marcus. Reads people quickly and decisively."
  signature_ability: "Keen Edge — her mana runs along any blade she grips, holding an edge that bites armor seams plain steel skids off (Profile Section 13.6: method texture, resolved at her band)."
  appearance: "Mid-30s, white, of Dutch-German stock (the Voss name); medium height with a wiry, hard-muscled fighter's build. Short dark-blonde hair pushed back off a sharp, weathered face; pale grey eyes that size a person up in a glance; a thin old scar along the left forearm. Wears a heavy charcoal reinforced jacket with steel shoulder plating over practical dark gear, a well-used single-edged blade at her hip. Reads as exactly what she is — a decade-hardened crew lead who wastes no motion."
  portrait: "assets/portraits/Tanya_Voss_ENT-000126.png"
  personality: "Direct, competent, unsentimental. Judges hunters by conduct in a Gate, not by desk reputation. Takes calculated risks on people who show commitment; does not waste time on those she expects to fold."
  situation: "Led the five-hunter Red Line Corridor clear (true E-Rank, one below the unconfirmed D assessment) to a full, no-casualty clear on 2026-07-24 (`EVT-000059`), then the loot phase and exit (`EVT-000060`): coached Alexander through mining the vein herself (chisel technique), signed off on his safe-target haul (five mined E-Rank crystals), and closed the contract at the Coalition desk, filing the payout and crystal sale on 2026-07-25. Her regard for him ended the day at genuine respect, reinforced once more by his sincere, unshowy goodbye and his candor about being new to a hunter's income. Crew dispersed that evening; she told Alexander he's welcome back on the next posting whenever the crew looks at the boards again, expected in a few days, not tomorrow."
```

### ENT-000127 — Marcus Aldridge

The crew's sensor: an awakened whose gift reads Gate interiors — layout, population density, and whether a dungeon is holding something its assessment missed. Quiet and analytical; he is Tanya Voss's established partner and reads the space on entry so the crew knows what it is actually walking into.

```yaml
id: ENT-000127
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, crew briefing"
  real_date: "2026-07-23T15:03:14+02:00"
type: Character
subtype: sensor
scope: local
lifecycle: active
aliases:
  - name: "Marcus Aldridge"
    quality: current
  - name: "Marcus"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; no adverse condition established"
  capabilities: "Sensor working type: reads Gate interior layout, population density, and anomalies on entry. Tanya Voss's established clearing partner; better at field triage-by-read than at combat."
  signature_ability: "Deep Read — he perceives a Gate interior through the mana in its air: layout, population weight, age of a signature, and whether something is watching back (Profile Section 13.6)."
  appearance: "Early 30s, Black, medium height and lean; close-cropped hair and a short beard. A calm, heavy-lidded gaze that always seems to look slightly past you — the sensor's habit of reading a room rather than watching it. Dresses down in muted layers with minimal gear and no visible weapon; still and unhurried, hands loose at his sides. Quiet enough to be easy to overlook, which suits him."
  portrait: "assets/portraits/Marcus_Aldridge_ENT-000127.png"
  personality: "Quiet, focused, observes before acting. Takes the measure of new people carefully."
  situation: "Assigned to point for the Red Line Corridor clear, reading the interior on entry. Present at the 2026-07-23 briefing and at the Gate entrance on 2026-07-24. At the walk-out (`EVT-000059`) he noted, without knowing why, that something seemed to be sitting unresolved behind Alexander's eyes since the fight — an observation of visible distraction, not knowledge of the System, which remains unknown to him. Surname: Aldridge."
```

### ENT-000128 — Elias Voss

Striker and Tanya's brother; broad-shouldered, blunt-force fighter carrying a reinforced steel hammer, two-plus years licensed. He greeted Alexander warmly and told him plainly that if they were in the Gate together, he had his back.

```yaml
id: ENT-000128
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-24, Gate entrance"
  real_date: "2026-07-23T15:03:14+02:00"
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
  appearance: "Late 30s, white, unmistakably Tanya's brother — the same sharp features on a much bigger frame: broad-shouldered, thick through the chest and arms, a head taller than his sister. Short dark-blonde hair and a trimmed beard, an easy warm grin that reaches his eyes. Reinforced plated jacket strained across the shoulders; a heavy reinforced steel warhammer carried like it weighs nothing. Looks like the wall you want between you and a beast, and knows it."
  portrait: "assets/portraits/Elias_Voss_ENT-000128.png"
  personality: "Confident, warm, reassuring. Supportive of newer hunters."
  situation: "Crew member for the Red Line Corridor clear and Tanya Voss's brother. Introduced himself to Alexander at the Gate entrance on 2026-07-24 and assured him of support inside."
```

### ENT-000129 — Dr. Sarah Chen

The crew's mender — the rare awakened who heals by touch, closing wounds mid-fight (roughly one awakened in twelve). Six months licensed; Horizon Guild tried to poach her twice and she stayed independent. Petite, athletic, medical kit across her chest; calm and crisis-trained. She told Alexander plainly: stay alive, and let her keep him that way.

```yaml
id: ENT-000129
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-24, Gate entrance"
  real_date: "2026-07-23T15:03:14+02:00"
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
  appearance: "Late 20s, East Asian (Chinese-American), petite and compactly athletic. Straight black hair kept in a practical short cut or tied back off her face; steady dark eyes; an economical, unfussy way of moving. A padded field-medical harness and kit ride across her chest over clean, close-fitting practical clothing. Calm to the point of stillness under pressure — the composure of someone who has held a stranger together with her hands."
  portrait: "assets/portraits/Sarah_Chen_ENT-000129.png"
  personality: "Calm, focused, prioritizes keeping people alive. Direct about her role and what she expects of the crew."
  situation: "Mender for the Red Line Corridor clear. Spent two of her three per-clear field-touches on Alexander after he took serious wounds from a common beast and, later, the boss's opening leap — both times bringing him back from a dangerous margin. One field-touch remains banked for the walk out. Currently treating the crew's wounds in the post-boss window before they exit."
```

### ENT-000130 — Kesha Morrison

Senior coordinator at the Windy City Hunters Coalition desk; about fifty, solid build, a memory for faces and files that makes her good at the job. She had spent days looking at Alexander's file with visible doubt — but when he came back with a signed contract, she witnessed it, filed it with Region V, and allowed that he had made a good pull.

```yaml
id: ENT-000130
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, Coalition desk"
  real_date: "2026-07-23T15:03:14+02:00"
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
  appearance: "About fifty, Black, sturdy and solid — the settled build of a woman who runs a desk, not a Gate. Natural hair going handsomely grey, worn short or in neat twists; reading glasses on a beaded chain; a sharp, tired, kindly gaze that has read ten thousand files. Business-casual — a good blazer over something practical — behind a cluttered coordinator's counter. Warm without being soft, and forgets nothing."
  portrait: "assets/portraits/Kesha_Morrison_ENT-000130.png"
  personality: "Direct and professional. Reads a file and communicates doubt without cruelty; respects hunters who follow through on a commitment."
  situation: "Alexander's principal Coalition desk contact. On 2026-07-23 she pointed him toward Tanya Voss's undersubscribed Red Line crew, witnessed and filed his signed contract, and gave him a list of three E-Rank gear vendors. On 2026-07-25 (`EVT-000060`) she filed the Red Line Corridor contract's payout and crystal-sale paperwork (quoting 1–2 business days to clear) and walked Alexander through the current board: two E-Rank–D-Rank waiver-tier crews short a fifth, a standing ask for harvest-element hires (having heard through the crew grapevine that he'd done real mining work, not just stood around), a live confirmed-D rail-yard contract with one open harvest slot filed for 2026-07-26 07:00 (`EVT-000061`). She initially told him C-Rank work was closed to him outright — corrected per `EVT-000062`: his E-Rank card bars him only from **strike/combat** contracts at C-Rank and above (Profile Section 19.4); harvest/support work is not rank-gated at all (Section 9.4, `d53114b`), so a C- or even B-Rank Gate's mining crew is legally open to him right now, card notwithstanding.\n\n  Later that same day (`EVT-000063`), Alexander returned; she actually checked the board this time and surfaced a confirmed C-Rank harvest slot at the Cicero Scar with the same corporate-adjacent contractor, staging that afternoon — he took it, and she filed him onto it. He came back a third time after the Cicero Scar job to ask about a further C-Rank slot for 2026-07-26; she found one (Frozen Gallery archetype, same contractor, logistics run by Dale — `ENT-000135`) and pulled him off the never-confirmed D-Rank rail-yard interest to put him on it instead. She also confirmed for him that Coalition freelancer registration carries no base salary — income comes only from work actually taken.

  **2026-08-03 (`EVT-000118`) — the first sponsor-exception posting she has ever written.** Owen Callahan (`ENT-000139`) rang the desk as **sponsor of record** for a two-person confirmed E-Rank contract. She spent the first minutes of the call establishing she had heard him correctly, asked him **twice** whether he knew what he was signing, and then processed it — two confirmed E postings on the board, both sat unbid over a week because the rate is insulting split eight ways. He took the **Cicero substation service tunnel** and declined the West Town basement job. Terms she wrote: sponsor of record Owen, no leader's share, 50/50, flat posted rate, loot declared at exit, both licences scanned before 11:00, mouth by 13:00. **She now knows Alexander and Owen are together** — Owen told her on the call, on Alexander's instruction; her answer was that it was about time and that the two of them had been insufferable on the phone for a week. She is the first person outside Priya Okafor's crew to know.

  **2026-08-04 morning (`EVT-000137`), called by Alexander.** Relayed unprompted that word had reached her desk from two separate logistics coordinators (Ada Reyes, Dale Pruitt) independently vouching for him — 'good hire, real work' — and that it had traveled far enough that a Horizon Guild harvest-liaison contact asked after him by name, without an offer attached. Told him plainly that his file is quietly not matching his reputation anymore. Checked the board for harvest work and found a **confirmed C-Rank harvest slot with a new, not-yet-worked contractor**, staging 14:00 that same day near the old rail corridor; logged him onto it on the spot. Closed teasing him about Owen's coffee.

  **2026-08-05 morning (`EVT-000155`), called by Alexander asking after mining work.** Nothing posted: Sable & Kern have put up nothing new since Halsted Depot, Denise Ferro's crew is still on the rail-corridor paperwork, and she has heard nothing move on Dale Pruitt's B-Rank mining lead. **She now holds a standing flag to notify Alexander the moment any mining contract posts at C-Rank or above.** She also declined to accept his account of the 2026-08-03 Cicero clear: told that Owen had done the work and Alexander was 'merely a spectator,' she pointed out that **Priya Okafor's payout notes credit Alexander with the finishing blow**, and threatened, dryly and affectionately, to ask Owen for his version. She does not suspect anything — she is teasing a hunter she has handled for two years — but it is a live example of the filed paper contradicting his own downplaying, and he does not control what other people write about him.

  **2026-08-05 early afternoon (`EVT-000166`), in person, coffee in hand.** Alexander walked up unannounced, coffee for her included; she read straight through the 'nothing much' to the actual reason he'd walked across the district instead of calling. He admitted he was bored and job-hunting. She offered the sitting Red Line waiver-tier posting (four of five signed — Reilly, Priest, Vance) first; he declined a stranger-crew job, then clarified he meant a **Cicero-style two-handed sponsored booking** with Owen again, not sending Owen in solo. She found a **fresh confirmed E-Rank at the Lakefront Gate Corridor**, not yet publicly posted, and agreed to hold it — Owen as sponsor of record, same terms as Cicero — until **22:00 tonight**, after which it goes up on the public board for anyone. Reconfirmed the ≈$40,000 Denise Ferro payout is still processing, ordinary 1–2 business days.

  **2026-08-08 ~16:00 (`EVT-000216`), in person, second coffee in hand.** Alexander brought her a coffee unprompted; she took it as, for once, his judgment being beyond dispute. Pushed for work that same night; she refused outright — not a question of reliability, simply that he is already booked for tomorrow's 09:00 harvest job and she will not manufacture evening work to entertain him.

  Asked her read on Ironline after he mentioned being pitched by their recruiter. She called them legitimate — organized, steady contracts, equipment and crew support — but warned they recruit for what they need, not for a hunter's happiness: read every term, know who controls assignments, what refusing one costs, how long they hold his availability, and who gets paid first if a contract goes bad. Approved of his answer that he'd asked to see their crews and a mining operation firsthand before signing anything.

  Learned the trial had already happened: Ironline's recruiter had promised an established crew and delivered four hunters who had never worked together, no field lead assigned, then tried to command from outside the Gate over radio once the plan failed. She was openly appalled — called it five people used to cover for the recruiter's own negligence rather than a real trial — and confirmed Alexander had taken command himself, though he had nearly walked away first. Judged the mining opportunity worth weighing on its own terms — contract, split, safety practice — separately from the recruiter's conduct, and approved of freelancing through Ironline's guild-held Gates over formally joining, since it keeps his name and availability his own; noted their contracts run outside Coalition oversight entirely, so the liability terms are the only real protection he has.

  **Crew-mechanics explainer, same visit.** Walked him through what a personal crew would and would not buy him: five C-Rank hunters standing beside him do not raise his own E-Rank card, so he still cannot sign a C-Rank combat contract himself — one of the five would need to be the crew's contractual sponsor of record, with Alexander entering as the underranked sixth member unless he re-tests his own card. Harvest work carries no such Rank ceiling at all; a crew's value there is contractor trust and negotiating leverage, not legal eligibility. Either way, someone still has to hold the site rights and the contract — a crew supplies labor and credibility, not a Gate. Closed by naming his live options plainly (harvest reputation, a crew of his own, freelancing through a guild without joining it, a higher-Rank sponsor) and refusing to call E-Rank work meaningless just because it pays poorly."
```

### ENT-000131 — Diane Halloran

Owner and operator of **Ironbound**, the independent gear shop on Milwaukee Avenue; mid-40s, built solid, moving with the bearing of someone who has spent time in Gates. She fitted Alexander for his first kit, steered him toward mobility over heavy plate given his krav maga background, and told him to come back after his first clear to talk over what worked. (Ironbound the establishment is represented at this stage by its owner Diane; it carries no separate institution entity.)

```yaml
id: ENT-000131
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, Ironbound gear shop"
  real_date: "2026-07-23T15:03:14+02:00"
type: Character
subtype: gear-shop owner
scope: local
lifecycle: active
aliases:
  - name: "Diane Halloran"
    quality: current
  - name: "Diane"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; no adverse condition established"
  capabilities: "Owner/operator of Ironbound gear shop (Milwaukee Avenue, Chicago); stocks E- and D-Rank gear and performs custom fittings. Gate-experienced; gives practical, function-first equipment advice."
  appearance: "Mid-40s, white, solidly muscular with the bearing of a former hunter who never lost the frame. Short practical greying hair, calloused scarred hands, an old burn or two up one forearm; a level, appraising look that measures you the way she measures a fitting. A worn leather shop-apron over a henley, tape measure and tools to hand, at home amid racks of gear. Plainspoken and unhurried."
  portrait: "assets/portraits/Diane_Halloran_ENT-000131.png"
  personality: "Professional, practical, plainspoken. Values mobility and function over decoration; takes fitting seriously."
  situation: "Sold Alexander his first hunter-Rank kit on 2026-07-23 (reinforced leather jacket $800, E-Rank dagger $500, reinforced gauntlets $600, shin guards $100; $2,000 total), custom-fitted the gauntlets, and invited him back after his first clear. Represents the Ironbound establishment, which has no separate entity."
```

### ENT-000132 — Cutting Edge

A custom E-Rank/D-Rank gear shop in Chicago's warehouse district, one of three vendors Kesha Morrison named to Alexander. Known for good-quality custom work on a slower turnaround. Alexander did not visit it.

```yaml
id: ENT-000132
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, named at the Coalition desk"
  real_date: "2026-07-23T15:03:14+02:00"
type: Institution
subtype: gear vendor
scope: local
lifecycle: active
aliases:
  - name: "Cutting Edge"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (worlds/gatefall/, ENT-000087); exact address unestablished"
  function: "Custom E- and D-Rank hunter gear; made-to-order work on a slower turnaround than stock shops"
  standing: "Independent vendor named to Alexander by Kesha Morrison (ENT-000130) on 2026-07-23 as a custom option. **Visited for the first time 2026-08-05 (`EVT-000156`)**, and no longer unestablished: a narrow deep shop off an unmarked door with a small etched nameplate, warm overhead lighting and no windows, smelling of leather oil, hot metal and crystal dust; gear displayed as individual specimens under glass with handwritten cards rather than racked stock; roughly six weapons on the wall behind the counter. Its owner-operator is `ENT-000149`. **Rigidly licensed** — provenance is logged before any core touches marked work, without exception. Nothing bought, sold, or commissioned on the visit; no standing relationship formed, and the door left open on both sides."
```

### ENT-000133 — Horizon's Outfitter

Horizon Guild's affiliated gear outfitter on Michigan Avenue, the third vendor on Kesha Morrison's list: pricier than the independents, but reliable stock and service with no custom-fitting delay. Alexander chose Ironbound over it for value and did not visit.

```yaml
id: ENT-000133
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, named at the Coalition desk"
  real_date: "2026-07-23T15:03:14+02:00"
type: Institution
subtype: gear vendor
scope: local
lifecycle: active
aliases:
  - name: "Horizon's Outfitter"
    quality: current
canonical_state:
  location: "Michigan Avenue, Chicago (worlds/gatefall/, ENT-000087); exact address unestablished"
  function: "Guild-affiliated retailer of E- and D-Rank hunter gear with reliable in-stock inventory and no custom-fitting delay"
  standing: "Affiliated with Horizon Guild (ENT-000100). Named to Alexander by Kesha Morrison (ENT-000130) on 2026-07-23 as the pricier, reliable option; he chose Ironbound instead. Not visited; interior, staff, and exact pricing unestablished. No standing relationship between Alexander and Horizon established by this mention."
```

### ENT-000140 — Vanguard Trade & Gear

A larger licensed hunter outfitter than Ironbound — a proper storefront with counter staff rather than a single owner-operator, on a commercial strip Alexander's 2026-07-29 running route happened to pass. Visited once, for a replacement resonance chisel.

```yaml
id: ENT-000140
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000083
  game_date: "2026-07-29, afternoon"
  real_date: "2026-07-25T14:52:23+02:00"
type: Institution
subtype: gear vendor
scope: local
lifecycle: active
aliases:
  - name: "Vanguard Trade & Gear"
    quality: current
canonical_state:
  location: "A commercial strip in Chicago (worlds/gatefall/, ENT-000087); exact address unestablished"
  function: "Licensed retailer of civilian E-Rank hunter gear — the same mundane tier Ironbound carries, not ranked combat equipment (C-Rank and above is guild-armory or System-shop territory only, per Section 11.5). Distinguished from Ironbound by selection and foot traffic rather than by stock tier: several resonance chisel models, a fuller mundane first-aid and field-kit wall, and a storefront big enough that no one clocks a hunter in running clothes."
  standing: "Independent of Ironbound and unaffiliated with either major guild. First visited by Alexander 2026-07-29 for a replacement resonance chisel; bought both a standard chisel ($75) and a heavier 'Longhaul' model ($140), plus considered but declined a field trauma kit and a civilian duffel."
```

### ENT-000134 — Ada Reyes

Logistics coordinator for a corporate-adjacent contractor running harvest-hire C-Rank Gate clears; broad-shouldered, carries a foreman's vest and a tablet, not a combatant. Ran the Cicero Scar operation on 2026-07-25 — Alexander's first job under this contractor.

```yaml
id: ENT-000134
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: session-1-gameplay
  game_date: "2026-07-25, Cicero Scar staging"
  real_date: "2026-07-24T13:54:03+02:00"
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
  appearance: "Forties, Latina, broad-shouldered and sturdy — built for long shifts on a staging line, not for the fight. Dark hair pulled back tight under a hi-vis foreman's vest worn over practical clothing; a rugged tablet always in one hand. Brisk, direct, and fair, with the unhurried authority of someone who has run a hundred crews through a hundred cordons and logged every one."
  portrait: "assets/portraits/Ada_Reyes_ENT-000134.png"
  personality: "Direct, professional, no patience for wasted time but fair — briefed Alexander plainly and complimented his declared haul (7 C-Rank crystals) as better than a typical first-timer's."
  situation: "Ran the Cicero Scar C-Rank harvest-element job on 2026-07-25 (`EVT-000063`): briefed Alexander, logged his 7 declared C-Rank crystals, and gave him an off-the-cuff (and, on reconsideration, too low) verbal payout estimate of $1,500–2,500 before heading back to her own paperwork. Vouched for him afterward to the contractor's other logistics staff, which is how Dale (`ENT-000135`) already knew his name at the next job. **Called by Alexander on 2026-08-04 morning (`EVT-000137`)** asking after open harvest work; her contractor was between postings with nothing available that day or the next, but she logged his name for the next slot to open and noted, unprompted, that his declared haul at Cicero Scar was still remembered well of him.

  **Called again 2026-08-06, ~17:00 (`EVT-000189`).** The wait paid off: a C-Rank posting is opening in about a day or two, same terms as Cicero Scar, out past the old freight yards. Nothing confirmed on paper yet — she logged Alexander's name for first refusal before it goes to the general board and said she'd call once the contractor signs off. Alexander confirmed he's in on the spot. Status at the time: pending confirmation, expected within ~1-2 days.

  **Confirmed, 2026-08-08 ~15:00 (`EVT-000213`).** Left a missed call and voicemail earlier that afternoon; Alexander called back the same hour. Slot confirmed: same terms as Cicero Scar, staging **2026-08-09, 09:00**, out past the old freight yards. Gave a deliberately wider payout estimate this time (**$4,000-9,000** declared and split, depending on the haul) rather than repeat the Cicero Scar lowball, and a rough duration estimate of **09:00 to 13:00-15:00**. Brisk and businesslike throughout; briefly genuine warmth when Alexander joked back at her. Status: confirmed, staging tomorrow morning.

  **Ran the 2026-08-09 job (`EVT-000224`).** Read the harvest element (Alexander, Denny Osei `ENT-000179`, Marisol Ruiz `ENT-000180`) in alongside Tomas Alvarez's (`ENT-000178`) strike element, confirmed the site as a C-Rank Gate on standard harvest terms, and worked the manifest at the fence line afterward. Logged Denny's 11 and Marisol's 14 without comment; logged Alexander's declared 18 the same way, genuinely unaware it was well short of his actual 93-crystal haul. The Gate turned out exceptionally rich — an owner-ruled outlier consistent with the Frozen Gallery precedent — though her own $4,000-9,000 pre-job estimate landed almost exactly right for what each harvester was actually paid, since the support element's cut is a percentage split rather than a flat count. Told the group \"good work, all of you\" and closed the manifest; no complications, no injuries, job wrapped a little ahead of her outside estimate."
```

### ENT-000135 — Dale Pruitt

Logistics coordinator for the same corporate-adjacent contractor, running a separate C-Rank harvest-hire operation. Stocky, tablet-carrying, same role as Ada Reyes on a different site.

```yaml
id: ENT-000135
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: session-1-gameplay
  game_date: "2026-07-26, staging near the Frozen Gallery Gate"
  real_date: "2026-07-24T13:54:03+02:00"
type: Character
subtype: contractor logistics coordinator
scope: local
lifecycle: active
aliases:
  - name: "Dale Pruitt"
    quality: current
  - name: "Dale"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Runs support-side logistics for the same corporate-adjacent contractor as Ada Reyes, on a different confirmed C-Rank Gate clear."
  appearance: "Forties, white, stocky and thick-set; hair buzzed short and thinning, a greying goatee. A hi-vis vest over a flannel shirt, tablet in hand, a coffee never far. An easy, dryly amused half-smile is his resting face — the kind that can flatten into watchfulness the instant a number doesn't add up, then relax again just as fast."
  portrait: "assets/portraits/Dale_Pruitt_ENT-000135.png"
  personality: "Easygoing, dryly amused — greeted Alexander's explanation for arriving sweaty (a run doubling as commute) with open approval rather than suspicion."
  situation: "Ran the 2026-07-26 C-Rank harvest-element job (confirmed Rank, archetype Frozen Gallery) that Alexander signed onto through Kesha Morrison, now complete (`EVT-000065`–`EVT-000068`). Already knew his name and reputation as a reliable cutter from Ada Reyes's word passed through the contractor. Assigned Alexander three vein sections across the job, pulled him off the third for a genuine (if unnecessary) mandatory break after misreading a performed exhaustion, and directly challenged him once over a suspiciously long stillness (the 50-crystal sale) — deflected, but it left Dale visibly more watchful for the rest of the job, catching a second, shorter hitch near the end without escalating it. At declaration, logged Alexander's 41 C-Rank crystals — the day's highest total by a wide margin — without further scrutiny, praised his work across both jobs, confirmed the contractor occasionally posts B-Rank harvest work when available, and told Alexander he'd be near the top of the list for one. Parted on genuinely warm terms. Unaware of any of the six private System-shop sales Alexander made across the job, or of the tactical study Alexander made of the strike line during his break.

  **Followed up by text, 2026-08-06 evening (`EVT-000193`).** Alexander texted asking after the B-Rank lead he'd promised an answer on by end of day. Dale replied inside the window: the B-Rank job is real, but the contractor hasn't signed off with their own client yet — probably 5–7 days before it's actually postable. Put Alexander's name at the top of the list the moment it does. A second message, unprompted, noted he still owes Alexander a beer from Frozen Gallery. Alexander asked to make it sooner than the B-Rank job if anything smaller opens up in the meantime; Dale confirmed nothing E/D is currently moving under him, but agreed to text if that changes."
```

### ENT-000178 — Tomas Alvarez

Strike captain running point on Ada Reyes's 2026-08-09 C-Rank harvest job. Lean, weathered, pump shotgun slung across his back.

```yaml
id: ENT-000178
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000224
  game_date: "2026-08-09, staging near the old freight yards"
  real_date: "2026-07-30"
type: Character
subtype: strike captain
scope: local
lifecycle: active
aliases:
  - name: "Tomas Alvarez"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; combat-active"
  capabilities: "Runs the strike element on Ada Reyes's contractor jobs — clears and secures a Gate's interior so the harvest element can work behind the line, calls the fall-back signal."
  appearance: "Lean, weathered, a working strike captain rather than a showpiece; carries a pump shotgun slung across his back."
  personality: "Assessing rather than dismissive on first meeting a new hire; brisk and businesslike on the job."
  situation: "Ran point on the 2026-08-09 C-Rank harvest job (`EVT-000224`), gave Alexander a reserved once-over on introduction, cleared the Gate's interior with his strike element without incident, and called the twenty-minute window warning that sent the harvest element back to the fence line. No injuries reported; job closed clean."
```

### ENT-000179 — Denny Osei

Harvest-element miner on Ada Reyes's 2026-08-09 C-Rank harvest job, alongside Alexander and Marisol Ruiz.

```yaml
id: ENT-000179
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000224
  game_date: "2026-08-09, staging near the old freight yards"
  real_date: "2026-07-30"
type: Character
subtype: harvest-element miner
scope: local
lifecycle: active
aliases:
  - name: "Denny Osei"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Ordinary harvest-hire miner working the same contractor's C-Rank jobs as Alexander."
  personality: "Easy, unbothered, friendly toward another harvest hire on sight."
  situation: "Worked the 2026-08-09 C-Rank harvest job (`EVT-000224`) alongside Alexander and Marisol Ruiz; declared 11 C-Rank crystals to Ada's manifest, an ordinary solid haul. Paid $5,500 off the support element's declared-pool split."
```

### ENT-000180 — Marisol Ruiz

Harvest-element miner on Ada Reyes's 2026-08-09 C-Rank harvest job, alongside Alexander and Denny Osei.

```yaml
id: ENT-000180
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000224
  game_date: "2026-08-09, staging near the old freight yards"
  real_date: "2026-07-30"
type: Character
subtype: harvest-element miner
scope: local
lifecycle: active
aliases:
  - name: "Marisol Ruiz"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Ordinary harvest-hire miner working the same contractor's C-Rank jobs as Alexander."
  personality: "A little pleased with her own results; easy nod toward another harvest hire on sight."
  situation: "Worked the 2026-08-09 C-Rank harvest job (`EVT-000224`) alongside Alexander and Denny Osei; declared 14 C-Rank crystals to Ada's manifest, drawing an approving nod from Ada. Paid $7,000 off the support element's declared-pool split."
```

### ENT-000136 — Priya Okafor

Striker and crew lead running her own undersubscribed five-hunter crew. Not related to BGM Region V's director Naomi Okafor (`ENT-000107`) as far as anyone at the Coalition desk has established. Met Alexander in person for the first time 2026-07-28 at staging.

```yaml
id: ENT-000136
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000069
  game_date: "2026-07-27, arranged by phone through Kesha Morrison"
  real_date: "2026-07-24T23:30:49+02:00"
type: Character
subtype: crew leader / striker
scope: local
lifecycle: active
aliases:
  - name: "Priya Okafor"
    quality: current
relationships:
  - REL-000065
canonical_state:
  location: ENT-000087
  condition: "Wounded and healing under professional treatment — thrown hard by the elite's lunge after a fumbled intercept (`EVT-000071`). Alexander's potion restored her Health enough to fight properly but left the wound's severity untouched (Profile Section 6.4). She had the side properly assessed at a clinic on the morning of 2026-07-29 (`EVT-000081`), was visibly slow but present through that evening's Coalition meeting, and left the crew dinner early to ice it (`EVT-000083`). Never treated by Owen, who spent his one used touch on Alexander instead. On the morning of 2026-07-30 she is filing the Ashfield report and carrying the crew's crystals and cores in to close the contract; her exact position that morning is not established beyond Chicago."
  capabilities: "Striker; **D-Rank**, made D roughly eight months ago — stated directly to Alexander (`EVT-000077`), the only above-E-Rank among the crew's combat element. Leads her own five-hunter crew. Solid, workmanlike reputation, nothing flashy — confirmed accurate by direct observation: competent, decisive, but not infallible. Approved Alexander's gear before entry and set his position (rear, paired with Owen, support role) based on Kesha's word about his read and his own self-description."
  appearance: "Late 30s, South Asian (the Priya name), solid and workmanlike — an athletic striker's build with nothing showy about it. Black hair in a tight, no-nonsense braid or bun; steady, level dark eyes; the small scars and worn gear of eight years in the trade. Practical reinforced combat kit, sensibly armored and sensibly maintained. Grounded and direct, quicker to own a mistake than to explain it away."
  portrait: "assets/portraits/Priya_Okafor_ENT-000136.png"
  personality: "Direct, practical, reads people's stated capabilities and works with them rather than around them. Took Alexander's honest self-assessment (support-leaning, analytical, dagger-and-krav-maga close combat) at face value and built the formation around it without argument. Owns a mistake plainly rather than deflecting it, and updates her read of someone fast when the evidence changes."
  background: "Boxed semi-competitively in her twenties before a knee injury and the awakening test landed the same year — 'God's way of telling me to hit things that hit back less predictably,' by her own account (`EVT-000083`). Has a partner at home, mentioned only briefly, and a garden she's disproportionately proud of, tomatoes specifically; genuinely bristles at any suggestion store-bought tomatoes are comparable."
  situation: "Led the crew into the Ashfield Gate on 2026-07-28. Personally engaged the first wave of common beasts cleanly. When the elite closed, attempted to intercept it on Alexander's called pattern-read (shoulder-drop lunge every third stride) and fumbled the timing badly — thrown hard into the ash, momentarily down while the elite broke past her toward the rear. Recovering, wounded, back in the fight, and watched Alexander finish the elite himself (`EVT-000076`) with visible recalculation of what he's actually worth.\n\nIn the aftermath (`EVT-000077`), took formal responsibility for the rear-pair formation gap when Alexander pointedly asked why no one came for him during his earlier near-death against the common beast — she hadn't seen it happen (mid-fight with the elite herself) and said so plainly, but owned the structural gap rather than deflecting to circumstance, and asked to be told in the future rather than finding out after. Confirmed crew ranks directly when asked: herself D-Rank, Julian and Renata both E-Rank, Owen C-Rank.\n\n**The boss fight and after (`EVT-000079`, `EVT-000080`).** Ceded the tactical call to Alexander outright — 'you've earned the call twice today' — while demanding a real plan, and raised the honest objection that her wound made her unreliable on the front line. Accepted Alexander's potion with visible surprise at his having carried it, and noted aloud that he had been carrying it the whole time without pressing further. Fought the boss properly throughout, striking on the rotation as designed and exploiting its overshoot. Sat down in the ash afterward and laughed and cried at once, unembarrassed and unremarked by her crew.\n\n**On reporting:** she raised the filing problem herself and drew the line cleanly — she refused falsification outright, since her signature goes on the assessment line, but accepted Alexander's proposal of *delay*. She proposed the third road she intends to take: file it **true**, as an accurate account of a Gate the board mis-posted, which makes it BGM's failure rather than the crew's. She will not sit on it beyond the agreed **2026-07-29 18:00** reconvene. Her regard for Alexander is now considerable and openly stated, though she has also seen him overrule a crewmate coldly and advise against prompt reporting.\n\n**The filing, agreed (`EVT-000081`, 2026-07-29).** Kesha Morrison called her: Region V's monitoring registered the Gate's closure and the Coalition has been asked when the clear report is coming — routine, not accusatory. Priya set the meeting for that evening and invited Alexander's thoughts beforehand rather than in front of the crew, and spent the morning at a clinic having her side properly assessed. On his call she **accepted the 'no hero' emphasis**, disclosing that she had spent two hours drafting honest sentences that all made her sound like a passenger on her own clear, recognized that objection as vanity, and had intended to file it anyway. Her limits are exact and stated: she will **not** write that Alexander was absent or did not fight, and she will answer any direct question from Region V honestly — if asked point-blank who killed the boss she will say all of us and believe it, but she will not lie, because she is bad at it and it would hurt him worse when it broke. She required that Julian and Renata hear the same thing in the same room from Alexander, so nobody holds a secret they did not agree to. She observed from eight years in the trade that attention from Region V is 'not a promotion, it's a process.'\n\n**The first training session (`EVT-000116`, 2026-08-02 evening).** Held the evening open for a week and said so without an edge. Sparred first and lost inside two seconds to a controlled takedown and pin she could not escape, and responded by demanding the diagnosis in front of her own crew rather than a rematch — *you saw something, say it.* Told that her weight travels past the end of her third beat while her guard is already dropping, she accepted it as the first thing anyone has told her about her own fighting in eight months that she did not already know and was choosing to ignore, dated the habit to age twenty-four, and spent the last half hour of the session drilling a stopped third beat and swearing at her own hips. Asked for the formation walked slowly next time, whole, feet on ground. Raised that the crew does not exist between jobs and asked outright whether it trains or works; accepted Alexander's standing order to watch the board and call him, with **at least one more training before the next Gate**, and said she would have argued for two. States she will read assessment confidence properly next time rather than believing the posted number.\n\n**On the relationship.** Owen told her, Julian, and Renata directly at the end of the session. She congratulated both of them plainly and then, as contract lead, asked the professional question once — whether the spend-call rule holds when it is Owen bleeding and when it is Alexander bleeding — and deliberately asked it on a lit training field rather than discovering the answer in a Gate. She took Owen's punch as an answer to Owen's half and said Alexander's half stays untested and unknowable until it happens, asking only that he has thought about it beforehand."
```

### ENT-000137 — Julian Boyd

Striker on Priya Okafor's crew; broad-shouldered, economical with words, carries a **ranked shotgun** (not a mundane firearm — confirmed by its effectiveness against monsters, `GTF-OVR-003`). Runs point when ranged work is called for.

```yaml
id: ENT-000137
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000070
  game_date: "2026-07-28, staging and Gate entry"
  real_date: "2026-07-24T23:30:49+02:00"
type: Character
subtype: striker (ranged)
scope: local
lifecycle: active
aliases:
  - name: "Julian Boyd"
    quality: current
  - name: "Julian"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; took no injury in the Ashfield clear. Out of the Gate since 2026-07-28 (`EVT-000080`); attended the Coalition meeting and crew dinner on 2026-07-29 (`EVT-000083`). His position on the morning of 2026-07-30 is not established beyond Chicago."
  capabilities: "Striker, ranged specialist; **E-Rank**, confirmed directly by Priya (`EVT-000077`). Carries a ranked (mana-bearing) shotgun — confirmed effective against monsters, which a mundane firearm would not be (`GTF-OVR-003`). Quiet, economical, does a lazy half-salute rather than talk. Landed two clean kills on the first wave of common beasts."
  appearance: "Mid-30s, broad-shouldered and rangy, sun-weathered from seasons of outdoor harvest work before the shotgun. Short brown hair, perpetual stubble, a flat unbothered expression. Practical field gear with an old harvester's wear to it, and a distinctive ranked (mana-etched) shotgun on a sling that never leaves his reach. Economical in everything — a man who says the necessary words and no others."
  portrait: "assets/portraits/Julian_Boyd_ENT-000137.png"
  personality: "Terse, unbothered, competent. Doesn't say much outside of what the fight needs — but loosens up considerably over food with people he trusts, disclosed 2026-07-29 (`EVT-000083`)."
  background: "Grew up on a family farm outside Peoria, downstate Illinois; parents still work the land, a brother he calls maybe monthly. Was already handling a shotgun clearing coyotes and worse off the property before he ever awakened — when the ranking test flagged him, picking up a ranked version of the same gun was the obvious move, not a new skill learned for the job. No family in Chicago. Off-hours he's slowly rebuilding a truck that by his own account shouldn't still run, and it's the one subject that gets him talking at length unprompted (`EVT-000083`)."
  situation: "Held the front line's choke point on entry alongside Priya and Renata, killing two common beasts outright. Present for the elite's breakthrough; did not engage it directly, and confirmed to Priya that he hadn't seen Alexander's near-death moment against the earlier common beast either — a short, humorless nod, no elaboration (`EVT-000077`).\n\n**The boss fight (`EVT-000079`, `EVT-000080`).** Held fire until Alexander's signal, then sustained an unbroken firing line on the boss for the entire engagement, and on command laid suppressing fire between the boss and Owen to deny that ground rather than to kill — the shot that turned the boss onto its dead limb and opened the killing sequence. Disclosed unprompted that he worked **two seasons on harvest crews** before taking up the shotgun: slow but careful, and he does not shatter crystal. Offered the boss-drop Longshot [C-Rank] directly to Priya as the better shot, unasked and without any claim on it; when Alexander coldly overruled him — split or buy-out — he accepted it flatly and without argument, and was already moving. Surname: Boyd.\n\n**The first training session (`EVT-000116`, 2026-08-02 evening).** Openly pleased at an excuse to use the Coalition trading field; set up the target frame himself and took his fire-lane assignment in four words. Sparred second: planted, waited, and threw one enormous straight right about a third of a second late, and when it missed **his whole system stopped** — no shove, no clinch, no attempt to reset the range he actually wants. He was told so plainly, along with the prescription: he does not need to become a striker, he needs a **second answer** that buys two metres. He was also told, and visibly did not expect, that he was the only member of the crew who never deviated from a called plan across the entire Ashfield clear, and that his fire discipline is why Owen is alive to complain about anything. **Committed to a range session at the next training**, and was asked what his ranked shotgun does that another gun does not — a question he stated outright nobody has ever asked him, answering only *it does two things, I'll show you.* Took the news about Alexander and Owen with 'yeah, alright' and kept walking."
```

### ENT-000138 — Renata Marchetti

Sensor/reader on Priya Okafor's crew; reads a room and its threats before anyone else does, by trained instinct rather than any established signature ability. Crouches over her gear with quick, practiced hands.

```yaml
id: ENT-000138
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000070
  game_date: "2026-07-28, staging and Gate entry"
  real_date: "2026-07-24T23:30:49+02:00"
type: Character
subtype: sensor / reader
scope: local
lifecycle: active
aliases:
  - name: "Renata Marchetti"
    quality: current
  - name: "Renata"
    quality: current
canonical_state:
  location: ENT-000087
  condition: "Healthy; took no injury in the Ashfield clear. Out of the Gate since 2026-07-28 (`EVT-000080`); attended the Coalition meeting and crew dinner on 2026-07-29 (`EVT-000083`). Her position on the morning of 2026-07-30 is not established beyond Chicago."
  capabilities: "Reads incoming threats and the shape of a fight early and accurately — an experienced hunter's trained instinct, not an established awakened signature ability. **E-Rank**, confirmed directly by Priya (`EVT-000077`). Correctly identified the population as heavier than a D on first entry, and called the elite's approach and the den structure behind it before either was visually confirmed."
  appearance: "Thirties, lean and alert, with quick precise hands and a reader's habitual stillness. Dark hair tied back out of the way; watchful dark eyes that catch a wrong detail before anyone else does; minimal, well-kept field gear and no showy weapon. Says little, and what she says tends to be right — a presence people learn to listen to."
  portrait: "assets/portraits/Renata_Marchetti_ENT-000138.png"
  personality: "Quiet, observant, direct when it matters. Gave Alexander a quick, assessing nod on meeting him rather than small talk."
  background: "Six years as a Chicago beat cop before awakening — the source of the reading habit and the exit-scanning, not an awakened signature ability; her gift, disclosed 2026-07-29, is trained instinct alone (`EVT-000083`). Says the job burned her out well before Gates existed and that hunting is, unfairly, less bureaucratic than policing was. One younger sister; otherwise private about family, and shuts down further prying without unkindness. Plays competitive chess online, badly by her own account."
  situation: "Held the choke point alongside Priya and Julian on the first wave, deflecting one beast clear of a kill shot for someone else to finish. Correctly warned the crew of the elite's approach and its 'den structure' origin before it closed. Owen described her as someone 'you'll want to listen to when she says something's wrong.' After the elite's death, laid out the crew's live options to Alexander — push toward the unlocated den, fall back, or split to sweep the remaining pack — and deferred the call to Priya (`EVT-000077`).\n\n**The boss fight and after (`EVT-000079`, `EVT-000080`).** Objected correctly that reading and covering Owen were incompatible jobs, and was freed to read exclusively in the revised plan — after which her contribution was decisive. She guided the crew's unseen approach to the den, counted the population discrepancy nobody else had tracked (five of twelve commons killed, seven unaccounted), called the boss's every commitment during the fight, and after the kill produced a **complete, definitive read** of the interior: seven common beasts alive at the north wall, agitated, contained. She stated the containment rule plainly — nothing leaves a standing Gate — which converted an apparent crisis into a fight the crew could simply decline.\n\nOn the reporting question she supplied the decisive practical objection: **the loot declares the Rank.** No appraiser logs C-Rank crystals and cores against an E-Rank–D-Rank clear without asking, so the crew can lie on the form or sell the material, but not both. Her judgment was correct or decisive at every point of this clear, and everyone in the crew now visibly treats it that way.\n\n**The first training session (`EVT-000116`, 2026-08-02 evening).** Refused the premise of her spar — *what am I supposed to be learning here, it isn't how to beat you* — and, told to come at Alexander while he defended only, produced six years of police control tactics: wrist and elbow entries off-line, level changes, walking him toward the gear bench, forearm and knee when none of that worked. She landed nothing across roughly forty seconds. Diagnosed unasked: she does not attack, she **selects**, waiting for a specific configuration and then committing totally — the same instinct that made her Ashfield reads decisive — and her single hole is that she is wired to **stop** a threat rather than end one, twice choosing a control option over a finishing one. Correct against a person; a wasted opening against a beast. Her response was *the cuffs thing. Yeah.* She proposed and then ran the session's most useful drill herself — deliberately doing the wrong thing, calling a threat late and then not at all — on the grounds that on Tuesday the plan survived until it didn't. Also stated that this was the first evening any of four crews she has worked has spent on how they work rather than what they are worth, and that a C-Rank stood behind them for a month before an outsider pointed at him.\n\n**Exposure watch.** She is the only crew member other than Owen to have questioned Alexander directly: after her spar she named the gap between the filed report (support striker, hurt, treated) and what she had just watched, and asked *who are you, exactly?* He deferred it — *now I am your trainer*, personal questions later — and she let it go visibly by choice, saying only 'later, then.' She had already assembled the relationship before Owen announced it, from Alexander's offhand mention of showing Owen stretches and from the smile; her entire comment on the announcement was 'the stretches.' Her interest remains social rather than investigative, and it has not diminished."
```

### ENT-000139 — Owen Callahan

Mender on Priya Okafor's crew; lean, unhurried, chronically late, medical kit slung across his back. Has now twice directly observed Alexander's C-Rank dagger appear in his hand with no draw and said nothing about it either time.

```yaml
id: ENT-000139
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000070
  game_date: "2026-07-28, staging and Gate entry"
  real_date: "2026-07-24T23:30:49+02:00"
type: Character
subtype: mender
scope: local
lifecycle: active
aliases:
  - name: "Owen Callahan"
    quality: current
  - name: "Owen"
    quality: current
relationships:
  - REL-000066
canonical_state:
  location: "Outdoors on the Rogers Park/lakefront route, running toward Alexander's apartment at ~07:50 on 2026-08-09 (`EVT-000218`); his Edgewater shift begins at 08:00 and arrival is unresolved."
  condition: "Healthy. Took a light graze from a common beast in the Cicero Gate's corridor — his new gauntlet absorbed most of it, no injury tier. Sponsored his first Gate as sponsor of record, killed his first several beasts (unarmed, then with the boss-imprinted Quickknife given to him mid-clear), and is carrying the truth about Alexander's private instant dungeons for the first time. Historical: dragged out at dawn for Alexander's training regimen on the morning of 2026-07-30 (`EVT-000084`), he ran 2.4 km, quit, and then completed a scaled 30 push-ups, 30 sit-ups and 30 squats across five rounds rather than take the offered exit — **the first time in his life he has pushed his own body for anything.** His one spent per-clear touch — used to clear Alexander's Severe rib injury mid-boss-fight (`EVT-000080`) — belonged to that clear and does not carry forward. Spent the rest of the day fully off: breakfast, changing at both apartments, an afternoon on his own boat on the lake with Alexander, and a first kiss (`EVT-000087`). Dinner at his local noodle restaurant, then soaked through walking back from Alexander's apartment in heavy rain (`EVT-000088`). Properly dressed again, unhurried, visibly happy. On the morning of 2026-07-31 (`EVT-000089`) he was hauled out for a second consecutive dawn training session, negotiated his own load up from Alexander's opening demand to **4 km plus a scaled 30/30/30**, and completed it — his second day of ever having pushed his own body, and a voluntary increase on the first. Tired, sore, and pleased about it; he bought a coffee and sat on the break wall to watch the remaining six kilometres.\n\n**Two more sessions, and a genuine trend (`EVT-000108`, `EVT-000111`).** On 2026-08-01 he ran **5 km plus a scaled 40/40/40**, and on 2026-08-02 — having been told the run was optional and then walked past that exemption without being reminded of it — an **unmeasured long loop out past the harbor and back along shoreline neither of them had run before**, further than he has ever run in his life, plus a scaled **50/50/50**. Three consecutive voluntary increases. He worked out the exemption trick roughly two kilometres in, swore at length, and finished anyway. The man who had never once pushed his own body before 2026-07-30 has now done it four mornings running and is visibly, grudgingly proud of it. **Birthday established: 14 September** (`EVT-000108`).\n\n**2026-08-03 evening to 2026-08-04 morning (`EVT-000122`–`EVT-000124`).** Received Alexander's first volunteered account of his parents' deaths at the Damen Avenue Break, at his own door; said little, took the street name back to him once, and pulled him inside rather than press for more. Cooked for by Alexander for the first time in five years of this job — steak and potatoes, over his own mock protest about being put to work setting the table. Agreed, in principle and still half a joke, to turning two-person sponsored Gate clears into a recurring thing between them, and separately accepted Alexander's offer to be shown a private instant-dungeon clear from the inside — soon, not scheduled. Asleep by the ordinary hour; undisturbed by the 06:00 System notifications, which remain perceptible to Alexander alone."
  capabilities: "**COMBAT COMPETENCE DEMONSTRATED, 2026-08-06 (`EVT-000178`–`EVT-000184`) — correcting a framing error.** Owen is licensed and mechanically resolved as a mender under Profile Section 13.1: every NPC hunter resolves by fixed Rank, and 'mender' names the signature effect his healing touch carries (Section 13.5), never a combat penalty relative to his own C-Rank. He cleared almost the entire Overgrown Temple instant dungeon alone — eleven commons and both elites by his own hand, two exchanges holding the boss from 160 down to 15 Health with Stone Skin sustained through it, exactly one landed hit against him all afternoon (12 damage), and by the sixth bay he was calling his own commits ahead of Field Command's relay rather than waiting on it. This is demonstrated proficiency at his actual fixed Rank, not a mender improvising above his station. Going forward, resolve and narrate him as a genuinely capable C-Rank combatant who happens to heal — not as an amateur borrowing competence for one afternoon.\n\n  **SECOND ABILITY ACQUIRED 2026-08-06 (`EVT-000178`) — Stone Skin [D-Rank], Novice mastery: 30% physical damage reduction while sustained, ending when it lapses or is dropped.** **Its first real combat employment came the same afternoon** (`EVT-000183`): raised before contact against the Overgrown Temple boss and sustained through both exchanges, it took the worst of a driving shoulder that would otherwise have been the heaviest hit of his life, holding the damage to 12. He has now used it twice, and both times it cost him mending capacity he would otherwise have had for other people — the trade he identified in a car park before he consumed the rune, arriving exactly as he predicted it would. Learned by consuming the unbound-awakened rune Alexander gave him outside his own building, the boss drop from the 2026-08-05 Shattered City instant dungeon (`EVT-000152`). Consumption settlement under Profile Section 7.1: eligible by binding, technique unknown to him, learned Rank `min(teaching_rank, recipient fixed Rank)` — the rune teaches at Stone Skin's native D-Rank floor against his C-Rank, so D-Rank. **It draws on the same well his mending draws from**, which he identified himself before consuming and accepted anyway; he named it as the choice between not bleeding and a crewmate not bleeding. There was no window, notification, or sensation — he perceives no System (Section 14.4) and simply knows how to do it, the way he knows the other one. **First used at `EVT-000180`** sustaining through the elite in the E-Rank Overgrown Temple instance, which cost him roughly two-thirds of his capacity.\\n\\n  **This is the first recorded instance in Gatefall of an awakened acquiring a second ability.** His stated understanding from BGM intake at twenty-two is that a gift is fixed and singular for life and that nobody has ever received another — Character Knowledge, unverified against any institution, and now contradicted in his own body. Nobody outside Alexander knows. It is a standing exposure thread (Section 19): a mender who stops taking damage is exactly what Renata reads for, and the cover story agreed between them is the $18,500 of Horizon gear he had never worn before.\\n\\n  **The supply chain, worked out and stated, 2026-08-06 (`EVT-000182`).** Told the economics — 75 g a Standard potion, ~180 g of crystal per E-Rank clear, 500 g a key so private instances run net negative — Owen assembled the whole chain himself and reached the conclusion that **only official contracted Gate work funds a potion supply.** He said the contradiction aloud without being led to it: the useful version of him is the version where Alexander keeps taking contracts, and he has spent two weeks hoping for fewer. He declined to resolve it and said he would rather have said it than not.

  **Unstated but plainly reached, and recorded as such rather than as a commitment:** a mender who wants a supply for his patients cannot be a mender who stays home — the potions are downstream of Gate work, so wanting them means wanting Alexander in Gates and, sooner or later, being in them himself. **Nothing has been proposed, agreed, or asked for**, and he must not be treated in a later scene as having volunteered for anything. It bears on **OBJ-12** and **OBJ-18**, and it runs directly against his own established position.

  **Capacity restored by a System Mana potion, 2026-08-06 (`EVT-000180`)** — Alexander sold his entire crystal stock mid-clear to buy one, handed it over with a single word, and Owen drank it without asking. His well returned in full and instantly, against his own statement that capacity returns overnight or across a day and that this is the one hard constraint on the entire profession. His unanswered question afterward: *how many of those can you make?* Establishes that a System Mana potion restores an awakened non-Bearer's expended capacity (Discovery, Law VI).\\n\\n  Mender working type; **C-Rank** — confirmed directly by Priya (`EVT-000077`), the reason a waiver-tier crew could field a real mender at all, worth the cost to the rest of the split. Practical healing capacity, stated in his own words: roughly four to five people at ordinary injury severity per clear, or as few as two if treating something as severe as Alexander's earlier near-lethal hit — no hard cutoff, just diminishing effect the more he's pushed. Has not yet had to actually treat anyone this clear, despite Alexander taking a near-lethal hit — the daily-quest grant's full restore beat him to it. Owns a car — a two-year-old Honda Civic, nothing flashy — established for the first time on 2026-07-31 (`EVT-000103`) when he drove to pick Alexander up; the two of them had simply never had occasion for Alexander to learn this before, since he walks everywhere."
  appearance: "Twenty-seven, white, handsome and unaware of it. Tall (182cm) and lean, but with a faint softness to him — the build of a man whose gift meant he never had to become a fighter. Light brown hair worn a little long and never quite deliberate; green eyes; two or three days of unstyled stubble that reads less as a look than as the residue of a chronically late man. His clothes are genuinely nice — good fabric, well chosen — and always worn slightly undone: a collar open a button too far, sleeves shoved up, something untucked, as though he dressed well and then ran for the door. The field-medical kit is slung across his back and rides there like part of him. Warm, unhurried, and faintly rumpled — a handsome man who'd be more comfortable if you didn't mention it."
  portrait: "assets/portraits/Owen_Callahan_ENT-000139.png"
  personality: "Easy, dryly funny, unshaken by danger ('long as nobody's bleeding yet, we're fine'). Watchful in a low-key way — noticed the C-Rank dagger appear in Alexander's hand from nothing, twice, and said nothing concrete about it either time beyond a brief look. Genuinely startled by, and warm toward, a friendly gesture from someone he'd read as too intense for that."
  situation: "Positioned at the rear alongside Alexander per Priya's formation. Watched Alexander intercept a beast to protect him, watched him apparently die and then not (HP 0→40 via a claimed grant, though Owen has no way to know the mechanism — he only saw an impossible recovery), and watched the C-Rank dagger materialize in Alexander's off-hand a second time during the elite's charge.\n\nIn the aftermath (`EVT-000077`), was the first to respond when Alexander raised the near-death moment directly — admitted he'd had the kit half open and simply wasn't fast enough to matter, and apologized, genuinely rather than performatively. Agreed to hold his healing in reserve at Alexander's own request. Accepted an arm around the shoulder and a joke about an owed beer with visible surprise — the first smile he's seen from Alexander all clear — and used the moment to put the dagger question on the record without pressing it: he still has no explanation for it and says he intends to keep not asking, but wanted that stated plainly rather than left unspoken.\n\n**The boss fight (`EVT-000079`, `EVT-000080`).** Agreed first and without hedging when Alexander proposed finishing the Gate, citing both Alexander's demonstrated competence and the beer he was owed. Objected honestly that standing alone in the open beside a C-Rank boss fight made him the likely failure point, and asked that everyone know it going in rather than after. Ran toward Alexander twice under fire, the second time against Alexander's own explicit instruction not to. Watched a fourth unexplained thing — a healing potion produced from nowhere and handed to Priya — and said nothing. Arrived at a man he had watched take a killing blow to find him whole and untouched, and closed his kit without a word.\n\n**Cleared Alexander's Severe rib injury** (`EVT-000080`) — a resolved C-Rank treatment touch under the newly authored Profile 1.5 Section 6.3, the first exercise of this world's mender rule and the moment his rank mattered concretely. He felt the broken bone under his hands in a body that read as physically untouched, and has stated he cannot reconcile those two facts.\n\n**On the report:** noted plainly and without self-congratulation that as the only correctly-ranked member of the crew he carries none of the legal risk, that he dislikes that, and that he wanted it said aloud rather than have anyone assume he was quietly comfortable with it.\n\n**The bar (`EVT-000080`).** Over the beer he'd claimed, Owen laid out unprompted and without accusation everything he has witnessed — the killing hit walked off with no mender's touch, the knife appearing from nothing twice, the potion produced from nowhere, and the broken ribs he could feel were real in a body that read as unharmed. He stated he is **not confused**, will not later construct a normal explanation and feel foolish, knows there isn't one, intends to keep his promise not to ask, and has spent one day watching what carrying it alone costs Alexander. He left the door open and did not push it. This is the furthest any NPC has come toward Alexander's secret (Profile Section 19) — still unreported and uninvestigated, but explicitly and mutually acknowledged. Alexander gave him a partial answer that same afternoon (`EVT-000081`): that something had happened to him and he does not understand it either. Owen refused to press, offered a permanent exit from the topic, pointed out that **nobody knows what awakening is** — including him, about his own gift — and then **released Alexander from the promise to explain**, substituting 'when you want to, if you want to.'\n\n**Personal relationship (`REL-000066`), from 2026-07-28 evening.** Drank with Alexander in place of being thanked, fell asleep in the booth, was taken home to Alexander's apartment rather than left, and the relationship became explicitly personal and physical the following morning. Disclosed ordinary biography — Rogers Park, awakened at twenty-two and cried about it, twice declined Horizon Guild contracts because 'guilds put you where the money is, not where the people are.'\n\n**The morning after (`EVT-000084`, 2026-07-30).** Took the daily training session Alexander imposed on him without ever using the offered exit, and was coached through squat, push-up and sit-up form by a man whose instructor's register he had never heard before and immediately clocked as *the voice for people he is responsible for*. Watched Alexander finish 10 km and a hundred of everything without visible strain two days after a near-lethal clear, looked at him carefully, and **chose not to say what a C-Rank mender was reading** — the same restraint he has shown at every previous unexplained thing.

At breakfast he raised, without accusation, that the crew dinner had produced a real biography for everyone except Alexander, asked explicitly for the ordinary things while restating that the other question stays unasked, and got the first biography Alexander has volunteered to anyone. He answered it with the observation nobody had made to Alexander before — that a man who wanted to discover physical laws is standing inside the biggest unexplained thing there is, which not even Owen can account for about his own five-year-old gift.

He then asked to be **used properly rather than parked at the rear like a fire extinguisher**, disclosing that in five years no crew has ever included the mender in the plan, and supplied three operating terms: he must see the line rather than stand behind it; he must be told the instant someone is hurt rather than find out by looking over; and because his repairs per clear are finite, the call on when he spends one must belong to the field commander rather than to whoever asks. He also named, before anyone else could, the collision between taking Alexander's orders in a Gate and sharing his bed — flagged deliberately rather than left to surface at a bad moment — and estimated the crew has about two more dinners before Renata works the relationship out.

**On the filing:** authored the 'no hero' strategy the crew will use — the crew killed the boss in a long coordinated fight, Alexander was the support striker who got hurt and treated, a lie of emphasis rather than fact. When Alexander privately proposed that *Owen* take credit for the boss kill, he said he would sign it if asked and then argued it down: a mender with zero combat commendations killing a C-Rank boss is more interesting than a striker doing it, it would open a file on him instead, and it needs four people to hold one lie under questioning. He insisted Alexander put the plan to Priya plainly rather than cleverly, since it is her signature. Due at the Coalition by 17:50 on 2026-07-29.

**The collision, answered, and a day off (`EVT-000087`, 2026-07-30).** Still at the diner, he accepted Alexander's answer to the command-versus-relationship collision he'd raised — crew members, not partners, in a Gate, with the weekly training doubling as rehearsal for it — but was honest in return that he doesn't know whether the principle survives actually watching Alexander go down again, first-hand rather than hypothetically; Alexander admitted the same fear runs the other way. Rather than a job or more training, Owen proposed spending the day doing nothing at all: took Alexander to his own long-neglected boat (a hand-me-down from an uncle who decamped to Arizona rather than keep dealing with weather), motored them out onto the lake, and spent the afternoon there with no agenda — the two of them talking, dozing, sharing a first kiss, staying out until sundown. Remarked, half to himself, that he isn't sure he's ever just sat with someone before without managing something. Walking in for dinner afterward, visibly lighter than he's been since this all started.

**Work, pay, and the crew question (`EVT-000088`, 2026-07-30 evening).** Asked directly whether Priya pays him a premium, he confirmed she does not — standard terms, an even fifth, no allowance for a C-Rank mender on an under-ranked crew — and volunteered what his working life actually is: **two to three clears a month with other crews, C-Rank included, with a Bridgeport crew as his regular** who call whenever they can afford him and apologize when they can't. That outside work is his income; Priya's fifth slot he keeps because they're the people he'd want with him if it went wrong. He has never asked her for more, because the moment he does he becomes *a rate* — she would pay it and then weigh it every time he stepped up, and he would know.

Pressed on whether he is used, he answered flatly and without self-pity: people are lovely to him right up until the last wound closes, at which point he is equipment again until the next posting; **Alexander is the first person to ask whether the arrangement was fair to him rather than whether he was free.** Offered the proposal that he build and lead a crew with Alexander in it, he objected that he has never led anything and has never been asked an opinion inside a Gate before this week, named the betrayal of walking out on Priya three days after she ceded field command, and then reached the practical reading himself and asked it straight — whether this was about his **C-Rank card** covering the strike contracts Alexander's E-Rank card bars. Told *kinda both*, honestly, he took the honesty as the thing that settled it ('nobody's ever wanted the card **and** said so'), conceded the point against his own crew ('that's not a crew with a good mender in it, that's a crew wearing me as a hat' — five years, and no crew, Priya included, has ever put the mender in the plan), and agreed to think about it properly, not that night.

**The drawer.** At his apartment afterward he emptied a chest-of-drawers drawer onto the bed and cleared the top shelf of his bathroom, and said outright that he has **never given anyone a drawer before** and didn't know if he'd done it right. He also delivered the observation he had been saving from Alexander's flat — no pictures on the walls, nothing on the fridge, everything in a bag: *you live like you're about to be told to leave* — and answered it himself with what the drawer was for. Named his favorite Pokémon as Chansey, unprompted and with total gravity, on the grounds that it heals people and has never once been put on a lunchbox.

**A text, unweighed (2026-07-31, `EVT-000093`).** Mid-conversation with Kesha Morrison at the Coalition, Alexander texted him *\"I already miss you\"* — sent before he'd thought about it, the first piece of unprompted vulnerability he has put in writing rather than said face to face. Owen's reply came back within seconds: *\"...oh\"*, then, three seconds later, *\"good. don't take it back. go make your money, Pendragon.\"* Recorded as a `REL-000066` texture first — Alexander's usual calculation absent entirely, and Owen's dryness giving way to plain warmth rather than a tease.\n\n**The key (2026-08-01, `EVT-000108`).** Before leaving to look at Renata's rig, he pulled the one spare key set out of a kitchen drawer and handed it over, holding it a beat longer than the handoff needed: *the door sticks if you don't lift the handle — that's yours now, I only had the one cut.* The same escalation as the drawer four days earlier, and the same lack of ceremony around it.\n\n**Professional competence, demonstrated off-Gate (`EVT-000108`).** Diagnosed Renata's misbehaving sensor rig himself — not the misalignment she assumed but a **hairline fracture in the resonance crystal**, unfixable that day, replacement crystal ≈$400 plus ≈$150 labour. He located it by working from his own mender's kit, which runs on the same resonance principle tuned to flesh rather than terrain. Pressed to take a rig of his own, he objected accurately that it is a trained profession rather than a gadget (*I'd be pointing an expensive rock at a wall going 'huh, feels gate-y'*), then conceded the real point — a second working set of eyes on a Gate is not nothing, and Renata would be delighted not to be the crew's only sensor. Accepted on the condition that it be **the best one**, and is carrying a vendor enquiry. He was explicit that he is not learning it in an afternoon.\n\n**Reading Alexander without asking, again (2026-08-02, `EVT-000111`).** Told outright and cheerfully that Alexander had spent the two hours he was gone on *a killing spree*, he heard the sentence twice — once as a joke, once as exactly what it said — and filed it without a single question, exactly as he has filed every other impossible thing. The pattern is now five deep and entirely deliberate on his part.\n\n**Standing arrangements with Alexander:** breakfast is bought by Alexander in perpetuity, and no eggs after 10 AM (`EVT-000111`) — half bit, wholly adhered to; and, from 2026-08-03, **lunch is bought by Owen for the rest of his life**, conceded in a shop on Michigan Avenue and recognised by him immediately as the breakfast arrangement run in reverse (`EVT-000118`).

**Sponsor of record, and his first protective gear (2026-08-03, `EVT-000118`).** Under the Profile 1.15 high-Rank sponsor exception (Section 9.4), Owen's **C-Rank licence** is what makes a two-person confirmed-E-Rank contract postable and insured — the first time in five years his card has been wanted for the thing it is actually for rather than to make an under-staffed crew's arithmetic legal. He rang Kesha Morrison himself, sponsored the **Cicero substation service-tunnel Gate** (confirmed E-Rank, 50/50, flat rate, mouth by 13:00), and told her on Alexander's instruction that the two of them are together. **He now owns real armour for the first time:** Horizon Bastion Gauntlets [C-Rank] (8%), Horizon Bastion Torso [D-Rank] (5%), and Horizon Bastion Boots [D-Rank] (5%), $18,500 the lot, bought for him by Alexander over his objection that the agreed cost split gave him one part of the day to pay for himself. His first reaction to the gauntlets was that they do not deaden the hands — he had spent five years not buying gloves on the assumption that anything real would put a wall between his hands and the person he was treating. He bought his own consumables in protest.

**He agreed to be shown.** Told plainly that the job's purpose is for Alexander to show him what he is rather than explain it, he named the consequence back before accepting: a live Gate interior admits no cameras and no instruments (Section 13.4), so this is the one place Alexander can stop being careful — and afterwards Owen stops being the man politely not asking and becomes the man who **knows**, carrying that around Priya, Renata, and every desk officer in Chicago. He accepted on hearing *I trust you*. He also wrote the rule of engagement himself and made Alexander commit to it aloud in a café: **he takes one beast alone; a second on him is Alexander's; and if he is hurt badly enough to want a touch on himself he says the word and gets no vote**, on the same logic he gave the crew for the spend-call — the man asking to be patched always gets that call wrong.\n\n**The first training session — the largest single evening of his professional life (`EVT-000116`, 2026-08-02).** Drove his car to the Coalition and then rode the Red Line back the wrong way, twenty-five minutes each direction, so that he and Alexander would arrive on foot together — while texting that his keys were back on the hook, a piece of theatre he only conceded at the end of the night. Heard his own three operating terms delivered to the whole crew as doctrine, uncredited and unsoftened, and stood in his assigned place on the line 'like a man standing in a room he has been told is his.'\n\n**He was taught rather than sparred.** Eight minutes of instruction in front of the crew — the fist and the stacked wrist, power off the back foot, then his own clinical knowledge of where a body comes apart turned into targeting, then the environment as a weapon. Told to strike a stationary, undefended Alexander, his first attempt **stopped four inches short by reflex** — *it's not a decision I made, my arm just stopped*, the mender's wiring named out loud and correctly diagnosed as the thing that will fire in a Gate when stopping is not an available option. On the second attempt he threw it properly and **it landed at C-Rank magnitude: 24 damage to a man wearing ≈23% reduction.** He went grey, then furious — a register nobody in this campaign has seen from him — held Alexander's face in both hands, checked him properly, and **cleared the whole loss with one treatment touch.** Priya called it 'a shot'; Julian said 'that's a real punch'; Renata said *he's C-Rank, we keep saying it like it's a certificate.* In five years nobody had ever looked at him that way, and he visibly did not know what to do with it.\n\n**He told the crew.** With the field lights going out he said it at ordinary volume — that he and Alexander are together, about a week — specifically so they would hear it from him rather than deduce it, and watched Priya reassemble her opinion of Alexander in real time, which he had been looking forward to for four days. He then defended what Alexander had done to him: *he set himself up as the thing I had to hit, and then stood still for it, so I'd find out I could. I'm still furious about it and it worked.*\n\n**Told he was made proud of.** Alone afterward he was told, plainly, that Alexander is proud of him — the first time in five years anyone has said that about this work — and for once produced no three-seconds-later joke at all. Told separately that he is the most capable of growing of the four of them together, he did not deflect it either: *say that to me again in a month and I'll believe it.*\n\n**On the crew question (`OBJ-12`), thinking stated but undecided.** He does not know how to lead, and fears a structure where his name is on the postings and Alexander's voice runs the field. And the training killed half his own argument: the reason to leave was that no crew ever puts the mender in the plan, and Alexander just put him in the plan inside Priya's crew, in front of Priya. **He will not decide until he has watched this crew actually run the formation on a real job**, and refuses to make a large decision while, in his own words, *like this*.

**The Cicero Gate — his first real fight (`EVT-000119`, `EVT-000120`, 2026-08-03).** Told to hold at the passage mouth while Alexander scouted, then sent in alone against an isolated common beast: his first solo kill landed as a single, decisive strike, the same precision he's used a hundred times to find a wound turned outward for once. He killed several more across the delegated corridor sweep, took a graze on the second that his new gauntlet absorbed almost entirely, and stood back to back with Alexander against the Beast Den's alpha pair exactly as planned — reading the plated alpha's crushing slam and stepping inside the arc rather than bracing against it, then landing the strike that helped finish it alongside Alexander's Flash Step opening. Came out the other side staring at his own hands for the second time in an hour.

**His first weapon.** The plated alpha's boss drop, at Alexander's choice, became a Boss-Imprinted Quickknife — carapace-dark, worked from the very thing that killed it — drawn out of the dimensional inventory and put in his hand on the spot. *First weapon that's actually mine*, he said, and didn't put it down.

**The core declaration, and the truth about pocket gates.** Asked to help fold eleven of Alexander's cores into the Gate's report, Owen refused to lie to a licensed board blind — *where are eleven cores with no Gate attached to them actually from* — and got an honest answer: a private, solo-only form of Gate only Alexander can open, run off the books entirely. He connected it instantly to everything he'd already filed without asking: the dagger with no draw, the potion from nowhere, the killing spree joke that wasn't a joke. He didn't flinch from the new fact, but he drew his own line clearly — a plausible number he could actually stand behind, not the whole eleven — and called Kesha Morrison himself to correct the report live. *That's the last one I do on instinct. Next time, the math comes first.*

**At the door, the largest thing Alexander has told him about himself that isn't about the System at all (`EVT-000122`).** Asked simply whether he was good, and answered honestly: since his parents died in the Damen Avenue Break, tonight is the first time he has been genuinely, uncomplicatedly good. Owen didn't ask for more — took the street name back to him once, quietly, and pulled him inside by the jacket rather than push. Kissed him at the threshold. Cooked for the first time in five years of doing this job (`EVT-000123`) — steak and potatoes, Owen conscripted into setting the table 'decorative and handsome' and taking it as a genuine compliment. Agreed, still half-joking, to more two-person Gate 'dates,' and — more seriously — accepted Alexander's offer to be brought inside a private instant-dungeon clear and shown the whole thing directly, understanding plainly that it pays nothing and produces only cores he already knows have no legal home. Asleep at the ordinary hour, undisturbed at 06:00 when the System issued the next day's quest and rotated its shop; the private line stayed exactly that — private.\n\n**The evening of 2026-08-05 into the morning of 2026-08-06 (`EVT-000170`-`EVT-000173`).** Picked Alexander up near his own building after a rough shift (a Denise-crew hunter who'd walked on a fracture for two days rather than 'make a thing of it'), took him up, and ordered in rather than go anywhere. Over dinner, half a joke he wasn't fully hiding behind — 'Marry me' — got called on it, and confirmed he meant the thing itself if not the timing; Alexander's unhedged 'Yes. Eventually. Du'h' visibly caught him off guard in a way the joke hadn't. Said 'I love you' again over the meal without any of the morning's nerves around it. Fell asleep on the couch afterward without noticing Alexander quietly text Kesha Morrison to release the held Lakefront booking rather than wake him to ask — woke just enough to be walked to bed, still mostly out on his feet. Slept through the whole night and the following morning undisturbed; woke to a note ('you know where I am'), texted about it, and worked out over text that Alexander had gone to train alone rather than wake him — reasoning it out from pattern rather than any channel he shouldn't have. Talked his way into joining him at the lake on his way to his ten o'clock rounds, and revealed, apparently for the first time, that he lifeguarded this exact stretch of water in college — delivered as a joke about jurisdiction before either of them got in."
```

### ENT-000146 — Wade Bishop

Ironline Guild recruiter ("talent side"), met at the Red Line Corridor on 2026-08-04. Direct, unpolished pitch style; candid about what he can't promise.

```yaml
id: ENT-000146
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000138
  game_date: "2026-08-04, late morning, Red Line Corridor"
  real_date: "2026-07-27"
type: Character
subtype: guild recruiter
scope: local
lifecycle: active
aliases:
  - name: "Wade Bishop"
    quality: current
relationships:
  - REL-000068
canonical_state:
  location: ENT-000090
  condition: "Healthy; not established as combat-active."
  capabilities: "Talent-acquisition recruiter for Ironline Guild (`ENT-000101`), working the Red Line Corridor specifically — Ironline's established recruiting ground (`worlds/gatefall/210_PLACES.md`). Not a combatant; his job is identifying and pitching hunters the guild's volume-strike-contract tier wants."
  appearance: "Well-cut jacket that reads out of place in the Red Line Corridor's unpolished district; small, deliberately unshowy Ironline recruiting pin on the lapel. Easy, professional manner."
  personality: "Direct and unhurried; leads with the honest version of a pitch rather than the polished one, states plainly what he can't promise, and doesn't pressure a decision. Genuinely engaged rather than performing interest when a prospect negotiates back at him."
  situation: |
      Approached Alexander on 2026-08-04 off grapevine chatter from two logistics coordinators (Ada Reyes, Dale Pruitt) vouching for him. Pitched Ironline's structure — steady D-Rank/E-Rank strike contract flow, a real assigned crew, a gear stipend — plainly noting a guild patch does not lift the E-Rank card's contract-Rank ceiling (Profile Section 19.4). Agreed, on request, to arrange a D-Rank strike trial with a properly-Ranked crew (easy, within the week) and to look for a B-Rank harvest trial (harder, a few days out) before Alexander decides. Exchanged contact information; no deadline set. Read Alexander's added condition (a properly-carded crew, not just warm bodies for the D-Rank trial) as shrewd rather than difficult, and adjusted without argument.

        **Called back and confirmed, 2026-08-07 evening (`EVT-000193`).** Two days unchased, then Alexander called: the D-Rank trial crew was already fixed for Saturday and couldn't move to accommodate a faster ask, so Wade offered a real alternative for the next day instead — sitting in on a pre-Gate briefing and gear check for an unrelated crew shipping out Thursday, not a trial itself but real and immediate. Alexander declined the sooner option and confirmed Saturday instead. **Locked in: 2026-08-08, 09:00, Coalition lot at 4110 W Fullerton, gear check and briefing first, entry roughly an hour after.** Confirmed D-Rank Gate, four hunters already carded D-Rank (crew lead about eighteen months at D-Rank, roughly a dozen contracts run), Alexander the fifth — properly-Ranked as requested, no warm bodies. Gave an honest, uncushioned duration estimate rather than a reassuring one: gear check and briefing an hour, the clear itself two to five hours depending on population and how the Gate reads, no promise of an early finish. Texted the address that same night. Genuinely pleased Alexander called rather than went quiet, and said so.

        **The trial itself, 2026-08-08 (`EVT-000201`-`EVT-000207`).** Present as an observer only, not a combatant — his own choice, corrected mid-trial when Alexander called out the absurdity of him trying to call tactics from outside a wall he couldn't see through. Watched the crew's opening coordination fail (no assigned lead, first contact costing Reggie Calloway an ambush hit) and watched Alexander take the leader role unassigned, correct it on the spot, and run the rest of the clear — including a two-strike solo kill on the Carapaced boss before any of the borrowed crew got in range. Corrected, on the spot, his own earlier framing that this was "his test" of Alexander — Alexander had it right the first time: the trial existed because Alexander demanded proof before committing, not the reverse. Confirmed this D-Rank Gate is Ironline's own guild-held contract, arranged specifically to recruit Alexander, with no BGM or Coalition filing on it at all.

        **The terms set at the door, 2026-08-08 midday.** Alexander demanded 50% of the contract's total value (posted payout plus mined/dropped loot) and full field command for the duration — conditions Wade could not unilaterally grant (guild-held payout terms sit above his desk) but committed personally to carry upstairs rather than water down, citing his own stake in having pushed for this recruitment in the first place. Alexander's counter-condition for any further consideration of Ironline: **see the money actually land, and see the still-owed B-Rank harvest trial actually move**, before granting Ironline "one more chance." Wade accepted both without argument and left first, waiting outside per instruction rather than continuing to observe.
```

### ENT-000147 — Walt Adamik (the pawnbroker)

Owner of an unnamed pawn-adjacent shop in Chicago's warehouse district, dealing in mundane salvage, licensed small goods, and — quietly — items with murkier provenance. Named in play 2026-08-05.

```yaml
id: ENT-000147
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000139
  game_date: "2026-08-04, mid-morning, warehouse district"
  real_date: "2026-07-27"
type: Character
subtype: pawnbroker / grey-market dealer
scope: local
lifecycle: active
aliases:
  - name: "Walt Adamik"
    quality: current
  - name: "the pawnbroker"
    quality: prior
relationships:
  - REL-000069
canonical_state:
  location: "His shop, Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); exact address unestablished"
  condition: "Healthy; not established as combat-active."
  capabilities: "Runs a shop stocking mundane salvage, licensed small goods with appraisal certificates, and a locked case of higher-value items of ambiguous origin. Competent at reading condition and wear on ranked gear and artifacts by handling alone; not a licensed BGM appraiser and does not claim to be. Willing to buy unprovenanced goods (including at least one E-Rank core) at a discount reflecting his own risk in moving them — a real black-market transaction under Profile Section 12.2."
  appearance: "Older, apron, reading glasses pushed up into thinning hair. Unhurried, watchful in the way of someone who has dealt with every kind of customer and stopped being surprised by most of them."
  personality: "Careful and fair rather than grasping — quotes an honest number and explains his reasoning rather than padding it, doesn't chase a declined price, and doesn't ask more about a good's origin than he needs to know to move it safely. Discreet: noticed something uncanny about Alexander's handling of his own gear and chose, visibly and deliberately, not to pursue it."
  situation: |
      Sold Alexander a look at, and let him handle, **Cicero's Quiet [C-Rank]** (Section 11.6), quoted at $35,000 with murky scavenger-sourced provenance from the Cicero Scar he can't personally vouch for. Not purchased. Bought one private E-Rank core from Alexander for **$220 cash** (`EVT-000139`) — a genuine unlicensed transaction — and offered a better rate on future cores once trust is established. Caught an unexplained half-second during Alexander's dimensional-inventory sleight during the dagger demonstration; filed it away without pressing, consistent with his established discretion.

        **2026-08-05, second visit (`EVT-000157`).** Accepted Alexander's proposal of an ongoing supplier relationship and described how he actually runs the grey side of the business: a private handwritten tally marked rather than named, so the ledger points nowhere under a search; fair quotes; no questions past what he needs to move goods safely; consistency valued above any single windfall. Took **ten E-Rank cores** against a nine-core asking price and gave all three pieces of information without further negotiation, reading the extra core as the trust-by-doing Alexander had pitched. Registered nothing uncanny this visit — the cores came out of an ordinary backpack.

        **His own want, volunteered: C-Rank cores and above.** Asked what he actually wants rather than what he will take, he named high-Rank cores, began to give a reason, visibly stopped himself, and said only that he has a use for things that don't come cheap through normal channels and that the shop's margins don't stretch to it. **The reason is unestablished and is a live thread.** When Alexander said he could not promise to hold that kind of material *yet*, he filed the word without pursuing it — the same deliberate discretion as the dagger slip.

        **Agreed to broker an introduction to an unlicensed artificer** — real quality work, never asks him an unnecessary question — framed as a **consultation rather than a commission** at Alexander's preference, and explicitly as putting his own name on Alexander personally. Quoted $200–300 cash for an hour, possibly waived as a favor; the artificer takes no gold or crystals. Timing is the artificer's own. **The artificer is referenced but unmet, unnamed, and holds no identifier.**

        **Third visit, 2026-08-08 ~14:00-14:20 (`EVT-000212`).** Alexander returned in civilian clothes with ten E-Rank cores, declined a straight cash sale ($280 each quoted, up from the first visit's $220, crediting the established trust), and asked to see interesting stock instead. Walt opened his locked case: **Cicero's Quiet** untouched at $35,000, plus two smaller unlicensed pieces he couldn't fully price himself — a stripped, unmarked suppression cylinder off a decommissioning crew, and an awakened-made lockpick set. Let Alexander handle both, then handed both over at once when pressed, genuinely amused rather than resistant ("the closest thing to delight he shows," his own real laugh, twice in one visit — a first). Alexander's own read (unshared with Walt) established their operating methods — instrument/Gate-signature suppression for the cylinder and mechanism-reading reshaping for the picks — but **not either item's Rank or hidden origin**; both Ranks remain unconfirmed under the Profile 1.36 appraisal boundary recorded at `EVT-000214`. Walt still doesn't know the specifics, only that Alexander learned more about their operation than he did, and said so without pressing for it — asked once, lightly, to hear it "sometime, not tonight." Closed the deal at **fifteen cores total** (all of Alexander's private stash) for both unlicensed items, calling it fair without negotiating harder, and noted aloud that Alexander was offering everything he'd walked in with. Parted on real warmth — a genuine laugh at "square, triangle," a plain compliment ("better company than most of what walks through that door"), and an unpursued, undeliberate observation that Alexander was smiling under whatever was confusing him, which "wasn't there when you walked in."
```

---

### ENT-000149 — The Cutting Edge Proprietor

Owner-operator of Cutting Edge (`ENT-000132`), the custom gear shop in Chicago's warehouse district. A working artisan rather than a shopkeeper, and rigidly licensed. Not yet given a proper name in play.

```yaml
id: ENT-000149
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000156
  game_date: "2026-08-05, ~11:20-11:32, warehouse district"
  real_date: "2026-07-28"
type: Character
subtype: gear artisan / licensed vendor
scope: local
lifecycle: active
aliases:
  - name: "the Cutting Edge proprietor"
    quality: current
canonical_state:
  location: "Cutting Edge (`ENT-000132`), Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); exact address unestablished"
  condition: "Healthy; not established as combat-active."
  capabilities: "Builds and fits custom E-Rank and D-Rank hunter gear on commission (Profile Section 12.8). Reads a hunter's loadout accurately at a glance — identified Alexander's mixed Ghost Quickknife / Gale coif / Bastion gauntlets kit on sight as assembled fast rather than planned. Not established as an artificer himself; whether he forges or subcontracts the mana work is unestablished."
  appearance: "Mid-forties, sleeves rolled to the elbow, a loupe pushed up into close-cropped hair, hands that go back to a bench the moment a conversation stops being useful. Works at the back of a narrow deep shop lit by warm overheads, gear displayed like specimens under glass rather than stock on racks."
  personality: "Blunt, unhurried, and cold in a way that reads as pricing rather than rudeness. Explains his own reasoning rather than posturing, does not chase a customer who walks, and is unbothered by a parting insult. Absolutely inflexible on one point: he logs a core's provenance before it touches anything carrying his mark, because the paperwork is the difference between a shop and a liability — and he says so plainly rather than hiding behind policy."
  situation: "Met Alexander for the first time on 2026-08-05 (`EVT-000156`). Explained the commissioning rules in full: the supplied core's Rank is the hard ceiling; combining cores is volume, never Rank; genuinely unusual work needs unusual material and draws review, especially at B-Rank and above. Pressed three times for Alexander's core count and source and was refused three times; conceded the framing when Alexander pointed out he had been asked to disclose resources without being shown anything, and narrowed to an offer — one core physically on the counter, no interrogation, and he would say what could be done with it. Alexander declined that too and left. Nothing bought, sold, or commissioned; no standing relationship formed. He does not know Alexander's name, holdings, or the System, and holds no suspicion beyond an ordinary vendor's read that a customer is being cagey about sourcing. Named by the pawnbroker (`ENT-000147`) the same day as straight and good at the work, but permanently useless for unprovenanced material."
```

### ENT-000150 — Ferro's Reclamation

A salvage and scrap dealer two blocks north of the pawn shop in Chicago's warehouse district. Named to Alexander by the pawnbroker as the one place in the district that talks. No relation to Denise Ferro (`ENT-000148`).

```yaml
id: ENT-000150
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000157
  game_date: "2026-08-05, ~11:40-12:15, named at the pawn shop"
  real_date: "2026-07-28"
type: Institution
subtype: salvage dealer
scope: local
lifecycle: active
aliases:
  - name: "Ferro's Reclamation"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`), two blocks north of the pawn shop (`ENT-000147`); exact address unestablished"
  function: "Buys and resells mundane scrap and salvage. Presents as an ordinary reclamation yard."
  standing: "**Named as an informant risk, not a business option.** Per the pawnbroker (`EVT-000157`), its owner trades favors in both directions with Coalition compliance staff and repeats what is said in the shop. Nothing unprovenanced should be sold there and nothing said there that Alexander would not want relayed to a badge. Not visited; interior, owner, and pricing unestablished, and the owner has no identifier. The name is coincidental — no established relation to Denise Ferro (`ENT-000148`), whose crew Alexander worked for on 2026-08-04."
```

### ENT-000168 — Milo

A hunter met at the Windy City Hunters Coalition's training grounds, 2026-08-05. Sensor-adjacent with minor perception ability but no notable combat skill; trains reaction footwork as compensation. Surname not given.

```yaml
id: ENT-000168
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000167
  game_date: "2026-08-05, ~14:20-14:40, Coalition training grounds"
  real_date: "2026-07-28"
type: Character
subtype: sensor-adjacent hunter
scope: local
lifecycle: active
aliases:
  - name: "Milo"
    quality: current
canonical_state:
  location: "Windy City Hunters Coalition training grounds (`ENT-000102`), staged at the Lakefront Gate Corridor (`ENT-000089`)"
  condition: "Healthy; athletic build, no notable combat capability by his own account."
  capabilities: "Minor perception-adjacent ability, unspecified. No combat skill worth naming, by his own admission. Trains reaction footwork — reading a partner's weight shift and calling pattern to react before the movement completes — as a deliberate substitute for the striking ability he lacks."
  appearance: "Roughly Alexander's age, wiry build, clearly conditioned for agility rather than bulk."
  personality: "Direct, easygoing, comfortable being watched and asked about his training. Not curious enough to press when something doesn't add up — noticed Alexander's uncanny first-attempt read of his drill and let the deflection ('I like running') stand without pushing."
  situation: "First meeting, 2026-08-05 (`EVT-000167`). Ran his reaction-footwork drill for Alexander twice — a legendary-success first pass and a strong-success second pass on a harder, feint-laced pattern — and was visibly startled both times. Told Alexander he's welcome back on the cones anytime. No relationship record yet; a casual acquaintance, not a standing arrangement."
```

---

## Campaign Relationships

### REL-000062 — Windy City Hunters Coalition (institutional affiliation)

Defined in `110_WORLD_LEDGER.md` (`REC-000075`). Alexander's freelancer registration with the Coalition; as of 2026-07-23 it is the channel through which he was placed on Tanya Voss's crew.

### REL-000063 — Alexander's membership in Tanya Voss's crew

```yaml
id: REL-000063
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000058
  game_date: "2026-07-23, contract signed"
  real_date: "2026-07-23T15:03:14+02:00"
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
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000063
  game_date: "2026-07-25, Coalition desk and Cicero Scar staging"
  real_date: "2026-07-24T13:54:03+02:00"
endpoints:
  - ENT-000125
  - ENT-000134
type: harvest-hire
qualities: "Alexander's standing as a harvest-element hire (miner) for a corporate-adjacent contractor running C-Rank Gate clears, routed through the Windy City Hunters Coalition rather than a direct guild posting. Not a peer-crew membership like `REL-000063` — hired support labor, paid a harvest share off declared mined crystals rather than an equal split, per Profile Section 9.4/11.1 (exact split formula not yet authored in the world rules; this campaign's payout is by Runtime ruling)."
state: "Two jobs completed: the Cicero Scar C-Rank clear (2026-07-25, `EVT-000063`) — 7 declared C-Rank crystals, ≈$5,700 harvest share pending — and the Frozen Gallery C-Rank clear (2026-07-26, complete, `EVT-000065`–`EVT-000068`), staffed by a different site coordinator (Dale, `ENT-000135`) who already knew Alexander by reputation from Ada Reyes. Three vein assignments worked at the Frozen Gallery, the third to genuine exhaustion: **41 C-Rank crystals formally declared**, the highest single total of the crew, yielding a computed harvest-share payout of ≈$24,663 (Section 13.2, `EVT-000068`) — his largest to date. Six separate private sales (98 crystals, four of 12 and two of 50) were sold through the System shop across the job and never entered this contract's declared pool — undeclared theft under the standard support-contract terms, unknown to Dale or the contractor despite two close calls, both deflected. Dale confirmed the contractor occasionally posts B-Rank harvest work and named Alexander a strong future candidate. No standing contract beyond a per-job basis; each job is taken individually through Kesha Morrison at the Coalition desk."
history: "Formed 2026-07-25 when Kesha Morrison surfaced the Cicero Scar harvest slot after Alexander asked specifically about C-Rank mining work, following the correction that his E-Rank card does not bar harvest work at any Rank (`EVT-000062`)."
```

### REL-000065 — Alexander's pending crew slot with Priya Okafor's crew

```yaml
id: REL-000065
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000069
  game_date: "2026-07-27, arranged by phone through Kesha Morrison"
  real_date: "2026-07-24T20:38:46+02:00"
endpoints:
  - ENT-000125
  - ENT-000136
type: crew-membership
qualities: "Alexander's fifth slot on Priya Okafor's five-hunter crew, a peer-crew combat/striker role (not harvest-hire like `REL-000064`) for a distinct unconfirmed E-Rank–D-Rank Gate contract, now confirmed true C-Rank. Full roster: Priya Okafor (`ENT-000136`, lead/striker), Julian (`ENT-000137`, ranged striker), Renata (`ENT-000138`, sensor), Owen (`ENT-000139`, mender), Alexander Pendragon (`ENT-000125`, support striker, rear position paired with Owen)."
state: "**Contract complete — the Gate is cleared, and the crew is out.** Confirmed 2026-07-28 at staging; formation set (Priya front; Julian/Renata mid; Owen/Alexander rear); the crew entered together and walked out four hours eleven minutes later having cleared a Gate a full Rank above its posting. Alexander killed the fifth common beast solo, then the elite across four exchanges (`EVT-000076`), then — after Owen cleared the Severe injury the boss inflicted on him — the **boss itself** (`EVT-000080`), taking him from Level 3 to Level 7 across the clear. Seven common beasts were left alive and contained by the standing barrier, declined by crew decision, and went down with the instance.\n\nThe crew functioned as a genuine unit under Alexander's tactical direction from the elite onward: Priya ceded the call outright, Renata's reads were decisive at every point, Julian executed fire discipline exactly as ordered, and Owen held his healing in reserve on Alexander's own instruction and then spent a touch on him anyway. Alexander's rapport with Owen deepened markedly and specifically; his relations with the rest are respectful but cooler, and he overruled Julian coldly over the boss drop.\n\n**Resolved 2026-07-29 evening at the Coalition case table (`EVT-000083`).** Alexander delivered the agreed \"no hero\" account directly to Julian and Renata; both accepted it as consistent with what they'd personally lived through. The crystal/core pool (16 C-Rank crystals, 2 C-Rank cores, $52,500 declared value) split under standard terms — Priya's 10% plus an equal fifth, the rest split evenly five ways ($9,450 each, $14,700 to Priya). The Longshot [C-Rank] will be sold and its proceeds split the same way once appraised; no one on the crew uses a bow. Priya carries the physical crystals/cores to file the account and close the contract the morning of 2026-07-30.\n\n**By explicit ruling, tactical and strategic command in the field passes to Alexander going forward.** Priya proposed it herself, citing the precedent she'd already set inside the Ashfield Gate by ceding him the call outright during the boss fight. She keeps the contractual lead, her signature on every filing, and the 10% leader's share — the split above still reflects that. Julian and Renata both endorsed the arrangement without reservation.\n\n**First training session convened (2026-08-02, `EVT-000111`, `EVT-000112`).** The recurring schedule agreed on 2026-07-29 sat unscheduled for four days — *in 2–3 days* becoming almost a week — until Owen pressed it and Alexander fixed it on the spot: **the whole crew, 18:00 on 2026-08-02, at the trading field attached to the Coalition.** Priya (who had held the evening open for a week and said so), Julian (openly pleased at an excuse to use that venue), and Renata all confirmed within minutes. Renata separately relayed, through Owen, that she wants Alexander to stop being a stranger — everyone at the crew dinner produced a life story except him.\n\nAlexander prepared for it in writing rather than by improvising: a full afternoon at his own desk producing per-member tactical dossiers (`EVT-000112`) assessing strengths, failure points, and how each performs alone versus in formation. The plan he brought out of it puts Priya and Julian on a front line built around her aggression and his fire discipline, frees Renata to read rather than fight, and positions Owen exactly where his three operating terms require.\n\n**Delivered and exercised (2026-08-02, 18:00–21:00, `EVT-000116`).** The session ran: briefing from memory with the folder never opened, light unarmed sparring with each of the four in order of combat experience and an individual diagnosis given to each face-to-face, then two hours walking the formation at pace — positions physically occupied, fire lanes marked, and the **call form fixed as *who, what, where*, said aloud**, which took three passes to break a month of this crew's habit of silently continuing while hurt. Renata's deliberate-sabotage passes folded the formation twice and taught more than the three clean walks. The **spend-call rule went in last and Owen accepted it in front of the crew.** Every member left with a specific personal correction: Priya's late third beat, Julian's missing second answer, Renata's stop-don't-end reflex, and Owen's four-inch flinch. **Next session fixed for 2026-08-09, same field and time**, unless a job lands first; Julian's range work is on the agenda for it.\n\n**Standing crew orders.** Priya watches the board and the Coalition desk and calls Alexander when something worth having appears; **no Gate before at least one further training session.** She keeps the contractual lead and the signature; the field is his.\n\n**The relationship is now known to the crew.** Owen disclosed it to Priya, Julian, and Renata at the close of the session; Priya then asked, once and in the open, whether the spend-call rule survives either of them being the one bleeding, accepted Owen's punch as the answer to his half, and left Alexander's half explicitly untested. **The professional collision this relationship creates is now the crew's shared knowledge rather than a private problem between the two of them.**\n\n**Alexander's own position, stated privately for the first time (2026-08-02).** He does not expect to stay on this crew long-term. His judgement is that the command shift he has already caused will eventually collide with Priya — she ceded the field four days ago and meant it, and asked him to justify himself in front of the crew twenty minutes later, both of them decent acts, and the shape of something that gets less stable rather than more."
history: "Formed 2026-07-27 when Kesha Morrison, following up on her promised morning callback (`EVT-000069`), reported two open E-Rank–D-Rank waiver-tier crew slots; Alexander asked after Okafor's posting specifically and committed to it over the phone. Confirmed and activated in person 2026-07-28 (`EVT-000070`)."
```

### REL-000066 — Alexander and Owen

```yaml
id: REL-000066
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000147
  game_date: "2026-08-05, ~08:15, a diner in Rogers Park"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000139
type: personal
state_updates:
  - "**2026-08-08 evening to 2026-08-09 morning (`EVT-000217`, `EVT-000218`):** Owen called after shift and came to Alexander's apartment. They repaired the near-three-day silence directly: Owen named fear after the Overgrown Temple clear as part of the avoidance, committed to communicating even on bad days, and stated that he wants to fight again without abandoning his hospital and mender identity. They spent the night together. During the sixteenth daily-training run they affirmed mutual love, agreed on 'together together' as a shared-life commitment, and made the moving-in question concrete: they will seek a new, larger apartment that belongs to both of them from the beginning. Trust repair, communication expectations, and joint future-planning are now active relationship state; Owen's fear around combat remains unresolved rather than erased."
qualities: "A personal and physical relationship between Alexander Pendragon (`ENT-000125`) and Owen (`ENT-000139`), formed across a single day and night following the Ashfield Gate clear. Distinct from and additional to their shared crew membership under `REL-000065`, which remains a separate professional tie through Priya Okafor's crew.\n\nIts defining asymmetry is knowledge. Owen has personally witnessed four things about Alexander that have no ordinary explanation (`EVT-000077`, `EVT-000080`) and has stated plainly that he is not confused by them and will not later invent an explanation. He has also **twice declined to ask** — once unprompted, and once by explicitly releasing Alexander from a promise to explain, on the grounds that a promise extracted after a near-death and a beer is not fair to the person making it. **Superseded 2026-08-04 (`EVT-000145`): Alexander named the System to Owen outright** — Owen is now the one person who knows it by name, though it remains unknown to every other character (Profile Section 14.4).\n\nThe relationship's other quality is that it is the first thing in the campaign Alexander has not calculated. He gave away a healing potion, refused thanks in favor of getting drunk together, paid a whole tab, and took an unconscious man home rather than leaving him — none of it advancing any objective he holds."
state: "**Named, 2026-07-30 (`EVT-000084`).** Over breakfast, after saying he did not want it to be strictly business between them, Alexander asked Owen directly — red-faced and grinning like a kid, in the middle of an otherwise serious tactical conversation — **whether he would be his boyfriend.** Owen said yes without hedging and took his hand in open view of the diner. This is the first time either has used a word for it; the night before they had named the thing plainly but never the relationship. Owen intends to tell Priya Okafor first, ahead of the tactical arrangement, specifically to watch her reorganize her opinion of Alexander in real time. Alexander had already proposed continuity earlier the same morning — *I think I will stay overnight more often* — and Owen answered before he had a joke ready.\n\n**The professional collision is on the record, unresolved by agreement.** Owen raised it himself: Alexander now holds tactical field command over him (`REL-000065`) and has explicitly claimed the call on when Owen spends a repair, *and* they are together. The two will rub the first time Alexander orders him to hold back or refuses to let him come for him. Neither pretended it was solvable that morning; both preferred it stated. Open beside it: whether the crew hears about the relationship from them or deduces it — Owen gives Renata about two more dinners.\n\n**Deepened, 2026-07-30 evening (`EVT-000088`).** Over the walk to dinner Alexander interrogated the economics of Owen's position on Priya's crew on Owen's behalf, told him he does not want him used, and proposed that Owen **build and lead his own crew with Alexander in it** — deferring the whole question explicitly as an open window, and stating that he wants the relationship to work out more than a crew or the money. Asked whether the proposal was really about Owen's C-Rank card unlocking contracts Alexander's E-Rank card bars, he answered *kinda both* rather than denying it, and Owen took the honesty as the thing that mattered. Alexander then told him he wanted him **before he knew Owen held any card at all** — landing directly on the wound Owen named at the bar. At Owen's apartment afterward, Owen emptied a drawer and cleared a bathroom shelf, said he has never given anyone a drawer before, and named what he'd seen at Alexander's flat: bare walls, nothing on the fridge, everything in a bag — *you live like you're about to be told to leave*, answered with *you're not, not here, that's all the drawer means.* Alexander crossed the room, put a hand on his chest, kissed him, and said thank you. The toothbrush stayed. The evening ended there, nothing scheduled until 06:00.

**Continuity repair (`EVT-000106`) — the first overnight was 2026-07-28 into 2026-07-29, at Alexander's studio.** The durable Claude-session export confirms what `EVT-000081` already recorded but Checkpoint 0022 later compressed into a supposed “blank-night gap fill”: after the Ashfield clear, Alexander and Owen deliberately drank beer together in place of thanks; Owen fell asleep in the booth; Alexander paid the whole tab, took him home by taxi, put him in Alexander's bed, lay down beside him, and slept with an arm around him for roughly fourteen hours. The next morning's established intimacy included the pillow fight, shared shower, teasing, and the report conversation. This was their first overnight and the first time Alexander's apartment had held another person since his awakening. The record establishes romantic and physical intimacy without inventing a more specific act than the transcript shows.

**Later milestone — first mutually named night, 2026-07-29 into 2026-07-30, at Owen's Rogers Park apartment.** After the crew's Coalition meeting and a bonding dinner with the rest of the crew, Alexander deliberately gave Owen the evening alone — then texted him within the hour asking if he was still up. Owen: 'was hoping you'd cave first tbh.' Alexander went to him. Both spoke it plainly for the first time — Alexander: 'I want you. I want us.' Owen: 'You. Just you... I don't know what you are, and it doesn't change this.' The System remains unknown to Owen; he has stated outright that not knowing doesn't change what he wants. Morning found them still together, Owen asleep with an arm over Alexander. The relationship is no longer a question either is dancing around, though neither has used the word for it yet. Over dinner the evening before, Owen also disclosed that his mother was a hospice nurse and that mending felt like inherited work the first time he understood what he'd become.

**A key, a birthday, and a boat (2026-08-01, `EVT-000108`, `EVT-000110`).** Alexander woke him by kissing his face and calling him *my cute Chansey* — turning the Pokémon Owen had named with total gravity three nights before into a pet name, which Owen received as a war crime and did not object to. Before leaving for Renata's, Owen **gave him a key to the apartment**, the one spare set, with the same lack of ceremony as the drawer. Over text Alexander offered to buy him a sensor rig of his own and named it a Christmas present, then talked himself out of the timing in real time — *hm. so birthday present then?* — which is how **Owen's birthday (14 September)** entered the record and how a five-month surprise became a six-week one. Owen's reaction was to the planning rather than the money: *you really do just decide things and then they're true, huh*, followed by thanks delivered plainly rather than deflected, and an immediate demand for a separate Christmas idea he intends to be insufferable about tracking. That afternoon they took the boat out. Three jet-ski heats — Owen won the first two on course knowledge alone and nearly fell off celebrating; the third was close enough that both claimed it — and then the two of them **slept together on the deck**, unhurried, anchored, with the nearest shore a long swim away. Afterwards Owen lay with an arm across him watching the light go gold and said only *point conceded, retroactively, in full.* Alexander answered *I would gladly get wrecked by you any time*, and Owen — for once with nothing clever ready — kissed his knuckles and said *yeah. same.*

**Texture, 2026-08-02 (`EVT-000111`).** Alexander granted Owen an exemption from the morning run, immediately priced it (*that makes tomorrow's run doubled*), and then walked him past the exemption into the longest run of his life without mentioning that the exit was still open. Caught at the two-kilometre mark, Owen swore, accused him of engineering enthusiasm, and ran it anyway. At breakfast a standing arrangement was struck and shaken on: **Alexander buys every breakfast; no eggs after 10 AM.** Owen also raised the bigger-bed question when Alexander asked for one, correctly identifying it as a statement rather than a purchase — *that's you deciding this is a permanent arrangement out loud, via furniture* — declined to be adorable-d into it in a doorway, and did not say no. Alexander's counter-offer was to haul his own bed across the city and lash the two together, which he was only about half joking about.

**Added 2026-08-03 (`EVT-000118`) — the day the asymmetry got an end date.**

*He asked to be shown, and was told the truth about why.* Alexander offered a two-person Gate and, asked what it was for, said: *I want to show you… myself, I suppose. To answer your questions with actually no need to answer them.* Owen did not take it lightly and did not take it immediately — he made Alexander hear the consequence out loud first, that afterwards Owen would not be the man politely not asking but the man who knows, around Priya and Renata and every desk in Chicago. What settled it was two words Alexander does not say: ***I trust you.***

*He wrote the safety rule himself, and made it a rule rather than a mood.* Handed the call on his own safety, Owen refused it — noting aloud that two days earlier he had told the whole crew that the man asking to be patched always gets that call wrong, so it belongs to the field commander. What he asked for instead was exact: one beast alone, a second on him is Alexander's, and if he is hurt enough to want a touch he says the word and gets no vote.

*The gear argument, and what he actually wanted from it.* He agreed to a split — gloves from Alexander, the rest from him — and was visibly pleased by it, because it let him walk out having paid for his own protection like an adult. Alexander overrode it and bought all three pieces. Owen was not grateful and said so, quietly, in the shop: *you just took away the one bit of this that was mine.* He then negotiated a counter-term rather than sulking (he buys the consumables, the kit, and lunch), lost that too, and settled for buying his own tape and potions out of stubbornness. The C-Rank gauntlets landed differently from the money: he put a hand flat on the counter, discovered they do not deaden touch, and had to convert it into logistics before it turned into something else.

*And he told a third party.* On instruction he told Kesha Morrison they were together, then admitted he would have anyway — she has held his payments and his postings for two years and never once asked him a personal question, and it felt like she had earned one.

**The asymmetry, unchanged and deepening.** Told outright that Alexander had spent two hours on *a killing spree*, Owen heard it correctly, said nothing, and kissed him. He has now filed five impossible things without asking a single question, and does it faster each time. The relationship is where the exposure thread lives: it is not a secret being kept from him so much as a secret he has chosen, repeatedly and on the record, not to make Alexander carry alone by asking.

**No longer private, 2026-08-02 (`EVT-000116`).** At Alexander's request the announcement was held until the training finished; Owen then told Priya, Julian, and Renata outright, at the field, about a week after it started. Priya congratulated them and immediately asked the professional question in the open — whether the field commander's spend-call survives either of them bleeding — accepting the evening's punch as an answer to Owen's half and naming Alexander's half untested. Renata had already assembled it. **The collision Owen raised on 2026-07-30 is now shared crew knowledge rather than a private problem**, and it remains unresolved by agreement rather than by evasion.

**The asymmetry closes a real notch, 2026-08-03 (`EVT-000119`–`EVT-000121`).** Fought a real Gate together for the first time, back to back, and Owen came out of it having killed for the first time in his life — not the thing he'd expected to feel the most that day. That thing turned out to be the core declaration: asked to help launder eleven unexplained cores into a report, he refused blind and got, in exchange, the truth about **pocket gates** — the first concrete mechanism behind everything he's spent weeks not asking about. He took it steadily, connected it to the dagger and the potion and the killing-spree joke without needing help, and then did something neither of them had scripted: he set his own boundary inside someone else's secret, insisting on a number he could actually defend rather than the whole truth Alexander offered him. He corrected the report himself, live, on the phone. **He is no longer only the person choosing not to ask; he is now, in a small and real way, complicit — and he chose the terms of that himself.**

**Added 2026-08-03 evening to 2026-08-04 morning (`EVT-000122`–`EVT-000124`) — the first thing that isn't the System.** At his own door, asked plainly whether Alexander was good, he got an answer that had nothing to do with pocket gates or cores: Alexander's parents died in the **Damen Avenue Break** (July 2016) when he was fifteen — his mother a university professor, his father an FBI Task Force detective who'd awakened days into the Gatefall and died beside her with no protocol yet chartered to help him fight what came through. Owen took the street name back to him once and said nothing else, pulling him inside rather than asking for more — the same restraint he has shown at every previous disclosure, applied here to something that was never about the secret at all. They kissed at the threshold. **Alexander's birthday is now fixed: September 17** — three days after Owen's own (14 September, `EVT-000108`), unremarked by either of them in the moment.

Alexander cooked for him for the first time in five years of this work — steak and potatoes, Owen conscripted into table-setting duty as 'decorative and handsome' and delighted by it. Over dinner, half in earnest and half building an increasingly absurd bit about picnic tables inside a Beast Den, they agreed in principle to more two-person Gate 'dates.' More seriously, Owen accepted an offer to be shown a **pocket-gate clear from the inside** — not the fact of it, which he already had, but the thing itself, done together. Alexander, mid-sentence claiming he'd need to find a key, caught his own mistake: he already has one banked, forgotten since that morning. Nothing scheduled; the demonstration is simply available now rather than pending. Asleep by the ordinary hour, undisturbed at 06:00 when the System issued Alexander's next daily and rotated its shop — perceptible to Alexander alone, exactly as always.

**Added 2026-08-04 morning (`EVT-000136`) — a new nickname, and the first apology-shaped thing Alexander has volunteered.** Two good-morning kisses landed before Owen was fully awake, then 'Owwiiiie,' delivered dead-straight — Owen fought it, lost, and negotiated a quick coffee before the run rather than refusing outright. The eleventh daily ran under a spontaneous house rule (one extra kilometre per complaint), landing Owen at 13 km against his usual scaled effort; he called it extortion and grinned through all three self-inflicted kilometres. Before parting, Alexander told him plainly that he didn't want to ask him to lie again, referencing the Cicero core declaration directly — the first time he has proactively named discomfort about something he asked of Owen, rather than waiting to be asked about it. Owen reframed it on the spot: he hadn't felt used, he'd felt trusted with a real choice, which is different — and confirmed that finding an artificer through Kesha isn't the same kind of ask at all, since nobody has to lie to commission gear.

**The largest disclosure of the campaign, 2026-08-04 evening (`EVT-000145`, `EVT-000146`).** Over dinner, after Alexander walked Owen through a live demonstration inside a second instant dungeon — Owen watching him use everything, including materializing a mana potion out of empty air and drinking it in front of him — Alexander said it outright, flat and without performance: *I am a Hunter who levels up.* He then explained it in terms Owen's own reference point could hold: a status window, tracked stats, kill counts, daily quests with real deadlines and real costs for missing them. This is the first time the System itself has been named to anyone; every prior disclosure (the parents, the pocket gates) stopped short of this. Owen took it as confirmation rather than shock — he had already watched the impossible thing happen — and asked the practical follow-up (what happens if a daily is skipped) rather than an existential one. When Alexander named the fear underneath all of it — *I was the weakest amongst weeks. I don't want to feel like that never again* — Owen reframed it back to him as the same instinct that made him distrust his own correct reads, not a new flaw, and declined to tell him to stop chasing it.

**The relationship survives the naming and gets tested immediately after.** Alexander stated plainly, without affect, *I am never losing you.* Owen's composure broke for the first time in this relationship — not into distress, into something softer — and he confirmed it back just as plainly: not leaving, wasn't planning to, finding out his boyfriend is the Bearer of a System didn't change that math. Alexander then, in the same sitting, proposed they move in together; Owen's honest first reaction was pointing out it had been five days since they named the relationship at all, followed immediately by confirming he wants it too and has effectively been living half in Alexander's space and half in his own for two weeks regardless — and stating, without being asked, exactly what he knows he'd be signing up for (unexplained absences, real danger, no one to call if a night doesn't end with a story). Alexander pulled back mid-conversation — *let's not rush this... I am sometimes too much* — and Owen refused to let the walk-back stand as a correction: *you're not too much, you're just used to being alone with everything.* Nothing was decided that night beyond the fact that neither is leaving. The moving-in question is open, not rejected."
history: "Formed over roughly twenty hours. Owen was assigned as Alexander's rear-position partner at staging on 2026-07-28 (`EVT-000070`) and spent the clear watching him do impossible things: intercepting a beast to protect him, taking a fatal hit and standing up unharmed, summoning a dagger from nothing twice, and producing a healing potion he had not been carrying. Alexander's first genuine warmth toward anyone in this campaign was directed at him mid-Gate (`EVT-000077`) — a joke about an owed beer, declining Owen's healing to bank it for worse need, an arm around his shoulder, and the first smile the crew had seen from him. Owen then cleared Alexander's Severe rib injury with a C-Rank treatment touch (`EVT-000080`), the first exercise of the Profile 1.5 mender rule. The beer followed the clear, and the rest followed the beer (`EVT-000081`)."
texture: "**How these two actually are together — the register a Runtime should play, not just the fact of the relationship.**\n\nIt is *funny* before it is anything else. They tease constantly and neither wins. Alexander calls him 'mister no-sparks' and 'O great mage'; Owen is genuinely affronted by 'mage' ('there's no wand, there's no — *sparkles*'), insists 'mender' with the weary precision of a man who has lost this argument before, and takes it as a compliment anyway. Alexander charged him a fee to use his own shower. There was a pillow fight the morning after, which Owen lost catastrophically to a bedsheet while hungover, and about which he demanded the record show he was ambushed by a man who had killed a boss the previous day.\n\n**Owen's tell is his hands.** When he is composed he turns his glass a quarter-turn on the wood; when he isn't, he finds somewhere to put a hand — flat on Alexander's chest, curled into his shirt, absent-minded on the back of his head. His dryness is armor and it stops working around Alexander: he goes red from the collarbone up, his voice climbs, he starts a sentence and reroutes it, he laughs at things that aren't quite jokes. He is habitually the one who stays sober to drive everyone home and has almost no tolerance, and he is aware this makes him appalling at drinking.\n\n**Alexander is unguarded here and nowhere else.** He is cold or merely correct with Priya, Julian, and Renata — he overruled Julian flatly over the boss drop within the same hour he was warm with Owen. The smile he can't control is Owen's alone; the crew has seen him smile exactly once, and it was aimed at Owen. He initiates the physical contact every time (an arm around the shoulder, a hand taken in both of his, a kiss on the cheek, blocking the doorway to tease), and Owen's reaction is consistently *startled, then delighted* — he does not expect to be someone's person and says so: 'People are grateful to me... I get thanked a lot and it isn't the same thing at all.'\n\n**The unspoken thing is handled with deliberate care on both sides.** Alexander began a sentence — 'I...' — and stopped; Owen heard it, went still for half a second, and said only 'Mm,' meaning *I know, whenever, I'm not going anywhere*. He keeps that promise even when it visibly costs him. Warmth is the medium through which the secret is *not* discussed, not the lever used to extract it.\n\n**Owen looks after him in small practical ways** that are not mender's work: telling him to eat, noting he's had eggs and beer since yesterday, releasing him from promises made while exhausted, and pointing out that Alexander is carrying six things at once. Alexander's reciprocal gesture is to give things away without accounting for them — the potion, the tab, his bed.\n\n**Added 2026-07-30 (`EVT-000084`) — the morning-after register, which is the one they default to when nothing is on fire.**\n\n*Physical play, and Owen always loses.* Owen shoves, wrestles, and attempts flips with roughly a third of his actual weight behind them and is put down every time without effort, whereupon he demands the record show he was ambushed, outnumbered, or concussed — 'by the pillow, earlier.' He never stops trying it. Alexander answers by picking him up bodily and kissing his face until the protest collapses, which works every time.\n\n*The jurisdiction bit.* Alexander's new field command over the crew is a standing joke between them: told he can do as he likes because he is Owen's leader, Owen argues jurisdiction — 'Priya gave you *the field*, in a *Gate*, that is a specific and limited jurisdiction, it does not extend to my *head*' — and threatens to request written clarification. He loses this argument too and enjoys it.\n\n*Owen keeps score in his own units.* Having completed a scaled version of a regimen that cost Alexander nothing, he claimed the win 'in percentage of personal maximum' against the man who killed a boss on Tuesday, and wanted it noted formally.\n\n*The instructor's voice is a separate thing and Owen named it.* Coached through form — a hand between the shoulder blades, a tap under the chin — he identified it immediately as not the voice Alexander uses for people he likes but the one he uses for people he is **responsible for**, said he liked it, and instructed Alexander not to make that weird.\n\n*Alexander goes red now too.* Previously the blushing was entirely Owen's tell. Asking the boyfriend question put Alexander scarlet and grinning like a teenager, and Owen — who has never seen him lose composure for any other reason — commented on it out loud: 'You know you've killed a boss, don't you? You know that about yourself?'\n\n*And Alexander asks him for help.* Having told Owen he is the most valuable asset in the crew, he said plainly that he is still new at this and will need Owen's help — a sentence he has said to nobody else in this campaign, and which Owen answered by handing over five years of accumulated professional grievance as usable requirements in about eleven seconds. Owen's own framing of the whole arrangement, delivered as a warning: 'I'm going to be so annoying about this.'

**Added 2026-07-30 evening (`EVT-000088`) — the register when one of them says something true.**

*Owen's dryness fails in a fixed sequence and Alexander can now read it.* He goes red from the collarbone up, starts a sentence, abandons it, reroutes, and only gets there on the third attempt. When it fails completely he stops talking and puts a hand somewhere — flat on Alexander's chest, closed into the front of his shirt, both hands round his wrist to hold it in place. When it fails *and* he's out of jokes he goes quiet, which is rare enough that Alexander notices it as an event.

*He defuses every serious moment exactly three seconds after it lands, never before.* He will take a real thing seriously, answer it honestly, and then immediately audit the towels, complain about the stairs, or demand something be entered into the record — 'I'd like it noted', 'I want it on record', 'percentage of personal maximum'. The joke is not avoidance; it arrives only after he has actually said the true thing.

*Alexander gives things away and Owen gives space.* Alexander's gestures are transfers — the potion, the tab, his bed, dinner, and now the offer of a crew built for Owen rather than for himself. Owen's are room: a drawer emptied onto the bed, the top bathroom shelf cleared, a promise not to ask. Neither keeps count out loud and both are keeping count.

*Teasing is the load-bearing structure.* 'Greedy mender', 'my little cute Chansey', 'colonist' (for the toothbrush), the dog towel, the stairs, the jurisdiction bit. Owen loses every exchange and prosecutes the next one anyway. The one thing neither has ever made a joke of is the unasked question.

**Added 2026-07-30 night to 2026-07-31 morning (`EVT-000089`) — the domestic register, and the second morning of the same silence.**

*The shirt bit, and what it is actually about.* Owen wore one of Alexander's shirts to bed out of the pile that arrived in his room, and defended it in three escalating positions — it was on the chair, there is no longer a defensible border, and finally, on the third attempt as always, the true one: *it smells like you.* Alexander tore the shirt off him outright, effortlessly, and Owen — a C-Rank mender who knows exactly what cotton costs a body to tear — looked at his hands, said nothing about it, and made a joke about the treaty three seconds later. **That is now the established shape of the exposure thread between them:** he registers each impossible thing, declines to name it, and reroutes into warmth. Alexander's counter-register is proclamation and play (*King of Menace*, tickling declared as a diplomatic overture, a decree that Owen shall not wear a shirt to bed while he doesn't).

*Physical play, unchanged and load-bearing.* Owen initiates, loses instantly and comprehensively, and demands the record show he was ambushed. He does not stop trying it. In the bathroom the next morning he elbowed Alexander over the sink and lost that one too, in under three seconds, while brushing his teeth.

*The `Chansey` bit is now a term of address.* Alexander called him *sweet egg Pokémon mage* at lights-out; Owen went under mid-objection, defending Chansey's professional standing as a nurse with a satchel. `mage` remains the reliable detonator, and he still corrects it to *mender* every single time.

*Training is becoming a shared thing rather than an imposition.* He argued his way out of ten kilometres and into four and thirty of everything, and Alexander conceded with '+2k every day seems like good progress' — an explicit coaching arc, which Owen accepted without noticing he was accepting one. Afterward Alexander told him he would not stay for breakfast because he had errands; Owen did not ask what they were, said he would get his coffee alone 'like a widower', and let it go. **He does not ask about the errands the way he does not ask about the rest.**

**Firsts recorded this evening.** Owen has never given anyone a drawer. Alexander has never had one — he keeps his life in a backpack, in a flat with bare walls, a fact Owen noticed silently at Alexander's apartment and named out loud at his own. Alexander told Owen he wanted him **before knowing he held any card**, which is the exact inverse of Owen's stated wound. Alexander initiated the evening's kiss, said 'thank you', and left his toothbrush behind on purpose, announcing it in advance as a threat.

**Added 2026-07-31 (`EVT-000093`) — the first unweighed thing.** Every gesture recorded above was, on some level, decided: the potion, the tab, the drawer's answer, the boyfriend question rehearsed enough to go scarlet over. Mid-conversation with a Coalition coordinator, Alexander sent Owen *\"I already miss you\"* before he had time to calculate it — the first time in this relationship he said something true without weighing it first. Owen's reply moved from a startled beat (*\"...oh\"*) to plain instruction (*\"good. don't take it back.\"*) rather than a tease, matching the register he uses only when something has actually landed.

**Added 2026-07-31 evening (`EVT-000103`) — a gap filled, and the text finally answered.** Two things settled in banter over a text exchange and a car ride: the boat kiss (`EVT-000087`, 2026-07-30) is now established as their **first real kiss** — deliberate, sober, in daylight — distinct from the physical intimacy of the night before it, which the record already had running first; and a previously blank night is filled in — **Owen stayed over at Alexander's own apartment on 2026-07-28**, after the beer/exposure conversation that followed the Ashfield clear, the one and only time the stay has run that direction rather than to Owen's. Picked up by car (a fact Owen has apparently owned for two years without it ever coming up), teased about the pointlessness of driving a walkable distance, and walked in on cooking dinner, Alexander crossed the kitchen without finishing a sentence and kissed him for real — unplanned, the first thing all day that wasn't calculated, and the closest either of them has come to actually answering the unweighed *\"I already miss you\"* from that afternoon. Owen's reaction was the same fixed sequence as always — surprise, then giving in, then a joke three seconds later (*\"hi. also hello, what was that\"*) — but the kiss itself broke the pattern: longer, less controlled, and not one he pulled back from first.

**Added 2026-07-31, dinner and night (`EVT-000104`) — the first real disclosure, and the gear conversation.** Over dinner, unprompted and grinning first rather than confessing, Alexander told Owen the actual number: **three bosses**, that afternoon, alone. Owen's reaction ran the full real sequence rather than the deflecting one — visible alarm, a proper mender's read that found nothing wrong, a flat \"three is a lot of not-asking\" — before landing on the same promise he's kept from the start: he won't ask how. This is the largest single piece of true information Alexander has volunteered about what he actually is, still short of naming the System but a real escalation past \"something happened to me.\" Alexander then added, half as a joke and half as real financial anxiety, that the day's shopping had run his gold in the wrong direction — Owen didn't buy the crisis framing for a second and pointed out he's dressed in gear that could stop a bus.

The conversation turned practical and stayed there: Alexander stated plainly, for the second time, that he wants to properly equip Owen — real protective gear, not standard mender kit, addressing the exact gap Owen named at the bar (never positioned to take a hit, never actually budgeted for by any crew he's worked). Owen's request, once he understood it was a real plan and not a nice sentiment: something for the hands, real boots, actual protection. Alexander also proposed bringing Owen along to a future Dale-brokered mining job as easy, well-paid manual work — Owen's reaction was delighted horror at the idea of manual labor, agreed anyway. Alexander added, unguarded, that he isn't interested in sharing how handsome Owen is with anyone else on site; Owen went visibly red and didn't argue.

**A weekend planned.** Owen confirmed he's free the whole weekend but for two short pending items — looking at Renata's glitching sensor rig, and giving Priya an actual date for the recurring crew training (`OBJ-11`) — both under an hour, both still owed. Tomorrow: the lake again, but jet skis first, at Owen's enthusiastic and openly competitive insistence ('I will not be taking it easy on you'), boat after.

**The evening's least calculated line.** Cleaning up together, Alexander said *\"I'll give you all the evenings\"* — off guard, the same unweighed register as the afternoon's text, not a line he planned. Owen went still in the real way rather than the deflecting one, put a hand on his shoulder, and didn't produce his usual three-seconds-later joke at all this time.

Showered and went to bed together, nothing left owed to the System, the crew, or anyone else until 06:00 the next morning.

**Added 2026-08-02 evening (`EVT-000116`) — the register when the private thing goes public, and when he is the one being built.**

*The elaborate stupid gesture, and how he hid it.* Offered a lift, told *Are you seriously going by a CAR to a TRAINING*, he texted that his keys were back on the hook — and had in fact already driven to the Coalition and then ridden the train back the wrong way so they would walk in together. Twenty-five minutes each way. He defended it, when caught, as *the single most humiliating fact about me currently in existence*, and admitted he had done the maths and decided it was worth it. Alexander's read of it out loud — *either the stupidest thing I have ever seen or the most romantic moment in my entire life* — was answered with *it's both.*

*He does not deflect praise about the work.* The tease survives everything else, but told he had done well, and later that Alexander is proud of him, the joke did not arrive at three seconds or at all. He went wet-eyed, put his forehead on Alexander's shoulder, and said that in five years people have only ever said thank you, which is a different thing entirely. Told he has more growing in him than the other three combined, he answered *say that to me again in a month and I'll believe it* — which is not a deflection but a deferral, and new.

*Being hit by him is a thing Alexander arranged on purpose, and he understood it.* He stopped four inches short the first time and said so honestly rather than covering it; on the second attempt he threw the punch he had been taught, landed it, and then repaired it. He was genuinely angry afterwards — a register he does not otherwise use — and he defended the method to Priya in the same breath. *I'd like it noted that I'm still furious about it and it worked.*

*The announcement was his, done his way.* He told Priya first, in front of everyone, at ordinary volume, on the specific grounds that they should hear it from him rather than deduce it — and he had been looking forward to watching her recalculate for four days. Renata had already worked it out from the stretches.

*Alexander's counter-disclosure.* Asked where his own thinking sits, Alexander told him for the first time that he does not see himself staying on this crew, expects the command shift to break against Priya eventually, and then refused to use any of that as leverage: stay if you are happy with them, this is not my first crew, and — the load-bearing line — ***I will still be in your bed. That's not going to change any decision.*** For a man whose stated wound is being valued as equipment, that is the exact sentence that decouples the decision from the relationship, and he visibly came down an inch when he heard it.

*And the ordinary ending.* He complained about his hand, his shoulders, his legs and the word 'shot' for twenty-five minutes of driving, every complaint a brag wearing a coat, parked badly, and asked *yours or mine* at a red light. The answer was his, on the grounds that all of Alexander's things are already in it.

**Added 2026-08-03 (`EVT-000119`–`EVT-000121`) — the register inside a Gate, and the one where he draws his own line.**

*He is not gentle in there, and neither is Alexander with him.* No hedging in the briefing, no soft landing — Alexander told him what to do and let him do it, and Owen, for the first time, was not the one being protected. Coming out the other side of his first kill he looked at his own hands the way Alexander has never once seen him do outside of a wound closing; neither of them said anything about it, and Alexander put a weapon in his hand instead of a comment.

*He does not take the truth passively.* Handed the actual explanation he'd been owed for weeks — pocket gates, the whole private mechanism — he didn't flinch, didn't ask for more than he'd been given, and didn't simply accept whatever Alexander proposed doing with it either. He set a term of his own inside someone else's secret: a number he could defend, not the whole truth laundered wholesale. *That's the last one I do on instinct.* It is the first time in the relationship he has drawn a line rather than declined to ask one.

*Composure holds under real stakes now, and buckles somewhere new instead.* No red-from-the-collarbone moment in the Gate itself — the dry humor and the reflexive teasing simply weren't present, replaced by the same clinical focus he brings to a wound. It came back on the walk out, all at once, in the shape of *first weapon that's actually mine* said quietly enough that Alexander had to lean in to hear it.

**Added 2026-08-03 evening (`EVT-000122`–`EVT-000123`) — the register when the disclosure isn't about the secret at all.** Every previous impossible thing Owen has absorbed and set aside without comment. This one he didn't set aside — he went quiet in the different way, the one that isn't a joke arriving late but a joke simply not existing for this, and answered a dead parent's death by naming the street back once, softly, and pulling Alexander inside by the jacket rather than asking a single follow-up question. He amended his own 'stay as long as you want tonight' mid-sentence into no limit at all, catching his own qualifier the way Alexander catches his.

*Being fed is a bigger deal to him than being told he's loved would be.* Put to work setting the table 'decorative and handsome,' he took the joke and ran with it — an exaggerated bow, an offer to be 'purely decorative' — but the actual meal landed somewhere else entirely: *nobody's cooked for me after a clear in five years.* He said it plainly, no joke arriving after, then immediately proposed making it a standing thing rather than sit with how much he meant it.

*He indulges the ridiculous version of a real question.* Told the plan is Gates as dates, he built out the bit himself — the picnic table, the courses, the butter knife against an alpha — entirely delighted rather than performing tolerance, and only underneath it said the true thing: *I'd do it. Not the picnic table. But whatever the real version of that is — yeah.* He tests seriousness by first seeing if it survives being made fun of.

*He catches Alexander self-correcting now, and enjoys it more than the correction itself.* Watching Alexander start to say he needed to find a key and then stop, working back through his own memory in real time, Owen's read wasn't relief that a key existed — it was delight at watching him catch himself: *so it's not soon, it's whenever you want, and you almost talked yourself out of admitting that.*

**Added 2026-08-04 morning (`EVT-000136`) — a nickname arrives, and a debt gets named out loud for the first time.** 'Owwiiiie,' delivered with total gravity over two good-morning kisses, got the exact treatment 'mage' gets — flat refusal, immediate repetition to test how bad it actually is, no real objection underneath. New this morning: Alexander naming discomfort about something *he* did, unprompted, rather than Owen naming a boundary and Alexander accepting it. Owen's answer wasn't reassurance-as-deflection — he took the actual distinction seriously (trusted with a choice, not used) and gave it back cleanly rather than making a joke of it, which is new for a conversation this close to the wound it's about. The 'one km per complaint' rule is now an established bit: Owen will fight it every morning it's invoked and lose every time, the same shape as the pillow fights and the jurisdiction argument.

**Added 2026-08-05 morning (`EVT-000147`) — the word itself, finally, and neither of them planned it.** Over breakfast, mid-tease, Owen said Alexander was insufferable about cardio *and that he loved him anyway* — buried in the joke the way his true things always arrive, not built up to, not rehearsed. Alexander froze completely, visibly processing, for long enough that Owen noticed and asked if he was going to say something. He didn't answer with words: he crossed the diner floor mid-conversation and kissed him on Sheridan Road, saying it back plainly — *I love you too* — twice, laughing between them, entirely unbothered by the sidewalk audience. **This is the first time either of them has used the word, in any register, in the roughly two weeks this has been a relationship.** Owen confirmed it once more before they sat back down, dry as ever: 'I love you too, by the way. Since apparently we're just saying it constantly now.'\n\n**Added 2026-08-05 evening (`EVT-000170`) — the word 'marry' enters the record, unplanned, and neither of them retracts it.** Over dinner at his own kitchen table, half-hiding behind the moment ('seemed like the moment' — take-in, beer, a question about bacon), Owen said 'Marry me.' Called on it directly, he didn't fully walk it back: 'Here. Now... I reserve the right to bring it up again when I'm not running on four hours of sleep, though — figure it deserves better than my kitchen table.' Alexander's unhedged 'Yes. Eventually. Du'h' visibly landed somewhere the joke framing hadn't prepared him for — he went still, set down what he was holding, and answered honestly rather than covering: 'Okay. Yeah. Eventually,' testing the word, then, quieter, dropping the performance entirely: 'I wasn't actually — I mean I *was*, but I didn't think you'd—', cut off by the door buzzer before finishing the sentence. Neither has raised it again since; both know it's sitting there. 'I love you' repeated once more over the same meal, without any of the morning's nerves. Fell asleep on the couch afterward, missing Alexander's quiet text releasing the held Lakefront booking to Kesha Morrison rather than waking him to ask first — woke just enough to be walked to bed.\n\n**Added 2026-08-06, ~15:12-16:00 (`EVT-000186`) — the walk to Edgewater, and a Character First.** A kiss in his own stairwell before either of them had said a word about leaving, and Owen laughing into it rather than pulling back, catching himself with 'okay, now we can go' the way he catches himself every time Alexander does something he wasn't braced for. Walking hand in hand, told plainly that he was underestimating himself and had proven it that same afternoon, **Owen did not defuse it the way he defuses every serious moment three seconds after it lands** — no towel-auditing, no record-noting, no joke arriving late. He sat with it, restated the day's numbers back accurately from inside his own head rather than Alexander's, and said aloud that he didn't think anyone had ever believed in him quite that specifically before, and that he didn't know what to do with it but heard it anyway. This is new: every previous serious beat in this relationship has closed on a joke he supplies himself, on schedule, like clockwork. This one just sat there, unclosed, and he let it.\n\nHe also, for the first time, let a real professional insecurity run past the usual deflection — why he refuses a promotion he's been offered for a year, why he never opened his own clinic — and connected both, unprompted, back to the rocks: he doesn't trust himself as the last line alone, in a room with nobody behind him to catch what a pause costs. Named without being asked, and without the joke that usually follows a real thing landing.

**Added 2026-08-08, ~13:15 (`EVT-000208`) — the near-two-day silence, and Owen naming his own avoidance pattern as a Character First.** Owen went quiet after the walk to Edgewater — no text the promised evening, then a full day of nothing — not from doubt about the relationship but from sitting alone with Alexander's still-unanswered `OBJ-19` question (fighting under his own license) until one missed night became avoidance of the phone entirely. Alexander called after the D-Rank trial, worried and plain about it (*I can't do this, Owen*, clarified immediately as the silence rather than the relationship). Owen did not defend himself or deflect: he named the pattern outright — *the same four seconds, just stretched out over two days* — the exact fear he confessed at Nikitas about pausing when it matters, recognized here turning up in his own hands rather than at the rocks. Confirmed without hesitation that he wants to see Alexander, agreed to call the moment he's off shift, and closed the call still saying it — *I love you. Talk soon.* First time the rocks-fear has been named as something he is actively doing, in real time, rather than something that happened once years ago."
```

---

## Campaign-Local Figures — Sable & Kern (2026-07-31)

### ENT-000141 — Sable

Co-owner of Sable & Kern, a small two-partner harvest contractor posting its first job through the Windy City Hunters Coalition. Late thirties, weathered, brisk; runs the crew side of the business while Kern runs the numbers.

```yaml
id: ENT-000141
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, Coalition case table and Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
type: Character
subtype: contractor co-owner
scope: local
lifecycle: active
aliases:
  - name: "Sable"
    quality: current
canonical_state:
  location: "Halsted Depot site, Chicago (ENT-000087); departed by car after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Runs the crew and fieldwork side of Sable & Kern's harvest-hire operation; briefs and manages harvesters directly, works from a paper map rather than a tablet."
  appearance: "Late thirties, sun-weathered from real outdoor time, dark hair pulled back tight; ink-stained first knuckle. Sizes people up fast and briskly."
  portrait: "assets/portraits/Sable_ENT-000141.png"
  personality: "Brisk, no wasted motion, professionally direct. Doesn't do a long introduction before a job."
  situation: "Ran the Halsted Depot C-Rank harvest job (`EVT-000093`, `EVT-000095`), Sable & Kern's first Coalition posting. Confirmed Alexander's license, assigned the shared vein with Ruth, called the crew back at time, tallied the declared haul, and quoted the payout terms (10% off top, remaining four-way even split). Told Alexander she'd likely call him again."
```

### ENT-000142 — Kern

Co-owner of Sable & Kern; older than Sable, handles logistics, scale, and the numbers. Quiet, dryly practical.

```yaml
id: ENT-000142
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, Coalition case table and Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
type: Character
subtype: contractor co-owner
scope: local
lifecycle: active
aliases:
  - name: "Kern"
    quality: current
canonical_state:
  location: "Halsted Depot site, Chicago (ENT-000087); departed after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Handles logistics and the portable scale for declared hauls; opened and sealed the aperture from the gray box truck."
  appearance: "A decade or so older than Sable, glasses pushed up into thinning hair, works a battered calculator by hand."
  portrait: "assets/portraits/Kern_ENT-000142.png"
  personality: "Quiet, dryly practical — offered one piece of advice (bring water) and otherwise let Sable run the introductions."
  situation: "Worked the second assigned vein alongside Denny during the Halsted Depot job (`EVT-000095`); tallied the crew's declared crystal count on his portable scale at wrap-up."
```

### ENT-000143 — Ruth

Experienced harvester on the Sable & Kern crew; more C-Rank vein experience than the rest of the crew combined per Kesha Morrison's referral. Tested Alexander's technique on the shared first vein and vouched for him afterward.

```yaml
id: ENT-000143
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
type: Character
subtype: harvester
scope: local
lifecycle: active
aliases:
  - name: "Ruth"
    quality: current
canonical_state:
  location: "Halsted Depot site, Chicago (ENT-000087); departed after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Highly experienced C-Rank harvester, especially on heat-vein (Foundry-type) ground — reads a vein's own shifting resonance rather than waiting for it to settle, unlike cold-seam technique. Older than Alexander, unspecified further."
  appearance: "Older woman in worn coveralls, unhurried, watches her surroundings rather than her crewmates."
  portrait: "assets/portraits/Ruth_ENT-000143.png"
  personality: "Reserved, evaluative, sparing with approval — a short nod or an unremarked silence is her version of a compliment."
  situation: "Assigned the shared first vein alongside Alexander at the Halsted Depot job (`EVT-000095`); demonstrated heat-vein extraction technique, watched him adapt to it on one attempt (success), and told Sable afterward that she vouches for him — 'that's not nothing, she doesn't hand it out.'"
```

### ENT-000144 — Denny

Harvester on the Sable & Kern crew; younger, wiry, worked the second assigned vein alongside Kern.

```yaml
id: ENT-000144
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
type: Character
subtype: harvester
scope: local
lifecycle: active
aliases:
  - name: "Denny"
    quality: current
canonical_state:
  location: "Halsted Depot site, Chicago (ENT-000087); departed after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Harvester, unspecified specialty; worked the second vein alongside Kern."
  appearance: "Younger, wiry build; handled a coil of rope restlessly before the job began."
  portrait: "assets/portraits/Denny_ENT-000144.png"
  personality: "Distracted, easygoing — gave Alexander a quick nod at introductions and a distracted wave on parting."
  situation: "Worked the Halsted Depot job's second vein with Kern (`EVT-000095`); no further interaction with Alexander established."
```

### ENT-000145 — Sable & Kern

A small, two-partner harvest-hire contractor, its first job posted through the Windy City Hunters Coalition board. Distinct from the corporate-adjacent contractor Ada Reyes and Dale work for (`ENT-000134`, `ENT-000135`, `REL-000064`).

```yaml
id: ENT-000145
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000093
  game_date: "2026-07-31, named at the Coalition desk"
  real_date: "2026-07-26T02:05:57+02:00"
type: Institution
subtype: harvest-hire contractor
scope: local
lifecycle: active
aliases:
  - name: "Sable & Kern"
    quality: current
canonical_state:
  location: "Halsted Depot site, near the old rail cut, Chicago (ENT-000087); exact address unestablished"
  function: "Small two-partner harvest-hire outfit, posting confirmed Gate jobs through the Windy City Hunters Coalition board and taking a 10% coordination cut off the declared pool, remainder split evenly among the working crew."
  standing: "First-time Coalition poster; no prior track record with Alexander before the Halsted Depot job (`EVT-000093`, `EVT-000095`). Sable indicated she would likely post again and call on him."
```

---

## Campaign Relationships (continued)

### REL-000067 — Alexander's harvest-hire standing with Sable & Kern

```yaml
id: REL-000067
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000095
  game_date: "2026-07-31, Coalition desk and Halsted Depot"
  real_date: "2026-07-26T02:05:57+02:00"
endpoints:
  - ENT-000125
  - ENT-000145
type: harvest-hire
qualities: "Alexander's standing as a harvest-element hire for Sable & Kern, a small two-partner contractor, routed through the Windy City Hunters Coalition. Structurally similar to `REL-000064` (the corporate-adjacent contractor) but a distinct business relationship with no shared history."
state: "One job completed: the Halsted Depot C-Rank harvest job (2026-07-31, `EVT-000093`, `EVT-000095`) — 6 crystals formally declared to the crew pool (10 mined solo, 4 sold privately and undeclared, unknown to Sable, Kern, Ruth, or Denny), ≈$9,000 even-fourth share pending 1–2 business days. Ruth vouched for Alexander to Sable afterward; Sable indicated she would likely post again and call on him. No standing contract beyond a per-job basis."
history: "Formed 2026-07-31 when Kesha Morrison referred Alexander to Sable & Kern's first-time Coalition posting after he asked about immediate same-day work."
```

### REL-000068 — Alexander's pending recruitment overture from Ironline Guild

```yaml
id: REL-000068
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000138
  game_date: "2026-08-04, late morning, Red Line Corridor"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000146
type: recruitment-overture
qualities: "A pending, unaccepted recruitment relationship between Alexander and Ironline Guild (`ENT-000101`), conducted through recruiter Wade Bishop. Not a membership, contract, or standing obligation of any kind — Alexander has committed to nothing."
state: "Wade Bishop pitched Ironline's structure (steady D-Rank/E-Rank strike flow, an assigned crew, gear stipend) and was candid that guild affiliation does not lift the E-Rank card's contract-Rank ceiling (Profile Section 19.4). Alexander asked for proof before deciding: a D-Rank strike trial with a properly-Ranked crew, and a B-Rank harvest trial. Wade agreed to both — the D-Rank slot arrangable within the week, the B-Rank harvest lead needing a few days. No deadline, no commitment either direction."
history: "Formed 2026-08-04 when Wade Bishop approached Alexander unprompted at the Red Line Corridor, having heard favorable word from Ada Reyes and Dale Pruitt."
```

### REL-000069 — Alexander's fence contact with the pawnbroker

```yaml
id: REL-000069
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000139
  game_date: "2026-08-04, mid-morning, warehouse district"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000147
type: informal-fence
qualities: "An informal, untested black-market business relationship — Alexander's first real outlet for his unsellable private E-Rank core stash (Profile Section 12.2). Both parties are exposed to felony risk by the transaction; neither has any leverage over the other beyond ordinary discretion."
state: "**Upgraded 2026-08-05 (`EVT-000157`) from a one-off sale to a working supplier arrangement**, on Alexander's explicit proposal that trust is earned by doing rather than waiting. The pawnbroker's stated terms: a private handwritten tally marked rather than named so it points nowhere under a search; fair quotes; no questions past what he needs to move goods safely; consistency valued above any single windfall.

  **Second transaction:** ten E-Rank cores paid against a nine-core asking price, deliberately over, for three pieces of information (warehouse-district trust map, BGM's real flagging mechanics, Cicero's Quiet's true provenance). Private core stash 22 → 12. No cash moved this visit — Alexander explicitly chose knowledge and advantage over dollars.

  **Two open threads.** (1) The pawnbroker's own want-list is **C-Rank cores and above**, for a purpose he began to state and deliberately withheld; Alexander answered *not yet* and the reason remains unestablished. (2) He agreed to broker an introduction to an **unlicensed artificer** — real quality work, never asks an unnecessary question — as a consultation rather than a commission, explicitly putting his own name on Alexander. $200–300 cash for an hour, possibly waived; the artificer takes no gold or crystals; timing is the artificer's own. **Not yet made.**

  Historical: first transaction completed 2026-08-04 — one E-Rank core sold for $220 cash, below the $375 licensed anchor, reflecting his risk/movement discount on a first-time, no-track-record sale. He indicated then that the rate improves with demonstrated trust and repeat business. Also showed Alexander **Cicero's Quiet [C-Rank]** (a named artifact, confirmed genuine), quoted at $35,000; not purchased, and still sitting in his case."
history: "Formed 2026-08-04 when Alexander, window-shopping ahead of a 14:00 harvest job, entered the shop, asked about the locked case, and later tested the pawnbroker's willingness to buy unprovenanced goods. Deepened 2026-08-05 into an ongoing arrangement with an information trade and a pending artificer introduction (`EVT-000157`)."
```

### ENT-000148 — Denise Ferro

Harvest-crew lead running a Coalition-posted C-Rank job at a warehouse-district rail-corridor site; brisk, professional, unbothered by a solo freelancer working his own marked-off section. Checked Alexander onto the manifest, briefed him on the site's four-hour window, and processed his declared count without comment beyond confirming it.

```yaml
id: ENT-000148
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000140
  game_date: "2026-08-04, afternoon, rail-corridor harvest site"
  real_date: "2026-07-27"
type: Character
subtype: harvest-crew lead
scope: local
lifecycle: active
aliases:
  - name: "Denise Ferro"
    quality: current
relationships:
  - REL-000070
canonical_state:
  location: ENT-000087
  condition: "Healthy; hard hat and Coalition-branded harvest vest, clipboard and tablet manifest"
  capabilities: "Runs Coalition-posted harvest-labor crews; brisk and process-driven rather than personable. Not established as a combatant."
situation: "Ran the 2026-08-04 C-Rank harvest posting near the old rail corridor — two other freelancers plus Alexander, each with an individually marked section, standard 80/20 split (her cut off the top). Checked Alexander's twenty declared crystals against her own tally without discrepancy and closed the manifest on schedule at 18:00."
```

### REL-000070 — Alexander's harvest-hire standing with Denise Ferro's crew

```yaml
id: REL-000070
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000140
  game_date: "2026-08-04, afternoon, rail-corridor harvest site"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000148
type: harvest-hire
qualities: "A single-job, per-posting harvest-labor relationship, individually sectioned rather than a peer crew split — closer in kind to `REL-000064` and `REL-000067` than to a Gate crew membership."
state: "One completed C-Rank job (2026-08-04): twenty C-Rank crystals declared from Alexander's own marked section, standard 80/20 split, ≈$40,000 net pending Coalition processing (still processing as of 2026-08-05, under 24 hours old). No standing arrangement for future postings. **2026-08-05 follow-up (`EVT-000148`):** Alexander texted asking to be kept in mind for further work; Denise replied briskly that nothing is confirmed yet but two leads might firm up this week, and she'd ping him first if either does. **2026-08-05 in person (`EVT-000167`):** met by chance at the Coalition; her crew is between jobs, chasing paperwork on the last one, nothing to offer today, but she named him near the top of the list for a future job needing 'a hitter who doesn't need his hand held.'"
history: "Formed 2026-08-04 when Kesha Morrison booked Alexander onto Denise Ferro's Coalition-posted C-Rank harvest job near the old rail corridor."
```

---

## Referenced World-Layer Institutions

| Institution | Record | Relevance to Alexander |
|---|---|---|
| Windy City Hunters Coalition | `ENT-000102` (`worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md`), `REL-000062` | His registered freelancer affiliation; coordinated his placement on Tanya's crew. |
| BGM Region V | `ENT-000099` (`worlds/gatefall/institutions/bgm-region-v/250_INSTITUTION_LEDGER.md`) | His licensing authority; issued his E-Rank card, and filed his signed crew contract. |
| Horizon Guild, Ironline Guild | `ENT-000100`, `ENT-000101` | Chicago's two major guilds; neither has expressed interest in fielding him. Horizon also operates the outfitter (`ENT-000133`) named to him. |

---

## Campaign-Local Figures — Nikitas (2026-08-06)

### Voula

```yaml
id: ENT-000169
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000177
  game_date: "2026-08-06 ~11:50 -05:00"
  real_date: "2026-07-28"
type: Character
scope: campaign
lifecycle: active
aliases:
  - name: "Voula"
    quality: current
relationships: []
canonical_state:
  location: ENT-000087
  condition: "Healthy; working the counter at Nikitas (`ENT-000170`), Rogers Park"
  capabilities: "Unawakened civilian. Runs a Greek diner on Sheridan Road four blocks from the Loyola Park lakefront, and has for at least twelve years. Reads people fast and does not soften the reading."
  appearance: "Sixties, Greek, shorter than she carries herself as. Hair up, pencil behind the ear, apron. Wipes her hands on it before she touches anyone, and touches people readily — took Owen by both forearms on sight and held him at arm's length to check him over."
  personality: "Direct to the point of bluntness and entirely unembarrassed by feeling. Decides for people rather than asking them: orders their food, clears their table, refuses their money, hands a box of ketchup bottles to a customer mid-stride without breaking step. Registers a closed door without pushing on it — asked Alexander to introduce himself, got only a first name, noticed, and let it go."
  standing_toward_alexander: "Neutral-warm by association with Owen. Knows only his first name; he volunteered nothing else and she did not ask twice. Refused his money."
  known_associates: "**Kostas** — works the kitchen with her; wants the corner booth taken out for more covers and has been overruled indefinitely. **Andreas** — her sister's boy, died 2026 or thereabouts, memorialised on a sun-bleached laminated notice taped inside the front door which she has not taken down and does not intend to. She volunteered that it was *not the lake*, specifically and unprompted, because she could see Owen doing arithmetic about it on the pavement."
  history_with_owen: "Fed the Loyola Park lifeguard staff across the three summers Owen worked the beach, on an off-menu plate for four dollars, and stopped charging some of them entirely while lying about it. Recognised him instantly on the door bell after nine years, named him without hesitation, and corrected his 'nine years' to twelve — nine is when the *last* of the guards stopped coming, which is not the same date as when Owen did. She has kept the corner booth by the kitchen — the guard table — permanently unseated ever since, storing newspapers and ketchup on it, and cleared it for him in front of the whole room."
```

### Nikitas

```yaml
id: ENT-000170
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000177
  game_date: "2026-08-06 ~11:50 -05:00"
  real_date: "2026-07-28"
type: Place
scope: campaign
lifecycle: active
aliases:
  - name: "Nikitas"
    quality: current
relationships: []
canonical_state:
  location: ENT-000087
  condition: "Open and trading"
  description: "A narrow Greek diner mid-block on Sheridan Road in Rogers Park, four blocks north of the Loyola Park lakefront, wedged between a currency exchange and a shuttered storefront. Dull chrome trim, eight vinyl booths, a counter with six stools, a slow ceiling fan. No website. The sign over the door reads `NIK TAS` — the eta burnt out long before Owen worked the beach and never replaced. Run by Voula (`ENT-000169`) with Kostas on the griddle; a radio in the back plays Greek."
  significance: "The lifeguard staff's canteen across Owen Callahan's three summers on the beach, and the reason he has not walked through that door in nine years despite living four blocks away. The corner booth beside the kitchen door — furthest from the cold, close enough for Voula to hear them — is the guard table, and nobody sits there."
  known_to: "Owen Callahan (`ENT-000139`), intimately and historically. Alexander Pendragon (`ENT-000125`) as of 2026-08-06. Kesha Morrison named neither this place nor Voula to Alexander at any point."
```

### Marsh

An employee of Titan Secure (`ENT-000171`), reached by phone during Alexander's guard-job pretext call, 2026-08-06 (`EVT-000188`). Ordinary, brisk, and entirely uninterested beyond correcting the mismatched pretext and politely declining to name a client.

```yaml
id: ENT-000172
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000188
  game_date: "2026-08-06 ~16:45 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: security-company employee
scope: local
lifecycle: active
aliases:
  - name: "Reyes"
    quality: false-claim
  - name: "Marsh"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); reached by phone only, exact location unestablished"
  condition: "Healthy; voice only, never met in person"
  capabilities: "Ordinary employee of Titan Secure, handles phone inquiries. Not established as combat-active or otherwise notable."
  personality: "Bored-professional, helpful within limits, genuinely unbothered by a stranger's confused pretext. Holds a clean line on client confidentiality without needing to be pressed twice."
  situation: "Answered Alexander's call under his guard-job pretext (`EVT-000188`); corrected him that Titan Secure does access control, not staffing, volunteered the company's general client base (commercial, warehouses, car lots), and declined outright to name which client sits at the fenced warehouse (`ENT-000166`). Ended the call first. A second call from Alexander on any pretext is now materially harder."
```

### ENT-000173 — Reggie Calloway

Point man on Wade Bishop's borrowed four-hunter D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000173
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000201
  game_date: "2026-08-08 ~09:10 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: D-Rank hunter, point element
scope: local
lifecycle: active
aliases:
  - name: "Reggie Calloway"
    quality: current
canonical_state:
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Favoring a bruised shoulder taken crossing the elites' chokepoint; upright, no injury tier, untreated"
  capabilities: "D-Rank licensed hunter, point-element specialist — reads and takes doors first. Dry, understated manner under pressure."
  personality: "Direct, self-aware about his own bad habits (dry deflection under adrenaline); genuinely grateful rather than proud once corrected on it."
  situation: "Assigned point by Wade for the trial. Ate the first cluster's ambush unwarned — no lead had been called — and was pulled off it by Alexander's Exploit-Pattern-read Twin Fang kill before the creature could do worse. Snapped dry immediately after being freed; caught and corrected himself unprompted once Alexander called it out, thanking him plainly. Confirmed to Alexander, honestly, that Ironline crews normally have an assigned lead before entry and that this trial's lack of one was Wade's deliberate omission, not standard practice. Contributed to the declared loot pool from the ten kills (11 crystals, 3 cores, split under the standard leader's-cut convention once filed). No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000174 — Bhavna Iyer

Support gunner and sensor operator on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000174
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000201
  game_date: "2026-08-08 ~09:10 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: D-Rank hunter, ranged/sensor element
scope: local
lifecycle: active
aliases:
  - name: "Bhavna Iyer"
    quality: current
canonical_state:
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Untouched, no injury"
  capabilities: "D-Rank licensed hunter, ranged support and sensor-rig operator — first population read at Gate entry (twelve commons, two elites, boss, matching Alexander's independent Keen Sense confirmation)."
  personality: "Professional, unbothered by pressure, holds her ground plainly when criticized rather than deferring."
  situation: "Provided the opening sensor read and covered from range throughout, though columns denied her a clean line at the first cluster and she never fired a shot in the whole trial — the boss died to Alexander's ambush before she had an angle either time. Pushed back directly when Alexander criticized her for not firing sooner, correctly noting she'd had no clean shot through structural cover without risking her own crew. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000175 — Foster Nakashima

Perimeter/overwatch element on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000175
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000201
  game_date: "2026-08-08 ~09:10 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: D-Rank hunter, overwatch/perimeter element
scope: local
lifecycle: active
aliases:
  - name: "Foster Nakashima"
    quality: current
canonical_state:
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Untouched, no injury"
  capabilities: "D-Rank licensed hunter, perimeter awareness and rear-guard — a faded BGM sensor-training patch on his sleeve, self-stitched."
  personality: "Quiet, watchful, says little; the crew's steadiest presence under the chaos of the first ambush."
  situation: "Held the six the entire trial without incident; nothing ever came from behind. Drew one elite off its post with deliberate noise during the compressed second-cluster clear, letting it be isolated and killed apart from its partner. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000176 — Callie Dunmore

Floater/flex striker on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000176
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000201
  game_date: "2026-08-08 ~09:10 -05:00"
  real_date: "2026-07-29"
type: Character
subtype: D-Rank hunter, flex striker
scope: local
lifecycle: active
aliases:
  - name: "Callie Dunmore"
    quality: current
canonical_state:
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "A shallow forearm gash, self-treated/ignored, no injury tier"
  capabilities: "D-Rank licensed hunter, flex striker — goes wherever the fight opens rather than holding a fixed post."
  personality: "Restless, eager, openly impressed by reputation; the youngest-reading member of the borrowed crew."
  situation: "Closed on the ambushed Reggie fastest of the crew but arrived after Alexander had already resolved it. Backed Reggie on the left-side beast during the first cluster's clear without landing the finishing blow. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

**Correction, recorded for provenance:** this NPC was first narrated under the name "Reyes" before the Runtime caught the collision with the already-established `ENT-000134` Ada Reyes. No canon was written under the wrong name; the alias above records the false start for the transcript's sake only.

### ENT-000177 — Elias Ward

Seller at an unnamed surplus/pawn shop in Chicago's warehouse district. The shop remains incidental and has not been promoted to its own persistent place object.

```yaml
id: ENT-000177
canonical_record: REC-000077
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000216
  game_date: "2026-08-08 ~16:00 -05:00"
  real_date: "2026-07-30"
type: Character
subtype: surplus and pawn seller
scope: local
lifecycle: active
aliases:
  - name: "Elias Ward"
    quality: current
canonical_state:
  location: "an unnamed surplus/pawn shop in Chicago's warehouse district"
  condition: "No injury or impairment established."
  capabilities: "Seller of miscellaneous awakened-adjacent equipment; no Rank, faction, history, or technical specialty established."
  situation: "Sold Alexander Pendragon a Gate Direction Finder [E-Rank] with its calibration key and a six-month warranty for $800 cash. The device's origin and Elias's motives remain unestablished. He was not told about the System or the private Keen Sense result."
```
