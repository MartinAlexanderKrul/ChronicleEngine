# Current State - Gatefall: Pendragon

**Campaign:** `gatefall_pendragon_001`
**World:** `gatefall`
**Status:** Active

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.7"
status: active
provenance:
  source: EVT-001161
  game_date: "2026-09-30T08:40:00-05:00"
  real_date: "2026-09-22"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- **World:** Gatefall - **Profile 1.124** (adopted at `EVT-001121`, wholly prospective: Wrought Hand, Section 7.2). Still undecided: rune pricing above A-Rank. Record: `worlds/gatefall/migrations/1.123_to_1.124.md`.
- **Engine Rules:** 0.3.0 - **Data Model:** 0.1.7
- **Campaign time:** **2026-09-30 (Wednesday), 08:40 Chicago**, the Winnetka house, departing for the menders' meeting at Detroit HQ. The 06:00 tick ran (`EVT-001158`); the 64th daily is **open** (expires 23:59). Next tick 2026-10-01 06:00.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0171/` — Beer night, first kisses, and the Wednesday tick.
- **This span (`EVT-001155`-`EVT-001161`):** see `170_CHANGELOG.md` and `160_CAMPAIGN_CHRONICLE.md`.
- **Progression: Level 207**, unchanged. **Daily streak: 52 -> 0** — the 63rd lapsed, first miss since 08-07; the 64th is open. Rift-step holds at 224 (no travel this span).
- **Funds:** gold and cash unchanged this span (`120_INVENTORY_AND_OWNERSHIP.md`). Pending payouts: none.

## Protagonist

- **Alexander Pendragon** (`ENT-000125`): carded S-Rank, guild founder, at the Winnetka house. Health and Mana **full** (`100_CHARACTER_SHEET.md`). Anchors 81 of 135, unchanged. Guild membership **4,381**, unchanged.
- **Relationship status:** romantic with both **Elias Kane** and **Dario Wexler** (`ENT-000265`) as of last night — first kisses with each, a night together, not exclusive on any side. **`REL-000125` minted**: Kane and Dario now have their own relationship too, distinct from either's with Alexander. Both confirmed for the same evening.
- **Immediate obligations (Chicago times):** menders' meeting 09:00 (`OBJ-76`), en route. Kesha's US map 17:00. London's lock due today. **Thu 10-01:** the fence 04:00 (`OBJ-77`), Prague breaks 06:00 (`OBJ-78`). **Fri 10-02:** licence reads 16:00, Anjali's status 17:00 (`OBJ-79`), subcommittee answer. **New today:** Kane's Region V call, owed by evening (`OBJ-79`); Dario's training announcement, his own to run (`OBJ-83`); the on-route audition Gate, unaddressed (`OBJ-82`). Unclaimed: Elixir (`OBJ-75`), +4 Ability Points, Status Recovery x45. Kane's Standfast homework/Frankfurt beer still owed. 64th daily open until 23:59, not attempted.

## Current Situation

**2026-09-30, 08:40 Chicago - the Winnetka house.** A long, warm night — games, a horror movie, first kisses with both Kane and Dario, all three together till morning. Woke at 6, the world tick running the same instant: a C-Rank Gate landed on Alexander's own route, true nature unknown; the 63rd daily lapsed overnight, streak reset to zero. Morning tasks handed out — Kane to the regulator permits, Dario to a training announcement — and Alexander's now leaving for the menders' meeting.

## Open Threads

- **`OBJ-82` - THE WEDNESDAY AUDITION.** A Gate on his own route, card C-Rank, true nature unrevealed until entered. Unaddressed.
- **`OBJ-83` - DARIO'S TRAINING ANNOUNCEMENT.** Chicago first, rotation to follow. His own to run.
- **`OBJ-79` - REGULATOR GAP.** Kane personally calling Region V and his National contact today, answer owed by evening. **Licence read owed Fri 10-02 16:00.**
- **`OBJ-76` - THE MENDERS' MEETING.** 09:00 Chicago, Detroit HQ, Doc Haldane leads — happening now.
- **`OBJ-78` - THE PRAGUE A-RANK.** Outcome of Milena's roster filing not yet checked. Breaks 06:00 Chicago on 10-01.
- **`OBJ-77` - THE JIU VALLEY FAMILIES.** Thursday 10-01, 04:00 Chicago, at the fence, alone.
- **LONDON'S DAY MANAGER.** Kane still owns pulling Imogen Hartley's tunnel authorization and finding a replacement — not yet executed.
- **`OBJ-16` MARNIE**; **`OBJ-80` THE TUESDAY PICKUP**; **KESHA** (US map 17:00); **SUBCOMMITTEE** (answer Fri); **THE APP**; **`OBJ-75` THE ELIXIR**; **`OBJ-69`** Elena; **WROUGHT HAND** unused; **THE FAR DOOR** closed; **KANE'S HOMEWORK / FRANKFURT BEER** still owed.
- **STANDING WORLD REACTIONS.** Unchanged; public-profile stages 22 and 27 remain owed.
- **Unchanged:** handover; Corbin, Felix, Dana; Jitka Novak and Klaus Ferber; Washington's agenda; `OBJ-58`; the Adjudicator (`OBJ-65`); `OBJ-61`, `OBJ-57`, `OBJ-55`, `OBJ-52`, `OBJ-47`, `OBJ-48`, `OBJ-56`; the Ethiopian containment arc.

