# Knowledge Subjects — Gatefall

**Ledger:** Canonical Record (`011` Section 8) holding Gatefall's Knowledge Subjects and the holder Knowledge States about them (Rules Section 8).
**Status:** Active — instantiated as canonical world content (2026-07-28).

A Knowledge Subject persists as one subject; different holders keep divergent Knowledge States about it. Every subject in this ledger is additionally a **concealed discovery** (`subtype: concealed-discovery`) — an authored fact the Bearer does not know, sited at a place or a person he can physically reach, and carrying the complete contract `206_WORLD_RULE_PROFILE.md` Section 8.4.3 requires before a Hidden quest pointer may attach.

**Why this ledger exists.** Section 8.4.3 makes a Hidden quest pointer eligible only when a concealed discovery *already exists in authored canon* and the Bearer has reached proximity or a genuine clue to it. Gatefall authored plenty of secrets — in `220_NOTABLE_FIGURES.md`, `210_PLACES.md`, and `260_SEED_EVENTS.md` — but none of them carried a recorded reveal condition, an objective, or a statement of what physical proximity to them means, so none of them could ever satisfy the section's fourth criterion. The supply was empty by construction and no Hidden quest could fire. This ledger is the supply. It does not invent the world's secrets; it translates the ones already authored into the exact shape Section 8.4.3 consumes, and adds the reachable local entry points that let an E- or D-Rank hunter working ordinary contracts actually walk into one.

**What a record here is, and is not.**

- It is **owner-facing**. Nothing in this file is player-facing, and a Runtime never renders it. An attached pointer renders `???` under Section 8.4.3 and nothing else.
- It **stores no reward.** Section 8.4.3 fixes a Hidden quest's reward at the Gate-clear milestone XP for the Bearer's System Rank *when the pointer attaches*. It is not a property of the discovery and must never be written here.
- It is **not a schedule.** A record's presence obligates nothing. It becomes a pointer only when the Bearer independently reaches its `proximity_condition` or resolves its `clue_condition` in play, and never because a session has been quiet.
- It is **not mutated by play.** Each record's `bearer_knows: false` is the authored default for a fresh campaign. Live pointer status — attached, revealed, completed, failed, abandoned — is campaign state under Section 8.4.1, and no campaign ever edits this file.
- Several records bottom out in `200_WORLD_BIBLE.md` Section 9 (OWNER EYES ONLY). Those carry `resolution_depth: surface` and state their reachable layer only. The deep answer is the owner's to give at reveal; this ledger does not author it, quote it, or paraphrase it.

**Field contract.** Every `concealed-discovery` record carries: `claim` (the concealed fact), `anchor` (the entity it hangs on), `concealment` (why the Bearer does not already know it), `proximity_condition` and `clue_condition` (the two routes Section 8.4.3 criterion 2 accepts), `reveal_condition`, `objective`, `completion_condition`, `failure_or_expiry`, `resolution_depth`, and `bearer_knows`. A record missing any of these is not eligible to attach.

---

## Record

```yaml
id: REC-000100
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000151
  - ENT-000152
  - ENT-000153
  - ENT-000154
  - ENT-000155
  - ENT-000156
  - ENT-000157
  - ENT-000158
  - ENT-000159
  - ENT-000160
  - REL-000071
  - REL-000072
  - REL-000073
  - REL-000074
  - REL-000075
  - REL-000076
  - REL-000077
  - REL-000078
  - REL-000079
  - REL-000080
  - REL-000081
  - REL-000082
  - REL-000083
```

---

# Chicago

## The sublevel under the Cicero Scar

`210_PLACES.md` establishes that the Scar's perimeter sensors log periodic mana spikes that never reach a public report and that BGM staff wave off in the field. The spikes have a source and a location, and the survey record does not contain either.

