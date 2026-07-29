# Campaign Chronicle — Reikon Awakening 001

## Record

```yaml
id: REC-000043
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000043
  event_time: "Year 31 AR, Ashgate E-Rift closure"
  record_time: "2026-07-21T01:00:00Z"
role: chronicle
scope: campaign
subjects:
  - EVT-000025
  - EVT-000026
  - EVT-000027
  - EVT-000028
  - EVT-000029
  - EVT-000030
  - EVT-000031
  - EVT-000032
  - EVT-000033
  - EVT-000034
  - EVT-000035
  - EVT-000036
  - EVT-000037
  - EVT-000038
  - EVT-000039
  - EVT-000040
  - EVT-000041
  - EVT-000042
  - EVT-000043
```

## Expedition Begins

```yaml
id: EVT-000025
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, expedition morning"
  record_time: "2026-07-13T00:00:00Z"
kind: expedition-begin
importance: archived
participants:
  - ENT-000051
  - ENT-000062
description: "Captain Marissa Thorne briefs Daedalus, who accepts a solo E-grade assignment and enters the Warehouse 7 E-Rift."
```

## Broodling Combat

```yaml
id: EVT-000026
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, expedition, first combat"
  record_time: "2026-07-13T00:00:00Z"
kind: combat
importance: archived
participants:
  - ENT-000051
description: "Daedalus rolls 43 with +2 modifier steps and destroys two stationary Broodlings with Fireball, spending 12 mana and gaining 12 XP."
```

## Recovery and Observation

```yaml
id: EVT-000027
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, expedition, between combats"
  record_time: "2026-07-13T00:00:00Z"
kind: observation
importance: archived
participants:
  - ENT-000051
description: "Daedalus rests to recover mana and observes that Rift glow intensity correlates with creature movement."
```

## Swarmer Combat

```yaml
id: EVT-000028
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, expedition, second combat"
  record_time: "2026-07-13T00:00:00Z"
kind: combat
importance: archived
participants:
  - ENT-000051
description: "Daedalus rolls 61 with +1 modifier step and destroys three charging Swarmers with a led Fireball, spending 12 mana and gaining 24 XP; he later recovers to full mana."
```

## Morning Physical Training

```yaml
id: EVT-000029
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "campaigns/reikon_awakening_001/exports/play_export_0001.md"
  event_time: "Year 31 AR, expedition morning, before departure"
  record_time: "2026-07-14T18:00:00Z"
kind: training
importance: archived
participants:
  - ENT-000051
description: "Daedalus completes a 10 km run, thirty minutes of sword forms, one hundred pushups, and controlled spell drills; he commits to repeating the regimen daily."
```

## Pack-Leader Combat

```yaml
id: EVT-000030
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "user-supplied raw chat export: full_chat_export_reikon_session.md"
  event_time: "Year 31 AR, first expedition, pack-leader combat"
  record_time: "2026-07-14T18:00:00Z"
kind: combat
importance: active
participants:
  - ENT-000051
description: "Daedalus wounds the Warehouse 7 pack leader with Fireball, is raked and pinned during a sword charge, then uses his sword training to incapacitate and kill it. He ends at 60/100 Health with a moderate left shoulder/collarbone wound, 5/13 Mana after active recovery, and 55/100 XP after the D-grade 19-XP award. Surviving Broodlings retreat."
```

## Warehouse Exploration and Exit

```yaml
id: EVT-000031
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "user-supplied gameplay: /continue session 2"
  event_time: "Year 31 AR, first expedition, post-combat exploration and exit"
  record_time: "2026-07-14T20:30:00Z"
kind: exploration
importance: active
participants:
  - ENT-000051
description: "Daedalus follows a retreating Broodling downward into the warehouse basement, discovering a vast core chamber accessed via a downward-sloping concrete corridor. He maps the layout mentally for later documentation. After returning to the pack leader's corpse, he methodically harvests all looted creatures: four cores from the pack leader, a natural iridescent scale plate from its armor, and seven cores from six earlier kills (Broodlings and Swarmers). Total cores recovered: 11 (inventory now 61). He then exits Warehouse 7 and travels to Hunters' Association headquarters for medical treatment. The Association healer treats his wound, transitioning health recovery from paused/untreated to active/treated. Daedalus rests at the Association while his wound begins deterministic healing. He carries a natural scale plate of unknown crafting value. Basement core chamber confirmed but not yet accessed for final clear."
```

