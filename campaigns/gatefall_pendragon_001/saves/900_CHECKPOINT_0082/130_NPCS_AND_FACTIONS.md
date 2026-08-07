# NPCs and Factions - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) tracking campaign-local figures and the protagonist's relationships to world-layer institutions and figures. References world canon; does not duplicate it.

---

## Record

```yaml
id: REC-000077
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000488
  game_date: "2026-08-18T21:20:00-05:00"
  real_date: "2026-08-07"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000194
  - ENT-000195
  - ENT-000196
  - ENT-000197
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
  - ENT-000181
  - ENT-000182
  - ENT-000183
  - ENT-000184
  - ENT-000185
  - ENT-000186
  - ENT-000187
  - ENT-000188
  - ENT-000189
  - REL-000062
  - REL-000063
  - REL-000064
  - REL-000065
  - REL-000066
  - REL-000067
  - REL-000068
  - REL-000069
  - REL-000070
  - REL-000087
  - REL-000088
  - REL-000089
  - REL-000090
  - REL-000091
  - REL-000092
  - REL-000093
  - ENT-000198
  - ENT-000199
  - ENT-000200
  - REL-000094
  - REL-000095
  - REL-000096
  - ENT-000204
  - ENT-000205
  - REL-000097
# Since Checkpoint 0065: EVT-000373, EVT-000374
# Since Checkpoint 0071: EVT-000408, EVT-000409, EVT-000410, EVT-000411
# Since Checkpoint 0072: EVT-000414, EVT-000415, EVT-000416, EVT-000417
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
| ~~Owen Callahan (`ENT-000139`)~~ | ~~Walt Adamik's (`ENT-000147`) existence, and the unlicensed-artificer introduction Walt is brokering~~ | 2026-08-11 | **Opened 2026-08-13 (`EVT-000334`).** Alexander told him everything, unprompted, the same evening — Walt, Marnie, the wallet, the dock, the CONSULT stranger, Loomis Street. Retired, not deleted. Historical leaks (`EVT-000271`) stand as recorded. |
| Owen Callahan (`ENT-000139`) | Ada Reyes and Dale Pruitt by name as sources vouching for Alexander's reputation | 2026-08-11 | Alexander naming them to him directly. Player-ruled during play; the Runtime had cited `EVT-000138`'s phrasing ("Owen... flagged Ada, Dale, a Horizon contact, and now Ironline") as grounding, but that phrasing is not itself a record of the specific names having been given to Owen — flagged for review, not treated as settled either way |
| Milo (`ENT-000168`) | Alexander's surname (Pendragon) | 2026-08-12 | Alexander telling him directly. Their only prior contact (2026-08-05) was a first-name exchange over training drills; nothing since gave Milo a channel to the surname |
| Owen Callahan (`ENT-000139`) | That Alexander's Health reached **0** in the B-Rank trial, and that Shrug Off's threshold absorption is what held it | 2026-08-14 | Alexander telling him. He was given *"closer than I liked… I was prepared for that"* instead (`EVT-000382`) and **openly flagged it as evasive**, deferring the question rather than dropping it — so this reopens the moment Alexander answers it, not on any other channel |
| ~~Owen Callahan (`ENT-000139`)~~ | ~~That Alexander entered the trial Gate alone and over Wade Bishop's stated objection~~ | ~~2026-08-14~~ | **STRUCK 2026-08-15 (`EVT-000389`), not dated.** The row was written on a misreading: it treated "I expected a mining job and wasn't told it would be live" as contradicting `EVT-000339`, when the trial *was* a harvest job, the harvest element is entitled to a secured strike line, and that line failed because the roster ran 4 against a legal 8. There was no misrepresentation for this row to close, so it is struck rather than retired |
| Owen Callahan (`ENT-000139`) | The Ironline lot, the forged eight-name roster, and the report Alexander is physically holding | 2026-08-14 | Alexander telling him. He knows only that there was a 22:00 meeting with Wade and that Wade was handing over the trial's loot (`EVT-000383`); location, venue, and the report were never mentioned |
| Kesha Morrison (`ENT-000130`) | Alexander's System level, XP, or any other Bearer-only System state | 2026-08-18 | **Nothing.** System state is perceptible to its Bearer alone (Profile §14.4); no NPC has a channel to it short of Alexander disclosing it in words, which has not happened |
| Kesha Morrison (`ENT-000130`) | The Priscilla Nakamura arrangement — its existence, her name, or anything about it | 2026-08-18 | Alexander telling her directly. Nobody has — not even Owen has been given her name (see the Owen/Nakamura row above) |

**On the two Owen rows.** Both come from one session and are the same failure on unrelated facts, which is the point: the habit is reaching for whatever detail is nearest to make a line sound informed, not mishandling one plot thread. Owen is close to Alexander and therefore the NPC most likely to attract it — he has the most reason to ask, and the least channel to the System.

---

## Campaign-Local Figures — Session 1

### ENT-000126 — Tanya Voss

Crew lead and striker; mid-30s, an experienced Gate clearer with three-plus clears behind her alongside Marcus. She recruited Alexander onto the Red Line Corridor contract after reading him as someone who would commit rather than fold — reputation is "what the desk thinks," she told him, and "fact is what happens in a Gate." Her signature ability is **Keen Edge**: her mana runs along any blade she grips, holding an edge that bites seams plain steel skids off.

```yaml
id: ENT-000126
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**D-Rank** — **Authored at the 1.41 follow-up from what canon already had her do.** She is an experienced licensed hunter and crew leader who led a five-hunter crew into the Red Line Corridor on an **unconfirmed-D assessment** — a job she accepted before its true E-Rank was known (`EVT-000059`) — and her kit is recorded as heavier than an E-Rank starter's. Taking a possible D as the lead of an under-strength-waiver crew (Section 9.4, absolute floor five) is D-Rank work. Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. Steady, competent, three-plus prior clears with the same partner, no casualty on the job we watched. Median D."
  pools: "**Maximum Health 100, maximum Mana 50** — the flat Section 6.1 table value at D-Rank. Section 5.2 tier costs, read from their own maximum: **Minor 5, Signature 12, Boss-tier 25**. Section 5.3 running-dry threshold **12**."
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

The crew's sensor: an awakened whose gift reads Gate interiors — layout, population density, and whether a dungeon is holding something its assessment missed. Quiet and analytical; he is Tanya Voss's established partner and reads the space on entry so the crew knows what it is actually walking into. **Disambiguation: not `ENT-000184` Marcus Whitlow**, the C-Rank striker recruited to Alexander's forming crew. Both are live and both answer to "Marcus" — this entry additionally carries the bare first name as a current alias, so an unqualified "Marcus" in narration is genuinely ambiguous. Use the surname.

```yaml
id: ENT-000127
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**E-Rank** — **Authored at the NPC audit from what canon already had him do**, on the same reasoning the 1.41 follow-up used for `ENT-000126`. Canon is explicit that he is **better at field triage-by-read than at combat**, and records him carrying **minimal gear and no visible weapon at all** — the inverse of the heavier-than-starter kit that resolved Tanya Voss to D. Section 9.4 sets **no legal combat minimum** at an E–D Gate, so nothing in the Red Line Corridor contract required him to be combat-rated, and the crew ran the **waiver floor of five** rather than a full strike element. An unarmed reader riding a waiver-floor crew is E-Rank work. Resolved by that Rank under Section 13.1; pools are supplied by Rank under the same section and are not separately authored here. **His `Deep Read` signature stands regardless** — Section 13.6 withholds an *authored* signature at E-Rank but expressly permits one to be named where the fiction needs it, and this crew's entire entry procedure depends on his."
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
schema_version: "0.1.6"
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
  rank: "**D-Rank** — **Authored at the NPC audit from what canon already had him do**, on the identical reasoning the 1.41 follow-up used for his sister `ENT-000126`. That ruling turned on kit: Tanya resolved to D because her gear is *recorded as heavier than an E-Rank starter's*. Elias's is recorded heavier still — a **reinforced plated jacket** and a **heavy reinforced steel warhammer**, carried as the crew's dedicated close-combat line-holder on a contract accepted as an **unconfirmed D** (`EVT-000059`). Granting Tanya D on kit and withholding it from the better-equipped striker beside her would be inconsistent, so it is not withheld. Two-plus years licensed argues for the **bottom** of D, not against D. Resolved by that Rank under Section 13.1; pools are supplied by Rank under the same section and are not separately authored here.\n\n  **Held at D and no higher.** Section 9.4 sets no legal combat minimum at an E–D Gate, the crew ran the **waiver floor of five** rather than a full strike element, and the Gate proved true **E-Rank** — nothing in the record reaches above D, and `Groundbreak` is resolved at D-Rank magnitude accordingly."
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
schema_version: "0.1.6"
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
  rank: "**E-Rank** — **not authored here but transcribed from resolved play.** The Red Line Corridor clear records her field-touch on Alexander explicitly as **`E-Rank baseline, +10` (Health 10→20)**, and Section 13.5 fixes a field-touch at one standard-hit baseline of the *mender's own Rank* — ¼ of Rank Health, which is 10 only at E-Rank's 40. Her Rank was therefore settled by a resolved outcome long before this audit; the field was simply never written down. Six months licensed at the time, consistent with it. Resolved by that Rank under Section 13.1; pools are supplied by Rank under the same section.\n\n  **What E-Rank means for her Section 13.5 effects, since they are magnitude-bearing:** three field-touches per Gate clear at **+10 Health each**, and the party's one-tier post-fight injury conversion applies only to injuries at **E-Rank or below**. This is already how the clear resolved — she spent two touches restoring Health and did not clear the severity of Alexander's Severe wound. **Her `Mending Touch` signature stands at E-Rank**: Section 13.6 withholds an *authored* signature at E-Rank but expressly permits one to be named where the fiction needs it, and a mender's whole function is that gift."
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
schema_version: "0.1.6"
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
  rank: "**Not authored — awakened status is not established.** Kesha Morrison manages or brokers Gate work without any record of being awakened, and Section 9.4's support tier plus Preston Vaughn (`ENT-000108`, a guild chief executive who is explicitly not awakened) both show that a senior operator in this trade need not be. Assigning a Rank here would be inventing canon, so none is: no Rank, no pools, no Section 6.1.2 variance, and Section 13.6 does not reach a non-hunter. **Flagged for a ruling** rather than filled in."
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

  **Crew-mechanics explainer, same visit.** Walked him through what a personal crew would and would not buy him: five C-Rank hunters standing beside him do not raise his own E-Rank card, so he still cannot sign a C-Rank combat contract himself — one of the five would need to be the crew's contractual sponsor of record, with Alexander entering as the underranked sixth member unless he re-tests his own card. Harvest work carries no such Rank ceiling at all; a crew's value there is contractor trust and negotiating leverage, not legal eligibility. Either way, someone still has to hold the site rights and the contract — a crew supplies labor and credibility, not a Gate. Closed by naming his live options plainly (harvest reputation, a crew of his own, freelancing through a guild without joining it, a higher-Rank sponsor) and refusing to call E-Rank work meaningless just because it pays poorly.

  **2026-08-10 morning (`EVT-000253`), texted by Owen directly.** Owen corrected his own earlier ask himself — not mining, something with real contact, properly assessed, nothing that lies about what it is. Kesha replied within the hour: she has **something**, not mining, and will call that evening with the actual terms.

  **2026-08-11 ~09:55 (`EVT-000273`), in person, the crew pitch.** Alexander and Owen pitched her directly on founding a C-Rank-floor crew, Owen as intended eventual field command. She confirmed the sponsor mechanics she'd already explained on 2026-08-08 and took it seriously specifically against the contrast with Ironline's D-Rank trial failure. Named **Reyna Castillo** (`ENT-000182`) as a real, currently-crewless C-Rank candidate on the spot rather than deferring, and agreed to reach out to her that afternoon. Refused to help poach anyone currently crewed — drew the line at people already between crews — and asked to be told any name Alexander hears in that category.

  **The callback delivered, 2026-08-11 afternoon (`EVT-000296`).** True to her word, reached Reyna that afternoon and texted the result: interested, but unwilling to commit without meeting Alexander and Owen in person first — 'I got burned trusting a plan I never saw. Not doing that again,' in Reyna's own words. Passed Alexander's number to Reyna directly rather than keep herself in the loop as an intermediary.

  **2026-08-18 ~16:30 (`EVT-000483`), in person, desk visit.** Alexander asked after mining work; her standing flag remains unfulfilled — nothing has posted since she set it on 2026-08-05. Asked to check the board for a low-stakes D-Rank job the new crew could run entirely as its own posting rather than joining someone else's, she found a genuinely fresh confirmed D-Rank Ashfield contract filed that morning, zero hunters signed, seven-day timer. Held it at Alexander's request with Owen named as sponsor of record, pending Owen's own confirmation call — **not yet received as of this visit's close.** Traded some light banter about whether she's keeping him from working; corrected mid-scene after asserting facts she has no channel to (his System level, the Nakamura arrangement) — see Closed Channels."
```

### ENT-000131 — Diane Halloran

Owner and operator of **Ironbound**, the independent gear shop on Milwaukee Avenue; mid-40s, built solid, moving with the bearing of someone who has spent time in Gates. She fitted Alexander for his first kit, steered him toward mobility over heavy plate given his krav maga background, and told him to come back after his first clear to talk over what worked. (Ironbound the establishment is represented at this stage by its owner Diane; it carries no separate institution entity.)

```yaml
id: ENT-000131
canonical_record: REC-000077
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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

Horizon Guild's affiliated gear outfitter on Michigan Avenue, the third vendor on Kesha Morrison's list: pricier than the independents, but reliable stock and service with no custom-fitting delay. Alexander passed on it for his starter kit in favor of Ironbound, but returned later and bought the Horizon Gale line there.

```yaml
id: ENT-000133
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000094
  game_date: "2026-07-23, named at the Coalition desk; visited later, EVT-000094"
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
  standing: "Affiliated with Horizon Guild (ENT-000100). Named to Alexander by Kesha Morrison (ENT-000130) on 2026-07-23 as the pricier, reliable option; he chose Ironbound for his starter kit. Later visited (`EVT-000094`) and bought the Horizon Gale Coif ($3,000) and Horizon Gale Gauntlets [C-Rank] ($12,500) there — reliable in-stock service over Ironbound's custom-fitting delay. Interior and staff engaged only briefly; no named contact or standing relationship with Horizon established by the visit. **Continuity correction, 2026-08-13:** this record previously read 'not visited,' contradicting the equipment provenance already on `100_CHARACTER_SHEET.md`; corrected to match the equipment record, which is authoritative for the purchase itself (F-009-class fix)."
```

### ENT-000140 — Vanguard Trade & Gear

A larger licensed hunter outfitter than Ironbound — a proper storefront with counter staff rather than a single owner-operator, on a commercial strip Alexander's 2026-07-29 running route happened to pass. Visited once, for a replacement resonance chisel.

```yaml
id: ENT-000140
canonical_record: REC-000077
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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

  **Ran the 2026-08-09 job (`EVT-000224`).** Read the harvest element (Alexander, Denny Osei `ENT-000179`, Marisol Ruiz `ENT-000180`) in alongside Tomas Alvarez's (`ENT-000178`) strike element, confirmed the site as a C-Rank Gate on standard harvest terms, and worked the manifest at the fence line afterward. Logged Denny's 11 and Marisol's 14 without comment; logged Alexander's declared 18 the same way, genuinely unaware it was well short of his actual 93-crystal haul. The Gate turned out exceptionally rich — an owner-ruled outlier consistent with the Frozen Gallery precedent — though her own $4,000-9,000 pre-job estimate landed almost exactly right for what each harvester was actually paid, since the support element's cut is a percentage split rather than a flat count. Told the group \"good work, all of you\" and closed the manifest; no complications, no injuries, job wrapped a little ahead of her outside estimate.

  **New slot confirmed, 2026-08-12 evening (`EVT-000312`).** Texted asking after work; came back with a real opening — **C-Rank harvest slot, 2026-08-15, standard terms same as Cicero Scar.** Accepted on the spot; staging details to follow closer to the date.

  **Timing grounded, 2026-08-13 (`EVT-000318`).** Consistent with her established pattern, the 8/15 job is a **09:00 morning start** — matching both her Cicero Scar and 2026-08-09 jobs, wrapping by early-to-mid afternoon on her past estimates.

  **Ran the 2026-08-15 job herself, at the Cicero Scar again (`EVT-000398`).** Confirmed C-Rank, Hive archetype. Briefed the harvest row same as always, logged Alexander's declared 12 without comment or suspicion — nothing about a dimensional inventory is visible to a coordinator with a tablet, and the earlier worry that she'd clocked his real output from a mid-morning walk-through was never grounded in anything she could have actually seen. Called the total to the row once every manifest closed: **$9,418.60** on Alexander's declared share, standard 1–2 business day processing. Told him it was solid work for a shallow-run vein and wished the crew a good rest of the day."
```

### ENT-000135 — Dale Pruitt

Logistics coordinator for the same corporate-adjacent contractor, running a separate C-Rank harvest-hire operation. Stocky, tablet-carrying, same role as Ada Reyes on a different site.

```yaml
id: ENT-000135
canonical_record: REC-000077
schema_version: "0.1.6"
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
  situation: "**The B-Rank harvest job ran and delivered, 2026-08-16 (`EVT-000415`).** Confirmed B-Rank, BGM-signed off the previous day, and Dale made a point of the staffing being noticed: legal minimum eight combat-rated, **nine on site**, strike captain plus eight. His site, his standard. Brought in **Marisela Kwan** (`ENT-000204`) and her independent crew because the job needed a real floor under it.\n\n  **He confirmed the standing arrangement is real rather than politeness** — first name he checks when a B-Rank posting clears — and, pushed on why such postings are rare, named the actual constraint without defensiveness: he competes with Ironline and Horizon for the same eight or nine B-Rank-and-up bodies and is **priced out most weeks**, not unaggressive. A C-Rank job he can staff out of the same twenty names every week; a B-Rank job happens when the timing lines up and a crew like Marisela's prefers cash-on-clear to a guild retainer.\n\n  Logged Alexander's declared **19 crystals** against Reston's 12 and filed the harvest share — **$60,677.42**, 20% of a ≈$495,000 declared clear, output-weighted — without scrutiny. **He does not know 45 further crystals never reached his tablet**, and nothing on this job drew the kind of watchfulness the Frozen Gallery once did.\n\n  **He has never seen Alexander fight**, on this job or any other. Alexander mined behind Marisela's line for the entire clear and drew no weapon; Dale's read of him remains entirely that of a reliable cutter who arrives early.\n\n  Ran the 2026-07-26 C-Rank harvest-element job (confirmed Rank, archetype Frozen Gallery) that Alexander signed onto through Kesha Morrison, now complete (`EVT-000065`–`EVT-000068`). Already knew his name and reputation as a reliable cutter from Ada Reyes's word passed through the contractor. Assigned Alexander three vein sections across the job, pulled him off the third for a genuine (if unnecessary) mandatory break after misreading a performed exhaustion, and directly challenged him once over a suspiciously long stillness (the 50-crystal sale) — deflected, but it left Dale visibly more watchful for the rest of the job, catching a second, shorter hitch near the end without escalating it. At declaration, logged Alexander's 41 C-Rank crystals — the day's highest total by a wide margin — without further scrutiny, praised his work across both jobs, confirmed the contractor occasionally posts B-Rank harvest work when available, and told Alexander he'd be near the top of the list for one. Parted on genuinely warm terms. Unaware of any of the six private System-shop sales Alexander made across the job, or of the tactical study Alexander made of the strike line during his break.

  **Followed up by text, 2026-08-06 evening (`EVT-000193`).** Alexander texted asking after the B-Rank lead he'd promised an answer on by end of day. Dale replied inside the window: the B-Rank job is real, but the contractor hasn't signed off with their own client yet — probably 5–7 days before it's actually postable. Put Alexander's name at the top of the list the moment it does. A second message, unprompted, noted he still owes Alexander a beer from Frozen Gallery. Alexander asked to make it sooner than the B-Rank job if anything smaller opens up in the meantime; Dale confirmed nothing E/D is currently moving under him, but agreed to text if that changes.

  **Text follow-up, 2026-08-11 ~11:10 (`EVT-000283`).** After over a week with nothing to report, real movement for the first time: the B-Rank mining slot's headcount is now being confirmed on his end, a real answer expected in a day or two. Still not yet postable.

  **Confirmed, 2026-08-12 evening (`EVT-000312`).** Pressed by text for an actual date rather than another 'soon.' Came back solid: real, confirmed, **B-Rank harvest job, 2026-08-16, 08:00, the same freight yards as Cicero.** Alexander accepted on the spot; Dale said he'd send the full brief — gear requirements, crew size — closer to the date."
```

### ENT-000178 — Tomas Alvarez

Strike captain running point on Ada Reyes's 2026-08-09 C-Rank harvest job. Lean, weathered, pump shotgun slung across his back.

```yaml
id: ENT-000178
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**C-Rank** — **Authored at the 1.41 follow-up from what canon already had him do.** He is the strike captain who clears and secures a **C-Rank** Gate's interior so the harvest element can work behind the line (`EVT-000224`). Section 9.4's legal minimum for a C-Rank Gate is four C-Rank-capable hunters; running its point element is C-Rank work by definition. Resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. He does this for a living, job after job, and calls the fall-back signal for everyone behind him."
  pools: "**Maximum Health 262, maximum Mana 131** — Section 6.1 table (250 / 125) × 1.05, floored. Section 5.2 tier costs, read from their own maximum: **Minor 13, Signature 32, Boss-tier 65**. Section 5.3 running-dry threshold **32**."
  signature_ability: "**Settled.** His mana reads whether a cleared space has actually gone quiet or is only between things — whether *secured* is still true. It is a working captain's gift rather than a spectacular one, and it is why the fall-back call is his to make and why the twenty-minute window warning on the 2026-08-09 job (`EVT-000224`) came when it did. A read only: it raises no barrier and holds no line for anybody, **does not trigger Section 13.5's warden effect** despite the line-securing language of his job description, and leaves his strikes as C-Rank standard hits."
  location: ENT-000087
  condition: "Healthy; combat-active"
  capabilities: "Runs the strike element on Ada Reyes's contractor jobs — clears and secures a Gate's interior so the harvest element can work behind the line, calls the fall-back signal."
  appearance: "Forties, Latino, lean and rope-muscled, weathered in the specific way of a man who has spent a decade indoors in places that are worse than outdoors. Black hair going grey and cropped without ceremony; a lined, narrow face; flat dark eyes that price a new hire in about two seconds and move on. Practical, unbranded C-Rank kit with the wear concentrated exactly where a point man's would be, and a pump shotgun slung across his back that he checks by touch without looking at it. A working strike captain rather than a showpiece, and visibly uninterested in being anything else."
  personality: "Assessing rather than dismissive on first meeting a new hire; brisk and businesslike on the job."
  situation: "Ran point on the 2026-08-09 C-Rank harvest job (`EVT-000224`), gave Alexander a reserved once-over on introduction, cleared the Gate's interior with his strike element without incident, and called the twenty-minute window warning that sent the harvest element back to the fence line. No injuries reported; job closed clean."
```

### ENT-000179 — Denny Osei

Harvest-element miner on Ada Reyes's 2026-08-09 C-Rank harvest job, alongside Alexander and Marisol Ruiz.

```yaml
id: ENT-000179
canonical_record: REC-000077
schema_version: "0.1.6"
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
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Denny Osei is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
  rank: "**E-Rank** — **Authored at the 1.41 follow-up.** An ordinary harvest-hire miner on the contractor's C-Rank jobs, explicitly not combat-active. Section 9.4 is direct about this tier: support crew may be any Rank far below the Gate's, and **most E- and D-Ranks make their living as miners and harvesters on higher-Rank clears** — which is exactly what Alexander does on the same job with an E-Rank card. Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. A solid, ordinary haul (11 C-Rank crystals) and nothing in the record that distinguishes him."
  pools: "**Maximum Health 40, maximum Mana 20** — the flat Section 6.1 table value at E-Rank. Section 5.2 tier costs, read from their own maximum: **Minor 2, Signature 5, Boss-tier 10**. Section 5.3 running-dry threshold **5**."
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Ordinary harvest-hire miner working the same contractor's C-Rank jobs as Alexander."
  appearance: "Thirties, Black, Ghanaian-American (the Osei name), of middling height and thickly built through the shoulders from years on a pick. Hair kept very short, a broad face that defaults to good humor, an easy gap-toothed grin he gives away cheaply. Harvest-hire kit rather than combat kit — heavy gloves, knee pads worn through, a dust-greyed jacket he clearly does not bother washing between jobs. Moves at the unhurried pace of a man paid by the shift and not the swing."
  personality: "Easy, unbothered, friendly toward another harvest hire on sight."
  situation: "Worked the 2026-08-09 C-Rank harvest job (`EVT-000224`) alongside Alexander and Marisol Ruiz; declared 11 C-Rank crystals to Ada's manifest, an ordinary solid haul. Paid $5,500 off the support element's declared-pool split."
```

### ENT-000180 — Marisol Ruiz

Harvest-element miner on Ada Reyes's 2026-08-09 C-Rank harvest job, alongside Alexander and Denny Osei.

```yaml
id: ENT-000180
canonical_record: REC-000077
schema_version: "0.1.6"
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
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Marisol Ruiz is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
  rank: "**E-Rank** — **Authored at the 1.41 follow-up.** An ordinary harvest-hire miner on the contractor's C-Rank jobs, explicitly not combat-active — the Section 9.4 support tier, the same footing Alexander works it on. Resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. She out-hauled the rest of the support element on 2026-08-09 (14 C-Rank crystals against Denny Osei's 11) and drew an approving nod from Ada Reyes for it. Endurance at the face is the whole of her characterisation."
  pools: "**Maximum Health 42, maximum Mana 21** — Section 6.1 table (40 / 20) × 1.05, floored. Section 5.2 tier costs, read from their own maximum: **Minor 2, Signature 5, Boss-tier 10**. Section 5.3 running-dry threshold **5**."
  location: ENT-000087
  condition: "Healthy; not established as combat-active"
  capabilities: "Ordinary harvest-hire miner working the same contractor's C-Rank jobs as Alexander."
  appearance: "Late twenties, Latina, small and wiry, with the forearms of someone who does this work for a living and the posture of someone who is good at it. Dark hair braided back tightly and shoved under a hard hat; quick brown eyes; a face that goes openly satisfied whenever a seam comes out clean and makes no attempt to hide it. Harvest kit assembled cheaply and kept in better order than her crewmates'. Checks her own haul twice before declaring it."
  personality: "A little pleased with her own results; easy nod toward another harvest hire on sight."
  situation: "Worked the 2026-08-09 C-Rank harvest job (`EVT-000224`) alongside Alexander and Denny Osei; declared 14 C-Rank crystals to Ada's manifest, drawing an approving nod from Ada. Paid $7,000 off the support element's declared-pool split."
```

### ENT-000136 — Priya Okafor

Striker and crew lead running her own undersubscribed five-hunter crew. Not related to BGM Region V's director Naomi Okafor (`ENT-000107`) as far as anyone at the Coalition desk has established. Met Alexander in person for the first time 2026-07-28 at staging.

```yaml
id: ENT-000136
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**D-Rank** — carded D at her Awakening and unmoved since (Section 2), resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Deliberate rather than a default: solid, workmanlike, nothing flashy is her entire characterisation and has been confirmed by direct observation. She is the median D on purpose."
  pools: "**Maximum Health 100, maximum Mana 50** — the flat Section 6.1 table value at D-Rank. Section 5.2 tier costs: **Minor 5, Signature 12, Boss-tier 25**. Section 5.3 running-dry threshold **12**."
  signature_ability: "**Follow-Through.** Her mana carries a committed strike past the point where the body would stop, so a blow that connects keeps driving through the guard behind it. Method and reach only (Section 13.6): her hits land as D-Rank standard hits and the signature never adds magnitude. **It is the same gift as her flaw** — the reason her weight travels past the end of her third beat, which Alexander diagnosed in front of her own crew (`EVT-000116`) and which she dated to age twenty-four. She has spent eight years being powered by a thing that does not brake. Triggers none of Section 13.5's three authored effects."
  location: ENT-000087
  condition: "Wounded and healing under professional treatment — thrown hard by the elite's lunge after a fumbled intercept (`EVT-000071`). Alexander's potion restored her Health enough to fight properly but left the wound's severity untouched (Profile Section 6.4). She had the side properly assessed at a clinic on the morning of 2026-07-29 (`EVT-000081`), was visibly slow but present through that evening's Coalition meeting, and left the crew dinner early to ice it (`EVT-000083`). Never treated by Owen, who spent his one used touch on Alexander instead. On the morning of 2026-07-30 she is filing the Ashfield report and carrying the crew's crystals and cores in to close the contract; her exact position that morning is not established beyond Chicago."
  capabilities: "Striker; **D-Rank**, and has been since her Awakening — Rank is fixed at measurement (Profile Section 2), so the card she carries now is the card she has always carried. Stated directly to Alexander (`EVT-000077`); the only above-E-Rank among the crew's combat element. Leads her own five-hunter crew. Solid, workmanlike reputation, nothing flashy — confirmed accurate by direct observation: competent, decisive, but not infallible. Approved Alexander's gear before entry and set his position (rear, paired with Owen, support role) based on Kesha's word about his read and his own self-description."
  appearance: "Late 30s, South Asian (the Priya name), solid and workmanlike — an athletic striker's build with nothing showy about it. Black hair in a tight, no-nonsense braid or bun; steady, level dark eyes; the small scars and worn gear of eight years in the trade. Practical reinforced combat kit, sensibly armored and sensibly maintained. Grounded and direct, quicker to own a mistake than to explain it away."
  portrait: "assets/portraits/Priya_Okafor_ENT-000136.png"
  personality: "Direct, practical, reads people's stated capabilities and works with them rather than around them. Took Alexander's honest self-assessment (support-leaning, analytical, dagger-and-krav-maga close combat) at face value and built the formation around it without argument. Owns a mistake plainly rather than deflecting it, and updates her read of someone fast when the evidence changes."
  background: "Boxed semi-competitively in her twenties before a knee injury and the awakening test landed the same year — 'God's way of telling me to hit things that hit back less predictably,' by her own account (`EVT-000083`). Has a partner at home, mentioned only briefly, and a garden she's disproportionately proud of, tomatoes specifically; genuinely bristles at any suggestion store-bought tomatoes are comparable."
  situation: "Led the crew into the Ashfield Gate on 2026-07-28. Personally engaged the first wave of common beasts cleanly. When the elite closed, attempted to intercept it on Alexander's called pattern-read (shoulder-drop lunge every third stride) and fumbled the timing badly — thrown hard into the ash, momentarily down while the elite broke past her toward the rear. Recovering, wounded, back in the fight, and watched Alexander finish the elite himself (`EVT-000076`) with visible recalculation of what he's actually worth.\n\nIn the aftermath (`EVT-000077`), took formal responsibility for the rear-pair formation gap when Alexander pointedly asked why no one came for him during his earlier near-death against the common beast — she hadn't seen it happen (mid-fight with the elite herself) and said so plainly, but owned the structural gap rather than deflecting to circumstance, and asked to be told in the future rather than finding out after. Confirmed crew ranks directly when asked: herself D-Rank, Julian and Renata both E-Rank, Owen C-Rank.\n\n**The boss fight and after (`EVT-000079`, `EVT-000080`).** Ceded the tactical call to Alexander outright — 'you've earned the call twice today' — while demanding a real plan, and raised the honest objection that her wound made her unreliable on the front line. Accepted Alexander's potion with visible surprise at his having carried it, and noted aloud that he had been carrying it the whole time without pressing further. Fought the boss properly throughout, striking on the rotation as designed and exploiting its overshoot. Sat down in the ash afterward and laughed and cried at once, unembarrassed and unremarked by her crew.\n\n**On reporting:** she raised the filing problem herself and drew the line cleanly — she refused falsification outright, since her signature goes on the assessment line, but accepted Alexander's proposal of *delay*. She proposed the third road she intends to take: file it **true**, as an accurate account of a Gate the board mis-posted, which makes it BGM's failure rather than the crew's. She will not sit on it beyond the agreed **2026-07-29 18:00** reconvene. Her regard for Alexander is now considerable and openly stated, though she has also seen him overrule a crewmate coldly and advise against prompt reporting.\n\n**The filing, agreed (`EVT-000081`, 2026-07-29).** Kesha Morrison called her: Region V's monitoring registered the Gate's closure and the Coalition has been asked when the clear report is coming — routine, not accusatory. Priya set the meeting for that evening and invited Alexander's thoughts beforehand rather than in front of the crew, and spent the morning at a clinic having her side properly assessed. On his call she **accepted the 'no hero' emphasis**, disclosing that she had spent two hours drafting honest sentences that all made her sound like a passenger on her own clear, recognized that objection as vanity, and had intended to file it anyway. Her limits are exact and stated: she will **not** write that Alexander was absent or did not fight, and she will answer any direct question from Region V honestly — if asked point-blank who killed the boss she will say all of us and believe it, but she will not lie, because she is bad at it and it would hurt him worse when it broke. She required that Julian and Renata hear the same thing in the same room from Alexander, so nobody holds a secret they did not agree to. She observed from eight years in the trade that attention from Region V is 'not a promotion, it's a process.'\n\n**The first training session (`EVT-000116`, 2026-08-02 evening).** Held the evening open for a week and said so without an edge. Sparred first and lost inside two seconds to a controlled takedown and pin she could not escape, and responded by demanding the diagnosis in front of her own crew rather than a rematch — *you saw something, say it.* Told that her weight travels past the end of her third beat while her guard is already dropping, she accepted it as the first thing anyone has told her about her own fighting in eight months that she did not already know and was choosing to ignore, dated the habit to age twenty-four, and spent the last half hour of the session drilling a stopped third beat and swearing at her own hips. Asked for the formation walked slowly next time, whole, feet on ground. Raised that the crew does not exist between jobs and asked outright whether it trains or works; accepted Alexander's standing order to watch the board and call him, with **at least one more training before the next Gate**, and said she would have argued for two. States she will read assessment confidence properly next time rather than believing the posted number.\n\n**On the relationship.** Owen told her, Julian, and Renata directly at the end of the session. She congratulated both of them plainly and then, as contract lead, asked the professional question once — whether the spend-call rule holds when it is Owen bleeding and when it is Alexander bleeding — and deliberately asked it on a lit training field rather than discovering the answer in a Gate. She took Owen's punch as an answer to Owen's half and said Alexander's half stays untested and unknowable until it happens, asking only that he has thought about it beforehand.\n\n**Told Owen is leaving, 2026-08-11 ~11:00 (`EVT-000291`), a diner on Devon — relayed secondhand through Owen, not yet a played scene from her own side.** Didn't yell. Went quiet, then asked whether it was already decided before he'd even sat down; he confirmed it was. Said she understood — genuinely, not performed — then told him plainly that he wasn't just leaving a crew, he was leaving the only one that ever made room for a mender in the first place. Asked him not to tell Julian or Renata before she does, that same evening; consistent with her established character (owns things directly rather than letting them leak sideways). By Owen's read, losing what the crew's own composition now can't function without — a C-Rank legal minimum requires him — is hitting her harder than losing Owen personally. **Do not narrate her own scene with Julian and Renata, or any further reaction from her, until actually played.**"