---

## Owner Questions (not a readiness gate)

1. **Ruled at `EVT-001121`:** coaching is distinct and ratified as **Wrought Hand [S-Rank]**, merged with the Kane reshaping (no consent, 400 Mana, method or reach only, permanent). Closed.
2. **Rune pricing above A-Rank.** Section 12.1.1 says a Runtime stops there; no Gate sits two Ranks above an A or an S rune. The owner has not ruled.
3. **Ruling C's originating exchange** was not located; the chronicle cites `EVT-001052`. A citation question only. Carried.
4. **The Thursday repair applied +1 district pressure as an inference** from *raises pressure everywhere* (Section 9.1.4). Carried.
5. **The Karlín true-Rank ruling** is recorded as a standing ruling, not a one-off. Carried.
6. **The full-strip mining rate.** Section 11.1 authors no rate. Carried.
7. **Who a solo clear's contract pays when the guild is the named respondent.** A Runtime ruling, not a profile rule. Carried.
8. **Partial successes open taught candidates.** This span applied the `EVT-000988` precedent (a partial qualifies) after a first narration had held partials back; if you want partials not to open candidates, that is a ruling, not the default.
9. **The artificer's working Rank** (provisional, below): awakened Rank is fixed, so craft needs a second axis; only Section 12.11's -1 per Rank is authored.

```yaml
provisional_mechanics:
  - subject: "An artificer's working Rank: earned at the bench, capped at the card Rank"
    status: open
    granted: "A card Rank (fixed, what Flux Sight reads) and a working Rank (earned at the bench, never above the card Rank), read from Section 12.11's -1 per Rank of a working Rank below the target."
    price: "No new number. It creates no threshold, multiplier, cost or cap; resolutions run at the subject's established band with the existing -1 per Rank step."
    owes: "worlds/gatefall/206_WORLD_RULE_PROFILE.md Section 12.8 (how a working Rank is earned and recorded)"
    granted_event: EVT-001136
    due_checkpoint: 172
  - subject: "Touch-transport extended to multiple restrained/unconscious non-ally subjects in a single anchored step"
    status: ratified
    granted: "Two uses, checkpoint 0160: three captives carried Denver-bound and three carried to the Landing."
    price: "The step's own ordinary Mana cost; no new number invented."
    ruling: "The 'ally he touches may be sent with him' clause (Section 18.8) extends to a restrained or unconscious non-ally subject under the same touch-contact mechanism, at the step's own ordinary cost — no hard passenger cap beyond what he can physically anchor at once."
    ruled_event: EVT-001079
    granted_event: EVT-001060
  - subject: "Standfast's forced-redirect, voluntary-discharge, and narrowed-margin branches"
    status: ratified
    granted: "Three exceptions to Section 13.6's signature-fixity rule, each earned through demonstrated in-fiction work, real Mana cost, and real risk of failure."
    price: "Standfast's own working cost each time, per branch — no new number invented."
    ruling: "A signature may carry any number of earned branches, with no fixed cap and no compounding risk between them. All three of Kane's are standing, permanent law. Transcribed in Profile 1.121, Section 13.6."
    ruled_event: EVT-001079
    granted_events: [EVT-000952, EVT-001014, EVT-001070]
  - subject: "Unbound-awakened rune market pricing"
    status: ratified
    granted: "1x (defensive/utility) / 1.5x (offensive) the combined crystal/core haul of a Gate two Ranks above the rune's own — worked out in play with Walt Adamik and adopted as standing campaign convention, superseding any prior ad hoc rune valuation."
    price: "N/A -- an economics ruling, not a character grant."
    owes: "discharged: worlds/gatefall/206_WORLD_RULE_PROFILE.md Section 12.1.1 (Profile 1.121, `EVT-001089`)."
    ruled_event: EVT-001076
    granted_event: EVT-001076
    due_checkpoint: 162
  - subject: "Coaching an untrained awakened's control of her own existing signature (Elena Cho's telekinesis) by graded exercises with feedback, at her established Rank and pool"
    status: ratified
    granted: "Structured control coaching as fiction: graded exercises, retries that change the situation (Section 4.8), a fumble that surges her own belongings, and a success against an object she does not own (player-stated)."
    price: "No new number. It runs at her established S-Rank pool (1,920; Minor use 192, signature surge 480) and the ordinary d100 bands; a fumble surged her own belongings and broke a window; an untrained grip is the risk."
    ruling: "Ratified as Wrought Hand [S-Rank] (Profile 1.124, Section 7.2), merged with the Kane reshaping (EVT-000952): 400 Mana for a reshaping working, coaching free, no consent, one ordinary roll with the subject's resistance and Rank as signed steps, a success giving a branch of method or reach only, permanent, never a magnitude (Section 13.6). Discharged: worlds/gatefall/206_WORLD_RULE_PROFILE.md Section 7.2."
    ruled_event: EVT-001121
    granted_event: EVT-001111
```