## Ruling — Warehouse 7 Kill Count Corrected

```yaml
id: EVT-000032
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, first expedition, post-combat exploration and exit"
  record_time: "2026-07-14T21:15:00Z"
kind: ruling
importance: archived
participants:
  - ENT-000051
description: "Explicit ruling correcting a recording error in EVT-000031, classified under Runtime Section 8.1 as a transcription error rather than a canon conflict. EVT-000031 states 'seven cores from six earlier kills'; the earlier kills are five, not six. Four independent sources establish the correct count: EVT-000026 and ENT-000052 record two Broodlings destroyed; EVT-000028 and ENT-000053 record three Swarmers destroyed; 170_CHANGELOG.md records 'five creatures defeated' for Session 1; 140_OBJECTIVES.md records 'Five earlier creatures and the pack leader'. The Session 1 transcript audit (exports/README.md) independently confirms two Broodlings and three Swarmers. Correct canon: six creature kills total for the expedition — two Broodlings, three Swarmers, and the pack leader — of which five precede the pack-leader combat. The core counts are unaffected and stand as recorded: four cores from the pack leader and seven from the five earlier kills, 11 total, corroborated by the core purse quantity of 61 (ENT-000060). The composition claim 'five Broodlings, one pack leader' in the superseded Current Chronicle Position prose was wrong on the same facts and is corrected here. EVT-000031 is immutable (011_ENGINE_DATA_MODEL.md Section 2.4) and its bytes are unchanged; it is retained as historical evidence of how the error was recorded, and this ruling governs where the two disagree."
```

## Recovery, Research, and Basement Engagement

```yaml
id: EVT-000033
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "owner-supplied full shared-chat transcript, promoted only through the last rules-valid exchange"
  event_time: "Year 31 AR, return to Warehouse 7"
  record_time: "2026-07-15T09:15:00Z"
kind: combat
importance: active
participants:
  - ENT-000051
  - ENT-000062
  - ENT-000071
  - ENT-000072
  - ENT-000073
description: "Daedalus bought four healing potions, two energy tonics, and wound salve for 15 E-cores; used one healing potion and three salve applications during recovery; completed two additional 10 km runs, one additional sword-form session, one additional pushup session, and further spell practice; and consulted Dr. Kalens, Dr. Soren, and Marta before returning to Warehouse 7. In the basement core chamber he found a suspended deep-red core guarded by four D-grade Breakers. With an active energy tonic, his ledge-sentinel sword attack rolled 28 raw plus one modifier step, effective 48, a partial success that killed the sentinel; the mandatory D-grade award adds 19 XP, moving 55 to 74. His first area Fireball then rolled 32 with no modifier, failed, and spent 12 Mana, moving 13 to 1. At the valid closing anchor Daedalus is on the four-metre ledge at 90/100 Health, 1/13 Mana, Level 1, and 74/100 XP; a burned Breaker is climbing toward him, a critically burned Breaker thrashes on the flank, and an unharmed guardian remains beside the unextracted core. The transcript's next attempted Fireball is not promotable because its 12-Mana gate is unmet; the Runtime's invented Health-powered overcast and everything causally downstream are non-canonical."
```

## Owner Ruling — Life-Burn Anomaly and Basement Clear