```

### ENT-000137 — Julian Boyd

Striker on Priya Okafor's crew; broad-shouldered, economical with words, carries a **ranked shotgun** (not a mundane firearm — confirmed by its effectiveness against monsters, `GTF-OVR-003`). Runs point when ranged work is called for.

```yaml
id: ENT-000137
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**E-Rank** — fixed at Awakening, confirmed by Priya (`EVT-000077`); resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). He knew the shotgun before he awakened and punching above his Rank is his established mode; a shallow well would contradict the man the crew actually fields."
  pools: "**Maximum Health 42, maximum Mana 21** — Section 6.1 table (40 / 20) × 1.05, floored. Section 5.2 tier costs: **Minor 2, Signature 5, Boss-tier 10**. Section 5.3 running-dry threshold **5**."
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Julian Boyd is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
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
schema_version: "0.1.6"
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
  rank: "**E-Rank** — fixed at Awakening, confirmed by Priya (`EVT-000077`); resolved by that Rank under Section 13.1."
  pool_variance: "**−5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). She is the crews read-first element rather than a combat one, and the thinnest body on the line; the shallower well is the cost of the role, not a slight."
  pools: "**Maximum Health 38, maximum Mana 19** — Section 6.1 table (40 / 20) × 0.95, floored. Section 5.2 tier costs: **Minor 1, Signature 4, Boss-tier 9**. Section 5.3 running-dry threshold **4**."
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Renata Marchetti is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
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

**2026-08-15, the balcony and the Crypt (`EVT-000399`-`EVT-000403`).** Woken with a kiss, a shared workout, an afternoon on the balcony where he named `OBJ-25`'s unkept term back to Alexander — then came along as backup mender/observer on the solo C-Rank instant dungeon that answered it, non-combatant throughout, his own evasion clearing the boss's one dangerous moment unaided. Watched the Level 21→22 crossing and mined the deposit alongside him. Full texture in `REL-000066`.

**At a glance — read this before narrating him.** Twenty-seven. **C-Rank licensed mender**, five years in the trade, staff at Edgewater Hospital in Chicago, lives in Rogers Park. Alexander Pendragon's partner since 2026-07-29 and, since 2026-08-04 (`EVT-000145`), **the only person alive who has been told the System by name**. As of 2026-08-10 evening he carries **three abilities** — his mending, Stone Skin, and now Flash Step (`EVT-000255`) — which is the first recorded instance in Gatefall of an awakened holding more than one, and nobody but Alexander knows it.

**Rank, and how to resolve him.** C-Rank, carded at his Awakening at twenty-two and unmoved since; resolved by that fixed Rank under Profile Section 13.1. **"Mender" names his signature effect (Section 13.5), never a combat penalty.** He cleared almost the whole Overgrown Temple instance alone on 2026-08-06 — eleven commons and both elites by his own hand, the boss held from 160 down to 15 Health across two exchanges, exactly one landed hit against him all afternoon. Narrate and resolve him as a genuinely capable C-Rank combatant who happens to heal, not as a medic improvising above his station.

**Pools — Health 275, Mana 137.** C-Rank table (250 / 125) at an authored **+10%** individual variance (Profile Section 6.1.2). Section 5.2 costs off *his own* maximum: **Minor 13, Signature 34, Boss-tier 68**; he runs dry below **34**. **His mender field-touch does not vary — it reads the flat table and restores 62.** The deeper well buys more touches, never a stronger one.

| Ability | Rank | Effect | Cost |
|---|---|---|---|
| **Mend** — his Awakening gift, his signature | C-Rank | Treatment touch, **62** per touch, three per Gate clear; plus one post-fight injury tier down per party member per clear (Section 13.5). Cleared a Severe injury outright (`EVT-000080`) | ≈4–5 ordinary-severity patients per clear in his own words, as few as 2 for something severe |
| **Stone Skin** — consumed rune, 2026-08-06 (`EVT-000178`) | D-Rank | 30% physical damage reduction while sustained; ends when it lapses or is dropped. **Once per dangerous scene** (Section 13.6) — no mastery track, no counter, no progression | **Signature tier, 34** — drawn from **the same well as his mending**, so every activation is a person he cannot put back together |
| **Flash Step** — consumed rune, 2026-08-10 (`EVT-000255`) | D-Rank | Close or break line-of-sight distance instantly once, granting +1 modifier step to the immediate follow-up action. **Once per dangerous scene** (Section 13.6) — no mastery track, no counter, no progression | **Minor tier, 13** — the same well as his mending and Stone Skin |

**The well.** One capacity feeds both. It refills overnight or across a day, and **a System Mana potion restores it in full and instantly** (`EVT-000180`) — the only known way around the hardest constraint in his profession. Its *size* is fixed at his Awakening and cannot grow; that is the standing problem of `OBJ-18`, and Alexander has promised to solve it anyway.

**His week — a fixed rota. Do not improvise his availability; read it here.**

| Day | |
|---|---|
| **Monday** | off |
| **Tuesday** | off |
| **Wednesday** | **Edgewater, 08:00–20:00** |
| **Thursday** | **Edgewater, 08:00–20:00** |
| **Friday** | **Edgewater, 08:00–20:00** |
| **Saturday** | off |
| **Sunday** | off |

Three twelve-hour shifts, always the same three days. **He does not work weekends** except as rare emergency or short-staffed cover, and he is never rostered a Friday night — so a night shift running into a Saturday cannot occur.

- **The 2026-08-08/09 weekend was exactly that exception.** Saturday plus a Sunday, both outside his pattern, which is why he was given **Monday 2026-08-10** off in return. **Monday is earned by working the weekend at all, not by the hours** — the Sunday itself was a short one.
- **The Sunday shift ran 08:00–16:30, eight and a half hours** — settled by owner ruling against three canon anchors that leave no other reading. He ran the 06:00–07:50 lakefront regimen with Alexander that morning (`EVT-000218`), which forecloses any earlier start; `EVT-000218` states the shift began at **08:00**; and he came off it, texted, and reached Alexander's door by **~16:50** (`EVT-000239`, `EVT-000241`), which forecloses a later finish. The "eleven-hour" phrasing that stood in four ledgers was arithmetically impossible against all three and is corrected. What made the day rough is unchanged and was never the length: a patient coded in bay three at eleven and ate the whole of it.
- **Thursday 2026-08-06's 16:00 start** was a swapped late shift, recorded as a one-off against the fixed 08:00.
- **His Gate work fits the four days off.** The established 2–3 clears a month — the **Bridgeport crew** as his regular, who call whenever they can afford him and apologise when they can't — sit comfortably on Mondays, Tuesdays and weekends. **Two Bridgeport clears a month fit without touching the rota.**

**A shift spends the well.** A full twelve hours at Edgewater draws most of his capacity, and it returns overnight. So a Gate on **Saturday morning after Friday's shift** finds him at partial capacity, while **Monday, Tuesday, or a Saturday off a rest day** finds him full. That is the scheduling question behind `OBJ-19` — not whether he is free, but whether he is *full* — and it is the practical reason a System Mana potion in Alexander's pocket is worth what it is worth.

**Gear — all of it his own property.**

| Item | Rank | Effect | Source |
|---|---|---|---|
| Horizon Bastion Gauntlets | C-Rank | 8% physical reduction | Bought for him by Alexander, $18,500 the set (`EVT-000118`) |
| Horizon Bastion Torso | D-Rank | 5% physical reduction | as above |
| Horizon Bastion Boots | D-Rank | 5% physical reduction | as above |
| Quickknife, Boss-Imprinted | E-Rank | Weapon power 2, armed strike ×0.75, dual-wieldable; Echo — once per scene, +1 modifier step on a Strength action to break, shove, or resist forced movement | The Cicero alpha's drop, given to him on the spot (`EVT-000121`) — **his first weapon** |

Total ≈**18% physical reduction**. He carries no Stat sheet (Section 11.5), so gear grants him reduction and build quality only. Also his: a compact field kit, two lesser *licensed* restoratives (world-market alchemy, not System stock), tape — bought with his own money in protest at Alexander overriding their cost split — and **one Lesser Healing Potion of System origin**, his to spend on anyone he judges needs it, with one absolute line: **never a mana potion, to anyone, ever** (`EVT-000186`).

**Where he stands with Alexander (`REL-000066`).** Together since the night of the Ashfield clear. First mutual *I love you* on 2026-08-05; *Marry me*, half a joke he did not hide behind, on 2026-08-05 evening; on 2026-08-10 he was told *I love you* as the first words of the day and, for the first time since they met, **his deflecting joke failed to arrive** — he answered plainly and cried about it. He gave Alexander a drawer, a shelf and a cut key inside the first week and has had nothing come back the other way. They are looking for a flat together: the **Rogers Park two-bedroom**, chosen in principle, seen from the pavement, **never entered**.

**The one thing to get right about him.** Five years of being the useful one — people are lovely to him until the last wound closes, at which point he is equipment until the next posting. He refuses on principle to become **a rate**: it is why he has never asked Priya for a premium, and why he insisted on naming a rent share he will actually feel. Underneath that is the pause on the rocks (`EVT-000177`) — one to three seconds in which he did not go in, which worked, which nobody reviewed, and which he has never been able to grade. His fear is not failing to arrive. It is pausing again, getting away with it again, and never knowing.

**Updated 2026-08-11 (`EVT-000271`).** He **has** agreed to leave Priya Okafor's crew and found a new one with Alexander (`OBJ-12`, resolved) — but **has not yet told Priya, Julian, or Renata.** Do not narrate that conversation as having happened until it is actually played. He has still **not** agreed to become a permanent off-books Gate-goer beyond the crew he's just agreed to help build.