```yaml
id: ENT-000151
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "the sublevel under the Cicero Scar"
    quality: current
canonical_state:
  claim: "Under one of the Scar's unreclaimed core blocks, a light-industrial sublevel was crushed shut in the break and logged afterward only as a structural footprint — never opened, never surveyed. The perimeter's periodic unexplained mana spikes originate below that footprint rather than in the warped blocks above it, which is why a decade of surface survey has never located them."
  anchor: ENT-000091
  concealment: "Entry to the core blocks is restricted to licensed BGM-escorted survey and containment teams, and the sublevel reads as solid fill on every floor plan BGM holds. Nobody has had cause to dig."
  proximity_condition: "Standing inside the Scar's inner cordon, in the unreclaimed core blocks — however reached. **Amended by owner ruling, 2026-08-20** (`campaigns/gatefall_pendragon_001`, `EVT-000555`): the original wording required a BGM-contracted survey or containment posting, which excluded a Bearer who reaches the core by stealth or rift-step rather than by badge — an access method this record predates. The posting requirement is dropped as bureaucratic detail on top of the actual gate, which was always physical presence."
  clue_condition: "None required — proximity alone satisfies Section 8.4.3's criterion 2. **Amended in the same ruling**: the original depth-read clue is dropped alongside the posting requirement."
  reveal_condition: "The Bearer reaches the sublevel floor in person and gets a light source onto the far wall."
  objective: "Get into the sublevel and establish what is producing the spike."
  completion_condition: "The spike's source identified first-hand, at the sublevel floor."
  failure_or_expiry: "None. The concealment is stable and survives indefinitely; BGM has managed rather than healed this site for a decade and has no plan to open it."
  resolution_depth: "surface — what is down there is an owner ruling at reveal, and is not authored in this ledger."
  bearer_knows: false
```

---

## The cores that read off the band

`220_NOTABLE_FIGURES.md` establishes that Deacon has handled a core or two that appraise off any Rank he knows, that he does not understand what he is moving, and that he is trying to find out without spooking his buyers.

```yaml
id: ENT-000152
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "the cores that read off the band"
    quality: current
canonical_state:
  claim: "A small number of the cores moving through the Chicago-to-Prague undeclared lane appraise off the unified Rank band entirely — not high, not low, but outside it. The fences at both ends know only that these price like nothing else and that the buyers do not haggle. Neither end knows what they are, and neither has told the other how many have passed."
  anchor: ENT-000112
  concealment: "The lane is unlicensed and deliberately compartmented; Deacon hedges every answer by habit, and the anomalous cores are the one part of his stock he will not discuss with a seller he is still measuring."
  proximity_condition: "An in-person dealing with Deacon, or with any working fence in the same lane, at which the Bearer physically handles stock rather than only negotiating price."
  clue_condition: "A resolved appraisal read on a core sourced from that lane — by capability or at a bench — which returns no band at all."
  reveal_condition: "One such core is read by a Provenance-grade appraiser, or by a second appraisal independent of the first, and the two readings agree that it is off-band rather than mismeasured."
  objective: "Obtain one off-band core and establish that its reading is not instrument error."
  completion_condition: "Two independent appraisals of the same core both return off-band."
  failure_or_expiry: "Expires if Deacon is arrested, or if he concludes the Bearer is an informant risk and closes the relationship — the lane's Chicago end is one man, and he does not reopen."
  resolution_depth: "surface — what the off-band reading signifies is an owner ruling, and connects to ENT-000160."
  bearer_knows: false
```

---

## Foss's shelved brand file

`220_NOTABLE_FIGURES.md` establishes the file, its shelving by Director Okafor, that Foss kept her copy, and that she has told exactly one person who might listen.

```yaml
id: ENT-000153
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "Foss's shelved brand file"
    quality: current
canonical_state:
  claim: "Eleanor Foss logged an old healed weapon-wound and an identical seared brand on beast remains recovered from Gates on opposite sides of the planet — matching nothing in any BGM bestiary, and implying the beasts had lives before these Gates. She wrote it up, Director Okafor shelved it, and Foss retained her own copy."
  anchor: ENT-000111
  concealment: "The report is off the Region V record by the director's decision. Foss will not hand it to a hunter who is merely curious; being disbelieved once is the injury the whole file sits on."
  proximity_condition: "Being appraised by Foss at the Region V Ranking Bench, or present in the field office on business while she is on bench."
  clue_condition: "Independently encountering beast remains that carry the same healed wound or seared brand, and recognizing the pairing as anomalous rather than ordinary battle damage."
  reveal_condition: "Foss elects to show the Bearer her retained copy. She does so only when he presents specific first-hand evidence that he has seen the same thing — a question, an offer of money, or a claim of interest does not move her."
  objective: "Earn the file."
  completion_condition: "The file's contents read first-hand."
  failure_or_expiry: "Expires on trust loss: if the Bearer reports her off-book re-measurement work to BGM, or is credibly read by her as attached to Region V's chain of command, she never opens it and does not revisit the decision."
  resolution_depth: "surface — what the brand is remains an owner ruling; the file establishes the pattern, not its cause."
  bearer_knows: false
```

