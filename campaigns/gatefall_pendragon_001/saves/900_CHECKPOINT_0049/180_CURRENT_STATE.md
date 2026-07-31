# Current State - Gatefall: Pendragon

**Campaign:** `gatefall_pendragon_001`
**World:** `gatefall`
**Status:** Active

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000260
  game_date: "2026-08-10 ~19:45 -05:00"
  real_date: "2026-07-31"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- **World:** Gatefall
- **World Rule Profile:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`, Profile 1.43
- **Engine Rules:** 0.2.0
- **Data Model:** 0.1.5
- **Campaign time:** 2026-08-10 (Monday), approximately 19:45 CDT (`-05:00`)
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0049/` — Monday off: the flat applied for, Owen's third ability, and a full confession.
- **NPC pool variance is live (Profile 1.41, `EVT-000248`).** Nine recurring named NPCs now carry an authored ±10% on both pools under Section 6.1.2 — Owen Callahan **+10%** (Health 275, Mana 137), Priya Okafor none, Julian Boyd +5%, Renata Marchetti −5%, Ruth +5%, Reggie Calloway +5%, Bhavna Iyer none, Foster Nakashima −5%, Callie Dunmore none. Permanent, never rerolled, recorded in each entry in `130_NPCS_AND_FACTIONS.md`. **Backfilled at `EVT-000249`:** twelve world figures in `220_NOTABLE_FIGURES.md` received theirs, and five further campaign hunters received a Rank derived from canon — Tanya Voss D-Rank, Tomas Alvarez C-Rank (+5%), Denny Osei E-Rank, Marisol Ruiz E-Rank (+5%), Milo E-Rank (−5%). Sable, Denise Ferro, Wade Bishop and Kesha Morrison are flagged as having no established awakened status and were deliberately left unranked.
- **Signature abilities now carry a D-Rank floor (Profile 1.42, `EVT-000250`).** Section 13.6 requires one of every named NPC hunter at **D-Rank or above**; an E-Rank entry carrying none is correct, not incomplete. Six authored — Priya Okafor **Follow-Through**, Ruth **Warm Hands**, Reggie Calloway **Threshold**, Bhavna Iyer **Tally**, Foster Nakashima **Backstop**, Callie Dunmore **Slip**. Backstop is a perimeter *sense* and deliberately triggers no Section 13.5 warden effect. Owen's mending remains the only signature in the ledger that carries mechanics.
- **`OBJ-18` has a mechanism (Profile 1.43, `EVT-000251`).** New Section 12.5.1: a **stat elixir bought by Alexander and given to an ordinary awakened** enlarges their pools — Vitality and Intelligence only, **uncapped**, +4 max Health and +2 max Mana per point, added flat above the Section 6.1.2 variance bracket. Owen sits at 275 / 137, exactly the C-Rank ceiling; **one Intelligence elixir (5,000 g) takes him to 139 — a number no C-Rank can have.** He would feel it immediately and be told nothing (Section 14.4 unmoved); nobody else would know until something measured him. A true B-Rank is 164 elixirs and 820,000 g against 13,151 held. **Nothing has been bought, given, or drunk, and Owen has not been told this exists.**

---

## Protagonist