```yaml
id: ENT-000139
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**C-Rank** — fixed at his Awakening at twenty-two, resolved by that Rank under Section 13.1. Confirmed directly by Priya Okafor (`EVT-000077`)."
  pool_variance: "**+10%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Permanent and never rerolled. Deliberate: his mending capacity is repeatedly established as genuinely deep for his Rank — a real mender worth the whole cost to a waiver-tier crew, four to five ordinary patients per clear — and the gift outran the body it landed in."
  pools: "**Maximum Health 275, maximum Mana 137** — Section 6.1 table (250 / 125) × 1.10, floored. Section 5.2 tier costs, read from *his own* maximum: **Minor 13, Signature 34, Boss-tier 68**. Section 5.3 running-dry threshold **34** (25% of 137); below it he takes −1 modifier step on all actions until he recovers above it. **The one number that does not vary:** Section 13.5s mender field-touch reads the **flat** table and restores **62** (¼ of 250), not 68 — the deeper well buys him more touches, never a stronger one."
  learned_techniques: "**Stone Skin [D-Rank]** — 30% physical damage reduction while sustained, ending when it lapses or is dropped. This is the authored technique effect at its Rank (Section 7.3), *not* a mastery rung: Section 13.6 gives an NPC learned technique no mastery track, no use counter, and no progression, so the earlier Novice-mastery label was wrong and is retired. Learned by consuming an unbound-awakened rune (`EVT-000178`); effective Rank is min(teaching Rank, fixed Rank) = D. **Usable once per dangerous scene** (Section 13.6). Cost from adoption forward is a Section 5.2 tier of his own maximum — read **Signature, 34**, since a once-per-scene sustained defence is not the used-freely-and-repeatedly of the Minor tier. The narrated two-thirds cost at `EVT-000180` predates Profile 1.32s adoption and is not restated.

  **Flash Step [D-Rank]** — close or break line-of-sight distance instantly once, granting +1 modifier step to the immediate follow-up action. Learned 2026-08-10 (`EVT-000255`) by consuming the second unbound-awakened rune Alexander has given him — the one banked since `EVT-000142`, unconsumable by Alexander himself because he already knows Flash Step above this rune's D-Rank. Given and eaten on Owen's own boat, mid-conversation, with none of the street-corner haste of the first one. Effective Rank min(teaching Rank, fixed Rank) = D. **Usable once per dangerous scene** (Section 13.6), Minor tier (13) off the same well as his mending and Stone Skin. Not yet activated in play. Alexander framed it to him explicitly as safety rather than power — the thing that lets a mender who is always standing where the wound is get *away* from that position, or reach one faster, rather than a fighting tool — and Owen accepted it on exactly those terms.

  **Mana Bolt [C-Rank]** — a ranged mana bolt, no distance limit within line of sight; Section 13.6 gives no mastery track, so this is the flat technique effect rather than a Bearer's Intelligence-scaled version. Learned 2026-08-16 evening (`EVT-000434`) from the second Crypt instant dungeon's boss-drop rune — `unbound-awakened` this time rather than `bearer-only`, so it was his to take. Effective Rank min(teaching Rank C, fixed Rank C) = C, the first technique he's learned at his own full Rank rather than a Rank below it. Offered outright by Alexander rather than assumed; Owen weighed the same well-capacity cost that already governs Stone Skin and Flash Step before accepting. **His first ranged option, and his fourth ability off one C-Rank Mana pool** — tested once at low power on the way out, landed clean. Drawn on for real the same evening, hunting the instance's remaining commons alongside Alexander: several landed hits, one clean natural-critical kill, one natural-critical-failure fumble he blamed on the rune rather than himself."
  equipment: "Horizon Bastion Gauntlets [C-Rank] 8%, Horizon Bastion Torso [D-Rank] 5%, Horizon Bastion Boots [D-Rank] 5% — ≈**18% total physical reduction**. **Longsword [C-Rank]** — given outright 2026-08-16 (`EVT-000416`): weapon power 7, armed strike ×0.85, Predator Boss Imprint, Edge Echo (once/scene, +1 step on one close attack against an already-injured target). **His primary weapon**, blooded the same afternoon across a full D-Rank clear. Boss-Imprinted Quickknife [E-Rank] (power 2, ×0.75, dual-wieldable; Echo — once/scene, +1 step on a Strength action to break, shove, or resist forced movement) **retained but displaced.** Section 11.5 gives him no Stat sheet, so the Longsword's Strength and Agility lines grant him nothing — power and chassis are the whole gain, derivation in `120_INVENTORY_AND_OWNERSHIP.md`."
  signature_ability: "**His mending** — the healing touch he woke with at twenty-two, and the reason mender names him. Triggers both of Section 13.5s mender effects for any party he is in: three field-touches per Gate clear at 62 each, and one post-fight injury tier down per member per clear for injuries at C-Rank or below."
  location: "**On his boat, afternoon 2026-08-18** (`EVT-000472`) — split off from Alexander after the freight-yard goodbye to work on the engine, as planned. **He is off shift Tuesday through Wednesday** — his Edgewater rotation resumes Wednesday. Prior location, superseded: **Downtown Chicago, late morning 2026-08-17, picking a lunch place** (`EVT-000445`) — separated from Alexander by agreement rather than circumstance for the first time in three days: Alexander went to Walt Adamik's shop in the warehouse district, Owen went to find somewhere with, in his own words, actual chairs. They meet for lunch inside the hour. **He is off shift until Wednesday** — his Edgewater day rotation ended Friday — so the whole of Monday is his, up to the 18:00 crew training at the freight yard, which he is attending. Prior location, superseded: **just outside the second Crypt instant dungeon, 2026-08-16 evening**, wherever that key deposited them on exit — Rogers Park area, walking distance from home. Fought two full C-Rank Crypt instant dungeons back to back with Alexander (`EVT-000428`-`EVT-000429` the first, `EVT-000431`-`EVT-000433` the second), on his own initiative this time rather than as backup mender; declined Alexander's own self-Mend between dungeons (`EVT-000430`) on the licensing distinction he's drawn before. Prior location, superseded: at the Rogers Park apartment, 06:00 on Saturday 2026-08-15 (`EVT-000386`), asleep or nearly, with Alexander beside him and the daily quest just issued. Before that, at Alexander's apartment, evening of 2026-08-11, helping pack for the move, having called Priya from the Coalition desk that morning (`EVT-000278`) to arrange telling her in person."
  condition: "**Health 275/275, full, unhurt** — healed by seven of Alexander's Mend casts at `EVT-000472` after taking a real hit in the first Frozen Gallery instant dungeon this span (`EVT-000469`-`EVT-000471`): a common's hit in the ambush chamber (275→247), then the Frozen Gallery boss's retaliation landing on him after his own fumble on the ice floor (247→145 by the reconciled trace). His first real combat as a fighter rather than backup mender against a live ambush pack, blooding the Longsword for real; two personal fumbles (both natural 1s) on the ice, neither costing more than pride. Prior condition, superseded: **Winded, genuinely tired for the first time all day, unhurt.** Fought both Crypt instant dungeons directly — real kills with the Longsword, not backup — and cast Mana Bolt for the first time on the way out. His own well (mending + Stone Skin + Flash Step + now Mana Bolt, all one shared C-Rank Mana pool) took real draws across both dungeons for the first time; not tracked to the exact point but visibly dipped by his own account ('a lot of walls to shoot through'). No injury tier — nothing landed on him either fight. Earlier same day, 2026-08-16: cleared nine commons, both elites, and a D-Rank boss solo across the collapsed rail cutting Gate (`EVT-000264`-`EVT-000265`) while Alexander held support-only — his second confirmed sponsored job (`OBJ-19`) and by a wide margin his most capable single-session performance to date: one natural critical fumble punished by nothing (the guardian's own counter missed), two partial-success hits, and a natural critical kill on the boss. Told Alexander directly that this one 'didn't feel like luck' the way Cicero did. Slept the night of 2026-08-09 at Alexander's apartment, was carried from the couch to the bed without waking (`EVT-000243`), and ran his own scaled numbers on the 2026-08-10 lakefront route rather than the full regimen, because Alexander declined the instructor role for the day.\n\n**Physical trajectory.** Before 2026-07-30 he had never once pushed his own body for anything — the build of a man whose gift meant he never had to become a fighter. Since then: 2.4 km and a scaled 30/30/30 on the first morning (quit the run, refused the offered exit on the calisthenics), then 4 km, then 5 km with 40/40/40, then an unmeasured long loop past the harbour with 50/50/50 — four consecutive voluntary increases, each larger than the last, one of them after he had worked out he was exempt and swore about it and went anyway. He now runs with Alexander as ordinary routine and is grudgingly proud of it."
  capabilities: "**C-Rank, fixed at his Awakening at twenty-two.** Resolved by that fixed Rank under Profile Section 13.1; **mender** names the signature effect his healing touch carries (Section 13.5) and is never a combat penalty relative to his own Rank. Confirmed directly by Priya Okafor (`EVT-000077`) — the reason a waiver-tier crew could field a real mender at all.\n\n  **Ability 1 — Mend, his Awakening gift, C-Rank.** A treatment touch, resolved under Section 6.3; its first exercise in this world cleared Alexander's Severe rib injury mid-boss-fight (`EVT-000080`). Practical capacity in his own words: roughly four to five people at ordinary injury severity per clear, or as few as two if treating something as severe as a near-lethal hit — no hard cutoff, just diminishing effect the more he is pushed.\n\n  **Ability 2 — Stone Skin [D-Rank]: 30% physical damage reduction while sustained, ending when it lapses or is dropped.** (The authored technique effect at its Rank, not a mastery rung — Section 13.6 gives an NPC learned technique no mastery track; see `learned_techniques`.) Learned 2026-08-06 (`EVT-000178`) by consuming the unbound-awakened rune Alexander gave him outside his own building — the boss drop from the 2026-08-05 Shattered City instant dungeon (`EVT-000152`). Settlement under Section 7.1: eligible by binding, technique unknown to him, learned Rank `min(teaching_rank, recipient fixed Rank)` — the rune teaches at Stone Skin's native D-Rank floor against his C-Rank, so D-Rank. There was no window, notification, or sensation: he perceives no System (Section 14.4) and simply knows how to do it, the way he knows the other one. Used twice — sustained through the elite at `EVT-000180` at a cost of roughly two-thirds of his capacity, and raised before contact against the Overgrown Temple boss at `EVT-000183`, where it took the worst of a driving shoulder and held the damage to 12.\n\n  **It draws on the same well his mending draws from.** He worked that out himself in a car park before consuming the rune, named it as the choice between not bleeding and a crewmate not bleeding, and consumed it anyway. Both uses have cost him mending he would otherwise have had for other people, exactly as he predicted.\n\n  **This is the first recorded instance in Gatefall of an awakened acquiring a second ability.** His stated understanding from BGM intake at twenty-two is that a gift is fixed and singular for life and that nobody has ever received another — Character Knowledge, unverified against any institution, and now contradicted in his own body. **Nobody outside Alexander knows.** It is a standing exposure thread (Section 19): a mender who stops taking damage is exactly what Renata reads for, and the cover story agreed between them is the $18,500 of Horizon gear he had never worn before.\n\n  **The well, and its one known workaround.** Capacity returns overnight or across a day, and he states this is the single hard constraint on the entire profession. A **System Mana potion restores it in full and instantly** (`EVT-000180`) — Alexander sold his whole crystal stock mid-clear to buy one, handed it over with a single word, and Owen drank it without asking. His unanswered question afterward: *how many of those can you make?* Establishes Discovery, Law VI. What it does not do is make the pool larger; the pool's size is fixed at his Awakening and there is no world-legal route to changing it (`OBJ-18`).\n\n  **Combat record.** *The collapsed rail cutting Gate, 2026-08-11* (`EVT-000264`-`EVT-000265`) — his second sponsored job under `OBJ-19`, and a deliberate departure from the Cicero delegated-sweep pattern: Owen took every single fight alone while Alexander held support-only (a new standing ruling that Alexander's active patrol-and-intel still counts toward his own Kill XP without a separate rolled setup action). Cleared three common clusters (one legendary, one clean success, one costing a graze), both elites (one costing a solid hit, one clean), and the archetype's guardian boss — a Carapaced stone-and-root construct — solo: survived his own natural-critical fumble unpunished when the guardian's own counter-slam missed outright, landed two partial-success hits, then closed it with a natural critical kill, taking no damage in the boss fight itself. Both wounds from the earlier fights were closed by Alexander's Mend — the first time Owen has been healed by Alexander rather than the reverse. Told Alexander plainly afterward that this clear 'didn't feel like luck'; Alexander's answer (*it's obvious to me, I'll make it obvious to you too*) landed as something Owen is visibly still working out how to believe about himself. Declared the full haul honestly with Kesha (21 crystals, 3 cores, $4,275 split, $2,137.50 each pending) and afterward worked out with Alexander that a licensed artificer — not the System shop — could build him a longsword or ranged weapon from a banked core; nothing bought yet.

*Cicero, 2026-08-03* (`EVT-000119`-`EVT-000120`) — first solo kill, a single decisive strike; several more across a delegated corridor sweep; stood back to back with Alexander against two boss-Rank alphas and landed the finishing exchange on the plated one. *Training, 2026-08-02* (`EVT-000116`) — his first attempt to strike a stationary Alexander **stopped four inches short by reflex**, the mender's wiring firing where stopping was not an option; the second landed at C-Rank magnitude, **24 damage through ≈23% reduction**. *Overgrown Temple, 2026-08-06* (`EVT-000180`-`EVT-000184`) — eleven commons and both elites alone, two exchanges holding the boss from 160 to 15 Health with Stone Skin sustained throughout, one landed hit against him all afternoon (12 damage), and by the sixth bay he was calling his own commits ahead of Field Command's relay rather than waiting on it.\n\n  **Gear, all owned by him outright** (no Stat sheet applies — Section 11.5 — so these grant reduction and build quality only): Horizon Bastion Gauntlets [C-Rank] 8%, Horizon Bastion Torso [D-Rank] 5%, Horizon Bastion Boots [D-Rank] 5%, ≈**18% total physical reduction**, $18,500 the set, bought for him by Alexander over his objection (`EVT-000118`); and the **Boss-Imprinted Quickknife [E-Rank]** (weapon power 2, armed strike ×0.75, dual-wieldable; Echo — once per scene, +1 modifier step on a Strength action to break, shove, or resist forced movement), the Cicero alpha's drop, handed to him on the spot: *first weapon that's actually mine*. His own purchases the same day, with his own money and at his own insistence: a compact field kit, two lesser **licensed** restoratives (world-market alchemy, not System stock), and tape. He also holds **one Lesser Healing Potion of System origin** (`EVT-000186`) — his to use on anyone he judges needs it, with one hard line he accepted exactly as given: **never a mana potion, not even to another mender, not ever.** He carries it inside his field kit rather than his civilian bag, and has adopted Alexander's tradecraft as his own operating procedure — never show it, dose it sublingually or in small amounts, use it on someone not positioned to ask questions.\n\n  **Sponsor capacity.** Under the Section 9.4 high-Rank sponsor exception, **his C-Rank licence is what makes a two-person confirmed contract postable and insured** — the first time in five years his card has been wanted for the thing it is actually for rather than to make an under-staffed crew's arithmetic legal. Exercised once, at Cicero (`EVT-000118`), and agreed in principle for a second (`OBJ-19`).\n\n  **Off-Gate professional competence.** Diagnosed Renata's misbehaving sensor rig himself (`EVT-000108`) — not the misalignment she assumed but a hairline fracture in the resonance crystal, located by working from his own mender's kit, which runs on the same resonance principle tuned to flesh rather than terrain. Accepted the idea of carrying a rig of his own on condition that it be the best one, and was explicit that he is not learning it in an afternoon. Owns a two-year-old Honda Civic (`EVT-000103`)."
  knowledge: "**What he knows about Alexander — check this before any scene where the System could surface.**\n\n  - **The System, by name.** Told outright on 2026-08-04 (`EVT-000145`). He is the only person on Earth who knows it exists and what it is called.\n  - **Private instant dungeons.** Told on 2026-08-03 (`EVT-000121`) when asked to fold eleven unprovenanced cores into a licensed report. He refused to lie to a board blind, got the truth, drew his own defensible line (two cores, not eleven), and rang Kesha Morrison himself to correct the filing live.\n  - **Witnessed, unexplained, and never asked about:** the C-Rank dagger appearing in Alexander's hand with no draw, twice; a killing blow walked off with no mender's touch; a healing potion produced from nowhere; broken ribs he could feel under his hands in a body that read as physically untouched. He laid all of it out unprompted at the bar on 2026-07-28, stated he is **not confused** and will not later construct a normal explanation and feel foolish, and **twice declined to ask** — once unprompted, once by explicitly releasing Alexander from a promise to explain, on the grounds that a promise extracted after a near-death and a beer is not fair to the person making it.\n  - **What he cannot perceive.** He is not the Bearer. The System is perceptible to its Bearer alone (Section 14.4) — no windows, no notifications, no sheet, no quest text, nothing to see. He sleeps through the 06:00 issue. He reads Alexander's **state** instead, accurately and constantly: tired, favouring a side, off his usual pattern, something went wrong underwater. Narrate that as a read, never as data.\n  - **Closed channels (see the table at the top of this file).** The Lakefront Gate booking, and Alexander's quest/regimen/completion data. Both have leaked in play and must not.\n  - **Wade Bishop and Ironline's D-Rank trial, told in full 2026-08-10 evening (`EVT-000258`).** First time Owen has heard Wade Bishop's name at all. Told plainly: an Ironline recruiter dropped Alexander into a borrowed four-hunter crew with no assigned lead, on purpose, to see what happened without one; the first ambush beast held still and Alexander read it and **said nothing**, letting it pin Reggie Calloway to a column, unhurt but shaken, because some part of him wanted to see what the crew would do; the leadership fight that followed; Reggie and Callie both walking out with real, untreated injuries because the trial crew carried no mender. Owen's read, delivered back to Alexander rather than kept to himself: that it going fine doesn't make the choice to withhold the warning a fine one, and that two people being hurt with nobody there to treat them is squarely Ironline's failure, not Alexander's. **This is now the second-largest thing Alexander has told him unprompted, after the System itself** — not a fact about capability, but an admission of something he did that he still feels bad about.\n\n  - **What he was told about the 2026-08-14 B-Rank trial, and the one thing that was left out (`EVT-000382`, corrected at `EVT-000389`).** Most of what Alexander told him is **true**: it was a harvest trial, he was the harvest element, and Wade did not tell him the strike line would run at half the legal roster — the reason a swarm-common reached the vein chamber at all. Owen may act on all of that as fact. **The single omission is the near-death:** he was told *'a real hit, closer than I liked… I was prepared for that,'* explicitly framed as unlike Ashfield, where canon is **Health from full to 0 in one exchange** (`EVT-000340`) held only by Shrug Off's first-ever threshold absorption. **He named that one as evasive to Alexander's face and deferred it rather than dropping it** — *'I'm going to want to have that one. Not tonight.'* Narrate him as someone holding a filed discrepancy about how close it was, not as someone who was lied to about the job. One row in the Closed Channels table; the second row was struck as written in error.\n\n  **Who knows about the relationship:** Priya Okafor, Julian Boyd and Renata Marchetti, told by Owen himself at ordinary volume at the end of the 2026-08-02 training session, specifically so they would hear it from him rather than deduce it; Kesha Morrison, told on the 2026-08-03 sponsor call on Alexander's instruction — her answer was that it was about time. Nobody knows about Stone Skin."
  relationship_to_alexander: "**`REL-000066`. Partner. Together since the evening of 2026-07-28 and the following morning — the first thing in the campaign Alexander did not calculate.**\n\n  **The escalations, in order.** The drawer, 2026-07-30 — a chest-of-drawers drawer emptied onto the bed and the top bathroom shelf cleared, with the admission that he has never given anyone a drawer before and did not know if he had done it right. The key, 2026-08-01 — the one spare set out of a kitchen drawer, held a beat longer than the handoff needed, *I only had the one cut.* First mutual *I love you*, 2026-08-05 over breakfast, said by Owen first and buried in a joke, then said back plainly in the middle of Sheridan Road. *Marry me*, 2026-08-05 evening — called on it, he confirmed he meant the thing itself if not the timing, and Alexander's unhedged *Yes. Eventually.* visibly caught him off guard in a way his own proposal had not. **On 2026-08-10, told he was loved *like you were going to live together*, his three-beat deflection sequence — surprise, giving in, joke — simply had nothing to reach for, for the first time since they met.** He answered plainly instead, and cried about it.\n\n  **The asymmetry he has named.** Nothing has gone the other way. Alexander's bathroom holds one toothbrush against the drawer and half-shelf Owen gave him nine days earlier; Owen delivered the observation himself, from Alexander's flat — *you live like you're about to be told to leave* — and answered it with the drawer.\n\n  **The one rupture, and its repair.** A near-three-day silence from 2026-08-06 ~16:00 to the evening of 2026-08-08 (`EVT-000193`, `EVT-000208`, `EVT-000217`). Cause, in his own account: fear after the Overgrown Temple clear, plus sitting alone with the unanswered question of fighting under his own licence. He named it himself as *the same four seconds, just stretched out over two days* — the rocks turning up in his own hands rather than as a story about his past. He committed to communicating even on bad days.\n\n  **A conversation backfilled rather than invented, recorded 2026-08-16 (`EVT-000416`).** At some point before that morning the two of them established that **the Quickknife does not actually suit Owen and that a longsword would fit him better** — a real exchange that was never written into this record when it happened, which is why it read as unsupported when Alexander referred back to it. Owen accepted the point immediately once it was not being presented as new. **The gap is the same class as `F-005`-`F-011`** — a fact true in play and absent from the ledger — and the played evidence has now settled the question anyway: he cleared a D-Rank instance with the longsword on the day he received it.\n\n  **Standing arrangements between them.** Breakfast is bought by Alexander in perpetuity, and no eggs after 10 AM (`EVT-000111`). Lunch is bought by Owen for the rest of his life (`EVT-000118`) — he clocked it immediately as the breakfast arrangement run in reverse. Tomatoes, chillies, basil and a watering can left out in the rain are agreed for the balcony they do not yet have; he will not swim the lake in February.\n\n  **Housing (`OBJ-15`).** The **Rogers Park two-bedroom, ~$1,950/mo**, chosen in principle by both, seen from the pavement on the 2026-08-10 morning run. **Seen from the inside the same afternoon, 2:00 PM (`EVT-000256`).** Met the letting agent, Corinne Whitlock (`ENT-000181`), in person for the first time; walked the flat together — the balcony exactly as pictured, east light, the lake visible past the rooftops; a second bedroom Owen paced the length of in silence, already furnishing it in his head. Application submitted on the spot, both names on it; landlord's sign-off expected within a day or two. Owen noted that east light will make him miserable on night shifts and that he has decided he does not care, while standing outside a building he has run past perhaps four hundred times working out which room the medical kit goes in — and, once inside, exactly where the tomato pots go on the rail.\n\n  **The rent, and why he insisted on naming it.** He raised the split himself and refused to let it stay undefined — not because the rate is beyond him, but because undefined is how he ends up somewhere he cannot afford telling himself it is fine, and then hears a voice saying *careful, he pays for this.* His framework: he pays what a decent local one-bedroom would cost him, a share he will actually feel, and Alexander covers the difference to the lake, the balcony and the second door as the person who wants those and can afford them. He is the same man who has never asked Priya for a premium, on the same reasoning: the day he asks, he stops being Owen and becomes **a rate**.

  **Telling Priya, 2026-08-11 ~11:00 (`EVT-000291`), a diner on Devon.** Went alone, by his own choice, specifically so she'd hear it from him rather than secondhand. It went harder than he braced for — she didn't yell, went quiet instead, and asked whether it was already decided before he even sat down; he couldn't honestly say no. She told him she understood, then added that he wasn't just leaving a crew but the only one that ever made room for a mender in the first place — landed harder than anger would have, precisely because it was true and delivered without cruelty. Asked him not to tell Julian or Renata before she does, that evening. Reported back to Alexander by text afterward, shaken but clear-headed: *'not as clean as I told myself it'd be.'* Asked to talk that night, deliberately not about the crew.

  **The apartment closes, 2026-08-11 evening.** After a rough day, real relief: the landlord's additional-deposit ask ($9,750 total, up from $5,850) was settled same evening, signing locked for **2026-08-12, 09:30**, keys the same visit. Told Alexander directly, unprompted and without deflecting, that he's happy — 'no asterisk' — distinguishing it plainly from the day's harder parts rather than letting one color the other. Alexander told him he loves him and can't believe he gets to live with him; Owen answered in kind, naming that the part of him that used to flinch at moments like this 'just isn't there anymore, not with you.'"
  standing_terms: "**Terms Owen has set and Alexander has accepted. These are operative and should be honoured in play without being re-litigated.**\n\n  **The three operating terms for using a mender** (`EVT-000084`, since delivered to Priya's whole crew as doctrine, uncredited): he must see the line rather than stand behind it; he must be told the instant someone is hurt rather than find out by looking over; and because his repairs per clear are finite, **the call on when he spends one belongs to the field commander, not to whoever asks** — on the logic that the man asking to be patched always gets that call wrong.\n\n  **The rule of engagement he wrote himself** (`EVT-000118`, made to be said aloud in a café): he takes one beast alone; a second engaging him at the same time is Alexander's to end; and **if he is hurt badly enough to want a touch on himself, he says the word and gets no vote.**\n\n  **The waking rule** (`EVT-000176`): wake him even when he looks like death, and let him be the one who says he cannot. Alexander accepted it and immediately qualified it — *once I commit you cannot say no.*\n\n  **His one ask of 2026-08-09** (`EVT-000241`), the closest thing to a term he set all evening: Alexander, who reads a room correctly every time, **must say so out loud if Owen starts wanting something that will get him killed — especially when Owen is annoyed about it.**\n\n  **The potion line** (`EVT-000186`): the healing potion is his to spend on anyone he judges needs it; never a mana potion, not even to another mender, not ever.

  **The C-Rank key, agreed 2026-08-10 (`EVT-000254`).** Alexander offered Owen a place in his first solo C-Rank instant-dungeon attempt as backup — Owen initially heard it as an offer to fight and had to be corrected: **observer and mender only, not a combatant**, standing somewhere safe with the authority to say *end it*, and Alexander's binding promise that a stop-call from Owen is obeyed instantly, no 'let me just finish this.' Owen's own condition, stated back: **if I say end it, you end it.** Not scheduled yet; both agreed it happens 'soon, properly,' not squeezed into a spare afternoon."
  open_questions: "**Explicitly unresolved. Do not narrate him as having agreed to any of these.**\n\n  - **`OBJ-12` — RESOLVED, but not yet acted on (2026-08-11 ~09:50, `EVT-000271`).** Walking back from the collapsed rail cutting Gate, Alexander asked without pressure whether Owen wanted to found a crew together rather than join Priya's properly, join a guild, or borrow Bridgeport. **Owen said yes** — his own words, that he has known since the second elite in the Overgrown Temple that he would say yes to a real ask. **He has not told Priya, Julian, or Renata anything.** His own words: *\"I still have to say it to her face.\"* Named as the hard part specifically because she will not fight it, and because it is the exact betrayal he identified in himself back at `EVT-000088`. Do not narrate this conversation with Priya as having happened until it is actually played.\n  - **Becoming a person who goes into Gates permanently, off the books.** Again not a yes — but he has stopped pretending the answer is obviously no. He named the actual fear: not the danger, but that **he already knows he would say yes**, and has known since the second elite in that temple.\n  - **`OBJ-19`, agreed in principle only.** He sponsors a **confirmed, properly assessed** posting on his own C-Rank licence, split fifty-fifty, his half against the rent. He asked that the first one he chooses on purpose be **boring** — *not another Beast Den that came in two alphas hotter than the paperwork said.* No posting identified; Kesha Morrison owes a callback on what Monday's desk turns up.\n  - **`OBJ-18`, the promise made to him.** Alexander promised on the pavement, flatly, *I will find a way for you to have the pool bigger. I promise.* Owen's recorded response was not gratitude but belief — Alexander says things like a bus timetable and they then happen — followed by the part that worries him: **Alexander never says what it will cost him to make them true.** There is no world-legal mechanism.\n  - **The supply-chain contradiction he assembled himself** (`EVT-000182`) and declined to resolve: only official contracted Gate work funds a potion supply, so the useful version of Alexander is the version that keeps taking contracts — and he has spent two weeks hoping for fewer. He said it aloud without being led to it and said he would rather have said it than not. **Recorded as reasoning reached, not as a commitment made**; he must not be treated in a later scene as having volunteered for anything.\n  - **Ines**, a mender colleague at Edgewater, for whom he once set a potion aside. The ownership question is closed (the potion is his to spend at discretion); Ines herself is unminted and unmet."
  life_outside_gates: "**Work.** Staff mender at **Edgewater Hospital**, chosen deliberately because it does little first-response work — somewhere the going-in has already been done by someone braver, which is the same logic that has shaped his life since the rocks. **Dr. Kowalczyk** has spent roughly a year trying to move him into a lead-mender post; he refuses, because leadership trades hands-on patient time for a schedule and a signature, a trade he has watched cost three people he respects the thing that made them good. Asked why not his own clinic: alone with his name on the door there is nobody behind him to catch what a pause costs.\n\n  **Income.** Two to three clears a month with other crews, C-Rank work included, with a **Bridgeport crew** as his regular — they call whenever they can afford him and apologise when they cannot. That outside work is his money. Priya's fifth slot he keeps at standard terms, an even fifth with no allowance for a C-Rank mender on an under-ranked crew, because they are the people he would want with him if it went wrong. He has twice declined Horizon Guild contracts: *guilds put you where the money is, not where the people are.*\n\n  **Biography.** Rogers Park. Awakened at twenty-two and cried about it. Has lived alone since, and has never had a flatmate he liked. Three summers lifeguarding the Loyola Park stretch of lakefront — the same water he and Alexander swim — before **the rocks** (`EVT-000177`), the largest disclosure he has made in this campaign: two teenagers off the rocks in turning weather, both pulled out alive, and a gap of somewhere between one and three seconds in which **he did not go in**, taking the nearer, easier, conscious boy while the other guard went past him for the girl. He has never been able to determine whether that was triage or fear wearing triage's clothes, and it is unresolvable precisely because it worked: nobody reviewed it, nobody noticed, and his supervisor bought them both a beer. He told no one, including two paid therapists, before telling Alexander. He never worked a beach again and went into medicine, then mending — a job where you arrive after, and where the sums are slow enough to make with your hands instead of in a second and a half on wet rock.\n\n  **Details that are his.** Birthday **14 September**. A two-year-old Honda Civic. A long-neglected boat, a hand-me-down from an uncle who decamped to Arizona rather than keep dealing with weather. **Voula** at Nikitas, the Greek diner four blocks north up Sheridan, has known him twelve years and fed the guard staff across those summers. His favourite Pokémon is **Chansey**, named unprompted and with total gravity, on the grounds that it heals people and has never once been put on a lunchbox."
  appearance: "Twenty-seven, white, handsome and unaware of it. Tall (182cm) and lean, but with a faint softness to him — the build of a man whose gift meant he never had to become a fighter. Light brown hair worn a little long and never quite deliberate; green eyes; two or three days of unstyled stubble that reads less as a look than as the residue of a chronically late man. His clothes are genuinely nice — good fabric, well chosen — and always worn slightly undone: a collar open a button too far, sleeves shoved up, something untucked, as though he dressed well and then ran for the door. The field-medical kit is slung across his back and rides there like part of him. Warm, unhurried, and faintly rumpled — a handsome man who'd be more comfortable if you didn't mention it."
  portrait: "assets/portraits/Owen_Callahan_ENT-000139.png"
  personality: "Easy, dryly funny, unshaken by danger ('long as nobody's bleeding yet, we're fine'). Watchful in a low-key way — noticed the C-Rank dagger appear in Alexander's hand from nothing, twice, and said nothing concrete about it either time beyond a brief look. Genuinely startled by, and warm toward, a friendly gesture from someone he'd read as too intense for that."
  situation: "**2026-08-18 ~16:35-16:50 (`EVT-000483`), texts from the boat.** Confirmed the boat's still afloat, unbothered by teasing about it. Agreed to sponsor the new D-Rank Ashfield contract Alexander found through Kesha's desk — **his own confirmation call to Kesha is still owed, not yet made as of this exchange.** Correctly worked out from context that 'the artificer thing' was happening that evening and asked plainly; **still has no name, no address — nothing beyond the bare fact of an artificer contact**, consistent with his established channel. Closed with a request to hear how it went afterward.\n\n  **2026-08-18, morning through early afternoon (`EVT-000463`-`EVT-000472`).** Woken with kisses, ran the twenty-fifth daily with Alexander (streak 10→11). Agreed to run a Frozen Gallery instant dungeon together before working on his boat's engine — his first time fighting a real ambush pack rather than backing Alexander up, and he pushed for it himself ('just in and done, see what it's like when nobody's watching the clock'). Held his own through the cluster and elite; two fumbles on the ice against the boss (both natural 1s), the second irrelevant since Alexander had already finished it; took a real hit from the boss's retaliation, healed to full by seven Mend casts afterward without protest. Accepted Alexander's read on his own improvement plainly rather than deflecting it — 'I'll take that trade.' Split off after the freight-yard goodbye kiss to work on the boat's engine, as planned, for the rest of the afternoon. Prior situation, superseded: **2026-08-17, the freight yard, evening (`EVT-000453`-`EVT-000458`).** Held the third element as lead, exactly as scoped by Alexander's own morning text — not named field lead of the whole crew, his word final only inside his own three, no title in front of the other nine. Accepted it in dry, undercut terms ('thank you for saying it before tonight instead of during... for the record I think I could do it eventually too') and ran his three cleanly through all drills with no individual failure attributed to him. Present throughout the Grant/Iris/gap-coverage sequence as an observer of Alexander running the session rather than a participant in its failures. Walking out, told Alexander plainly that he'd planned maybe a third of it and built the rest live off what broke — not quite a question, more an observation he was pleased couldn't be answered cleanly.

  **Earlier the same day — lunch and the boat (`EVT-000452`).** Chose Nikitas himself when Alexander asked by text ('Voula would win eventually'). A full afternoon on his own boat afterward, no agenda, the two of them alone until the training.

  **2026-08-17, the morning (`EVT-000444`-`EVT-000445`) — a small, genuine break from five years of pattern.** He **woke before Alexander and made coffee**, which has never happened: the established shape of their mornings is Alexander waking him with a kiss and Owen resisting it. Asked about it, he did not make a bit of it — *'I got tired of waiting for you to do it, so I made coffee instead. Turns out I can just... get up'* — and then undercut it with *don't get used to it.* Read it as a man quietly pleased with himself and not sure he is allowed to be. He was **kissed awake anyway on the second pass and gave up the protest immediately**; the morning went considerably later than planned and is not narrated, consistent with how this relationship's intimacy has always been handled. The **twenty-fourth daily regimen** was run together afterward — full calisthenics and the ten kilometres along the lake, Owen keeping pace throughout without complaint, which is now unremarkable and was impossible three weeks ago.\n\n      **The day was planned jointly and he pushed back on the order of it.** Alexander proposed Walt's, lunch, and Owen's boat before the 18:00 training; Owen's contribution was practical rather than deferential — he likes the boat plan, warned that Walt narrates his own inventory 'like it's a bedtime story' and to keep it under an hour, and asked to be fed. **He then caught himself out**: told he had never actually met Walt, he conceded it immediately (*'Huh. You're right'*) rather than covering, having built the man up in his head purely off Alexander's descriptions. He chose the lunch place himself at Alexander's invitation.\n\n      **What he does not know, as of this anchor.** He knows only that Alexander had business at Walt's shop. **Nothing about the $40,000, the partnership, Nadia Adamik, Sal Prykowski's name, or the Quickknife demonstration has been said to him** — not withheld as a decision, simply not yet, because they have not met up. He also still holds the deferred question about the B-Rank trial's near-death, unanswered and not raised by either of them across the whole weekend.\n\n  **2026-08-16 — he cleared a Gate (`EVT-000414`-`EVT-000417`; detail in the chronicle).** **Declined harvest work with Alexander**, naming the real reason over the money: *'I stay because it's the job where I don't have to be first through a door.'* Said what he does want instead, unpressed — more time where Alexander is, and the version of that is the crew. **Given the Longsword [C-Rank]**, objected practically, accepted it. **Then refused Alexander's 'nothing in a D-Rank dungeon can kill you'** by quoting his own first-week words back — death in a Gate is final — and naming the ask: *'I don't need it to be nothing. I need you to say it's manageable and mean it.'* **`REL-000066`'s `EVT-000241` term running in reverse for the first time.**\n\n  **In the Frozen Gallery he killed all twelve creatures** — nine commons, two elites, a D-Rank boss — with Alexander reading and relaying and never striking. **31 damage against a 275 pool.** He opened on a fumble that left him off-balance with a beast moving, and **Alexander deliberately did not step in**; he closed unguided on a critical, reading the boss's wind-up himself, with a weapon he had held three hours. He survived Alexander's worst call of the day (a scrambled Pattern, a wrong-side shout, a lost ambush kill) without it becoming an argument. Ended **275/275**. *'Thank you for trusting me to be the one swinging instead of the one you're protecting.'* **He cannot open a key himself** — Section 17, Bearer only — and the offer was corrected to joint entry before he answered it.\n\n  **2026-08-15 evening (`EVT-000408`-`EVT-000411`).** Told directly and unprompted that Alexander had finally gotten a contact on an artificer — the fact of it, no name and no address, and he did not ask for either. Spent the rest of the afternoon on the couch with him with nothing scheduled, and was the one who eventually broke it to raise that Reyna's 7 PM meeting had no location yet. **Present at the Reyna Castillo meeting** (`EVT-000409`) at the lakefront and said almost nothing across the whole of it, which was its own choice: the question under discussion was explicitly about *him* — whether Alexander would let the crew watch him fail in public — and he let it land on someone else's shoulders without stepping in.\n\n  **Afterward he disagreed with Alexander, plainly, and did not soften it.** Alexander's read was that Reyna 'wasn't listening'; Owen's was the opposite — that she had quoted Alexander's own answer back at him almost word for word, which is not what not-listening sounds like — and he said so rather than agreeing. He also named the sharpness in Alexander's voice for what he thought it was, without needling: somebody had kept a question open about whether Alexander would protect him publicly, and some part of Alexander that was not strategy had not liked it. He offered no conclusion, just declined to let it go unsaid. **Separately, and gently, he flagged that he is not automatically caught up** — that a thing said on a phone call in front of him is not the same as being told.\n\n  Walked home alone from the park; did not ask to come to the meeting and was not invited, which neither of them made anything of. **Fell asleep on the couch with a book on his chest** and did not wake when Alexander got home at ~22:30 or when he was carried to bed — the second recorded instance of that, after `EVT-000243`.\n\n  **2026-08-15 daytime (`EVT-000399`, `EVT-000400`, `EVT-000401`, `EVT-000402`, `EVT-000403`):** the balcony conversation that reopened `OBJ-25`'s unkept term, then backup mender and observer on the solo Crypt instant dungeon — **`EVT-000400`** the entry and the ambush clears with him present and safe as agreed, **`EVT-000401`** the second elite and Alexander's Level 21→22 crossing mid-fight, **`EVT-000402`** the Serpentine boss killed by Rupture and a dagger finish, **`EVT-000403`** the full extraction with his own Resonance Extraction read shared. Non-combatant throughout; the stop-call term held without ever needing to fire. Full detail in `REL-000066`.\n\nPositioned at the rear alongside Alexander per Priya's formation. Watched Alexander intercept a beast to protect him, watched him apparently die and then not (HP 0→40 via a claimed grant, though Owen has no way to know the mechanism — he only saw an impossible recovery), and watched the C-Rank dagger materialize in Alexander's off-hand a second time during the elite's charge.\n\nIn the aftermath (`EVT-000077`), was the first to respond when Alexander raised the near-death moment directly — admitted he'd had the kit half open and simply wasn't fast enough to matter, and apologized, genuinely rather than performatively. Agreed to hold his healing in reserve at Alexander's own request. Accepted an arm around the shoulder and a joke about an owed beer with visible surprise — the first smile he's seen from Alexander all clear — and used the moment to put the dagger question on the record without pressing it: he still has no explanation for it and says he intends to keep not asking, but wanted that stated plainly rather than left unspoken.\n\n**The boss fight (`EVT-000079`, `EVT-000080`).** Agreed first and without hedging when Alexander proposed finishing the Gate, citing both Alexander's demonstrated competence and the beer he was owed. Objected honestly that standing alone in the open beside a C-Rank boss fight made him the likely failure point, and asked that everyone know it going in rather than after. Ran toward Alexander twice under fire, the second time against Alexander's own explicit instruction not to. Watched a fourth unexplained thing — a healing potion produced from nowhere and handed to Priya — and said nothing. Arrived at a man he had watched take a killing blow to find him whole and untouched, and closed his kit without a word.\n\n**Cleared Alexander's Severe rib injury** (`EVT-000080`) — a resolved C-Rank treatment touch under the newly authored Profile 1.5 Section 6.3, the first exercise of this world's mender rule and the moment his rank mattered concretely. He felt the broken bone under his hands in a body that read as physically untouched, and has stated he cannot reconcile those two facts.\n\n**On the report:** noted plainly and without self-congratulation that as the only correctly-ranked member of the crew he carries none of the legal risk, that he dislikes that, and that he wanted it said aloud rather than have anyone assume he was quietly comfortable with it.\n\n**The bar (`EVT-000080`).** Over the beer he'd claimed, Owen laid out unprompted and without accusation everything he has witnessed — the killing hit walked off with no mender's touch, the knife appearing from nothing twice, the potion produced from nowhere, and the broken ribs he could feel were real in a body that read as unharmed. He stated he is **not confused**, will not later construct a normal explanation and feel foolish, knows there isn't one, intends to keep his promise not to ask, and has spent one day watching what carrying it alone costs Alexander. He left the door open and did not push it. This is the furthest any NPC has come toward Alexander's secret (Profile Section 19) — still unreported and uninvestigated, but explicitly and mutually acknowledged. Alexander gave him a partial answer that same afternoon (`EVT-000081`): that something had happened to him and he does not understand it either. Owen refused to press, offered a permanent exit from the topic, pointed out that **nobody knows what awakening is** — including him, about his own gift — and then **released Alexander from the promise to explain**, substituting 'when you want to, if you want to.'\n\n**Personal relationship (`REL-000066`), from 2026-07-28 evening.** Drank with Alexander in place of being thanked, fell asleep in the booth, was taken home to Alexander's apartment rather than left, and the relationship became explicitly personal and physical the following morning. Disclosed ordinary biography — Rogers Park, awakened at twenty-two and cried about it, twice declined Horizon Guild contracts because 'guilds put you where the money is, not where the people are.'\n\n**The morning after (`EVT-000084`, 2026-07-30).** Took the daily training session Alexander imposed on him without ever using the offered exit, and was coached through squat, push-up and sit-up form by a man whose instructor's register he had never heard before and immediately clocked as *the voice for people he is responsible for*. Watched Alexander finish 10 km and a hundred of everything without visible strain two days after a near-lethal clear, looked at him carefully, and **chose not to say what a C-Rank mender was reading** — the same restraint he has shown at every previous unexplained thing.

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

**At the door, the largest thing Alexander has told him about himself that isn't about the System at all (`EVT-000122`).** Asked simply whether he was good, and answered honestly: since his parents died in the Damen Avenue Break, tonight is the first time he has been genuinely, uncomplicatedly good. Owen didn't ask for more — took the street name back to him once, quietly, and pulled him inside by the jacket rather than push. Kissed him at the threshold. Cooked for the first time in five years of doing this job (`EVT-000123`) — steak and potatoes, Owen conscripted into setting the table 'decorative and handsome' and taking it as a genuine compliment. Agreed, still half-joking, to more two-person Gate 'dates,' and — more seriously — accepted Alexander's offer to be brought inside a private instant-dungeon clear and shown the whole thing directly, understanding plainly that it pays nothing and produces only cores he already knows have no legal home. Asleep at the ordinary hour, undisturbed at 06:00 when the System issued the next day's quest and rotated its shop; the private line stayed exactly that — private.\n\n**The evening of 2026-08-05 into the morning of 2026-08-06 (`EVT-000170`-`EVT-000173`).** Picked Alexander up near his own building after a rough shift (a Denise-crew hunter who'd walked on a fracture for two days rather than 'make a thing of it'), took him up, and ordered in rather than go anywhere. Over dinner, half a joke he wasn't fully hiding behind — 'Marry me' — got called on it, and confirmed he meant the thing itself if not the timing; Alexander's unhedged 'Yes. Eventually. Du'h' visibly caught him off guard in a way the joke hadn't. Said 'I love you' again over the meal without any of the morning's nerves around it. Fell asleep on the couch afterward without noticing Alexander quietly text Kesha Morrison to release the held Lakefront booking rather than wake him to ask — woke just enough to be walked to bed, still mostly out on his feet. Slept through the whole night and the following morning undisturbed; woke to a note ('you know where I am'), texted about it, and worked out over text that Alexander had gone to train alone rather than wake him — reasoning it out from pattern rather than any channel he shouldn't have. Talked his way into joining him at the lake on his way to his ten o'clock rounds, and revealed, apparently for the first time, that he lifeguarded this exact stretch of water in college — delivered as a joke about jurisdiction before either of them got in.\n\n**Nikitas, and the rocks (`EVT-000177`, 2026-08-06 midday).** Walked Alexander four blocks north up Sheridan to the Greek diner where Voula has known him twelve years and fed the guard staff across three summers; she cleared the corner booth — the guard table, unseated for years — in front of the whole room and refused Alexander's money. There he made the largest disclosure of the campaign, the pause on the rocks, told to nobody before including two paid therapists, and connected it himself and unled to being too slow to reach Alexander at Ashfield. His stated fear: not that he will fail to arrive, but that he will pause again, it will work out again, and he will never know. Alexander listened without pressing and did not offer absolution.\n\n**The rune, the promise, and the Overgrown Temple (`EVT-000178`-`EVT-000184`, 2026-08-06 afternoon).** On the pavement outside his own building he was given the Stone Skin rune, and worked out unprompted and *before consuming it* that the new ability would draw on the same capacity his mending draws from — four or five ordinary patients per clear, two if it is bad — so every activation is a person he cannot put back together. He named it as the rocks made into a decision he takes six times a fight instead of once in a lifetime, and consumed it anyway. Alexander's answer was one sentence in the instructor's register: *I will find a way for you to have the pool bigger. I promise* — which opened `OBJ-18`. Owen's response was not gratitude but belief, plus the part that worries him: Alexander never says what it will cost him to make these things true.\n\nHe then cleared almost an entire E-Rank instant dungeon by himself from his own kitchen — eleven commons, both elites, and two exchanges holding the boss with Stone Skin sustained — drank a System Mana potion mid-clear and came back to full, and assembled the whole potion supply chain himself from the economics he was told, reaching the conclusion that only official contracted Gate work funds it. He said the contradiction aloud without being led to it: the useful version of Alexander is the version that keeps taking contracts, and he has spent two weeks hoping for fewer. He declined to resolve it and said he would rather have said it than not.\n\n**The walk to Edgewater (`EVT-000186`, 2026-08-06 ~15:12-16:00).** Hand in hand, three real conversations: why Edgewater specifically, Dr. Kowalczyk's standing lead-mender offer and his reasons for refusing it, and why not a clinic of his own. **A Character First — reassurance accepted without deflection:** told plainly he was underestimating himself and had proven it that afternoon, he did not redirect with a joke, restated the numbers back accurately himself, and said aloud that nobody had ever stated belief in him as a flat fact rather than an encouragement. He accepted the potion terms exactly as given and kept his own ask deliberately modest. Alexander's standing proposal — future work booked through Owen's own licence rather than Alexander's gold — was left open (`OBJ-19`); Owen named the real risk difference himself (a confirmed posting is assessed, not guaranteed, and Cicero came in two alphas hotter) and asked to think properly rather than answer at his own door with a shift starting.\n\n**The silence, and its repair (2026-08-06 evening to 2026-08-08 evening, `EVT-000193`, `EVT-000208`, `EVT-000217`).** He went quiet for nearly three days — no text, and a promised one that never came. Called on 2026-08-08, he answered plainly, admitted he had seen the *Something happened?* text and not known how to respond, and traced the silence to fear after the Overgrown Temple clear and to sitting alone with the unanswered question of fighting under his own licence, rather than to any doubt about the relationship. He named his own avoidance as *the same four seconds, just stretched out over two days* — **a Character First: the first time the rocks-fear has been named as something he is actively doing rather than something that happened once.** He came to the apartment after shift that evening, committed to communicating even on bad days, and said outright that he wants to fight again without abandoning his hospital work or his mender identity.\n\n**Together together (`EVT-000218`, 2026-08-09 morning).** Ran the sixteenth daily alongside Alexander on his own scaled numbers, admitted the silence had been partly fear, and agreed on a shared life and a shared home — `OBJ-15` moving from an open question to an active search for a place that belongs to both of them from the beginning. Made his 08:00 shift on time.\n\n**The evening of 2026-08-09 (`EVT-000239`, `EVT-000241`).** Came off a full Sunday shift in which a patient coded in bay three at eleven and ate the whole day; texted rather than called, admitted he had looked at none of the listings, and — told flatly that Alexander had cleared three dungeons that afternoon — named the bus-timetable delivery as the tell, declined to ask whether he was hurt on the grounds that he would get a *no* either way, and said he would look himself. He also correctly inferred from a pause that something had gone wrong underwater without being told. He refused a neutral-looking menu of three flats and made Alexander name the one he actually wanted, then read the choice back to him unprompted: the Rogers Park two-bedroom keeps Owen's whole commute and his lake, over the Edgewater option that would have cut twenty minutes off his mornings, and Alexander had done that deliberately and had not intended to mention it.\n\nArriving early and carrying nothing, he ran the mender's diagnostic look over Alexander unprompted, registered that something was materially different about him, and asked to be sitting down before hearing it. Made him repeat *I just want to have you* and named why it mattered — a week and a half ago he would have reached the logistics and stopped. Raised the rent split himself and refused to leave it undefined; set the sponsored-job terms (`OBJ-19`); deliberately deferred both the crew question and the wider Gate question and asked that the non-answers be noticed; walked forward himself from E-Rank boredom to wanting a D-Rank inside a month and named the fear underneath it — **not the D-Rank, but that he already knows he would say yes, and has known since the second elite in that temple.** Fell asleep on the couch. Agreed with total gravity: tomatoes, chillies and herbs on the balcony.\n\n**Monday 2026-08-10 (`EVT-000243`-`EVT-000245`).** Carried from the couch to the bed without waking, and worked it out in the morning from the shoes lined up by the wall — called it the nicest thing anyone had done for him in five years, *which says something bleak about the five years*. Woke to *I love you* as the first words of the day and named the significance himself. **Character First — the deflection failed:** told he was loved *like you were going to live together*, the three-beat sequence that has closed every one of these moments had nothing to reach for; he put the coffee down and answered plainly instead — five years of being the useful one, people are lovely to you while you are useful, and he had said aloud that he wanted more for the first time in his life the previous night, at twenty-seven — then said *I really love you too* into Alexander's collarbone, crying and annoyed about it. He also named the wider change: Alexander was not scanning the room, stood in his own kitchen with his whole face on display, and this is the best he has ever been — *not stronger. Better.* Registered, as a change, that Alexander declined the instructor role for the day.\n\nOn the run he slowed and stopped outside the Rogers Park building without being asked, having looked the address up the night before, and stood working out which room the medical kit goes in outside a building he has run past perhaps four hundred times. Noted that east-facing light would make him miserable on night shifts and that he had decided he did not care. When Alexander described a future on that balcony out loud, Owen identified it immediately as something he has never done: he plans operations and the next eleven hours, and had never before said a sentence that assumed a next year — first an unasked-for drawer, then a balcony, now every morning. **He is off work the whole of 2026-08-10 and has no obligations at all.**

**Monday 2026-08-10, the rest of the day (`EVT-000253`-`EVT-000258`).** Corrected his own request for a sponsored posting mid-morning — clarified to Alexander and then to Kesha Morrison by text that 'boring' meant properly assessed, not another job he has to stand behind rather than in; specifically **not mining**, since the whole point of the sponsorship was finally being on the line rather than watching from it. Kesha texted back within the hour: something real, not mining, a call to follow that evening.

**A real question asked, for the first time in five years (`EVT-000254`, on the boat).** Told outright that he could ask Alexander anything — not how, the actual thing itself — Owen registered it as a door he had spent five years deliberately not walking through, protecting himself from an answer he couldn't live with by simply never asking. He took it: asked plainly whether Alexander has ever actually been close to dying doing this, in general and about the still-unopened C-Rank key specifically. Told the honest number — three D-Rank instant dungeons cleared solo the day before, one six-point graze in an elite fight, healed out by a level-up before it registered — his response was not relief so much as something closer to grief for every time he chose not to ask: *five years of watching people bleed for real, and the actual number is nothing.* **Character First: the first unguarded question he has ever put to Alexander about the danger itself, and the first time an honest answer changed his read of the risk rather than just his trust in the man giving it.**

**The C-Rank key, corrected and agreed (`EVT-000254`).** His first reaction to being offered a place at Alexander's side was to want to fight — caught himself doing exactly the thing Alexander had promised to flag, and asked Alexander to look at him and say whether it was real or the old five-year pull toward standing in front of something dangerous. Alexander named it plainly: no fighting, ever, for Owen there — **backup mender and observer only**, present so Owen would know exactly where Alexander was and never have to sit at home not knowing if a night ends with a story or doesn't. Owen took it as the first time anyone has told him no on the danger and yes on being there, in the same breath. Agreed: **soon, properly**, not squeezed into the same afternoon as the flat viewing.

**A philosophy for his own growth, stated for the first time (`EVT-000254`).** Told he could have more capability if he wanted it, and that Alexander would be *the helping factor in that equation and not the master decider* — E-Rank instances first, training properly, and then Owen's own call on whether to step further, not Alexander's. Owen named the phrase back to himself like he intended to hold Alexander to it later, and said it was the first time anyone has offered to be *in* his growth with him rather than either dragging him forward or keeping him small to keep him safe.

**Flash Step given and consumed (`EVT-000255`).** Told plainly what it would actually do for him — not a fighting tool, the thing that lets a mender who is always standing where the wound is get away from that position, or reach one faster — Owen recognised it immediately as *safety, dressed up as a skill,* and asked to know what he was agreeing to this time rather than eat it in a doorway again. Consumed on the boat. Registered the change immediately as a strange, quiet second gear he now knows is there.

**The Mend-rune aspiration, raised and left open (`EVT-000255`).** Alexander named a second thing he wants Owen to have eventually — a cheap-Mana Mend option so trivial injuries stop being paid for out of the same well as real emergencies — and was honest that he doesn't have it yet and can't promise when. Owen's reaction was the most unguarded of the day: it named, out loud and for the first time to anyone, the actual arithmetic of his job — that he has spent five years quietly under-treating people he could have helped because the cost was identical to treating someone who was actually dying. Recorded as the single largest thing Alexander has offered him that isn't Alexander himself.

**The Rogers Park viewing, 2:00 PM (`EVT-000256`).** Full detail under Housing above. Application in; landlord's answer expected within a day or two.

**Evening — Kesha's answer, texting round, and the recruiter question (`EVT-000257`).** Cooked dinner unprompted while Alexander checked in with Kesha (confirmed, not mining, a call still to come) and texted his own mining-job contacts for openings — nothing new surfaced except Denise Ferro's relationship visibly warming (`REL-000070`). Asked outright, over dinner, whether Alexander had told him about 'the recruiter' — Owen had no idea what he meant, which opened the door to the Wade Bishop disclosure below.

**The full Wade Bishop account (`EVT-000258`).** Full detail under Knowledge above. Listened without interrupting, named the ambush-withholding plainly back to Alexander rather than either excusing or condemning it, and separated what belonged to Alexander (choosing to test the crew, and still feeling bad about it) from what belonged to Ironline (sending an untested, leaderless crew with no mender to test a stranger). Thanked him, plainly, for not smoothing it over.\n\n**Told everything, 2026-08-13 ~20:15 (`EVT-000334`).** Came home from an ordinary Edgewater shift to find the evening's finds laid out on the kitchen table and asked to be told. Heard the whole account unprompted and uninterrupted — Walt Adamik's existence, concealed from him for three weeks; Marnie and her disappearance; the wallet and its maker's stamp; Elias, the coffee stall, the dock, the S-Rank dagger, the CONSULT stranger, Loomis Street, and Walt's pending commitment. Noted the three-week concealment as an observation rather than an accusation, filed beside everything else he has absorbed without flinching. Then stated the real objection plainly: that breaking into a place watched by people organized enough to badge their own visitors is not a Gate, that it is the kind of thing that gets a person disappeared the same way she was, and that nobody is coming to pull him out of it — fear stated as fact, the same register as his standing line about wanting to be told if Alexander ever wants something that will get him killed. Closed on what he actually cared about: that he was told all of it, that night, first thing. **This is the first time Alexander has volunteered a concealed thread in full before being asked**, and Owen named it as the part that mattered."
```