---

## The Red Line's repeating detection point

`210_PLACES.md` establishes that the corridor's detections get folding-table staging as often as a BGM van, and that its contract volume is worked by ad hoc parties assembled an hour before a timer.

```yaml
id: ENT-000154
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "the Red Line's repeating detection point"
    quality: current
canonical_state:
  claim: "One alley mouth in the Red Line Corridor has produced markedly more Gate detections than BGM's own siting models predict for any single point, over a span of years. Each was logged as an independent detection, because the corridor's low-rank contract volume is split across desks and no one has ever pulled the coordinates together."
  anchor: ENT-000090
  concealment: "Nothing is hidden — the records are ordinary and public. The concealment is aggregation: no single desk sees enough of the corridor at once for the recurrence to become visible, and the hunters who work it move on after each clear."
  proximity_condition: "Having personally worked two or more Red Line Corridor contracts, at least one of them at or adjacent to the point itself."
  clue_condition: "Noticing that two contract postings the Bearer has personally worked name the same address or the same alley mouth."
  reveal_condition: "The Bearer assembles three or more separate detection records for that one point — from his own contract paperwork, Coalition postings, or the BGM board."
  objective: "Establish the recurrence as a pattern rather than coincidence."
  completion_condition: "The assembled pattern presented to a party who can act on it — the Coalition, the BGM Ranking Bench, or a guild."
  failure_or_expiry: "Expires if the point produces a dungeon break before the Bearer assembles the pattern. The break makes the recurrence public and the discovery is no longer concealed."
  resolution_depth: "surface — why that point recurs is an owner ruling."
  bearer_knows: false
```

---

## Okafor's off-record clears

`260_SEED_EVENTS.md` (`EVT-000055`) establishes that Director Okafor sits on incident logs from anomalous local clears she has kept off the record, and that she has not connected them to Director Beran's parallel evidence.

```yaml
id: ENT-000155
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000055
  game_date: "2026-07-01"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "Okafor's off-record clears"
    quality: current
canonical_state:
  claim: "Director Naomi Okafor holds a set of incident logs from local clears whose results her office cannot account for, kept deliberately off the Region V record. She is one of two regional directors independently sitting on evidence for the steepening break curve, and she has not connected hers to Beran's or escalated it."
  anchor: ENT-000107
  concealment: "The logs are off-record by the director's own decision, held at a level of the office an E- or D-Rank freelancer has no ordinary business reaching."
  proximity_condition: "Business at the Region V field office conducted at director level rather than at the counter, bench, or contract desk — a re-assessment, a summons, or an escalation that puts the Bearer in front of Okafor herself."
  clue_condition: "Learning from a bench-level source that anomalous clear results exist which never reached the published record."
  reveal_condition: "Okafor elects to open the file to the Bearer. She does so only when the Bearer's own record is already one of the entries in it — the file is the reason she is talking to him, not a favour she grants."
  objective: "Get her to open the file she keeps on anomalous clears."
  completion_condition: "The file read first-hand, and the Bearer establishing that he is in it."
  failure_or_expiry: "No expiry, but this discovery carries live exposure risk: reaching it means Region V has already begun to notice him, and Section 19's re-assessment procedure is the ordinary consequence."
  resolution_depth: "surface — what Okafor intends to do with the file is an owner ruling."
  bearer_knows: false
```

---

## The practiced distance on the Lakefront