- **Alexander Pendragon:** Level 13, D-Rank, 620/1,300 XP.
- **Health:** 196/196. **Mana:** 94/94. Both recovery remainders are zero; Health recovery is light and Mana recovery is active. Maxima rose twice this session across two level-ups (Health 164→168→172, Mana 90→92→94), each fully restoring both pools; Mana since spent down from the second restore to 84/94.
- **Stats:** Strength 42, Agility 38, Vitality 44, Perception 46, Intelligence 45 (base — Vitality +6 and Strength +4 allocated at `EVT-000240`). **Effective:** Strength 51, Agility 63, Vitality 49, Perception 46, Intelligence 47 — equipment bonuses unchanged (+9 Str/+25 Agi/+5 Vit/+0 Per/+2 Int).
- **Unspent stat points: 0** — all 10 allocated at `EVT-000240` (Vitality +6, Strength +4), re-deriving maximum Health 172→196 and carrying Shrug Off to C-Rank.
- **Pending rewards, all unclaimed:** **Ability Points +3 ×1**, **Status Recovery ×11**, **Daily Random Box ×1** — the seventeenth daily's three rewards issued on completion (`EVT-000245`) on top of the ten Status Recoveries already banked.
- **Daily streak: 3.** The seventeenth daily issued 06:00 on 2026-08-10 and was completed by ~07:38 on the lakefront route (`EVT-000245`); the eighteenth issues 06:00 on 2026-08-11.
- **Keen Sense:** D-Rank Expert (ascended from Adept, `EVT-000231`) · 19 successful uses, 15 qualifying scenes, 0/3 mastery progress toward Master.
- **Exploit Pattern:** E-Rank Expert (ascended from Adept, `EVT-000232`) · 19 successful uses, 11 qualifying scenes, 2/3 mastery progress toward Master. Supports 4 concurrent active Patterns.
- **Twin Fang:** E-Rank Expert (ascended from Adept, `EVT-000232`) · 29 successful uses, 10 qualifying scenes, 2/3 mastery progress toward Master. ×1.45 mastery multiplier.
- **Rupture:** D-Rank Expert (ascended from Adept, `EVT-000237`) · 40 successful uses, 18 qualifying scenes, 1/3 mastery progress toward Master, 1 rank ascension. ×2.45 of D-Rank baseline, Mana 9.
- **Stone Skin:** D-Rank Adept (ascended from Practiced, `EVT-000232`) · 9 successful uses, 6 qualifying scenes, 0/3 mastery progress toward Expert. 40% reduction, Mana 3.
- **Bulwark:** E-Rank Adept (ascended from Practiced, `EVT-000232`) · 6 successful uses, 6 qualifying scenes, 0/3 mastery progress toward Expert. 60% reduction, Mana 8.
- **Dagger Mastery:** E-Rank Master (ascended from Expert, `EVT-000235`/`EVT-000237`) · 30 successful uses, 12 qualifying scenes, mastery complete. ×1.05 chassis multiplier on both Quickknives.
- **Flash Step:** C-Rank Adept (unchanged tier) · Mana 6 · 16 successful uses, 13 qualifying scenes, 1/3 mastery progress toward Expert, 1 rank ascension.
- **Sprint:** E-Rank Practiced (unchanged tier) · 6 successful uses, 5 qualifying scenes, 2/3 mastery progress toward Adept.
- **Silent Step:** **NEW**, E-Rank Novice · Mana 3 · +1 modifier step on stealth/unseen-approach actions for the scene. Learned from Dungeon 3's boss-drop rune (`EVT-000235`); not yet activated in play.
- **Resonance Extraction, Mend, Field Command:** unchanged this session, carried forward exactly as at Checkpoint 0045.
- **Stat Passives:** Overpower D (Strength 42, 4 uses — two short of C's 44), Pre-empt D (Agility 38), **Shrug Off C (Vitality 44)**, Flux Sight C (Perception 46, 1 use — B-Rank needs 54 and C is also the System-Rank-D ceiling), **Multitask C (Intelligence 45)**. **Multitask rose D → C at the Level 12→13 level-up** (`EVT-000235`), Intelligence 44→45 crossing the Section 4.4 threshold of 44 it had sat one point below since `EVT-000222`: **concurrent non-daily System-quest capacity 3 → 4**, rung authored and inside the ceiling, nothing held. The other four were unchanged by that level-up; Overpower and Flux Sight each recorded a material use in Dungeon 1 (`EVT-000232`). **Shrug Off then rose D → C at `EVT-000240`** on the Vitality +6 allocation (38→44), gaining **threshold absorption — once per scene, a hit that would cross the Section 6.3 injury threshold inflicts damage only.** Both C-Rank passives sit exactly at the System-Rank-D ceiling; nothing is held.
- **Equipment:** unchanged this session — Titan Legs [D-Rank] and Watcher Feet [D-Rank] were looted but never equipped. Total physical reduction ≈26%, unchanged.
- **Cash/checking:** $59,929.60, unchanged today — no mundane-currency transaction this session. **Gold:** 1,491 (was 13,151; −11,660 net — sold the entire private crystal stash for 840 g, then bought the Crystal Key [C-Rank] for 12,500 g, `EVT-000252`). **Pending income:** $9,000 harvest share (Ada Reyes's job, processing 1-2 business days), unchanged.
- **Notable carried items:** Gate Direction Finder (unchanged); private C-Rank and D-Rank crystal stashes both **sold out to zero** this session (`EVT-000252`); **Crystal Key [C-Rank]**, new, banked, unused — intended for a first solo C-Rank instant-dungeon attempt with Owen present as an observer (`OBJ-25`); **8 Beast Core [D-Rank]**, banked, unsold; **Titan Legs [D-Rank]** and **Watcher Feet [D-Rank]**, banked, unequipped; the banked Flash Step [D-Rank] rune was **given to Owen and consumed** this session (`EVT-000255`) — no longer Alexander's; 2 Standard Mana Potion and 2 Lesser Mana Potion banked.
- **Current location:** His own apartment, ~19:45 Monday evening, after dinner, mid-conversation with Owen about the Wade Bishop D-Rank trial.
- **Immediate obligations:** None tonight. Both callbacks from this morning resolved partway: Kesha Morrison texted back that she has something (not mining) and will call this evening — the actual call is still owed as of this checkpoint. The Rogers Park flat was viewed and applied for at 2:00 PM (`EVT-000256`); landlord's sign-off is expected within a day or two. Wade Bishop is now locked to call tomorrow, 2026-08-11 (`EVT-000259`).
- **Daily Premium:** Rotated live this session to the **Cobalt** cycle (2026-08-10 06:00, `EVT-000252`) under a new standing rule — a stale cycle is rotated once, live, the next time `/system shop` opens. **1/6 purchased** (the Crystal Key). The 2026-08-06/-07/-08 gap rotations remain formally unsettled by owner ruling, not backfilled.

---

## Owen and the Relationship

- Alexander and Owen reconciled after Owen returned on the evening of 2026-08-08.
- Owen stayed overnight at Alexander's apartment and made his 08:00 Edgewater shift on time on 2026-08-09.
- During the 2026-08-09 morning run, Alexander proposed that they find a shared apartment. Owen agreed to begin looking.
- The housing objective remains the existing `OBJ-15`, now advanced from an unresolved moving-in question to an active shared-home search. Alexander did a first solo research pass this afternoon (three candidates shortlisted) as a starting point for tonight's discussion, not a decision made without Owen.
- **Reconnected the evening of 2026-08-09 (`EVT-000239`, `EVT-000241`).** Owen came off a full Sunday shift, drove over, and stayed the evening; he is asleep against Alexander on the couch as of the current anchor.
- **The apartment: chosen in principle, seen from outside, now seen from within and applied for.** The **Rogers Park two-bedroom (~$1,950/mo)**. Met leasing agent Corinne Whitlock (`ENT-000181`, new) in person at 2:00 PM (`EVT-000256`); walked the whole flat — balcony, second bedroom, bathroom — and submitted an application on the spot, both names on it. Landlord sign-off expected within a day or two; no lease or move date yet.
- **A rent framework is agreed:** Owen pays what a decent local one-bedroom would cost him; Alexander covers the difference to the lake, the balcony and the second door. Owen insisted on naming it rather than leaving it undefined, on the explicit grounds that he refuses to become *a rate* or a kept mender.
- **A sponsored job is agreed in principle (`OBJ-19`):** Owen sponsors a confirmed, properly assessed posting on his own C-Rank licence, split 50/50, his half against the rent. Corrected this morning to specifically **not mining** — Owen wants to be on the line, not behind it. Kesha Morrison confirmed she has something and will call this evening; the call is still owed as of this checkpoint.
- **Deferred, and not to be played as agreement:** Owen did not answer on leaving Priya's crew (`OBJ-12`) or on becoming a permanent, off-books Gate-goer. He said both objections are weakening and asked that the non-answers be noticed as non-answers. He also asked Alexander to tell him plainly if he ever starts wanting something that will get him killed.
- **Monday morning, 2026-08-10 (`EVT-000243`-`EVT-000245`).** Alexander carried a sleeping Owen from the couch to the bed without waking him, and noticed his own bathroom holds one toothbrush against the drawer and half-shelf Owen gave him nine days ago — nothing has gone the other way. Overnight and through the morning run: two Character Firsts — **Alexander said *I love you* first and unprompted as the opening words of the day**, and, told he was loved *like you were going to live together*, **Owen's deflecting joke failed to arrive for the first time since they met**; he answered plainly instead and cried about it. **They stopped outside the Rogers Park building** on the run, and Alexander described a future on that balcony out loud, which Owen named as something he had never done before.
- **The boat, midday (`EVT-000254`, `EVT-000255`).** Told he could ask anything, Owen asked plainly how close Alexander has actually come to dying — told the honest number (one six-point graze across three D-Rank clears) rather than a vague reassurance. **A third Character First:** the first unguarded question Owen has ever put to the danger itself. The banked C-Rank key's eventual use was agreed on explicit terms — Owen present as **backup mender and observer only, never a combatant**, with Alexander's binding promise that a stop-call is obeyed instantly. Alexander framed Owen's own growth as *helping factor, not master decider*. The banked Flash Step rune was given and consumed: **Owen's third ability**, still the only known instance of an awakened holding more than one. A future cheap-Mana Mend rune was named as a want, not yet owned.
- **Evening (`EVT-000257`, `EVT-000258`).** Dinner cooked by Owen; a round of texts to Alexander's mining contacts surfaced nothing new except Denise Ferro's relationship escalating to an explicit personal-callback promise. Owen asked about "the recruiter," having never heard Wade Bishop's name — Alexander told him the complete, honest account of the 2026-08-08 D-Rank trial, including deliberately withholding an ambush warning to test the crew and two crewmates walking out untreated. Owen separated Alexander's own choice from Ironline's structural failure, and thanked him for not smoothing it over.

---

## Current Situation

On 2026-08-08 Alexander identified the two unlicensed items traded from Walt Adamik, visited Kesha at the Coalition desk to discuss Ironline and a possible crew, then met Elias Ward at a nearby pawn shop, bought a Gate Direction Finder, and tested it with Keen Sense. He followed its signal but did not locate a Gate. Owen later returned, reconciled with Alexander, and stayed the night. Safe recovery restored Alexander to full Health and Mana before the next morning.

At 06:00 on 2026-08-09 Alexander completed his sixteenth daily regimen. During the ensuing run, he and Owen committed to searching for an apartment together, and Owen made his 08:00 shift on time. Alexander then claimed and allocated all pending Ability Points, opened his three Daily Random Boxes, and worked Ada Reyes's C-Rank harvest job solo across three veins — an exceptionally rich Gate yielding 93 crystals, of which 18 were declared and 75 kept private. The job closed clean around midday with a $9,000 harvest share processing. He spent the early afternoon on lunch and a first apartment-research pass. Around 14:45 he opened `/system shop`: rolled the live Daily Premium rotation, sold 71 of his private C-Rank crystals and all 14 banked E-Rank crystals, bought the Armory Key from the Premium tab, swapped his Legs and Feet gear from E-Rank to D-Rank, and liquidated everything sitting unused in the dimensional inventory — gold rising from 3,532 to 12,726.

From ~14:50, a legendary standalone Keen Sense recon (advancing it to Expert) preceded three solo D-Rank instant-dungeon clears run back to back on the Armory Key and two further keys bought/looted along the way — archetypes Flooded Mine, Frozen Gallery, and Shattered City. Two level-ups landed (Level 11→12 mid-Dungeon-1, Level 12→13 mid-Dungeon-3), leaving **10 unspent Ability Points, none allocated**. Seven skills advanced a mastery tier across the three clears (Keen Sense, Exploit Pattern, Twin Fang, Rupture, Stone Skin, Bulwark, Dagger Mastery — the last reaching **Master**), and Dungeon 3's boss rune taught **Silent Step**. All Mana Crystal [D-Rank] loot was sold (gold 12,726→13,151); 8 Beast Core [D-Rank] and two new unequipped D-Rank armor pieces (Titan Legs, Watcher Feet) remain banked. He is now back at his own apartment, showered and changed, free until meeting Owen this evening.


From ~16:30 the day turned domestic. Owen came off an eight-and-a-half-hour Edgewater shift — a patient coded in bay three — and Alexander called him, told him plainly about the three clears, and named the **Rogers Park two-bedroom** as the one he actually wanted. He ordered Thai and a four-pack ($62.40), then allocated the ten Ability Points that had sat unspent since the second level-up: **Vitality +6, Strength +4**, taking maximum Health to 196 and carrying **Shrug Off to C-Rank**. Owen arrived early and stayed the evening. Between the listings and the food they agreed the flat in principle, a rent split neither of them will have to guess at, and a confirmed posting Owen will sponsor on his own C-Rank card with his half going against the rent. Owen deliberately left the crew question and the wider Gate question unanswered, said both objections are weakening, and fell asleep on the couch.

Overnight and into Monday morning the day stayed domestic. Alexander carried Owen to bed, texted Kesha that Owen wants to sponsor another confirmed posting (she will check Monday's desk), and slept. The **seventeenth daily** issued at 06:00 and was completed on the lakefront route by ~07:38, taking the **streak to 3** and leaving three rewards unclaimed. Between them, the morning produced the two most unguarded exchanges of the relationship so far, a voicemail to a letting agent that named neither caller nor property, and a proper look at the Rogers Park building from the pavement outside. Owen is off work for the whole day; neither of them has anywhere to be.

**Monday, the rest of the day (`EVT-000252`-`EVT-000259`).** Over coffee, a new standing rule took effect: a stale Daily Premium cycle rotates once, live, the next time the shop opens. Applied immediately — the expired Crimson cycle rolled to **Cobalt**. Alexander sold his entire private crystal stash (840 g) and bought a **Crystal Key [C-Rank]** (12,500 g), closing at **1,491 gold**. Owen corrected his own sponsored-job request to Kesha (not mining — he wants to be on the line), and she promised a call that evening. A live callback finally reached Lakeline Residential and booked a same-day flat viewing for 2:00 PM.

Brunch on Owen's boat filled the morning. Told he could ask anything, Owen asked plainly how close Alexander has come to dying — told honestly (one six-point graze across yesterday's three D-Rank clears), which landed harder on Owen than any vague reassurance could have. The banked C-Rank key's eventual use was agreed: Owen present as backup mender and observer only, never a fighter, with an instant, binding stop-call. Alexander named his own philosophy for Owen's growth — *helping factor, not master decider* — and gave him the banked Flash Step rune, consumed on the spot: **Owen's third ability.** A future cheap-Mana Mend rune was raised as a want, not yet owned.

At 2:00 PM they met Corinne Whitlock, the Rogers Park flat's leasing agent, in person for the first time. Walked the whole unit — balcony, second bedroom, bathroom — and applied on the spot. Landlord's answer is expected within a day or two.

Evening brought dinner, cooked by Owen, and a round of texts to Alexander's mining contacts that surfaced nothing new except Denise Ferro's relationship warming into an explicit personal-callback promise. Owen asked about "the recruiter," having never heard the name Wade Bishop — Alexander told him everything about the 2026-08-08 D-Rank trial, including the ambush he deliberately let land and the two crewmates who walked out untreated. Owen's read separated Alexander's own choice from Ironline's failure to send a real crew. Wade Bishop's own follow-up, previously a vague window, is now locked to call tomorrow, 2026-08-11. Current anchor: Alexander's apartment, ~19:45, mid-conversation, nowhere else either of them needs to be tonight.

---

## Open Threads

- `OBJ-15`: the Rogers Park two-bedroom has now been **seen from the inside and applied for** (`EVT-000256`) — Corinne Whitlock (`ENT-000181`) took the application on the spot. Landlord sign-off expected within a day or two; no lease or move date yet.
- **Kesha Morrison's actual call is still owed.** She confirmed by text (`EVT-000253`) she has something (not mining) for Owen's sponsored posting and will call this evening; as of this checkpoint the call has not come.
- **Three daily rewards sit unclaimed** — Ability Points +3, Status Recovery ×11, one Daily Random Box.
- **Corinne Whitlock** (`ENT-000181`, new entity) is Lakeline Residential's leasing agent, met in person this session.
- The Gate Direction Finder has been purchased and used once; it did not locate a Gate. It has not yet been carried into an actual Gate expedition.
- Elias Ward has entered the campaign as a persistent NPC. His shop, origins, and any wider standing are otherwise unestablished.
- Daily Premium rotations from 2026-08-06 onward through the Crimson cycle remain formally unsettled by owner ruling. **New standing rule (`EVT-000252`):** a stale cycle rotates once, live, the next time the shop opens — applied this session, now Cobalt, 1/6 purchased (the Crystal Key).
- **Ability Points: all 10 allocated** at `EVT-000240` (Vitality +6, Strength +4) — maximum Health 172→196 and **Shrug Off D→C** (threshold absorption). Overpower sits two points short of its own C threshold at Strength 42.
- **Private crystal stash sold out to zero this session** (`EVT-000252`) — 4 C-Rank at 170 g, 4 D-Rank at 40 g, 840 g total, replacing what was previously undeclared inventory.
- The Flash Step, Resonance Extraction, Keen Sense, Exploit Pattern, Twin Fang, Rupture, Stone Skin, Bulwark, and Dagger Mastery mastery advances across prior sessions are all real, resolved changes — not open questions.
- **The Flash Step rune is no longer Alexander's.** Given to Owen and consumed this session (`EVT-000255`) — Owen now knows Flash Step [D-Rank] Novice, his third ability.
- **Dagger Mastery has no authoring gap and has reached Master.** Master (+0.30, ×1.05 per Quickknife) was reached in the prior session — three dagger-involving qualifying scenes, one per instant dungeon. Mastery is complete (Master is the mastery ceiling); no further track.
- **Titan Legs [D-Rank] and Watcher Feet [D-Rank]** sit banked, unequipped, from Dungeon 1's boss (`EVT-000232`). No decision made on whether to equip either.
- **8 Beast Core [D-Rank]** banked, unsold — the System shop still refuses cores at any price (Section 12.5).
- **A new Crystal Key [C-Rank]** is banked, unused (`EVT-000252`) — the plan agreed this session (`OBJ-25`) is a first solo C-Rank instant-dungeon attempt with Owen present as a non-combatant observer only; not yet scheduled.
- **Wade Bishop / `OBJ-23` follow-up, firmed to a certainty (`EVT-000259`, player instruction).** No longer a probabilistic window — **he calls tomorrow, 2026-08-11**, with concrete news on the 50% split and the B-Rank harvest trial. This is now the first thing due tomorrow.
- **Instant dungeons no longer close on the boss kill** (Profile 1.40, `EVT-000247`). An instance runs two hours from the moment the key is used and ends at that mark or when Alexander chooses to leave. The boss kill still settles XP, milestone, and drops, but the interior now stands for the remaining time, so a clear can be mined and looted instead of ejecting him. The two hours are absolute; a late kill leaves only the minutes remaining. Population never respawns, and closing returns everyone inside to the world.
- **`OBJ-18` now has two open routes, not one.** The Section 12.5.1 stat elixir (Profile 1.43) enlarges Owen's actual pool; a cheap-Mana Mend rune, raised this session and not yet owned, would instead spare his existing pool from trivial spending. Neither has been acquired, given, or told to him.

---

## Promotion Status

Live canon is promoted through `EVT-000260`. Since Checkpoint 0048: a live Daily Premium rotation and shop transaction (`EVT-000252` — the private crystal stash sold, a Crystal Key bought, gold 13,151→1,491), a morning of calls and corrections (`EVT-000253`), a major relationship scene on the boat covering an honest-danger disclosure, the C-Rank-key backup-observer agreement, and a growth philosophy for Owen (`EVT-000254`), the Flash Step rune given to and consumed by Owen plus the Mend-rune aspiration (`EVT-000255`), the Rogers Park viewing and application with new entity Corinne Whitlock (`EVT-000256`), an evening texting round and Denise Ferro's escalated promise (`EVT-000257`), the full Wade Bishop D-Rank trial disclosure to Owen (`EVT-000258`), an owner-authored certainty firming Wade's callback to tomorrow (`EVT-000259`), and the promotion-barrier settlement closing the span with an explicit `none` for `gatefall.skill_formation` (`EVT-000260`). No combat occurred; Health and Mana held at maximum throughout. This Current State reflects live, unpromoted-to-checkpoint play; this `/save` captures it as the next sequential checkpoint after `900_CHECKPOINT_0048`.

---

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-10T19:45:00-05:00"
  hidden_pointers_attached: 1
  hidden_last_attached: "2026-08-06T16:45:00-05:00"
  hidden_dry_days: 4
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 16
  concealed_records_available: 14
  tracked_postings: 4
```

**Reading it.** No Hidden pointer attached and no Urgent offer issued this span (`EVT-000252`-`EVT-000259`) — a shop session, calls, a relationship-focused boat scene, a flat viewing, and an evening disclosure met neither surface's criteria. `concealed_records_available` and `tracked_postings` are unchanged from Checkpoint 0043; no new concealed-discovery record or Coalition posting entered the ledgers this session.
