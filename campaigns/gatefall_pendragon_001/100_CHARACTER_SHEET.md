# Character Sheet - Alexander Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** single-object Canonical Record (`011` Section 8) holding the protagonist.

---

## Record

```yaml
id: REC-000074
canonical_record: REC-000074
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000593
  game_date: "2026-08-21T17:30:00-05:00"
  real_date: "2026-08-15"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000125
# Since Checkpoint 0095: EVT-000541, EVT-000546
# Since Checkpoint 0094: EVT-000535, EVT-000536, EVT-000539, EVT-000540
# Since Checkpoint 0081: EVT-000487, EVT-000488
# Since Checkpoint 0080: EVT-000483, EVT-000484, EVT-000485, EVT-000486
# Since Checkpoint 0079: EVT-000478, EVT-000479, EVT-000480, EVT-000481, EVT-000482
# Since Checkpoint 0078: EVT-000463, EVT-000464, EVT-000465, EVT-000466, EVT-000467, EVT-000468, EVT-000469, EVT-000470, EVT-000471, EVT-000472, EVT-000473, EVT-000474, EVT-000475, EVT-000476, EVT-000477
# Since Checkpoint 0077: EVT-000451, EVT-000452, EVT-000453, EVT-000454, EVT-000455, EVT-000456, EVT-000457, EVT-000458, EVT-000459
# Since Checkpoint 0076: EVT-000444, EVT-000445, EVT-000446, EVT-000447, EVT-000448, EVT-000449
# also updated by EVT-000301, EVT-000302, EVT-000303, EVT-000304, EVT-000308, EVT-000309, EVT-000311, EVT-000315, EVT-000316, EVT-000317, EVT-000319
# Checkpoint 0065: EVT-000355, EVT-000356, EVT-000357, EVT-000358, EVT-000359, EVT-000360, EVT-000361
# Since Checkpoint 0065: EVT-000370, EVT-000371, EVT-000372, EVT-000373, EVT-000374, EVT-000375, EVT-000376, EVT-000377
# Since Checkpoint 0069: EVT-000398, EVT-000399, EVT-000400, EVT-000401, EVT-000402, EVT-000403, EVT-000404
# Since Checkpoint 0071: EVT-000407, EVT-000409, EVT-000410, EVT-000411
# Since Checkpoint 0072: EVT-000414, EVT-000415, EVT-000416, EVT-000417, EVT-000418
# Since Checkpoint 0073: EVT-000419
# Since Checkpoint 0074: EVT-000420, EVT-000421, EVT-000422, EVT-000423, EVT-000424, EVT-000425, EVT-000426, EVT-000427
# Since Checkpoint 0075: EVT-000428, EVT-000429, EVT-000430, EVT-000431, EVT-000432, EVT-000433, EVT-000434, EVT-000435, EVT-000436
```

---

## Alexander Pendragon