```yaml
id: EVT-000034
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "owner ruling applied to the complete shared-chat transcript"
  event_time: "Year 31 AR, Warehouse 7 Breaker engagement and aftermath"
  record_time: "2026-07-15T09:27:58Z"
kind: ruling-and-combat
importance: active
participants:
  - ENT-000051
description: "Owner ruling under Reikon Profile 0.5 supersedes EVT-000033's rejection boundary and authors one finite System anomaly. Bearer: Daedalus. Eligible Abilities: Fireball and Flame Shield. Conversion: each missing Mana costs 1 Health in the same exchange. Start: the first post-ledge Fireball attempt when Daedalus had 11 of the required 12 Mana. Expiry: immediate on the fourth Breaker's death. Health may not be reduced below 1. The anomaly is not an Ability, cannot be invoked again, and creates no ordinary overcasting precedent. Canonical continuation: half of one mana vial raises Mana 1→11; Fireball rolls 67, −1 step, effective 47, partial success, spends 11 Mana plus 1 Health and inflicts 22 close-blast Health damage, leaving 67/100. The remaining half-vial restores 10 Mana; a healing potion restores 25 Health to 92; a second Fireball rolls 73, succeeds, spends 10 Mana plus 2 Health, kills the flank and climbing Breakers, and awards 38 XP. XP 74→112 crosses T(1)=100 immediately: Daedalus reaches Level 2 with 12 XP carried toward T(2)=130; max Mana becomes 14 and max Health 105 while preserving the 10-HP deficit, so Health becomes 95/105. Half of a second mana vial restores 10 Mana. Flame Shield is sustained for four seconds at its correct 2 Mana/second cost, leaving 2 Mana. The four-metre jump and sword attack roll 58, −1 step, effective 38, failure; settled impact and rake damage leave 67/105. Daedalus then sustains Flame Shield for approximately three further seconds through the anomaly, paying the 6-Mana deficit with 6 Health, and charges. The sword attack rolls 84, +1 step from the burned guardian's impairment and the shield's pressure, effective 100 after the 01–100 clamp, critical success; the core guardian dies, awarding 19 XP and expiring the anomaly. XP becomes 31/130 at Level 2. A healing potion restores 27 Health to 88/105; one additional salve application redresses the shoulder. Daedalus rests and records detailed chamber observations, recovers Mana to 7/14, harvests four D-cores, then fails a direct extraction attempt at raw 42 with −1 step, effective 22. Study establishes that the core is energetically bonded and requires specialist severance or sealing. He allocates the Ascension's two points irreversibly: Mana Affinity 13→14 and Fireball Strength 0→1."
```

## Ruling — Institute Consultation Artifacts and Conditions Recorded

```yaml
id: EVT-000035
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T16:44:48Z"
  uncertainty: "Whether Daedalus retained the first paper naming the Institute's runner is not established by the transcript; Kalens set it aside after writing the second, and the fiction never says who kept it. Kalens's street and house are unnarrated: only the quarter and the time window are canonical. The runner is unnamed."
kind: ruling
importance: active
participants:
  - ENT-000051
  - ENT-000071
description: "Explicit ruling repairing an under-promotion in EVT-000033, classified under Runtime Section 8.1 as an omission rather than a canon conflict. EVT-000033 promoted the Institute consultation as relationships and objectives but recorded none of the artifacts or conditions the same scene established. Four omissions are repaired against the shared-chat transcript, which is unambiguous on each. First: Kalens wrote his personal residence in Verholt's scholar's quarter on a slip of paper together with a standing time window — early evenings, after the Institute closes — and handed it to Daedalus, who has carried it since. The paper is promoted as ENT-000078; it is a resource he possesses, and its absence from 120_INVENTORY_AND_OWNERSHIP.md left a carried object outside canon. Second: Kalens attached a condition to the alliance that REL-000045 recorded only as 'direct consultation agreed' — if Daedalus found something that did not fit the standard pattern he was to send word the same day and not wait for a full report. The condition is now carried in REL-000045's qualities and in the RESEARCH objective, and it is already met: four D-grade Breakers guarding an E-grade Rift and an energetically bonded core are precisely the anomaly described. Third: Kalens disclosed that the Vigil of the Rupture claims jurisdiction over 'deep phenomena', that Institute study of deep-Rift cores is under pressure, and that Daedalus should be careful who receives samples or observations. Canon held this only as a personality adjective on ENT-000071; it is Daedalus's knowledge and is promoted as ENT-000079. Fourth: Marta's correlation between core depth and post-extraction collapse speed is promoted as ENT-000080 and surfaced in 180_CURRENT_STATE.md, because it bears directly on the unextracted core and the five-day window and was recorded only as a note on ENT-000073. No fiction is added and no state is recalculated: Health, Mana, XP, allocation, core counts, and position are untouched. Every fact promoted here is attested in the transcript already promoted by EVT-000033, which is immutable (011_ENGINE_DATA_MODEL.md Section 2.4); its bytes are unchanged and this ruling governs the omissions. ENT-000079 deliberately does not link Daedalus to the world-layer subjects ENT-000045 or ENT-000050: Kalens disclosed a political conflict, not the Institute's finding, and asserting the latter would promote knowledge Daedalus does not have."
```