### ENT-000146 — Wade Bishop

Ironline Guild recruiter ("talent side"), met at the Red Line Corridor on 2026-08-04. Direct, unpolished pitch style; candid about what he can't promise.

```yaml
id: ENT-000146
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**Not authored — awakened status is not established.** Wade Bishop manages or brokers Gate work without any record of being awakened, and Section 9.4's support tier plus Preston Vaughn (`ENT-000108`, a guild chief executive who is explicitly not awakened) both show that a senior operator in this trade need not be. Assigning a Rank here would be inventing canon, so none is: no Rank, no pools, no Section 6.1.2 variance, and Section 13.6 does not reach a non-hunter. **Flagged for a ruling** rather than filled in."
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

        **Expected follow-up window (Runtime-authored, 2026-08-09, `EVT-000236`).** Neither condition has moved as of this checkpoint. Given the B-Rank lead's own original 5–7-day estimate (stated 2026-08-04), the natural window for Wade to call or text with concrete news — the 50% split's approval, or the harvest trial actually scheduling — runs **2026-08-13 to 2026-08-15**. This is an authored expectation about how Wade would plausibly behave, not a promise he made on the record; see `140_OBJECTIVES.md` `OBJ-23`.

        **The firmed callback lands, 2026-08-11 (`EVT-000284`).** True to the owner-authored certainty (`EVT-000259`), Wade called with concrete news on both conditions. **The split: 35%, not 50% — Brannigan's office wouldn't sign off on the full ask — plus full credit on the contract record as lead**, which Wade characterized as the real offer, not an opening move to negotiate down from; he was honest that he personally pushed for 50 and lost. **The B-Rank harvest trial: confirmed and dated, 2026-08-14, 08:00, a legitimate site past the Region V line** — no longer a maybe. Alexander pushed back on the split as not what was agreed, stated he'd decide after the trial rather than now, and separately asked Wade for a list of C-Rank-and-above hunters who might want a side project outside Ironline — an unusual ask for a recruiter to grant, and Wade said so, but agreed it cost his own guild nothing since none of the names were on a signed Ironline roster. **Delivered that evening as promised** (`EVT-000293`): four names — Soraya Delgado (`ENT-000185`), Grant Okwuosa (`ENT-000186`), Iris Halvorsen (`ENT-000187`), Theo Bannerman (`ENT-000188`) — each with a brief personal read, explicitly a lead list rather than a roster, no promises on any of them saying yes.

        **The B-Rank harvest trial itself, 2026-08-14 (`EVT-000338`-`EVT-000346`).** Objected on the record when Alexander walked the Gate's mouth alone against a site rundown — not with the tactical authority Alexander stripped from him at the D-Rank trial, but as the one who answers to Brannigan's office if it goes wrong — and stepped aside rather than physically stop him, same as before. Corbin and Felix later confirmed to Alexander's face, unprompted, that a Wade Bishop crew running with no lead and no call is standard, not an exception; Wade conceded it without argument when Alexander pressed him on it afterward, admitting he pitched the recruitment honestly on its selling points while withholding how Ironline's own guild-held Gates actually get staffed.\n\n**The legal-minimum violation, same conversation.** Alexander identified that today's confirmed B-Rank Gate ran with 4 combat-rated hunters against Profile Section 9.4's legal minimum of 8 — not merely under the trade's posting floor, a genuine prosecutable violation. Wade confirmed it outright, including that adding Alexander to the roster after the close would only reach 5, still short, and would itself be a falsified after-the-fact edit. **Terms accepted (`EVT-000345`) in exchange for Alexander's discretion before Wade's end-of-day report:** retroactive roster inclusion despite its acknowledged insufficiency; sight of the report before it is filed; the standard harvest-pool share and a formal combat-contribution claim, both confirmed as owed fact rather than a negotiating position; and an ongoing unofficial arrangement — Wade supplies contacts, hunters, artificers, and information on request, nothing manual and nothing independently prosecutable beyond today's own exposure. Wade agreed to all of it without pushback beyond a single clarifying question about scope, which Alexander answered directly. **Delivered the mining-share and combat-contribution figures by text that same evening, 2026-08-14 (`EVT-000371`)** — $104,500 harvest-pool share plus $117,040 combat-contribution claim, $221,540 total, filed and processing, computed against the $522,500 declared pool once `EVT-000370`'s boss-drop roll gave it a total. Credited Alexander as the trial's functional field leader for the combat-pool split, consistent with the role he took unassigned at the D-Rank trial. The boss-drop Watcher Torso [B-Rank] itself wasn't part of the cash figure and remains undivided. Separate from the Ironline guild-decision call still owed for **2026-08-15**. The dynamic between them has genuinely shifted: Wade is no longer merely a recruiter Alexander is evaluating, but someone now materially compromised and answering to him.\n\n**The lot, 2026-08-14 22:00 (`EVT-000380`, `EVT-000384`).** Texted that he was coming to the apartment with the torso; called back and asked to compress an hour into thirty minutes, he **refused honestly rather than agreeing and failing** (🎲 d100 8) — he was at the Region V office and would not file the report and then hand over a copy of something already in the system, because sight-before-filing is the term he agreed to. When Alexander instead moved it to 22:00 at the office, Wade **volunteered the risk Alexander had not asked about**: a hunter walking into an Ironline building the night before deciding on Ironline reads exactly one way to whoever is upstairs, and he could not control who that was. He named the lot's northeast corner as the building's one blind side and admitted he probably should not know it as well as he does.\n\n**He handed over a forged report and said so before he was asked.** The roster lists **eight against five actually present**, padded with three bench names — **Priyanka Osei, Marcus Delray, Toby Fenwick** — real people with real B-Rank cards who were not on site. Wade's account: Brannigan's office pulls from that bench whenever a job runs short, it is how a light crew has always been filed, and **nobody checks unless someone dies**. Asked whether he would keep sending unprepared strangers into high-Rank Gates, he answered *probably* and did not dress it up as a fight he is losing from inside — it is not his call, he recruits rather than sets staffing policy, and **he has never once refused a job because the roster was thin.**\n\n**Three dead recruits, given cold when asked cold.** Over about six years, three people he personally recruited, pitched, and signed have died: **two on one B-Rank posting eighteen months ago**, the same coordination failure as the trial with worse luck, and **one about three years ago, D-Rank, alone, under a waiver he says he should have pushed back on and did not.** He attended two of the three funerals; he did not attend the first, at twenty-six, having told himself it was not his job to grieve someone else's hire. He offered no mitigation and asked for nothing in return for the honesty.\n\n**Two standing commitments accepted** (`EVT-000384`): the `OBJ-28` rejection pipeline — every name that turns down a Wade Bishop pitch, with a read on why, same day, ongoing — and a brokered meeting with the artificer **Priscilla Nakamura** (`ENT-000203`), messaged that night with a scheduling window owed by 2026-08-15 evening. He named the relationship's real shape himself when Alexander called it a partnership and made clear it was not: not a partner, but the man holding a filed violation over Ironline while wanting things Wade can supply, useful to each other exactly as long as that stays true. **He let Alexander walk off with the unfiled report folder**; whether he can still file without it went unraised by both of them.

        **The Ironline decision delivered, 2026-08-15 ~16:45 (`EVT-000404`).** Called rather than texted, addressing both open threads at once. **Priscilla Nakamura's window:** tonight, 9:00 PM, her workshop, address given. **The Ironline decision:** Alexander agreed to work with Ironline strictly as a **contractor** — no salary, no card, his own choice of what work he takes — with Wade named as the point of contact and, in effect, his supervisor of record. A real, sellable win for Wade at Brannigan's office without anyone above him needing the actual shape of the arrangement. Committed to drafting the contractor paperwork by 2026-08-16. Named the dynamic himself, quietly: he'd probably want the leash on him too. Closes `OBJ-23`."
```

### ENT-000147 — Walt Adamik (the pawnbroker)

Owner of an unnamed pawn-adjacent shop in Chicago's warehouse district, dealing in mundane salvage, licensed small goods, and — quietly — items with murkier provenance. Named in play 2026-08-05.

```yaml
id: ENT-000147
canonical_record: REC-000077
schema_version: "0.1.6"
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
      **Sixth visit and the turn of the whole relationship, 2026-08-17 ~10:00-11:00 (`EVT-000446`-`EVT-000447`). He is now Alexander's funded business partner, and he disclosed the thing he has been withholding since `EVT-000157`.**

        **On Marnie: nothing, both directions.** No word from her, no new lead of his own, and he has not pushed Sal Prykowski again after how that call went — his own words, that he did not like it then and does not like it now. Told Fenn had come back with nothing yet, he was unsurprised and defended her: better resourced than he is, and *good doesn't mean fast on something this quiet.*

        **The want-list, finally explained.** Given a C-Rank Beast Core outright and pressed three times on what it was worth *to him* rather than on the market, he stopped negotiating and told the truth he began and swallowed at `EVT-000157`: **his granddaughter, Nadia Adamik (`ENT-000207`), Gate-touched three years ago.** Licensed medicine has not helped; BGM does not cover a non-combat injury; he has been told quietly that the right artificer working **high-Rank cores specifically** could build something that helps rather than cures. **Marnie was going to be that artificer.** He set the core down on a cloth rather than pocketing it, and said plainly that her going quiet has never been business to him. His own market estimate for a C-Rank core to a buyer who does not ask questions: **$6,000-7,000**, and he does not intend to sell this one.

        **The name he had been sitting on, and being called on it.** He then produced the actual trade: **Sal Prykowski (`ENT-000206`)**, the supplier who went silent on CONSULT at `EVT-000352`, written on a scrap of paper with a rough working location — protected for three days and handed over now, with the warning that Prykowski will not talk cold and will know instantly who sent him. **Alexander put the contradiction to him hard**: Walt had just said Marnie is his granddaughter's best hope, and had spent three days protecting the man most likely to know why she is gone. **Walt did not defend it.** He named it as fear rather than judgment — he had told himself he was protecting a source, and was actually hoping the danger would resolve before he had to hand it to anyone — conceded it was not logical, and said that is simply what frightened people do, *even the ones who mean well, even when it's their own family on the other side of it.* Told the arrangement was not working as it stood — that he cannot want help and also wait for Alexander to arrive holding something valuable first — he took it as fair without argument and did not try to sell his way out of it.

        **The partnership (`OBJ-29`, `REL-000069`).** Offered a stake rather than charity, he did not say yes quickly. **He priced the real cost first**: going bigger means being seen, he is careful precisely because nobody important has reason to look twice at an old man's pawn shop, and mana-touched goods are the exact category that made a thirty-year contact hang up on him. He asked for structure that keeps them both off a radar and asked what 'silent partner' actually meant in practice before agreeing to it. Then he shook on it — **he runs the floor, Alexander funds scale and takes a profit share and first refusal** — and set his own terms in return: anything with real money or real risk in it, Alexander hears **before** it happens. His costed figure for a genuine result inside a week was **$40,000** (storage, two vouched people for security and legwork, capital to buy stock outright rather than broker it), delivered on the counter the same visit.

        **What he now knows about Alexander, and how.** Alexander **withdrew a Quickknife [C-Rank] into the air above the counter and caught it falling**, deliberately, in front of him — the first unambiguous, unhideable demonstration Walt has been given, as opposed to the half-second sleight he caught and let go at `EVT-000139`. He did not flinch and did not ask a follow-up question. His response was that the demonstration was not needed for trust, but that it **answers a question he had been too polite to ask for weeks** — consistent with his established discretion, and the fourth time he has declined to pursue something about Alexander he plainly noticed. **He now holds first-hand knowledge that Alexander stores and retrieves objects from nowhere.** This is a live Section 19 exposure thread, entered knowingly and on purpose. **He has no channel to the System by name, to Flux Sight, or to anything Alexander read off his own counter** — nothing beyond what he watched happen.

        **Sold this visit:** the **Mana Reservoir [C-Rank]** at $2,500 (asked $2,800, came down once and then refused to move further, honestly rather than as a haggling posture), with his standing unconditional buy-back at cost if it proves worthless. **Shown and unsold:** a **Perimeter Ping [D-Rank]** wrist device at $1,400, off a decommissioned strike team's haul. He could identify neither and said so.

      Sold Alexander a look at, and let him handle, **Cicero's Quiet [C-Rank]** (Section 11.6), quoted at $35,000 with murky scavenger-sourced provenance from the Cicero Scar he can't personally vouch for. Not purchased. Bought one private E-Rank core from Alexander for **$220 cash** (`EVT-000139`) — a genuine unlicensed transaction — and offered a better rate on future cores once trust is established. Caught an unexplained half-second during Alexander's dimensional-inventory sleight during the dagger demonstration; filed it away without pressing, consistent with his established discretion.

        **2026-08-05, second visit (`EVT-000157`).** Accepted Alexander's proposal of an ongoing supplier relationship and described how he actually runs the grey side of the business: a private handwritten tally marked rather than named, so the ledger points nowhere under a search; fair quotes; no questions past what he needs to move goods safely; consistency valued above any single windfall. Took **ten E-Rank cores** against a nine-core asking price and gave all three pieces of information without further negotiation, reading the extra core as the trust-by-doing Alexander had pitched. Registered nothing uncanny this visit — the cores came out of an ordinary backpack.

        **His own want, volunteered: C-Rank cores and above.** Asked what he actually wants rather than what he will take, he named high-Rank cores, began to give a reason, visibly stopped himself, and said only that he has a use for things that don't come cheap through normal channels and that the shop's margins don't stretch to it. **The reason is unestablished and is a live thread.** When Alexander said he could not promise to hold that kind of material *yet*, he filed the word without pursuing it — the same deliberate discretion as the dagger slip.

        **Agreed to broker an introduction to an unlicensed artificer** — real quality work, never asks him an unnecessary question — framed as a **consultation rather than a commission** at Alexander's preference, and explicitly as putting his own name on Alexander personally. Quoted $200–300 cash for an hour, possibly waived as a favor; the artificer takes no gold or crystals. Timing is the artificer's own. **The artificer is referenced but unmet, and holds no identifier.**

        **Fourth visit, 2026-08-11 ~10:30-11:00 (`EVT-000280`).** Alexander returned asking after the introduction. Walt initially misspoke the contact's working alias as "Reyes" — a collision with the already-established Ada Reyes (`ENT-000134`), corrected the same exchange once caught (owner-flagged as `F-009`) — the real alias is **Marnie**. Re-confirmed the terms exactly as first quoted: consultation not commission, his name vouching Alexander personally, $200–300 cash for the hour unless waived, timing hers alone. Also showed two pieces from his special-handling stock, unpriced at first: a plated bracer and a small sealed stone, both moved by a seller in a hurry to be rid of them. Sold both together for **$5,200 cash** after negotiation (bracer $2,200, stone $3,000) — a real stretch for his own scale of business, by his own admission ("most cash I've had tied up in one item in a while"), and offered an unconditional buy-back at cost if the stone turns out to be nothing. Pushed once, at Alexander's request, for a same-day meeting with Marnie — sent two messages, no reply as of this visit's close. **The artificer now has a name; still unmet.**

        **Before leaving (`EVT-000282`), Alexander asked Walt to keep an ear out for C-Rank-and-above hunters with the same mindset he's recruiting for, and reminded him the standing offer on C-Rank-and-above cores still stands.** Walt was visibly moved rather than performing it — thirty years in the trade and no customer had ever offered him a real phone number before. Alexander gave his own. Walt called it a first, took it seriously, and put it in the pocket where the real money goes rather than the till. Committed to being the first call on both fronts — the artificer and anything else interesting that crosses his counter — going forward.

        **Called 2026-08-13 ~15:00 (`EVT-000320`).** Genuinely uneasy this time, not businesslike — Marnie has gone quiet, six messages unanswered against her normal responsive pattern. Asked whether Alexander should look into it himself, Walt was honest he didn't know if that was wise, then shared everything he actually has on her (see `ENT-000189`): her alias, no known address by her own design, a coffee stall near the Metro rail yards off Cermak as the one fixed meeting point. No new grey-market stock this visit — a genuinely slow week, not evasion.

        **Fifth visit, 2026-08-13 ~17:00 (`EVT-000324`).** Shown a maker's stamp hidden in a wallet's lining. Recognized the quality but tentatively — not certainly — placed it as close to Marnie's own hand, having handled her work before without ever watching her actually apply this specific mark. Visibly more worried than businesslike, same register as the earlier call.

        **The inquiry he promised, delivered and failed, 2026-08-14 ~14:00 (`EVT-000352`).** Walt honored the commitment made at `EVT-000333` — he asked his supplier contact about CONSULT, on the day he said he would. **It went badly (🎲 d100 3, natural critical failure).** He said the word and "temp badge," nothing further; the contact went silent, told him to lose his number if he ever said it again — **frightened rather than annoyed**, which Walt named explicitly — and hung up before Walt could ask anything else. Thirty years in the trade and he has never heard that man sound like that over a name. He called Alexander back with no lead and considerable unease, and volunteered a warning nobody asked him for: **"whatever this is, it's bigger than a missing artificer."** This is the second consecutive contact in which Walt is worried rather than businesslike, and the first time he has told Alexander to be careful about something without being asked. His usefulness on this thread is, for the moment, exhausted — his own network has closed against the question.

        **Shop visit, 2026-08-14 ~15:15-16:00 (`EVT-000372`-`EVT-000373`).** Alexander came in directly from Loomis Street and told him everything short of the dock: the building, the cameras, the manned blind spot his own math found, the van sitting exactly on that gap. Genuinely rattled rather than businesslike — the first time this session he's shown real alarm rather than worry. Pushed back hard and explicitly when asked to arrange a break-in specialist, refusing on the substance (real danger to Alexander and to Marnie if it goes wrong) even after Alexander tried to frame it as a favor owed; held the line without taking offense, correctly naming that his own worry for Marnie was exactly why he wouldn't help with that specific ask. Called **Rosalind Fenn** (`ENT-000198`) on the spot and vouched for her as a real, discreet investigator, deliberately leaving the specifics for her to get from Alexander directly. Referred **Duane** (`ENT-000199`) and the freight yard off Ashland (`ENT-000200`) for a private rentable training space, unprompted and unrelated to the Marnie thread — didn't ask what it was for. Showed his current stock: Cicero's Quiet [C-Rank] still unsold at $35,000; sold Alexander a mundane directional listening rig for $650; showed but did not sell a Channeling Focus [D-Rank] ($1,800, unconfirmed beyond Rank). No new grey-market stock beyond those two items this visit.

        **Called again 2026-08-13 ~19:30 (`EVT-000333`).** Heard the full evening's account without interrupting — the wallet's stamp, the coffee stall, the dock, the sweep, the stranger in the plain suit — and took it seriously rather than politely. **Loomis Street means nothing to him on its own** and he said so straight. But "CONSULT," temp badges, and somebody who talks like they know the trade rather than merely wanting to buy from it surfaced a real memory: a supplier of his mentioned, roughly two months back, a professional "processing operation" moving through the district — paid well, didn't linger, didn't explain itself. He didn't think much of it at the time and offers it as possibly nothing. He cannot reach that supplier at this hour and **committed to asking him directly tomorrow (2026-08-14)** — framed and meant as a real commitment rather than a brush-off, consistent with the first-call promise he made at `EVT-000282`. **A live pending world-side thread owed back to Alexander.**

        **Third visit, 2026-08-08 ~14:00-14:20 (`EVT-000212`).** Alexander returned in civilian clothes with ten E-Rank cores, declined a straight cash sale ($280 each quoted, up from the first visit's $220, crediting the established trust), and asked to see interesting stock instead. Walt opened his locked case: **Cicero's Quiet** untouched at $35,000, plus two smaller unlicensed pieces he couldn't fully price himself — a stripped, unmarked suppression cylinder off a decommissioning crew, and an awakened-made lockpick set. Let Alexander handle both, then handed both over at once when pressed, genuinely amused rather than resistant ("the closest thing to delight he shows," his own real laugh, twice in one visit — a first). Alexander's own read (unshared with Walt) established their operating methods — instrument/Gate-signature suppression for the cylinder and mechanism-reading reshaping for the picks — but **not either item's Rank or hidden origin**; both Ranks remain unconfirmed under the Profile 1.36 appraisal boundary recorded at `EVT-000214`. Walt still doesn't know the specifics, only that Alexander learned more about their operation than he did, and said so without pressing for it — asked once, lightly, to hear it "sometime, not tonight." Closed the deal at **fifteen cores total** (all of Alexander's private stash) for both unlicensed items, calling it fair without negotiating harder, and noted aloud that Alexander was offering everything he'd walked in with. Parted on real warmth — a genuine laugh at "square, triangle," a plain compliment ("better company than most of what walks through that door"), and an unpursued, undeliberate observation that Alexander was smiling under whatever was confusing him, which "wasn't there when you walked in."
```

---

### ENT-000206 — Sal Prykowski

Salvage-and-surplus importer in Chicago's light-industrial belt; Walt Adamik's supplier of roughly thirty years, and the man who went silent on the word CONSULT. Named to Alexander 2026-08-17. **Unmet.**

```yaml
id: ENT-000206
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000446
  game_date: "2026-08-17, ~10:40, warehouse district"
  real_date: "2026-08-05"
type: Character
subtype: salvage and surplus importer / grey-market supplier
scope: local
lifecycle: active
aliases:
  - name: "Sal Prykowski"
    quality: current
relationships: []
canonical_state:
  location: "Works out of a licensed salvage-and-surplus import operation in a light-industrial stretch of Chicago, two neighborhoods over from Walt Adamik's shop. **Street-level address established by public business registry (`EVT-000448`); Alexander has it and has not gone there.**"
  condition: "Healthy so far as anyone knows. **Frightened** — see `situation`. Not established as awakened, and no Flux Sight read has ever been taken of him."
  capabilities: "Runs a real, licensed importer of salvage and surplus on the surface — the clean paperwork a careful man in the grey trade keeps. Thirty years supplying Walt Adamik with stock of mixed provenance. **His actual reach, his other customers, and whether he handles mana-touched material himself are all unestablished.**"
  appearance: "Unestablished — never seen. Walt has described only how he sounded on a phone call."
  personality: "Unestablished by direct contact. Two secondhand data points, both Walt's: thirty years of ordinary business dealing without incident, and one call in which he was **frightened rather than annoyed** — a distinction Walt named explicitly and said he had never heard from the man before."
  situation: |
      **What he did, 2026-08-14 (`EVT-000352`).** Walt Adamik, honoring a commitment to Alexander, asked him about **CONSULT** and a temp badge — nothing more. Prykowski went silent, told Walt to lose his number if he ever said the word again, and hung up before Walt could ask anything else. Thirty years, and Walt has never heard him sound like that. He has not answered Walt since; Walt has deliberately not pushed again.

      **Roughly two months earlier**, the same man had mentioned to Walt — casually, as trade gossip — a professional *"processing operation"* moving through the district: paid well, didn't linger, didn't explain itself (`EVT-000333`). That remark and the CONSULT reaction are the only two things anyone has from him, and nobody has established that they are about the same thing.

      **Named to Alexander 2026-08-17 (`EVT-000446`).** Walt wrote the name and a rough working location on a scrap of paper and handed it over, three days after he could have. He was explicit about two things: **Prykowski is not the one who took Marnie** — as far as Walt knows he is a scared man who deals in stolen Gate salvage and heard a phrase that terrified him — and **he will not talk to Alexander cold**, and will know instantly who sent him the moment Walt's name comes up.

      **What a search turns up, 2026-08-17 ~11:15 (`EVT-000448`, 🎲 d100 66, partial success).** A clean business registration under his own name: a small salvage-and-surplus import outfit, licensed, unremarkable on paper. **An address**, in a light-industrial stretch Alexander does not recognize. **Nothing else** — no meaningful social presence, no visible connection to Loomis Street, Cormant Holdings, Meridian, or anything else in the Marnie thread. Whatever he is actually mixed up in is not anywhere a public search reaches, which is itself consistent with a careful man rather than evidence of anything.

      **Status: a real, unopened door.** Alexander has a name, an address, and a warning. He has not approached, called, watched, or mentioned him to anyone — including Owen, Fenn, or Nakamura.
```

### ENT-000207 — Nadia Adamik

Walt Adamik's granddaughter; Gate-touched three years ago and not helped since. The reason behind his standing want for high-Rank cores. **Unmet, and no one but Walt has ever mentioned her.**

