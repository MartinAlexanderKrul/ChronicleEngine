# NPCs and Factions - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) tracking campaign-local figures and the protagonist's relationships to world-layer institutions and figures. References world canon; does not duplicate it.

---

## Record

```yaml
id: REC-000077
canonical_record: REC-000077
schema_version: "0.1.4"
status: active
provenance:
  source: EVT-000121
  game_date: "2026-08-03 16:00 -05:00"
  real_date: "2026-07-26T23:58:12+02:00"
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
  - REL-000062
  - REL-000063
  - REL-000064
  - REL-000065
  - REL-000066
  - REL-000067
```

---

## Campaign-Local Figures — Session 1

### ENT-000126 — Tanya Voss

Crew lead and striker; mid-30s, an experienced Gate clearer with three-plus clears behind her alongside Marcus. She recruited Alexander onto the Red Line Corridor contract after reading him as someone who would commit rather than fold — reputation is "what the desk thinks," she told him, and "fact is what happens in a Gate." Her signature ability is **Keen Edge**: her mana runs along any blade she grips, holding an edge that bites seams plain steel skids off.

```yaml
id: ENT-000126
canonical_record: REC-000077
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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

  **2026-08-03 (`EVT-000118`) — the first sponsor-exception posting she has ever written.** Owen Callahan (`ENT-000139`) rang the desk as **sponsor of record** for a two-person confirmed E-Rank contract. She spent the first minutes of the call establishing she had heard him correctly, asked him **twice** whether he knew what he was signing, and then processed it — two confirmed E postings on the board, both sat unbid over a week because the rate is insulting split eight ways. He took the **Cicero substation service tunnel** and declined the West Town basement job. Terms she wrote: sponsor of record Owen, no leader's share, 50/50, flat posted rate, loot declared at exit, both licences scanned before 11:00, mouth by 13:00. **She now knows Alexander and Owen are together** — Owen told her on the call, on Alexander's instruction; her answer was that it was about time and that the two of them had been insufferable on the phone for a week. She is the first person outside Priya Okafor's crew to know."
```

### ENT-000131 — Diane Halloran

Owner and operator of **Ironbound**, the independent gear shop on Milwaukee Avenue; mid-40s, built solid, moving with the bearing of someone who has spent time in Gates. She fitted Alexander for his first kit, steered him toward mobility over heavy plate given his krav maga background, and told him to come back after his first clear to talk over what worked. (Ironbound the establishment is represented at this stage by its owner Diane; it carries no separate institution entity.)

```yaml
id: ENT-000131
canonical_record: REC-000077
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
  standing: "Independent vendor named to Alexander by Kesha Morrison (ENT-000130) on 2026-07-23 as a custom option. Not visited; interior, staff, and pricing unestablished."
```

### ENT-000133 — Horizon's Outfitter

Horizon Guild's affiliated gear outfitter on Michigan Avenue, the third vendor on Kesha Morrison's list: pricier than the independents, but reliable stock and service with no custom-fitting delay. Alexander chose Ironbound over it for value and did not visit.

```yaml
id: ENT-000133
canonical_record: REC-000077
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
  situation: "Ran the Cicero Scar C-Rank harvest-element job on 2026-07-25 (`EVT-000063`): briefed Alexander, logged his 7 declared C-Rank crystals, and gave him an off-the-cuff (and, on reconsideration, too low) verbal payout estimate of $1,500–2,500 before heading back to her own paperwork. Vouched for him afterward to the contractor's other logistics staff, which is how Dale (`ENT-000135`) already knew his name at the next job."
```

### ENT-000135 — Dale Pruitt

Logistics coordinator for the same corporate-adjacent contractor, running a separate C-Rank harvest-hire operation. Stocky, tablet-carrying, same role as Ada Reyes on a different site.