## Ruling — Venn and Vane Are Distinct Figures

```yaml
id: EVT-000036
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR; no fictional time elapsed"
  record_time: "2026-07-15T16:44:48Z"
  uncertainty: "Whether Venn and Vane know each other, how the Institute's directorship and its lead-researcher post relate, and whether Venn knows what Vane holds are all unestablished. Daedalus has met Venn and has never met Vane."
kind: ruling
importance: archived
participants:
  - ENT-000061
description: "Owner ruling resolving a latent identity ambiguity surfaced by the EVT-000035 audit. Campaign-local Dr. Kael Venn (ENT-000061, 'Aurology Institute director; Rift-research leadership') and world-layer Dr. Sable Vane (ENT-000036, 'Lead researcher of the Aurology Institute') carry near-identical names and adjacent roles at the same institution, and no record related them. The owner rules them DISTINCT FIGURES: Venn directs the Institute, Vane leads its research, and the similarity of their names is coincidental and in-world unremarkable. They are not to be conflated, merged, or treated as aliases of one another. No identity link is recorded, because the engine's closed link set (011_ENGINE_DATA_MODEL.md Section 6) expresses continuity and suspected sameness only and has no distinct-from link; the ruling itself is the record, and ENT-000061 carries a disambiguation note pointing here. Nothing already played changes: Venn's recommendation of Daedalus to the Authority (REL-000042) stands as Venn's, and Daedalus has no established relationship with Vane. The reciprocal note is deliberately not written into ENT-000036, because the Reikon world layer is shared across campaigns and must not reference one campaign's local entities. Consequence for play: Vane's deep-Rift core (ENT-000050) and the finding it implies (ENT-000045) remain unknown to Daedalus, and the Vigil pressure Kalens described (ENT-000079) is adjacent to Vane's storyline without Daedalus having any established route to it."
```

## Ruling — The Institute Director Is Named Ambrose Teague