```yaml
id: ENT-000207
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000446
  game_date: "2026-08-17, ~10:35, warehouse district"
  real_date: "2026-08-05"
type: Character
subtype: civilian; Gate-touched
scope: local
lifecycle: active
aliases:
  - name: "Nadia Adamik"
    quality: current
name_note: "Shares a surname with `ENT-000147` Walt Adamik. `tools/check_name_collision.ps1` returns REVIEW on that overlap by design; here the coincidence is the point — she is his granddaughter — so the shared name is deliberate rather than a collision to avoid."
relationships: []
canonical_state:
  location: "Unestablished. Chicago is implied by Walt's account and by his own presence; nothing narrower has been said, and no address, facility, or household has been named."
  condition: "**Gate-touched, not awakened** — Walt's own words, distinguishing the two deliberately. Wrong place, wrong time, roughly three years ago (≈2023). **Nothing licensed medicine offers has fixed it**, and BGM does not cover it because their books do not classify it as a combat injury. **What her condition actually is — symptoms, severity, whether it is stable or degenerative, whether she is independent — is entirely unestablished.** Walt gave the shape of the problem and none of its detail, and nobody asked."
  capabilities: "Unestablished. Not awakened; no Rank, no System, no combat relevance."
  appearance: "Unestablished — never seen or described. Her age is not established either, though 'granddaughter' plus a three-year-old injury bounds nothing usefully."
  personality: "Unestablished. She has never spoken on the page and Walt described her circumstances rather than her."
  situation: |
      **Disclosed 2026-08-17 (`EVT-000446`)**, in answer to a question Walt had deflected since `EVT-000157` — why an old pawnbroker with thin margins wants **C-Rank cores and above** specifically, when the shop cannot profitably move them.

      **The mechanism, as Walt has it:** he has been told quietly that the right artificer, working the right material — **high-Rank cores, not crystals, not gold** — could build something that *helps*. He was careful and repeated it: **help, not cure.** Whether that is true, who told him, and what such a device would actually be are all unestablished; it is a grieving man's secondhand hope, not a verified world fact, and nothing in the profile has been consulted against it.

      **Marnie (`ENT-000189`) was going to be that artificer.** This is the load-bearing consequence of the disclosure and it reframes the whole Marnie thread from Walt's side: her disappearance is not a business inconvenience to him and never was. It also means **two separate people now need Marnie found for reasons that have nothing to do with each other** — Alexander for the S-Rank dagger, the maker's stamp, and what CONSULT is; Walt for this.

      **Nobody outside Walt and Alexander knows any of it.** She has not been mentioned to Owen, Fenn, Nakamura, or anyone else, and Alexander has made no commitment regarding her — he has neither promised the cores nor refused them. What he did do is keep supplying the material and fund the operation, without either of them naming the connection out loud.
```

### ENT-000149 — The Cutting Edge Proprietor

Owner-operator of Cutting Edge (`ENT-000132`), the custom gear shop in Chicago's warehouse district. A working artisan rather than a shopkeeper, and rigidly licensed. Not yet given a proper name in play.

```yaml
id: ENT-000149
canonical_record: REC-000077
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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
  standing: "**Named as an informant risk, not a business option.** Per the pawnbroker (`EVT-000157`), its owner trades favors in both directions with Coalition compliance staff and repeats what is said in the shop. Nothing unprovenanced should be sold there and nothing said there that Alexander would not want relayed to a badge. The name is coincidental — no established relation to Denise Ferro (`ENT-000148`), whose crew Alexander worked for on 2026-08-04.

  **Visited, 2026-08-11 (`EVT-000286`).** Owner identified: **Petra** (`ENT-000183`), see her own entry for the meeting and the standing arrangement formed. The yard itself is exactly what it presents as — stacked scrap, sorted hardware bins — with nothing overtly unusual visible on a normal walkthrough."
```

### ENT-000168 — Milo

A hunter met at the Windy City Hunters Coalition's training grounds, 2026-08-05. Sensor-adjacent with minor perception ability but no notable combat skill; trains reaction footwork as compensation. **Surname `Brandt`, on the ledger's record — but he did not give it to Alexander**, who has only ever had "Milo"; the ledger is world-canon, not the protagonist's knowledge, and nothing has yet put the full name in front of him.

```yaml
id: ENT-000168
canonical_record: REC-000077
schema_version: "0.1.6"
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
  - name: "Milo Brandt"
    quality: current
  - name: "Milo"
    quality: current
canonical_state:
  signature_ability: "**None — correctly.** Under Profile Section 13.6 (1.42) a signature ability is authored for named NPC hunters at **D-Rank or above**. Milo is E-Rank: the gift is not absent, but too slight to name, file, or build a reputation on, which is why the boards record hunters at this Rank by working type and licence number instead. An empty field here is correct, not a gap. It may be named later if the fiction ever needs it, under the same no-magnitude limit as any other signature."
  rank: "**E-Rank** — **Authored at the 1.41 follow-up.** Awakened — he carries a minor perception-adjacent ability — but by his own account has no combat skill worth naming, and trains reaction footwork as a deliberate substitute for the striking gift he lacks. Resolved by that Rank under Section 13.1."
  pool_variance: "**−5%** — authored under Profile Section 6.1.2 (`EVT-000249`). Permanent, never rerolled. A small gift, honestly described by its owner as small. The shallow well is the character."
  pools: "**Maximum Health 38, maximum Mana 19** — Section 6.1 table (40 / 20) × 0.95, floored. Section 5.2 tier costs, read from their own maximum: **Minor 1, Signature 4, Boss-tier 9**. Section 5.3 running-dry threshold **4**."
  location: "Windy City Hunters Coalition training grounds (`ENT-000102`), staged at the Lakefront Gate Corridor (`ENT-000089`)"
  condition: "Healthy; athletic build, no notable combat capability by his own account."
  capabilities: "Minor perception-adjacent ability, unspecified. No combat skill worth naming, by his own admission. Trains reaction footwork — reading a partner's weight shift and calling pattern to react before the movement completes — as a deliberate substitute for the striking ability he lacks."
  appearance: "Roughly Alexander's age, wiry build, clearly conditioned for agility rather than bulk."
  personality: "Direct, easygoing, comfortable being watched and asked about his training. Not curious enough to press when something doesn't add up — noticed Alexander's uncanny first-attempt read of his drill and let the deflection ('I like running') stand without pushing."
  situation: "First meeting, 2026-08-05 (`EVT-000167`). Ran his reaction-footwork drill for Alexander twice — a legendary-success first pass and a strong-success second pass on a harder, feint-laced pattern — and was visibly startled both times. Told Alexander he's welcome back on the cones anytime. No relationship record yet; a casual acquaintance, not a standing arrangement.

  **Second meeting, 2026-08-12 ~14:15-15:00 (`EVT-000309`).** Alexander mentioned recruiting higher-Ranked hunters; Milo took it without self-pity, amused rather than stung — 'figured you weren't looking for footwork guys.' Ran three harder reps: the first clean, the second genuinely caught Alexander out (a real miss, satisfying to Milo — 'means you're human after all'), the third clean again. Openly unsettled by the third rep specifically — 'that's not normal,' said flat rather than accusing — but let it go without pressing, consistent with his established character. Doesn't know why Alexander is uncannily good at this; hasn't asked."
```

---

## Campaign Relationships

### REL-000062 — Windy City Hunters Coalition (institutional affiliation)

Defined in `110_WORLD_LEDGER.md` (`REC-000075`). Alexander's freelancer registration with the Coalition; as of 2026-07-23 it is the channel through which he was placed on Tanya Voss's crew.

### REL-000063 — Alexander's membership in Tanya Voss's crew

```yaml
id: REL-000063
canonical_record: REC-000077
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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
  - "**2026-08-15, 06:00–16:30 (`EVT-000398`-`EVT-000404`) — Saturday, and a first solo C-Rank dungeon kept as a promise rather than broken as one.** Woken with a kiss and cuddled back into the pillows before Owen was fully conscious; the two of them lay in for the better part of an hour before a shared workout on the balcony among the seedling pots, Owen dryly noting he's 'been swindled' by the man who calls calisthenics a date. Alexander ran the ten kilometres to the Cicero Scar in full kit, the twenty-second daily closing mid-run (streak 7→8).\n\n      **The afternoon reunion, and the reputation conversation.** Back on the balcony planting the same pots, Alexander told him the mining job was 'boring' and, kissing him, said he should have stayed home instead; Owen answered that boring is exactly what he wants for him. Alexander then stated flatly that he no longer needs harvest-hire work at all — he can solo C-Rank Gates and keep everything. Owen didn't dispute the capability; he named the actual reason Alexander still shows up (Ada, Dale, the reputation Alexander claims not to care about but visibly manages) and, more pointedly, held him to the specific, unkept term of `OBJ-25` — not a casual invitation to tag along, but backup mender and observer with an obeyed stop-call. Alexander's answer was to open the key on the spot: **'Watch me.'**\n\n      **The dungeon date.** Owen came as backup exactly as agreed, non-combatant throughout, and it held — his own evasion cleared the boss's coil-sweep without needing Alexander's intervention, and the promised stop-call was never tested because it was never needed. Watched Alexander clear a Crypt instance solo (five commons, two elites, a Serpentine boss) and cross Level 21→22 mid-fight; called it 'the level-up face' when it happened, delighted rather than alarmed. Mined the full deposit alongside him under a shared Resonance Extraction call, working competently and without asking how. Kissed mid-clear, over the boss's own corpse, after Alexander told him he was 'cute' in the middle of a fight — Owen's own words, delighted and incredulous in equal measure, that Alexander has 'the worst and somehow also the best taste' of anyone he's dated. Deflected a flirtation with real warmth rather than a flat no ('ask me again in an apartment with a working lock'), and got exactly that a few minutes later when Alexander closed the Gate and brought him straight home. **`OBJ-25` closes here** — the term Owen set for himself back on the boat, finally kept rather than overtaken by events a second time.\n\n      **The rest of the afternoon is not narrated**, consistent with how this relationship's intimacy has always been handled on the page."
  - "**2026-08-14 evening (`EVT-000381`-`EVT-000383`, `EVT-000386`) — thirty-eight packets of seed, and the first thing Alexander has actively hidden from him.** Alexander came to the Edgewater staff door unannounced at the end of a twelve-hour Friday shift, having sent no message, and handed over a bag of **thirty-eight seed packets** as a joke about flowers. **Character First — Owen's three-beat sequence lost its third beat again** (the second recorded instance after `EVT-000245`, and on a different trigger): surprise and giving-in arrived, the joke did not, and he stopped dead on the sidewalk with *'You're here.'* He then ended up **crouched on the pavement going through the packets like a hand of cards**, reading the back of a tomato packet, counting and losing the count, and named the calendar himself rather than the gesture: *'It's August. Half of these won't take until spring. You bought seeds for next year.'* He carried the bag himself for the rest of the night and set it against the wall rather than on the seat. It is the balcony from `EVT-000241` and `EVT-000245` bought without being asked for and without being announced.

      **What he was told about the trial, and what he was not** (corrected at `EVT-000389`). At Halvard's (`ENT-000202`) Alexander gave him an account that was **mostly true and short in one place** (`EVT-000382`) — the Gate's true B-Rank, System Rank C carried out of it, the swarm and the boss honestly, and, accurately, that it was a harvest job whose strike line Wade had not told him would run at half the legal roster. **The one omission is the near-death:** *'closer than I liked… I was prepared for that'* in place of **Health full to 0 in a single exchange** (`EVT-000340`). **Owen did not believe that part cleanly.** He repeated *'Wade didn't tell you it was live'* back as a flat non-question — **not because it was untrue, but because of what it implied about the roster** — named the euphemism as doing a lot of work for a man who had just bought seeds for next year, did the B-Rank-versus-his-Rank arithmetic aloud and stopped himself before finishing it, and then **deferred rather than dropped it**: *'I'm going to want to have that one. Not tonight. But I'm not going to forget you said it either.'*

      **The argument was about a promise, not a Gate.** Told *I am always prepared for these scenarios* and *I would never leave you*, Owen refused the promise on its face — *'That's not a promise you can actually make. You don't get to decide that from the inside of a fight'* — while taking his hand across the table, and named what he wants instead of fewer Gates: **a warning before, not a report after.** Pressed on the four B-Rank hunters (*'took your number, or actually said yes?'*) and on whether they were coming Monday, Alexander answered neither and said *'You're being difficult. Can't you be happy with me.'* **Owen's reply is the characterization to keep:** that he had been happy since the seeds, that asking the second question is literally his profession, and *'I can hold both.'* He did not escalate and did not sulk.

      Closed with an unprompted apology, *I love you*, a promise of **Saturday for the two of them after the morning's job**, and a long kiss in the street. He asked to be texted after the Wade meeting, said he would still be up, and was. **He knows there is a meeting with Wade at ten and that Wade is bringing the trial's loot; he does not know it is at an Ironline building, that it is in a parking lot, or that a forged report is any part of it** — none of that was said and no channel exists."
  - "**2026-08-11 ~19:45 (`EVT-000294`) — the apartment moment.** Told plainly, and smiling like a child, that they're getting the apartment tomorrow, Owen's reaction was fully unguarded — surprise, then real happiness, named apart from the day's harder parts: 'no asterisk.' Alexander told him he's happy about them too and can't believe he gets to live with a man he loves; Owen answered in kind, naming that the reflexive flinch he used to have at moments like this 'just isn't there anymore, not with you.' Earlier the same evening (`EVT-000291`), relayed by text rather than played on-screen: telling Priya went harder than either of them hoped — she took it with real hurt rather than anger, and asked Owen not to tell Julian or Renata before she does it herself. Owen asked to see Alexander that night specifically not to talk about the crew; the two spent the evening packing and talking, summarized rather than played turn by turn."
  - "**2026-08-11 ~09:50 (`EVT-000274`) — Owen names his own deflection reflex.** Walking the rest of the way to the Coalition, asked plainly whether he actually wants to found the crew, Owen caught his own tone shifting mid-answer — the reflex Alexander named back to him — and stopped rather than let it slide past. He acknowledged he had been answering the practical questions cleanly and then smoothing over the real fear underneath when asked directly: that his name is about to be on something for the first time in his life, and he does not know if he will be good at the parts that are not healing people. Said plainly, unprompted: **'I want this, and it terrifies me, and those aren't in competition.'** A beat later he caught a second thing — that the whole exchange had been about his own feelings — and turned it around to ask how Alexander is actually doing with everything moving at once, rather than continuing to hold the floor. Two observable behavioral firsts: naming his own deflection reflex aloud instead of being caught inside it, and catching his own self-focus and redirecting outward unprompted."
  - "**2026-08-11 ~09:50 (`EVT-000271`) — the crew question resolved.** Walking back from the collapsed rail cutting Gate, discussing how to fund Owen a proper C-Rank weapon, the two of them worked out that only a real posted Gate — and therefore a real crew — could supply a legitimately declared core; Priya's current crew is two combat-rated bodies short of a C-Rank legal minimum. Alexander asked, explicitly not pushing, whether Owen wanted to found a crew with him instead of joining Priya's properly, a guild, or borrowing his own part-time Bridgeport crew. Owen stopped walking, then said **yes** — his own words, that he has known since the second elite in the Overgrown Temple he would say yes to a real ask rather than one he had to talk himself into. Kissed on the spot. Immediately named the hard part himself, unprompted: **he still has to tell Priya to her face**, not because she will fight it but because she won't, and because walking out three days after she ceded Alexander field command is the exact betrayal he has never fully resolved in himself. **Not yet done as of this Event.** The two of them spent the rest of the walk toward the Coalition building bantering about recruiting a pitch for other C-Rank hunters — nothing scheduled, no name chosen, no members beyond themselves."
  - "**2026-08-09 night into 2026-08-10 morning (`EVT-000243`-`EVT-000245`) — two Character Firsts, and the first future said out loud.** Alexander carried him asleep from the couch to the bed without waking him, set his shoes down rather than dropped them, and kissed his forehead; Owen worked out in the morning that he had been carried and called it the nicest thing anyone had done for him in five years, *which says something bleak about the five years*. **Character First — Alexander said *I love you* first, unprompted, as the opening words of the day**, before coffee and before anything else; Owen named the significance himself, that it took Alexander a long time to say at all and is now the opening line. **Character First — Owen's deflecting joke failed to arrive.** Told he was loved *like you were going to live together*, and that he had finally outgrown himself and admitted he wants more, Owen put his coffee down and, for the first time since they met, the three-beat sequence (surprise, giving in, joke) had nothing to reach for. He answered plainly instead — five years of being the useful one, that people are lovely to you while you are useful, that he had named wanting more aloud for the first time in his life the previous night at twenty-seven, and that Alexander had worked it out first and offered him the thing rather than using it — then said *I really love you too* into his collarbone, crying and annoyed about it. Owen also named the wider change unprompted: that Alexander was not scanning the room, stood in his own kitchen with his whole face on display, and that **this is the best he has ever been — not stronger, better.** Alexander told him he could not be his instructor today. On the run they stopped outside the Rogers Park building and Alexander described a future on its balcony out loud — blinds, Owen's tomatoes and chillies, coffee before the run every morning — which Owen identified as the first sentence Alexander has ever said to him that assumed a next year: *first a drawer you didn't ask for, then a balcony, now every morning.* Agreed with total gravity: tomatoes, chillies, basil, a watering can he will leave out in the rain, and a flat refusal to swim the lake in February."
  - "**2026-08-09 evening (`EVT-000241`) — the apartment, the money, and a job with his name on it.** Owen came off a full Sunday shift to Alexander's apartment and was kissed at the door before it was fully open; his established three-beat sequence (surprise, giving in, joke) ran faster and heavier than usual, most of his weight coming forward. **Character First — Alexander stated plain want without routing it through logistics:** shown the listings, he said the criteria and then the reason underneath them, *I just want to have you*. Owen made him repeat it and named the change explicitly — a week and a half ago that sentence would have stopped at the logistics — and tied the balcony and the park back to his own earlier read of Alexander's flat, **you live like you're about to be told to leave**, calling the choice a man deciding to stay somewhere. **Character First — Owen named a want of his own out loud:** told by Alexander that he had wanted to be on the line rather than behind it and wanted to be stronger, he said no one had ever put it that accurately, that in five years he had never once said it aloud because it sounded ridiculous coming from a mender, and that he **liked** clearing the Overgrown Temple. He also disclosed the fear under it — not a D-Rank Gate, but that **he already knows he would say yes**, and has known since the second elite in that temple — and asked Alexander, as the one who reads a room correctly every time, to say so out loud if he ever starts wanting something that will get him killed, *especially* when he is annoyed about it. On money he refused to leave the split undefined, naming the mechanism he already refuses with Priya — ask for a premium and he stops being Owen and becomes **a rate** — and noted that Alexander is the first person who ever asked whether an arrangement was fair to him rather than whether he was free. Agreed: the Rogers Park two-bedroom in principle, a rent framework where he pays what a local one-bedroom would cost him and Alexander covers the upgrade, and a **confirmed posting sponsored on his own C-Rank card, split fifty-fifty, his half against the rent.** He deliberately did not answer on Priya's crew or on going into Gates permanently, and asked that the non-answers be noticed rather than read as refusals. Fell asleep against Alexander on the couch. Also, with total gravity: tomatoes, chillies and herbs on the balcony."
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
schema_version: "0.1.6"
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
  rank: "**Not authored — awakened status is not established.** Sable manages or brokers Gate work without any record of being awakened, and Section 9.4's support tier plus Preston Vaughn (`ENT-000108`, a guild chief executive who is explicitly not awakened) both show that a senior operator in this trade need not be. Assigning a Rank here would be inventing canon, so none is: no Rank, no pools, no Section 6.1.2 variance, and Section 13.6 does not reach a non-hunter. **Flagged for a ruling** rather than filled in."
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
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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
  - name: "Ruth Kowalczyk"
    quality: current
  - name: "Ruth"
    quality: current
canonical_state:
  rank: "**C-Rank** — stated in her own entry as a highly experienced C-Rank harvester; resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Her characterisation is endurance and read: she works a shifting heat vein rather than waiting for it to settle, which is a long-pool discipline."
  pools: "**Maximum Health 262, maximum Mana 131** — Section 6.1 table (250 / 125) × 1.05, floored. Section 5.2 tier costs: **Minor 13, Signature 32, Boss-tier 65**. Section 5.3 running-dry threshold **32**."
  signature_ability: "**Warm Hands.** Her mana reads heat and pressure through stone by touch, so she finds a live seam with a palm laid on rock rather than waiting for a rig to settle — which is exactly the shifting-resonance technique her entry already credits her with on Foundry-type ground. Descriptive; it decides method, never magnitude, and triggers none of Section 13.5's three effects."
  location: "Halsted Depot site, Chicago (ENT-000087); departed after the job"
  condition: "Healthy; not established as combat-active"
  capabilities: "Highly experienced C-Rank harvester, especially on heat-vein (Foundry-type) ground — reads a vein's own shifting resonance rather than waiting for it to settle, unlike cold-seam technique. Older than Alexander, unspecified further."
  appearance: "Older woman in worn coveralls, unhurried, watches her surroundings rather than her crewmates."
  portrait: "assets/portraits/Ruth_ENT-000143.png"
  personality: "Reserved, evaluative, sparing with approval — a short nod or an unremarked silence is her version of a compliment."
  situation: "Assigned the shared first vein alongside Alexander at the Halsted Depot job (`EVT-000095`); demonstrated heat-vein extraction technique, watched him adapt to it on one attempt (success), and told Sable afterward that she vouches for him — 'that's not nothing, she doesn't hand it out.'"
```

### ENT-000144 — Denny

Harvester on the Sable & Kern crew; younger, wiry, worked the second assigned vein alongside Kern. **Disambiguation: not `ENT-000179` Denny Osei**, a different harvest-element miner on the unrelated corporate-adjacent contractor's crew. The shared first name is coincidence, and both are live — prefer the full name in narration.

```yaml
id: ENT-000144
canonical_record: REC-000077
schema_version: "0.1.6"
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
  - name: "Denny Prosser"
    quality: current
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
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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
schema_version: "0.1.6"
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
state: "Wade Bishop pitched Ironline's structure (steady D-Rank/E-Rank strike flow, an assigned crew, gear stipend) and was candid that guild affiliation does not lift the E-Rank card's contract-Rank ceiling (Profile Section 19.4). Alexander asked for proof before deciding: a D-Rank strike trial with a properly-Ranked crew, and a B-Rank harvest trial.

  **The D-Rank trial ran 2026-08-08 (`EVT-000201`-`EVT-000207`).** Alexander took unassigned field command mid-trial and closed it solo; the Gate proved to be Ironline's own guild-held contract, arranged specifically to recruit him, with no BGM or Coalition filing. He demanded 50% of the contract's value and full field command as his price for further consideration; Wade couldn't grant it unilaterally but carried it upstairs.

  **Resolved 2026-08-11 (`EVT-000284`).** Wade called back: Brannigan's office countered at **35% plus full lead credit on the contract record**, not the 50% demanded — Wade was honest he personally pushed for 50 and lost. The still-owed **B-Rank harvest trial is now confirmed and dated: 2026-08-14, 08:00**, a legitimate site past the Region V line. Alexander deferred any decision on Ironline to after that trial rather than accept or reject the split now. See `140_OBJECTIVES.md` `OBJ-23` for the live status.

  **The trial ran 2026-08-14 (`EVT-000338`-`EVT-000346`) and changed the relationship's actual shape.** The crew ran with no lead and no coordination, same failure mode as the D-Rank trial; worse, it ran at 4 combat-rated hunters against Profile Section 9.4's legal minimum of 8 for a B-Rank posting — a genuine crime, not a posting-floor shortfall, and Wade confirmed it outright when confronted. In exchange for Alexander's discretion before Wade's end-of-day report, Wade accepted: retroactive roster inclusion, sight of the report before filing, the standard harvest and combat-contribution shares as owed fact, and an ongoing unofficial arrangement supplying contacts, hunters, artificers, and information on request. **This relationship is no longer a pending recruitment overture alone** — it now carries real leverage in Alexander's favor, and Wade knows it. The Ironline decision itself remains genuinely open, owed as a separate call on 2026-08-15.

  **Named out loud by both of them, 2026-08-14 22:00 (`EVT-000384`).** Alexander closed the lot meeting with *'This partnership might work'* — said dry, and deliberately made clear it is not a partnership. Wade agreed without resentment and stated the shape himself before he drove off: not a partner, but the man holding a filed violation over Ironline who also wants things Wade can get him, useful for exactly as long as that is true on both sides, and both of them knowing what happens to the arrangement the day it stops being true for either. He said he would rather work it honest at that level than pretend it is something warmer.

  **What the arrangement has actually produced so far:** the payout figures (`EVT-000371`), the Watcher Torso physically delivered, sight of the unfiled report — including the forged roster, disclosed unprompted — a standing rejection pipeline (`OBJ-28`), and a brokered artificer introduction (`ENT-000203`). What it has not produced is any change in Ironline's staffing conduct, which Wade stated plainly he will not be delivering. **The Ironline decision is still owed today**, now weighed against a report Alexander is physically holding rather than against Wade's pitch."
history: "Formed 2026-08-04 when Wade Bishop approached Alexander unprompted at the Red Line Corridor, having heard favorable word from Ada Reyes and Dale Pruitt."
```

### REL-000069 — Alexander and Walt Adamik: silent partner, not fence

```yaml
id: REL-000069
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000447
  game_date: "2026-08-17, ~10:45, warehouse district"
  real_date: "2026-07-27"
endpoints:
  - ENT-000125
  - ENT-000147
type: business-partnership
qualities: "**Recharacterized 2026-08-17 (`EVT-000447`) from `informal-fence` to `business-partnership`.** For thirteen days this was an outlet: Alexander brought unsellable private material, Walt quoted fair and asked nothing, and each visit was its own closed transaction. It is now a **funded, ongoing commercial venture with agreed terms and an equity relationship**, and the change was named out loud by both of them rather than drifting into. Alexander supplies capital, high-Rank material, and a standing sponsor's backing; Walt runs the floor — sourcing, moving goods, hiring, and staying invisible — and takes the operating risk. Both are still exposed to felony risk by every transaction. **What is new is that they are now exposed to it together, and to each other's failure**, which is a materially different relationship from two careful people trading across a counter.

  **Alexander now holds real leverage he did not hold before, and did not seek:** Walt's reason for wanting C-Rank cores is disclosed, personal, and unresolved (`ENT-000207`), and Walt's operation runs on Alexander's money. Neither party has named that, and it sits under the arrangement unaddressed."
state: "**Made a partnership 2026-08-17 (`EVT-000446`-`EVT-000447`), out of a confrontation rather than a negotiation.**

  **What Alexander gave first, with no price attached.** One **Beast Core [C-Rank]** on the counter, refused payment for — the material Walt named as his actual want at `EVT-000157` and had never been offered since. Asked what it was worth *to him* rather than on the market, Walt's first two answers were poor: a repeat of standing terms he had already given (first look, best price, cost-price discretion), then a discount on Cicero's Quiet, which Alexander declined flatly as a downgrade on his current loadout. Pressed a third time on whether a partial answer was worth $7,000 of material, Walt stopped selling and disclosed instead.

  **The disclosure, and why it landed badly first.** Walt's granddaughter **Nadia Adamik (`ENT-000207`)** was Gate-touched — not awakened — three years ago; nothing licensed has helped, BGM does not cover it, and he has been told quietly that the right artificer working high-Rank cores could build something that helps rather than cures. **Marnie was going to be that artificer.** That is the whole reason behind the want-list he has deflected since `EVT-000157`. Alexander took it as sentiment offered in place of value and said so; Walt agreed, named it as him getting in his own head, and produced the actual trade.

  **The name, and the confrontation it caused.** Walt handed over a scrap of paper: **Sal Prykowski (`ENT-000206`)** — the supplier who went silent on CONSULT at `EVT-000352` — with a rough working location, a door Walt had deliberately kept shut for three days. Alexander put the contradiction to him directly: *you told me Marnie is the one who could help your granddaughter, and when I offered to find her you protected the man who might know why she's gone.* Walt did not defend it. He named it as fear rather than judgment — he had told himself he was protecting a source and was in fact hoping the danger would resolve without him having to hand it to anyone — and he agreed that it made no sense against his own stake in it. **Alexander then said the relationship as it stood was not working: Walt cannot want his help and also wait for him to show up holding something valuable first.**

  **The terms Alexander set, and Walt took.** Not a favor and not charity — a stake. Walt goes bigger: outbid other grey-market dealers, build real capacity, and build a monopoly on mana-touched goods specifically. Alexander funds it, takes a share of the profit, and holds first refusal on anything interesting that crosses the counter. **His three conditions, stated as conditions: partners, no undercuts, no secrets** — the third aimed squarely at the three days Walt had just admitted to. Walt accepted, but priced the real cost before he did rather than after: going bigger means being *seen*, and mana-touched material is exactly the category that made a thirty-year contact hang up on him. He asked for structure that keeps them both off a radar and asked what 'silent partner' actually meant in practice. Answered — he runs the floor, Alexander funds scale and takes profit — he shook on it.

  **The capital, and the demonstration.** $40,000 cash, Walt's own costed figure for storage, two vouched people, and buying inventory outright. Alexander delivered it and then, unasked, **withdrew the Quickknife [C-Rank] into the air above the counter and caught it falling** — a deliberate reveal, for trust and for a measure of pressure, so that the money would not read as something given for nothing. Walt did not flinch, said the demonstration was not needed for trust, and admitted it answered a question he had been too polite to ask for weeks. He pocketed the cash without counting it. See `ENT-000147` for the exposure consequence.

  **Standing since (`OBJ-29`):** first demonstrable result due **2026-08-24**; both directions of contact now obligatory rather than courteous — Walt calls with anything, including bad news, rather than waiting for a visit.

  **Historical — the fence arrangement this supersedes. Upgraded 2026-08-05 (`EVT-000157`) from a one-off sale to a working supplier arrangement**, on Alexander's explicit proposal that trust is earned by doing rather than waiting. The pawnbroker's stated terms: a private handwritten tally marked rather than named so it points nowhere under a search; fair quotes; no questions past what he needs to move goods safely; consistency valued above any single windfall.

  **Second transaction:** ten E-Rank cores paid against a nine-core asking price, deliberately over, for three pieces of information (warehouse-district trust map, BGM's real flagging mechanics, Cicero's Quiet's true provenance). Private core stash 22 → 12. No cash moved this visit — Alexander explicitly chose knowledge and advantage over dollars.

  **Two open threads.** (1) The pawnbroker's own want-list is **C-Rank cores and above**, for a purpose he began to state and deliberately withheld; Alexander answered *not yet* and the reason remains unestablished. (2) He agreed to broker an introduction to an **unlicensed artificer** — real quality work, never asks an unnecessary question — as a consultation rather than a commission, explicitly putting his own name on Alexander. $200–300 cash for an hour, possibly waived; the artificer takes no gold or crystals; timing is the artificer's own. **Not yet made.**

  Historical: first transaction completed 2026-08-04 — one E-Rank core sold for $220 cash, below the $375 licensed anchor, reflecting his risk/movement discount on a first-time, no-track-record sale. He indicated then that the rate improves with demonstrated trust and repeat business. Also showed Alexander **Cicero's Quiet [C-Rank]** (a named artifact, confirmed genuine), quoted at $35,000; not purchased, and still sitting in his case."
history: "Formed 2026-08-04 when Alexander, window-shopping ahead of a 14:00 harvest job, entered the shop, asked about the locked case, and later tested the pawnbroker's willingness to buy unprovenanced goods. Deepened 2026-08-05 into an ongoing arrangement with an information trade and a pending artificer introduction (`EVT-000157`). **Became a funded business partnership 2026-08-17 (`EVT-000447`)**, after a confrontation over three days of a withheld contact name — the first time either of them has raised a grievance with the other rather than trading around it."
```

### ENT-000148 — Denise Ferro

Harvest-crew lead running a Coalition-posted C-Rank job at a warehouse-district rail-corridor site; brisk, professional, unbothered by a solo freelancer working his own marked-off section. Checked Alexander onto the manifest, briefed him on the site's four-hour window, and processed his declared count without comment beyond confirming it.

