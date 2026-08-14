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
  source: EVT-000559
  game_date: "2026-08-20T10:30:00-05:00"
  real_date: "2026-08-13"
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

  `EVT-000271` `EVT-000273` `EVT-000274` `EVT-000277` `EVT-000278` `EVT-000279` `EVT-000280` `EVT-000282` `EVT-000284` `EVT-000285` `EVT-000286` `EVT-000287` `EVT-000289` `EVT-000290` `EVT-000291` `EVT-000292` `EVT-000293` `EVT-000294` `EVT-000296` `EVT-000300` `EVT-000301` `EVT-000302` `EVT-000303` `EVT-000304` `EVT-000308` `EVT-000311` `EVT-000312` `EVT-000316` `EVT-000317` `EVT-000318` `EVT-000319` `EVT-000320` `EVT-000323` `EVT-000324` `EVT-000325` `EVT-000326` `EVT-000327` `EVT-000328` `EVT-000332` `EVT-000333` `EVT-000334` `EVT-000336` `EVT-000337` `EVT-000338` `EVT-000339` `EVT-000340` `EVT-000341` `EVT-000342` `EVT-000343` `EVT-000344` `EVT-000345` `EVT-000346` `EVT-000347` `EVT-000350` `EVT-000351` `EVT-000352` `EVT-000353` `EVT-000354` `EVT-000355` `EVT-000356` `EVT-000357` `EVT-000358` `EVT-000359` `EVT-000360` `EVT-000361` `EVT-000373` `EVT-000374` `EVT-000379` `EVT-000380` `EVT-000381` `EVT-000382` `EVT-000383` `EVT-000384` `EVT-000385` `EVT-000386` `EVT-000390` `EVT-000391` `EVT-000392` `EVT-000393` `EVT-000395` `EVT-000396` `EVT-000397` `EVT-000398` `EVT-000399` `EVT-000400` `EVT-000401` `EVT-000402` `EVT-000403` `EVT-000404` `EVT-000406` `EVT-000407` `EVT-000408` `EVT-000409` `EVT-000410` `EVT-000411` `EVT-000414` `EVT-000415` `EVT-000416` `EVT-000417` `EVT-000419` `EVT-000422` `EVT-000425` `EVT-000428` `EVT-000429` `EVT-000430` `EVT-000431` `EVT-000432` `EVT-000433` `EVT-000434` `EVT-000451` `EVT-000452` `EVT-000453` `EVT-000454` `EVT-000457` `EVT-000458` `EVT-000459` `EVT-000463` `EVT-000464` `EVT-000465` `EVT-000467` `EVT-000468` `EVT-000469` `EVT-000470` `EVT-000471` `EVT-000472` `EVT-000473` `EVT-000474` `EVT-000475` `EVT-000476` `EVT-000477` `EVT-000478` `EVT-000479` `EVT-000480` `EVT-000481` `EVT-000482` `EVT-000483` `EVT-000485` `EVT-000487` `EVT-000490` `EVT-000491` `EVT-000493` `EVT-000495` `EVT-000496` `EVT-000498` `EVT-000499` `EVT-000500` `EVT-000501` `EVT-000502` `EVT-000503` `EVT-000504` `EVT-000506` `EVT-000507` `EVT-000508` `EVT-000509` `EVT-000510` `EVT-000511` `EVT-000512` `EVT-000513` `EVT-000514` `EVT-000515` `EVT-000516` `EVT-000517` `EVT-000518` `EVT-000519` `EVT-000520` `EVT-000521` `EVT-000522` `EVT-000523` `EVT-000524` `EVT-000525` `EVT-000526` `EVT-000527` `EVT-000528` `EVT-000529` `EVT-000530` `EVT-000531` `EVT-000532` `EVT-000533` `EVT-000534` `EVT-000535` `EVT-000536` `EVT-000537` `EVT-000538` `EVT-000539` `EVT-000540` `EVT-000541` `EVT-000542` `EVT-000543` `EVT-000544` `EVT-000545` `EVT-000546` `EVT-000547` `EVT-000548` `EVT-000549` `EVT-000550` `EVT-000551` `EVT-000552` `EVT-000553` `EVT-000554` `EVT-000555` `EVT-000556` `EVT-000557` `EVT-000558` `EVT-000559`"