```yaml
id: ENT-000125
canonical_record: REC-000074
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000056
  game_date: "2026-07-22"
  real_date: "2026-07-23T11:22:33+02:00"
type: Character
scope: personal
lifecycle: active
aliases:
  - name: "Alexander Pendragon"
    quality: current
relationships:
  - REL-000062
  - REL-000063
  - REL-000064
  - REL-000065
  - REL-000066
  - REL-000067
  - REL-000098
moved_by_events: "**Every Event whose `participation_audits` claim it moved this record.** Decision 085 requires the record to *reference* such an Event; it has never required the record to *narrate* it, and `160_CAMPAIGN_CHRONICLE.md` narrates every one in full. This index exists so state fields can hold values while their reasoning lives where it is authoritative - citing and narrating are different obligations and only the first is cheap. Maintained at promotion.

  `EVT-000271` `EVT-000273` `EVT-000274` `EVT-000277` `EVT-000278` `EVT-000279` `EVT-000280` `EVT-000282` `EVT-000284` `EVT-000285` `EVT-000286` `EVT-000287` `EVT-000289` `EVT-000290` `EVT-000291` `EVT-000292` `EVT-000293` `EVT-000294` `EVT-000296` `EVT-000300` `EVT-000301` `EVT-000302` `EVT-000303` `EVT-000304` `EVT-000308` `EVT-000311` `EVT-000312` `EVT-000316` `EVT-000317` `EVT-000318` `EVT-000319` `EVT-000320` `EVT-000323` `EVT-000324` `EVT-000325` `EVT-000326` `EVT-000327` `EVT-000328` `EVT-000332` `EVT-000333` `EVT-000334` `EVT-000336` `EVT-000337` `EVT-000338` `EVT-000339` `EVT-000340` `EVT-000341` `EVT-000342` `EVT-000343` `EVT-000344` `EVT-000345` `EVT-000346` `EVT-000347` `EVT-000350` `EVT-000351` `EVT-000352` `EVT-000353` `EVT-000354` `EVT-000355` `EVT-000356` `EVT-000357` `EVT-000358` `EVT-000359` `EVT-000360` `EVT-000361` `EVT-000373` `EVT-000374` `EVT-000379` `EVT-000380` `EVT-000381` `EVT-000382` `EVT-000383` `EVT-000384` `EVT-000385` `EVT-000386` `EVT-000390` `EVT-000391` `EVT-000392` `EVT-000393` `EVT-000395` `EVT-000396` `EVT-000397` `EVT-000398` `EVT-000399` `EVT-000400` `EVT-000401` `EVT-000402` `EVT-000403` `EVT-000404` `EVT-000406` `EVT-000407` `EVT-000408` `EVT-000409` `EVT-000410` `EVT-000411` `EVT-000414` `EVT-000415` `EVT-000416` `EVT-000417` `EVT-000419` `EVT-000422` `EVT-000425` `EVT-000428` `EVT-000429` `EVT-000430` `EVT-000431` `EVT-000432` `EVT-000433` `EVT-000434` `EVT-000451` `EVT-000452` `EVT-000453` `EVT-000454` `EVT-000457` `EVT-000458` `EVT-000459` `EVT-000463` `EVT-000464` `EVT-000465` `EVT-000467` `EVT-000468` `EVT-000469` `EVT-000470` `EVT-000471` `EVT-000472` `EVT-000473` `EVT-000474` `EVT-000475` `EVT-000476` `EVT-000477` `EVT-000478` `EVT-000479` `EVT-000480` `EVT-000481` `EVT-000482` `EVT-000483` `EVT-000485` `EVT-000487` `EVT-000490` `EVT-000491` `EVT-000493` `EVT-000495` `EVT-000496` `EVT-000498` `EVT-000499` `EVT-000500` `EVT-000501` `EVT-000502` `EVT-000503` `EVT-000504` `EVT-000506` `EVT-000507` `EVT-000508` `EVT-000509` `EVT-000510` `EVT-000511` `EVT-000512` `EVT-000513` `EVT-000514` `EVT-000515` `EVT-000516` `EVT-000517` `EVT-000518` `EVT-000519` `EVT-000520` `EVT-000521` `EVT-000522` `EVT-000523` `EVT-000524` `EVT-000525` `EVT-000526` `EVT-000527` `EVT-000528` `EVT-000529` `EVT-000530` `EVT-000531` `EVT-000532` `EVT-000533` `EVT-000534` `EVT-000535` `EVT-000536` `EVT-000537` `EVT-000538` `EVT-000539` `EVT-000540` `EVT-000541` `EVT-000542` `EVT-000543` `EVT-000544` `EVT-000545` `EVT-000546` `EVT-000547` `EVT-000548` `EVT-000549` `EVT-000550` `EVT-000551` `EVT-000552` `EVT-000553` `EVT-000554` `EVT-000555` `EVT-000556` `EVT-000557` `EVT-000558` `EVT-000559` `EVT-000560` `EVT-000561` `EVT-000562` `EVT-000563` `EVT-000564` `EVT-000565` `EVT-000566` `EVT-000567` `EVT-000568` `EVT-000569` `EVT-000570` `EVT-000571` `EVT-000572` `EVT-000573` `EVT-000574` `EVT-000575` `EVT-000576` `EVT-000577` `EVT-000578` `EVT-000579` `EVT-000580` `EVT-000581` `EVT-000582` `EVT-000583` `EVT-000584` `EVT-000585` `EVT-000586` `EVT-000587` `EVT-000588` `EVT-000589` `EVT-000590` `EVT-000591` `EVT-000592` `EVT-000593` `EVT-000599` `EVT-000600`"

canonical_state:
  age: 25
  location: ENT-000087
  location_note: "The Rogers Park apartment (`ENT-000087`), Chicago, 13:01 on 2026-08-21 (Friday), showered after a C-Rank Gate and a B-Rank Crypt, with nothing scheduled until Nakamura's standing 19:30 practical. Prior: the street outside Priscilla Nakamura's workshop, a side street off LaSalle north of the river, Chicago, 22:06 on 2026-08-20 (Thursday), coat on and phone in hand having just read it for the first time in four hours. Twenty minutes from the Rogers Park apartment, where Owen is awake. Prior: the apartment (`ENT-000087`) through 16:50."
  condition: |
      Health **1,980/2,000**, Mana **982/982** — **Level 40, SYSTEM RANK A, Combat Tier A, 17:26 on 2026-08-21 (Friday)**, at the Rogers Park apartment with nothing scheduled until 19:30. **Zero ability points unspent. Gold 367,501.**

      **The largest single span of progression in the campaign's history, and none of it was imposed on him.** Two B-Rank keys bought and turned back to back.

      **The Flooded Mine** (`EVT-000588`) was the first archetype in four days to cost him anything: **Shrug Off** deleted its drowning hazard and **Sprint's `Terrain denied`** its footing, but the **−1 step on Strength and Agility actions** was neither, and it stood — dropping his physical line to **+0**, where a four-projectile volley came up partial and left four commons standing and **a main-hand strike missed a 600-Health common outright.** Mana Bolt carried it instead, and the boss died at range through four feet of standing water on **`Unsighted`**, eighty minutes after that category was acquired.

      **Then the Beast Den** (`EVT-000589`) — the archetype that got behind him at `EVT-000564` — and **this time he found the alpha first, because Keen Sense at Master returned its whole patrol loop rather than a position.** Thirteen commons killed inside the rolling ninety-second window behind its circuit. **`Cold read` fired eleven minutes after it was bought**, turning a landed hit into a clean evade against a cadence he had never observed. The alpha died to a **partial** four-blade volley plus a bolt, at range, never locating him. **The boss died to the opening strike** — a strong Rupture at 2,740 against 2,400 Health, with `Return` loaded for a disengage that never became necessary. **Sixteen of sixteen and ZERO damage taken: the first instance in the campaign's history where nothing touched him at all.**

      **SYSTEM RANK B → A on the level 40 crossing.** Both ceilings move to **S**, the growth rung goes **+23 → +63**, a fourth title slot opens, and **all five Stat Passives release and re-pin one Rank higher at [S]** — Flux Sight reads what a thing is *for*; Overpower loses its Rank cap; Pre-empt's *first blade* runs against anything; Conduit recovers **inside** a scene; Shrug Off's threshold immunity reaches A-Rank.

      **Seven Rank movements this span.** Dagger Mastery **[B]→[A]** and Resonance Extraction **[D]→[C]** (both Master-then-breakthrough in one exchange), Broken Rhythm **[E]→[C]** on a rune whose reset rung was *better* than what it replaced, and then all four offers System Rank A opened: **Keen Sense, Exploit Pattern and Rupture into [S]** — the first S-Rank anything this campaign has held — and **Twin Fang into [B]**. Rupture closes at **3,715** with `Unmaking`, which ignores worn reduction entirely.

      **The level 40 assessment** (`EVT-000591`) granted **Vanguard** on an owner ruling that all Gates count — **10 of 10 exactly** — and re-authored **The Unmeasured** rather than let it go inert. **Fifteen of the span's twenty-five points to Vitality**, closing 60 of a 760-Health gap to Combat Tier S, which is itself the argument that allocation has stopped being the lever.

      **And then he looked at everything he owns** (`EVT-000592`). **The Finished dagger is at its ceiling — Marnie completed it**, and everything else on her abandoned dock was interrupted, so whatever happened to her happened *after*. **The half-finished leather piece he has carried as evidence since 2026-08-13 is an incomplete [A-Rank] armour commission that can still be finished.** His two [C-Rank] worn pieces cannot be raised by anyone; his three [B-Rank] pieces can. The Mana Reservoir has run at 42% of what it was built for since the day he bought it. Full sweep in `120_INVENTORY_AND_OWNERSHIP.md`'s **Ceiling Register**.

      Superseded anchor states are not held here. `160_CAMPAIGN_CHRONICLE.md` narrates every span in full, and `moved_by_events` above references every Event that claims to have moved this record -- Decision 085 requires the reference, never the narration. Thirty-three prior anchors were retired on that basis; read the chronicle for any of them.

  capabilities: "University-trained mathematician and physicist (recent graduate). Certified krav maga instructor with several years of teaching experience; genuinely dangerous unarmed and in close-quarters combat by ordinary human standards. Formerly part-time secondary-school teacher. Cleared BGM intake three months ago (awakened) and has held an active hunter license for about one week, carded **E-Rank** — the lowest possible ranking, legally capping him out of **strike/combat** contracts at C-Rank and above and their pay (Profile Section 19.4) unless he seeks re-assessment. This cap does **not** extend to harvest/support work, which is not rank-gated at all (Section 9.4, `d53114b`): he may legally mine a C- or higher-Rank Gate right now. Under Profile 1.4, his direct System Stats govern possibility, pools, physical magnitude, and relative roll margins; his level-derived E System Rank governs content and rewards only. Uncertain contested execution still resolves on the engine d100. No System skill (rune, skill book, class, or stat milestone) is known yet — `/system skills` reads empty.\n\n  Demonstrated, non-System capability (qualitative, `EVT-000059`/`EVT-000060`/`EVT-000063`): combat effectiveness validated in genuine uncertain combat (twice read an enemy's attack pattern to open a kill for someone else, under real stakes) — no longer merely a reputation gap. Mana-crystal extraction technique, taught in the field by Tanya Voss on 2026-07-24 and materially advanced solo at the Cicero Scar on 2026-07-25: he now reads a vein's resonance shift before striking rather than correcting mid-swing, picked up by deliberately watching two veteran harvesters and copying their method — a real, demonstrated improvement, not just repetition. Four System daily training regimens were completed from 2026-07-25 through 2026-07-28. Under the Profile 1.4 migration (`EVT-000074`), each included 100 push-ups, 100 sit-ups, 100 squats, and a 10 km run; the previously unnarrated squat sets occurred off-screen during the same exercise periods. The second day's run doubled as his commute to a job site in full gear, a deliberate efficiency he worked out himself.\n\n  **Externally-observed tactical framework (qualitative, `EVT-000066`, 2026-07-26):** during a break at the Frozen Gallery's third vein, Alexander deliberately studied the strike element holding a flank position — first their formation geometry (a breathing line trading coverage of blind angles without visible signal), then their pre-emptive timing (shifting position a full beat ahead of a barely-perceptible cue, patience and commitment-on-certainty rather than reaction). Neither observation altered a tracked stat or granted a mechanical bonus. It is recorded as the beginning of a real, externally-sourced framework for reading a fight's rhythm at a coordinated, multi-person scale — distinct from, but complementary to, his own demonstrated pattern-reading in the Red Line Corridor (`EVT-000059`), which he arrived at instinctively and under his own fight's pressure rather than by watching trained others. No NPC is aware the observation occurred.\n\n  **Reactive footwork, qualitative (`EVT-000167`, 2026-08-05):** ran a stranger's (Milo's) reaction-footwork drill at the Coalition training grounds twice, cold, no prior exposure to the method — a legendary-success first pass (🎲 d100 88) and a strong-success second pass under a harder, feint-laced pattern (🎲 d100 73), catching one feint late but recovering mid-stride without losing the run. Not a System skill and not mechanically tracked; Milo's own read was that it looked less like natural talent and more like Alexander was anticipating his calls before they landed. No stat, mastery, or resolved roll changed by this — pure demonstrated capability, consistent with his established pattern-reading."
  credentials: "Active BGM-issued hunter license (E-Rank card, ~1 week old). No guild membership. Freelancer affiliated with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`) — Chicago's freelancer co-op, the default hook for an unaffiliated Chicago hunter."
  portrait: "assets/portraits/Alexander_Pendragon_ENT-000125.png"
  appearance: "Twenty-five, 183cm, built like what he is — a krav maga instructor who trains daily and means it. Athletic and openly muscled, the hard functional kind earned in a gym and a hundred daily regimens rather than a mirror; it reads as capability, not vanity. Dark brown hair; dark brown eyes that catch hazel in better light. He keeps a short beard — a deliberate one to two weeks' growth, maintained rather than neglected, trimmed to sit right on a strong jaw: the one piece of grooming he clearly does on purpose. His face is controlled and hard to read, an economy of expression that most people find intense and a few find cold. He wears the reinforced leather hunter's kit from Ironbound — jacket, fitted gauntlets, shin guards — worn like ordinary clothes rather than a costume. Everything about him is measured, watchful, and held slightly in reserve; the guard comes off for exactly one person, and the rare unguarded smile is worth noticing precisely because of how seldom it appears."
  personality: "Coldly analytical; a strength the world hasn't caught up to yet — his reads of a fight, a room, or a person are consistently correct, even when no one believes him. Hot-headed: once he has read a situation, he trusts that read and moves on it fast, especially when he judges someone else to be in the wrong, often before slower or more cautious counsel would act. This combination — right more often than anyone expects, and impatient with anyone slower to see it — is exactly what has made him hard to place in a crew."
  latent_stat_array:
    note: "SUPERSEDED by system_state below (EVT-000059). Retained for provenance: this was the civilian-range creation array (Profile Section 4.1: five stats, each 8-12, summing to 50, none above 12) the Onset Sequence (Profile Section 14.7) read into the granted STATUS window when the System attached mid-session on 2026-07-24."
    strength: 11
    agility: 12
    vitality: 8
    perception: 11
    intelligence: 8
  system_state:
    bearer: true
    profile_version: "1.83"
    profile_party_minimum_event: EVT-000460
    profile_unified_render_event: EVT-000443
    profile_render_cadence_event: EVT-000442
    profile_render_template_event: EVT-000441
    profile_candidate_rejection_event: EVT-000440
    profile_remote_storage_event: EVT-000438
    profile_magnitude_ladder_event: EVT-000391
    profile_a_rank_ladder_event: EVT-000392
    profile_magnitude_ratchet_event: EVT-000393
    profile_intelligence_damage_event: EVT-000395
    ascension_recalculation_event: EVT-000396
    profile_conduit_event: EVT-000364
    profile_stat_passive_rungs_event: EVT-000362
    profile_title_assessment_event: EVT-000348
    profile_system_window_event: EVT-000276
    profile_skill_rank_ascension_event: EVT-000158
    profile_consumable_economy_event: EVT-000154
    profile_premium_surcharge_event: EVT-000135
    profile_system_interface_event: EVT-000134
    profile_mandatory_ratification_gate_event: EVT-000133
    profile_earned_technique_ratification_event: EVT-000132
    profile_meaningful_practice_event: EVT-000131
    profile_progression_audit_event: EVT-000130
    profile_dual_wield_event: EVT-000129
    profile_instruction_binding_event: EVT-000128
    profile_premium_persistence_event: EVT-000125
    profile_party_exception_event: EVT-000117
    profile_layout_event: EVT-000134
    profile_economy_event: EVT-000090
    profile_streak_event: EVT-000092
    profile_itemdiversity_event: EVT-000100
    profile_skilltracking_event: EVT-000105
    profile_recovery_event: EVT-000107
    profile_quest_event: EVT-000115
    profile_migration_event: EVT-000082
    onset_event: EVT-000059
    onset_time: "2026-07-24, inside the Red Line Corridor Gate, mid-fight against the crew's remaining beasts and the elite"
    class: Riftwalker
    class_quest:
      status: completed
      offered_event: EVT-000478
      entered: true
      entered_event: EVT-000511
      completed_event: EVT-000519
      class_taken: Riftwalker
      note: "**CLEARED 2026-08-19, and the class is permanent.** Entered at `EVT-000511` and cleared at `EVT-000518`: terrain **Shattered City** (d8 6), Combat Tier snapshotted at **B-Rank** on entry per Section 6.7, five authored phases and a final foe on one budget with no refill and no retreat. **Eleven C-Rank commons, five B-Rank elites, six B-Rank commons and a B-Rank boss.** Walked out at **292/520 and 144/196** having been touched exactly three times: a natural 100 from a C-Rank common through a one-metre gap (144), a natural critical in Phase 5 (348, spending threshold absorption), and nothing else. **Level 29 -> 30 crossed mid-trial at `EVT-000514`**, which restored both pools inside a trial that suspended every other form of recovery, and fired the whole System Rank B cascade at `EVT-000515`.\n\n      **Signals scored (Section 18.3.2): kill efficiency 8, battlefield control 6, weapon breadth 10, endurance 8, positioning 12.** Two classes offered on the catalogue -- **Riftwalker** on positioning, **Soulforged Armory** on weapon breadth -- and a third revealed uncatalogued: **Herald** (Section 18.10), whose reveal condition is scoring at least one point in **all five** signals. Reliquary (18.9) and Seam (18.11) were both checked against the record and neither fired. **RIFTWALKER TAKEN at `EVT-000519`**, foreclosing the other two for the campaign.\n\n      **Prior history retained, because it is why there was a re-run.** **Section 18.1 trigger missed at the Level 24→25 crossing (`EVT-000475`) and caught by the player, fired retroactively at `EVT-000478`.** The offer does not expire and is not consumed by delay (Section 18.1: 'It is offered once. It does not expire'). Sealed instance, fully lethal, no retreat once entered; tracks five signals (kill efficiency, battlefield control, weapon breadth, endurance, positioning) and offers at least two classes on survival. **Still `offered`, not entered.**\n\n      **PLAYED AND DELIBERATELY NOT PROMOTED — owner election, 2026-08-07 real date.** The trial was played out in full in the session following Checkpoint 0081: entered, cleared (3 commons, 2 elites, 1 boss, one 13-damage graze taken in the whole encounter), Devourer chosen, and five fragments consumed. **The player elected not to promote any of it**, on the strength of two engine defects the play surfaced — **`F-022`** (Devourer's fragment cap equals its entire catalog at the class's own starting level, so all five kinds are held on day one and the cap gates nothing) and **`F-023`** (Section 18.2 scales the trial's population to the Bearer's System Rank rather than his actual measured output, so a heavily-invested Bearer faces no real lethality despite the section's 'fully lethal, no retreat' billing). The intent is to resolve both flags and re-run the trial against a corrected Section 18.\n\n      **Nothing from that span is canon.** No class attached, no fragment held, no core consumed, no XP awarded, no title loadout change — every figure on this sheet is the pre-trial state, and the Class Quest is genuinely unentered rather than merely recorded as such. This is a player-elected non-promotion, **not** a Rejected Simulation (Runtime Profile, Failure Behavior: that classification is reserved for unreconcilable contradiction of canonical state, and nothing about the played trial contradicted canon — it simply revealed the content was not yet worth keeping)."
    riftwalker:
      granted_event: EVT-000519
      system_rank_rungs: "Section 18.8 grows this class on authored rungs read against System Rank (Section 6.6), never on a mastery track. **At B:** rift-step reaches line of sight *or through an obstruction he has perceived past*; deflection 60%; two anchored steps per scene. **At A:** any point within 100 m sight or no sight, 70%, unlimited anchored steps. **At S:** any point in the instance, and a deflection may return the attack to its source."
      anchors:
        cap: 11
        cap_formula: "effective Agility 461 / 20, floor, minimum 1 (Section 18.8) — **cap 23**, four of twenty-three set. The twenty-fourth anchor lands at Agility 480. **Re-derived at `EVT-000568`** — the level 30–34 crossings carried effective Agility 231 → 323 and Section 18.8 reads it live, so the working set went 11 → 16. Prior: effective Agility 231 / 20; the twelfth anchor lands at Agility 240. **Re-derived at `EVT-000560`** — the 1.80 backfill carried effective Agility 112 → 231, and Section 18.8's cap reads it live, so the working set went from full at five to four of eleven. The migration's step 3 names Stat Passives and damage previews explicitly; this is the same class of Stat-derived value and re-derives on the same terms."
        set:
          - name: "The fence line"
            place: "the fenced warehouse, ENT-000166, Chicago warehouse district"
            set_event: EVT-000541
            note: "First anchor. Set on a Legendary-success stealth approach (natural 91 → effective 100); the same scene's Suppression Emitter test found an undisclosed anomaly-sensing layer in the site's own security, and a Gate Direction Finder read confirmed a live Gate signature inside the fence. B-Rank anchor sense: disturbance here reaches him unprompted, wherever he is."
          - name: "The apartment"
            place: "the Rogers Park apartment, ENT-000087, home"
            set_event: EVT-000549
            note: "Second anchor. Uncontested, free, no roll (Section 6.2's no-roll zone) — a place he unambiguously has reason to hold. Fired once, `EVT-000551`: presence at 20:00 the same evening, surfaced and resolved on direct arrival as Owen, home on schedule. No unresolved disturbance outstanding."
          - name: "The reclaimed edge"
            place: "Cicero Scar's licensed reclaimed edge, Chicago"
            set_event: EVT-000553
            note: "Third anchor. Set before the morning's mining assignment began. No disturbance fired here this session."
          - name: "The warp heart"
            place: "deep in the Cicero Scar's restricted core, past the inner cordon"
            set_event: EVT-000554
            note: "Fourth anchor. Set at the structured object's sighting, five minutes into the self-imposed time limit. Unauthorized ground — no BGM posting covers it. No disturbance fired here this session."
        disturbances_unsurfaced: 0
        note: "**Four of twenty-three set.** **Releasing is free, instant and at will from anywhere (Profile 1.72), so the cap is a working set rather than a set of permanent commitments** — the exchange is the price of setting, not of letting go. An anchor is set by holding a position for a full exchange; **no slot was spent inside the Class Quest trial**, whose instance collapses on exit. Reach is *the same instance, Gate, or contiguous stretch of the city* -- the profile's own worked example anchors two of three points outside any instance."
      anchor_sense:
        rung: "B-Rank — disturbance reaches him AS IT HAPPENS, unprompted, wherever he is"
        note: "**Replaced the pocket cache at Profile 1.73** (`F-033`). A set anchor is a place he remains connected to: disturbance there — presence, violence, or a mana event — reaches him at no cost, no action, and **from every set anchor at once**. It returns the fact and never the detail. **A disturbance is stored state with a lifecycle** (`occurred_at`, `kind` at A-Rank and above, `surfaced`, `acknowledged`), is never aged out or trimmed, and an unsurfaced one is a **mandatory readiness and next-scene gate** that opens the next Runtime turn ahead of anything else. **The sense reports; it never authors** — a disturbance may be surfaced only where it would have occurred had no anchor been set there. The prior pocket cache was granted **empty** at `EVT-000519` and never used, so the migration relocated nothing."
      open_rulings:
        anchored_step_cost_outside_an_instance: "**RULED at `EVT-000521` (Profile 1.72): the city case reads the Rank ladder at E-Rank, 5 Mana.** Ordinary city ground is the bottom of the ladder because crossing air nobody warded is not the act of crossing a sealed instance; an anchored step out of a B-Rank instance still costs 40. The flat 6 was explicitly rejected — Section 18.8 names it as what an anchored step costs *instead of*. Prior status, superseded: **OPEN -- owner ruling required; raised as `F-032`.** Section 18.8 prices an anchored step at *the Rank-ladder Mana of the instance's Rank rather than a flat 6*, and the same paragraph advertises anchors in a *contiguous stretch of the city*, where there is no instance and no instance Rank. Its own example anchors a Rogers Park stairwell. **The cost is undefined and is deliberately not invented here.** Candidates named in the flag: the flat 6; the Bearer's own System Rank on the ladder; a distance band; a flat authored value."
    title:
      - Prospector
      - Loner
      - Ascetic
    title_note: "**Cartographer swapped for Prospector at `EVT-000553`, 2026-08-20 06:00, before the Cicero Scar mining assignment** — free and instant per Section 16.3; Cartographer's archetype-reveal is inert outside a Gate, Prospector's +2-crystals-per-deposit is directly on-point for harvest work. Cartographer is earned and now unequipped. Prior history, retained: **Centurion swapped out for Ascetic at `EVT-000535`, 2026-08-19 ~14:06, on the player's declared instruction inside the trial instance before exit** — free and instant per Section 16.3. Ascetic was earned at the level-20 assessment and stood unequipped since Untouchable was swapped out for it on 2026-08-16 (below). Effective immediately: the twenty-seventh daily's Ability Points entry, issuing 2026-08-20 06:00, reads **+4** rather than +3. Centurion is earned and now unequipped — all three of the level-30 slots are full (Cartographer, Loner, Ascetic). Prior history, retained: **Corrected and then changed at `EVT-000444`.** This field had read `Ascetic, Prospector` — the `EVT-000357` first loadout — and was never rewritten when the loadout changed to **Cartographer + Untouchable** before the first Crypt instant dungeon (`EVT-000428` span), a swap `180_CURRENT_STATE.md` carried correctly for a whole session while this sheet rendered the superseded pair. Same `F-015` shape as `EVT-000439`'s four Stat Passive rows: a stored value with nothing mechanical to disagree with it. Live loadout repaired to Cartographer + Untouchable, then **Untouchable swapped out for Ascetic** on the player's declared instruction the evening of 2026-08-16, *before* the 2026-08-17 06:00 daily issue — which is why the twenty-fourth daily's Ability Points entry issued at **+4** rather than +3 and the `ascetic_claim_timing_evt_000357` seam never arose."
    titles:
      last_assessment: 30
      next_assessment: 40
      catalog_size: 21
      slots: 3
      slots_note: "**FOUR passed — levels 10, 20, 30 and 40** (`EVT-000591`), so 4 slots against **13 earned titles**. The fourth opened on the System Rank A crossing and was filled with **The Unmeasured**, over Vanguard and Giantslayer, because nothing was scheduled to hit him before Nakamura's 19:30 bench and three unidentified objects were waiting on it. **The fifth slot arrives at level 50, which is also where System Rank S lands.** Prior: One slot per assessment passed, capped at five (Section 16). **Three passed — levels 10, 20 and 30 (`EVT-000515`) — so 3 slots against twelve earned titles.** The third opened at the Level 30 crossing and was filled the same exchange: Giantslayer equipped, then swapped for **Centurion** on the player's instruction once the trade was shown (a modifier step against a boss, against +1 Mana per common killed inside a trial with no refill). The fourth opens at level 40."
      points_granted: 40
      note: "Granted by the two retroactive Title Assessments (`EVT-000349`), run at Profile 1.47 adoption (`EVT-000348`) because Alexander crossed level 10 at `EVT-000150` and level 20 at `EVT-000341` under profiles that had no assessment to fire. Each rung was judged at the level it belongs to (migration step 3): **seven at level 10**, **three at level 20**. Ten of the twenty-one catalog entries (Section 16.2) are held — nine Common and one Rare (**Cartographer**), no Singular. Points by grade (+2 / +5 / +10): 6×2 + 5 = **17 at the level-10 rung**, 3×2 = **6 at level 20**, **23 banked unspent**, which is why `unspent_points` reads 53 rather than 30. `title` is `null` — the assessments grant and open slots, they never equip; both slots are Alexander's own free choice through `/system titles` (Section 15.3.4) and no passive is active until he makes it. The next assessment is the level-30 level-up, which also opens a third slot, and nothing fires before it (Section 16.1)."
      earned_summary: "**13 titles earned. VANGUARD added at `EVT-000591`** [Rare] on an owner ruling that **all Gates count, including Section 17 instant dungeons** — the recount from the `EVT-000515` baseline of 2 gave eight further solo-first entries and landed on **10 of 10 exactly**, eight of them inside forty-eight hours. Its effect: **entering a space alone and first never triggers an entry ambush check**, and **+1 modifier step on every action in the first exchange inside it**. Grade payment +5 ability points. **THE UNMEASURED was re-authored at the same Event** — it read *one Rank above Flux Sight's §4.4 ceiling*, which pointed at nothing once Flux Sight reached [S] natively, and the player ruled it must not go inert: **beyond-S, Flux Sight returns a subject's CEILING alongside its current state.** Prior: **12 titles earned.** The catalogue - each title's criterion and the Event that proved it - is `titles_catalog`, fetched by `/system titles` rather than carried at readiness (owner ruling, 2026-08-10). Names and grades here, which is what a scene needs to know exists."
      earned_names:
        - "Kingmaker [common, assessment 10]"
        - "Underdog [common, assessment 10]"
        - "Diehard [common, assessment 10]"
        - "Loner [common, assessment 10]"
        - "Untouchable [common, assessment 10]"
        - "Cartographer [rare, assessment 10]"
        - "Centurion [common, assessment 10]"
        - "Prospector [common, assessment 20]"
        - "Penitent [common, assessment 20]"
        - "Ascetic [common, assessment 20]"
        - "Giantslayer [common, assessment 30]"
        - "The Unmeasured [singular, assessment 30]"
        - "Vanguard [rare, assessment 40]"
    titles_catalog:
      note: "The full earned-title catalogue: grade, granting assessment, proving Event and the criterion each was proved against. Split out of `system_state.titles` on 2026-08-10 because readiness loaded all of it every session for a panel that renders it on request. `/system titles` fetches this; nothing else reads it."
      earned:
        - title: "Kingmaker"
          grade: common
          assessment: 10
          proved_by: EVT-000059
          criterion: "a boss killed by another hunter's hand on a weakness he resolved and relayed, the clear credited to him under Section 3.8 — the Red Line Corridor boss, in the onset scene itself: a legendary second read found that its leap leaves it locked for about a second on landing, he called it to the crew, Tanya Voss baited the leap, and Elias and Tanya killed it together, with boss Kill XP (40) and the E-Rank clear milestone (70) settling to Alexander on setup credit. Repeated at `EVT-000184` (Owen Callahan killed thirteen of fourteen; the clear was still Alexander's) and at `EVT-000341`"
          passive: "the first action an allied hunter takes against a target whose weakness he has relayed this scene takes +1 modifier step"
        - title: "Underdog"
          grade: common
          assessment: 10
          proved_by: EVT-000070
          criterion: "a creature killed while it stood two or more Ranks above his System Rank — the Ashfield Gate resolved true **C-Rank** on entry against a low-confidence D assessment, and Alexander, then System Rank E, intercepted a C-Rank common that broke toward Owen and killed it alone across six exchanges: two full Ranks up, a red designation (Section 14.6). Sustained again at `EVT-000340` against B-Rank commons at System Rank D"
          passive: "+1 modifier step on his first action against each orange- or red-designated creature in a combat"
        - title: "Diehard"
          grade: common
          assessment: 10
          proved_by: EVT-000070
          criterion: "Health reduced to 0 in a resolved exchange he survived — the same Ashfield interception: the C-Rank beast's retaliation landed Rank-honest for ~47 against a 40 maximum, Health 40 → 0, the first genuinely lethal hit of his career, survived by claiming a pending daily-quest grant mid-exchange with Owen watching. Repeated at `EVT-000340`, where Shrug Off's threshold absorption held a 266-damage counter to raw damage"
          passive: "+1 modifier step on all actions while Health stands at or below one quarter of its maximum"
        - title: "Loner"
          grade: common
          assessment: 10
          proved_by: EVT-000097
          criterion: "at least one Gate cleared alone, its boss killed with no other hunter inside — the first solo instant dungeon (Overgrown Temple, `EVT-000097`), one of **seven** solo clears already standing at the level-10 rung; ten more since, plus the `EVT-000198` penalty zone"
          passive: "+1 modifier step on all actions while no allied hunter shares the Gate"
        - title: "Untouchable"
          grade: common
          assessment: 10
          proved_by: EVT-000097
          criterion: "at least one Gate cleared taking no damage at all — that same first solo instant dungeon closes with `No injury; never hit`. Repeated at `EVT-000234`, `EVT-000304` (zero damage taken the entire clear), `EVT-000327` and `EVT-000332`"
          passive: "+1 modifier step on evasion in the first exchange of every combat"
        - title: "Cartographer"
          grade: rare
          assessment: 10
          proved_by: EVT-000120
          criterion: "a Gate of **every archetype** on the Section 10 d8 cleared and credited — all eight interiors walked out of, and all eight inside eleven days: Shattered City (`EVT-000059`, the Red Line Corridor), Ashfield (`EVT-000080`), Overgrown Temple (`EVT-000097`), Hive (`EVT-000099`), Frozen Gallery (`EVT-000101`), Crypt (`EVT-000109`), Flooded Mine (`EVT-000113`), and Beast Den (`EVT-000120`, the Cicero Gate's alpha pair with Owen — confirmed solo later at `EVT-000303`). The eighth closed the set on 2026-08-03, two days before the level-10 rung. **The only Rare-grade title in his record.**"
          passive: "a Gate's archetype is known to him the moment he enters, without a read, a survey, or a confirmation; and +1 modifier step on every action that exploits or evades the archetype's twist"
        - title: "Centurion"
          grade: common
          assessment: 10
          proved_by: EVT-000149
          criterion: "100 kills credited, Section 3.8 live-contribution credit included — the hundredth falls inside the 2026-08-05 Hive clear on **solo instant-dungeon kills alone**, before any Gate or party credit is counted: 6, 13, 23, 37, 52, 67, 82, 109 cumulative across `EVT-000097`, `EVT-000099`, `EVT-000101`, `EVT-000109`, `EVT-000113`, `EVT-000142`, `EVT-000144`, `EVT-000149`"
          passive: "+1 Mana recovered per common beast killed"
        - title: "Prospector"
          grade: common
          assessment: 20
          proved_by: EVT-000342
          criterion: "500 crystals extracted from mineable deposits by his own hand — short of the floor at the level-10 rung (roughly 270 by 2026-08-05) and passed since: 552 on cited extractions alone — 189 (Frozen Gallery, `EVT-000065`-`EVT-000068`), 104 (`EVT-000342`), 93 (`EVT-000224`), 24 (`EVT-000206`), and 142 across the instant-dungeon deposits he mined out, before the Cicero Scar, Halsted Depot and rail-corridor veins are counted"
          passive: "every deposit he extracts personally yields 2 additional crystals"
        - title: "Penitent"
          grade: common
          assessment: 20
          proved_by: EVT-000198
          criterion: "a penalty zone cleared — the fourteenth daily deliberately failed to see what the penalty was, then the sealed four-hour D-Rank survival instance cleared solo in roughly twenty-five minutes (`EVT-000194`-`EVT-000198`). It falls after the level-10 rung: the Level 10→11 threshold was crossed **inside** that instance (`EVT-000196`)"
          passive: "+1 modifier step on all actions inside a sealed instance he did not open"
        - title: "Ascetic"
          grade: common
          assessment: 20
          proved_by: EVT-000338
          criterion: "20 daily quests completed, consecutive or not — twelve by the level-10 rung, short of the floor; twenty-one by the morning of 2026-08-14, across one deliberate failure and the streak reset that followed it"
          passive: "each daily-quest Ability Points reward grants +4 points instead of +3"
      unearned_count: 9
      unearned_note: "Eleven unheld, not rendered to the Bearer (Section 16.1 withholding); recorded for the Runtime only. **Common:** Red Survivor (no red gate rolled), Break-Breaker (both tracked-board breaks resolved without him, `EVT-000270`). **Rare:** Deathless (streak restarted at `EVT-000340`), Executioner (**recounted at `EVT-000515` on player instruction: roughly 20-25 above-Rank kills of 50, not the ~30 previously stored**; the count is decidable because Section 3.3's underdog multiplier is applied only above System Rank, so every Event either records one or says it does not), Warden (5 party clears of 10), Vanguard (2 solo-first entries of 10), Wellspring (heaviest single expenditure short of twice a 112 pool). **Singular:** Godslayer (no A/S boss faced), Unbroken (streak 7 of 100, one deliberate failure on record). **Giantslayer and The Unmeasured were both granted at `EVT-000515` and are no longer unheld** -- and The Unmeasured landed exactly as this note predicted it would, on System Rank reaching B at level 30 against a card still reading E."
    level: 40
    xp: "1347/4000"
    health: "1980/2000"
    mana: "982/982"
    world_clock:
      last_ticked: "2026-08-21T06:00:00-05:00"
      next_tick: "2026-08-22T06:00:00-05:00"
      note: "**Section 9.1's daily world tick, authored at Profile 1.73** (`F-034`). **The first tick ran 2026-08-20 06:00** (`EVT-000552`), real dice throughout, entry written in `110_WORLD_LEDGER.md`'s `world_ticks` before the twenty-seventh daily issued (Section 9.1.1's fixed ordering): Chicago 1d4+3→7 Gates, Prague 1d2→1; ranks D/D/E/E/E/E/C and D; siting found two E-Rank detections within reach, five elsewhere; no live posting held a deadline so contest/breaks resolved `none`; postings regenerated as `GB-05`/`GB-06`; Reyna Castillo's agenda initiated and resolved (she joined the crew); one non-Gate world event (Aftermath, within reach); district pressure held at 0; the first-week major roll held. **Each Gate and break is sited `d100` against his recorded day — `01-10` on his route, `11-30` within reach, `31-00` elsewhere — so proximity is an input rather than a veto.** Results are binding, including inconvenient ones. **A `last_ticked` behind the most recent day boundary at or before `campaign_time` is a readiness finding**: the world has not been run."
    temporal_state:
      campaign_time: "2026-08-21T17:30:00-05:00"
      mana_recovery_mode: resting
      mana_recovery_remainder_units: 0
      health_recovery_mode: resting
      health_recovery_remainder_units: 0
      note: "Five scalars, by owner ruling 2026-08-10. How the anchor advanced is narrated by the promotion Event that moved it and by `170_CHANGELOG.md`, neither of which can drift from the clock the way a note sitting beside it can. Both pools closed this span at full; remainders zeroed accordingly."
    unspent_points: 0                      # rendering of `ability_points_earned - sum(allocated)` = 323 - 323 (Profile 1.82)
    pending_rewards:
      ability_points: 0
      ability_points_note: "**2026-08-21: TWENTY-FIVE points allocated, and the record said fifteen** (`EVT-000591`, reconciled at `EVT-000594`). Vitality took **fifteen across two passes** (+10 then +5) — base 484 → **499**, effective 485 → **500**, **max Health 1,940 → 2,000**. **This is a change of strategy and the reasoning is recorded because of it.** With System Rank A re-pinning every Stat Passive at [S] the instant it released them, points buy derived numbers only — and **Vitality is the axis that gates Combat Tier S**, which needs 2,700 max Health at 46% reduction. Fifteen points closed **60 of a 760-Health gap**, which is itself the argument that **allocation has stopped being the lever**: at the new **+63 per level** rung the remaining 175 effective Vitality is under three levels. Prior: **2026-08-21 (`EVT-000585`): nineteen points allocated — the counter read zero for the first time since Wednesday.** Fifteen banked across levels 34–36 plus four claimed from the twenty-eighth daily under Ascetic: **+12 Intelligence, +7 Strength**. The allocation followed a finding that **no allocation touches a Stat Passive any more** — all five sit at [A-Rank] held by the System Rank + 1 ceiling, their thresholds are 66 and 80 against his 326–393, so they are qualified for S on stat and blocked purely by System Rank, which is level-derived and next moves at 40. Perception is a dead stat for him; Agility buys one anchor slot at 380; Vitality cannot reach Combat Tier S (2,700 max Health needed). **Level 37 then paid a further 5, unspent.** Prior: **2026-08-20 (`EVT-000570`): the Level 34 → 35 crossing paid a further 5, unspent — `unspent_points` 5 → 10.** The `EVT-000564` finding still holds and nothing forces a shape on them: Section 4.3 margins are saturated at +200 and every Stat Passive is pinned by the System Rank ceiling until level 40, so Perception and Agility buy nothing. Prior: **2026-08-20 (`EVT-000564`): fifteen points banked across the level 30-33 crossings allocated in one pass** — +5 Strength (291→296), +5 Intelligence (323→328), +5 Vitality (341→346) — on the finding that Perception and Agility buy nothing: Section 4.3 margins saturate at +200 and every Stat Passive is pinned by the System Rank ceiling until level 40. **Level 34 (`EVT-000567`) paid a further 5, unspent.** Prior: **2026-08-20 (`EVT-000553`): the twenty-seventh daily's entry claimed at +4 and spent in the same exchange**, all four to Vitality (base 126→130, effective 131, `maximum_health` 508→524, filled from cap). `unspent_points` returns to 0."
      status_recovery: 18
      daily_random_box: 0
      unresolved_gate_loot: "**Fully resolved.** Nothing outstanding. Full history: `160_CAMPAIGN_CHRONICLE.md`."
      latest_settlement: "**2026-08-20 (`EVT-000553`): the twenty-seventh daily's three rewards settled.** AP **+4** all to Vitality — base 126 → 130, effective 131, `maximum_health` re-derived 508 → **524**, filled from cap. Status Recovery **18 → 19**, unclaimed. Box opened standard (streak 13, not a multiple of seven): 🎲 d100 **81** → ranked gear at System Rank B; 🎲 d3 **1** → weapon, 🎲 d7 **1** → **Quickknife [B-Rank]**, Agility +11, power 11, Excellent, unbound — banked. Prior settlements: `160_CAMPAIGN_CHRONICLE.md`."
      note: "**Unspent 0**, and the pool it drained is reconciled at `EVT-000594`: 5 banked at level 37, +5 at each of levels 38/39/40, and **+5 from Vanguard's [Rare] grade payment** — 25 available, 25 allocated. Prior: the 15 banked across three level-ups' +5 grants (`EVT-000431` Level 22→23, `EVT-000470` Level 23→24, `EVT-000475` Level 24→25) plus the +8 from two claimed AP entries were **all allocated at `EVT-000487`**: Strength +10 (65→75), Intelligence +10 (70→80), Vitality +3 (104→107). Ascetic +4 question unaffected — see `skill_rulings.ascetic_claim_timing_evt_000357`."
    # Profile 1.80 backfill: +119 to every base Stat (new automatic 148 vs old 29 at
    # level 30). Uniform because allocation is unchanged -- all 264 allocated points
    # stay where Alexander put them. See `migrations/1.79_to_1.80.md`.
    stats:
      strength: 441
      agility: 417
      vitality: 499
      perception: 418
      intelligence: 488
    effective_stats:
      strength: "455 (base 441 + equipment 14)"
      agility: "461 (base 417 + equipment 44)"
      vitality: "500 (base 499 + equipment 1)"
      perception: "423 (base 418 + equipment 5)"
      intelligence: "491 (base 488 + equipment 3)"
      note: "**2026-08-21 17:26 — two levels and a SYSTEM RANK.** Level 38 → 39 → **40** (`EVT-000588`, `EVT-000589`), the last crossing carrying **System Rank B → A**: both the §4.4 Stat Passive ceiling and the §7.5 skill ceiling move to **S**, §3.2's growth rung goes **+23 → +63 per level**, a fourth title slot opens, and all five Stat Passives release and re-pin one Rank higher. **Twenty-five points allocated** (`EVT-000591`, reconciled at `EVT-000594`): **fifteen to Vitality and ten to Intelligence**. Base closes **441/417/499/418/488**, effective **455/461/500/423/491** — **effective Vitality 500 and max Health 2,000**, both round and neither engineered; a fixed-Rank A hunter carries 1,500, so he stands at **133% of one on a card that reads E**. Pools **1,756/870 → 2,000/982**. **Damage re-derived twice** — once at Dagger Mastery's [B]→[A] breakthrough (chassis ×1.75 → **×1.95**) and once at Twin Fang's [C]→[B] (second-strike ×2.15 → **×2.35**): main-hand **930**, off-hand **918**, Twin Fang second strike **2,157** / package **3,087**, projected Quickknife **909** (×4 = 3,636). **Rupture re-derived at [S-Rank]**: baseline 375 → **1,000**, held at ×2.60 by `magnitude_floor`, **3,877**. Mana Bolt **1,026**. Both corrected at `EVT-000595` from 3,715 and 1,034. Anchor cap **23**. **Combat Tier holds at A** — defence **9.88** landed A-Rank hits (`2,000 ÷ 202.5`); Tier S needs **2,700** max Health, a gap of 700. Prior: **2026-08-21 13:01, two levels in one morning (`EVT-000584`, `EVT-000586`): Level 35 → 37**, Profile 1.80's B rung paying **+23 to every base Stat** at each, plus **nineteen points allocated at `EVT-000585`** (+12 Intelligence, +7 Strength) and 5 from level 37 unspent. Base Stats close **372/348/415/349/409**, gear unchanged. Pools **1,480/708 → 1,664/824**, both refilled. **Damage re-derived at Dagger Mastery Expert (×1.75) and Twin Fang Expert (×2.15)**: main-hand **714**, off-hand **704**, Twin Fang second strike **1,514** / package **2,228**, Rupture **2,046**, projected Quickknife **695** (×4 = 2,780). **Mana Bolt 907** after its `EVT-000586` breakthrough — see its own line, and note the Runtime first rendered that ascension as a *loss* before `magnitude_floor` was applied. Rift anchor cap **19** (effective Agility 392 ÷ 20). **Combat Tier holds at A** — defence **8.22** landed hits against A-Rank (`1,664 ÷ 202.5`); `offense_tier` S. **A finding recorded and not acted on: max Mana 824 is well past the A-Rank Rank Mana figure of 750**, and Profile 1.80 re-pegged §19.2's re-assessment bands to that ladder — a re-assessment today plausibly cards him **A** against a licence still reading **E**. Prior: **2026-08-20 15:35, the Overgrown Temple (`EVT-000570`): Level 34 → 35**, Profile 1.80's B rung paying **+23 to every base Stat**; base Stats close **319/302/369/303/351**, and gear is unchanged at STR +14 / AGI +44 / VIT +1 / PER +5 / INT +3. Pools re-derived **1,388/662 → 1,480/708** and refilled; **5 further ability points, 10 unspent**. Rift anchor cap **16 → 17** (effective Agility 346 ÷ 20). **Damage re-derived twice in one span** — once for the level, once because `EVT-000571`'s owner ruling carried **Dagger Mastery to Expert (chassis ×1.70 → ×1.75)** and **Twin Fang to Expert (second strike ×2.00 → ×2.15)**: main-hand **621**, off-hand **611**, Twin Fang second strike **1,314**, package **1,935**, Rupture **1,895**, Mana Bolt **603**, projected Quickknife [B] **602**. **Combat Tier holds at A** — defence 7.31 landed hits against A-Rank (`1,480 ÷ 202.5`), clear of the five-hit bar, S unreachable; `offense_tier` S. **No rendering drift this span**: every figure narrated in play reconciles against a clean re-derivation from base inputs, which is the `EVT-000568` correction holding. Prior: **2026-08-20 12:55, three B-Rank instant dungeons (`EVT-000563`, `EVT-000564`, `EVT-000567`): four level crossings, 30 → 34.** Profile 1.80's B-rung pays **+23 to every base Stat per level**, so automatic growth alone carried each base Stat +92; **fifteen banked points allocated at `EVT-000564`** (+5 Strength, +5 Intelligence, +5 Vitality) and **5 from level 34 left unspent**. Base Stats close **296/279/346/280/328**. **Gear Strength 19 → 14** — the second Warded Vambrace [A-Rank] equipped to Acc.2 at `EVT-000565`, displacing the Ascendant Hunter's Band [D-Rank] (Strength +5); the trade buys a **second independent once-per-exchange −30%**, multiplicative over 46% worn reduction, against about 9 damage a strike. Pools re-derived **1,000 → 1,388** and **468 → 662**, refilled at each crossing. Damage re-derived: main-hand **564**, off-hand **554**, Twin Fang second strike **1,108**, Rupture **1,836**, Mana Bolt **570**. Rift-step anchor cap re-derived **11 → 16** (effective Agility 323 ÷ 20). **Combat Tier moved B → A** (`EVT-000564`): `defense_tier` cleared the five-landed-hit bar at A — `1,388 ÷ 202.5 = 6.85` against the 4.94 the 1.80 migration left — while `offense_tier` holds S, and Section 6.7 takes the lower axis. **Two rendering drifts corrected at the `EVT-000568` barrier**, both narration-side and neither reaching an outcome: main-hand was narrated 569 against 564, and Rupture 1,814 against 1,836. Prior: **Profile 1.80 backfill (owner ruling, 2026-08-15):** automatic per-level Stat growth became a rung ladder (Section 3.2); the curve was recomputed from level 1 for **+119 to every base Stat**, allocation untouched. Pools 524→**1,000** and 230→**468**, filled to the new maxima — against a B-Rank hunter's 600/300 he now exceeds parity on both axes. Re-derived: main-hand **408**, off-hand **398**, Rupture **1,583**, Mana Bolt **429**. **Combat Tier holds at B** — `offense_tier` rises to S but `defense_tier` stays B (`1,000 ÷ 202.5 = 4.94`, short of five hits), and Section 6.7 takes the lower axis. **A Section 19.2 re-assessment now returns B** (Mana 468 in the rebanded 194–474); under 1.79 it returned S. No past Event or resolved outcome is altered. `migrations/1.79_to_1.80.md`. **Prior span (`EVT-000548`, `EVT-000553`, `EVT-000557`): four points to Vitality from the twenty-seventh daily** (base 126→130), and two gear swaps — Adaptive Titan Legs [B-Rank] for the Warded Greaves [C-Rank] (Strength gear +12→+19, Vitality gear +4→+1) and Ghost Quickknife [A-Rank] for the [B-Rank] model (Agility gear +39→+44). `maximum_health` re-derived twice: 520→508 (leg swap) →524 (Vitality AP, filled from cap). `maximum_mana` unaffected. Main-hand DMG 194→206; off-hand 175→187→196. Physical reduction 42%→46%. **Current Mana holds below cap by precedent** (a pool below cap keeps its value while only the ceiling moves) — 34 Mana short of full if ever ruled otherwise. **Combat Tier**: `offense_tier` A, `defense_tier` pinned B — `max(B, min(A,B))` = **B**. Full re-derivation history (the Class Quest's double re-derivation, prior gear swaps, the Intelligence allocation): `160_CAMPAIGN_CHRONICLE.md`."
    system_rank: A
    equipment:
      main_hand: "Finished dagger [S-Rank] — Quickknife chassis, all-Agility weapon stat line · Agility +22, weapon power 22 (Section 11.5 S-Rank weapon budget) · **effective chassis ×1.95** with Dagger Mastery [A-Rank] Adept's +1.20 (`EVT-000588`) · **DMG 930 standard before reduction** at effective Strength 455 — `(455 + 22) × 1.95 = 930.15`, rounded to nearest under Section 6.2 (re-derived at `EVT-000568` from 408 at effective Strength 218, the level 30–34 crossings and the Acc.2 vambrace swap moving it; at the Profile 1.80 backfill from 206 at effective Strength 99; before that at `EVT-000548`'s leg swap from 194 at effective Strength 92) · armed strike ×0.75 base — recovered from the loading dock sweep (`EVT-000326`), auto-identified S-Rank only (`EVT-000328`, no chassis/provenance beyond Rank at the time); its full combat line is authored here from the standard S-Rank weapon table on first equip in combat (`EVT-000339`). Equipped to main hand mid-fight, displacing the Ghost Quickknife. **Not owned in any ordinary sense** — the missing artificer's own commissioned work, held rather than owned (`120_INVENTORY_AND_OWNERSHIP.md`); equipping it is a live Section 19 exposure risk Alexander has accepted knowingly."
      off_hand: "Ghost Quickknife [A-Rank] — Premium model, Excellent · Agility +18 (A-Rank weapon budget 16 + 2 premium) · weapon power 16 · **effective chassis ×1.95** with Dagger Mastery [A-Rank] Adept's +1.20 · **DMG 918 standard before reduction** at effective Strength 455 — `(455 + 16) × 1.95 = 918.45`, rounded to nearest under Section 6.2 (re-derived at `EVT-000568` from 398) · armed strike ×0.75 · +1 modifier step on the first attack made unseen in a combat · bought from the Daily Premium Umbral cycle, 50,000 g (`EVT-000557`) · EQUIPPED, displacing the Ghost Quickknife [B-Rank] (Agility +13, weapon power 11, same perk), now banked unequipped, unsold."
      head: "**Adaptive Titan Coif [B-Rank]** — Premium model · Strength +7 · physical reduction 15% · bought from the Daily Premium Obsidian cycle, 6,750 g (`EVT-000425`) · EQUIPPED, displacing the Horizon Gale Coif [D-Rank] (Agility +2, 5% reduction, purchased at Horizon Outfitters, $3,000, `EVT-000094`), now banked unequipped."
      torso: "**Watcher Torso [B-Rank]** — Perception +5 · 12% reduction · **Carapaced Imprint +1 Vitality** · **Impact Echo: once per scene, +1 step resisting stagger or knockdown**. The B-Rank harvest trial's boss drop (`EVT-000370`), delivered by Wade Bishop (`EVT-000384`), equipped at `EVT-000385`."
      hands: "**Gale Hunter's Gauntlets [C-Rank]** — Boss drop, Predator body family/Edge signature · Agility +3 base +1 further Agility (Predator resonance) = **Agility +4 total** · physical reduction 8% · **Edge Echo: once per scene, +1 modifier step on one close attack against an already-injured target** (unused) · finish: bound/wrapped, soot-black metal, ossified-white accents, violet mana lines — the first Crypt instant dungeon's boss drop (`EVT-000429`). **EQUIPPED**, displacing the Horizon Gale Gauntlets [C-Rank] (Agility +3, 8% reduction, purchased at Horizon Outfitters, $12,500, `EVT-000094`), now banked unequipped."
      legs: "**Adaptive Titan Legs [B-Rank]** — Premium model · Strength +7 · physical reduction 15% · bought from the Daily Premium Prismatic cycle, 6,750 g (`EVT-000548`) · EQUIPPED, displacing the Warded Greaves [C-Rank] (Vitality +3, 8% reduction, bought at Horizon Outfitters, $11,800 cash, `EVT-000480`), now banked unequipped, unsold."
      feet: "**Arcanist Feet [C-Rank]** — Good · Intelligence +3 · physical reduction 8% · bought from the standard System shop catalogue, 1,200 g (`EVT-000481`) · EQUIPPED, displacing the prior Arcanist Feet [D-Rank] (Intelligence +2, 5% reduction, bought from the System shop, 270 g, `EVT-000228`), now banked unequipped."
      accessory_1: "**Warded Vambrace [A-Rank]** — Good · **no Stat line** · **once per exchange, a landed hit against Alexander takes −30% damage (multiplicative with worn reduction)** · bought from Walt Adamik 2026-08-11 for $2,200 of a $5,200 pair (`EVT-000280`) and banked unequipped since, both accessory slots having been full. **EQUIPPED at `EVT-000385`**, displacing the Ascendant Hunter's Band [E-Rank] (Strength +4), which is banked unequipped. The highest-Rank item Alexander owns after the dagger."
      accessory_2: "**Warded Vambrace [A-Rank] (second)** — Good · **no Stat line** · **once per exchange, a landed hit against Alexander takes −30% damage (multiplicative with worn reduction)** · the unsold half of the $5,200 pair from `EVT-000280`, bought back from Walt Adamik for **$3,000** on 2026-08-20 (`EVT-000565`) after nine days on his shelf. **EQUIPPED at `EVT-000565`**, displacing the Ascendant Hunter's Band [D-Rank] (Strength +5, Daily Premium 720 g, `EVT-000088`), now banked unequipped. **Two vambraces run as two independent once-per-exchange procs** — duplicate accessory type, both apply per Section 11.5, and each composes multiplicatively over the other and over worn reduction. **Both fired as a pair for the first time at `EVT-000567`.** Bought because the defence axis is what pins Combat Tier; the cost is 5 Strength and about 9 damage a strike."
      total_physical_reduction: "**≈46% combined across five worn pieces** (Adaptive Titan Coif 15%, Watcher Torso 12%, gauntlets 8%, **Adaptive Titan Legs 15%**, Arcanist Feet 8%, multiplicative per Section 11.5) as of `EVT-000548`'s leg swap — up from ≈42%. The Warded Vambrace's −30% is **not** part of this figure: it is a once-per-exchange effect applied to a landed hit, not standing worn reduction, and composes multiplicatively on top of it when it fires. Prior line, superseded: ≈42% combined across five worn pieces (coif 15%, Watcher Torso 12%, gauntlets 8%, Warded Greaves 8%, Arcanist Feet 8%) as of `EVT-000481`'s feet swap."
    skills_known:
      - "Stone Skin [C-Rank] ★☆☆☆☆ Novice · Mana 3 · 45% physical damage reduction while sustained; ends when Mana lapses or dropped. **Impact spread (C):** answers an environmental or hazard source, not only a creature's blow. **Successful uses 11 · qualifying scenes total 8 · mastery progress 0/3 toward Practiced · rank ascensions 1.** Rune-ascended [D]→[C] at `EVT-000475`; not used since."
      - "Rupture [S-Rank] ★★★☆☆ Adept · Mana 11 · **reach 5 m** · a heavy strike at **×2.90 of its skill-rank baseline** (S-Rank baseline 1000, Section 7.2), resolving as `(1000 + effInt + focus power) × 2.90 × result` under §6.2 — **DMG 4,324 standard before reduction** at effective Intelligence 491 (`(1000+491)×2.90=4,323.9`). **`magnitude_floor` 290 binds** — S-Rank Adept authors ×2.30, and Profile 1.83 clause 1 ratcheted the floor ×2.60 → **×2.90** on the two levels this skill climbed under a swallowing floor (`EVT-000601`). Categories: **Compound** (D); **Structural** (C); **Ward-breaking** (B); **Propagating** (A) — carries to one further target in contact with or behind the first; **`Unmaking`** (S) — **the strike ignores worn physical reduction entirely.** **Successful uses 122 · qualifying scenes total 39 · mastery progress 0/3 toward Practiced · mastery level ADEPT (3) · rank ascensions 5 · magnitude_floor 260.** **At its §7.5 ceiling (System Rank A + 1); finished until System Rank S.**"
      - "Flash Step [A-Rank] ★★★★☆ Expert · Mana 7 · **reach: any point within 100 m, sight or no sight** — the metre band this line promised from the day it was written and withheld until A-Rank. Grants +1 modifier step to the follow-up action, and the window covers the **whole scene** — §7.2 saturates duration at one Rank above native and this skill has stood three Ranks above native since C-Rank, which this line had never rendered (corrected at `EVT-000601`, clause 2 — a rendering correction, not a grant). **`Arrival` 4/5** (§7.4) — Master's rung remains. Category **`Return` (A):** once, inside the follow-up window, step back to the point left from without paying again. **Breakthrough B-Rank Master -> A-Rank Adept at `EVT-000571`**, taken on a Master rung four minutes old, Mana 6 -> 7 the earned road's price. **At its System Rank B+1 ceiling; no further offer.** Retained **Through the barrier** (C): crosses a closed constructed barrier rather than only open distance, given a held read of the far side; never a Gate boundary, §9.6 seal or §17 wall. **Successful uses 64 · qualifying scenes total 27 · mastery progress 0/3 toward Master · mastery level EXPERT (4) · rank ascensions 3.** Adept → Expert at `EVT-000589`. **At its §7.5 ceiling.** Full history in `160_CAMPAIGN_CHRONICLE.md`."
      - "Keen Sense [S-Rank] ★★★☆☆ Adept · Mana 1 · +1 modifier step on detection **for the scene**, shared with **himself plus 8 allies** (**9 subjects** — S-Rank Adept computes `3 + 5 = 8` and **`scope_floor` 9 binds**, having ratcheted on the ascension). **`Resolution` 5/5** (§7.4) — maxed on adoption; of nine repaid levels four overflowed to Mana, which floored at 1 after one, so **three returned nothing**. **Finished**: at the §7.5 ceiling, dividend complete, Mana at minimum, no growth on any axis until System Rank S. Categories: **presence** (E); **intent and method** (D); **structure through barrier** (C) — layout and extent of an unseen space beyond line of sight; **through concealment** (B) — pierces an active concealment or detection-blocking ward; **Provenance** (A) — what passed through a place, how long ago, and which way; **`Standing watch`** (S) — **the read no longer ends with the scene**: it persists on a place or a subject already detected, and **a material change there reaches him after he has left it**. It never crosses a Gate boundary or a §9.6 seal. **Uses 85 · scenes 57 · mastery progress 0/3 toward Practiced · mastery level ADEPT (3) · ascensions 5 · scope_floor 9.** Breakthrough [A] Master → [S] Adept at `EVT-000599`, the offer having been **withheld at `EVT-000590` as unauthored and reopened by Profile 1.81's S column**. **At its §7.5 ceiling; finished until System Rank S.**"
      - "Broken Rhythm [C-Rank] ★☆☆☆☆ Novice · Passive · reading a live opponent's weight-shift and tell-cadence to react before the movement completes; +1 modifier step on evasion/reaction against a perceived attacker's telegraphed action. **Scope is mastery's axis — 1→5 beneficiaries, plus one per Rank above native; at C-Rank Novice, 3.** **`Tempo` 2/5** (§7.4) — reaction economy, which nothing else in this profile governs. `scope_floor` 3. Categories: **`Cold read`** (D) — **the step applies from the FIRST exchange against an attacker whose cadence he has not observed**, rather than requiring a read first; **`Shared cadence`** (C) — beneficiaries need not perceive him, the read carrying to anyone already on a Field Command relay. **Successful uses 93 · qualifying scenes total 9 · mastery progress 1/3 toward Practiced · mastery level NOVICE (1) · rank ascensions 1 · scope_floor 0.** Rune-ascended [E]→[C] at `EVT-000588`, two Ranks. **`F-014`'s complaint is retired** — it once went Novice to Master for nothing and now has categories and a dividend."
      - "Dagger Mastery [A-Rank] ★★★☆☆ Adept · Passive · adds **+1.20** to a Quickknife chassis multiplier (×0.75 → **×1.95**), on both equipped Quickknives — `+0.25 per Rank above native, +0.05 per mastery level` (§7.2, §7.4). Categories: **Any blade** (D); **Thrown** (C) — covers a blade launched by Dimensional Projection; **`Improvised`** (B) — **any edged or pointed object he wields counts as a blade**, a rung owed since the skill reached B holding only D and C; **`Follow-through`** (A) — **a blade strike that KILLS carries its excess damage into one further target within reach**, answering a week of overkill waste. **Uses 240 · scenes 33 · mastery progress 1/3 toward Expert · mastery level ADEPT (3) · ascensions 4.** History in `160_CAMPAIGN_CHRONICLE.md`."
      - "Twin Fang [B-Rank] ★★★☆☆ Adept · Mana 5 · while two Quickknives are equipped, follow one ordinary Quickknife strike with a separately rolled strike from the other in the same action. Each strike uses only its own weapon power; the enabled second strike has a **×2.35** Twin Fang mastery multiplier at B-Rank Adept — `1.00 + 0.35 × 3 + 0.15 × 2` — for **2,157**, package **3,087** with the main hand. **The authored rung gained outright and no floor was needed.** Category **`Both fangs`** (B): **the enabled second strike may be directed at a DIFFERENT TARGET than the first**, which retires the credit problem — it no longer has to hit a body that survived the first. Occupies the action's offensive slot; no combining with Rupture. **A successful use is recorded only when the second strike lands and materially contributes**; a target dying to the first strike spends the Mana and credits nothing (`EVT-000512`). **Successful uses 123 · qualifying scenes total 26 · mastery progress 0/3 toward Practiced · mastery level ADEPT (3) · rank ascensions 3 · magnitude_floor ×1.60.** Expert → Master at `EVT-000589`; breakthrough [C] Master → [B] Adept at `EVT-000590`."
      - "Exploit Pattern [S-Rank] ★★★☆☆ Adept · Passive · a successful deliberate tactical read establishes an active Pattern on an opponent, behavior, weakness, or structure; +1 modifier step on every personal action genuinely exploiting it until the scene ends or it becomes invalid. Never restricts ordinary analysis; no stacking from one finding. **9 concurrent Patterns** — S-Rank Adept computes 8 and **`scope_floor` 9 binds**. Categories: **Persistence** (D); **Group coordination** (C); **Composite read** (B) — two Patterns exploited together as one; **Anticipatory** (A) — a Pattern reaches what the subject has **not yet done**; **`Standing Pattern`** (S) — **a Pattern established on a PERSON or an ORGANISATION persists indefinitely while its conditions hold**, so the skill reaches negotiation, planning and institutional behaviour rather than one exchange. **Uses 73 · scenes 40 · mastery progress 0/3 toward Practiced · mastery level ADEPT (3) · ascensions 5 · scope_floor 9.** Breakthrough [A] Master → [S] Adept at `EVT-000599`; withheld at `EVT-000590`, reopened by Profile 1.81. **At its §7.5 ceiling; finished until System Rank S.**"
      - "Silent Step [D-Rank] ★★★★☆ Expert · Mana 4 · +1 modifier step on stealth and unseen-approach actions for the scene. **Scope is mastery's axis — 1→5 beneficiaries, scene-long at every level** (§7.4), plus one per Rank above native; at Expert, **5**. **`Composure` 5/5** (§7.4) — maxed on adoption by five repaid levels. `scope_floor` 5. Category **`Concealment through action` (D):** concealment survives **one** attack or manipulation — strike, cut, lift, open or take once without the effect ending; it ends on the second. It needs terrain that can hide someone; a cast with nowhere to break to is refused before it costs anything. **Successful uses 34 · qualifying scenes total 17 · mastery progress 2/3 toward Master · mastery level EXPERT (4) · rank ascensions 1.** History in `160_CAMPAIGN_CHRONICLE.md`."
      - "Mana Bolt [B-Rank] ★★★☆☆ Adept · Mana 6 · **no distance limit; a target DETECTED but not seen is a legal target** · a ranged bolt at **×1.75 of the B-Rank skill-rank baseline** (**150**, §7.2), resolving as `(150 + effInt + focus power) × 1.75 × result` under §6.2 — **DMG 1,122 standard before reduction** at effective Intelligence 491 (`(150+491)×1.75=1,121.75`). **`magnitude_floor` 175 binds** — ratcheted ×1.60 → **×1.75** at `EVT-000601` on the one level climbed under a swallowing floor — Adept authors ×1.30 and §7.3's ratchet holds the higher figure. Categories: **Arcing** (D) — the bolt bends around intervening cover; **Unsighted** (B) — a resolved Keen Sense or held read substitutes for eyesight. Never crosses a Gate boundary, a §9.6 seal, or a §17 instance wall. **Successful uses 72 · qualifying scenes total 17 · mastery progress 2/3 toward Expert · mastery level ADEPT (3) · rank ascensions 2 · magnitude_floor 160.** "
      - "Field Command [C-Rank] ★☆☆☆☆ Novice · Passive · relay one active Exploit Pattern by a brief actionable call to allies who can perceive and understand Alexander. Each recipient treats the Pattern as personally understood, needs no separate tactical read, and gains its +1 modifier step on genuinely exploiting actions; Alexander may update the call before a recipient's roll, never afterward. Ordinary communication conveys information but not the Pattern's mechanical benefit. **Scope is mastery's axis — 1→5 simultaneous recipients** (Section 7.4), plus one per Rank above native; at C-Rank Novice, **3** — exactly what Adept already gave, so **the ascension bought the categories and nothing else**. **`Conduction` 2/5** (§7.4) — the profile's one sharing skill, **inert while he works alone**. `scope_floor` 3. Categories: **`Relay at range` (D)** — recipients need not perceive him; the call carries to anyone he has spoken with in the scene, by radio, phone or prearranged signal. **`Composite relay` (C)** — relay **two** Patterns at once. **Uses 19 · scenes 8 · progress 0/3 · mastery level NOVICE (1) · ascensions 1.** **Rune-ascended [E] Adept → [C] Novice at `EVT-000585`**, two Ranks. Ceiling A."
      - "Resonance Extraction [C-Rank] ★★★☆☆ Adept · Passive · a successful read establishes a Resonance Pattern for one vein, +1 modifier step on extraction until exhausted/shifted. **Five further miners may work his calls** — C-Rank Adept computes 4 on §7.4's authored *0 → 4 additional miners* ladder (Adept 2, plus 2 Ranks above native) and **`scope_floor` 5 binds**, so the rung bought the category rather than the count. **`Yield` 4/5** (§7.4) — Master's rung remains. Category **`Buried seam`** (C): **a Pattern can be established on a deposit that is NOT EXPOSED** — behind rock, under water, or inside a structure — where it previously needed a visible face. **Uses 35 · scenes 21 · progress 1/3 toward Expert · mastery level ADEPT (3) · ascensions 2.** **The ascension count was stale at 0 and is corrected here**: `EVT-000509` recorded a Rank ascension this line never carried, so the D→C breakthrough at `EVT-000588` is its **second**, not its first. Expert → Master then **breakthrough [D] → [C] Adept, both at `EVT-000588`**."
      - "Flux Sight [S-Rank] · Stat Passive · reads Rank/Health/Mana of monsters and hunters; confirms Gates one Rank above System Rank; new at B, appraises an unidentified item's Rank/stats on sight (Section 4.4). **S-Rank grant:** reads what an unidentified thing is FOR, not merely its Rank and stats; and with THE UNMEASURED equipped it returns a subject's CEILING alongside its current state (`EVT-000591`). **Uses 89 · Perception 418 · S-Rank** — it stands at S-Rank, which *is* the Section 4.4 ceiling (System Rank A + 1); the ceiling rose with System Rank A at `EVT-000589` and both S conditions, Perception 80 and System Rank A, are met. Tail corrected at `EVT-000596` from a reading two Ranks stale. Flux Sight is authored to S-Rank so the Section 4.4 authoring clamp never binds it, but the **System Rank + 1 ceiling does**: at System Rank C its ceiling is B-Rank, where it already sits. Perception buys this skill nothing until System Rank reaches B — the A-Rank stat threshold at 66 would be held by the ceiling even if reached."
      - "Overpower [S-Rank] · Stat Passive · sustained restraint; break ranked structures; **redirection** — a foe he holds becomes a weapon, thrown or driven into another target with the strike transferring to it, and a creature can be shifted off its own footing mid-exchange, denying it a chosen line (Section 4.4). **S-Rank grant:** restraint and breaking lose their Rank cap entirely, and a ranked structure he breaks fails STRUCTURALLY rather than locally. **Uses 5 · Strength 441 · S-Rank** **Rose B → A at `EVT-000515`**: restrain up to three Ranks above, and **break ranked inanimate structures one Rank above the skill**. No Stat moved to earn it."
      - "Pre-empt [S-Rank] · Stat Passive · shared warning — allies act normally in a surprise exchange alongside him; **first blade** — in any exchange he opens he resolves before any opponent up to B-Rank acts, whatever order the fiction implies (Section 4.4). **S-Rank grant:** *first blade* resolves him before ANY opponent at any Rank. **Uses 27 · Agility 417 · S-Rank** **Rose B → A at `EVT-000515`; first blade now runs up to A-Rank.** Held off the surprise penalty from his own botched entry (`EVT-000339`)."
      - "Conduit [S-Rank] · Stat Passive · Mana recovery **+25 percentage points** at both Section 5.2 rates — **35%/hr active, 50%/hr resting** against the 10/25 baseline (A-Rank rung, `EVT-000515`). **S-Rank grant:** recovery is CONTINUOUS, accruing during a scene rather than settling from elapsed time — the A-Rank line said in terms that it cannot reach inside a fight. **Uses 0 · Intelligence 488 · S-Rank** **Rose B → A at `EVT-000515`.** Held rung rose A→S at `EVT-000487`: base Intelligence 84→80 reaches the S threshold exactly. Rank actual unchanged at B under the ceiling. Rank derives from the same Intelligence 84 Multitask held, so no Stat moved in the exchange. Composition order is fixed (Section 5.2): base, Conduit, environmental halving, then any title multiplier; a Frozen Gallery halves 30/45 rather than 10/25. It cannot reach inside a fight — recovery settles from elapsed time, an exchange is not an hour, and Section 5.3's exhaustion is untouched."
      - "Bulwark [E-Rank] ★★★☆☆ Adept · Mana 8 · 60% physical damage reduction for one exchange; reductions multiply, never add, so no stack reaches immunity. **Successful uses 6 · qualifying scenes total 6 · mastery progress 0/3 toward Expert.** **Mastery advanced Practiced → Adept in the 2026-08-09 Dungeon 1 boss fight (`EVT-000232`)**, its third qualifying scene at Practiced, breaking the boss's grapple."
      - "Shrug Off [S-Rank] · Stat Passive · ignores minor-wound penalty; **threshold absorption** — once/scene, a hit crossing the injury threshold inflicts damage only; **total suppression** — **every** wound's modifier-step penalty is suppressed until scene end rather than one, and environmental hazards up to B-Rank cause no onset at all rather than halved onset (Section 4.4). **S-Rank grant:** threshold immunity covers creatures more than one Rank below, i.e. up to A-Rank, and environmental hazards up to A-Rank cause no onset. **Uses 5 · Vitality 499 · S-Rank** **Rose B → A at `EVT-000515`."
      - "Mend [E-Rank] ★★★★☆ Expert · Mana 5 · restores Health at **×1.45 of the E-Rank skill-rank baseline** (14.5 before focus, Section 7.4), controls bleeding but does not clear a wound's severity. **Successful uses 28 · qualifying scenes total 11 · mastery progress 2/3 toward Master.** **+7 uses/+1 scene at `EVT-000472`** — seven field-touches closing Owen 145→275/275 after the first instant-dungeon clear, one continuous downtime scene crediting once. Mana cost 5, Section 7.4's −10%-per-level rounding leaves it unchanged from Adept."
      - "Dimensional Projection [C-Rank] ★★☆☆☆ Practiced · Mana 5 · **4 projectiles · range 13 m** · withdraw owned portable objects into unoccupied points in range and launch them at perceived targets as a **named multi-strike** (§6.2) — **one ranged physical strike per projectile**, **Agility to hit**, ordinary Bearer physical-damage formula on *that object's* power and chassis. Projectiles **split freely**; a failed placement does not spend the others. Never inside a creature, object, barrier or occupied space. Holds the action's offensive slot — no combining with Rupture or Twin Fang. Mana paid **once for the action**. Mastery ladder **1/2/2/3/3** projectiles, **5/7/10/15/20 m**, Mana **6/5/5/4/4**, **+1 and +3 m per Rank above native**. **Successful uses 20 · qualifying scenes total 11 · mastery progress 2/3 toward Adept · mastery level PRACTICED (2) · rank ascensions 1 · magnitude_floor 0.** **Novice → PRACTICED at `EVT-000586`.** **Rune-ascended [E] Adept → [C] Novice at `EVT-000570`, two Ranks**: projectiles 2 → 3, range 10 → 11 m, Mana 5 → 6, mastery reset. Categories: **`Recall and launch` (D)** — launch and recovery no longer contest the exchange's one inventory change, **deleting `EVT-000438`'s limit**; **`Held read` (C)** — a point perceived but not currently seen qualifies where a read is held, never through a sealed barrier, Gate boundary, §9.6 seal or §17 wall. **Its stored line rendered Novice values against a Practiced counter through two spans, the `F-037` shape**; rewritten from the counter at `EVT-000568`."
      - "Sprint [B-Rank] ★★☆☆☆ Practiced · Mana 4 · +1 modifier step on movement, pursuit, and distance-closing actions, **for the whole scene** — §7.2 saturates duration at one Rank above native. **`Control` 1/5** (§7.4) — its duration axis saturated at C-Rank, so clause 2 sends every level here. Categories: **Broken ground** (D) — the step holds across footing that would otherwise demand its own check; **Vertical** (C) — vertical and overhanging surfaces count as ground while the effect holds; **Terrain denied** (B) — hostile or hazardous footing authored by an archetype twist or environment imposes **no movement penalty and forces no check at all**. **Successful uses 19 · qualifying scenes total 17 · mastery progress 0/3 toward Adept · mastery level PRACTICED (2) · rank ascensions 3.** Novice → Practiced at `EVT-000589`. Rune-ascended [C]→[B] at `EVT-000571`; not used since."
      - "Rift-step [Riftwalker] · Class ability · Mana 6 · **once per exchange** · a true teleport to any point in **line of sight**, and at System Rank B also **through an obstruction he has perceived past**. **Grants +1 modifier step to the immediate follow-up action.** Reach is sight, not distance — no metre figure until A-Rank. **A step to a set anchor does not consume this once-per-exchange step** and is priced separately (`system_state.riftwalker`). **Owner ruling (`EVT-000551`): a passenger may be carried below S-Rank while physical contact is maintained through the step, at 10× ordinary Mana cost** until System Rank S normalizes it. **Successful uses 8** — one further anchored step home from a service alley off LaSalle (`EVT-000581`), taken out of the streetlight and out of a camera's cone because a man carded E-Rank does not fold space on a public corner. Prior: **two anchored steps 2026-08-20** (`EVT-000565`, `EVT-000567`), the first use of the anchor network as transport rather than tactics; each required leaving the instance first, since Section 7.3 forbids crossing a Section 17 instance wall."
      - "Micro-rift deflection [Riftwalker] · Class ability · Mana 8 · **a reaction**, not an action · **60% damage reduction** on one incoming hit at System Rank B, composing **multiplicatively** under Section 7.3, or turns a projectile aside. 70% at A-Rank. **Successful uses 3** — first uses since the grant, all 2026-08-20 (`EVT-000563`, `EVT-000564`, `EVT-000567`)."
    skill_rulings:
      qualifying_scene_distinctness_evt_000571: "**RETROACTIVITY CLOSED at `EVT-000574` (owner ruling): the new test runs FORWARD ONLY.** Checkpoint 0099's credits stand exactly as recorded — `EVT-000563`, `EVT-000564` and `EVT-000567` keep one qualifying scene each, and the roughly two further scenes per skill the new reading would have paid are **not** awarded. Prior: **RULED 2026-08-20 (`EVT-000571`), owner ruling on Profile Section 7.4's advancement test. Qualifying scenes count per SCENE, not per approach.** A separate scene with real stakes qualifies on its face; *the three scenes must be materially distinct* is **not** read to require a different method, tool, or application. Raised when the Runtime declined a scene for Resonance Extraction on the ground that a fourth deposit stripped the same way in a different room is the section's *trivial repetition* clause. **Section 7.4's other limits are untouched and still bind**: one continuous danger, bounded work task or structured practice session contributes at most once regardless of repetitions within it (Section 7.1 test 5); a failed use credits nothing; a trivial or consequence-free test adds a use and no scene. **Retroactivity expressly NOT taken and the question is open** — Checkpoint 0099 credited one scene each across `EVT-000563`, `EVT-000564` and `EVT-000567` under the prior reading, which under this ruling were three scenes with roughly two further scenes per skill earned and unpaid; that is committed canon and the player deferred rather than answered. The ruling runs forward from `EVT-000571`. **OWED TO THE WORLD**: this amends the advancement test campaign-wide and belongs in `worlds/gatefall/206_WORLD_RULE_PROFILE.md`, frozen at 1.80 and not edited here — the third pending profile amendment alongside passenger rift-step (Section 18.8, `EVT-000551`) and elixir stat timing (Section 12.5, `EVT-000548`)."
      support_role_kill_xp_contribution_evt_000264: "**STANDING RULING (2026-08-11, player instruction, `EVT-000264`).** Active patrol-and-intel support from Alexander counts as live contribution toward his own Kill XP under Rules Section 3.3's 'live-die actions materially contributed' clause, even without a separate rolled setup action per engagement — so long as he is genuinely engaged (watching, ready to call a warning) rather than idle. Supersedes the default reading that only a separately-rolled setup or control action counts. Governs all future support-only encounters the same way, not just this one."
      keen_sense_evt_000212: "Promotion-barrier correction at EVT-000214: the legendary D-Rank Keen Sense result validly established both items' operating intent and method, but not either item's Rank, origin, or full appraisal. Those details remain unconfirmed; reliable item Rank/full appraisal requires Flux Sight at B-Rank (Profile Sections 4.4 and 7.3). This ruling supersedes the earlier overbroad phrase in the historical skills_known trace without changing the successful use, qualifying-scene credit, purchase, or observed functions."
      dagger_mastery_evt_000210: "Profile 1.31 (`EVT-000210`) resolved the Checkpoint 0041 authoring gap; the +0.05-per-level ladder is authored end to end and needs nothing further."
      ascetic_claim_timing_evt_000357: "**RULED AT CLAIM (2026-08-11, `EVT-000522`).** *Grants* fires when the entry is **claimed**, not when it is issued — so the equipped state at the moment of collection is what pays. **This awards no retroactive point**: `EVT-000357`'s declared order was claim-then-equip, so Ascetic was still unequipped at the instant of claim and the issued +3 stands. What it changes is everything after: an entry issued at 06:00 with Ascetic out is no longer locked at +3, and the title slot becomes a decision made at collection rather than a 06:00 deadline. Settled at the **issued +3** because the declared order was claim-then-equip. Full prior reasoning: `160_CAMPAIGN_CHRONICLE.md`. **STRUCK at `EVT-000598` (owner ruling, 2026-08-18).** It read *from the twenty-second daily onward the +4 applies unambiguously and this ruling does not reach it* — written when the equip history looked simpler than it was, and **contradicted by the equip record**: Ascetic sat in the `EVT-000357` loadout, was swapped out when the loadout became Cartographer + Untouchable (a change this sheet did not carry until the `EVT-000444` correction), and was only restored at `EVT-000535`. There was no continuous run from the twenty-second. **What governs is the rule this ruling itself states**: +4 whenever Ascetic was equipped at the moment of claim, read from the equip record, and +3 otherwise. **The daily line closes at 88** — twenty-eight dailies at +3 plus **exactly four** that paid +4 — and with level-ups at 195 and title grade payments at 40 the career ledger reconciles to **323**, which is what `progression.ability_points_earned` holds. No stored value moves."
    tracked_counters:
      # Profile 1.83 (EVT-000601): the mastery dividend. `dividend_level` records how many
      # rungs of a skill's authored five-rung dividend it holds. MONOTONIC -- Section 7.2's
      # retention rule states that nothing a skill has earned is ever taken back, so an
      # ascension resets `mastery_level` and does not touch this. It is therefore given no
      # floor, unlike scope and magnitude, which can fall and need one.
      # Values below are the repayment of every level ever climbed on a dead axis, capped at
      # five rungs, overflow to Mana. Reconstructed from the checkpoint history; see
      # migrations/1.82_to_1.83.md.
      - { path: skills.keen_sense.dividend_level, baseline_value: 5, baseline_as_of: EVT-000601, current_value: 5 }
      - { path: skills.silent_step.dividend_level, baseline_value: 5, baseline_as_of: EVT-000601, current_value: 5 }
      - { path: skills.flash_step.dividend_level, baseline_value: 4, baseline_as_of: EVT-000601, current_value: 4 }
      - { path: skills.resonance_extraction.dividend_level, baseline_value: 4, baseline_as_of: EVT-000601, current_value: 4 }
      - { path: skills.broken_rhythm.dividend_level, baseline_value: 2, baseline_as_of: EVT-000601, current_value: 2 }
      - { path: skills.field_command.dividend_level, baseline_value: 2, baseline_as_of: EVT-000601, current_value: 2 }
      - { path: skills.sprint.dividend_level, baseline_value: 1, baseline_as_of: EVT-000601, current_value: 1 }
      # Profile 1.82 (EVT-000597): ability points come under Decision 079. Six paths,
      # baselines derived from present state and reconstructing nothing. `unspent_points`
      # and the five base Stats are renderings from here forward:
      #   base_stat = creation_array[stat] + automatic(level) + allocated[stat]
      # with automatic(40) = 9x2 + 10x4 + 10x9 + 10x23 = 378 and the creation array
      # 11/12/8/11/8 held in `latent_stat_array`. Automatic growth is uniform, so all five
      # residuals must equal 378; EVT-000594's undeclared +10 Intelligence would have read
      # 368 against four Stats reading 378.
      # Earned is taken from the pool identity (sum allocated + unspent), not re-totalled
      # from level-ups, dailies and title payments -- the daily line lands within one point
      # of closing on the unresolved Ascetic claim-timing question, and the identity is
      # exact regardless. See migrations/1.81_to_1.82.md step 3.
      - { path: progression.ability_points_earned, baseline_value: 323, baseline_as_of: EVT-000597, current_value: 323 }
      - { path: stats.strength_allocated, baseline_value: 52, baseline_as_of: EVT-000597, current_value: 52 }
      - { path: stats.agility_allocated, baseline_value: 27, baseline_as_of: EVT-000597, current_value: 27 }
      - { path: stats.vitality_allocated, baseline_value: 113, baseline_as_of: EVT-000597, current_value: 113 }
      - { path: stats.perception_allocated, baseline_value: 29, baseline_as_of: EVT-000597, current_value: 29 }
      - { path: stats.intelligence_allocated, baseline_value: 102, baseline_as_of: EVT-000597, current_value: 102 }
      - { path: skills.keen_sense.scope_floor, baseline_value: 0, baseline_as_of: EVT-000210, current_value: 9 }
      - { path: skills.exploit_pattern.scope_floor, baseline_value: 0, baseline_as_of: EVT-000210, current_value: 9 }
      - { path: skills.field_command.scope_floor, baseline_value: 0, baseline_as_of: EVT-000210, current_value: 3 }
      - { path: skills.resonance_extraction.scope_floor, baseline_value: 0, baseline_as_of: EVT-000210, current_value: 5 }
      - { path: skills.silent_step.scope_floor, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 5 }
      - { path: skills.stone_skin.successful_uses, baseline_value: 3, baseline_as_of: EVT-000130, current_value: 11 }
      - { path: skills.stone_skin.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 8 }
      - { path: skills.stone_skin.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.rupture.successful_uses, baseline_value: 16, baseline_as_of: EVT-000130, current_value: 122 }
      - { path: skills.rupture.qualifying_scenes_total, baseline_value: 8, baseline_as_of: EVT-000130, current_value: 39 }
      - { path: skills.rupture.mastery_progress, baseline_value: 2, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.flash_step.successful_uses, baseline_value: 6, baseline_as_of: EVT-000130, current_value: 64 }
      - { path: skills.flash_step.qualifying_scenes_total, baseline_value: 4, baseline_as_of: EVT-000130, current_value: 27 }
      - { path: skills.flash_step.mastery_progress, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.keen_sense.successful_uses, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 85 }
      - { path: skills.keen_sense.qualifying_scenes_total, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 57 }
      - { path: skills.keen_sense.mastery_progress, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.broken_rhythm.successful_uses, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 93 }
      - { path: skills.broken_rhythm.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 9 }
      - { path: skills.broken_rhythm.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 1 }
      # Profile 1.52 (EVT-000391): Broken Rhythm and Mana Bolt were acquired after the
      # EVT-000158 adoption batch and never received the mastery_level and rank_ascensions
      # entries Section 7.5 has required as authoritative stored state ever since; Silent
      # Step, learned in the same window, has both. Baselines equal min(5, 1 + floor(scenes
      # / 3)) — the level each skill already holds — so adoption changes no value.
      - { path: skills.broken_rhythm.mastery_level, baseline_value: 1, baseline_as_of: EVT-000308, current_value: 1 }
      - { path: skills.broken_rhythm.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 1 }
      # Profile 1.52 authored Broken Rhythm's mastery track as the scope axis, so it
      # carries a scope_floor under Section 7.2's ratchet like every other scope skill.
      # 0 — it has never ascended, and the floor binds only after a first ascension.
      - { path: skills.broken_rhythm.scope_floor, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 3 }
      - { path: skills.dagger_mastery.successful_uses, baseline_value: 2, baseline_as_of: EVT-000130, current_value: 240 }
      - { path: skills.dagger_mastery.qualifying_scenes_total, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 33 }
      - { path: skills.dagger_mastery.mastery_progress, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 1 }
      - { path: skills.twin_fang.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 123 }
      - { path: skills.twin_fang.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 26 }
      - { path: skills.twin_fang.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.exploit_pattern.successful_uses, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 73 }
      - { path: skills.exploit_pattern.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 40 }
      - { path: skills.exploit_pattern.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 0 }
      - { path: skills.mana_bolt.successful_uses, baseline_value: 0, baseline_as_of: EVT-000303, current_value: 72 }
      - { path: skills.mana_bolt.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000303, current_value: 17 }
      - { path: skills.mana_bolt.mastery_progress, baseline_value: 1, baseline_as_of: EVT-000304, current_value: 2 }
      - { path: skills.mana_bolt.mastery_level, baseline_value: 1, baseline_as_of: EVT-000303, current_value: 3 }
      - { path: skills.mana_bolt.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000303, current_value: 2 }
      - { path: skills.mana_bolt.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000303, current_value: 175 }
      - { path: skills.field_command.successful_uses, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 19 }
      - { path: skills.field_command.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 8 }
      - { path: skills.field_command.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 0 }
      - { path: skills.resonance_extraction.successful_uses, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 35 }
      - { path: skills.resonance_extraction.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 21 }
      - { path: skills.resonance_extraction.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 1 }
      - { path: skills.flux_sight.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 89 }
      - { path: skills.overpower.successful_uses, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 5 }
      - { path: skills.pre_empt.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 27 }
      - { path: skills.conduit.successful_uses, baseline_value: 0, baseline_as_of: EVT-000365, current_value: 0 }
      - { path: skills.bulwark.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 6 }
      - { path: skills.bulwark.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 6 }
      - { path: skills.bulwark.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.shrug_off.successful_uses, baseline_value: 0, baseline_as_of: EVT-000141, current_value: 5 }
      - { path: skills.mend.successful_uses, baseline_value: 0, baseline_as_of: EVT-000148, current_value: 28 }
      - { path: skills.mend.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000148, current_value: 11 }
      - { path: skills.mend.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000148, current_value: 2 }
      - { path: skills.sprint.successful_uses, baseline_value: 0, baseline_as_of: EVT-000149, current_value: 19 }
      - { path: skills.sprint.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000149, current_value: 17 }
      - { path: skills.sprint.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000149, current_value: 0 }
      # Rune-ascended D-Rank Adept -> C-Rank Novice at EVT-000547; mastery_level resets,
      # lifetime successful_uses/qualifying_scenes_total carry forward unchanged.
      - { path: skills.silent_step.successful_uses, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 34 }
      - { path: skills.silent_step.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 17 }
      - { path: skills.silent_step.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 2 }
      - { path: skills.silent_step.mastery_level, baseline_value: 1, baseline_as_of: EVT-000235, current_value: 4 }
      - { path: skills.silent_step.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 1 }
      # Dimensional Projection, ratified at EVT-000436. Counters initialize at zero
      # (Section 7.1: pre-ratification evidence never backfills). Its mastery axis is
      # range, a magnitude, so it carries magnitude_floor and no scope_floor.
      - { path: skills.dimensional_projection.successful_uses, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 20 }
      - { path: skills.dimensional_projection.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 11 }
      - { path: skills.dimensional_projection.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 2 }
      - { path: skills.dimensional_projection.mastery_level, baseline_value: 1, baseline_as_of: EVT-000436, current_value: 2 }
      - { path: skills.dimensional_projection.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 1 }
      - { path: skills.dimensional_projection.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 0 }
      # Profile 1.26 (EVT-000158): mastery_level becomes authoritative stored state rather than a value
      # derived from qualifying_scenes_total, because Section 7.5 ascension resets mastery while the
      # lifetime scene count never resets. Every baseline below equals min(5, 1 + floor(scenes / 3)) —
      # the skill's existing level — so adoption changes no value. Stat-milestone skills have no
      # mastery track (Section 7.4) and carry neither counter.
      - { path: skills.stone_skin.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 1 }
      - { path: skills.rupture.mastery_level, baseline_value: 5, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.flash_step.mastery_level, baseline_value: 4, baseline_as_of: EVT-000158, current_value: 4 }
      - { path: skills.keen_sense.mastery_level, baseline_value: 3, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.dagger_mastery.mastery_level, baseline_value: 3, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.twin_fang.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.exploit_pattern.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.field_command.mastery_level, baseline_value: 1, baseline_as_of: EVT-000158, current_value: 1 }
      - { path: skills.resonance_extraction.mastery_level, baseline_value: 1, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.bulwark.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.mend.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 4 }
      - { path: skills.sprint.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 2 }
      - { path: skills.stone_skin.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 1 }
      - { path: skills.rupture.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 5 }
      - { path: skills.rupture.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 290 }
      - { path: skills.flash_step.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.keen_sense.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 5 }
      - { path: skills.dagger_mastery.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 4 }
      # Profile 1.54 magnitude ratchet, stored in HUNDREDTHS because a tracked counter is an
      # integer (Decision 079). 55 = the +0.55 chassis held at D-Rank Master immediately before
      # the C ascension; the current +0.70 exceeds it, so the floor does not bind.
      - { path: skills.dagger_mastery.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 80 }
      - { path: skills.stone_skin.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 40 }
      - { path: skills.bulwark.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 0 }
      - { path: skills.twin_fang.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 3 }
      # Profile 1.54 (EVT-000393): the Section 7.2 magnitude ratchet. Twin Fang is the
      # case that required it — Rank reached the technique on no axis, so ascension reset
      # the whole multiplier and lost 37.5%. 0: never ascended, and the floor binds only
      # after a first ascension.
      - { path: skills.twin_fang.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 195 }
      - { path: skills.exploit_pattern.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 5 }
      - { path: skills.field_command.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 1 }
      - { path: skills.resonance_extraction.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 2 }
      - { path: skills.bulwark.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 0 }
      - { path: skills.mend.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 0 }
      - { path: skills.sprint.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 3 }
      # Riftwalker class abilities, granted at EVT-000519. Section 18.8 grows them on
      # authored rungs read against System Rank (Section 6.6), not on a mastery track,
      # so they carry successful_uses alone -- the Flux Sight shape, not the Rupture one.
      # EVT-000523 / F-015: the rendered multiplier is `native + 0.15 x
      # (mastery_level - 1)` and nothing recomputed it when mastery advanced --
      # Rupture rendered one rung stale, Mana Bolt two, Twin Fang one, and every
      # gate passed because a stale rendered number has nothing mechanical to
      # disagree with. Storing native makes the relation checkable from state
      # alone. Hundredths, Decision 079. Only the three Rank-baseline magnitude
      # skills: Twin Fang and Dagger Mastery carry their own authored formulas.
      # F-017 item 3: XP went COMPLETELY untracked across an entire instant
      # dungeon -- no kill, elite, boss or clear-milestone award rendered until
      # the player asked where it was, and the running total then resumed from a
      # number matching no derivable sum. XP was a rendered string, so nothing
      # could disagree with it. As a tracked counter it falls under Decision
      # 079's `baseline + sum(counter_deltas) = current_value`, which the
      # repository gate already enforces for every other counter: an unawarded
      # kill now fails a save instead of vanishing. Baselined at the current
      # total rather than back-filled across 530 Events; it reconciles forward.
      - { path: progression.xp_total, baseline_value: 1945, baseline_as_of: EVT-000531, current_value: 1945 }
      - { path: skills.rupture.native_multiplier, baseline_value: 200, baseline_as_of: EVT-000529, current_value: 200 }
      - { path: skills.mend.native_multiplier, baseline_value: 100, baseline_as_of: EVT-000529, current_value: 100 }
      - { path: skills.mana_bolt.native_multiplier, baseline_value: 100, baseline_as_of: EVT-000529, current_value: 100 }
      - { path: skills.rift_step.successful_uses, baseline_value: 0, baseline_as_of: EVT-000519, current_value: 8 }
      - { path: skills.micro_rift_deflection.successful_uses, baseline_value: 0, baseline_as_of: EVT-000519, current_value: 3 }
    progression_audit_baselines:
      - { domain: gatefall.skill_formation, baseline_as_of: EVT-000482 }
    progression_candidates:
      - domain: gatefall.skill_formation
        key: twin_fang
        signature: two-equipped-quickknives.same-target.separate-strikes
        status: ratified
        evidence:
          - EVT-000071#ashfield-elite-counter
          - EVT-000101#frozen-gallery-boss-dual-strike
          - EVT-000120#cicero-alpha-dual-strike
        resolution_event: EVT-000129
        result_ref: skills.twin_fang
      - domain: gatefall.skill_formation
        key: combat_pattern_exploitation
        signature: observe-specific-combat-tell-or-structural-weakness.then-personally-exploit
        status: ratified
        evidence:
          - EVT-000059#red-line-elite-recovery-window
          - EVT-000071#ashfield-elite-pattern-counter
          - EVT-000109#crypt-boss-nonvisual-arc
        resolution_event: EVT-000132
        result_ref: skills.exploit_pattern
      - domain: gatefall.skill_formation
        key: field_command
        signature: identify-actionable-opening.communicate-plan-or-call.ally-executes
        status: ratified
        evidence:
          - EVT-000059#red-line-boss-leap-call
          - EVT-000079#ashfield-boss-plan-and-calls
          - EVT-000120#cicero-alpha-weak-point-calls
        resolution_event: EVT-000132
        result_ref: skills.field_command
      - domain: gatefall.skill_formation
        key: nonvisual_combat_mapping
        signature: replace-sight-with-air-and-sound.map-movement.commit-to-mapped-position
        status: tracking
        evidence:
          - EVT-000109#crypt-air-pressure-and-auditory-map
      - domain: gatefall.skill_formation
        key: resonance_extraction
        signature: read-vein-resonance-before-impact.adapt-strike-to-live-seam
        status: ratified
        evidence:
          - EVT-000063#cicero-scar-resonance-method
          - EVT-000066#frozen-gallery-live-recalibration
          - EVT-000095#halsted-heat-vein-adaptation
        resolution_event: EVT-000132
        result_ref: skills.resonance_extraction
      - domain: gatefall.skill_formation
        key: formation_instruction
        signature: assess-individual-failure-mode.design-role-fit-drill.deliver-tested-correction
        status: rejected
        evidence:
          - EVT-000116#dossier-informed-crew-training
          - EVT-000184#overgrown-temple-owen-solo-clear
          - EVT-000458#first-crew-training-2026-08-17
        resolution_event: EVT-000465
        rejection_reason: "Generic competence, excluded by Section 7.1 test 3, on the same ground as `applied_analytical_reconstruction`. Alexander's character sheet capabilities already establish him as a **certified krav maga instructor with several years of teaching experience** and a former part-time secondary-school teacher — assessing an individual's failure mode, designing a role-fit correction, and delivering it tested is that pre-Gates vocation applied to a crew instead of a classroom, not a new System-granted technique. Distinct from `reactive_pattern_anticipation`/Broken Rhythm, whose evidence was a specific physical footwork response with no established-capability precedent to draw on."
        note: "**3/3 at `EVT-000453`-`EVT-000458`/`EVT-000459` — threshold reached, ruled at `EVT-000465`.** Owner ruling: education/vocation is capability, not a skill — no roll required to use it where the outcome is a matter of demonstrated expertise rather than genuine uncertainty; the die still governs anything actually contested."
      - domain: gatefall.skill_formation
        key: dimensional_weapon_control
        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release
        status: ratified
        evidence:
          - EVT-000069#private-summon-and-grip-drill
          - EVT-000070#ashfield-pocket-swap-feint
          - EVT-000195#penalty-zone-materialized-dagger-openers
        resolution_event: EVT-000436
        result_ref: skills.dimensional_projection
        note: "**Ratified at `EVT-000436`** on a retroactive audit — the third scene landed 2026-08-08 and was never evaluated. The sealed penalty-zone instance opened two kills on a materialized-dagger strike (`EVT-000195`, `EVT-000197`); one continuous danger, one scene under test 5. Unevaluated because both Events are filed `kind: promotion`, not a settlement kind (`F-015`). Ratified automatically as a declared `pre_authored_result_key`. Full reasoning at `EVT-000436`."
      - domain: gatefall.skill_formation
        key: reactive_pattern_anticipation
        signature: read-opponent-tell-before-call-lands.pre-empt-footwork.recover-mid-stride-on-miss
        status: ratified
        evidence:
          - EVT-000167#milo-footwork-drill-cold-double-pass
          - EVT-000184#overgrown-temple-boss-hold
          - EVT-000309#training-grounds-harder-cones-2026-08-12
        resolution_event: EVT-000309
        result_ref: skills.broken_rhythm
        note: "**Ratified 2026-08-12 (`EVT-000309`), its third qualifying scene** — a harder training-grounds session with Milo, the first two reps clean, one genuine miss between them, the third landed using an Exploit Pattern read first. No profile-authored result existed for this candidate, so ratification required an owner ruling (Section 7.1's mandatory adjudication gate): named **Broken Rhythm [E-Rank], Novice** — passive, +1 modifier step on evasion/reaction against a perceived attacker's telegraphed action in any live exchange, distinct from Pre-empt (ambush-only) and from Exploit Pattern (one-time analytical read vs. continuous reflex)."
      - domain: gatefall.skill_formation
        key: applied_analytical_reconstruction
        signature: apply-formal-physical-or-geometric-training.reconstruct-unobserved-structure-or-coverage.act-on-the-derived-finding
        status: rejected
        evidence:
          - EVT-000372#loomis-street-camera-cone-geometry
          - EVT-000398#cicero-scar-core-block-structural-read
        resolution_event: EVT-000440
        rejection_reason: "Generic competence, excluded by Section 7.1 test 3. Both evidence scenes resolved on the engine's standing established-capability step (`EVT-000372`: '+1 step for the directly relevant established capability'), which fires for competence a character already holds and needs no skill. Alexander's university physics and mathematics training is that competence. Section 4.3 caps the net step at +1 and Section 7.2 forbids a second modifier from the same finding, so the skill would have changed no roll on the very scenes that formed it — the Rank Dominance Law failing at acquisition. All three candidate mastery axes failed the same way: beneficiaries priced a solitary method as a group one, concurrent derivations rebuilt Multitask's retired unreached-ceiling defect, and a scale ladder starting at one wall sat beneath what he had already demonstrated with no skill. Education is capability, not a skill."
        note: "Opened at `EVT-000436` on two scenes where Alexander resolved a problem on his physics-and-mathematics training rather than a System skill — `EVT-000372` (Loomis Street sweep-cone geometry) and `EVT-000398` (Cicero Scar core blocks). **Rejected at `EVT-000440`**, which withdraws that finding; reason in `rejection_reason`, full argument at the Event."
      - domain: gatefall.skill_formation
        key: pretext_and_cover
        signature: fabricate-plausible-identity-or-story-under-direct-real-time-scrutiny.adapt-to-pushback.sustain-to-resolved-outcome
        status: tracking
        evidence:
          - EVT-000190#suite-14-vence-bluff-and-hold
          - EVT-000191#disguised-voicemail-and-callback-bait
        note: "**Classified at the promotion barrier (`EVT-000192`), Section 7.1's deferred non-combat batch — sealed at the time, no formation message rendered mid-scene.** First scene (`EVT-000190`): held a fabricated identity ('Vence') under a building guard's direct, real-time verification attempt — 🎲 55 then 🎲 71, both landing — and adapted the story without contradiction when pressed for a surname. Second scene (`EVT-000191`): a disguised voice and a deliberately vague insider phrase ('Is it still on?') left as a voicemail, 🎲 98, exceptional and a natural critical, provoking an immediate callback — a materially different application of the same signature (identity fabrication under scrutiny) in a different medium. **A third scene, holding the ruse live under direct questioning, failed catastrophically the same night** (`EVT-000191`, 🎲 15, net −1, effective 1) — Section 7.1 test 4 requires material success, so this failure contributes no evidence toward the candidate; it neither counts for nor against the 2/3 already banked. **2/3 qualifying scenes; not yet ratification-eligible.** A third *successful* qualifying scene would open the mandatory Section 7.1 adjudication queue, since no complete name/Rank/effect is authored here for this profile to ratify automatically."
    gold: 367501
    inventory:
      # The dimensional inventory (Profile Section 12.9): every item Alexander owns
      # that is not in an equipment slot. Renamed from `shop_holdings` at `EVT-000366`;
      # grouped into Section 15.3.2's five kinds at `EVT-000367` (Profile 1.50).
      #
      # ONE HOLDING PER ENTRY, ONE KIND PER HOLDING. `/system gear` renders one STORED
      # group per list below and takes each group's line count from that list's length,
      # so nothing about the grouping is inferred at render time. Kinds are assigned by
      # Section 15.3.2's precedence order: Keys, Consumables, Special, Gear, Materials.
      #
      # No session narrative and no disposed lines. Event history belongs to
      # `160_CAMPAIGN_CHRONICLE.md`, disposal to `120_INVENTORY_AND_OWNERSHIP.md`.
      keys:
        - "**Instant-Dungeon Key [B-Rank] × 1** — the Beast Den boss's own drop (`EVT-000589`, 🎲 d100 84 → the 81-90 band, at the instance's Rank). **Free, off a body that cost 45,000 g to meet.** Banked, unused."
        - "**Instant-Dungeon Key [B-Rank] × 1** — the Beast Den boss's own drop (`EVT-000589`, 🎲 d100 84 → the 81-90 band, at the instance's Rank). **Free, off a body that cost 45,000 g to meet.** Banked, unused."
        # Instant-dungeon keys (Section 17).
        - "**Instant-Dungeon Key [E-Rank] × 1 (second)** — the Overgrown Temple's own shrine bonus roll (`EVT-000327`, 🎲 d100 89). Banked, unused."
        # No B-Rank key banked. FOUR were turned on 2026-08-20 and all four are spent —
        # the fourth bought at 45,000 g and turned in the living room at 13:00 (`EVT-000570`,
        # Overgrown Temple), left at 14:46 with fourteen minutes unused. The first three:
        # the banked `EVT-000501` drop (`EVT-000563`), then two bought at 45,000 g each
        # (`EVT-000564`, `EVT-000567`). Two were abandoned with most of their two hours
        # unspent — a key is spent whether or not the instance is finished (Section 17).
      consumables:
        # Spent on use and gone (Sections 12.5, 12.7).
        - "**Lesser Mana Potion x8** — was 7; +1 from the Ashfield boss cache (`EVT-000584`)."
        - "Mender's Seal — clears one Minor injury or reduces a Moderate to Minor; no Health (§12.5) · Daily Premium 1,200 g (`EVT-000088`) · banked"
        - "**Stabilization Seal x4** — suspends a Critical injury's untreated death risk 24 hours; no Health, no severity (§12.5) · +3 Daily Premium 450 g (`EVT-000548`) · banked"
        - "**Lesser Healing Potion x9** — was 12; **3 drunk at `EVT-000502`** recovering from the elite's critical (+78 of a possible 90, the third capping out). Chain before that, retained: corrected from a stale 8 at `EVT-000368`. Chain: **8** at the `EVT-000216` anchor (`120_INVENTORY_AND_OWNERSHIP.md` states it), **+3** Daily Random Box cache at `EVT-000302`, **+1** box cache at `EVT-000316`. None drunk, sold, or given since `EVT-000197`. The 8 was the 2026-08-08 figure and never absorbed either later cache."
        - "**Standard Mana Potion x7** — was 5; **+2 from the Shattered City boss's potion cache** (`EVT-000567`, 🎲 d100 72 → cache, 🎲 d4 3 → 1 healing / 2 mana), standard tier for a B-Rank instance. Earlier chain, retained: was 4; **+1 from the third Crypt's boss-drop potion cache** (`EVT-000507`, 🎲 d100 66 → cache, 🎲 d4 2). Earlier chain, retained: was 5 as of `EVT-000423`. **1 drunk at `EVT-000473`** restoring Mana toward full between the first and second Frozen Gallery clears this span (+40 Mana), stock **5 → 4**."
        - "Antidote x2 (banked, unwithdrawn)"
        - "**Lesser Healing Potion x11** — was 9; **+2 from the Ashfield boss cache** (`EVT-000584`, 🎲 d100 63 → cache, d4 2 → two healing, one mana), Lesser tier at C-Rank."
        - "**Standard Healing Potion x3** — was 2; **+1 from the Shattered City boss's potion cache** (`EVT-000567`) — the least useful drop available to a man carrying nine Lesser and a Restoration Draught. Prior: line reopened; the third Crypt's boss-drop potion cache (`EVT-000507`, 🎲 d4 2 → 2 healing, 1 mana), standard tier for a C-Rank Gate. Banked, unused."
        # The Skill Rune - Sprint [B-Rank] (`EVT-000563` boss drop) was CONSUMED at
        # `EVT-000571`: C-Rank -> B-Rank Novice, gaining `Terrain denied`.
        - "**Skill Rune — Keen Sense [C-Rank]** — boss drop, third Crypt (`EVT-000507`, 🎲 d100 51 → rune, 🎲 d8 6). **`unbound-awakened`, so NPC-eligible.** **Inert to Alexander**: he holds Keen Sense at [S-Rank] Adept and Section 7.5 ascends only instruction *above* current Rank, so it teaches him nothing and stays intact and owned. One of very few transferable instructional items he has ever held."
        - "**Restoration Draught x1** — restores Health and Mana to full in one action; clears no injury severity (Section 12.5's Premium Consumable table) · Daily Premium, Prismatic series, bought 2026-08-19 for **900 g** (`EVT-000496`) · an authored fixed-price Premium model, not derived from an ordinary anchor · once withdrawn it is an ordinary object and works in anyone's hand · banked, unused"
        - "**Greater Healing Potion x10** — restores Health to full · Daily Premium, Prismatic cycle, bought 2026-08-19 for **7,500 g** (`EVT-000548`) · banked, unused"
        - "**Greater Mana Potion x5** — restores Mana to full · Daily Premium, Prismatic cycle, bought 2026-08-19 for **2,400 g** (`EVT-000548`) · banked, unused"
        - "**Elixir of a stat x1** — +1 base stat permanent, max 3 lifetime per stat for the Bearer, uncapped on another awakened (Section 12.5.1) · bought 2026-08-19 for **5,000 g** (`EVT-000548`) · **owner ruling: the stat is fixed at consumption, not purchase** — banked unassigned"
      special:
        # Worth not mechanical, or function/Rank/provenance unresolved.
        - "**Alpha-strain sinew [B-Rank] × 2 lots** — cabled tissue cut from the Beast Den's boss and its alpha (`EVT-000589`, harvests 🎲 95 Strong and 🎲 71 Success). **Flux Sight reads both completely.** The two lots are **the same material at different ages** — same species, same strain, the alpha simply older — and the System has a line item for that and prices it accordingly."
        - "**Drowned mana nodule [B-Rank] × 1** — a natural mana concentration formed in still water and taken up by the thing living in it (`EVT-000588`, legendary harvest 🎲 61 → 100). **Flux Sight reads it completely**: Rank, formation class, catalogue line, market value. **It is the useful control** — a *catalogued* object that holds mana passively, to set beside a heartwood core-mass that does the same with no mechanism and no line item."
        - "**Alpha-strain sinew [B-Rank] × 2 lots** — cabled tissue cut from the Beast Den's boss and its alpha (`EVT-000589`, harvests 🎲 95 Strong and 🎲 71 Success). **Flux Sight reads both completely.** The two lots are **the same material at different ages** — same species, same strain, the alpha simply older — and the System has a line item for that and prices it accordingly."
        - "**Drowned mana nodule [B-Rank] × 1** — a natural mana concentration formed in still water and taken up by the thing living in it (`EVT-000588`, legendary harvest 🎲 61 → 100). **Flux Sight reads it completely**: Rank, formation class, catalogue line, market value. **It is the useful control** — a *catalogued* object that holds mana passively, to set beside a heartwood core-mass that does the same with no mechanism and no line item."
        - "**Bone-lattice plating [B-Rank] × 1 lot** — armour-grade, structurally sound, cut from the Crypt boss (`EVT-000586`, field harvest 🎲 33 → 73 Success). **Flux Sight reads it completely** — Rank, composition, catalogue line, market value. **Which is what makes the other two lots strange**: boss material categorises fine, so the frost-fused plating and the heartwood are anomalous specifically."
        - "**Heartwood core-mass [B-Rank] × 1 lot** — the central bole of the Overgrown Temple's boss, cut along the grain rather than across it, plus four lengths of limb-fibre (`EVT-000570`, field harvest 🎲 44 → 84 Strong). **It Ranked itself into storage from its source** under Profile 1.72's §11.1 — the defect that needed an owner ruling at `EVT-000522` did not recur. **Function unidentified, value unauthored.** Still warm the way the Mana Reservoir [C-Rank] is warm, holding mana with nothing telling it to. Artificer material."
        - "**Frost-fused carapace plating [B-Rank] × 1 lot** — five pieces off the Frozen Gallery boss (`EVT-000502`). **Flux Sight returns no Rank and no stats — not *unidentified*, uncategorised.** **RULED [B-Rank] at `EVT-000522`** under Profile 1.72's §11.1 (every holding carries a Rank, defaulting to its source's). Function and value still unauthored — the beast-part question queued for Priscilla Nakamura (`ENT-000203`). Cores are what artificers forge from (§12.8); this is not a core."
        - "**Half-finished leather piece** — recovered from the same dock sweep (`EVT-000326`), same maker's stamp as the wallet and the dagger, mid-work when abandoned. No combat stats — unfinished. Banked."
        - "**Crumpled work order** — recovered from the dock's manual search (`EVT-000326`, strong success), handwritten, references 'the consultation' moved to an unnamed street after Tuesday. No address number. A real, unresolved lead."
        - "**Torn visitor-badge fragment** — recovered alongside the work order (`EVT-000326`), printed 'CONSULT — TEMP,' no logo, no name. A real, unresolved lead."
        # The Ironline trial roster report LEFT this inventory at `EVT-000583`,
        # withdrawn in a grain yard and handed to Wade Bishop to put in front of
        # whoever really sits above Region V. Three pages, letterhead, eight filed
        # against five present, padded with Osei, Delray and Fenwick. It had
        # underwritten `OBJ-27`'s leverage since 2026-08-14; Alexander gave it away
        # and kept the terms the same. Disposal: `120_INVENTORY_AND_OWNERSHIP.md`.
      gear:
        # Section 11.5 item lines while stored, plus tools and instruments.
        # 13 holdings left this list at `EVT-000565`, handed to Walt Adamik as OBJ-29
        # partner stock rather than sold: three E-Rank (Adaptive Bastion Torso,
        # Ascendant Hunter's Band, Bastion Torso), eight D-Rank (Titan Legs, Watcher
        # Feet, Arcanist Torso, Bastion Legs, Arcanist Feet, Horizon Gale Coif,
        # Quickstep Charm, Longsword) and two C-Rank (Horizon Gale Gauntlets, Warded
        # Greaves). Disposal is tracked in `120_INVENTORY_AND_OWNERSHIP.md`.
        - "**Longsword [B-Rank]** — Strength +11 · weapon power 11 · armed strike ×0.85 · the Crypt boss's drop (`EVT-000586`, 🎲 d100 27 → equipment, d3 1 → weapon, d7 3). Excellent, unbound. `Any blade` (D) would resolve it at ×1.85 for 734 against a main-hand 714 — but **Twin Fang requires two Quickknives**, so 20 damage costs a 2,228 package. Banked."
        - "**Ascendant Warlord's Loop [A-Rank]** — accessory · **Strength +16** · Excellent, unbound · Overgrown Temple boss drop, top band, one Rank above the instance (`EVT-000570`). **Banked unequipped and undecided**: both accessory slots hold stat-less Warded Vambraces, so taking it drops him to one −30% proc for **effective Strength 349 and main-hand 648**. Combat Tier is unaffected either way."
        - "**Reacharm [B-Rank]** — polearm chassis · Perception +7 / Strength +4 · weapon power 11 · Excellent, unbound · the Beast Den boss's drop (`EVT-000564`, 🎲 d100 17 → equipment, 🎲 d7 4 → Reacharm). **Assessed as stock rather than kit and deliberately not equipped**: it is a two-handed chassis, so taking it surrenders both Quickknives, Dagger Mastery's ×1.70 and Twin Fang outright. Banked, unequipped, unsold."
        - "**Ascendant Hunter's Band [D-Rank]** — accessory · Strength +5 · Daily Premium, 720 g (`EVT-000088`) · worn in accessory slot 2 from `EVT-000094` until **retired at `EVT-000565`**, when the second Warded Vambrace [A-Rank] took the slot. Banked, unequipped, unsold."
        - "**Keyed document wallet [C-Rank]** — bought from Elias Ward 2026-08-13, bundled with the sensor rig below for $800 cash total (`EVT-000323`), negotiated past his stated one-item-or-the-other policy (legendary success). Rank auto-identified on banking (real d6 roll: 3 → C-Rank, `EVT-000323`). Beaten at `EVT-000324` via an Exploit Pattern read plus the lockpick set. Empty inside; a hidden lining seam carries a maker's stamp tentatively linked (unconfirmed) by Walt Adamik to Marnie's own hand. Open, no key, banked."
        - "**Unmarked motion-sensor rig [D-Rank]** — bundled with the wallet, same purchase (`EVT-000323`). Battery-powered, unbranded. A Keen Sense read (`EVT-000323`) established its intent: it logs detected movement to a remote destination rather than displaying locally — surveillance, not security. Where the log goes is unread. Banked."
        - "Gate Direction Finder [E-Rank] — handheld directional instrument, Elias Ward (`ENT-000177`), $800 (`EVT-000216`). Points toward the strongest nearby active Gate signature; no distance, identity or Rank. Carried."
        - "Suppression Emitter [E-Rank] — unmarked matte-black cylinder, stripped decommissioned surveillance-suppression hardware; blinds instrument-based anomaly/Gate-signature detection in a 3-meter radius. Does not affect personal perception, awakened senses, or System-side detection. Max continuous operation 20 minutes; recharges 1 minute per 5 inactive. Illegal to hold given its origin. Bought from Walt Adamik for 15 E-Rank cores. **Activated at `EVT-000541`** at the fenced warehouse (`ENT-000166`) — its field reacted to something instrument-based reaching for it, confirming an undisclosed anomaly-sensing layer there."
        - "Unlicensed Lockpick Set [B-Rank] — awakened-made, unlicensed; reads a lock's mechanism and reshapes to fit, guiding tension/pin work by feel; detects ordinary traps. Effective up to B-Rank; cannot open electronics, bypass passwords/biometrics, or beat an actively-opposed lock. No combat application. Bought from Walt Adamik (`EVT-000216`)."
        - "**Directional listening rig** — mundane, no awakened function. Walt Adamik, $650 (`EVT-000373`). Picks a conversation out of ambient noise at range with a clean line on the source. Untested, banked."
        - "**Quickknife [C-Rank]** — Good · Agility +7 · weapon power 7 · armed strike ×0.75. Bought 2026-07-27 for 2,000 g (`EVT-000069`), carried as main hand until the S-Rank dagger took the slot at `EVT-000339`. Banked, unequipped."
        - "**Mana Reservoir [C-Rank]** — a small dense stone, faintly warm. Walt Adamik, $2,500 (`EVT-000446`); a **passive Mana battery, unbound to any Bearer**. **Capacity 125**, drawn to **17/125** (`EVT-000479`, `EVT-000518`). Transfer 1:1 both directions. `unbound` — usable by someone other than Alexander (`OBJ-18`). Banked."
        - "**Ascendant Mindspun Loop [C-Rank]** — accessory · Intelligence +4. Daily Random Box drop, `EVT-000487`. Banked — both slots hold Warded Vambraces, so this now competes with a second −30% proc as well as with the Warlord's Loop."
        - "**Quickknife [B-Rank]** — Agility +11 · power 11 · ×0.75 · Daily Random Box drop, `EVT-000553`. Excellent, unbound. Banked."
        - "**Ghost Quickknife [B-Rank]** — Premium, Good · Agility +13 · power 11 · +1 step on the first attack made unseen · retired at `EVT-000557` for the [A-Rank] model. Banked, unsold."
      materials:
        # Crystals, cores, salvage and unworked stock (Section 11.1).
        - "**Beast Core [B-Rank] × 14** — +2 from the Crypt (`EVT-000586`). Prior: was 8; **+4 from the Overgrown Temple** (`EVT-000570`, three elites and the boss). Prior: was 3; **+5 across the three B-Rank instant dungeons** (`EVT-000563`, `EVT-000564`, `EVT-000567`); the Beast Den's alpha counted as its own boss-Rank body. Prior line, retained: the first B-Rank cores Alexander has held. Both elites and the boss of the Crystal Key's Frozen Gallery (`EVT-000500`, `EVT-000501`). **The System shop refuses cores outright** (Section 12.5), so these convert to nothing in gold and are artificer material — Section 12.8's ranked gear is forged from beast cores, which makes them Priscilla Nakamura's department and not a sale. Banked, unsold, unworked."
        - "**Mana Crystal [B-Rank] × 50 — undeclared.** **The Crypt** (`EVT-000586`): +15 drops, **+106 mined of 104**, stock 61 → 182; **132 sold** for 99,000 g. Earlier chain in `120_INVENTORY_AND_OWNERSHIP.md` and the chronicle; **no crystal line has ever been sold to zero.**"
        - "**Loose tool components** and **raw salvage materials** (hides, cured leather offcuts, unworked beast-part components) — recovered from the same dock sweep (`EVT-000326`), from the other two crates. No combat application, unfinished stock. Banked."
        - "Beast Core [D-Rank] x22 — was 23; **1 given to Priscilla Nakamura** as project stock, no credit (`EVT-000550`). Shop refuses cores (Section 12.5). Banked, unsold."
        - "**Mana Crystal [C-Rank] × 50** — was 123. **The Ashfield** (`EVT-000584`): +15 drops, **+58 mined of 56**, stock 50 → 123; **73 sold** for 12,410 g, back to 50. **No crystal line has ever been sold to zero.** Prior: was 40. **+184 undeclared from the Cicero Scar's five veins** (`EVT-000553`, 205 mined, 21 declared to Ada's manifest), stock 40→224. **174 sold at `EVT-000557`** for 170 g each (29,580 g), stock 224→50. Banked, unsold."
        - "**Beast Core [C-Rank] × 25** — +2 from the Ashfield (`EVT-000584`). Prior: was 14; **+9 from the three C-Rank Crypts** (`EVT-000507`), one per elite and boss. Shop refuses cores; artificer material. Prior line, retained: **Beast Core [C-Rank] × 14** — was 8 at `EVT-000446` (prior span's two Crypt dungeons, `EVT-000429`/`EVT-000432`-`EVT-000433`, are the last historical movement before this span). **+2 from the first Frozen Gallery this span** (elite and boss, `EVT-000471`), **+2 from the second** (elite and boss, `EVT-000473`), **+2 from the third** (elite and boss, `EVT-000475`). Shop refuses cores (Section 12.5). Banked, unsold."
    daily_premium:
      cycle: |
          **STANDING RULE (2026-08-10):** when `/system shop` is opened and the stored cycle's rotation boundary has passed, the Runtime rotates one fresh cycle live before rendering — never more than one, regardless of how many 06:00 boundaries were missed.

          **RETIRED, NOT LIVE.** This rotation was generated at 06:00 on 2026-08-20 while the Bearer was System Rank B; **he reached System Rank A at 15:53 on 2026-08-21** (`EVT-000589`), and the catalogue Rank tracks System Rank. The stock below is therefore **one Rank behind and is not a current offer** — it is retained only as the rotation record §12.7 requires. **The next 06:00 rotation rolls at A**, and its Rank rolls will be the first this campaign has seen generated above B. Prior rotation record: **ROTATED — 2026-08-20, live at the `/system shop` check (`EVT-000557`), at the Bearer's then-current System Rank of B, which is no longer his.** Series Umbral. Rank rolls: weapon +1 (A), armor same (B), accessory same (B), rune +2 (S), key +1 (A). Model bags: weapon → Ghost Quickknife (refilled, prior draw excluded), armor → feet/Titan, accessory → Heartward Sigil (forced, bag's last entry), consumable → Mender's Seal, key → Bounty Key. Rune skill → Rupture. Full roll-by-roll detail: `160_CAMPAIGN_CHRONICLE.md` `EVT-000557`.

          **Prior Prismatic cycle (2026-08-19) closed 3/6 purchased** — Restoration Draught, Crystal Key [B-Rank], Adaptive Titan Legs [B-Rank] (`EVT-000548`) — and expired unbought on the rest at this rotation. Full history of every cycle before this one: `160_CAMPAIGN_CHRONICLE.md` and prior checkpoint captures.
      model_bags:
        settled_through: "2026-08-20 rotation (`EVT-000557`)"
        weapon:
          previous_draw: "Ghost Quickknife"
          remaining: ["Execution Longsword", "Colossus Greatarm", "Horizon Reacharm", "Farline Longshot", "Spellthread Focus", "Aegis Guard Shield"]
        armor:
          previous_draw: "feet/Titan"
          remaining: ["head/Gale", "head/Watcher", "torso/Gale", "torso/Arcanist", "hands/Gale", "hands/Watcher", "hands/Arcanist", "legs/Gale", "feet/Gale", "feet/Arcanist"]
        accessory:
          previous_draw: "Heartward Sigil"
          remaining: []
          refill_note: "Bag emptied — Heartward Sigil was its last remaining entry. Refills next rotation to the full five-model set, Heartward Sigil excluded from that refill draw only."
        consumable:
          previous_draw: "Mender's Seal"
          remaining: ["Sovereign Panacea", "Quicksilver Phial", "Clarity Phial"]
        key:
          previous_draw: "Bounty Key"
          remaining: ["Armory Key", "Runic Key", "Alchemist Key"]
      purchased: "1/6 on the live Umbral cycle — the Ghost Quickknife [A-Rank] (50,000 g, `EVT-000557`). The remaining five are available until 2026-08-21 06:00."
      offers:
        weapon: "Ghost Quickknife [A-Rank] · off hand · Agility +18 · +1 step on the first unseen attack · 50,000 g · **PURCHASED** (`EVT-000557`)"
        armor: "Adaptive Titan Feet [B-Rank] · feet · Strength +7 · physical reduction 15% · 6,750 g · unpurchased"
        accessory: "Ascendant Heartward Sigil [B-Rank] · accessory · Vitality +9 · 9,000 g · unpurchased"
        consumable: "Mender's Seal · clears one Minor injury or reduces one Moderate to Minor · 1,200 g · unpurchased"
        rune: "Premium Rune — teaches **Rupture** · [S-Rank] · UNBOUND · NPC-ELIGIBLE · 2,250,000 g · unpurchased — Alexander already holds Rupture at [S-Rank] Adept (`EVT-000590`); S-Rank content is unauthored below System Rank A (Section 7.3), so this is priced but flagged unusable rather than resolved either way"
        key: "Bounty Key [A-Rank] · instant-dungeon key · 250,000 g · unpurchased"
      previous_cycle: "**2026-08-19, Prismatic series — 3/6 purchased** (Restoration Draught, Crystal Key [B-Rank], Adaptive Titan Legs [B-Rank]), expired unbought on the rest at this rotation."
    non_daily_quests:
      capacity_total: 6
      active:
        - quest_key: "warehouse-meridian-ownership"
          type: hidden
          status: attached
          issue_time: "2026-08-06T16:45:00-05:00"
          concealed_name: "What the Fenced Warehouse Protects"
          objective: "Identify the warehouse's owner or operator and its true purpose."
          objective_counters: "Clue condition met (servicer identified, delivery observed); shell-company ownership layer established. Cormant Holdings connected with fair confidence to the lanyard logo (`EVT-000287`). True owner unknown. Handed to investigator Rosalind Fenn (`ENT-000198`) at `EVT-000374`, 2-3 days estimated. **`EVT-000490` (🎲 2, critical failure): her inquiry traced back — a man called using her licence number. No progress on owner or purpose; she now works untraceable sources only.** **`EVT-000541`: purpose substantially advanced — a Gate Direction Finder read a live Gate signature inside the fence, and a Suppression Emitter test found an undisclosed anomaly-sensing layer in the site's security. Owner/operator still unidentified; `completion_condition` needs both.** **`EVT-000542`: reported to Fenn, instructed to keep working paper only — she will not approach the fence.**"
          completion_condition: "The owner or operator identified first-hand, with the warehouse's true use established."
          failure_or_expiry: "No expiry. A standing, low-visibility lead."
          reward_rank: D-Rank
          reward_xp: 150
          deadline: "none"
          reveal_condition: "The Bearer establishes who owns or operates the warehouse and what it is actually used for."
          revealed: false
          anchor: ENT-000167
        - quest_key: "marnie-disappearance"
          type: hidden
          status: attached
          issue_time: "2026-08-13T17:50:00-05:00"
          concealed_name: "What Happened to Marnie"
          objective: "Find out what happened to Marnie."
          objective_counters: "**Proximity condition met** (`EVT-000325`) — physically reaching the coffee stall near the Metro rail yards off Cermak. **Clue condition met** (`EVT-000325`): the stall owner (`ENT-000191`) — a third party, vouched via Walt Adamik's name — confirmed Marnie missed a standing Tuesday check-in for the first time ever, reported Marnie saying someone had been asking pointed questions about her work shortly before she went quiet, and flagged the loading dock (`ENT-000192`) behind the stall as a place Marnie herself wanted watched. **Corroborated physically** (`EVT-000326`, `EVT-000328`): the dock proved to be her own staging space rather than only a place she named — a half-finished leather piece, loose tool components and raw salvage in mid-work, and a finished dagger that auto-identified at **S-Rank**, all carrying the same maker's stamp as the document wallet's hidden lining (`EVT-000324`). Her own commissioned work, abandoned unfinished. **Location lead** (`EVT-000333`): the dock's handwritten work order referenced 'the consultation' moved to a street since identified by map as **Loomis Street**, an industrial corridor, no exact address. **Inquiry made and failed** (`EVT-000352`): the CONSULT phrase panicked Walt's contact, channel closed. **Loomis Street located and read twice** (`EVT-000353`, `EVT-000372`): a manned camera blind spot found by direct math/physics analysis. **Handed to investigator Rosalind Fenn** (`ENT-000198`, `EVT-000374`) as priority; dock withheld. 2-3 days estimated. **Reveal condition NOT met** — what actually happened to her, and whether she is safe, remain unestablished; every fact held so far is about her absence and her workspace, none about her. Full reveal (cause of silence + status) not yet established. Progress record reconciled against the promoted Events at `EVT-000337`; reward unchanged at D-Rank/150 XP per Section 8.4.3, the S-Rank dagger being loot from `EVT-000326` rather than a reward of this quest. **`EVT-000490` (🎲 91 → 71, success): a storage unit under a name not hers, cash, prepaid through October, three weeks before the silence — the first fact about *her* rather than her absence. Report due 2026-08-20. Reveal still NOT met.**"
          completion_condition: "The cause of her silence established, and her status (safe, in danger, or otherwise) confirmed."
          failure_or_expiry: "No expiry authored. A standing concern rather than a deadline."
          reward_rank: D-Rank
          reward_xp: 150
          deadline: "none"
          reveal_condition: "Alexander learns, first-hand or through a resolved investigative action, what actually happened to Marnie."
          revealed: false
          anchor: ENT-000190
        - quest_key: "the-sublevel-under-the-cicero-scar"
          type: hidden
          status: attached
          issue_time: "2026-08-20T08:12:00-05:00"
          concealed_name: "???"
          objective: "???"
          objective_counters: "**Attached at `EVT-000555`.** World-scope concealed-discovery record `worlds/gatefall/230_KNOWLEDGE_SUBJECTS.md` `ENT-000151`, authored 2026-07-22, predates this campaign. Its `proximity_condition` was amended by owner ruling this session (posting requirement and the specific depth-read clue dropped, both reduced to physical presence) and satisfied by the hour Alexander spent past the Cicero Scar's inner cordon at `EVT-000554`, trespassing rather than on a BGM posting. Objective, reveal condition and completion condition remain world-authored and unrendered to the Bearer until reveal (`???`)."
          completion_condition: "???"
          failure_or_expiry: "None authored (Section 9.1's stable concealment)."
          reward_rank: B-Rank
          reward_xp: 700
          deadline: "none"
          reveal_condition: "The Bearer reaches the sublevel floor in person and gets a light source onto the far wall (world-authored; unrendered)."
          revealed: false
          anchor: ENT-000151
      pending_offers: []
      note: "**Capacity derives from System Rank alone** from `EVT-000365` (Profile 1.49, Section 8.4): System Rank B gives **5**. Initialized at `EVT-000115`. **Three Hidden pointers attached** — 2026-08-06 (`EVT-000188`), 2026-08-13 (`EVT-000325`, the Marnie thread), and 2026-08-20 (`EVT-000555`, the Cicero Scar sublevel), see `active` above; all three render `[HIDDEN] ???` until their reveal_conditions are met. Slots **3/5 used**; the cap has never bound, which is why it stopped being a skill."
    daily_quest:
      streak: 14
      last_completed: "2026-08-21"
      last_failed: "2026-08-07"
      active: false
      note: "**Twenty-seventh daily issued 06:00 (retroactively rendered — owed at the boundary, not fired until noticed), completed by 10:30, 2026-08-20 (`EVT-000553`), streak 12→13** — not a multiple of seven, standard single-roll box: 🎲 natural 81 → ranked gear at System Rank B, Quickknife [B-Rank]. Ability Points +4 claimed and spent to Vitality in the same exchange. Full streak history back to the fourteenth's deliberate failure: `160_CAMPAIGN_CHRONICLE.md` and prior checkpoint captures."
      current_quest: "No quest currently active; the twenty-seventh completed and settled this checkpoint (see `note` above). Twenty-fourth and twenty-fifth daily detail (superseded, historical): `160_CAMPAIGN_CHRONICLE.md` `EVT-000445`, `EVT-000463`."
      next_issue: "2026-08-21T06:00:00"
      active_rule: "Profile 1.8: issues 06:00 local and expires at the following midnight (06:00–23:59); 100 push-ups, 100 sit-ups, 100 squats, 10 km run; no XP; completion advances the displayed streak, failure resets it, and the streak grants no cache or multiplier; rewards are three separate pending entries."
      migration_note: "Profile 1.5→1.6 (`EVT-000082`) preserved all objective progress and moved this active quest's deadline from 2026-07-30 06:00 to 2026-07-30 00:00. No fictional time, reward, pool, Stat, XP, item, or streak value changed."
    notes: |
      Not held here. This field carried the 2026-07-28 beast-den clear and Onset narrative (`EVT-000075`-`EVT-000080`), last extended at `EVT-000080`. `160_CAMPAIGN_CHRONICLE.md` narrates all of it in full.

      Third instance of one defect: `condition`, `situation` and this field were each a private copy of the chronicle, none read by any declared operation. Data Model Section 7.1 makes canonical state "what is true now"; Section 7.2 makes the rest historical evidence, which the chronicle owns.

    migration_notes: "Profile 1.4 migration (`EVT-000074`) preserves every sentence above as historical context but supersedes its old live-rule conclusions. Removing all daily-quest XP and replaying non-daily awards yields Level 3, XP 80/300: Red Line rewards 140 → Level 2 at 40/200, then the C-Rank beast kill +240 → Level 3 at 80/300. Two completed level-ups add +2 to each base Stat and +4 unspent points; the pending Level 3 grant adds its original +3 points and settles its full recovery immediately. With the pre-migration 3 unspent points, current unspent total is 10. Effective Stats are 18/23/15/13/12; Health is 60/60; Mana is 24/24. All four historical daily completions are established to have included 100 squats performed off-screen in the same exercise periods. Their consecutive streak remains 4, and each contributes one unopened Daily Random Box. The one still-pending daily bundle separately became Ability Points +3 and one Status Recovery. Both Quickknives gained weapon power without changing Rank, chassis, ownership, or the already-resolved elite counter."
  finances:
    starting_funds_usd: 4000
    background: stable
    standing_liability: "Outstanding university tuition debt, $30,000 principal, $400/month minimum payment. Recorded per Section 20.3 as a campaign ruling at this initialization checkpoint: the debt is a pressuring monthly liability against his income, and it does NOT reduce the $4,000 starting funds set by his stable social position (Profile Section 12.6)."
  personal_history: |
      Worked part-time as a krav maga instructor and part-time as a secondary-school teacher through university and after graduating in mathematics and physics. Awakened three months ago. Cleared BGM intake screening and was licensed at E-Rank about one week ago.\n\n  **Established 2026-07-30 (`EVT-000084`), the first biography he has volunteered to anyone in this campaign.** The teaching post was **a queue, not a preference**: he wanted to be a scientist — to study physical law and discover something that could actually be used — and no research field takes a fresh graduate directly, so he taught mathematics and physics because he needed money while he waited. **Krav maga was never a career choice at all**; he grew up in it, could not put it down, and was already an established instructor in his first year of university. He loved passing the skill to students, and the instructor's register is still intact and still recognizably separate from every other voice he has (`EVT-000084`, coaching Owen).\n\n  He was **about fifteen when the Gatefall happened** (March 2016; `worlds/gatefall/200_WORLD_BIBLE.md`) and fifteen still when the Damen Avenue Break killed some four hundred people in his own city. His entire degree was taken in a world that already had mana in it and no theory for it — and then could not hire him to study it.

      **Established 2026-08-03 evening (`EVT-000122`), the first time he has told anyone why.** His parents died in the Damen Avenue Break. Both had awakened in the Gatefall's opening week — his mother a university professor, his father an FBI Task Force detective. When the Break hit, his mother was caught in it; his father, newly awakened and with no BGM protocol yet chartered to guide or support him (the Bureau would not exist for another year, per the World Bible Timeline), fought his way to her, killed several of the things pouring into the street, and was killed alongside her by something above what one untrained week-old awakening could survive. He was fifteen, in the same city, when it happened.

      **Birthdate fixed the same evening: September 17, 2000.** Consistent with the established 'fifteen, turning sixteen the same year' framing and his current stated age of 25; he turns 26 later this year — three days after Owen Callahan's own birthday (14 September, `EVT-000108`), a coincidence neither of them has yet noticed.
  reputation: "Notoriously the weakest licensed E-Rank in Chicago. This is a reputation, not a measured fact — coordinators hesitate over his file, and working crews have so far declined to take him on. No card, survey, or instrument has ever contradicted the label, because nothing about him has been tested in a real clear yet."
  situation: |
      Not held here. This field carried a narrative of 2026-07-24 to 2026-08-04 (`EVT-000059`-`EVT-000139`) and was last extended at `EVT-000139` while play ran on far past it -- the defect Decision 073 named against this exact field ("restates location narratively -- the field that went stale at Checkpoint 0006").

      Where each part now lives, authoritatively: **narrative history** in `160_CAMPAIGN_CHRONICLE.md`; **present situation** in `180_CURRENT_STATE.md`; **present pools, anchor, place and last span** in `condition` above; **present location** in `canonical_state.location`, which Decision 073 makes the single structural owner. Every Event that claims to have moved this record is referenced by `moved_by_events` above.

  aspiration: "Become powerful and discover new things. **No longer vague (`EVT-000084`).** Stated plainly to Owen Callahan on the morning of 2026-07-30 with an actual mechanism behind it: he intends to keep hunting and to get materially better at fighting *because capability is the price of access* — the Gates are the largest unexplained physical phenomenon in history, no institution or awakened can account for a single mechanism inside them, and he cannot study any of it from the cordon. The physicist's ambition and the hunter's career are the same project to him now, which they were not a week ago. Note the consequence he named without flinching: this commits him to going into worse Gates deliberately."
```