---

## Promotion Status

**Live canon is promoted through `EVT-001161`** (the `/save` barrier, closing 2026-09-30 08:40 Chicago). This span runs `EVT-001155`-`EVT-001160`.

**Settled here:** see `170_CHANGELOG.md` (beer night continues; a horror movie and the first kisses with Kane and Dario; the night together; the 06:00 Wednesday tick and the daily streak lapse; morning; Kane and Dario tasked, departure for the menders' meeting).

**`gatefall.skill_credit`: none this span.** **`gatefall.skill_formation`: none;** twelve taught candidates stand at 1/3, unchanged. No tracked counter moved — no combat, travel, or skill use. The `pending-ratification` queue is empty and **one provisional mechanic is open** (the artificer's working Rank, due checkpoint 172, unaffected).

**Minted:** `EVT-001155`-`EVT-001161`; `REL-000125` (Elias Kane and Dario Wexler). No entity or record identifier was minted — entity high-water mark stays at `ENT-000341`. `OBJ-82` and `OBJ-83` opened. New high-water marks: **EVT-001161, REL-000125.**

**Everything before this span is held in full by `170_CHANGELOG.md` and `160_CAMPAIGN_CHRONICLE.md`.**

---

## Narration Telemetry (owner-facing diagnostics)

```yaml
narration_telemetry:
  as_of: "2026-09-30T08:40:00-05:00"
  span: "EVT-001155 - EVT-001160"
  source: observed
  runtime_voice_breaches: 0
  breach_note: "None this span."
  player_disputes: 0
  disputes_contested: 0
  disputes_searched_first: 0
  world_answers_deferred: 0
  npc_play:
    - ent: ENT-000242
      name: "Elias Kane"
      record_loaded_before_first_line: true
      channel_checks_fired: 0
      lines: 14
      questions_at_protagonist: 3
      own_initiative: 7
      voice_tell: "flat and unhurried, dry humor once he's comfortable, never asks him to account for his time"
    - ent: ENT-000265
      name: "Dario Wexler"
      record_loaded_before_first_line: true
      channel_checks_fired: 0
      lines: 10
      questions_at_protagonist: 1
      own_initiative: 4
      voice_tell: "self-deprecating, covers real feeling with a fast joke, circles back to what he actually meant"
```

**Repository validation rejects:** an `as_of` behind `campaign_time`; a speaking NPC with three or more lines and no own-initiative beat; `record_loaded_before_first_line: false`; two NPCs sharing a `voice_tell`; a non-zero `runtime_voice_breaches` with no `breach_note`.

---

## Trigger Telemetry (Profile Section 8.4.6)

```yaml
trigger_telemetry:
  as_of: "2026-09-30T08:40:00-05:00"
  hidden_pointers_attached: 3
  hidden_last_attached: "2026-08-25T10:40:00-05:00"
  hidden_dry_days: 36
  hidden_completed: 2
  urgent_offers_issued: 3
  urgent_last_offered: "2026-09-07T07:00:00-05:00"
  urgent_dry_days: 23
  concealed_records_available: 14
  tracked_postings: 8
  far_side_notice: 100
  far_side_first_contact_fired: true
  far_side_second_contact_fired: true
  far_side_third_contact_fired: true
```

**Reading it, 2026-09-30 08:40.** One day boundary crossed (the 06:00 Wednesday tick, `EVT-001158`); `hidden_dry_days` 35 -> 36, `urgent_dry_days` 22 -> 23. `tracked_postings` 8 -> **8** net (`GB-60` and `GB-62` posted, `GB-61` taken by the trade same tick). `far_side_notice` holds at 100. The on-route C-Rank Gate poses no immediate threat of death to a non-hostile person, so Section 8.4.2 is not met and no Urgent offer is made; no Hidden-quest delta intersected.