```yaml
id: ENT-000135
canonical_record: REC-000077
schema_version: "0.1.4"
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
  situation: "Ran the 2026-07-26 C-Rank harvest-element job (confirmed Rank, archetype Frozen Gallery) that Alexander signed onto through Kesha Morrison, now complete (`EVT-000065`–`EVT-000068`). Already knew his name and reputation as a reliable cutter from Ada Reyes's word passed through the contractor. Assigned Alexander three vein sections across the job, pulled him off the third for a genuine (if unnecessary) mandatory break after misreading a performed exhaustion, and directly challenged him once over a suspiciously long stillness (the 50-crystal sale) — deflected, but it left Dale visibly more watchful for the rest of the job, catching a second, shorter hitch near the end without escalating it. At declaration, logged Alexander's 41 C-Rank crystals — the day's highest total by a wide margin — without further scrutiny, praised his work across both jobs, confirmed the contractor occasionally posts B-Rank harvest work when available, and told Alexander he'd be near the top of the list for one. Parted on genuinely warm terms. Unaware of any of the six private System-shop sales Alexander made across the job, or of the tactical study Alexander made of the strike line during his break."
```

### ENT-000136 — Priya Okafor

Striker and crew lead running her own undersubscribed five-hunter crew. Not related to BGM Region V's director Naomi Okafor (`ENT-000107`) as far as anyone at the Coalition desk has established. Met Alexander in person for the first time 2026-07-28 at staging.

```yaml
id: ENT-000136
canonical_record: REC-000077
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
  location: "Walking to his own apartment in Rogers Park with Alexander, evening of 2026-08-03 (~16:00), having just cleared the Cicero substation Gate together — his first real combat kills, his first weapon, and the truth about where Alexander's eleven unexplained cores came from. Earlier: Michigan Avenue, mid-morning of 2026-08-03 (~09:40), outside Horizon Outfitters with Alexander, en route to Cicero for a 13:00 Gate entry. Earlier still: his own apartment in Rogers Park, night of 2026-08-02 (~21:50), Alexander with him, having driven them both back from the Coalition trading field after the crew's first training session (`EVT-000116`). Earlier that afternoon: at his own apartment or nearby on errands (laundry, and a long-overdue stepladder owed to a downstairs neighbour since March), before meeting Alexander for the 18:00 session (`EVT-000111`). Both errands he owed are now discharged or in hand: he examined Renata's sensor rig on the morning of 2026-08-01 and is carrying a vendor enquiry for a rig of his own."
  condition: "Healthy. Took a light graze from a common beast in the Cicero Gate's corridor — his new gauntlet absorbed most of it, no injury tier. Sponsored his first Gate as sponsor of record, killed his first several beasts (unarmed, then with the boss-imprinted Quickknife given to him mid-clear), and is carrying the truth about Alexander's private instant dungeons for the first time. Historical: dragged out at dawn for Alexander's training regimen on the morning of 2026-07-30 (`EVT-000084`), he ran 2.4 km, quit, and then completed a scaled 30 push-ups, 30 sit-ups and 30 squats across five rounds rather than take the offered exit — **the first time in his life he has pushed his own body for anything.** His one spent per-clear touch — used to clear Alexander's Severe rib injury mid-boss-fight (`EVT-000080`) — belonged to that clear and does not carry forward. Spent the rest of the day fully off: breakfast, changing at both apartments, an afternoon on his own boat on the lake with Alexander, and a first kiss (`EVT-000087`). Dinner at his local noodle restaurant, then soaked through walking back from Alexander's apartment in heavy rain (`EVT-000088`). Properly dressed again, unhurried, visibly happy. On the morning of 2026-07-31 (`EVT-000089`) he was hauled out for a second consecutive dawn training session, negotiated his own load up from Alexander's opening demand to **4 km plus a scaled 30/30/30**, and completed it — his second day of ever having pushed his own body, and a voluntary increase on the first. Tired, sore, and pleased about it; he bought a coffee and sat on the break wall to watch the remaining six kilometres.\n\n**Two more sessions, and a genuine trend (`EVT-000108`, `EVT-000111`).** On 2026-08-01 he ran **5 km plus a scaled 40/40/40**, and on 2026-08-02 — having been told the run was optional and then walked past that exemption without being reminded of it — an **unmeasured long loop out past the harbor and back along shoreline neither of them had run before**, further than he has ever run in his life, plus a scaled **50/50/50**. Three consecutive voluntary increases. He worked out the exemption trick roughly two kilometres in, swore at length, and finished anyway. The man who had never once pushed his own body before 2026-07-30 has now done it four mornings running and is visibly, grudgingly proud of it. **Birthday established: 14 September** (`EVT-000108`)."
  capabilities: "Mender working type; **C-Rank** — confirmed directly by Priya (`EVT-000077`), the reason a waiver-tier crew could field a real mender at all, worth the cost to the rest of the split. Practical healing capacity, stated in his own words: roughly four to five people at ordinary injury severity per clear, or as few as two if treating something as severe as Alexander's earlier near-lethal hit — no hard cutoff, just diminishing effect the more he's pushed. Has not yet had to actually treat anyone this clear, despite Alexander taking a near-lethal hit — the daily-quest grant's full restore beat him to it. Owns a car — a two-year-old Honda Civic, nothing flashy — established for the first time on 2026-07-31 (`EVT-000103`) when he drove to pick Alexander up; the two of them had simply never had occasion for Alexander to learn this before, since he walks everywhere."
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

**The core declaration, and the truth about pocket gates.** Asked to help fold eleven of Alexander's cores into the Gate's report, Owen refused to lie to a licensed board blind — *where are eleven cores with no Gate attached to them actually from* — and got an honest answer: a private, solo-only form of Gate only Alexander can open, run off the books entirely. He connected it instantly to everything he'd already filed without asking: the dagger with no draw, the potion from nowhere, the killing spree joke that wasn't a joke. He didn't flinch from the new fact, but he drew his own line clearly — a plausible number he could actually stand behind, not the whole eleven — and called Kesha Morrison himself to correct the report live. *That's the last one I do on instinct. Next time, the math comes first.*"
```