canonical_state:
  age: 25
  location: ENT-000091
  location_note: "Cicero Scar's reclaimed edge, Chicago, 10:30 on 2026-08-20 (Thursday), having just closed out the shop after Ada's manifest. Prior: the Rogers Park apartment (`ENT-000087`), corrected at `EVT-000536`."
  condition: |
      Health **524/524, full**, Mana **230/230, full** — **Level 30, System Rank B, 10:30 on 2026-08-20 (Thursday)**. Since the 18:55 anchor Wednesday (`EVT-000547`-`EVT-000558`): the Sprint rune consumed (D-Rank Adept → C-Rank Novice, Vertical gained); Daily Premium purchases (Titan Legs equipped, potions, seals, an unassigned elixir) and an owner ruling on elixir timing; a second rift anchor set at the apartment and Owen's first witness of Rift-step; a full practical session at Priscilla Nakamura's bench (Keen Sense advanced to Expert, a D-Rank core gifted as project stock) with Thursday's session moved up to opening the Dormant Core; an owner ruling authoring a passenger through Rift-step, and Alexander telling Owen he wants to spend his life with him. **The world's first tick ran** at 06:00 (`EVT-000552`) — Reyna Castillo accepted the crew, two new E-Rank board postings entered play unsurfaced. A third and fourth anchor set at Cicero Scar (the reclaimed edge, then the warp heart deep in its restricted core); five veins mined for 205 crystals, 21 declared to Ada for $52,500 pending; the twenty-seventh daily completed (streak 13, +4 AP to Vitality, a Daily Random Box Quickknife). **Trespassed past the Cicero Scar's inner cordon**, found unclassified remains and a structured object at a warp zone's heart, and — on an owner ruling correcting a proximity condition — a Hidden quest attached to `ENT-000151`, the sublevel beneath the Scar (reward 700 XP, unrevealed). Bought and equipped a Ghost Quickknife [A-Rank] (50,000 g); sold 174 undeclared C-Rank crystals (29,580 g). Gold stands at 129,341. Full detail: `160_CAMPAIGN_CHRONICLE.md` `EVT-000547`-`EVT-000558`.

      Superseded anchor states are not held here. `160_CAMPAIGN_CHRONICLE.md` narrates every span in full, and `moved_by_events` above references every Event that claims to have moved this record -- Decision 085 requires the reference, never the narration. Twenty-eight prior anchors were retired on that basis; read the chronicle for any of them.

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
    profile_version: "1.79"
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
        cap: 5
        cap_formula: "effective Agility 112 / 20, floor, minimum 1 (Section 18.8). The sixth anchor lands at Agility 120."
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
        note: "**Four of five set.** **Releasing is free, instant and at will from anywhere (Profile 1.72), so the cap is a working set of five rather than five permanent commitments** — the exchange is the price of setting, not of letting go. An anchor is set by holding a position for a full exchange; **no slot was spent inside the Class Quest trial**, whose instance collapses on exit. Reach is *the same instance, Gate, or contiguous stretch of the city* -- the profile's own worked example anchors two of three points outside any instance."
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
      slots_note: "One slot per assessment passed, capped at five (Section 16). **Three passed — levels 10, 20 and 30 (`EVT-000515`) — so 3 slots against twelve earned titles.** The third opened at the Level 30 crossing and was filled the same exchange: Giantslayer equipped, then swapped for **Centurion** on the player's instruction once the trade was shown (a modifier step against a boss, against +1 Mana per common killed inside a trial with no refill). The fourth opens at level 40."
      points_granted: 35
      note: "Granted by the two retroactive Title Assessments (`EVT-000349`), run at Profile 1.47 adoption (`EVT-000348`) because Alexander crossed level 10 at `EVT-000150` and level 20 at `EVT-000341` under profiles that had no assessment to fire. Each rung was judged at the level it belongs to (migration step 3): **seven at level 10**, **three at level 20**. Ten of the twenty-one catalog entries (Section 16.2) are held — nine Common and one Rare (**Cartographer**), no Singular. Points by grade (+2 / +5 / +10): 6×2 + 5 = **17 at the level-10 rung**, 3×2 = **6 at level 20**, **23 banked unspent**, which is why `unspent_points` reads 53 rather than 30. `title` is `null` — the assessments grant and open slots, they never equip; both slots are Alexander's own free choice through `/system titles` (Section 15.3.4) and no passive is active until he makes it. The next assessment is the level-30 level-up, which also opens a third slot, and nothing fires before it (Section 16.1)."
      earned_summary: "**12 titles earned.** The catalogue - each title's criterion and the Event that proved it - is `titles_catalog`, fetched by `/system titles` rather than carried at readiness (owner ruling, 2026-08-10). Names and grades here, which is what a scene needs to know exists."
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
    level: 30
    xp: "1945/3000"
    health: "524/524"
    mana: "230/230"
    world_clock:
      last_ticked: "2026-08-20T06:00:00-05:00"
      next_tick: "2026-08-21T06:00:00-05:00"
      note: "**Section 9.1's daily world tick, authored at Profile 1.73** (`F-034`). **The first tick ran 2026-08-20 06:00** (`EVT-000552`), real dice throughout, entry written in `110_WORLD_LEDGER.md`'s `world_ticks` before the twenty-seventh daily issued (Section 9.1.1's fixed ordering): Chicago 1d4+3→7 Gates, Prague 1d2→1; ranks D/D/E/E/E/E/C and D; siting found two E-Rank detections within reach, five elsewhere; no live posting held a deadline so contest/breaks resolved `none`; postings regenerated as `GB-05`/`GB-06`; Reyna Castillo's agenda initiated and resolved (she joined the crew); one non-Gate world event (Aftermath, within reach); district pressure held at 0; the first-week major roll held. **Each Gate and break is sited `d100` against his recorded day — `01-10` on his route, `11-30` within reach, `31-00` elsewhere — so proximity is an input rather than a veto.** Results are binding, including inconvenient ones. **A `last_ticked` behind the most recent day boundary at or before `campaign_time` is a readiness finding**: the world has not been run."
    temporal_state:
      campaign_time: "2026-08-20T10:30:00-05:00"
      mana_recovery_mode: resting
      mana_recovery_remainder_units: 0
      health_recovery_mode: resting
      health_recovery_remainder_units: 0
      note: "Five scalars, by owner ruling 2026-08-10. How the anchor advanced is narrated by the promotion Event that moved it and by `170_CHANGELOG.md`, neither of which can drift from the clock the way a note sitting beside it can. Both pools closed this span at full; remainders zeroed accordingly."
    unspent_points: 0
    pending_rewards:
      ability_points: 0
      ability_points_note: "**2026-08-20 (`EVT-000553`): the twenty-seventh daily's entry claimed at +4 and spent in the same exchange**, all four to Vitality (base 126→130, effective 131, `maximum_health` 508→524, filled from cap). `unspent_points` returns to 0."
      status_recovery: 19
      daily_random_box: 0
      unresolved_gate_loot: "**Fully resolved.** Nothing outstanding. Full history: `160_CAMPAIGN_CHRONICLE.md`."
      latest_settlement: "**2026-08-20 (`EVT-000553`): the twenty-seventh daily's three rewards settled.** AP **+4** all to Vitality — base 126 → 130, effective 131, `maximum_health` re-derived 508 → **524**, filled from cap. Status Recovery **18 → 19**, unclaimed. Box opened standard (streak 13, not a multiple of seven): 🎲 d100 **81** → ranked gear at System Rank B; 🎲 d3 **1** → weapon, 🎲 d7 **1** → **Quickknife [B-Rank]**, Agility +11, power 11, Excellent, unbound — banked. Prior settlements: `160_CAMPAIGN_CHRONICLE.md`."
      note: "**Unspent 0.** The 15 banked across three level-ups' +5 grants (`EVT-000431` Level 22→23, `EVT-000470` Level 23→24, `EVT-000475` Level 24→25) plus the +8 from two claimed AP entries were **all allocated at `EVT-000487`**: Strength +10 (65→75), Intelligence +10 (70→80), Vitality +3 (104→107). Ascetic +4 question unaffected — see `skill_rulings.ascetic_claim_timing_evt_000357`."
    stats:
      strength: 80
      agility: 68
      vitality: 130
      perception: 69
      intelligence: 112
    effective_stats:
      strength: "99 (base 80 + equipment 19)"
      agility: "112 (base 68 + equipment 44)"
      vitality: "131 (base 130 + equipment 1)"
      perception: "74 (base 69 + equipment 5)"
      intelligence: "115 (base 112 + equipment 3)"
      note: "**This span (`EVT-000548`, `EVT-000553`, `EVT-000557`): four points to Vitality from the twenty-seventh daily** (base 126→130), and two gear swaps — Adaptive Titan Legs [B-Rank] for the Warded Greaves [C-Rank] (Strength gear +12→+19, Vitality gear +4→+1) and Ghost Quickknife [A-Rank] for the [B-Rank] model (Agility gear +39→+44). `maximum_health` re-derived twice: 520→508 (leg swap) →524 (Vitality AP, filled from cap). `maximum_mana` unaffected. Main-hand DMG 194→206; off-hand 175→187→196. Physical reduction 42%→46%. **Current Mana holds below cap by precedent** (a pool below cap keeps its value while only the ceiling moves) — 34 Mana short of full if ever ruled otherwise. **Combat Tier**: `offense_tier` A, `defense_tier` pinned B — `max(B, min(A,B))` = **B**. Full re-derivation history (the Class Quest's double re-derivation, prior gear swaps, the Intelligence allocation): `160_CAMPAIGN_CHRONICLE.md`."
    system_rank: B
    equipment:
      main_hand: "Finished dagger [S-Rank] — Quickknife chassis, all-Agility weapon stat line · Agility +22, weapon power 22 (Section 11.5 S-Rank weapon budget) · **effective chassis ×1.70** with Dagger Mastery [B-Rank] Adept's +0.95 (`EVT-000428`-`EVT-000435` span) · **DMG 206 standard before reduction** at effective Strength 99 — `(99 + 22) × 1.70 = 205.7`, rounded to nearest under Section 6.2 (re-derived at `EVT-000548`'s leg swap from 194 at effective Strength 92) · armed strike ×0.75 base — recovered from the loading dock sweep (`EVT-000326`), auto-identified S-Rank only (`EVT-000328`, no chassis/provenance beyond Rank at the time); its full combat line is authored here from the standard S-Rank weapon table on first equip in combat (`EVT-000339`). Equipped to main hand mid-fight, displacing the Ghost Quickknife. **Not owned in any ordinary sense** — the missing artificer's own commissioned work, held rather than owned (`120_INVENTORY_AND_OWNERSHIP.md`); equipping it is a live Section 19 exposure risk Alexander has accepted knowingly."
      off_hand: "Ghost Quickknife [A-Rank] — Premium model, Excellent · Agility +18 (A-Rank weapon budget 16 + 2 premium) · weapon power 16 · **effective chassis ×1.70** with Dagger Mastery [B-Rank] Adept's +0.95 · **DMG 196 standard before reduction** at effective Strength 99 — `(99 + 16) × 1.70 = 195.5`, rounded to nearest under Section 6.2 · armed strike ×0.75 · +1 modifier step on the first attack made unseen in a combat · bought from the Daily Premium Umbral cycle, 50,000 g (`EVT-000557`) · EQUIPPED, displacing the Ghost Quickknife [B-Rank] (Agility +13, weapon power 11, same perk), now banked unequipped, unsold."
      head: "**Adaptive Titan Coif [B-Rank]** — Premium model · Strength +7 · physical reduction 15% · bought from the Daily Premium Obsidian cycle, 6,750 g (`EVT-000425`) · EQUIPPED, displacing the Horizon Gale Coif [D-Rank] (Agility +2, 5% reduction, purchased at Horizon Outfitters, $3,000, `EVT-000094`), now banked unequipped."
      torso: "**Watcher Torso [B-Rank]** — Watcher torso armor · Perception +5 · physical reduction 12% · **Carapaced Boss Imprint +1 Vitality** · **Impact Echo: once per scene, +1 modifier step resisting stagger or knockdown from a single hit** — the B-Rank harvest trial's owed boss drop, rolled at `EVT-000370` and delivered physically by Wade Bishop at `EVT-000384`. **EQUIPPED at `EVT-000385`**, displacing the Adaptive Bastion Torso [E-Rank], which is banked unequipped. Outside the $221,540 cash figure; physically undivided until this handover."
      hands: "**Gale Hunter's Gauntlets [C-Rank]** — Boss drop, Predator body family/Edge signature · Agility +3 base +1 further Agility (Predator resonance) = **Agility +4 total** · physical reduction 8% · **Edge Echo: once per scene, +1 modifier step on one close attack against an already-injured target** (unused) · finish: bound/wrapped, soot-black metal, ossified-white accents, violet mana lines — the first Crypt instant dungeon's boss drop (`EVT-000429`). **EQUIPPED**, displacing the Horizon Gale Gauntlets [C-Rank] (Agility +3, 8% reduction, purchased at Horizon Outfitters, $12,500, `EVT-000094`), now banked unequipped."
      legs: "**Adaptive Titan Legs [B-Rank]** — Premium model · Strength +7 · physical reduction 15% · bought from the Daily Premium Prismatic cycle, 6,750 g (`EVT-000548`) · EQUIPPED, displacing the Warded Greaves [C-Rank] (Vitality +3, 8% reduction, bought at Horizon Outfitters, $11,800 cash, `EVT-000480`), now banked unequipped, unsold."
      feet: "**Arcanist Feet [C-Rank]** — Good · Intelligence +3 · physical reduction 8% · bought from the standard System shop catalogue, 1,200 g (`EVT-000481`) · EQUIPPED, displacing the prior Arcanist Feet [D-Rank] (Intelligence +2, 5% reduction, bought from the System shop, 270 g, `EVT-000228`), now banked unequipped."
      accessory_1: "**Warded Vambrace [A-Rank]** — Good · **no Stat line** · **once per exchange, a landed hit against Alexander takes −30% damage (multiplicative with worn reduction)** · bought from Walt Adamik 2026-08-11 for $2,200 of a $5,200 pair (`EVT-000280`) and banked unequipped since, both accessory slots having been full. **EQUIPPED at `EVT-000385`**, displacing the Ascendant Hunter's Band [E-Rank] (Strength +4), which is banked unequipped. The highest-Rank item Alexander owns after the dagger."
      accessory_2: "Ascendant Hunter's Band [D-Rank] — Good · Strength +5 · purchased via Daily Premium, 720 g (`EVT-000088`) · EQUIPPED (`EVT-000094`) — duplicate accessory type, both bonuses apply per Profile Section 11.5"
      total_physical_reduction: "**≈46% combined across five worn pieces** (Adaptive Titan Coif 15%, Watcher Torso 12%, gauntlets 8%, **Adaptive Titan Legs 15%**, Arcanist Feet 8%, multiplicative per Section 11.5) as of `EVT-000548`'s leg swap — up from ≈42%. The Warded Vambrace's −30% is **not** part of this figure: it is a once-per-exchange effect applied to a landed hit, not standing worn reduction, and composes multiplicatively on top of it when it fires. Prior line, superseded: ≈42% combined across five worn pieces (coif 15%, Watcher Torso 12%, gauntlets 8%, Warded Greaves 8%, Arcanist Feet 8%) as of `EVT-000481`'s feet swap."
    skills_known:
      - "Stone Skin [C-Rank] ★☆☆☆☆ Novice · Mana 3 · 45% physical damage reduction while sustained; ends when Mana lapses or dropped. **Impact spread (C):** answers an environmental or hazard source, not only a creature's blow. **Successful uses 11 · qualifying scenes total 8 · mastery progress 0/3 toward Practiced · rank ascensions 1.** **Rune-ascended D-Rank Adept → C-Rank Novice at `EVT-000475`** — boss-drop rune consumed by player instruction, 40%→45% reduction, gaining Impact spread; mastery resets to Novice, `mastery_progress` 0, lifetime `successful_uses`/`qualifying_scenes_total` carried forward unchanged. Not used since ascension."
      - "Rupture [A-Rank] ★★★☆☆ Adept · Mana 10 · **reach 5 m** · a heavy strike at **×2.60 of its skill-rank baseline** (A-Rank baseline 375, Section 7.2), resolving as `(375 + effective Intelligence + equipped focus power) × 2.60 × result multiplier` under Section 6.2 — **DMG 1,274 standard before reduction** at effective Intelligence 115 (`(375+115)×2.60=1,274`). **A-Rank Adept authors ×2.30; `magnitude_floor` 260 holds it at ×2.60**, the Section 7.2 ratchet doing exactly what 1.54 built it for. Categories: **Compound** (D); **Structural** (C); **Ward-breaking** (B); **Propagating** (A) — the rupture carries to one further target in contact with, or immediately behind, the first. **Successful uses 112 · qualifying scenes total 33 · mastery progress 0/3 toward Expert · rank ascensions 4 · magnitude_floor 260.** **Breakthrough B-Rank Master → A-Rank Adept at `EVT-000524`**, taken on the System Rank B ceiling lift. Baseline 150 → 375; DMG 689 → 1,274. **Section 7.2's *above Intelligence 105 the breakthrough road inverts* warning belongs to the E→D rung** — `(25+I)×2.30 = (10+I)×2.60` solves at I = 105 exactly — and on B→A the same equation inverts only above **Intelligence 1,575**. Full ascension history in `160_CAMPAIGN_CHRONICLE.md`."
      - "Flash Step [B-Rank] ★★★★☆ Expert · Mana 6 · close or break line-of-sight distance instantly, granting +1 modifier step to the follow-up action; at Expert the follow-up window covers the immediate action plus **three further exchanges** (Section 7.4's utility ladder). **Breakthrough C-Rank Master -> B-Rank Adept at `EVT-000504`**, gaining **Through the ward** (a closed ward or barrier-effect, held read required). Whole-scene window holds -- Section 7.2 saturates duration at one Rank above native. Mana 5 -> 6 is the earned road's price. **At its System Rank C+1 ceiling.** Retained: **Through the barrier** — the step crosses a closed constructed barrier (door, shutter, partition, hatch, fence) rather than only open distance, provided Alexander already holds a read of the far side (a prior look, a resolved Keen Sense, or a relayed Pattern), else it resolves as an uncertain action under Rules Section 4; it never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall (Section 7.3). **Successful uses 55 · qualifying scenes total 22 · mastery progress 1/3 toward Master · rank ascensions 2.** Two ascensions and one mastery advance before this span; full history in `160_CAMPAIGN_CHRONICLE.md`."
      - "Keen Sense [A-Rank] ★★★★☆ Expert · Mana 1 · +1 modifier step on detection **for the scene**, shared with **himself plus 7 allies** (8 subjects — A-Rank Adept computes `3 + 4 = 7` and **`scope_floor` 8 holds it at 8**; the ascension bought the category, not the count). Categories: **presence** (E); **intent and method** (D); **structure through barrier** (C) — the layout and extent of an unseen space beyond line of sight; **through concealment** (B) — pierces an *active* concealment effect or detection-blocking ward; **Provenance** (A) — the recent past of what he detects reads as clearly as its present: what passed through a place, how long ago, and which way it went. **Uses 74 · scenes 50 · mastery progress 1/3 toward Master · ascensions 4 · scope_floor 8.** **Advanced Adept → Expert at `EVT-000550`** (Priscilla Nakamura's bench, a third qualifying scene — structural reading applied to a live craft technique, materially distinct from the warehouse and the Prykowski stakeout); Mana 2 → 1, `mastery_progress` reset to 0. **A further qualifying scene at `EVT-000553`** (the Cicero Scar's BGM-area and interior structural reads) advanced progress to 1/3 toward Master. Four further applications this span — the trespass, the remains, the deeper pushes (`EVT-000554`) — credited to `successful_uses` under the same continuous scene, no further mastery point. **The withheld breakthrough was taken at `EVT-000524`**, System Rank B having lifted the ceiling exactly as this line predicted. **Advanced Expert → Master at `EVT-000419`** (superseded — Expert is current after this span's rune-ascension-equivalent breakthrough reset). Three breakthroughs; full ascension and per-use history in `160_CAMPAIGN_CHRONICLE.md`."
      - "Broken Rhythm [E-Rank] ★★★☆☆ Adept · Passive · Reading a live opponent's weight-shift and tell-cadence to react before the movement completes; +1 modifier step on evasion/reaction against any perceived attacker's telegraphed action — not limited to surprise/ambush exchanges the way Pre-empt is. Ratified at `EVT-000309`. **Mastery widens scope — 1/2/3/4/5 beneficiaries** (Novice through Master): at Novice it benefits Alexander alone, and each level extends the step to one further ally who can perceive him, against an attacker whose cadence he has read and named aloud; the ally reacts on the read as though it were his own. **Currently 2 — himself and one ally**, on the Practiced rung settled at `EVT-000396`. Authored at `EVT-000391`: every mastery axis is inapplicable to it, which is `F-014` on the mastery axis. **Successful uses 92 · qualifying scenes total 8 · mastery progress 2/3 toward Adept · scope_floor 0.**"
      - "Dagger Mastery [B-Rank] ★★★☆☆ Adept · Passive · adds **+0.95** to a Quickknife chassis multiplier (×0.75 → **×1.70**), on both equipped Quickknives (Section 7.4 +0.05/level, Expert). Categories: **Any blade** (D); **Thrown** (C). **Uses 175 · scenes 27 · mastery progress 1/3 toward Expert · ascensions 3.** **Advanced Adept → Expert across the two Crypt instant dungeons** (`EVT-000428`-`EVT-000435`), three dagger-bearing scenes crossing the third since `EVT-000390`. Two breakthroughs at `EVT-000390` (E→D→C) after the offer went unpresented from 2026-08-09; seven dagger-bearing scenes credited, uses +15 a reconciled figure. Both categories granted at `EVT-000391` — Profile 1.52's magnitude-axis ladder authoring rungs its held C-Rank already covered, a deferral paid rather than a new grant, and no number moved when they arrived. Until then this skill had ascended twice and gained nothing but a larger multiplier, which is what raised `F-014`."
      - "Twin Fang [C-Rank] ★★★☆☆ Adept · Mana 4 · while two Quickknives are equipped, follow one ordinary Quickknife strike against a single target with a separately rolled strike from the other Quickknife in the same action. Each strike uses only its own weapon power; the skill-enabled second strike has a **×2.00** Twin Fang mastery multiplier at C-Rank Adept — `1.00 + 0.35 × ranks above native + 0.15 × (level − 1)` (`EVT-000393`). Twin Fang occupies the action's offensive active-skill position and cannot combine with Rupture. **Successful uses 114 · qualifying scenes total 21 · mastery progress 1/3 toward Expert · rank ascensions 2 · magnitude_floor ×1.60.** **Records a successful use only when the enabled second strike lands and materially contributes** — an activation whose target dies to the first strike spends the Mana and credits nothing (`EVT-000512`). Two ascensions; full history in `160_CAMPAIGN_CHRONICLE.md`."
      - "Exploit Pattern [A-Rank] ★★★☆☆ Adept · Passive · a successful deliberate tactical read establishes an active Pattern on an opponent, behavior, weakness, or structure; +1 modifier step on every personal action genuinely exploiting it until the scene ends or it becomes invalid. Never restricts ordinary analysis; does not stack with another modifier from the same finding. **8 concurrent Patterns** — A-Rank Adept computes `3 + 4 = 7` and **`scope_floor` 8 holds it at 8**; the ascension bought the category, not the count. Categories: **Persistence** (D); **Group coordination** (C); **Composite read** (B) — two or more established Patterns read and exploited together as one; **Anticipatory** (A) — a Pattern reaches what the subject has **not yet done**: its next choice reads as an established tell, and he may exploit an action before it is declared. **Uses 66 · scenes 34 · progress 2/3 toward Expert · ascensions 4 · scope_floor 8.** **A qualifying scene at `EVT-000553`** — a structural Pattern established on the Cicero Scar's mineable seam geometry, a non-combat application of the Structure category, materially distinct from anything prior. Prior: **a qualifying scene at `EVT-000539`** — Sal Prykowski's operation. **Breakthrough B-Rank Master → A-Rank Adept at `EVT-000524`.** Four ascensions; full history in `160_CAMPAIGN_CHRONICLE.md`."
      - "Silent Step [E-Rank] ★★★★☆ Expert · Mana 3 · +1 modifier step on stealth and unseen-approach actions for the scene. **Mastery is scope — beneficiaries: 1→5, scene-long at every level** (Section 7.4). At Expert, **covers 4 — Alexander plus three allies** (the scope ladder is authored end to end, so this rung needs nothing invented). **Learned 2026-08-09 (`EVT-000235`)** from Dungeon 3's boss-drop rune. **Successful uses 12 · qualifying scenes total 11 · mastery progress 2/3 toward Master.** **A further application at `EVT-000554`** — the stealth crossing into the Cicero Scar's restricted core, Legendary success (natural 78 → effective 100); no new qualifying scene, same continuous exploration scene as the mining assignment it followed. **A second qualifying scene at `EVT-000541`** — the fenced-warehouse anchor approach, Legendary success (natural 91 → effective 100), materially distinct from the Prykowski stakeout. **A qualifying scene at `EVT-000539`** — a genuinely contested two-hour stakeout of Sal Prykowski's Bridgeport site, natural 28 → effective 88 under Perception, Silent Step, and Keen Sense stacked to the net cap; real stakes, clean exfil, first progress since the Expert breakthrough. **Advanced Adept → Expert at `EVT-000518`.** It needs terrain that can actually hide someone; a declared cast with nowhere to break to is refused before it costs anything (`EVT-000513`). **Advanced Novice → Practiced during the first Crypt instant dungeon** (`EVT-000428`), its third qualifying scene — first extended past Alexander alone, shared with Owen for both Crypt ambushes this session (`EVT-000428`, `EVT-000431`)."
      - "Mana Bolt [C-Rank] ★★★★☆ Expert · Mana 5 · **no distance limit, line of sight required** · a ranged bolt at **×1.45 of the C-Rank skill-rank baseline** (62, Section 7.2 — `native ×1.0 + 0.15 × (mastery_level - 1)`, Rank-independent, Rank entering through the baseline alone), resolving as `(62 + effective Intelligence + equipped focus power) × 1.45 × result multiplier` under Section 6.2 — **DMG 257 standard before reduction** at effective Intelligence 115 (`(62+115)×1.45=256.65`). **`magnitude_floor` 115 no longer binds.** Corrected at `EVT-000523`: this line had rendered ×1.15 for two mastery rungs. Intelligence governs uncertain control as it always did, and now governs the magnitude too (Profile 1.56); the die resolves whether it lands. **Successful uses 38 · qualifying scenes total 12 · mastery progress 0/3 toward Master · rank ascensions 1.** **Advanced Adept → Expert at `EVT-000518`; the Expert rung is applied at `EVT-000523` (×1.45).** The apparent contradiction — asserting ×1.15 while saying *Adept (+0.15) will be the first real gain past the floor* — was a stale rendering, not a design conflict: the sentence was written at Practiced and true then, and the line never followed the counter. **No distance limit; line of sight required** — the ladder relaxes the sense, not the reach, and it never crosses a Gate boundary, a Section 9.6 seal, or a Section 17 instance wall. Category held at D-Rank and carried through ascension: **Arcing** — the bolt bends around intervening cover, a known position sufficing where a clear line was required."
      - "Field Command [E-Rank] ★★★☆☆ Adept · Passive · relay one active Exploit Pattern by a brief actionable call to allies who can perceive and understand Alexander. Each recipient treats the Pattern as personally understood, needs no separate tactical read, and gains its +1 modifier step on genuinely exploiting actions; Alexander may update the call before a recipient's roll, never afterward. Ordinary communication conveys information but not the Pattern's mechanical benefit. **Scope is mastery's axis — 1→5 simultaneous recipients** (Section 7.4); at Adept, **3.** **Successful uses 19 · qualifying scenes total 8 · mastery progress 1/3 toward Expert.** Full relay history in `160_CAMPAIGN_CHRONICLE.md`; its heaviest single use was the Frozen Gallery (`EVT-000417`), where the one relay that mattered most was the one that failed."
      - "Resonance Extraction [D-Rank] ★★★☆☆ Adept · Passive · a successful read establishes a Resonance Pattern for one vein, +1 modifier step on extraction until exhausted/shifted. At Expert, three further miners may follow his calls (Section 7.4's scope ladder, 0/1/2/3/4 Novice through Master). **Uses 27 · scenes 15 · progress 1/3 toward Master.** **Five sitings at `EVT-000553`** (Cicero Scar, five separate veins across one continuous scene) — `successful_uses` 22 → 27, one qualifying scene credited. Passive, so the Mana axis does not apply. **Adept at `EVT-000342`** — legendary-sited B-Rank vein, 104 crystals."
      - "Flux Sight [A-Rank] · Stat Passive · reads Rank/Health/Mana of monsters and hunters; confirms Gates one Rank above System Rank; new at B, appraises an unidentified item's Rank/stats on sight (Section 4.4). **Uses 41 · Perception 69 · [S-Rank] held: System Rank ceiling** — it stands at A-Rank, which *is* the Section 4.4 ceiling (System Rank B + 1); that ceiling rose with System Rank B (`EVT-000515`), and S needs both Perception 80 and System Rank A. **+1 at `EVT-000539`** — passive read on the man handling the Prykowski site's off-manifest delivery: no Rank returned, consistent with an unawakened ordinary adult. Equipping **The Unmeasured** pushes it one Rank above its Section 4.4 ceiling, to **S**; earned, unequipped. +10 uses across the two Crypt instant dungeons (`EVT-000428`-`EVT-000435`) — every elite, boss, and straggler read passively on sight. Rose C→B at Checkpoint 0064 (Perception 68→54); Perception 68→60 at `EVT-000357` moves it no further. Flux Sight is authored to S-Rank so the Section 4.4 authoring clamp never binds it, but the **System Rank + 1 ceiling does**: at System Rank C its ceiling is B-Rank, where it already sits. Perception buys this skill nothing until System Rank reaches B — the A-Rank stat threshold at 66 would be held by the ceiling even if reached."
      - "Overpower [A-Rank] · Stat Passive · sustained restraint; break ranked structures; **redirection** — a foe he holds becomes a weapon, thrown or driven into another target with the strike transferring to it, and a creature can be shifted off its own footing mid-exchange, denying it a chosen line (Section 4.4). **Uses 5 · Strength 80 · [S-Rank] held: System Rank ceiling.** **Rose B → A at `EVT-000515`**: restrain up to three Ranks above, and **break ranked inanimate structures one Rank above the skill**. **Rose C→B at `EVT-000363`** on Strength banked since Checkpoint 0064, applied the instant Profile 1.48 lifted the authoring clamp. No Stat moved to earn it."
      - "Pre-empt [A-Rank] · Stat Passive · shared warning — allies act normally in a surprise exchange alongside him; **first blade** — in any exchange he opens he resolves before any opponent up to B-Rank acts, whatever order the fiction implies (Section 4.4). **Uses 19 · Agility 68 · [S-Rank] held: System Rank ceiling.** **Rose B → A at `EVT-000515`; first blade now runs up to A-Rank.** Held off the surprise penalty from his own botched entry (`EVT-000339`). **Rose C→B at `EVT-000363`** — the only one of the four bought deliberately: Agility 67→54 at `EVT-000360` was the last 2 of that session's 56 points, spent purely for this threshold, effective Agility 67 having long saturated the Section 4.3 margin at +2."
      - "Conduit [A-Rank] · Stat Passive · Mana recovery **+25 percentage points** at both Section 5.2 rates — **35%/hr active, 50%/hr resting** against the 10/25 baseline (A-Rank rung, `EVT-000515`). **Uses 0 · Intelligence 112 · [S-Rank] held: System Rank ceiling.** **Rose B → A at `EVT-000515`.** Held rung rose A→S at `EVT-000487`: base Intelligence 84→80 reaches the S threshold exactly. Rank actual unchanged at B under the ceiling. **Replaced Multitask at `EVT-000365`** (Profile 1.49): non-daily quest capacity was a ceiling that never bound in ninety in-fiction days — Multitask's own use counter read 0 against 8/4/2/1 for the other four — so capacity moved to System Rank (Section 8.4) and Intelligence took the resource it actually owns. Rank derives from the same Intelligence 84 Multitask held, so no Stat moved in the exchange. Composition order is fixed (Section 5.2): base, Conduit, environmental halving, then any title multiplier; a Frozen Gallery halves 30/45 rather than 10/25. It cannot reach inside a fight — recovery settles from elapsed time, an exchange is not an hour, and Section 5.3's exhaustion is untouched."
      - "Bulwark [E-Rank] ★★★☆☆ Adept · Mana 8 · 60% physical damage reduction for one exchange; reductions multiply, never add, so no stack reaches immunity. **Successful uses 6 · qualifying scenes total 6 · mastery progress 0/3 toward Expert.** **Mastery advanced Practiced → Adept in the 2026-08-09 Dungeon 1 boss fight (`EVT-000232`)**, its third qualifying scene at Practiced, breaking the boss's grapple."
      - "Shrug Off [A-Rank] · Stat Passive · ignores minor-wound penalty; **threshold absorption** — once/scene, a hit crossing the injury threshold inflicts damage only; **total suppression** — **every** wound's modifier-step penalty is suppressed until scene end rather than one, and environmental hazards up to B-Rank cause no onset at all rather than halved onset (Section 4.4). **Uses 5 · Vitality 126 · [S-Rank] held: System Rank ceiling.** **Rose B → A at `EVT-000515`. Threshold immunity covers a creature MORE THAN ONE Rank below the skill, so at A it does not cover B-Rank** — misread once and corrected at `EVT-000517`. **Triggered for the first time** (`EVT-000340`) — a 266-dmg critical vs. 232 max Health inflicted damage only, no classified injury. Vitality 115→95→100 across `EVT-000357` and `EVT-000360` carried it past the 66 (A) and 80 (S) thresholds in one session. **Rose C→B at `EVT-000363`**; the authoring clamp is gone and the **ceiling binds alone**, holding a full S-Rank of Vitality against System Rank C — A at level 40, S at level 50."
      - "Mend [E-Rank] ★★★★☆ Expert · Mana 5 · restores Health at **×1.45 of the E-Rank skill-rank baseline** (14.5 before focus, Section 7.4), controls bleeding but does not clear a wound's severity. **Successful uses 28 · qualifying scenes total 11 · mastery progress 2/3 toward Master.** **+7 uses/+1 scene at `EVT-000472`** — seven field-touches closing Owen 145→275/275 after the first instant-dungeon clear, one continuous downtime scene crediting once. **Advanced Adept → Expert at `EVT-000430`** — three self-heals between the two Crypt dungeons (one strong success, one major failure crediting nothing, one success), the third landed cast crossing the threshold. Mana cost 5, Section 7.4's −10%-per-level rounding leaves it unchanged from Adept."
      - "Dimensional Projection [E-Rank] ★★☆☆☆ Practiced · Mana 6 · **1 projectile · range 5 m** · withdraw one or more owned portable objects into visible, unoccupied points within range and immediately launch them at perceived targets as a **named multi-strike** (Section 6.2) — **one ranged physical strike per projectile**, **Agility to hit**, ordinary Bearer physical-damage formula reading *that object's* power and chassis. Projectiles **split freely across targets in range**; each deployment point must independently satisfy placement, and a failure to place one does not spend the others. Needs line of sight and a clear path; never inside a creature, object, barrier, worn equipment or occupied space, never through a sealed barrier or at an unperceived location. Launched objects are real afterward and land where the fiction puts them. **Recovery is Section 12.9 remote storage — they come straight back, never an errand — but inside an exchange that spends the exchange's one inventory change however many were launched, so at native Rank he may launch *or* recover, never both** (`EVT-000438`). A stored weapon grants no equipped Stat bonus; junk is legal and nearly worthless while ranked steel carries its Section 11.5 power. Holds the action's offensive active-skill position — no combining with Rupture, Twin Fang or a split dual strike. Mana is paid **once for the action**, never per projectile. Mastery: **projectiles 1/2/2/3/3**, range **5/7/10/15/20 m**, Mana **6/5/5/4/4**; **+1 projectile and +3 m per Rank above native**. Ratified at `EVT-000436`. **Successful uses 9 · qualifying scenes total 5 · mastery progress 2/3 toward Adept · rank ascensions 0 · magnitude_floor 0**."
      - "Sprint [C-Rank] ★☆☆☆☆ Novice · Mana 3 · +1 modifier step on movement, pursuit, and distance-closing actions, **for the whole scene** — Section 7.2 saturates duration at one Rank above native and C is one above the D it was ascended from, so the window is Rank-derived and no longer mastery-derived. Categories: **Broken ground** (D) — the step holds across footing that would otherwise demand its own check; **Vertical** (C) — vertical and overhanging surfaces count as ground while the effect holds. **Successful uses 13 · qualifying scenes total 12 · mastery progress 0/3 toward Practiced · rank ascensions 2.** **Rune-ascended D-Rank Adept → C-Rank Novice at `EVT-000547`** — a stored inventory comparison had gone stale (Sprint had already broken through past the rune's assumed baseline); corrected before consumption. Mastery reset to Novice; lifetime `successful_uses`/`qualifying_scenes_total` carried forward unchanged. Not used since ascension."
      - "Rift-step [Riftwalker] · Class ability · Mana 6 · **once per exchange** · a true teleport to any point in **line of sight**, and at System Rank B also **through an obstruction he has perceived past**. **Grants +1 modifier step to the immediate follow-up action.** Reach is sight, not distance — no metre figure until A-Rank. **A step to a set anchor does not consume this once-per-exchange step** and is priced separately (`system_state.riftwalker`). **Owner ruling (`EVT-000551`): a passenger may be carried below S-Rank while physical contact is maintained through the step, at 10× ordinary Mana cost** until System Rank S normalizes it. **Successful uses 5** — first use `EVT-000549` (solo, home), two passenger steps `EVT-000551` (balcony, then home), one solo step `EVT-000553` (reclaimed-edge anchor), one solo step `EVT-000554` (warp heart back to the reclaimed edge). Granted `EVT-000519`."
      - "Micro-rift deflection [Riftwalker] · Class ability · Mana 8 · **a reaction**, not an action · **60% damage reduction** on one incoming hit at System Rank B, composing **multiplicatively** under Section 7.3, or turns a projectile aside. 70% at A-Rank. **Successful uses 0.** Granted `EVT-000519`."
    skill_rulings:
      support_role_kill_xp_contribution_evt_000264: "**STANDING RULING (2026-08-11, player instruction, `EVT-000264`).** Active patrol-and-intel support from Alexander counts as live contribution toward his own Kill XP under Rules Section 3.3's 'live-die actions materially contributed' clause, even without a separate rolled setup action per engagement — so long as he is genuinely engaged (watching, ready to call a warning) rather than idle. Supersedes the default reading that only a separately-rolled setup or control action counts. Governs all future support-only encounters the same way, not just this one."
      keen_sense_evt_000212: "Promotion-barrier correction at EVT-000214: the legendary D-Rank Keen Sense result validly established both items' operating intent and method, but not either item's Rank, origin, or full appraisal. Those details remain unconfirmed; reliable item Rank/full appraisal requires Flux Sight at B-Rank (Profile Sections 4.4 and 7.3). This ruling supersedes the earlier overbroad phrase in the historical skills_known trace without changing the successful use, qualifying-scene credit, purchase, or observed functions."
      dagger_mastery_evt_000210: "Profile 1.31, adopted in the 1.30→1.36 chain at EVT-000210, resolved the Checkpoint 0041 authoring gap. Dagger Mastery Expert adds +0.25, so each Quickknife's chassis multiplier is ×1.00. This supersedes the embedded historical 1.30 hold note in skills_known; no authoring gap remains. The superseded note was still being rendered as a live gap in session summaries; it was struck from the skills_known line at EVT-000230. The remainder of the track is authored and needs nothing further: Master adds +0.30 (Section 7.4's +0.05-per-level passive-multiplier ladder), reached on three qualifying dagger scenes at Expert, and each Rank above native E adds a further +0.25 (Section 7.2)."
      ascetic_claim_timing_evt_000357: "**RULED AT CLAIM (2026-08-11, `EVT-000522`).** *Grants* fires when the entry is **claimed**, not when it is issued — so the equipped state at the moment of collection is what pays. **This awards no retroactive point**: `EVT-000357`'s declared order was claim-then-equip, so Ascetic was still unequipped at the instant of claim and the issued +3 stands. What it changes is everything after: an entry issued at 06:00 with Ascetic out is no longer locked at +3, and the title slot becomes a decision made at collection rather than a 06:00 deadline. Prior status, superseded: **OPEN — owner ruling required; unauthored at the seam.** Ascetic reads 'each daily-quest Ability Points reward grants +4 points instead of +3' (Section 16.2). The twenty-first daily's reward was **issued** at 06:00 on 2026-08-14 as a `+3` entry (Section 3.9 stores the value in the pending entry), while Ascetic was both unearned and unequipped; it was **claimed** at ~14:30 in the same exchange that equipped Ascetic. Section 16.3 says only an equipped title's passive applies and that a newly equipped passive applies from the next resolved action, never retroactively — which settles that the passive cannot reach an already-issued entry, but does not settle whether 'grants' fires at issue or at claim. Settled at the **issued +3** because the player's declared order was claim-then-equip; if ruled the other way, `unspent_points` gains 1. From the twenty-second daily onward the +4 applies unambiguously and this ruling does not reach it."
    tracked_counters:
      - { path: skills.keen_sense.scope_floor, baseline_value: 0, baseline_as_of: EVT-000210, current_value: 8 }
      - { path: skills.exploit_pattern.scope_floor, baseline_value: 0, baseline_as_of: EVT-000210, current_value: 8 }
      - { path: skills.field_command.scope_floor, baseline_value: 0, baseline_as_of: EVT-000210, current_value: 0 }
      - { path: skills.resonance_extraction.scope_floor, baseline_value: 0, baseline_as_of: EVT-000210, current_value: 5 }
      - { path: skills.silent_step.scope_floor, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 0 }
      - { path: skills.stone_skin.successful_uses, baseline_value: 3, baseline_as_of: EVT-000130, current_value: 11 }
      - { path: skills.stone_skin.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 8 }
      - { path: skills.stone_skin.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.rupture.successful_uses, baseline_value: 16, baseline_as_of: EVT-000130, current_value: 112 }
      - { path: skills.rupture.qualifying_scenes_total, baseline_value: 8, baseline_as_of: EVT-000130, current_value: 33 }
      - { path: skills.rupture.mastery_progress, baseline_value: 2, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.flash_step.successful_uses, baseline_value: 6, baseline_as_of: EVT-000130, current_value: 55 }
      - { path: skills.flash_step.qualifying_scenes_total, baseline_value: 4, baseline_as_of: EVT-000130, current_value: 22 }
      - { path: skills.flash_step.mastery_progress, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 1 }
      - { path: skills.keen_sense.successful_uses, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 74 }
      - { path: skills.keen_sense.qualifying_scenes_total, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 50 }
      - { path: skills.keen_sense.mastery_progress, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 1 }
      - { path: skills.broken_rhythm.successful_uses, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 92 }
      - { path: skills.broken_rhythm.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 8 }
      - { path: skills.broken_rhythm.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 2 }
      # Profile 1.52 (EVT-000391): Broken Rhythm and Mana Bolt were acquired after the
      # EVT-000158 adoption batch and never received the mastery_level and rank_ascensions
      # entries Section 7.5 has required as authoritative stored state ever since; Silent
      # Step, learned in the same window, has both. Baselines equal min(5, 1 + floor(scenes
      # / 3)) — the level each skill already holds — so adoption changes no value.
      - { path: skills.broken_rhythm.mastery_level, baseline_value: 1, baseline_as_of: EVT-000308, current_value: 3 }
      - { path: skills.broken_rhythm.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 0 }
      # Profile 1.52 authored Broken Rhythm's mastery track as the scope axis, so it
      # carries a scope_floor under Section 7.2's ratchet like every other scope skill.
      # 0 — it has never ascended, and the floor binds only after a first ascension.
      - { path: skills.broken_rhythm.scope_floor, baseline_value: 0, baseline_as_of: EVT-000308, current_value: 0 }
      - { path: skills.dagger_mastery.successful_uses, baseline_value: 2, baseline_as_of: EVT-000130, current_value: 175 }
      - { path: skills.dagger_mastery.qualifying_scenes_total, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 27 }
      - { path: skills.dagger_mastery.mastery_progress, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 1 }
      - { path: skills.twin_fang.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 114 }
      - { path: skills.twin_fang.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 21 }
      - { path: skills.twin_fang.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 1 }
      - { path: skills.exploit_pattern.successful_uses, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 66 }
      - { path: skills.exploit_pattern.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 34 }
      - { path: skills.exploit_pattern.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 2 }
      - { path: skills.mana_bolt.successful_uses, baseline_value: 0, baseline_as_of: EVT-000303, current_value: 38 }
      - { path: skills.mana_bolt.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000303, current_value: 12 }
      - { path: skills.mana_bolt.mastery_progress, baseline_value: 1, baseline_as_of: EVT-000304, current_value: 0 }
      - { path: skills.mana_bolt.mastery_level, baseline_value: 1, baseline_as_of: EVT-000303, current_value: 4 }
      - { path: skills.mana_bolt.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000303, current_value: 1 }
      - { path: skills.mana_bolt.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000303, current_value: 115 }
      - { path: skills.field_command.successful_uses, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 19 }
      - { path: skills.field_command.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 8 }
      - { path: skills.field_command.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 1 }
      - { path: skills.resonance_extraction.successful_uses, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 27 }
      - { path: skills.resonance_extraction.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 15 }
      - { path: skills.resonance_extraction.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000132, current_value: 1 }
      - { path: skills.flux_sight.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 41 }
      - { path: skills.overpower.successful_uses, baseline_value: 1, baseline_as_of: EVT-000130, current_value: 5 }
      - { path: skills.pre_empt.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 19 }
      - { path: skills.conduit.successful_uses, baseline_value: 0, baseline_as_of: EVT-000365, current_value: 0 }
      - { path: skills.bulwark.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 6 }
      - { path: skills.bulwark.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 6 }
      - { path: skills.bulwark.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 0 }
      - { path: skills.shrug_off.successful_uses, baseline_value: 0, baseline_as_of: EVT-000141, current_value: 5 }
      - { path: skills.mend.successful_uses, baseline_value: 0, baseline_as_of: EVT-000148, current_value: 28 }
      - { path: skills.mend.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000148, current_value: 11 }
      - { path: skills.mend.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000148, current_value: 2 }
      - { path: skills.sprint.successful_uses, baseline_value: 0, baseline_as_of: EVT-000149, current_value: 13 }
      - { path: skills.sprint.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000149, current_value: 12 }
      - { path: skills.sprint.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000149, current_value: 0 }
      # Rune-ascended D-Rank Adept -> C-Rank Novice at EVT-000547; mastery_level resets,
      # lifetime successful_uses/qualifying_scenes_total carry forward unchanged.
      - { path: skills.silent_step.successful_uses, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 12 }
      - { path: skills.silent_step.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 11 }
      - { path: skills.silent_step.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 2 }
      - { path: skills.silent_step.mastery_level, baseline_value: 1, baseline_as_of: EVT-000235, current_value: 4 }
      - { path: skills.silent_step.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000235, current_value: 0 }
      # Dimensional Projection, ratified at EVT-000436. Counters initialize at zero
      # (Section 7.1: pre-ratification evidence never backfills). Its mastery axis is
      # range, a magnitude, so it carries magnitude_floor and no scope_floor.
      - { path: skills.dimensional_projection.successful_uses, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 9 }
      - { path: skills.dimensional_projection.qualifying_scenes_total, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 5 }
      - { path: skills.dimensional_projection.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 2 }
      - { path: skills.dimensional_projection.mastery_level, baseline_value: 1, baseline_as_of: EVT-000436, current_value: 2 }
      - { path: skills.dimensional_projection.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 0 }
      - { path: skills.dimensional_projection.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000436, current_value: 0 }
      # Profile 1.26 (EVT-000158): mastery_level becomes authoritative stored state rather than a value
      # derived from qualifying_scenes_total, because Section 7.5 ascension resets mastery while the
      # lifetime scene count never resets. Every baseline below equals min(5, 1 + floor(scenes / 3)) —
      # the skill's existing level — so adoption changes no value. Stat-milestone skills have no
      # mastery track (Section 7.4) and carry neither counter.
      - { path: skills.stone_skin.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 1 }
      - { path: skills.rupture.mastery_level, baseline_value: 5, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.flash_step.mastery_level, baseline_value: 4, baseline_as_of: EVT-000158, current_value: 4 }
      - { path: skills.keen_sense.mastery_level, baseline_value: 3, baseline_as_of: EVT-000158, current_value: 4 }
      - { path: skills.dagger_mastery.mastery_level, baseline_value: 3, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.twin_fang.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.exploit_pattern.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.field_command.mastery_level, baseline_value: 1, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.resonance_extraction.mastery_level, baseline_value: 1, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.bulwark.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 3 }
      - { path: skills.mend.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 4 }
      - { path: skills.sprint.mastery_level, baseline_value: 2, baseline_as_of: EVT-000158, current_value: 1 }
      - { path: skills.stone_skin.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 1 }
      - { path: skills.rupture.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 4 }
      - { path: skills.rupture.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 260 }
      - { path: skills.flash_step.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 2 }
      - { path: skills.keen_sense.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 4 }
      - { path: skills.dagger_mastery.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 3 }
      # Profile 1.54 magnitude ratchet, stored in HUNDREDTHS because a tracked counter is an
      # integer (Decision 079). 55 = the +0.55 chassis held at D-Rank Master immediately before
      # the C ascension; the current +0.70 exceeds it, so the floor does not bind.
      - { path: skills.dagger_mastery.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 80 }
      - { path: skills.stone_skin.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 40 }
      - { path: skills.bulwark.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 0 }
      - { path: skills.twin_fang.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 2 }
      # Profile 1.54 (EVT-000393): the Section 7.2 magnitude ratchet. Twin Fang is the
      # case that required it — Rank reached the technique on no axis, so ascension reset
      # the whole multiplier and lost 37.5%. 0: never ascended, and the floor binds only
      # after a first ascension.
      - { path: skills.twin_fang.magnitude_floor, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 195 }
      - { path: skills.exploit_pattern.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 4 }
      - { path: skills.field_command.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 0 }
      - { path: skills.resonance_extraction.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 1 }
      - { path: skills.bulwark.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 0 }
      - { path: skills.mend.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 0 }
      - { path: skills.sprint.rank_ascensions, baseline_value: 0, baseline_as_of: EVT-000158, current_value: 2 }
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
      - { path: skills.rift_step.successful_uses, baseline_value: 0, baseline_as_of: EVT-000519, current_value: 5 }
      - { path: skills.micro_rift_deflection.successful_uses, baseline_value: 0, baseline_as_of: EVT-000519, current_value: 0 }
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
    gold: 129341
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
        # Instant-dungeon keys (Section 17).
        - "**Instant-Dungeon Key [E-Rank] × 1 (second)** — the Overgrown Temple's own shrine bonus roll (`EVT-000327`, 🎲 d100 89). Banked, unused."
        - "**Instant-Dungeon Key [B-Rank] × 1** — the boss drop from the Crystal Key's own instance (`EVT-000501`, 🎲 d100 89 → the 81-90 band, at the Gate's Rank). A plain B-Rank key with no Premium modifier; catalogue value 45,000 g. Banked, unused. **The Crystal Key that opened that instance is spent** (`EVT-000499`) — a key is spent whether or not anything inside dies, and this one returned 158 crystals, 3 cores and its own replacement."
      consumables:
        # Spent on use and gone (Sections 12.5, 12.7).
        - "**Lesser Mana Potion x7** — was 8 as of `EVT-000368`. **1 drunk at `EVT-000473`** restoring Mana toward full between the first and second Frozen Gallery clears this span (+20 Mana), stock **8 → 7**. Banked, unwithdrawn."
        - "Mender's Seal — clears one Minor injury, or reduces one Moderate injury to Minor; restores no Health (Section 12.5) · purchased via the 2026-07-30 Daily Premium cycle, 1,200 g (`EVT-000088`) · banked, unused"
        - "**Stabilization Seal x4** — was 1; **+3 bought from Daily Premium, Prismatic cycle, 2026-08-19 for 450 g** (`EVT-000548`) — suspends a Critical injury's untreated death risk for 24 hours; restores no Health, clears no severity (Section 12.5) · banked, unused"
        - "**Lesser Healing Potion x9** — was 12; **3 drunk at `EVT-000502`** recovering from the elite's critical (+78 of a possible 90, the third capping out). Chain before that, retained: corrected from a stale 8 at `EVT-000368`. Chain: **8** at the `EVT-000216` anchor (`120_INVENTORY_AND_OWNERSHIP.md` states it), **+3** Daily Random Box cache at `EVT-000302`, **+1** box cache at `EVT-000316`. None drunk, sold, or given since `EVT-000197`. The 8 was the 2026-08-08 figure and never absorbed either later cache."
        - "Standard Mana Potion x5 — was 4; **+1 from the third Crypt's boss-drop potion cache** (`EVT-000507`, 🎲 d100 66 → cache, 🎲 d4 2). Earlier chain, retained: was 5 as of `EVT-000423`. **1 drunk at `EVT-000473`** restoring Mana toward full between the first and second Frozen Gallery clears this span (+40 Mana), stock **5 → 4**."
        - "Antidote x2 (banked, unwithdrawn)"
        - "**Standard Healing Potion x2** — line reopened; the third Crypt's boss-drop potion cache (`EVT-000507`, 🎲 d4 2 → 2 healing, 1 mana), standard tier for a C-Rank Gate. Banked, unused."
        - "**Skill Rune — Keen Sense [C-Rank]** — boss drop, third Crypt (`EVT-000507`, 🎲 d100 51 → rune, 🎲 d8 6). **`unbound-awakened`, so NPC-eligible.** **Inert to Alexander**: he holds Keen Sense at [A-Rank] Expert and Section 7.5 ascends only instruction *above* current Rank, so it teaches him nothing and stays intact and owned. One of very few transferable instructional items he has ever held."
        - "**Restoration Draught x1** — restores Health and Mana to full in one action; clears no injury severity (Section 12.5's Premium Consumable table) · Daily Premium, Prismatic series, bought 2026-08-19 for **900 g** (`EVT-000496`) · an authored fixed-price Premium model, not derived from an ordinary anchor · once withdrawn it is an ordinary object and works in anyone's hand · banked, unused"
        - "**Greater Healing Potion x10** — restores Health to full · Daily Premium, Prismatic cycle, bought 2026-08-19 for **7,500 g** (`EVT-000548`) · banked, unused"
        - "**Greater Mana Potion x5** — restores Mana to full · Daily Premium, Prismatic cycle, bought 2026-08-19 for **2,400 g** (`EVT-000548`) · banked, unused"
        - "**Elixir of a stat x1** — +1 base stat permanent, max 3 lifetime per stat for the Bearer, uncapped on another awakened (Section 12.5.1) · bought 2026-08-19 for **5,000 g** (`EVT-000548`) · **owner ruling: the stat is fixed at consumption, not purchase** — banked unassigned"
      special:
        # Worth not mechanical, or function/Rank/provenance unresolved.
        - "**Frost-fused carapace plating [B-Rank] × 1 lot** — five pieces (four spine/back plates about the size of a car door, plus the skull plate) cut from the B-Rank Frozen Gallery boss (`EVT-000502`). **Flux Sight returns no Rank and no stats on it — not *unidentified*, uncategorised:** the System priced that kill at one core, one crystal and a key and considers the matter closed, while the plating reads as carrying real residual mana that the System has no category for. **RULED [B-Rank] at `EVT-000522`** under Profile 1.72's Section 11.1 rule that every holding carries a Rank, defaulting to its source's — here a B-Rank instance boss, recorded. **Function remains unidentified, which under 1.72 is a statement about identification rather than about Rank.** Value and effect still unauthored. Prior authoring, superseded: **given no value, no effect and no Rank** — whether B-Rank plating is worth anything, and whether it can be infused, is exactly the beast-part question already queued for Priscilla Nakamura (`ENT-000203`). **Wants an owner ruling before it is treated as canon with mechanical weight.** Cores are what artificers forge from (Section 12.8); this is not a core."
        - "**Half-finished leather piece** — recovered from the same dock sweep (`EVT-000326`), same maker's stamp as the wallet and the dagger, mid-work when abandoned. No combat stats — unfinished. Banked."
        - "**Crumpled work order** — recovered from the dock's manual search (`EVT-000326`, strong success), handwritten, references 'the consultation' moved to an unnamed street after Tuesday. No address number. A real, unresolved lead."
        - "**Torn visitor-badge fragment** — recovered alongside the work order (`EVT-000326`), printed 'CONSULT — TEMP,' no logo, no name. A real, unresolved lead."
        - "**Ironline trial roster report, unfiled** — the physical folder Wade Bishop brought to the Region V lot for review under the `EVT-000345` terms, drawn into the dimensional inventory at `EVT-000384` once the lot was empty. Three pages on Ironline letterhead: the payout breakdown matching the texted $221,540 exactly, Alexander's retroactive same-day inclusion as contributing field lead, and a **roster of eight** against the five people actually present — **Priyanka Osei, Marcus Delray, and Toby Fenwick** listed as combat-rated and on site, all three drawn from Brannigan's office's bench roster and none of them there. **Documentary evidence of a falsified filing**, held by Alexander rather than Wade. **Whether Wade can still file without it is unestablished and was never discussed.** No mechanical line; worth is entirely evidentiary."
      gear:
        # Section 11.5 item lines while stored, plus tools and instruments.
        - "**Keyed document wallet [C-Rank]** — bought from Elias Ward 2026-08-13, bundled with the sensor rig below for $800 cash total (`EVT-000323`), negotiated past his stated one-item-or-the-other policy (legendary success). Rank auto-identified on banking (real d6 roll: 3 → C-Rank, `EVT-000323`). A deliberately fussy lock — false gates, tighter tolerances than its apparent $300 grade — beaten via an Exploit Pattern read plus the Unlicensed Lockpick Set (`EVT-000324`, legendary success). Empty inside; a hidden second lining seam carries an unidentified maker's stamp, later tentatively linked (unconfirmed) by Walt Adamik to Marnie's own hand. Currently open, no key, banked."
        - "**Unmarked motion-sensor rig [D-Rank]** — bundled with the wallet above, same purchase, same auto-identify roll (real d6: 2 → D-Rank, `EVT-000323`). Battery-powered, unbranded housing. A Keen Sense read (`EVT-000323`, success) established its operating intent: built to log detected movement to a remote destination rather than display it locally — surveillance hardware, not simple security. Where the log goes, and who reads it, remain unread. Banked, untested outside the shop."
        - "**Adaptive Bastion Torso [E-Rank]** — Vitality +3, physical reduction 6%. Bought via the 2026-07-29 Daily Premium cycle for 120 g (`EVT-000083`) and worn continuously from `EVT-000094` until **retired at `EVT-000385`**, when the Watcher Torso [B-Rank] took the slot. Banked, unequipped, unsold."
        - "**Ascendant Hunter's Band [E-Rank]** — accessory, Strength +4. Bought via the 2026-07-29 Daily Premium cycle for 160 g (`EVT-000083`) and worn in accessory slot 1 from that day until **retired at `EVT-000385`**, when the Warded Vambrace [A-Rank] took the slot. Banked, unequipped, unsold. The D-Rank Band (Strength +5) remains equipped in slot 2."
        - "Bastion Torso [E-Rank] — Vitality +2 (1 base + Carapaced Boss Imprint +1), physical reduction 3%. Overgrown Temple bonus loot roll from the collapsed rail cutting Gate boss (`EVT-000265`, 2026-08-11). Banked, unequipped — Alexander's torso slot is filled by the Adaptive Bastion Torso [E-Rank]."
        - "Gate Direction Finder [E-Rank] — handheld directional instrument bought from Elias Ward (`ENT-000177`) for $800 cash (`EVT-000216`), with calibration key and six-month warranty. Points toward the strongest nearby active Gate signature but gives no distance, identity, or Rank. Owned and carried; no Gate was located during its first use."
        - "Titan Legs [D-Rank] — Strength +2, Serpentine Boss-Imprint +1 Agility. Dungeon 1's Armory-Key guaranteed drop, `EVT-000232`. Banked, **unequipped**."
        - "Watcher Feet [D-Rank] — Perception +2, Serpentine Boss-Imprint +1 Agility. Dungeon 1's boss's own separate drop, `EVT-000232`. Banked, **unequipped**."
        - "Suppression Emitter [E-Rank] — unmarked matte-black cylinder, stripped decommissioned surveillance-suppression hardware; blinds instrument-based anomaly/Gate-signature detection in a 3-meter radius. Does not affect personal perception, awakened senses, or System-side detection. Max continuous operation 20 minutes; recharges 1 minute per 5 inactive. Illegal to hold in its own right given its origin. Rank resolved by d6 roll, not appraisal (`EVT-000216`) — items in Alexander's System inventory auto-identify in full once owned, correcting the earlier note that Flux Sight was required. Bought from Walt Adamik for 15 E-Rank cores alongside the item below. **Deliberately activated a second time at `EVT-000541`**, held live at the fenced warehouse (`ENT-000166`) rather than on a mundane target — caught its field react to something instrument-based reaching for it, confirming an undisclosed anomaly-sensing layer exists there that its label had never named a target for. First time this item's stated function was actually tested rather than assumed."
        - "Unlicensed Lockpick Set [B-Rank] — awakened-made, unlicensed locksmith's work; reads a lock's mechanism and reshapes to fit before seating, guiding tension/pin manipulation by feel; detects ordinary traps; retains no copy of an examined lock. Effective up to B-Rank; cannot open electronics, bypass passwords/biometrics, or beat an inaccessible or actively-opposed lock. No combat application. Rank resolved by d6 roll (`EVT-000216`), same correction as above. Bought from Walt Adamik alongside the item above. Used twice on Alexander's own deadbolt (d100 20 success; d100 58 legendary) and dry-tested on a latch, a padlock, and a bag zipper."
        - "**Directional listening rig** — mundane make, no awakened function. Bought from Walt Adamik for $650 cash (`EVT-000373`), off a decommissioning crew's stock. Picks a conversation out of ambient noise at range with a clean line on the source. Untested by Walt or Alexander. Banked, unused."
        - "**Longsword [D-Rank]** — boss drop from the 2026-08-16 Frozen Gallery instant dungeon (`EVT-000417`, 🎲 d100 7 → equipment, 🎲 d20 4 → Longsword). All-Strength weapon budget (Strength +4), weapon power 4, armed strike ×0.85. Carries a **Boss Imprint**: Serpentine body family (+1 further Agility), Impact signature (Echo: once/scene, +1 modifier step resisting stagger or knockdown from a single hit). Condition Excellent. Banked, **unequipped** — a lighter twin of the **Longsword [C-Rank] given outright to Owen Callahan three hours earlier at `EVT-000416`**, which left this list with that gift and is now tracked on `ENT-000139`. Currently spare; Alexander's main hand remains the S-Rank dagger."
        - "**Quickknife [C-Rank]** — Good · Agility +7 · weapon power 7 · armed strike ×0.75. Bought for 2,000 g on 2026-07-27 (`EVT-000069`) and carried as main hand until the S-Rank dagger took that slot mid-fight at `EVT-000339`, displacing the Ghost Quickknife to off-hand and this blade out of the loadout entirely. Banked, unequipped. **Restored to this list at `EVT-000407`** — `120_INVENTORY_AND_OWNERSHIP.md` recorded it as banked at `EVT-000339` and it was never given a holding line here, so it rendered in no `/system gear` panel."
        - "**Quickstep Charm [D-Rank]** — accessory · Agility +2. Beast Den instant-dungeon loot, 2026-08-12 (`EVT-000303`). Banked, unequipped — both accessory slots are filled by the Warded Vambrace [A-Rank] and the Ascendant Hunter's Band [D-Rank]. **Restored to this list at `EVT-000407`**, carried in `180_CURRENT_STATE.md`'s banked-and-unequipped line and in `120_INVENTORY_AND_OWNERSHIP.md` but absent from the rendered inventory."
        - "**Arcanist Torso [D-Rank]** — torso armor · Intelligence +2 · physical reduction ≈6%. Shattered City instant-dungeon loot, 2026-08-12 (`EVT-000304`). Banked, unequipped — the torso slot holds the Watcher Torso [B-Rank]. **Restored to this list at `EVT-000407`**, same omission class as the two entries above."
        - "**Horizon Gale Coif [D-Rank]** — Gale head armor · Good · Agility +2 · physical reduction 5% · purchased at Horizon Outfitters, $3,000 (`EVT-000094`). Worn continuously in the head slot until **retired at `EVT-000425`**, when the Adaptive Titan Coif [B-Rank] took the slot. Banked, unequipped, unsold."
        - "**Horizon Gale Gauntlets [C-Rank]** — Gale hands armor · Good · Agility +3 · physical reduction 8% · purchased at Horizon Outfitters, $12,500 (`EVT-000094`). Worn continuously in the hands slot until **retired at `EVT-000429`**, when the boss-dropped Gale Hunter's Gauntlets [C-Rank] took the slot. Banked, unequipped, unsold."
        - "**Mana Reservoir [C-Rank]** — a small dense stone, now faintly warm, its veined light settled and steady. Bought from Walt Adamik 2026-08-17 for $2,500 cash (`EVT-000446`); a genuine **passive Mana battery — unbound to any Bearer**. **Capacity ruled and authored at `EVT-000479`: 125**, matching Section 6.1's C-Rank Rank Mana figure (the same pool a fixed-Rank C hunter carries) — owner ruling, since the profile asserted no figure of its own. **Drawn to 17/125 at `EVT-000518`.** Filled to 125/125 by a direct 1:1 transfer from Alexander's own Mana pool (144→19), then **drawn back out 1:1 inside the Class Quest trial** — 108 into a pool sitting at 88/196, seventeen stranded because the pool capped first. **The draw mechanic was unauthored and is authored there: 1:1 out, as it went 1:1 in**, the conservative reading since he withdraws Mana he personally paid in and creates none. **Owed the player's confirmation at promotion** (`EVT-000520`) rather than passed silently into canon. Section 18.2.2 did not block it — its suspension list is closed and specific and a Mana Reservoir is none of the four. `unbound` still the load-bearing word — usable by someone other than Alexander, relevant next to `OBJ-18`. Never carried in a Gate. Banked."
        - "**Bastion Legs [D-Rank]** — Vitality +2, physical reduction 5%. Worn continuously from `EVT-000228` until **retired at `EVT-000480`**, when the Warded Greaves [C-Rank] took the slot. Banked, unequipped, unsold."
        - "**Arcanist Feet [D-Rank]** — Intelligence +2, physical reduction 5%. Worn continuously from `EVT-000228` until **retired at `EVT-000481`**, when the C-Rank Arcanist Feet took the slot. Banked, unequipped, unsold."
        - "**Ascendant Mindspun Loop [C-Rank]** — accessory · Intelligence +4. Daily Random Box drop at `EVT-000487`. Banked, **unequipped** — both accessory slots full; swapping the Ascendant Hunter's Band for this trades +5 Strength for +4 Intelligence, a live option not taken."
        - "**Warded Greaves [C-Rank]** — Good · Vitality +3 · physical reduction 8% · worn continuously from `EVT-000480` until **retired at `EVT-000548`**, when the Adaptive Titan Legs [B-Rank] took the slot. Banked, unequipped, unsold."
        - "**Quickknife [B-Rank]** — Agility +11 · weapon power 11 · armed strike ×0.75 · Daily Random Box drop, `EVT-000553` (🎲 d100 81 → ranked gear, 🎲 d3 1 → weapon, 🎲 d7 1 → Quickknife). Condition Excellent, unbound. Banked, unequipped."
        - "**Ghost Quickknife [B-Rank]** — Premium model, Good · Agility +13 (B-Rank weapon budget 11 + 2 premium) · weapon power 11 · +1 modifier step on the first attack made unseen in a combat · worn continuously from `EVT-000339` until **retired at `EVT-000557`**, when the Ghost Quickknife [A-Rank] took the off-hand slot. Banked, unequipped, unsold."
      materials:
        # Crystals, cores, salvage and unworked stock (Section 11.1).
        - "**Beast Core [B-Rank] × 3** — the first B-Rank cores Alexander has held. Both elites and the boss of the Crystal Key's Frozen Gallery (`EVT-000500`, `EVT-000501`). **The System shop refuses cores outright** (Section 12.5), so these convert to nothing in gold and are artificer material — Section 12.8's ranked gear is forged from beast cores, which makes them Priscilla Nakamura's department and not a sale. Banked, unsold, unworked."
        - "**Mana Crystal [B-Rank] × 50 — undeclared.** Was 198; **148 sold at `EVT-000506`** for 111,000 g at the shop's 750 g rate, funding the three C-Rank keys. Was 40. **+158 from the Crystal Key's B-Rank instance** (`EVT-000502`): 14 one-per-beast drops across eleven commons, two elites and the boss, plus the full **144-crystal deposit** extracted on a legendary Resonance Extraction read with forty minutes still on the clock. At the shop's 750 g B-Rank rate the stock is worth **148,500 g**, of which this clear is 118,500 — against 56,250 spent on the key. Prior line, superseded: 40, unchanged this span — the two Crypt instant dungeons (`EVT-000428`-`EVT-000435`) dropped only C-Rank material, this key's own Rank. Stock stands at 40 since `EVT-000422`'s sale."
        - "**Loose tool components** and **raw salvage materials** (hides, cured leather offcuts, unworked beast-part components) — recovered from the same dock sweep (`EVT-000326`), from the other two crates. No combat application, unfinished stock. Banked."
        - "Beast Core [D-Rank] x22 — was 23; **1 given to Priscilla Nakamura** as project stock, no credit (`EVT-000550`). Shop refuses cores (Section 12.5). Banked, unsold."
        - "**Mana Crystal [C-Rank] × 50** — was 40. **+184 undeclared from the Cicero Scar's five veins** (`EVT-000553`, 205 mined, 21 declared to Ada's manifest), stock 40→224. **174 sold at `EVT-000557`** for 170 g each (29,580 g), stock 224→50. Banked, unsold."
        - "**Beast Core [C-Rank] × 23** — was 14; **+9 from the three C-Rank Crypts** (`EVT-000507`), one per elite and boss. Shop refuses cores; artificer material. Prior line, retained: **Beast Core [C-Rank] × 14** — was 8 at `EVT-000446` (prior span's two Crypt dungeons, `EVT-000429`/`EVT-000432`-`EVT-000433`, are the last historical movement before this span). **+2 from the first Frozen Gallery this span** (elite and boss, `EVT-000471`), **+2 from the second** (elite and boss, `EVT-000473`), **+2 from the third** (elite and boss, `EVT-000475`). Shop refuses cores (Section 12.5). Banked, unsold."
    daily_premium:
      cycle: |
          **STANDING RULE (2026-08-10):** when `/system shop` is opened and the stored cycle's rotation boundary has passed, the Runtime rotates one fresh cycle live before rendering — never more than one, regardless of how many 06:00 boundaries were missed.

          **ROTATED — 2026-08-20, live at the `/system shop` check (`EVT-000557`), against System Rank B.** Series Umbral. Rank rolls: weapon +1 (A), armor same (B), accessory same (B), rune +2 (S), key +1 (A). Model bags: weapon → Ghost Quickknife (refilled, prior draw excluded), armor → feet/Titan, accessory → Heartward Sigil (forced, bag's last entry), consumable → Mender's Seal, key → Bounty Key. Rune skill → Rupture. Full roll-by-roll detail: `160_CAMPAIGN_CHRONICLE.md` `EVT-000557`.

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
        rune: "Premium Rune — teaches **Rupture** · [S-Rank] · UNBOUND · NPC-ELIGIBLE · 2,250,000 g · unpurchased — Alexander already holds Rupture at [A-Rank] Adept; S-Rank content is unauthored below System Rank A (Section 7.3), so this is priced but flagged unusable rather than resolved either way"
        key: "Bounty Key [A-Rank] · instant-dungeon key · 250,000 g · unpurchased"
      previous_cycle: "**2026-08-19, Prismatic series — 3/6 purchased** (Restoration Draught, Crystal Key [B-Rank], Adaptive Titan Legs [B-Rank]), expired unbought on the rest at this rotation."
    non_daily_quests:
      capacity_total: 5
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
      streak: 13
      last_completed: "2026-08-20"
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