```yaml
id: ENT-000148
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**Not authored — awakened status is not established.** Denise Ferro manages or brokers Gate work without any record of being awakened, and Section 9.4's support tier plus Preston Vaughn (`ENT-000108`, a guild chief executive who is explicitly not awakened) both show that a senior operator in this trade need not be. Assigning a Rank here would be inventing canon, so none is: no Rank, no pools, no Section 6.1.2 variance, and Section 13.6 does not reach a non-hunter. **Flagged for a ruling** rather than filled in."
  location: ENT-000087
  condition: "Healthy; hard hat and Coalition-branded harvest vest, clipboard and tablet manifest"
  capabilities: "Runs Coalition-posted harvest-labor crews; brisk and process-driven rather than personable. Not established as a combatant."
  appearance: "Fifties, white, short and square-built, with the flat-footed stance of someone who runs a staging line standing up all day. Iron-grey hair cut bluntly at the ear; reading glasses she pushes up and forgets about; a brisk, unsmiling face that is not unfriendly so much as fully occupied. A clipboard she still prefers to a tablet, and a hi-vis vest worn over ordinary clothes. Says a hire's name once, at intake, and does not say it again unless there is a problem."
situation: "Ran the 2026-08-04 C-Rank harvest posting near the old rail corridor — two other freelancers plus Alexander, each with an individually marked section, standard 80/20 split (her cut off the top). Checked Alexander's twenty declared crystals against her own tally without discrepancy and closed the manifest on schedule at 18:00. Later named him 'near the top of her list for future work needing a hitter who doesn't need his hand held' (`OBJ-20`).

  **Texted 2026-08-12 evening (`EVT-000312`).** Answered honestly rather than encouragingly: nothing available, her crew's mid-contract for two more weeks. Confirmed Alexander stays on her list regardless."
```

### REL-000070 — Alexander's harvest-hire standing with Denise Ferro's crew

```yaml
id: REL-000070
canonical_record: REC-000077
schema_version: "0.1.6"
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
state: "One completed C-Rank job (2026-08-04): twenty C-Rank crystals declared from Alexander's own marked section, standard 80/20 split, ≈$40,000 net pending Coalition processing (still processing as of 2026-08-05, under 24 hours old). No standing arrangement for future postings. **2026-08-05 follow-up (`EVT-000148`):** Alexander texted asking to be kept in mind for further work; Denise replied briskly that nothing is confirmed yet but two leads might firm up this week, and she'd ping him first if either does. **2026-08-05 in person (`EVT-000167`):** met by chance at the Coalition; her crew is between jobs, chasing paperwork on the last one, nothing to offer today, but she named him near the top of the list for a future job needing 'a hitter who doesn't need his hand held.' **2026-08-10, text follow-up (`EVT-000257`):** nothing on her board today, same as the others he checked, but her reply escalated past the earlier brisk warmth — *'You're still top of my list when something comes in. I'll call you myself, don't wait on a posting.'* The closest thing to an explicit standing promise she has made him yet. **2026-08-11, text follow-up (`EVT-000283`):** still nothing to report — *'still sorting the next one out, promise I haven't forgotten you'* — the same standing promise reaffirmed, no new information."
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

### ENT-000169 — Voula Stamatis

```yaml
id: ENT-000169
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000177
  game_date: "2026-08-06 ~11:50 -05:00"
  real_date: "2026-07-28"
type: Character
scope: campaign
lifecycle: active
aliases:
  - name: "Voula Stamatis"
    quality: current
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

### ENT-000170 — Nikitas

```yaml
id: ENT-000170
canonical_record: REC-000077
schema_version: "0.1.6"
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

### ENT-000172 — Curtis Marsh

An employee of Titan Secure (`ENT-000171`), reached by phone during Alexander's guard-job pretext call, 2026-08-06 (`EVT-000188`). Ordinary, brisk, and entirely uninterested beyond correcting the mismatched pretext and politely declining to name a client.

```yaml
id: ENT-000172
canonical_record: REC-000077
schema_version: "0.1.6"
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
  - name: "Curtis Marsh"
    quality: current
  - name: "Marsh"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); reached by phone only, exact location unestablished"
  condition: "Healthy; voice only, never met in person"
  capabilities: "Ordinary employee of Titan Secure, handles phone inquiries. Not established as combat-active or otherwise notable."
  appearance: "**Never seen — voice only.** The single contact was a phone call (`EVT-000188`), so no physical description is established and none is authored here; inventing one would record as canon something the fiction has never shown. What *is* established is the voice: a flat, mid-range, faintly nasal Chicago delivery, unhurried, with the practiced patience of someone who answers this phone all day and has heard a confused pretext before. Keyboard audible under the call throughout."
  personality: "Bored-professional, helpful within limits, genuinely unbothered by a stranger's confused pretext. Holds a clean line on client confidentiality without needing to be pressed twice."
  situation: "Answered Alexander's call under his guard-job pretext (`EVT-000188`); corrected him that Titan Secure does access control, not staffing, volunteered the company's general client base (commercial, warehouses, car lots), and declined outright to name which client sits at the fenced warehouse (`ENT-000166`). Ended the call first. A second call from Alexander on any pretext is now materially harder."
```

### ENT-000173 — Reggie Calloway

Point man on Wade Bishop's borrowed four-hunter D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000173
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**D-Rank** — licensed D-Rank hunter on Ironlines 2026-08-08 trial crew; resolved by that Rank under Section 13.1."
  pool_variance: "**+5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Point element — he reads and takes doors first, which makes him the man who absorbs first contact for the crew."
  pools: "**Maximum Health 105, maximum Mana 52** — Section 6.1 table (100 / 50) × 1.05, floored. Section 5.2 tier costs: **Minor 5, Signature 13, Boss-tier 26**. Section 5.3 running-dry threshold **13**."
  signature_ability: "**Threshold.** For the moment he crosses an opening, his mana reads what is on the other side of it. It is why he takes doors first, why the crew lets him, and why he is dry about it. Reach and method only; his strikes remain D-Rank standard hits and no Section 13.5 effect attaches."
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Favoring a bruised shoulder taken crossing the elites' chokepoint; upright, no injury tier, untreated"
  capabilities: "D-Rank licensed hunter, point-element specialist — reads and takes doors first. Dry, understated manner under pressure."
  appearance: "Late thirties, Black, tall and long-limbed with a spare, economical build — no more muscle on him than the job requires and none of it for show. Close-shaved head, a short beard going patchy grey at the chin, heavy-lidded eyes that make him look bored right up until they don't. Serviceable D-Rank kit, scuffed hardest across the left shoulder and forearm where a man who goes through doorways first would wear it. Stands slightly angled to whatever door is nearest, out of habit rather than intent."
  personality: "Direct, self-aware about his own bad habits (dry deflection under adrenaline); genuinely grateful rather than proud once corrected on it."
  situation: "Assigned point by Wade for the trial. Ate the first cluster's ambush unwarned — no lead had been called — and was pulled off it by Alexander's Exploit-Pattern-read Twin Fang kill before the creature could do worse. Snapped dry immediately after being freed; caught and corrected himself unprompted once Alexander called it out, thanking him plainly. Confirmed to Alexander, honestly, that Ironline crews normally have an assigned lead before entry and that this trial's lack of one was Wade's deliberate omission, not standard practice. Contributed to the declared loot pool from the ten kills (11 crystals, 3 cores, split under the standard leader's-cut convention once filed). No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000174 — Bhavna Iyer

Support gunner and sensor operator on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000174
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**D-Rank** — licensed D-Rank hunter on Ironlines 2026-08-08 trial crew; resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Ranged support and sensor-rig operator; nothing in her record pulls her off the median in either direction."
  pools: "**Maximum Health 100, maximum Mana 50** — Section 6.1 table (100 / 50), flat. Section 5.2 tier costs: **Minor 5, Signature 12, Boss-tier 25**. Section 5.3 running-dry threshold **12**."
  signature_ability: "**Tally.** Her mana counts living things in a space rather than placing them — a number before a direction. It is the gift behind the population read she delivered at Gate entry on the 2026-08-08 trial (twelve commons, two elites, a boss), which matched Alexander's independent Keen Sense confirmation exactly. Descriptive; no magnitude, no Section 13.5 effect."
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Untouched, no injury"
  capabilities: "D-Rank licensed hunter, ranged support and sensor-rig operator — first population read at Gate entry (twelve commons, two elites, boss, matching Alexander's independent Keen Sense confirmation)."
  appearance: "Thirties, South Asian (the Iyer name), of average height and neatly, unremarkably built. Black hair cut to the jaw and clipped back off her face; steady dark eyes; an even, professional expression that does not shift much whether she is being thanked or contradicted. Carries a shoulder-mounted sensor rig she treats as expensive equipment rather than as a prop, and keeps a hand near it. The tidiest-looking member of a borrowed crew, in a way that reads as competence rather than fussiness."
  personality: "Professional, unbothered by pressure, holds her ground plainly when criticized rather than deferring."
  situation: "Provided the opening sensor read and covered from range throughout, though columns denied her a clean line at the first cluster and she never fired a shot in the whole trial — the boss died to Alexander's ambush before she had an angle either time. Pushed back directly when Alexander criticized her for not firing sooner, correctly noting she'd had no clean shot through structural cover without risking her own crew. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000175 — Foster Nakashima

Perimeter/overwatch element on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000175
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**D-Rank** — licensed D-Rank hunter on Ironlines 2026-08-08 trial crew; resolved by that Rank under Section 13.1."
  pool_variance: "**−5%** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Perimeter and rear-guard, with a faded self-stitched BGM sensor-training patch — the least front-line of the four, and the one whose role has never asked for depth."
  pools: "**Maximum Health 95, maximum Mana 47** — Section 6.1 table (100 / 50) × 0.95, floored. Section 5.2 tier costs: **Minor 4, Signature 11, Boss-tier 23**. Section 5.3 running-dry threshold **11**."
  signature_ability: "**Backstop.** His mana fixes a line behind the crew and tells him the instant anything crosses it — a perimeter **sense**, not a barrier. **This deliberately does not trigger Section 13.5's warden effect:** that effect attaches to a signature that raises a held barrier or physically holds a line, and his does neither. He knows what came through; he does not stop it. The faded, self-stitched BGM sensor-training patch on his sleeve is the same story told in cloth."
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "Untouched, no injury"
  capabilities: "D-Rank licensed hunter, perimeter awareness and rear-guard — a faded BGM sensor-training patch on his sleeve, self-stitched."
  appearance: "Forties, Japanese-American, of middling height and solidly built, with the settled heaviness of a man who has stopped growing into the job and simply does it. Greying black hair worn a little shaggy, a wide flat face, dark eyes that keep moving over the edges of a space rather than its middle. Older D-Rank kit, well past fashionable and immaculately kept, with a faded BGM sensor-training patch stitched back onto the sleeve by hand — the stitching visibly his own, and visibly redone more than once. Habitually stands where he can see the way everyone came in."
  personality: "Quiet, watchful, says little; the crew's steadiest presence under the chaos of the first ambush."
  situation: "Held the six the entire trial without incident; nothing ever came from behind. Drew one elite off its post with deliberate noise during the compressed second-cluster clear, letting it be isolated and killed apart from its partner. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

### ENT-000176 — Callie Dunmore

Floater/flex striker on Wade Bishop's borrowed D-Rank trial crew, 2026-08-08. Named in play.

```yaml
id: ENT-000176
canonical_record: REC-000077
schema_version: "0.1.6"
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
  rank: "**D-Rank** — licensed D-Rank hunter on Ironlines 2026-08-08 trial crew; resolved by that Rank under Section 13.1."
  pool_variance: "**None** — authored under Profile Section 6.1.2 at the 1.41 adoption (`EVT-000248`). Flex striker who goes wherever the fight opens; a median pool is what lets her be everywhere rather than decisive anywhere."
  pools: "**Maximum Health 100, maximum Mana 50** — Section 6.1 table (100 / 50), flat. Section 5.2 tier costs: **Minor 5, Signature 12, Boss-tier 25**. Section 5.3 running-dry threshold **12**."
  signature_ability: "**Slip.** A short mana-driven acceleration into a gap that has just opened, which is why she is never quite where she was. It is the whole of her flex-striker habit of going wherever the fight opens rather than holding a post. Positioning only — her strikes land as D-Rank standard hits and no Section 13.5 effect attaches."
  location: "4110 W Fullerton, Chicago — the confirmed D-Rank Gate site (`worlds/gatefall/`); left the Gate at trial's close"
  condition: "A shallow forearm gash, self-treated/ignored, no injury tier"
  capabilities: "D-Rank licensed hunter, flex striker — goes wherever the fight opens rather than holding a fixed post."
  appearance: "Mid-twenties and reading younger, white, small and quick and never entirely still — up on the balls of her feet more often than not. Reddish-brown hair cut short and messily, freckles across the nose, wide pale eyes that go straight to whoever in a room has the most reputation. Mismatched D-Rank kit, some of it obviously secondhand, worn with more enthusiasm than system. The newest-looking hunter on any crew she is on, and the first to say so."
  personality: "Restless, eager, openly impressed by reputation; the youngest-reading member of the borrowed crew."
  situation: "Closed on the ambushed Reggie fastest of the crew but arrived after Alexander had already resolved it. Backed Reggie on the left-side beast during the first cluster's clear without landing the finishing blow. Contributed to the declared loot pool. No standing relationship formed; Alexander does not intend further contact."
```

**Correction, recorded for provenance:** this NPC was first narrated under the name "Reyes" before the Runtime caught the collision with the already-established `ENT-000134` Ada Reyes. No canon was written under the wrong name; the alias above records the false start for the transcript's sake only.

### ENT-000177 — Elias Ward

Seller at an unnamed surplus/pawn shop in Chicago's warehouse district. The shop remains incidental and has not been promoted to its own persistent place object.

```yaml
id: ENT-000177
canonical_record: REC-000077
schema_version: "0.1.6"
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
  appearance: "Sixties, white, thin and slightly stooped, with the pallor of a man who keeps shop hours in a building with no windows worth the name. Wispy grey hair combed over without conviction; a long face; watery eyes behind smeared glasses he cleans on his shirt and does not improve. A cardigan gone through at both elbows over a shirt buttoned to the throat. Sits behind the counter of a crowded surplus shop among stock he can locate by memory and not by system."
  situation: "Sold Alexander Pendragon a Gate Direction Finder [E-Rank] with its calibration key and a six-month warranty for $800 cash. The device's origin and Elias's motives remain unestablished. He was not told about the System or the private Keen Sense result.

  **Repair, 2026-08-11 — an omission from the original sale.** At that same sale he also made a standing informal offer, never previously recorded: he occasionally gets other unusual stock through — grey-market items, sometimes information — and told Alexander to come back and ask first rather than let him fence it out to whoever walked in. Corrects an under-recorded gap in `EVT-000216`; no new fictional time or state, only the missing fact.

  **Second visit, 2026-08-11 ~11:15 (`EVT-000285`).** Alexander returned on that standing offer. Elias showed two pieces: a compact resonance dampener (cruder than Alexander's own Suppression Emitter, declined) and a sealed envelope — a name and a pattern he'd heard repeated near the district's cold-storage lot, source unspecified. Sold the envelope for $400 cash. Honest about the limits of his own network when pressed for hunter contacts — pointed to Ferro's Reclamation (`ENT-000150`) as more socially connected than himself, corroborating Walt Adamik's earlier warning about its owner's Coalition compliance ties independently."
```

### ENT-000181 — Corinne Whitlock

Leasing agent for Lakeline Residential, handling the Rogers Park two-bedroom listing central to `OBJ-15`. Renamed by owner ruling from a briefly-authored 'Denise' that collided with harvest-crew lead Denise Ferro (`ENT-000148`); only her recorded voicemail greeting had been heard before this session.

```yaml
id: ENT-000181
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000256
  game_date: "2026-08-10 ~14:00 -05:00"
  real_date: "2026-07-31"
type: Character
subtype: leasing agent
scope: local
lifecycle: active
aliases:
  - name: "Corinne Whitlock"
    quality: current
canonical_state:
  location: "the Rogers Park two-bedroom listing, second-floor front"
  condition: "No injury or impairment established."
  capabilities: "Leasing agent for Lakeline Residential; brisk, professional, tactful — gave the couple room on the balcony and in the second bedroom without being asked. No Rank, faction, or combat capability established; a civilian."
  appearance: "Late forties, white, trim and carefully put together — a good blazer, low heels she can actually walk a building in, a lanyard of unit keys she manages without rattling. Blonde hair cut to the shoulder and blown out; light eyes; a warm, practiced, entirely professional smile that arrives on cue and leaves the same way. Carries a tablet with the listings on it and glances at it far less than she pretends to. Steps out onto a landing at exactly the right moment to give people a minute alone."
  situation: "Met Alexander and Owen in person for the first time 2026-08-10, 2:00 PM (`EVT-000256`), after a front-desk coordinator (unnamed, same firm) booked the slot off Alexander's morning callback. Walked them through the full flat — balcony, second bedroom, bathroom — confirmed the unit was updated four years back (plumbing and electric), quoted terms exactly as listed ($1,950/mo, first and last plus one month's deposit, no broker's fee), and took the application on the spot at the couple's request. Told them landlord sign-off is typically fast, two to three business days for standard processing. No further history established."
```

### ENT-000182 — Reyna Castillo

C-Rank striker, currently without a crew. Kesha Morrison named her on the spot as the first real candidate for Alexander and Owen's crew, 2026-08-11.

```yaml
id: ENT-000182
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000273
  game_date: "2026-08-11 ~09:55 -05:00, Coalition desk"
  real_date: "2026-08-01"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Reyna Castillo"
    quality: current
relationships:
  - REL-000095
canonical_state:
  rank: "**C-Rank**, Coalition-registered — one of the Coalition's 22 (`worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md`, `membership_rank_distribution`). Resolved by that Rank under Profile Section 13.1."
  signature_ability: "**Measure.** Her mana runs down the blade into whatever it touches and comes back with what is left in the thing — how much fight is still standing in front of her, read through the weapon at the moment of contact. A striker's gift that is really an assessor's, and the reason her insistence on seeing a plan before she signs onto it reads as professional judgment rather than nerves: she is the member of a crew who knows *first*, and by the hit rather than the guess, that a pull has gone wrong. Method and reach only; no magnitude beyond a C-Rank standard hit and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy; not currently engaged on any posting."
  capabilities: "C-Rank striker, six years licensed — an experienced hand currently choosing not to take combat crew work rather than being unable to get it."
  appearance: "Early thirties, Latina, of average height and compactly, durably built — six years of the work with none of the showiness some of it produces. Black hair cut to the shoulder and tied back out of the way; steady dark eyes that hold contact a beat longer than is comfortable when she is deciding something; a level, unhurried face that does not spend expression it doesn't need to. Her kit is good, thoroughly maintained, and has plainly not been worn in anger for about six weeks. **Authored ahead of the first face-to-face meeting** (locked for 2026-08-15 19:00, `EVT-000318`), so the entry is table-ready when it happens; nothing here has been shown to Alexander yet."
  personality: "Businesslike and economical, in text and by report — brief replies, no small talk, and a flat refusal to commit to anything she has not seen for herself. Not gun-shy in the sense of frightened: she waited five extra days to meet both crew leads together rather than take the faster meeting, which is a person exercising judgment rather than avoiding a decision. Says the uncomfortable thing plainly ('I got burned trusting a plan I never saw') instead of working around it."
  situation: "**Named, not yet met.** Kesha Morrison surfaced her by name when asked to help staff Alexander and Owen's new crew (`EVT-000273`): Reyna's five-hunter crew broke apart roughly six weeks ago after a D-Rank pull went bad — two members quit outright after a near-death the crew's own lead had walked them into under-prepared, and the crew never re-formed. Since then Kesha's desk has only placed her on solo-eligible E/D-Rank support work; Reyna has not signed onto another combat crew in the interval. Kesha's read, given secondhand rather than confirmed: 'good striker, gun-shy about who she trusts to plan a pull now, and I don't blame her.' No direct contact with Alexander or Owen yet — Kesha is proposing to reach out on their behalf, not handing over her number unasked.

  **Kesha's callback, 2026-08-11 afternoon (`EVT-000296`).** Reyna is genuinely interested but won't commit blind — her own words to Kesha: 'I got burned trusting a plan I never saw. Not doing that again.' She wants to meet Alexander and Owen in person before saying yes to anything. Kesha gave her Alexander's number.

  **Direct contact made, 2026-08-11 ~21:00 (`EVT-000298`).** Alexander texted her himself rather than let it stay secondhand. Her reply was brief and businesslike: appreciates him reaching out personally, still won't commit over text, wants a time named for an in-person meeting.

  **Scheduled, 2026-08-12 (`EVT-000306`).** Given the choice of meeting Alexander alone today or waiting for both him and Owen, she chose to wait, without hesitation: 'I said what I said about seeing the whole picture, and I meant it. I've waited six weeks, I can wait five more days for the version that actually matters.' Locked for Saturday (2026-08-15), both of them.

  **Time confirmed, 2026-08-13 (`EVT-000318`).** With Ada Reyes's harvest job taking the morning, the meeting locks to **7 PM**. No conflict remains. Location still to be named.

  **MET, 2026-08-15 19:00 (`EVT-000409`), the Loyola lakefront.** Alexander proposed the park over a café on the reasoning that she'd prefer somewhere natural; her reply — *'Good choice'* — was the first thing she had said to him in six days of contact that was not strictly business. She was standing rather than sitting when they arrived, watching the water instead of the path, and opened by stating exactly what Kesha had given her and asking for the rest directly.

  **What she actually pressed on, through three attempts.** Not Owen's readiness and not Alexander's decision-making method — both of which he answered first, and neither of which she had asked about. Her question was whether a bad call, by anyone who matters to the crew, gets **named out loud in front of everyone or quietly managed**, and she declined to accept the adjacent answers, quoting his own words back at him to show the gap. She named the reason without being asked: her last lead gave her the good version — team, communication, all the right nouns — until the actual bad call turned into a training moment nobody named. That is the six weeks she has spent not signing anything.

  **What settled it was manner, not content.** Alexander's third answer came out sharp, faintly irritated, and unmanaged: the crew analyzes and solves, nobody pretends it didn't happen. She took the sharpness as the credible version precisely because he was not handling her when he said it, and told him so. **Committed to attending Monday's training as an evaluator**, restating that she is judging the crew on what she sees rather than on the invitation. Alexander closed by telling her to come prepared to show something herself; she took that well.

  **One misread, corrected in the scene rather than carried.** She read him as clock-watching and said so; it was wrong, and she dropped it without argument when told — *'Fine. Wrong read.'* — which is itself consistent with her record. Owen was present throughout and said almost nothing; the fiction establishes no opinion of his about her beyond that. **A contrary position attributed to him here was struck at `EVT-000450`** as Runtime invention that `EVT-000409` itself had declined to promote. Alexander's own read — not sure about her, heard her as not listening — is his, unchanged, and unendorsed by anyone else on the record.

  **Her exit line named the training at 'sunup'; the operative time is and always was Monday 18:00** (`EVT-000450`). **Resolved 2026-08-17 morning (`EVT-000451`):** Alexander texted her directly confirming 18:00; she confirmed back in writing — 'Good. 6 PM confirmed.'

  **Attended and evaluated the first crew training, 2026-08-17, embedded in Corbin's element (`EVT-000453`-`EVT-000458`).** Watched Alexander name and own his own botched-entry failure in front of the whole yard, unprompted — directly answering the standard she pressed him on three times at their first meeting. Said little during the drills. Closed with unprompted warmth ('good session, I mean that') and committed to a decision by **Wednesday 2026-08-19**."
```

### ENT-000183 — Petra

Owner-operator of Ferro's Reclamation (`ENT-000150`), the salvage yard two blocks north of Walt Adamik's shop. Previously unnamed and unmet; met in person 2026-08-11.

```yaml
id: ENT-000183
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000286
  game_date: "2026-08-11 ~11:45 -05:00, Ferro's Reclamation"
  real_date: "2026-08-01"
type: Character
subtype: salvage dealer / informant
scope: local
lifecycle: active
aliases:
  - name: "Petra Nowak"
    quality: current
  - name: "Petra"
    quality: current
relationships:
  - REL-000087
canonical_state:
  location: ENT-000150
  condition: "Healthy; not established as combat-active."
  capabilities: "Runs Ferro's Reclamation's mundane scrap and salvage business on the surface. Trades information for information or favors, not for cash — corroborated Walt Adamik's and Elias Ward's independent warnings that she also trades favors both directions with Coalition compliance staff, and disclosed this herself unprompted rather than let Alexander find out later. Reads people quickly and undersells her own attentiveness with a deliberately ordinary shopkeeper manner."
  appearance: "Fifties, reading glasses pushed into greying hair, works from a converted shipping-container office cluttered with ledgers rather than digitized records."
  personality: "Direct once past the opening small talk — called Alexander's cover story within a few exchanges rather than let it run. Plainspoken about her own terms (nothing given without something traded first) without being mercenary about it; genuinely warmed once Alexander traded real information rather than tried to talk her into it for free."
  situation: "First meeting, 2026-08-11 (`EVT-000286`). Alexander approached under a thin 'just browsing for gear upgrades' cover, which she saw through by partial success and called out directly rather than let the small talk continue. Traded the full warehouse investigation (Meridian Cold Storage LLC, Titan Secure, the Suite 14 dead end) for a real hunter lead in return: named **Marcus Whitlow** (`ENT-000184`), a restless C-Rank striker. Confirmed independently that the warehouse name means something to her — 'adjacent to two other things that never quite lined up before' — without saying what. Disclosed her own compliance ties unprompted as a condition of the trade being honest rather than a threat. **Standing arrangement formed** (`REL-000087`): Alexander brings further warehouse developments, she keeps an ear out for C-Rank-and-above hunters looking for something off-book. No Coalition names passed either direction by explicit agreement."
```

### ENT-000184 — Marcus Whitlow

C-Rank striker, first candidate for Alexander and Owen's new crew, recruited through Petra's referral. Met in person 2026-08-11. **Disambiguation: not `ENT-000127` Marcus Aldridge**, the sensor on Tanya Voss's crew. Use the surname in narration.

```yaml
id: ENT-000184
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000289
  game_date: "2026-08-11 ~12:15 -05:00, Dobek's Diner"
  real_date: "2026-08-01"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Marcus Whitlow"
    quality: current
relationships:
  - REL-000088
canonical_state:
  rank: "**C-Rank**, confirmed directly by Flux Sight (`EVT-000289`). Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — Flux Sight (`EVT-000289`) read the Section 6.1 table values exactly (250 / 125), which is what a variance of none looks like on the card. Permanent, never rerolled."
  pools: "**Maximum Health 250, maximum Mana 125** — Section 6.1 table (250 / 125), flat, as directly confirmed by Flux Sight (`EVT-000289`). Section 5.2 tier costs: **Minor 12, Signature 31, Boss-tier 62**. Section 5.3 running-dry threshold **31**."
  signature_ability: "**Clean Line.** His mana runs the edge as a thin bright line that finishes the cut his arm only started — the stroke completes along the path he chose even where his body's follow-through does not, so the blade arrives on a line his stance should not have been able to give it. Precise rather than spectacular, and that is the whole problem with it: it is exactly the gift that makes a hunter reliable enough to be left on unremarkable contract work for two years, which is the thing he is afraid of. Method and reach only; no magnitude beyond a C-Rank standard hit and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy, no injury."
  capabilities: "C-Rank striker, two years with a mid-tier guild doing largely unremarkable contract work. Has twice declined guild-internal transfers because neither offered anything genuinely different from what he already had."
  appearance: "Twenty-six, white, medium height and compactly muscled — the even, maintained build of someone who trains consistently and has never needed to train desperately. Mid-brown hair kept in a plain short cut he has clearly had for years; grey-blue eyes; a steady, pleasant, slightly closed face that takes a moment to warm. Good mid-tier guild kit, properly fitted and unscuffed in the places that suggest he has not been anywhere genuinely bad in a while. Sits still, but his hands don't — a tell that runs directly against the composure of everything above them."
  personality: "Restless under a competent, steady surface — Keen Sense (legendary read, `EVT-000289`) confirmed his stated boredom is real rather than performed: specifically a fear of stagnation, of being skilled enough to coast and dreading that coasting is all his career amounts to. Direct once past initial wariness; doesn't hide genuine reactions well, including being visibly unsettled by how accurately Alexander read him."
  situation: "**Recruited, 2026-08-11 (`EVT-000284`, `EVT-000286`, `EVT-000288`-`EVT-000289`).** Named by Wade Bishop to Petra's counterpart ask, then independently by Petra herself when Alexander traded her the warehouse lead — same name from two separate sources. Cold-called by Alexander citing Petra's referral; agreed to lunch within the hour. At Dobek's Diner, Alexander read him with Keen Sense and Flux Sight (undisclosed to Marcus) confirming sincerity and Rank, then pitched the crew directly: chain of command, frequent training, a stable roster, real Gate-Rank progression from C upward rather than a ceiling. Marcus committed on the spot — **'I'm in'** — and agreed to a sparring session to follow. First name secured toward the new crew (`OBJ-26`)."
```

### ENT-000185 — Soraya Delgado

C-Rank ranged support hunter, named by Wade Bishop as a crew candidate. Not yet met.

```yaml
id: ENT-000185
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000293
  game_date: "2026-08-11 evening, via text from Wade Bishop"
  real_date: "2026-08-01"
type: Character
subtype: ranged support
scope: local
lifecycle: active
aliases:
  - name: "Soraya Delgado"
    quality: current
canonical_state:
  rank: "**C-Rank** — Wade Bishop's secondhand referral, since **independently confirmed by Flux Sight** (`EVT-000319`). Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — Flux Sight (`EVT-000319`) read the Section 6.1 table values exactly (250 / 125). Permanent, never rerolled."
  pools: "**Maximum Health 250, maximum Mana 125** — Section 6.1 table (250 / 125), flat, as directly confirmed by Flux Sight (`EVT-000319`). Section 5.2 tier costs: **Minor 12, Signature 31, Boss-tier 62**. Section 5.3 running-dry threshold **31**."
  signature_ability: "**Downrange.** Her mana rides the shot out and she reads the field from where it lands — she sees the room from her own impact point, which puts the crew's best forward eye at the back of the formation being spent as generic damage. Section 13.5 files a signature that guides a shot under *archer*; hers guides the **shooter** instead, and that is exactly the tactical judgment two years of escort contracts never once called on (`EVT-000319`) and exactly what the shared-picture model she negotiated with Alexander is built to use. Reach and method only; her shots remain C-Rank standard hits and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy, no injury — met in person 2026-08-13 (`EVT-000319`)."
  capabilities: "C-Rank ranged support, two years on a guild B-team running escort contracts that never once called on her tactical judgment. Sound, unflashy shooting; the underused half of her is the read behind it."
  appearance: "Late twenties, Latina, of average height and lightly built, standing with the settled, squared stillness of someone trained to shoot from a fixed position. Dark hair pulled back into a low, practical knot; brown eyes that move over a space in a deliberate sweep rather than darting; a composed face that gives away very little until she decides otherwise. Wears her own kit rather than guild issue — lighter than a striker's, chosen around a clear sightline and a fast reload, and visibly maintained by someone who cares about it. Arrives early to places and picks where she stands before anyone else does."
  personality: "Cautious in a considered way rather than a fearful one — asks pointed, specific questions and waits for the whole answer. Has been promised 'real training' before and had it not materialize, and says so plainly instead of testing for it obliquely. Presses once on a thing that matters, then lets it go rather than forcing it."
  situation: "**Named, not yet met** (`EVT-000293`). One of four hunters Wade Bishop referred at Alexander's request for the new crew (`OBJ-26`).

  **Direct contact made, 2026-08-11 ~21:00 (`EVT-000298`).** Alexander texted her the pitch directly. She replied within the hour, genuinely interested but cautious — asked pointed questions about what 'real training' actually means in practice, reading as someone who has heard that promise before and had it not pan out.

  **Met in person, 2026-08-13 14:00-14:45, the Redline Practice Yards (`EVT-000319`).** Redirected the meeting herself to a private lot rather than Founder's Coffee, wanting to see how Alexander carries himself before talking. Flux Sight confirmed C-Rank, Health 250/250, Mana 125/125; a legendary Keen Sense read found her boredom is specific, not generic — two years as generic ranged damage on escort contracts that never once used her actual tactical judgment. Alexander told her plainly he'd looked her up just now; she pressed once on how, got a deliberately vague but honest answer, and let it go rather than force it. Negotiated a shared-picture tactical model — Alexander calls, but every crew member's read (hers included) feeds the same picture, rather than her executing blind or being sidelined. **Interested, contingent on seeing the first training** — same condition as Iris. Offered, unprompted, to help find a private training venue.

  **The contingency is met, 2026-08-14 (`EVT-000351`).** Alexander texted a real date — **Monday 2026-08-17, 18:00**, private site, location to follow by Saturday. She confirmed attendance, converting from conditional interest to committed-to-attend, and asked the one practical question nobody had settled: **is gear mandatory, or is showing up enough?** That question is still unanswered, and it is hers specifically — consistent with someone who wants to know what is actually being tested before she walks in."
```

### ENT-000186 — Grant Okwuosa

C-Rank striker/frontline hunter, named by Wade Bishop as a crew candidate. Not yet met.

```yaml
id: ENT-000186
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000293
  game_date: "2026-08-11 evening, via text from Wade Bishop"
  real_date: "2026-08-01"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Grant Okwuosa"
    quality: current
canonical_state:
  rank: "**C-Rank** — Wade Bishop's secondhand referral, since **confirmed directly by Flux Sight** (`EVT-000317`). Resolved by that Rank under Section 13.1. Exact pool figures were not recorded at the read; Section 13.1 supplies them from Rank until they are."
  signature_ability: "**Pry.** His mana turns a blow into leverage: what he hits does not merely take the hit, it comes *open* — guard broken, flank turned, footing spoiled — for whoever arrives next. The wound is an ordinary C-Rank standard hit; the opening it leaves behind is the point of him, and it is a frontline gift that only pays if someone else is there to use it. It is why he could answer without hesitating that letting a better-placed crewmate take the killing blow costs him nothing (`EVT-000317`): his gift has never drawn a line between his opening and somebody else's. Method only; no magnitude beyond his Rank and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy, no injury — met in person and recruited 2026-08-13 (`EVT-000317`)."
  capabilities: "C-Rank frontline striker, passed over for a lead slot twice on seniority grounds rather than demonstrated skill. Reads and works to other people's openings as readily as his own."
  appearance: "Early thirties, Black, Nigerian-American (the Okwuosa name), tall and heavily built through the shoulders and back — a genuine frontline frame, and one he plainly maintains. Hair cut close, a short beard kept neat, warm dark eyes set in a face that is quick to open and slow to close again. Well-worn frontline kit, scarred across the forearms and chestplate where a man who takes first contact would expect it to be. Carries himself with an easy, unguarded physical confidence that sits oddly against how carefully he chooses his words about his own career."
  personality: "Steady and willing on the surface, with a specific and well-earned frustration underneath it: not about credit, which he genuinely does not need, but about being pre-judged on tenure before anyone has watched him work. Direct when the subject is finally named out loud, and quick to test whether a promise about it is real."
  situation: "**Named, not yet met** (`EVT-000293`). One of four hunters Wade Bishop referred at Alexander's request for the new crew (`OBJ-26`).

  **Direct contact made, 2026-08-11 ~21:00 (`EVT-000298`).** Alexander texted him the pitch, naming the earned-not-seniority framing directly. He replied fast and eager — 'Wade said you actually meant that about earned, not seniority? If that's real I want to talk. When.'

  **Met in person and recruited, 2026-08-13 09:00-09:40, a diner near the Coalition building (`EVT-000317`).** Read with Flux Sight and Keen Sense before speaking — his frustration confirmed real and specific: passed over for lead twice on tenure, never on demonstrated skill. Alexander shared the read aloud. Grant pressed on whether it would bother him to let a better-positioned crewmate take a killing blow — genuinely didn't hesitate: credit was never the wound, being pre-judged by seniority was. Alexander committed to equal evaluation for everyone starting with the first training. **Recruited on the spot.** Third name secured for the crew, after Marcus and Theo. Promised a call by end of the following week regardless of outcome.

  **Given an element to lead at the first crew training, 2026-08-17 (`EVT-000453`-`EVT-000458`) — the exact thing his file said he'd been denied twice on seniority alone.** On the first live sequencing test he read a teammate's set as an ungiven cue and moved early, triggering Iris's first live stop-call; **owned it immediately and without deflection** ('That's on me. Not on my three either — I didn't check with them, I just went'), naming the mistake precisely rather than explaining it away. **Alexander kept him on the element on the spot**, naming the same fast-read instinct that caused the miss as the reason he was given it in the first place. Visibly moved by being told so in front of the other nine — 'Alright,' quieter than anything else he said all night. Second and third drills clean under his lead; closed the night discussing the new nod-signal with Corbin unprompted.

  **2026-08-18 (`EVT-000483`), texted about a real, filed D-Rank contract for Saturday 2026-08-22.** Steady as always: 'Count me in.'"
```

### ENT-000187 — Iris Halvorsen

B-Rank sensor, named by Wade Bishop as a crew candidate — the strongest of the four referrals. Not yet met.

```yaml
id: ENT-000187
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000293
  game_date: "2026-08-11 evening, via text from Wade Bishop"
  real_date: "2026-08-01"
type: Character
subtype: sensor
scope: local
lifecycle: active
aliases:
  - name: "Iris Halvorsen"
    quality: current
relationships:
  - REL-000098
canonical_state:
  rank: "**B-Rank** — Wade Bishop's secondhand referral, since **independently confirmed by Flux Sight** (`EVT-000308`). Resolved by that Rank under Section 13.1. The highest-Ranked hunter on the crew's candidate list."
  pool_variance: "**None** — Flux Sight (`EVT-000308`) read the Section 6.1 table values exactly (600 / 300). Permanent, never rerolled."
  pools: "**Maximum Health 600, maximum Mana 300** — Section 6.1 table (600 / 300), flat, as directly confirmed by Flux Sight (`EVT-000308`). Section 5.2 tier costs: **Minor 30, Signature 75, Boss-tier 150**. Section 5.3 running-dry threshold **75**."
  signature_ability: "**First to Move.** Her mana reads a space by *priority* rather than by census — not only how many things are in it and where, but which of them is going to act next, and which is holding back. A population count is the least of what she can tell a crew, which is exactly why having that read received as a formality has worn on her for as long as it has, and why she wants to be forward rather than parked at the back with it (`EVT-000308`). Reach and method only; no Section 13.5 effect attaches and her strikes remain B-Rank standard hits."
  location: ENT-000200
  condition: "Healthy, no injury — attended and worked the first crew training, 2026-08-17 (`EVT-000453`-`EVT-000458`)."
  capabilities: "B-Rank sensor whose read runs to threat priority and intent, not merely population and position — and whose current crew treats it as a box to tick rather than something to act on. Wants to fight forward as well as read; her present crew placed her at the back without asking."
  appearance: "Mid-thirties, white, Norwegian-American (the Halvorsen name), tall and solidly built — noticeably more physical than the sensor label leads people to expect, which is part of her complaint. Ash-blonde hair cut short and pushed back off her face; light grey eyes with the slightly unfocused middle-distance habit of someone who is always half-reading the room; a strong, guarded face that holds its expression a beat too long before it commits. Kit is better than her crew's and chosen for a fight rather than a vantage point — armored properly, weapon real, none of it decorative. Sits with her back to a wall by preference and does not apologize for moving seats to get one."
  personality: "Guarded on first contact, and it reads as real caution rather than hostility — she wants this to be genuine considerably more than she is willing to show. Long-frustrated in a specific way, and visibly affected by having that frustration named accurately by a stranger. Asks concrete, verifiable questions and holds the answers to account; agreed to nothing beyond a training session and one supervised run before committing."
  situation: "**Named, not yet met** (`EVT-000293`). One of four hunters Wade Bishop referred at Alexander's request for the new crew (`OBJ-26`); Wade's own assessment ranks her as the strongest name on the list.

  **Direct contact made, 2026-08-11 ~21:00 (`EVT-000298`).** Alexander's text named her specific frustration directly — a sensor whose read is treated as a formality — and framed it as exactly what he wants built into the crew from the start. Her reply was long, specific, and unmistakably relieved: visibly someone who has been quietly frustrated about this for a long time and just had it named by a stranger. She wants to meet as soon as possible, said so twice.

  **Met in person, 2026-08-12 13:00-13:45, Founder's Coffee (`EVT-000308`).** Read on entry with Flux Sight (confirmed genuine B-Rank, Health 600/600, Mana 300/300) and a legendary Keen Sense pass (her guardedness is real caution, not adversarial performance — she wants this to be real more than she's letting show). Alexander stated that read aloud without revealing mechanism; it visibly caught her — 'nobody's said that back to me that cleanly.' She read him in return: controlled, unnerving in how little he performs, something more underneath than what shows. Pressed him on two concrete points — does her call actually override the front line, and is training real structure or 'figure it out in the field' — and got direct answers: her stop-call is absolute, ground training comes before any blind run. A later addendum confirmed she wants to fight forward too, not just sense from the back; her current crew put her there without asking. **Agreed to attend the first crew training and one supervised low-stakes run before committing for real.** Numbers exchanged directly.

  **The contingency is met, 2026-08-14 (`EVT-000351`).** The training she had been waiting on since 2026-08-12 finally has a date — **Monday 2026-08-17, 18:00**. Her reply came back fast and visibly relieved: this is the thing she asked for, delivered rather than promised again. **Committed to attend**; the supervised low-stakes run remains a separate, still-unmet condition before she commits for real.

  **The first crew training, 2026-08-17 (`EVT-000453`-`EVT-000458`, `REL-000098`).** Placed outside all three elements, on overwatch, with an absolute stop-call named explicitly in front of the whole yard — 'anything you see, you stop it. Anyone. Including me.' **Fired it live for the first time on the very first drill**, unprompted and without checking with Alexander first, halting Grant's element mid-step (`EVT-000454`) — the exact promise made to her at recruitment, tested and held. On the third drill, **named the crew's actual structural defect unprompted** when Alexander asked the yard directly rather than answering it himself: three elements each set correctly and covering nothing between them — 'the same thing my last crew never fixed. I could always see the gap. Nobody's job was ever to be told about it.' **Given a second standing authority on the spot**: gap-coverage calls to any lead are binding instructions, not suggestions, parallel in force to her stop-call. On the closing live test, her call was instant and correct (`EVT-000457`); execution lagged on Corbin's own hold-instinct, not on her read. Told Alexander plainly, unprompted, that this is the first time in three years a crew has made her read the thing that moves people rather than a formality filed away. **Alexander committed to booking her promised supervised low-stakes run this week** — not yet scheduled at that point.

  **Booked, 2026-08-18 ~16:40 (`EVT-000483`), by text.** Confirmed D-Rank Ashfield contract, **Saturday 2026-08-22**, filed at Kesha's desk with a full ten-slot roster rather than a bare five — Iris's own promised condition, finally scheduled rather than left open. Replied with a bare 'Yes,' then unprompted thirty seconds later: 'Thank you for actually booking it instead of letting it sit.' Reads as the clearest signal yet that she registers this crew as different from the one that left her frustrated for three years."