```yaml
id: EVT-000037
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, predating the first expedition; no fictional time elapsed"
  record_time: "2026-07-15T17:31:04Z"
  uncertainty: "Whether Teague and Vane know each other, and how the Institute's directorship relates to its lead-researcher post, remain unestablished. Teague's given name and manner beyond 'supportive of Daedalus's potential' are unauthored, as they were under the prior name."
kind: ruling
importance: archived
participants:
  - ENT-000061
description: "Owner ruling correcting the name of ENT-000061, the Aurology Institute's director, from 'Dr. Kael Venn' to 'Dr. Ambrose Teague'. Classified under Runtime Section 8.1 as a recording error rather than a canon conflict, on the same footing as EVT-000032. The name entered canon through the 2026-07-14 Data Model migration, which authored ENT-000061 as backstory; it was never spoken, written, or referenced in any played scene. The evidence is exhaustive: 'Venn' appears in no transcript in exports/, the Session 1 export names no Institute figure at all, and the legacy sheet records his last interaction as 'Pre-expedition (didn't visit before expedition)'. The name was therefore never established in fiction, only in a record. NO FORMER ALIAS IS RECORDED, and this is the substantive point of the ruling: Data Model Section 5.1's rename procedure — add a current alias, demote the prior to former — models an IN-WORLD rename, a person who changed their name. That never happened here. Recording 'Dr. Kael Venn' as a former alias would assert a fiction that no scene contains and that the owner does not intend. The correct reading is that the director has always been Ambrose Teague and the record was simply wrong, so ENT-000061 carries exactly one current alias. The identifier is unchanged, per Section 5: identity is the ENT- number and never the name. Two defects are cured at once. The name collided on both sides: 'Venn' against world-layer Dr. Sable Vane (ENT-000036) at the same institution, which EVT-000036 had to rule on, and 'Kael' against Kael Travis (ENT-000021), the unrelated protagonist of Prototype Beta — evidence the migration was reusing names without checking the repository. 'Ambrose Teague' collides with no existing figure in either world on initial, ending, or syllable. This ruling also CORRECTS AN ERROR IN EVT-000036, which states in its uncertainty envelope that 'Daedalus has met Venn and has never met Vane'. The first clause is unsupported: Daedalus has met neither, and the legacy sheet says so explicitly. EVT-000036's other findings stand — the two are distinct figures and must not be conflated. EVT-000036 is immutable (011_ENGINE_DATA_MODEL.md Section 2.4); its bytes are unchanged, it is retained as evidence of how the error was recorded, and this ruling governs where the two disagree. Nothing already played changes and no state is recalculated: the directorship, the mentorship quality of REL-000042, and the recommendation to the Authority are untouched and are now Teague's. The legacy non-canonical files 050_CAMPAIGN_LOG.md and 100_CHARACTER_DAEDALUS.md still read 'Dr. Kael Venn' and are deliberately left alone; both declare themselves historical presentation that must not be updated as a second source of truth, and they are now evidence of the superseded name."
```

## Wound Treatment, Institute Consultation, and Association Report

```yaml
id: EVT-000038
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, evening, the same day as the basement clear"
  record_time: "2026-07-20T06:30:00Z"
kind: social
importance: active
participants:
  - ENT-000051
  - ENT-000071
  - ENT-000072
  - ENT-000073
description: "After leaving the basement, Daedalus applied first-aid salve and clean bandages, washed the Rift's residue off, redressed his wounds properly, changed into ordinary clothes, and carried his four D-cores and notebook in a satchel to call on Dr. Kalens at his home in the scholar's quarter during the standing early-evening window (ENT-000078), honoring the same-day condition on REL-000045. He gave Kalens the complete basement findings: the four D-grade Breakers, the guarded formation, the bonded core's measurements, and the failed direct-extraction attempt. Kalens copied the findings by lamplight and committed the Institute to a real research effort rather than concealment: he took the severance problem personally, routed one D-core (ENT-000074) and the framework observations to Dr. Soren, and routed the pulse/heat/floor-pattern/stability data to Marta. Daedalus separately logged the clear with the Hunters' Authority duty desk that same night, including the anomalous bonded core and the Institute's involvement; the night officer recorded the Rift as contained, core pending specialist recovery, and credited the kills. No fictional time is claimed beyond the described evening."
```

## Night Recovery

```yaml
id: EVT-000039
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: transcript
  event_time: "Year 31 AR, evening into the following dawn"
  record_time: "2026-07-20T07:00:00Z"
kind: recovery
importance: archived
participants:
  - ENT-000051
description: "Back in his rented room, Daedalus performed a light bodyweight workout to test his healing shoulder, ribs, and burns before sleep. The uncertain action (renewed exertion on a treated but unhealed injury) resolved by the die: d100 78, no modifier steps, success — nothing reopened. He then slept a full night's rest. Health settled deterministically from 88/105 to full 105/105 under treated-moderate-then-resolved recovery, and Mana settled from 7/14 to full 14/14 under resting recovery; both remainders reset to zero at maximum. No further injury condition remains recorded."
```

## Recurrent Intervention Check — Emberbrand Granted