`210_PLACES.md` establishes that the corridor's appraisal-cell vans park "at a practiced distance from the mouth," that its evacuation choreography has been drilled for a decade, and that the corridor has claimed hunters who treated its familiarity as safety.

```yaml
id: ENT-000156
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "the practiced distance on the Lakefront"
    quality: current
canonical_state:
  claim: "The standoff distance the Lakefront Corridor's appraisal cells park at is not a regulation figure — it was set after a specific incident that predates the current protocol and does not appear in the corridor's public history. The drill choreography the whole neighborhood has rehearsed for a decade still encodes that one event, and the staff who set it have mostly rotated out."
  anchor: ENT-000089
  concealment: "Nobody is concealing it deliberately; the protocol outlived the memory of its own cause. The people who could say why are the corridor's oldest hands, and new faces are told the distance, never the reason."
  proximity_condition: "Staging for a Lakefront contract at the Coalition's usual assembly point — the food-truck row — alongside hunters who have worked the corridor for years."
  clue_condition: "Asking a corridor veteran why the distance is what it is and receiving a deflection rather than an answer."
  reveal_condition: "The Bearer establishes the incident from a source that predates the current protocol — a hunter or BGM hand who was present, or the corridor's pre-protocol filings."
  objective: "Establish what set the distance."
  completion_condition: "The incident established first-hand from a pre-protocol source."
  failure_or_expiry: "None, but the source pool shrinks: the corridor's remaining veterans are the only route, and this world is lethal to hunters."
  resolution_depth: "surface — the incident itself is an owner ruling."
  bearer_knows: false
```

---

# Prague

## The Old Town Gate's receding clock

`260_SEED_EVENTS.md` (`EVT-000053`) establishes the double upward re-ranking, the absence of any surveyor's mechanism, and the break-countdown signature reading further from break on each pass.

```yaml
id: ENT-000157
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000053
  game_date: "2026-05-02"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "the Old Town Gate's receding clock"
    quality: current
canonical_state:
  claim: "A single Old Town Cluster detection has been re-ranked upward twice inside one contract cycle — D to C to B — on instruments the CGA otherwise trusts completely, while its break-countdown signature reads further from break on each successive pass. A Gate first posted at D on 2026-05-02 should have broken inside six days under Section 9.3; it is months past that window and its clock is still receding. No amended survey offers a mechanism."
  anchor: ENT-000094
  concealment: "The CGA has not paused the contract, escalated publicly, or explained the climb. The survey series is internal, and Karlov Guild continues to hold the contract at a Rank it did not bid on."
  proximity_condition: "Physical presence at the Old Town Gate Cluster on contract, survey, or escort business, close enough to the detection to take a reading."
  clue_condition: "Reading two or more entries of the CGA's amended survey series and noticing the countdown moves the wrong way."
  reveal_condition: "The Bearer takes or witnesses a mana-pressure and countdown reading on that Gate personally which contradicts every timer model the agency holds, ruling out instrument error as the explanation."
  objective: "Establish that the divergence is real rather than an instrument fault."
  completion_condition: "An independent first-hand reading confirming both the climbing pressure and the receding countdown."
  failure_or_expiry: "Expires when Karlov clears the Gate, or if it breaks. Either resolves the anomaly publicly and on someone else's terms."
  resolution_depth: "surface — the mechanism is an owner ruling and is not authored here."
  bearer_knows: false
```

---

## The lanes the CGA declines to close

`220_NOTABLE_FIGURES.md` establishes that Sova knows which of her routes CGA enforcement has quietly chosen not to close, and that she is careful never to ask why.