```

### ENT-000188 — Theo Bannerman

C-Rank striker, named by Wade Bishop as a crew candidate — youngest and rawest of the four. Not yet met.

```yaml
id: ENT-000188
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000293
  game_date: "2026-08-11 evening, via text from Wade Bishop"
  real_date: "2026-08-01"
type: Character
subtype: striker
scope: local
lifecycle: active
aliases:
  - name: "Theo Bannerman"
    quality: current
canonical_state:
  rank: "**C-Rank** — Wade Bishop's secondhand referral, since **independently confirmed by Flux Sight** (`EVT-000311`). Resolved by that Rank under Section 13.1."
  pool_variance: "**None** — Flux Sight (`EVT-000311`) read the Section 6.1 table values exactly (250 / 125). Permanent, never rerolled."
  pools: "**Maximum Health 250, maximum Mana 125** — Section 6.1 table (250 / 125), flat, as directly confirmed by Flux Sight (`EVT-000311`). Section 5.2 tier costs: **Minor 12, Signature 31, Boss-tier 62**. Section 5.3 running-dry threshold **31**."
  signature_ability: "**All In.** Once he commits, his mana floods the whole sequence at once and burns through it — the combo comes visibly lit, faster and heavier-looking than his frame should manage, and there is no calling any part of it back once it is spent. It is the reason his timing and shape read as near-perfect (he is never hedging) and equally the reason he twice ate an avoidable hit mid-combo at his own boxing club rather than break form (`EVT-000311`). The gift and the flaw are one fact, which is why 'calm down' is not the fix and structure is. Magnitude is unchanged — C-Rank standard hits — and no Section 13.5 effect attaches; what the mana buys is commitment, and it is not optional once poured."
  location: ENT-000087
  condition: "Healthy, no injury — met in person and recruited 2026-08-12 (`EVT-000311`)."
  capabilities: "C-Rank striker: young, raw, and genuinely gifted. Reads an opening roughly half a second early and commits to it completely. Highest upside of Wade's four referrals by Wade's own read, on the condition that someone gives him real structure rather than telling him to rein it in."
  appearance: "Twenty-two, white, of middling height and built like the boxer he is — lean, fast, thick through the wrists and neck, still carrying a little of the gawkiness he has not quite grown out of. Dark hair kept short on the sides and perpetually sweat-damp; a slightly crooked nose that has been broken at least once and set carelessly; bright, restless eyes in a face that shows every single thing he feels. Mismatched kit assembled from whatever was affordable, worn hard and unevenly. Cannot stand still in a conversation and does not appear to notice that he can't."
  personality: "Eager to the point of being unguarded — replies too fast, with too much punctuation, and means all of it. Wants to be shown rather than told, and asked to demonstrate before he would talk. Takes accurate criticism far better than encouragement, and visibly reorganized himself around the first piece of feedback that named what he actually does rather than telling him to rein it in."
  situation: "**Named, not yet met** (`EVT-000293`). One of four hunters Wade Bishop referred at Alexander's request for the new crew (`OBJ-26`).

  **Direct contact made, 2026-08-11 ~21:00 (`EVT-000298`).** Alexander texted him the pitch. His reply came back rough around the edges — too much punctuation, clearly typed fast — but the enthusiasm underneath it was real: in, pending actually meeting Alexander in person.

  **Met in person, 2026-08-12 18:00-18:40, his boxing club (`EVT-000311`).** Flux Sight confirmed genuine C-Rank, Health 250/250, Mana 125/125. Theo asked to demonstrate before talking and sparred live against a regular partner — rough, undisciplined, but genuinely gifted: reads openings a half-second early and commits fully rather than hedging, twice taking an avoidable hit mid-combo rather than break form. Alexander named it directly — near-perfect timing and shape, needs direction rather than restraint — and it landed harder than any feedback he's gotten before ('nobody's said calm down isn't the fix'). **Recruited on the spot**, no hesitation. Second name secured for the crew after Marcus Whitlow.

  **2026-08-18 (`EVT-000483`), texted about a real, filed D-Rank contract for Saturday 2026-08-22.** Same enthusiasm as the diner: 'IN. finally. saturday cant come soon enough.'"
```

### ENT-000189 — Marnie

Unlicensed artificer, working alias only — real quality work, brokered by Walt Adamik. Named 2026-08-11, still unmet, now gone unexplainedly quiet.

```yaml
id: ENT-000189
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000280
  game_date: "2026-08-11 ~11:00 -05:00, via Walt Adamik"
  real_date: "2026-08-02"
type: Character
subtype: unlicensed artificer
scope: local
lifecycle: active
aliases:
  - name: "Marnie"
    quality: current
canonical_state:
  rank: "Not established — never met, never read."
  location: "Unknown. No fixed address by her own deliberate design across fifteen years of dealing with Walt Adamik."
  condition: "Unknown as of `EVT-000320`. Six messages from Walt unanswered, against an established responsive pattern — genuinely uneasy, not routine."
  capabilities: "Real quality artificer work by Walt's account, never asks an unnecessary question. Terms as brokered: consultation not commission, $200-300 cash for an hour, possibly waived, timing hers alone, no gold or crystals accepted."
  personality: "Not established in play — never met. Walt's fifteen-year impression: careful, private by deliberate choice rather than paranoia, always took first meetings at a fixed public coffee stall rather than anywhere traceable to her."
  situation: "Brokered by Walt Adamik as an introduction for Alexander, framed as a personal vouching (`EVT-000280`). Two initial messages went unanswered as of that visit. **By 2026-08-13 (`EVT-000320`), six messages total sit unanswered** — Walt's own read is that this is out of character for her. The only concrete lead is a coffee stall near the Metro rail yards off Cermak, the one fixed meeting point she's ever used. See `110_WORLD_LEDGER.md` `ENT-000190` for the concealed-discovery record tracking what actually happened to her.

  **A private investigator is now working the thread, 2026-08-14 (`EVT-000373`-`EVT-000374`).** Rosalind Fenn (`ENT-000198`), referred by Walt, took the case — the coffee stall, the CONSULT phrase, and the Loomis Street building all handed to her, the dock deliberately withheld. Two to three days before anything concrete. No new fact about Marnie herself established this session; the investigation is running, not resolved."
```

### REL-000087 — Alexander and Petra

```yaml
id: REL-000087
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000286
  game_date: "2026-08-11 ~11:45 -05:00"
  real_date: "2026-08-01"
endpoints:
  - ENT-000125
  - ENT-000183
type: informal-informant
qualities: "A working information-trade relationship, not a friendship yet — direct, transactional, and openly stated as such by both parties. Petra called Alexander's cover story within a few exchanges and he didn't press it; the arrangement formed once he traded something real instead of asking for free."
state: "**Formed 2026-08-11 (`EVT-000286`).** First meeting at Ferro's Reclamation. Alexander traded the complete fenced-warehouse investigation for a real hunter referral (Marcus Whitlow, `ENT-000184`); Petra disclosed her own Coalition compliance ties unprompted as a condition of the trade being honest. Standing arrangement: Alexander brings further warehouse developments, she keeps an ear out for C-Rank-and-above hunters looking for something off-book. No Coalition names passed either direction by explicit agreement. Active, one exchange completed; no further contact yet."
history: "Formed 2026-08-11 when Alexander visited Ferro's Reclamation on Elias Ward's and Walt Adamik's shared recommendation."
```

### REL-000088 — Alexander and Marcus Whitlow

```yaml
id: REL-000088
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000289
  game_date: "2026-08-11 ~12:15-12:45 -05:00"
  real_date: "2026-08-01"
endpoints:
  - ENT-000125
  - ENT-000184
type: crew-recruitment
qualities: "Alexander's first confirmed recruit for the crew founded with Owen (`OBJ-26`) — professional and new, formed inside a single conversation on the strength of an unusually accurate read and an honest pitch. Marcus was visibly unsettled by how precisely Alexander read him and chose not to ask how."
state: "**Formed 2026-08-11 (`EVT-000288`-`EVT-000289`).** Cold-called on Petra and Wade Bishop's shared referral; met for lunch at Dobek's Diner the same hour. Alexander read him (Keen Sense, Flux Sight, undisclosed) and pitched the new crew directly; Marcus committed on the spot. A sparring session is agreed in principle, not yet scheduled. **2026-08-18 (`EVT-000483`): texted about a real, filed D-Rank contract for Saturday 2026-08-22 — his first actual Gate with this crew.** Same three words as the diner: 'I'm in.'"
history: "Formed 2026-08-11 through a same-day double referral from Petra (Ferro's Reclamation) and Wade Bishop (Ironline)."
```

### ENT-000194 — Corbin Yates

B-Rank-contract strike hunter, one of Wade Bishop's borrowed crew for the 2026-08-14 B-Rank harvest trial. Flat, unhurried, professional — holds ground and does the job without needing to be thanked for it.

```yaml
id: ENT-000194
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000340
  game_date: "2026-08-14 ~08:15 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: strike hunter
scope: local
lifecycle: active
aliases:
  - name: "Corbin Yates"
    quality: current
relationships:
  - REL-000090
canonical_state:
  rank: "B-Rank, combat-rated — part of the legal minimum roster for the confirmed B-Rank Gate (Section 9.4), though the roster itself ran short at 4 against the required 8."
  signature_ability: "**Deadweight.** His mana pours down into the blade at the instant of contact, so a strike lands with the shock of a far heavier weapon than the one he is actually holding — the wound is an ordinary B-Rank standard hit, but what the blow does to footing and posture is out of all proportion to the steel. It is why the things that reached him at the chokepoint went down and stayed down, and why so few of them reached him twice. Method only. It raises no barrier and holds no line for the party, and **deliberately does not trigger Section 13.5's warden effect**: the funnel was terrain Alexander read and relayed (`EVT-000340`), not anything Corbin projected, and the party's defensive actions that day drew no step from him."
  location: ENT-000087
  condition: "Healthy, unhurt — never took a hit at the chokepoint he held."
  capabilities: "Competent, disciplined line-holder. Took a relayed Exploit Pattern call (the chamber's chokepoint funnel) from Alexander via Field Command and held the position unbroken for the length of the swarm engagement, letting only two Hive-commons reach him at once regardless of how many pressed from behind."
  appearance: "Forties, Black, of middling height and thick through the chest and shoulders without being heavy — the compact, load-bearing frame of a man who has held ground for a living for twenty years. Close-cropped hair going grey at the temples; a flat, steady gaze that tracks a room without appearing to move; deep lines set into a face that spends most of its time expressionless. Unremarkable B-Rank field kit, well-maintained and entirely unshowy, every strap where it should be. His weapon never fully lowers until a fight is actually over, and he is usually the last person in a chamber to accept that it is."
  personality: "Flat, dry, unhurried. States facts rather than opinions — 'that's not unusual for a Wade Bishop crew, that's just Tuesday' — without performing either bitterness or loyalty. The first genuine laugh out of him all day came only after the fight, over beer."
  situation: |
      Held the chokepoint Alexander identified for the entire swarm engagement (`EVT-000340`), crediting Alexander flatly afterward ('You're the one who called the choke... didn't drop once after that'). Confirmed to Alexander's face, alongside Felix, that a Wade Bishop crew running with no lead and no coordination is standard practice, not an exception (`EVT-000345`). Took Alexander's phone number for the crew he's forming (`REL-000090`, `EVT-000344`) — genuine interest, no commitment made. Present for the closing round of beer (`EVT-000346`), first real laugh of the day. **Accepted a real training date, 2026-08-17 18:00 (`EVT-000350`)**, on the condition he stated himself: call when it is actually happening, not when it is being talked about. Attending to decide, not committed.
```

### ENT-000195 — Felix Aranda

B-Rank-contract strike hunter, same borrowed crew. Wry, observant, quick to size Alexander up correctly.

```yaml
id: ENT-000195
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000339
  game_date: "2026-08-14 ~08:05 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: strike hunter
scope: local
lifecycle: active
aliases:
  - name: "Felix Aranda"
    quality: current
relationships:
  - REL-000091
canonical_state:
  rank: "B-Rank, combat-rated — part of the same undersized roster as `ENT-000194`."
  signature_ability: "**Throughline.** Once he commits to a path his mana carries him down it, shouldering aside contact that should have stopped him — he does not slip a crowd, he goes through it and the crowd gives. It is how he crossed a pressing swarm to reach Warren Sato and arrived in time to matter (`EVT-000340`), and it is of a piece with having a weapon up before he had finished processing the noise of Alexander's entry (`EVT-000339`). Movement, reach, and method only; it batters nothing down on its own, adds no magnitude to his B-Rank standard hits, and triggers no Section 13.5 effect."
  location: ENT-000087
  condition: "Healthy, unhurt."
  capabilities: "Reacted fastest to Alexander's botched stealth entry, weapon up before he'd finished processing the noise; stood down once he registered Alexander wasn't hostile to the crew. Broke off from the swarm fight to pull Warren Sato (`ENT-000197`) clear when he was flanked, successfully. Later closed on the burrower boss alongside Dana Whitcombe (`ENT-000196`) and received Alexander's Field Command relay of the boss's sweep tell and belly weak-point; the two landed the coordinated killing blow together."
  appearance: "Mid-thirties, Latino, lean and long-limbed with a restless economy to the way he stands — never quite still, his weight always already shifted toward wherever he might next need to go. Black hair cut short and grown well past its last cut; dark, quick eyes; a narrow face that gives away amusement before he has decided whether to show it. Practical field kit with nothing decorative on it anywhere. The one distinguishing habit is where his attention goes — he watches a person a beat longer than the conversation needs, and does not pretend he isn't."
  personality: "Wry, quick, unbothered by being wrong-footed. Read Alexander as more than an observer within seconds of meeting him ('Figured this was coming the second you said observe with a straight face') and wasn't offended by the recruitment pitch that followed."
  situation: |
      First to react to Alexander's entry (`EVT-000339`); introduced himself once he confirmed Alexander wasn't a threat. Rescued Warren Sato from being flanked mid-swarm-fight (`EVT-000340`). Closed on the boss with Dana Whitcombe off Alexander's relayed Exploit Pattern reads and landed the coordinated kill (`EVT-000341`). Confirmed to Alexander, alongside Corbin, that Wade's crews routinely run without a lead (`EVT-000345`). Took Alexander's number for the forming crew (`REL-000091`, `EVT-000344`) — genuine interest, no commitment. **Accepted the 2026-08-17 18:00 training (`EVT-000350`)** without hesitation, unsurprised the pitch came at all.
```

### ENT-000196 — Dana Whitcombe

B-Rank-contract strike hunter, same borrowed crew. The one Alexander's reads twice kept alive.

```yaml
id: ENT-000196
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000341
  game_date: "2026-08-14 ~09:30 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: strike hunter
scope: local
lifecycle: active
aliases:
  - name: "Dana Whitcombe"
    quality: current
relationships:
  - REL-000092
canonical_state:
  rank: "B-Rank, combat-rated — part of the same undersized roster."
  signature_ability: "**Second Edge.** Her mana trails a half-beat behind her weapon and arrives after it, so a cut lands and then the edge of it lands again — not a second strike (the blow resolves as a single B-Rank standard hit) but a stroke that opens a guard which had already closed in time. It is what turned a half-heard warning and a relayed weak-point into the coordinated killing blow on the burrower boss (`EVT-000341`). Method only; no magnitude beyond her Rank and no Section 13.5 effect attaches."
  location: ENT-000087
  condition: "Healthy, unhurt — dodged the boss's opening sweep clean off a partial Keen Sense warning relayed via Field Command."
  capabilities: "Nearest hunter to the burrower boss's emergence; reacted to Alexander's half-formed warning fast enough to avoid the breach entirely. Later received the full Exploit Pattern relay (sweep tell, belly weak-point) and, alongside Felix Aranda, landed the coordinated killing blow on the boss."
  appearance: "Early thirties, white, tall and rangy — long through the arms and legs, built more like a runner than a striker, with no bulk on her anywhere. Dirty-blonde hair cut bluntly at the jaw and shoved back behind her ears; pale eyes; a scattering of old freckles across a face that shows what she is thinking a half-second before she says it. Field kit chosen for freedom of movement over coverage, scuffed through at both knees and forearms. Stands with her weight already committed forward, as though whatever she does next will be sudden."
  personality: "Direct, still visibly recalibrating who she just fought next to by the fight's end. Says what she means without padding it — 'that's twice you talked me through something that would've killed me otherwise... I don't know what just here to observe actually means, but it isn't that.'"
  situation: |
      Dodged the boss's opening sweep off a partial Keen Sense warning (`EVT-000341`). Received the full sweep-tell/belly-weak-point Exploit Pattern relay and landed the coordinated killing blow with Felix. Openly credited Alexander afterward, twice, for keeping her alive (`EVT-000344`). Took his number for the forming crew without hesitation ('After today? Absolutely.') (`REL-000092`). **Pressed Alexander for an actual date rather than 'next week' and got one — 2026-08-17, 18:00 — filing it into her week on the spot (`EVT-000350`).** The most immediate commitment of the four.
```

### ENT-000197 — Warren Sato

B-Rank-contract strike hunter, same borrowed crew. Quieter than the other three, rattled by being flanked early.

```yaml
id: ENT-000197
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000340
  game_date: "2026-08-14 ~08:20 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: strike hunter
scope: local
lifecycle: active
aliases:
  - name: "Warren Sato"
    quality: current
relationships:
  - REL-000093
canonical_state:
  rank: "B-Rank, combat-rated — part of the same undersized roster."
  signature_ability: "**Sweep.** His mana carries the blade's edge a hand's breadth past the steel and all the way around him, so his reach is a closed circle and being surrounded is the shape his gift works best in. It is why being flanked and cut off early in the swarm fight did not finish him before Felix Aranda broke through (`EVT-000340`) — the press had no side of him that was not already covered. Reach and method only: it stops nothing and reduces nothing, adds no magnitude to his B-Rank standard hits, and triggers no Section 13.5 effect."
  location: ENT-000087
  condition: "A real graze from being flanked and cut off mid-swarm-fight; nothing severe. Rescued by Felix Aranda."
  capabilities: "Cut off from the rest of the line by the swarm's press early in the engagement; held his own until Felix broke through to him. Fought the remainder of the engagement from Corbin's chokepoint rather than near the boss."
  appearance: "Late twenties, Japanese-American, short and compactly built, with the quiet physical competence of someone who has trained a long time and never once made a performance of it. Black hair kept very short; a square, unreadable face; dark eyes that find the exits in a new room before they find the people. Standard-issue B-Rank kit worn exactly to spec, nothing personalized on it. Carries a fresh graze along one forearm from the flanking, dressed neatly and not mentioned."
  personality: "Quieter than the other three, not the type to commit loudly. Took Alexander's number without much comment, but watched him carefully afterward, the same way the others did."
  situation: |
      Flanked and cut off early in the swarm fight; rescued by Felix Aranda (`EVT-000340`). Fought the remainder of the engagement at Corbin's chokepoint. Present for the crew's thanks and the closing round of beer, mostly quiet throughout (`EVT-000344`, `EVT-000346`). Took Alexander's number for the forming crew — a nod, not a firm commitment (`REL-000093`). **Accepted the 2026-08-17 18:00 training with 'I'm in' (`EVT-000350`)** — the most words he has given Alexander in a single exchange.
```

### REL-000090 — Alexander and Corbin Yates

```yaml
id: REL-000090
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000344
  game_date: "2026-08-14 ~12:00 -05:00"
  real_date: "2026-08-02"
endpoints:
  - ENT-000125
  - ENT-000194