```yaml
id: EVT-000040
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, dawn, the first safe exchange of a new in-fiction day"
  record_time: "2026-07-20T07:00:00Z"
  uncertainty: "The System gave no reason for the grant, consistent with Section 9.2 — it points, it does not explain. Whether or on what Daedalus will spend Emberbrand is undetermined."
kind: system-intervention
importance: active
participants:
  - ENT-000051
description: "Reikon World Rule Profile 0.6 Section 9.6 recurrent intervention check, triggered by the first safe exchange of a new in-fiction day (waking at his rented room, no prior check this day). Roll d100: 82, falling in the 76–88 band (finite technique or one-use skill). intervention_silent_checks was already 0 and remains 0 after this non-silent result. Granted: Emberbrand, a one-use System technique with no stated cost beyond the Ability's own Mana cost. Effect: Daedalus's next successful Fireball or Combustion Touch strikes at the critical-success (2.0x) damage-band multiplier (206 Section 6.4) regardless of the natural roll, provided the cast succeeds; it does not touch the die and does not grant success. Eligible actions: Fireball, Combustion Touch. Expiry: the next sunrise after being granted, whichever comes first — spent on a successful cast, or unused when the expiry time elapses. Recorded on the character ledger as active_intervention (100_CHARACTER_SHEET.md)."
```

## Morning Training, Association Visit, and Institute Consultation

```yaml
id: EVT-000041
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "owner-supplied session transcript, promoted through the last rules-valid exchange"
  event_time: "Year 31 AR, day following the Institute consultation"
  record_time: "2026-07-21T00:00:00Z"
  uncertainty: "The Ashgate core chamber's full kill status is not confirmed: several Broodlings caught in the Fireball blast are confirmed dead, a few remain visibly moving at the blast's edge. Whether the Ashgate core is bonded or anomalous like Warehouse 7's is unestablished."
kind: mixed
importance: active
participants:
  - ENT-000051
  - ENT-000062
  - ENT-000071
  - ENT-000072
  - ENT-000073
description: "Daedalus ran his full training regimen at dawn — deliberately omitting spellwork to preserve the unused Emberbrand intervention — then added a second run home, showered, and changed into hunter gear. At Hunters' Authority headquarters, Captain Thorne declined to authorize solo re-entry to Warehouse 7 for extraction, but granted solo *observation-only* clearance after Daedalus argued the five-day window (down from the standard seven, two days already elapsed) showed no instability signs (no spawn, no bleed-through). He used that clearance to re-examine the Warehouse 7 core: a Perception-driven second look (d100 87, strong success) revealed the crystalline framework thins and darkens right at its point of contact with the core, growing denser outward — a previously unrecorded structural asymmetry. He reported nothing else new, then consulted Kalens (no severance progress yet; Institute has reached out to the Verholt Athenaeum), Soren (the D-core's fracture lines radiate from a single point, structurally closer to a C-grade guardian core than natural D-grade formation), and Marta (still correlating the three-second pulse interval against one other historical dataset; no conclusion yet). At the Association core desk, an appraiser priced his three remaining D-cores at 5 units each (d100 64, success, clean read) but Daedalus declined the sale on her advice that the Institute wanted first look, and sent Kalens a letter with the new framework-asymmetry detail instead. He then took a second, solo-eligible assignment from the dispatch board: a low-priority E-Rift in Ashgate district, three days unclaimed, reported quiet. Traveling there, he entered alone, used a Perception-driven structural read (d100 91, strong success) to track the Rift's mana-density gradient toward its core, and encountered three Broodlings guarding it. A surprise sweeping sword strike (d100 58, partial success) killed one outright and wounded a second badly while a third fled toward a larger cluster; Daedalus finished the wounded one (d100 100, legendary success) and harvested both cores (2 E-cores, added to the core purse, 46 to 48). He then tracked the fleeing Broodling by stealth (d100 76, success) to a core chamber holding a small pale-green core guarded by a cluster of six or seven more Broodlings. He cast Fireball at the stationary cluster (d100 74, +2 favorable-setup modifier, effective 100, legendary success), spending Emberbrand: the cast landed at critical-success (2.0×) force, catching the fleeing Broodling and the full cluster in one blast. Several are confirmed dead; a few remain visibly moving at the blast's edge. Mana dropped from 14 to 2 (Fireball's ordinary 12-Mana cost). The two confirmed Broodling kills awarded 12 XP immediately (6 each, Section 8.2), moving 31 to 43. The Ashgate encounter is not yet resolved; the chamber is not confirmed clear."
```