```yaml
id: ENT-000158
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "the lanes the CGA declines to close"
    quality: current
canonical_state:
  claim: "Specific smuggling routes out of Prague stay open because the CGA's enforcement arm has decided not to close them, not because it has failed to find them. Sova knows which routes these are, has built her trade on them, and has made a discipline of never asking why they are open."
  anchor: ENT-000118
  concealment: "The only two parties who could state it are a smuggler whose survival depends on saying nothing and an agency that would have to admit the decision. Sova gives a meeting the minimum words it needs."
  proximity_condition: "An in-person dealing with Sova in Prague, at which the Bearer is treated as client or carrier rather than assessed and dismissed."
  clue_condition: "Establishing that a specific lane has survived an enforcement sweep that closed comparable routes around it."
  reveal_condition: "The Bearer establishes that one named lane's immunity is a standing decision rather than an enforcement gap — from CGA-side documentation, or from Sova electing to say so."
  objective: "Establish that a lane's immunity is a decision."
  completion_condition: "The decision established first-hand, with the deciding party identified."
  failure_or_expiry: "Expires if Sova concludes the Bearer is a thread back to her; she does not warn, she simply stops existing to him."
  resolution_depth: "surface — why the CGA leaves the lanes open is an owner ruling."
  bearer_knows: false
```

---

## The Libeň analyst's chart

`260_SEED_EVENTS.md` (`EVT-000055`) establishes that Director Beran has seen an analyst's chart out of the Libeň Scar plotting the break-rate acceleration regionally, and that its author stopped taking calls.

```yaml
id: ENT-000159
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000055
  game_date: "2026-07-01"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "the Libeň analyst's chart"
    quality: current
canonical_state:
  claim: "An analyst working out of the Libeň Scar plotted the accelerating break rate regionally — the same steepening curve the closed regulator sessions keep returning to — and put it in front of Director Beran. The author then stopped taking calls. The chart exists; the analyst's silence has a cause."
  anchor: ENT-000096
  concealment: "The chart never reached publication and sits with a director who has not escalated it. The analyst is unreachable by ordinary means, which is itself the part nobody has examined."
  proximity_condition: "Physical presence at the Libeň Scar perimeter or in the CGA circles that handle its survey work, on business that puts the Bearer near the analyst's former colleagues."
  clue_condition: "Learning from a CGA-side or Scar-side source that a regional acceleration chart was circulated and then went quiet."
  reveal_condition: "The Bearer locates either the chart itself or the analyst in person."
  objective: "Find the chart, or find its author."
  completion_condition: "The chart read first-hand, or the analyst located and their silence accounted for."
  failure_or_expiry: "None authored. The silence is stable until someone disturbs it."
  resolution_depth: "surface — what happened to the analyst is an owner ruling and is not authored here."
  bearer_knows: false
```

---

# Cross-City

## The brand as one pattern

The connective subject. Four holders each possess a fragment of the same anomaly and none has connected it to another; `EVT-000055` establishes explicitly that the two regional directors hold supporting evidence they have not connected to each other.

```yaml
id: ENT-000160
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: world
lifecycle: active
aliases:
  - name: "the brand as one pattern"
    quality: current
canonical_state:
  claim: "The old healed weapon-wound and the seared brand are not four separate curiosities. The same pairing appears on Foss's cross-planet remains, in the Cicero Scar survey rumors, on the cores moving through Deacon's westward lane, and on Sova's off-band cargo. Every holder has one fragment; none has set theirs beside another's. That the fragments are one pattern is itself the concealed fact."
  anchor: ENT-000111
  concealment: "Distribution, not secrecy. The pieces sit with a shelved appraiser, two compartmented fences on opposite ends of one lane, and a rumor mill inside a federal cordon — parties with no reason and no channel to compare notes."
  proximity_condition: "The Bearer holds, first-hand, two independently sourced instances of the pairing — not two accounts of it, and not one instance plus a rumor."
  clue_condition: "Reaching any two of ENT-000151, ENT-000152, ENT-000153, ENT-000158, or ENT-000159 to their own completion conditions."
  reveal_condition: "The Bearer sets two independently sourced instances side by side and establishes that the wound and brand match rather than merely resemble."
  objective: "Establish that the fragments are one pattern."
  completion_condition: "The match established first-hand across two independently sourced instances."
  failure_or_expiry: "None. Distribution is stable; no holder is moving toward another."
  resolution_depth: "surface — what the pattern means bottoms out in `200_WORLD_BIBLE.md` Section 9 (OWNER EYES ONLY). This ledger authors the pattern's existence and reachability only. The Runtime never reveals Section 9 in play, and reaching this discovery's completion condition establishes that the pattern is real, not what caused it."
  bearer_knows: false
```

---

## Holder Knowledge States