type: crew-recruitment
qualities: "A phone-number exchange formed in front of Wade Bishop, deliberately, at the close of the B-Rank harvest trial. Genuine interest on Corbin's side, contingent on the crew Alexander is forming actually materializing rather than staying talk. **Attended the first crew training as promised (`EVT-000453`-`EVT-000458`) and moved from contingent interest to real, if characteristically flat, engagement.**"
state: "**Attended and led one of the three elements at the first crew training, 2026-08-17.** Set his three cleanly on both sequencing attempts; when the second attempt stalled on an undefined signal, **invented the nod set-signal on the spot**, adopted as the crew's standing doctrine (`EVT-000455`). On the live unbriefed gap test, his own hold-the-line instinct cost a visible half-second before he moved to close a flank — named by Alexander as a doctrine gap, not a fault in him, and Corbin did not contest the framing (`EVT-000457`). Closed the night with the closest thing to unprompted praise he's given Alexander yet: 'Ninety seconds old and it already found the seam. Not bad for a first cut.' **2026-08-18 (`EVT-000483`), texted about a real D-Rank contract, Saturday.** Answered his own stated condition ('this actually happening, or the talking-about-it version') by confirming the filed contract, then committed: 'Saturday. Confirmed. Good. I'm in.'"
history: "Formed 2026-08-14, the same day Corbin held the swarm's chokepoint off Alexander's relayed tactical read. First crew training attended and element led 2026-08-17 (`EVT-000453`-`EVT-000458`)."
```

### REL-000091 — Alexander and Felix Aranda

```yaml
id: REL-000091
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000344
  game_date: "2026-08-14 ~12:00 -05:00"
  real_date: "2026-08-02"
endpoints:
  - ENT-000125
  - ENT-000195
type: crew-recruitment
qualities: "Formed the same way as `REL-000090`, in front of Wade. Felix took it with open amusement rather than Corbin's flatness — he'd already concluded Alexander was worth recruiting to before the pitch landed. **Directly confirmed, in front of the whole yard, that Alexander's own account of the trial's botched entry was accurate 'if anything generous' (`EVT-000453`).**"
state: "**Attended the first crew training, 2026-08-17, in Corbin's element alongside Reyna Castillo.** Opened the session by corroborating Alexander's own self-critical account of the B-Rank trial's stealth-entry failure without softening it. No individual drill failure attributed to him this session; present throughout, shared a genuine laugh with Dana at the close. **2026-08-18 (`EVT-000483`), texted about the Saturday D-Rank contract.** Replied same as always, unsurprised: 'Figured it'd be soon. Saturday works.'"
history: "Formed 2026-08-14, the same day Felix pulled Warren Sato clear of a flank and later closed on the boss with Dana. First crew training attended 2026-08-17 (`EVT-000453`-`EVT-000458`)."
```

### REL-000092 — Alexander and Dana Whitcombe

```yaml
id: REL-000092
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000344
  game_date: "2026-08-14 ~12:00 -05:00"
  real_date: "2026-08-02"
endpoints:
  - ENT-000125
  - ENT-000196
type: crew-recruitment
qualities: "The warmest of the four new contacts — Dana owes her own survival twice over to Alexander's reads this session and said so plainly before taking the number. **On the first crew training's live gap test, she broke from Corbin's element and closed the flank to Warren Sato half a beat ahead of her own lead's read (`EVT-000457`), and Alexander deliberately credited it without framing it as going around Corbin.**"
state: "Formed 2026-08-14, no hesitation on her side ('After today? Absolutely.'). **Attended the first crew training, 2026-08-17, in Corbin's element.** Reacted first and fastest on the live gap-coverage test — 'Didn't feel like a point. Felt like the gap was there and I was closer to done thinking about it.' Shared a genuine laugh with Felix at the session's close. **2026-08-18 (`EVT-000483`), texted about the Saturday D-Rank contract.** Immediate, no hesitation, same pattern as her recruitment: 'After today? Absolutely. Tell me where and when.'"
history: "Formed 2026-08-14, the same day Dana dodged the boss's opening sweep and later landed its killing blow with Felix. First crew training attended 2026-08-17 (`EVT-000453`-`EVT-000458`)."
```

### REL-000093 — Alexander and Warren Sato

```yaml
id: REL-000093
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000344
  game_date: "2026-08-14 ~12:00 -05:00"
  real_date: "2026-08-02"
endpoints:
  - ENT-000125
  - ENT-000197
type: crew-recruitment
qualities: "The quietest of the four new contacts — took the number without much comment, not a refusal, just not the type to commit loudly. **Trusted with the live gap-coverage test's actual stakes on 2026-08-17 (`EVT-000457`) — told to hold under a simulated flank with no self-rescue, and did exactly that without a word.**"
state: "Formed 2026-08-14. **Attended the first crew training, 2026-08-17, positioned at Grant's element edge.** Held silently under the live unbriefed gap test exactly as instructed — no shout, no bolt, no self-rescue — until Dana reached him. Publicly and specifically thanked by Alexander afterward for doing the one thing nobody could verify in advance would work; answered with the smallest possible nod, the most visible reaction he's given all campaign. **2026-08-18 (`EVT-000483`), texted about the Saturday D-Rank contract.** Same brevity as always: 'I'm in.'"
history: "Formed 2026-08-14, the same day Warren was flanked and rescued by Felix during the swarm fight. First crew training attended 2026-08-17 (`EVT-000453`-`EVT-000458`), the closing live test built directly around him."
```

### ENT-000198 — Rosalind Fenn

Private investigator, Walt Adamik's referral. Does discreet skip-tracing and background work for people who can't go through a licensed agency without leaving a paper trail.

```yaml
id: ENT-000198
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000373
  game_date: "2026-08-14 ~15:55 -05:00"
  real_date: "2026-08-03"
type: Character
subtype: private investigator
scope: local
lifecycle: active
aliases:
  - name: "Rosalind Fenn"
    quality: current
relationships:
  - REL-000094
canonical_state:
  location: "Unestablished — worked entirely by phone this call."
  condition: "No injury or impairment established."
  capabilities: "Skip-tracing and quiet background/records work — permits, ownership, financials, shell-company structures, patterns in who comes and goes. Not a breach specialist and explicitly declines to be treated as one. Bills on results, not hours, for a first job referred by Walt Adamik."
  appearance: "Unestablished beyond voice — brisk, businesslike, no wasted warmth."
  personality: "Direct and professional. Doesn't ask more than she needs to start; asks pointed clarifying questions when she does. Flags her own limits and real risks plainly rather than overpromising (told Alexander outright that the contact who made him already has his real number, and that's his exposure to manage, not hers)."
  situation: |
      Introduced by Walt Adamik, 2026-08-14 ~15:20, as a real, vouched-for contact — "genuinely discreet, doesn't ask more than she needs to." Walt called ahead and let her get the specifics from Alexander directly rather than passing them himself.

      **First call, 2026-08-14 ~15:55 (`EVT-000373`-`EVT-000374`).** Alexander gave her two jobs. **Job one — the Marnie thread:** an artificer gone quiet after a reliable pattern of contact, the coffee stall off Cermak (owner confirmed a missed standing check-in and unusual questions about Marnie's work), the CONSULT phrase that spooked Walt's own supplier contact badly, and the Loomis Street building itself — unsigned, professionally camera'd with one manned blind spot on the north wall. Alexander deliberately did not mention the dock, its contents, or anything he personally took from it. **Job two — the Meridian thread:** the fenced warehouse, Titan Secure as keypad servicer, the shell entity **Meridian Cold Storage LLC** filed through a formation mill sharing office space with six other LLCs, Suite 14's dead end, and the failed phone call that left the man on the other end with Alexander's real number.

      Fenn's own read: three possible motives for Marnie specifically (someone wanting her *work*, someone wanting her *stopped*, or someone wanting what she knows about *her own clients*) — she's holding all three open. On Meridian, she called it more squarely her kind of job than the Loomis Street thread — shell-through-a-formation-mill cases usually unravel once the registered agent is found. She flagged, as a professional courtesy rather than a lecture, that her digging on Meridian carries a real risk of tipping off whoever already has Alexander's number.

      **Timeline given:** two to three days before anything concrete on either thread, sooner only if something breaks. She does not bill by the hour on a first job for someone Walt vouches for. Working the Marnie thread first (time-sensitive), Meridian in parallel.
```

### ENT-000199 — Duane

Holds the lease on a decommissioned freight yard off Ashland, rents it by the day. Asks no questions about what it's used for.

```yaml
id: ENT-000199
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000373
  game_date: "2026-08-14 ~15:40 -05:00"
  real_date: "2026-08-03"
type: Character
subtype: yard lessor
scope: local
lifecycle: active
aliases:
  - name: "Duane"
    quality: current
canonical_state:
  location: ENT-000200
  condition: "No injury or impairment established."
  capabilities: "Holds the lease on a decommissioned freight yard off Ashland (`ENT-000200`) and rents it by the day, cash, handshake terms, no paperwork. Doesn't ask what a renter is doing out there."
  appearance: "Unestablished beyond voice — flat, unbothered, few words."
  personality: "Terse and incurious by design — that's presented as the actual value of what he offers. No small talk, no questions past the day and the rate."
  situation: "Referred by Walt Adamik. Booked by phone, 2026-08-14 ~15:40 (`EVT-000373`): the freight yard off Ashland for Monday 2026-08-17, day rate $400 cash due on arrival, gate code to be texted the same morning. Confirmed open that day without hesitation. No questions asked about headcount, purpose, or names.

  **Paid in full on arrival, 2026-08-17 ~17:55 (`EVT-000453`).** $400 cash, no questions about the ten-plus people gathering in his yard. Retreated to his truck and did not return for the session."
```

### ENT-000200 — Freight Yard off Ashland

A decommissioned freight yard, leased and rented out by the day by Duane (`ENT-000199`). The venue booked for the crew's first training session.

```yaml
id: ENT-000200
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000373
  game_date: "2026-08-14 ~15:40 -05:00"
  real_date: "2026-08-03"
type: Place
subtype: private rentable yard
scope: local
lifecycle: active
aliases:
  - name: "the freight yard off Ashland"
    quality: current
canonical_state:
  location: "Off Ashland, roughly fifteen minutes from Walt Adamik's shop in Chicago's warehouse district."
  condition: "Former shipping-company freight yard, decommissioned roughly two years back. Open concrete yard, no known overlooking windows, one access road."
  capabilities: "Rented by the day through Duane (`ENT-000199`), $400 cash, handshake terms. Used by hunters running private drills, artificers testing without an audience, and others who need noise and space without an audience. Not soundproofed, but industrial surroundings mean daytime noise draws no attention."
  situation: "Booked by Alexander Pendragon for **Monday 2026-08-17, sunup to sundown**, to host the first crew training at 18:00 (`EVT-000373`). Gate code arrives by text the morning of."
```

### ENT-000201 — Glenwood Garden and Feed

A narrow, long-established garden and feed storefront on Glenwood Avenue in Rogers Park, eight blocks north of Edgewater Hospital. Predates the Gates and trades as if they never happened.

```yaml
id: ENT-000201
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000379
  game_date: "2026-08-14 ~19:00 -05:00"
  real_date: "2026-08-03"
type: Place
subtype: garden and feed store
scope: local
lifecycle: active
aliases:
  - name: "Glenwood Garden and Feed"
    quality: current
canonical_state:
  location: "Glenwood Avenue, Rogers Park, Chicago — eight blocks north of Edgewater Hospital, under the el line."
  condition: "Narrow storefront, bagged soil stacked outside under a tarp, a bell over the door, seed racks at the back. Smells of peat and cut stems. Closes early evening."
  capabilities: "Ordinary retail horticulture — seed, soil, tools, feed. No hunter trade, no awakened stock, no connection to the Gate economy of any kind."
  situation: "Visited once, 2026-08-14 shortly before closing, where Alexander Pendragon bought **thirty-eight packets of seed for $146.30** (`EVT-000379`). The counter staff are unnamed and unrecorded; no relationship formed and nothing about him was remarked on."
```

### ENT-000202 — Halvard's

A narrow Scandinavian-American diner three blocks west of Edgewater Hospital. Owen Callahan's choice, for a specific reason.

```yaml
id: ENT-000202
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000382
  game_date: "2026-08-14 ~20:25 -05:00"
  real_date: "2026-08-03"
type: Place
subtype: diner
scope: local
lifecycle: active
aliases:
  - name: "Halvard's"
    quality: current
canonical_state:
  location: "Three blocks west of Edgewater Hospital, Chicago."
  condition: "Long and narrow, laminated menus unchanged in decades, booths deep enough to be private. Open late."
  capabilities: "Ordinary neighborhood restaurant. Its one relevant property is social rather than physical: **Edgewater staff eat there and do not talk there**, which is why Owen picked it — a place to have a hard conversation within three blocks of the ward he just left."
  situation: "Used once, the evening of 2026-08-14, for the meal at which Alexander gave Owen a deliberately edited account of the B-Rank trial (`EVT-000382`). No staff member is named or recorded; nothing that happened was overheard by any recorded character."
```

### ENT-000203 — Priscilla Nakamura

An independent licensed artificer who does identification and commission work off the books for two or three Chicago guilds. Named by Wade Bishop; **not yet met, not yet contacted by Alexander directly.**

```yaml
id: ENT-000203
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000384
  game_date: "2026-08-14 ~22:05 -05:00"
  real_date: "2026-08-03"
type: Character
subtype: artificer
scope: local
lifecycle: active
aliases:
  - name: "Priscilla Nakamura"
    quality: current
relationships:
  - REL-000096
canonical_state:
  rank: "**Not authored — awakened status not established.** Nothing said about her establishes whether she is awakened, and an artificer need not be (the same reasoning already applied to Wade Bishop, `ENT-000146`). No Rank, no pools, no Section 6.1.2 variance."
  location: "**Her workshop — a flat brick front on a side street off LaSalle, north of the river, Chicago** (`EVT-000410`). One unmarked steel door between a shuttered auto shop and a chain-link lot; a unit number by the buzzer, no name. Single long workbench, tools racked in real order, back half of the room curtained off. Exact street number established in play but not advertised anywhere on the building."
  condition: "Healthy; working late at her own bench when Alexander arrived, apron still tied. Not established as combat-active or awakened."
  capabilities: "**Licensed** artificer working independently. Identification and commission work; retained informally by two or three guilds, Ironline among them, for material that came out of a Gate without clean provenance. Ironline has used her perhaps half a dozen times to Wade Bishop's knowledge, always without an invoice trail — which Wade offered unprompted as the thing that should tell Alexander what she is."
  personality: "**Confirmed in person 2026-08-15 (`EVT-000410`); Wade's second-hand account held up in every particular.** She does not ask where a thing came from and does not pretend not to notice things. She states what an item is, says plainly when she cannot, and charges for it. Her discretion is deliberate rather than incurious — she says nothing about what she notices unless given a reason to, which Wade framed as a condition rather than a guarantee and which nothing in the first meeting contradicted.\n\n  **Observed directly:** economical to the point of bluntness, and comfortable with silence — she went quiet reading the core long enough for it to stop feeling like politeness and did not fill it. Writes in a worn ledger book rather than a phone, in a fast hand. Prices everything, including her own uncertainty: told Alexander outright she has never built from scratch with a client present and would rather say so than take his money and find out together it does not work. **She distinguishes her trades sharply** — identification is ordinary work; creation is not the same trade; teaching while working is a third thing, slower for her, billed as its own line rather than as a favour.\n\n  **What she values is supply that does not run out and candor about origin, in that order.** *'Interest is cheap — everyone who's ever stood at this bench was interested.'* She named the specific failure mode she has seen kill a research relationship: a client who wants something ambitious and then flinches at the second crystal because the first did not work. Grey-market provenance stated plainly earns trust with her; a clean story would have earned less. Does not do same-day work and said so as a policy rather than an excuse."
  situation: "**Named at `EVT-000384`**, in the Region V lot, when Alexander asked whether the guild kept an artificer on call who does not ask questions. Alexander instructed Wade to get the meeting **soon** and said he would pay accordingly; Wade messaged her that night and committed to returning a **scheduling window by 2026-08-15 evening, 2026-08-16 at the outside**, explicitly as a real commitment rather than a maybe. Wade's own read is that she likes people who do not haggle and could see him within the week if she is in town.

      **Window delivered, 2026-08-15 ~16:45 (`EVT-000404`).** Wade called with the appointment: **tonight, 9:00 PM, her workshop** — an address off a street in the industrial fringe north of the Loop, per Wade, no further detail given over the phone. Not yet met; not yet confirmed on her own side of the line, only on Wade's.

      **MET, 2026-08-15 ~20:54-21:30 (`EVT-000410`), her workshop.** A flat brick front on a side street off LaSalle north of the river, one unmarked steel door between a shuttered auto shop and a chain-link lot, a unit number and no name on the buzzer. Inside: a single long workbench under a hanging fixture, tools racked with real order, the back half of the room curtained off. It is what it claims to be, not a front.

      **She is exactly as Wade described her, and the description was accurate rather than generous.** Opened the door before the second knock, placed Alexander against whatever Wade had told her in about a second, and let him in with *'Come in before someone on this block decides to be curious — I don't do the doorway version of this conversation.'* No handshake. Gave her first name unprompted, apparently out of habit rather than warmth. **She does not perform, and she does not fill silence.**

      **She drew a hard line between her two trades before hearing the object.** Identification is her ordinary work and she prices it by difficulty. Building something new is not the same trade — she has done commission and repair, never from-scratch creation with a client present, and said so plainly rather than take money to find out it doesn't work. Asked to teach while working, she named it a **third thing**: slower for her, changing how careful she can afford to be with something she has never made, and billed as its own line rather than as a rider.

      **What moved her was the material, not the interest.** Her own words: *'Interest is cheap — everyone who's ever stood at this bench was interested.'* What is not cheap is supply that does not run out partway through a research programme, which she named as the specific thing that kills the relationship before it starts. The pile Alexander left on the bench got a longer look than the core did, and drew the one unguarded line of the evening: *'That's a licensed harvest crew's good month.'*

      **The core changed her posture.** She read it under a loupe, went quiet long enough for it to stop feeling like politeness, and came back with a result she has heard claimed as theoretically possible and never personally seen. Her closing assessment of the maker was not defensive: *'whoever built this is better at this than I am.'* Full findings and terms in `120_INVENTORY_AND_OWNERSHIP.md` and `REL-000096`.

      **Still nothing named to her beyond the core.** Not Marnie, not the finished dagger, not the Loomis Street operation, not the System. She knows Alexander's first name, his real phone number, that he buys grey-market without flinching about it, and that he can produce serious material from a backpack — and she has notably not asked about that last one, which is precisely the discretion Wade characterized as a condition rather than a guarantee.

      **First working session held, 2026-08-18 19:28-~21:15 (`EVT-000485`), her workshop.** Opened the split plainly: identification is solo work, already done; building toward a client's actual goal is never solo, so the core stays joint the whole way through. Taught the first real technique — seating a mana crystal along a material's existing tension points on a disposable E-Rank torso — then let Alexander attempt it himself three times: a fumble on the first (mana snapped erratic, he'd talked himself into a point rather than found one, a real burn on two fingers caught before it worsened), then two clean seatings, the second fast enough she called it apprentice-grade. **Demonstrated a full stat-building infusion on her own scrap leather** (deliberate will held under pressure through the whole liquid phase, not just placement) when Alexander asked to see the fuller process, explicitly declining to let him attempt that tier tonight. **He read the finished scrap afterward with Keen Sense and correctly located both of her mid-process corrections** — unprompted, unasked — which visibly unsettled her ('Most people can't find the corrections after the fact.'). Closed the identification balance, **$800 paid in cash**. **A standing weekly schedule set**: Wednesday and Friday 19:30 practical/teaching sessions (billed separately, same $200/hour), Thursday core-planning conversation, starting Wednesday 2026-08-19. The core itself was not touched — talked through only: two fused signatures confirmed, function and activation still fully unknown, next step is planning how to test it safely rather than testing it."
```

### REL-000094 — Alexander and Rosalind Fenn

```yaml
id: REL-000094
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000373
  game_date: "2026-08-14 ~15:55 -05:00"
  real_date: "2026-08-03"
endpoints:
  - ENT-000125
  - ENT-000198
type: professional-services
qualities: "Purely professional so far — a paid investigator working a referral from Walt Adamik, not a personal contact. She's direct, sets her own limits plainly, and doesn't overpromise."
state: "Active engagement, two open jobs: the Marnie disappearance and the Meridian Cold Storage ownership thread. Both time-sensitive by her own estimate (2-3 days), Marnie prioritized."
history: "Formed 2026-08-14 by referral. First and so far only contact was the phone call assigning both jobs."
```

### ENT-000204 — Marisela Kwan

Independent B-Rank strike captain running her own eight-hunter crew-for-hire. Ran point on Dale Pruitt's 2026-08-16 B-Rank harvest job — the first correctly-staffed B-Rank Gate Alexander has worked.

```yaml
id: ENT-000204
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000415
  game_date: "2026-08-16 08:00 -05:00"
  real_date: "2026-08-05"
type: Character
subtype: strike captain
scope: local
lifecycle: active
aliases:
  - name: "Marisela Kwan"
    quality: current
relationships:
  - REL-000097
canonical_state:
  rank: "**B-Rank**, resolved by Flux Sight on introduction (`EVT-000415`) rather than by report — Section 4.4's C rung reads awakened humans directly and needs no roll. Section 13.1 makes the Rank her complete mechanical description."
  pools: "Health **600/600**, Mana **300/300** — the Section 6.1 B-Rank table values, read live and unmarked at introduction. No `pool_variance` established."
  location: ENT-000087
  condition: "Healthy, unmarked at introduction. Took a few ordinary scrapes running the boss fight at `EVT-000415` and nothing worse; her crew came out intact."
  capabilities: "Strike captain of an **independent eight-hunter crew-for-hire** — nine combat-rated bodies including herself. Works mostly B-Rank, takes C when the money is good enough, and contracts to whoever pays first rather than carrying a guild retainer. Ran the 2026-08-16 B-Rank Crypt clear to completion: nine commons, one elite and the boss, with the harvest line held safely behind a secured perimeter the entire time. No signature ability established — she has not been asked and nothing in play has surfaced one."
  appearance: "Broad-shouldered, unhurried, gear checked and re-checked before anything else. Runs her final preparation in low voices with two of her own rather than addressing the site at large."
  personality: "Economical to the point of brusqueness, and not unfriendly with it — a single confident handshake, no sizing-up theater, already half-turned back to her crew before the courtesy finished. Answers a direct question directly (asked whether she was independent, she gave the whole business model in three sentences) and then stops. Her one instruction to Alexander was the entire scope of her interest in him: stay behind her line and there would be no problem. **Reads as someone who has run enough jobs to have no interest in performing competence.**"
  situation: "**Met 2026-08-16 (`EVT-000415`)**, staging for Dale Pruitt's confirmed B-Rank harvest job. Brought in by Dale's corporate-adjacent contractor because the job needed a real floor under it — **nine combat-rated against a legal minimum of eight**, a deliberate contrast with the four-against-eight forged roster of Wade Bishop's trial, though nothing about that comparison was said aloud and she knows nothing of it.

  Dale's own account of why she took the job: crews at her tier do not wait to be called, she picked his outfit over probably two other offers that morning, and she prefers **cash-on-clear to a guild retainer** — which is also, in his telling, the entire reason the booking happened at all and why B-Rank postings through his contractor are rare rather than routine.

  Ran the clear without incident from the harvest element's perspective: perimeter secured before harvest crossed, a widened perimeter called deeper in, then the boss engaged and killed by her full line with clipped, purposeful callouts throughout. **She has not seen Alexander fight and has no basis for an opinion on his combat capability** — he mined behind her line for the entire job and drew no weapon.

  **Nothing has been named to her.** Not the System, not the dimensional inventory, not the 45 crystals that never reached Dale's manifest."
```

### ENT-000205 — Reston

The second harvest cutter on Dale Pruitt's 2026-08-16 B-Rank job. Named, present, and barely known.

```yaml
id: ENT-000205
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000415
  game_date: "2026-08-16 08:00 -05:00"
  real_date: "2026-08-05"
type: Character
subtype: harvest-element miner
scope: local
lifecycle: active
aliases:
  - name: "Reston"
    quality: current
canonical_state:
  rank: "Not established. Section 11.1 permits a miner of any Rank to work a Gate above their own under the strike team's protection, and nothing in play has resolved his."
  location: ENT-000087
  condition: "Healthy; not established as combat-active. Held behind the strike line for the whole clear, as harvest protocol requires."
  capabilities: "Harvest-element cutter. **Logged 12 crystals** on the 2026-08-16 B-Rank job against Alexander's declared 19 — an ordinary solid haul on a job where the harvest line ran two hands short."
  appearance: "Not established."
  personality: "Not established — no dialogue exchanged. Stopped working entirely and stared north when the boss fight started, which is the only thing about him play has actually shown."
  situation: "**Met, minimally, 2026-08-16 (`EVT-000415`).** Arrived about ten minutes before Alexander; Dale named him at the briefing as the other half of a two-cutter harvest element. Worked the same secured deposits under the same protocol and declared 12 crystals at the manifest. No conversation between them is recorded, and he is not established as knowing anything about Alexander beyond that they worked the same job."
```

### REL-000097 — Alexander and Marisela Kwan

```yaml
id: REL-000097
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000415
  game_date: "2026-08-16 08:00 -05:00"
  real_date: "2026-08-05"
endpoints:
  - ENT-000125
  - ENT-000204
type: professional-acquaintance
qualities: "Correct and thin, which is what a first job together produces. She gave him one handshake, one honest answer about her own business, and one instruction — stay behind the line — and then ran her clear. He read her with Flux Sight before saying anything of substance, which she has no way to know about. **No warmth and no friction; nothing has been tested in either direction.**"
state: "**Worked one job together, 2026-08-16, with no contact since.** She has not seen him fight and holds no opinion on his combat capability; he has seen her run a nine-strong line against a B-Rank boss cleanly and competently, from thirty meters away and by sound. No further work is arranged, and the channel between them runs entirely through Dale Pruitt's contractor rather than directly — no numbers exchanged."
history: "Formed 2026-08-16 (`EVT-000415`) at the staging lot for Dale Pruitt's confirmed B-Rank harvest job, the first correctly-staffed B-Rank Gate Alexander has worked."
```

### REL-000098 — Alexander and Iris Halvorsen

```yaml
id: REL-000098
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000456
  game_date: "2026-08-17T18:35:00-05:00"
  real_date: "2026-08-05"
endpoints:
  - ENT-000125
  - ENT-000187
type: recruitment-candidate
qualities: "Formed across two prior meetings (`EVT-000293`, `EVT-000308`) but never minted a relationship record until the first crew training gave the two of them an actual working exchange rather than a pitch and a read. Direct on both sides: she names her own frustration plainly, he answers with structural authority rather than reassurance. **The defining exchange is functional, not personal** — two standing authorities (an absolute stop-call, and now binding gap-coverage calls) granted and tested live in one evening."
state: "**Not committed; the supervised low-stakes run promised at her recruitment is now scheduled — the last open condition has a date.** Her stop-call fired live for the first time on 2026-08-17 and held without hesitation or second-guessing; her structural read of the crew's gap-coverage defect was immediate and unprompted, and she was given standing authority over it on the spot. Told Alexander directly that this is the first time in three years a crew has used her read as more than a formality. **2026-08-18: the run itself booked for Saturday 2026-08-22**, confirmed D-Rank Ashfield, ten-slot roster. Replied with unprompted thanks for it actually being booked rather than left to drift."
history: "Named by Wade Bishop 2026-08-11 (`EVT-000293`); met in person 2026-08-12 (`EVT-000308`), negotiating her absolute stop-call and a training-before-blind-run condition before agreeing to attend. Attended the first crew training 2026-08-17 and was given a second standing authority — gap-coverage calls binding on any lead — in the same session (`EVT-000454`-`EVT-000458`)."
```

### REL-000095 — Alexander and Reyna Castillo

```yaml
id: REL-000095
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000409
  game_date: "2026-08-15 19:00 -05:00"
  real_date: "2026-08-04"
endpoints:
  - ENT-000125
  - ENT-000182
type: recruitment-candidate
qualities: "Professional and unsentimental on both sides, with an unusual amount of candor for a first meeting. She asks the uncomfortable question directly and does not accept a near-miss answer as an answer — she pushed the same question through three attempts before Alexander landed on it. What she trusts is the manner rather than the content: she took his sharp, slightly irritated answer as more credible than the two smooth ones that preceded it, and said so. He, for his part, came away genuinely unsure of her, reading her persistence as not-listening where Owen read it as the opposite."
state: "**Attended the first crew training, 2026-08-17, 18:00, as an active evaluator, embedded in Corbin's element rather than watching from outside (`EVT-000453`-`EVT-000458`).** The 'sunup' scheduling confusion was resolved directly by text before the session (`EVT-000451`) — she held the correct 18:00 hour from Alexander himself, not secondhand. Watched Alexander name his own botched-entry failure unprompted and confirmed by Felix as the direct answer to the exact standard she spent Saturday's meeting pressing for; visibly registered it. Said little during the drills themselves, watching rather than participating in judgment. **Closed the night with unprompted warmth for the first time in the relationship** — 'good session, I mean that' — and committed to an answer by **Wednesday 2026-08-19**, consistent with her established decision pace rather than a rush. **Still unresolved on Alexander's side:** his 'not sure about her' read, never voiced to her directly, is untouched by tonight."
history: "Named by Kesha Morrison 2026-08-11 (`EVT-000273`) as the first real candidate for the crew; contacted by text the same evening (`EVT-000298`); declined a faster solo meeting in favour of waiting five days to see both crew leads together (`EVT-000306`). First met in person 2026-08-15 at the Loyola lakefront (`EVT-000409`), a location chosen deliberately over a café, which she approved of unprompted. Attended and evaluated the first crew training 2026-08-17 (`EVT-000453`-`EVT-000458`); decision promised by 2026-08-19."
```

### REL-000096 — Alexander and Priscilla Nakamura

```yaml
id: REL-000096
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000410
  game_date: "2026-08-15 ~21:30 -05:00"
  real_date: "2026-08-04"
endpoints:
  - ENT-000125
  - ENT-000203
type: professional-services
qualities: "Transactional and unusually honest about its own limits on both sides. She opened guarded, priced everything plainly, and refused to promise a result she has never produced — telling him outright she'd rather say so than take his money and find out together it doesn't work. He matched it: gave the object's grey-market provenance without dressing it up, said he would not let her decline payment for a failed attempt, and asked to be taught rather than served. She registered the candor as trust-building rather than a liability, consistent with her indifference to origin. Warmth is not the register; **legibility is** — neither party has performed anything for the other yet."
state: "**First working session held, 2026-08-18 19:28-~21:15 (`EVT-000485`).** Split confirmed: identification solo, everything toward an actual goal joint. Taught crystal-seating on a disposable torso; Alexander fumbled once (a real burn, caught before it worsened) then landed two clean seatings, the second fast. Demonstrated a full stat-building infusion on her own scrap when asked, declining to let him attempt that tier yet — he then read the finished result with Keen Sense and correctly named both of her mid-process corrections, unprompted, which visibly moved her past simple approval. **Identification balance closed: $800 paid in cash.** **Standing weekly schedule set** — Wednesday and Friday 19:30 practical sessions (own billing line, same $200/hour), Thursday core-planning, starting 2026-08-19. **She holds the Dormant Core [S-Rank] in physical custody** as a non-negotiable condition — ownership unchanged, no return date agreed, not touched this session. Of the deposited materials, **4 of 7 C-Rank Mana Crystals consumed** across the demonstration and Alexander's three attempts; 3 remain on her bench. **Contact is direct rather than through Wade Bishop, at Alexander's explicit request** — she has his real personal number, not a disposable one, and copied it into her ledger under his name."
history: "Named by Wade Bishop 2026-08-14 in the Region V lot (`EVT-000384`) when Alexander asked whether Ironline kept an artificer who does not ask questions. Window delivered by Wade 2026-08-15 (`EVT-000404`); first and only meeting the same night, 21:00 at her workshop (`EVT-000410`). **Nothing about Marnie, the S-Rank dagger, the Loomis Street operation, or the System has been named to her.**"
```