## Ashgate Chamber Mop-Up, Core Extraction, and Rift Closure

```yaml
id: EVT-000042
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: "owner-supplied session transcript, promoted through the last rules-valid exchange"
  event_time: "Year 31 AR, immediately following the critical-force Fireball"
  record_time: "2026-07-21T01:00:00Z"
  uncertainty: "Whether the Ashgate core was bonded or anomalous in any way is now moot but never formally established; its clean extraction weakly suggests it was ordinary."
kind: mixed
importance: active
participants:
  - ENT-000051
description: "Daedalus moved through the blast-struck core chamber checking each downed Broodling, finishing three still-stirring survivors with clean sword strokes (d100 61, +2 one-sided-mop-up modifier, effective 71, success). Combined with the fleeing Broodling and the rest of the cluster, the full chamber count resolved to seven Broodlings, all confirmed dead — nine total across the whole Ashgate engagement counting the two from the earlier melee. He harvested seven E-cores from the chamber kills (added to the two already collected; core purse 46 to 55). He then approached the small pale-green core in its alcove and extracted it cleanly (d100 68, +2 no-guardians-no-bonding modifier, effective 88, success) — no resistance, unlike Warehouse 7's core. The extraction triggered immediate Rift collapse; Daedalus withdrew through the passage and out the entrance fissure with room to spare (d100 79, +2 practiced-hunter-known-route modifier, effective 99, legendary success), clearing the seam just before it closed fully behind him. The Ashgate E-Rift is closed. The extracted core (ENT-000082) is unappraised and carried separately from the E-core purse."
```

## Ruling — Rift-Clear Milestone XP Magnitude Is Unauthored

```yaml
id: EVT-000043
canonical_record: REC-000043
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, Ashgate E-Rift closure"
  record_time: "2026-07-21T01:00:00Z"
  uncertainty: "No exact value for the Rift-clear milestone bonus exists anywhere in canon. This ruling does not invent one; it records the gap and defers it to an owner decision."
kind: ruling
importance: active
participants: []
description: "worlds/reikon/206_WORLD_RULE_PROFILE.md Section 8.2 states that clearing a Rift core awards 'a larger milestone sum' on top of ordinary per-kill XP, but specifies no formula, table, or numeric value anywhere in Reikon's world rule content or the engine layer. Classified as an unauthored-magnitude gap under the same discipline Section 12 (Economy) already applies to unpriced goods: an unauthored magnitude is ruled and recorded, never improvised. Ruling: the Ashgate E-Rift closure (EVT-000042) is awarded only its confirmed per-kill XP — 54 XP from nine E-grade Broodling kills at the established baseline of 6 each (Section 8.2), moving Daedalus from 31 to 85 XP. No milestone bonus is added. This is logged as an open gap for a future owner decision to specify the Rift-clear milestone formula; until then, Rift closures in this campaign award per-kill XP only, and any future ruling on the magnitude may be applied retroactively at the owner's discretion but does not recalculate this checkpoint's already-settled state."
```

## Current Chronicle Position

Daedalus stands just outside the collapsed Ashgate E-Rift, Level 2, 85/130 XP, at full 105/105 Health and 2/14 Mana. The Ashgate assignment is complete: nine Broodlings confirmed dead and harvested, the small pale-green core extracted cleanly, and the Rift fully collapsed behind him. Nine E-cores were added to his purse (46 to 55); the extracted Ashgate core itself is carried separately, unappraised. Emberbrand remains fully spent.

A ruling gap is flagged and recorded rather than improvised: Section 8.2's Rift-clear milestone XP bonus has no established magnitude anywhere in canon, so only the confirmed per-kill XP was awarded (54 XP, moving 31 to 85); the milestone bonus itself awaits an owner decision.

Separately, the Warehouse 7 bonded core remains unextracted, still in Institute hands for severance research; Daedalus holds solo observation-only clearance there (no extraction authorized) and has three D-cores still in his possession, unsold, with a follow-up letter already sent to Kalens noting a new framework asymmetry at the core's point of contact.