```yaml
id: REL-000071
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000099, ENT-000151]
type: knowledge-state
qualities: "Holder: BGM Region V (custodian). State: instrumental and incurious. Its perimeter sensors have logged the spikes for years and its field staff wave them off; the office holds the readings, has never located their source, and has never published them."
```

```yaml
id: REL-000072
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000112, ENT-000152]
type: knowledge-state
qualities: "Holder: Deacon (handler). State: commercial and uncomprehending. He knows these cores price like nothing else and that the buyers do not haggle; he does not know what they are, and is trying to find out without spooking anyone."
```

```yaml
id: REL-000073
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000118, ENT-000152]
type: knowledge-state
qualities: "Holder: Sova (far end). State: identical and separately held. She knows the same commercial fact from the Prague side and has begun, for the first time in years, to be curious about it. Neither end has told the other how many have passed."
```

```yaml
id: REL-000074
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000111, ENT-000153]
type: knowledge-state
qualities: "Holder: Eleanor Foss (author). State: complete and documented. She measured it, wrote it up, and kept her copy when it was shelved. She has told exactly one person who might listen and wants one more who will act."
```

```yaml
id: REL-000075
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000107, ENT-000153]
type: knowledge-state
qualities: "Holder: Naomi Okafor (suppressor). State: aware and shelved. She read the report and declined to advance it. Her reason is not recorded in this ledger and is not the same thing as disbelief."
```

```yaml
id: REL-000076
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000099, ENT-000154]
type: knowledge-state
qualities: "Holder: BGM Region V (unassembled). State: fully documented and entirely unnoticed. Every constituent detection record sits in its own files; no desk holds enough of the corridor at once for the recurrence to surface, and nobody has asked."
```

```yaml
id: REL-000077
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000055
  game_date: "2026-07-01"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000107, ENT-000155]
type: knowledge-state
qualities: "Holder: Naomi Okafor (custodian). State: deliberate and isolated. She keeps the logs off the record by her own decision and has connected them to nothing — not to Beran's regional evidence, not to the closed-session curve, and not yet to any single hunter in them."
```

```yaml
id: REL-000078
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000087, ENT-000156]
type: knowledge-state
qualities: "Holder: Chicago's Lakefront Corridor veterans (practice without memory). State: procedural. They keep the distance exactly and teach it to every new face; the ones who could say what set it have mostly rotated out, and the ones who remain deflect rather than explain."
```

```yaml
id: REL-000079
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000053
  game_date: "2026-05-02"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000103, ENT-000157]
type: knowledge-state
qualities: "Holder: the Czech Gate Administration (measurer). State: documented and unexplained. Its own instrumented surveys produced both the climbing Rank and the receding countdown; it trusts the instruments, has no mechanism to offer, and has not paused the contract or escalated publicly."
```

```yaml
id: REL-000080
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000053
  game_date: "2026-05-02"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000104, ENT-000157]
type: knowledge-state
qualities: "Holder: Karlov Guild (exposed party). State: partial and commercial. It knows the Rank it now holds is not the Rank it bid on and that no survey explains the climb; it continues to hold the contract."
```

```yaml
id: REL-000081
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000118, ENT-000158]
type: knowledge-state
qualities: "Holder: Sova (beneficiary). State: operationally complete, deliberately incurious. She knows exactly which routes stay open and has made never asking why into a discipline her survival depends on."
```

```yaml
id: REL-000082
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000055
  game_date: "2026-07-01"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000113, ENT-000159]
type: knowledge-state
qualities: "Holder: Miloš Beran (recipient). State: seen and unescalated. He has seen the chart and knows its author stopped taking calls. He has not connected it to Okafor's parallel evidence and has not put it on any record."
```

```yaml
id: REL-000083
canonical_record: REC-000100
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-28T00:00:00Z"
endpoints: [ENT-000111, ENT-000160]
type: knowledge-state
qualities: "Holder: Eleanor Foss (largest fragment). State: the closest anyone has come. Her file already spans two Gates on opposite sides of the planet, which is more of the pattern than any other holder has assembled — and still only one of its four fragments. No holder anywhere holds two."
```