---

## Campaign Relationships

### REL-000062 — Windy City Hunters Coalition (institutional affiliation)

Defined in `110_WORLD_LEDGER.md` (`REC-000075`). Alexander's freelancer registration with the Coalition; as of 2026-07-23 it is the channel through which he was placed on Tanya Voss's crew.

### REL-000063 — Alexander's membership in Tanya Voss's crew

```yaml
id: REL-000063
canonical_record: REC-000077
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
state: "**Contract complete — the Gate is cleared, and the crew is out.** Confirmed 2026-07-28 at staging; formation set (Priya front; Julian/Renata mid; Owen/Alexander rear); the crew entered together and walked out four hours eleven minutes later having cleared a Gate a full Rank above its posting. Alexander killed the fifth common beast solo, then the elite across four exchanges (`EVT-000076`), then — after Owen cleared the Severe injury the boss inflicted on him — the **boss itself** (`EVT-000080`), taking him from Level 3 to Level 7 across the clear. Seven common beasts were left alive and contained by the standing barrier, declined by crew decision, and went down with the instance.\n\nThe crew functioned as a genuine unit under Alexander's tactical direction from the elite onward: Priya ceded the call outright, Renata's reads were decisive at every point, Julian executed fire discipline exactly as ordered, and Owen held his healing in reserve on Alexander's own instruction and then spent a touch on him anyway. Alexander's rapport with Owen deepened markedly and specifically; his relations with the rest are respectful but cooler, and he overruled Julian coldly over the boss drop.\n\n**Resolved 2026-07-29 evening at the Coalition case table (`EVT-000083`).** Alexander delivered the agreed "no hero" account directly to Julian and Renata; both accepted it as consistent with what they'd personally lived through. The crystal/core pool (16 C-Rank crystals, 2 C-Rank cores, $52,500 declared value) split under standard terms — Priya's 10% plus an equal fifth, the rest split evenly five ways ($9,450 each, $14,700 to Priya). The Longshot [C-Rank] will be sold and its proceeds split the same way once appraised; no one on the crew uses a bow. Priya carries the physical crystals/cores to file the account and close the contract the morning of 2026-07-30.\n\n**By explicit ruling, tactical and strategic command in the field passes to Alexander going forward.** Priya proposed it herself, citing the precedent she'd already set inside the Ashfield Gate by ceding him the call outright during the boss fight. She keeps the contractual lead, her signature on every filing, and the 10% leader's share — the split above still reflects that. Julian and Renata both endorsed the arrangement without reservation.\n\n**First training session convened (2026-08-02, `EVT-000111`, `EVT-000112`).** The recurring schedule agreed on 2026-07-29 sat unscheduled for four days — *in 2–3 days* becoming almost a week — until Owen pressed it and Alexander fixed it on the spot: **the whole crew, 18:00 on 2026-08-02, at the trading field attached to the Coalition.** Priya (who had held the evening open for a week and said so), Julian (openly pleased at an excuse to use that venue), and Renata all confirmed within minutes. Renata separately relayed, through Owen, that she wants Alexander to stop being a stranger — everyone at the crew dinner produced a life story except him.\n\nAlexander prepared for it in writing rather than by improvising: a full afternoon at his own desk producing per-member tactical dossiers (`EVT-000112`) assessing strengths, failure points, and how each performs alone versus in formation. The plan he brought out of it puts Priya and Julian on a front line built around her aggression and his fire discipline, frees Renata to read rather than fight, and positions Owen exactly where his three operating terms require.\n\n**Delivered and exercised (2026-08-02, 18:00–21:00, `EVT-000116`).** The session ran: briefing from memory with the folder never opened, light unarmed sparring with each of the four in order of combat experience and an individual diagnosis given to each face-to-face, then two hours walking the formation at pace — positions physically occupied, fire lanes marked, and the **call form fixed as *who, what, where*, said aloud**, which took three passes to break a month of this crew's habit of silently continuing while hurt. Renata's deliberate-sabotage passes folded the formation twice and taught more than the three clean walks. The **spend-call rule went in last and Owen accepted it in front of the crew.** Every member left with a specific personal correction: Priya's late third beat, Julian's missing second answer, Renata's stop-don't-end reflex, and Owen's four-inch flinch. **Next session fixed for 2026-08-09, same field and time**, unless a job lands first; Julian's range work is on the agenda for it.\n\n**Standing crew orders.** Priya watches the board and the Coalition desk and calls Alexander when something worth having appears; **no Gate before at least one further training session.** She keeps the contractual lead and the signature; the field is his.\n\n**The relationship is now known to the crew.** Owen disclosed it to Priya, Julian, and Renata at the close of the session; Priya then asked, once and in the open, whether the spend-call rule survives either of them being the one bleeding, accepted Owen's punch as the answer to his half, and left Alexander's half explicitly untested. **The professional collision this relationship creates is now the crew's shared knowledge rather than a private problem between the two of them.**\n\n**Alexander's own position, stated privately for the first time (2026-08-02).** He does not expect to stay on this crew long-term. His judgement is that the command shift he has already caused will eventually collide with Priya — she ceded the field four days ago and meant it, and asked him to justify himself in front of the crew twenty minutes later, both of them decent acts, and the shape of something that gets less stable rather than more."
history: "Formed 2026-07-27 when Kesha Morrison, following up on her promised morning callback (`EVT-000069`), reported two open E-Rank–D-Rank waiver-tier crew slots; Alexander asked after Okafor's posting specifically and committed to it over the phone. Confirmed and activated in person 2026-07-28 (`EVT-000070`)."
```

### REL-000066 — Alexander and Owen

```yaml
id: REL-000066
canonical_record: REC-000077
schema_version: "0.1.4"
status: active
provenance:
  source: EVT-000081
  game_date: "2026-07-28 to 2026-07-29, from the bar through the following morning"
  real_date: "2026-07-25T10:27:06+02:00"
endpoints:
  - ENT-000125
  - ENT-000139
type: personal
qualities: "A personal and physical relationship between Alexander Pendragon (`ENT-000125`) and Owen (`ENT-000139`), formed across a single day and night following the Ashfield Gate clear. Distinct from and additional to their shared crew membership under `REL-000065`, which remains a separate professional tie through Priya Okafor's crew.\n\nIts defining asymmetry is knowledge. Owen has personally witnessed four things about Alexander that have no ordinary explanation (`EVT-000077`, `EVT-000080`) and has stated plainly that he is not confused by them and will not later invent an explanation. He has also **twice declined to ask** — once unprompted, and once by explicitly releasing Alexander from a promise to explain, on the grounds that a promise extracted after a near-death and a beer is not fair to the person making it. Alexander has disclosed only that something happened to him and that he does not understand it either, which is the closest he has come to naming the System to anyone. The System itself remains unknown to Owen and to every other character (Profile Section 14.4).\n\nThe relationship's other quality is that it is the first thing in the campaign Alexander has not calculated. He gave away a healing potion, refused thanks in favor of getting drunk together, paid a whole tab, and took an unconscious man home rather than leaving him — none of it advancing any objective he holds."
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

**The asymmetry closes a real notch, 2026-08-03 (`EVT-000119`–`EVT-000121`).** Fought a real Gate together for the first time, back to back, and Owen came out of it having killed for the first time in his life — not the thing he'd expected to feel the most that day. That thing turned out to be the core declaration: asked to help launder eleven unexplained cores into a report, he refused blind and got, in exchange, the truth about **pocket gates** — the first concrete mechanism behind everything he's spent weeks not asking about. He took it steadily, connected it to the dagger and the potion and the killing-spree joke without needing help, and then did something neither of them had scripted: he set his own boundary inside someone else's secret, insisting on a number he could actually defend rather than the whole truth Alexander offered him. He corrected the report himself, live, on the phone. **He is no longer only the person choosing not to ask; he is now, in a small and real way, complicit — and he chose the terms of that himself.**"
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

*Composure holds under real stakes now, and buckles somewhere new instead.* No red-from-the-collarbone moment in the Gate itself — the dry humor and the reflexive teasing simply weren't present, replaced by the same clinical focus he brings to a wound. It came back on the walk out, all at once, in the shape of *first weapon that's actually mine* said quietly enough that Alexander had to lean in to hear it."
```

---

## Campaign-Local Figures — Sable & Kern (2026-07-31)

### ENT-000141 — Sable

Co-owner of Sable & Kern, a small two-partner harvest contractor posting its first job through the Windy City Hunters Coalition. Late thirties, weathered, brisk; runs the crew side of the business while Kern runs the numbers.

```yaml
id: ENT-000141
canonical_record: REC-000077
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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
schema_version: "0.1.4"
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

---

## Referenced World-Layer Institutions

| Institution | Record | Relevance to Alexander |
|---|---|---|
| Windy City Hunters Coalition | `ENT-000102` (`worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md`), `REL-000062` | His registered freelancer affiliation; coordinated his placement on Tanya's crew. |
| BGM Region V | `ENT-000099` (`worlds/gatefall/institutions/bgm-region-v/250_INSTITUTION_LEDGER.md`) | His licensing authority; issued his E-Rank card, and filed his signed crew contract. |
| Horizon Guild, Ironline Guild | `ENT-000100`, `ENT-000101` | Chicago's two major guilds; neither has expressed interest in fielding him. Horizon also operates the outfitter (`ENT-000133`) named to him. |
