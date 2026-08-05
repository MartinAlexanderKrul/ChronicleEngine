# Current State - Gatefall: Pendragon

**Campaign:** `gatefall_pendragon_001`
**World:** `gatefall`
**Status:** Active

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000427
  game_date: "2026-08-16 15:00 -05:00"
  real_date: "2026-08-05"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- **World:** Gatefall
- **World Rule Profile:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`, Profile 1.57
- **Engine Rules:** 0.3.0
- **Data Model:** 0.1.6
- **Campaign time:** **2026-08-16 (Sunday), 15:00 CDT (`-05:00`)** — home, early afternoon, just out of a D-Rank instant dungeon. The twenty-third daily completed, **streak 9**. Next daily issues 2026-08-17 06:00. **Tomorrow evening is the first crew training**, 18:00, freight yard off Ashland, ten people holding the date.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0075/` — Session close: ledger audit, shop, and Ability Point allocation.
- **Level 22**, crossed mid-fight in the 2026-08-15 instant dungeon (`EVT-000401`). **System Rank C**, crossed at Level 20 (`EVT-000341`), unchanged. Non-daily quest capacity **4**, derived from Rank since Profile 1.49.
- **All five Stat Passives sit at B** (`EVT-000362`-`EVT-000365`): Overpower, Pre-empt, Shrug Off, Flux Sight, Conduit — all still held at the System-Rank+1 ceiling after `EVT-000426`'s allocation moved their driver Stats (Overpower 74, Flux Sight 66, Conduit 69, Pre-empt 98); none crosses a new Rank.
- **Inventory grouped by kind** (`EVT-000366`-`EVT-000367`). **32 holdings: keys 2 · consumables 6 · special 4 · gear 16 · materials 4.** Keys corrected 3→2 (`EVT-000417` spent the D-Rank key, never reflected here). Gear 15→16 (Gale Coif retired to storage). Materials 6→4 (D-Rank crystal line sold out).
- **Titles: ten of twenty-one granted, both slots filled — Ascetic and Prospector** (`EVT-000348`-`EVT-000349`, `EVT-000357`). Eight dormant, including the Rare **Cartographer**. Next assessment level 30.
- **Unspent stat points: 0** — pending +8 claimed and allocated with the unspent 5 at `EVT-000426`: +8 Intelligence, +5 Agility. Only **Status Recovery ×15** remains pending.
- **Three owed mastery advances settled at `EVT-000407`**: Flash Step→Expert, Sprint→Adept (Mana 3→2), Resonance Extraction→Expert. Rupture nearest at 1/3. **Mana Bolt separately ascended D→C at `EVT-000424`** — a consumed Daily Random Box rune, not a mastery threshold.
- **Live leverage, now contractual.** Wade Bishop remains materially compromised — a confirmed B-Rank Gate staffed at 4 combat-rated hunters against a legal minimum of 8, filed on a roster forged to 8 — and **Alexander physically holds that unfiled report** (`EVT-000384`, `110_WORLD_LEDGER.md`, `OBJ-27`). **The Ironline decision is made** (`EVT-000404`): Alexander joins as a contractor, no salary, his own choice of jobs, Wade as supervisor of record — closing `OBJ-23`.

---

## Protagonist

- **Alexander Pendragon:** Level 22, C-Rank System Rank, **1,205/2,200 XP** (630 → 1,205 across 2026-08-16's instant dungeon: 9 commons, 2 elites, a boss, and the D-Rank clear milestone, all credited under the standing `EVT-000264` support-contribution ruling). No level crossed; 995 short.
- **Health: 416/416, untouched since 2026-08-15's Crypt.** **Mana: 138/138, full** — max re-derived 122→138 at `EVT-000426`'s allocation and refilled. Recovery `resting`, remainder 0.
- **Loadout changed at `EVT-000425`:** head now **Adaptive Titan Coif [B-Rank]** (STR +7, 15% reduction), Obsidian-cycle buy, displacing the Horizon Gale Coif to storage. Still worn: **Watcher Torso [B-Rank]**, **Warded Vambrace [A-Rank]**. **Reduction ≈38%**, up from ≈31%.
- **Stats (base):** STR 62, AGI 60, VIT 101, PER 61, INT 67 — AGI/INT moved at `EVT-000426` (+5/+8). **Effective:** STR **74**, AGI **98**, VIT **104**, PER **66**, INT **69**.
- **Titles: both slots filled — Ascetic and Prospector.** Strongest dormant picks: **Cartographer** (Rare), **Kingmaker**, **Underdog**, **Loner**, **Untouchable**.
- **Pending rewards:** Status Recovery ×15 only — AP and both boxes claimed at `EVT-000423`-`EVT-000426`.
- **Weapon/skill DMG previews moved with Stats this span:** main hand 129→**139**, off hand 113→**123** (Strength 67→74 at `EVT-000425`); Rupture 301→**321**, Mana Bolt 99→**151** (Intelligence 61→69 at `EVT-000426`, plus `EVT-000424`'s D→C ascension in between).
- **Level 21→22 crossed mid-fight** (`EVT-000401`, 2026-08-15). Its +5 points plus a claimed +8 AP were allocated in full at `EVT-000426` (+8 INT, +5 AGI) — unspent now **0**. Not a decade level.
- **The three "ascension offers" were owed mastery advances, settled at `EVT-000407`**: Flash Step→Expert, Sprint→Adept, Resonance Extraction→Expert. Rupture nearest at 1/3. **Mana Bolt separately ascended D→C at `EVT-000424`** — a consumed box rune, floor-held at ×1.15.
- **Checkpoint 0070 was audited at `EVT-000406` and nine defects repaired** — an unsettled 2h15m recovery span, two rules-invalid recovery modes, a stale anchor, two stale damage previews, and four missing or wrong skill credits (Keen Sense, Exploit Pattern, Twin Fang, Broken Rhythm, Pre-empt). **Checkpoint 0070 is immutable and holds them as captured.** Every repository gate passed while they were present; raised as **`F-015`**.
- **Skill/profile history through `EVT-000397` is unchanged today and detailed in prior checkpoints** — the `EVT-000390` audit (five ranks across three skills), the `EVT-000396` recalculation (six skills, Twin Fang's offer accepted, ascensions 9→11), and Profile 1.56/1.57 (Intelligence-scaled Mana damage, authored ranges). **Live damage previews at today's effective Intelligence 61: Rupture 301, Mana Bolt 99** (up from 299/98; both corrected in `100_CHARACTER_SHEET.md` at `EVT-000406`, having shipped stale in Checkpoint 0070). **Mana Bolt re-corrected to 99 at `EVT-000407`**: `(25 + 61 + 0) × 1.15 = 98.9` rounds to 99, and `EVT-000406`'s 100 was a figure the formula does not produce.
- **Cash: $45,074.00**, unchanged — session moved gold only. **Gold: 88,771** — from 47,561 across `EVT-000422`'s sale (+47,960) and `EVT-000425`'s purchase (−6,750). **Pending income, corrected at `EVT-000420`:** Wade $221,540 + Cicero Scar $9,418.60 + **Dale $60,677.42 (omitted until now)** = **$291,636.02, 3 payouts, none received.**
- **B-Rank crystals: 40 banked** — was 80 (corrected at `EVT-000420` from a stale header), **40 sold at `EVT-000422`**. See `OBJ-27` for 25 further B-Rank crystals and 1 core undivided in the trial Gate's combat pool.
- **D-Rank crystals: 0** — the fresh 24-crystal line **sold in full at `EVT-000422`**. **D-Rank cores: 23**, unaffected.
- **C-Rank crystals: 40 banked** — was 140, **100 sold at `EVT-000422`**. **C-Rank cores: 5. E-Rank cores: 0.**
- **Given to Priscilla Nakamura 2026-08-15 (`EVT-000410`):** 5 B/7 C crystals, 2 C/8 D/1 E cores — unprompted, nothing declared or sold.
- **Instant-Dungeon Key [C-Rank]: 1. E-Rank: 1. D-Rank: 0** — `EVT-000417` spent the D-Rank key; this line previously carried it stale as still banked.
- **Consumables: 12 Lesser Healing, 8 Lesser Mana, 5 Standard Mana** (+3 at `EVT-000423`), 2 Antidotes, Mender's/Stabilization Seals.
- **A Mana Bolt rune banked and immediately consumed** (`EVT-000423`-`EVT-000424`): a box result at C-Rank, one above known D-Rank, consumed — ascending Mana Bolt to [C-Rank] Novice, floor-held ×1.15. Never a standing holding.
- **Current location:** home, Rogers Park apartment, 15:00 Sunday. `EVT-000420`-`EVT-000426` were entirely out-of-character — no fictional time, no NPC.
- **TODAY, Sunday 2026-08-16 — all settled:**
  - **Twenty-third daily completed ~07:15** with Owen, streak 8→9. Rewards claimed in full this span.
  - **Dale Pruitt's B-Rank harvest — done** (`OBJ-20`, `EVT-000415`): 64 mined, 19 declared, **$60,677.42 filed**, staffed nine against a legal eight. Marisela Kwan and Reston met; `REL-000097` formed.
  - **The Longsword [C-Rank] given to Owen** (`EVT-000416`) — no longer Alexander's.
  - **D-Rank instant dungeon, Owen's training** (`EVT-000417`) — he killed all twelve including the boss; 24 crystals/3 cores/Longsword [D-Rank], later sold whole at `EVT-000422`.
  - **Daily Premium rotated live** (`EVT-000421`), two boundaries overdue. Obsidian cycle, 1/6 purchased (armor, `EVT-000425`).
- **YESTERDAY, Saturday 2026-08-15 — index only, detail in the chronicle:** Ada Reyes's C-Rank harvest (`OBJ-20`); the Ironline decision on contractor terms (`OBJ-23`, closed); the instant-dungeon date closing `OBJ-25`; **Reyna Castillo met** and attending Monday as an evaluator (`REL-000095`); **Priscilla Nakamura met**, the Dormant Core identified and a working arrangement struck (`REL-000096`).
- **Immediate obligations:**
  - **Alexander is holding Ironline's unfiled trial report** (`EVT-000384`) — three pages recording a roster of eight against five present, padded with three bench names. **Whether Wade can still file without it was never raised by either of them.** The single most consequential loose object in the campaign right now.
  - **Wade Bishop's standing rejection pipeline is live** (`OBJ-28`) — every hunter who turns down an Ironline pitch, with a read, same day. Nothing due until his next pitch is refused.
  - **Crew training — fully closed.** Monday 2026-08-17, 18:00, at the **freight yard off Ashland** (`ENT-000200`, booked through Duane `ENT-000199`, $400 cash due on arrival, `EVT-000373`). All ten confirmed the location; Soraya's gear question answered (not mandatory). Nothing left owed on this thread before Monday itself.
  - **Wade Bishop's trial-Gate payout: filed, not landed.** $221,540 total (`EVT-000371`), processing on the standard 1-2 business day window. **The Watcher Torso was delivered in person at `EVT-000384` and is now equipped** — that thread is closed. The 25 B-Rank crystals and 1 core from the combat pool remain physically undivided.
  - **Rosalind Fenn is investigating two threads** (`ENT-000198`, `EVT-000374`): Marnie's disappearance and the Meridian ownership question (`OBJ-21`), in parallel, 2-3 days out. **Marnie is now a professional investigation, not Alexander's legwork** — Loomis Street located and read twice, blind spot found, **still not approached**; the dock deliberately withheld from Fenn.
  - **The tracked board is empty for the first time in the campaign.** `GB-04` — the Red Line Corridor E-Rank Coalition posting — **broke at midnight 2026-08-12** and was settled four days late by owner ruling at `EVT-000413`: 8 common, 1 elite, 1 boss released, BGM emergency contract issued, guild strike team dispatched. **Alexander was not there and has not been told**; Decision 084 makes a board settlement silent to the Bearer. **That is the second E-Rank break in the Red Line Corridor inside eleven days** (`GB-01` at midnight 08-08). `tracked_postings: 1 → 0`. **`F-002` has now recurred for the same unaddressed reason** — nothing in the engine fires Section 9.10 on the clock.
  - **Owen owes Alexander $2,925** toward the deposit, unrepaid. Priya still hasn't told Julian or Renata (`OBJ-12`).
  - **$800 is owed to Priscilla Nakamura**, billed tonight for the core identification and unpaid at the workshop. No due date named; the natural settlement point is Tuesday's session. Separately, $400 cash to Duane on Monday arrival.

---

## Wade Bishop, and What Changed

**Not a recruiter being evaluated — a compromised source who answers to him, and both of them said so out loud.** Confronted 2026-08-14 over a genuine crime (4 combat-rated hunters against a B-Rank legal minimum of 8), he conceded without argument and took terms for discretion: retroactive roster inclusion, report review before filing, confirmed shares, and a standing unofficial arrangement — contacts, hunters, artificers, information, nothing manual. Delivered the $221,540 that evening and the Watcher Torso in person that night.

**The lot meeting** (`EVT-000384`): the report is **forged to eight names against five present**, off a bench roster Brannigan's office keeps for short crews — routine, *nobody checks unless someone dies*. He will **not** stop (not his call, never once refused a thin roster), and **three of his own recruits have died in six years**. He took both asks (`OBJ-28`, the Nakamura brokerage) and let Alexander walk off with the unfiled report. Alexander called it a partnership dryly and made clear it isn't; Wade agreed and named the shape himself — leverage one way, access the other, useful exactly as long as that holds.

**The decision delivered, 2026-08-15 ~16:45 (`EVT-000404`).** Called with both threads at once: Nakamura's window (tonight, 9 PM) and the Ironline answer — **contractor, no salary, Alexander's own choice of jobs, Wade as supervisor of record.** A real, sellable win for Wade without exposing the leverage's actual shape; he said so himself: *"I'd probably want the leash on me too."* Paperwork moving by 2026-08-16. **`OBJ-23` closed.**

---

## Current Situation

**2026-08-15, 16:45-22:30 (`EVT-000408`-`EVT-000411`).** Alexander told Owen plainly he'd finally gotten an artificer contact — the fact of it, no name, no address, and Owen did not ask for either. A couch-bound afternoon with nothing scheduled, ended by Owen raising that Reyna's meeting had no location yet. **The Loyola lakefront chosen over a café**, on the read that she'd prefer something natural; she approved of it in the only four unbusinesslike words she'd spent on him. **Reyna met, 19:00, Owen present and near-silent** — she pressed one question three times (does a bad call get named out loud, or managed) and took the third answer's sharpness as the credible one. **Committed to Monday as an evaluator.** Owen walked home alone; Alexander went north to **Nakamura's workshop at 21:00**, showed the Dormant Core, and got the first real answer `OBJ-16` has produced: a made housing holding two fused mana signatures, stable, by a maker she rates above herself. Terms struck, materials left on the bench, the core left in her custody, his real number given rather than Wade's. Home ~22:30 to Owen asleep on the couch, carried to bed without waking.

**2026-08-15, 06:00-16:45 (`EVT-000398`-`EVT-000404`; full detail in `160_CAMPAIGN_CHRONICLE.md`).** Woken with a kiss and cuddled back to sleep, a balcony workout, the daily closed mid-run to the Cicero Scar (streak 8). Harvest job: 21 crystals mined, 12 declared. Home, the overdue $2,137.50 cleared, a balcony conversation that landed on `OBJ-25`'s unkept term — answered by opening a banked C-Rank instant-dungeon key on the spot. **The Crypt clear:** Owen present as agreed, non-combatant, stop-call never needed; five commons and both elites by ambush, one real hit taken (412→396), **Level 21→22 crossed mid-fight**, the boss (Serpentine, Control) killed by Rupture and a dagger finish, full deposit shared with Owen. **`OBJ-25` closes.** Home instantly on exit; the rest of the afternoon isn't narrated. **Wade's closing call** delivered Nakamura's window (tonight, 9 PM) and settled the Ironline decision on contractor terms — **`OBJ-23` closes.**

**2026-08-14, ~18:10-19:23 (`EVT-000379`-`EVT-000380`).** A shower, a change into civilian clothes, and a walk south with nothing announced to anyone. **Thirty-eight packets of seed, $146.30**, at Glenwood Garden and Feed (`ENT-000201`) — tomatoes, chilis, basil, a long run of herbs and vegetables, half of which will not germinate until spring. It is the balcony he described out loud on the 2026-08-10 run, bought without being asked for. Wade texted about the torso; Alexander called instead and asked to compress an hour into thirty minutes. **Wade refused honestly rather than agreeing and failing (🎲 d100 8)** — the report was not yet filed, and filing it before Alexander saw it would break the term he agreed to. Alexander moved the meeting to 22:00 at Wade's office so Wade could finish, then to the lot when Wade himself named the exposure risk of a hunter walking into an Ironline building the night before deciding on Ironline.

**2026-08-14, ~20:00-21:30 (`EVT-000381`-`EVT-000383`).** Waited unannounced outside Edgewater's staff door through the ten minutes a twelve-hour Friday shift runs over. **Owen's joke failed to arrive for the second recorded time**, and the seeds landed harder than the fight report — he ended up crouched on the pavement counting packets: *you bought seeds for next year.*

At Halvard's (`ENT-000202`), **Alexander told him a version of the trial short in one place** (`EVT-000382`, corrected at `EVT-000389`) — honest about the Gate's B-Rank, the swarm, the chokepoint, Rank C, and accurately that Wade never told him the strike line would run at half the legal roster; **the omission is the near-death**, *closer than I liked and I was prepared for it* in place of **Health full to 0**. Owen named that as evasive and **deferred it rather than dropping it**. The real argument was a promise: *I would never leave you*, refused on its face — *you don't get to decide that from the inside of a fight* — against what he asked for instead, **a warning before rather than a report after**. Closed warmly: an apology, an unprompted *I love you*, Saturday promised, a long kiss in the street.

**2026-08-14, ~21:55-22:40 (`EVT-000384`-`EVT-000386`).** The lot meeting — the forged roster, the three dead recruits, the two standing asks, the torso and the report both taken; full detail in the Wade section above. Then two and a half miles home on foot to clear his head, two free loadout swaps, and a night at the apartment that is not narrated.

**2026-08-15, 06:00 (`EVT-000387`).** The twenty-second daily issued, **+4 Ability Points** for the first time under an equipped Ascetic. Both pools full. Saturday is technically the day he promised Owen and is in practice already carrying a 09:00 job, a 19:00 meeting, a decision owed to Ironline, and a regimen due before midnight.

**Earlier the same day, 2026-08-14 06:00-18:10 — compressed; full detail in `160_CAMPAIGN_CHRONICLE.md` at each cited Event.** The twenty-first daily with Owen at dawn, then **Wade Bishop's B-Rank harvest trial** entered alone over Wade's objection (`EVT-000338`-`EVT-000343`): a double critical-failure entry, a 24-common Hive swarm, the S-Rank dagger's first fight, **Health to 0 and Shrug Off's first threshold absorption**, the burrower boss killed off his relayed reads, and 104 B-Rank crystals mined in the clear window — **Level 14 → 21, System Rank D → C**. The aftermath mattered as much: four new crew contacts, and the **legal-minimum violation** confronted and turned into terms before Wade's report (`EVT-000344`-`EVT-000347`, `OBJ-27`). Then the crew training date finally named to all ten (`EVT-000350`-`EVT-000351`), Walt's supplier inquiry **failing badly** on the word CONSULT (`EVT-000352`), and **Loomis Street** located and read from the pavement without approach (`EVT-000353`). At an unmoved 14:30 anchor, a block of out-of-character System work with no fiction in it (`EVT-000355`-`EVT-000361`): first title loadout, all 56 points spent, the streak box taken as gold, 44 crystals sold, the Premium tab rotated. Then the owed boss drop rolled and the $221,540 texted (`EVT-000370`-`EVT-000371`), the camera blind spot found by ordinary analysis (`EVT-000372`), **Rosalind Fenn** engaged and **Duane's freight yard** booked at Walt's shop (`EVT-000373`-`EVT-000374`), and a **solo Crystal Key clear** — Beast Den, twin C-Rank alphas, full loot and deposit, 1,400 XP, no level crossed (`EVT-000375`).

---

## Open Threads

- **Owen was told the truth about the job and a short version of the danger** (`EVT-000382`, corrected at `EVT-000389`). What he holds about the trial is **accurate** — it was a harvest job, and Wade did not tell him the strike line would run at half the legal roster. **The one omission is the near-death:** he was told *closer than I liked, and I was prepared for it* where canon is Health from full to 0, held by Shrug Off. He named that as evasive to Alexander's face and **deferred the conversation rather than accepting it**. It reopens when Alexander answers it, or when Wade or one of the four trial hunters says something in his hearing — and all four are at Monday's training.
- **The unfiled Ironline report is in Alexander's inventory** — documentary evidence of a falsified roster, taken with Wade's knowledge and no discussion of what happens next. Whether Wade can still file is unestablished.
- **`OBJ-28` is live and standing:** every hunter who refuses a Wade Bishop pitch, name plus read, same day. Nothing owed yet.
- **Priscilla Nakamura (`ENT-000203`) is now a live working relationship, not a lead** (`EVT-000410`, `REL-000096`). **The Dormant Core [S-Rank] is identified in principle: not a natural Gate-drop core at all, but a made housing holding at least two distinct mana signatures fused rather than layered** — a result she has heard claimed as possible and never personally seen produced, by a maker she rates above herself. **Still unknown: what the combined properties do, the activation method, and who made it.** She declined to disassemble it on a first look without explicit instruction — **that decision is Alexander's and is the obvious next move.** The core is in her physical custody as a condition of the arrangement; ownership unchanged, no return date agreed. **First working session Tuesday 2026-08-18 evening**, time to follow by text on Alexander's real number — contact deliberately routed direct rather than through Wade. **Nothing about Marnie, the S-Rank dagger, Loomis Street, or the System has been named to her.**
- **CLOSED — the three "ascension offers" were owed automatic mastery advances**, settled at `EVT-000407` at the returning-session readiness gate: Flash Step [C-Rank] Adept→Expert, Sprint [E-Rank] Practiced→Adept, Resonance Extraction [E-Rank] Adept→Expert. Section 7.4 never made them the Bearer's to answer; the misfiling under Section 7.5 held three earned advances unwritten for a session.
- **Tonight's two commitments (Reyna 19:00, Nakamura 21:00) have not been checked against each other.**
- **Ironline's roster padding is now established as routine rather than a one-off** (`110_WORLD_LEDGER.md`) — with a named mechanism, Wade's refusal to change it, and his own three dead recruits attached to it. Still unreported to any authority.

- **First crew training set: Monday 2026-08-17, 18:00, freight yard off Ashland**, $400 cash on arrival. Nothing owed before Monday. Corbin, Felix, Dana, Warren, Iris, Soraya and now **Reyna Castillo** all attend to decide; Marcus, Theo and Grant are already recruited.
- **Reyna Castillo met and is judging Monday, not the pitch** (`EVT-000409`, `REL-000095`). Her standard, asked three times before it was answered: does a bad call get named out loud in front of the crew, or quietly managed. **Carried and one-sided:** Alexander told Owen privately he is *not sure about her* and that she 'wasn't listening'; Owen disagreed openly on the grounds that she had quoted Alexander almost verbatim. Nothing said to Reyna; her attendance is not in doubt. **This is a read Alexander holds that his own partner, present for the whole exchange, thinks is wrong.**
- **The S-Rank dagger is equipped and visibly in use** — a live provenance/exposure risk (Section 19), accepted knowingly.
- **Unsold stock:** 40 undeclared B-Rank crystals; 147 C-Rank crystals and 7 C-Rank cores; 28 D-Rank and 1 E-Rank Beast Core. Separately, **25 B-Rank crystals and 1 core sit undivided** in the trial Gate's combat pool pending Wade's physical split.
- **Banked and unequipped:** Longsword [C-Rank], **Quickknife [C-Rank]**, Quickstep Charm [D-Rank], Arcanist Torso [D-Rank], Titan Legs [D-Rank], Watcher Feet [D-Rank], Adaptive Bastion Torso [E-Rank], Ascendant Hunter's Band [E-Rank], and a mundane directional listening rig, untested. The **Quickknife [C-Rank]**, **Quickstep Charm [D-Rank]**, and **Arcanist Torso [D-Rank]** were absent from `system_state.inventory.gear` until `EVT-000407` and rendered in no `/system gear` panel.
- **Keys banked:** Instant-Dungeon Key at C, D, and E-Rank, all unused — today's C-Rank key was spent and replaced by the boss's own drop, net unchanged. The Crystal Key [C-Rank] is spent.
- **`OBJ-18`** — neither route (elixir or cheap-Mana rune) acted on for Owen.
- Daily Premium rotations 2026-08-06 through 2026-08-08 remain formally unsettled by owner ruling.
- **`OBJ-25` CLOSED — FULFILLED, 2026-08-15 (`EVT-000400`-`EVT-000403`).** Opened on a banked standard Instant-Dungeon Key [C-Rank] rather than the spent Crystal Key. Owen came exactly as the terms specified — backup mender and observer, non-combatant — and the stop-call term held without ever firing. The prior overtaking event (`EVT-000375`'s solo Beast Den clear, run without Owen) stands unaltered in the record as a separate, earlier clear; this objective is satisfied by a later one that actually met its own terms.
- **An open owner ruling, carried and not gating:** whether Ascetic's +4 reaches a daily reward **issued** before the title was equipped. Unauthored at the seam between §3.9 and §16.3; settled at the issued +3 on the player's declared order, worth 1 point if ruled otherwise. Recorded at `100_CHARACTER_SHEET.md` `skill_rulings.ascetic_claim_timing_evt_000357`.
- **The potion discrepancy is RULED AND RETIRED.** The owner ruled at readiness: **12 Lesser Healing Potions and 8 Lesser Mana Potions.** Both ledgers already carried those figures — `inventory.consumables` was corrected to 12 at `EVT-000368` and this record's own line reads 12/8 — so the flag was describing a discrepancy that had already been repaired and is removed rather than carried forward.
- **A ledger defect found and repaired this session** (`EVT-000385`): `inventory.gear` still listed the **Finished dagger [S-Rank]** as a stored holding although it has been the equipped main hand since `EVT-000339`. Same double-count class as `EVT-000366`. Removed; stored gear is **13** after the removal and the two retirements.

---

## Promotion Status

**Live canon is promoted through `EVT-000427`.** Since Checkpoint 0074 (canon through `EVT-000419`): **`EVT-000420`-`EVT-000427`**, below.

**`EVT-000420`-`EVT-000427` — returning-session ledger audit and out-of-character System span, no fictional time, no NPC.** `420`: two stale sheet figures corrected (Dale's `EVT-000415` payout missing from pending funds; B-Rank crystal `× 35` header against its own entry's narrated 80). `421`: Daily Premium rotated live, two boundaries overdue, Obsidian series. `422`: crystal sale (24 D-all/100 of 140 C/40 of 80 B), 47,960 g, gold 47,561→95,521. `423`: both Daily Random Boxes opened (Mana Bolt rune, 3 Standard Mana Potion). `424`: rune consumed, Mana Bolt D→C (floor ×1.15). `425`: Adaptive Titan Coif bought (6,750 g, gold→88,771) and equipped; STR 67→74, AGI 95→93, reduction ≈31%→38%. `426`: pending +8 AP claimed with unspent 5, allocated +8 INT/+5 AGI; AGI→98, INT→69; max Mana 122→138, refilled. `427`: promotion barrier, `gatefall.skill_formation` explicit `none`. No level/XP/Health/title/quest movement; no identifiers minted. New high-water mark **EVT-000427**.

Prior span, promoted and checkpointed at 0074. Since Checkpoint 0073 (canon through `EVT-000418`): **`EVT-000419`** — the Keen Sense unfreezing, below. Since Checkpoint 0072: **`EVT-000413`-`EVT-000418`.**

**`EVT-000419` — Keen Sense advances Expert → Master, and the reason it had not is the finding.** Its line carried *'progress 2/3 toward Master (capped until level 30)'* on the authority of the Section 7.5 ceiling — **which is a ceiling on Rank, not on mastery.** Section 7.4 places none on mastery, and `EVT-000396` had explicitly built it *'a fresh track.'* Seven qualifying scenes had accrued against a 3-scene track while the counter sat still. **`mastery_level` 4 → 5, `mastery_progress` 2 → 0 (complete at Master), `scope_floor` 7 → 8: scope 7 → 8 subjects, Mana holds at 1.** It now stands at Master **and** at its Rank ceiling simultaneously — Section 7.5 **withholds** the breakthrough rather than offering it, recorded not silent, and it becomes ascension-ready the instant System Rank reaches B at level 30. **Third instance of `F-012`'s shape; the player found it by asking.**

**`EVT-000413`** — the overdue `GB-04` board break, settled retroactively to midnight 2026-08-12. **`EVT-000414`** — the twenty-third daily, issued and completed, streak 8 → 9. **`EVT-000415`** — Dale Pruitt's B-Rank harvest: 64 crystals mined solo across three veins, 19 declared, $60,677.42 filed; Keen Sense ×3 and Resonance Extraction ×3, all landed. **`EVT-000416`** — the $60k conversation, Owen declining harvest work with his reasons, and the Longsword [C-Rank] handed over. **`EVT-000417`** — the Frozen Gallery instant dungeon: Owen killed 9 commons, 2 elites and a D-Rank boss with Alexander coaching and never striking; XP 630 → 1,205; 24 crystals, 3 cores and a Longsword [D-Rank] taken, none split. **`EVT-000418`** — the promotion barrier: both domains `none`, and **Exploit Pattern advanced Adept → Expert** with its counters written rather than narrated.

**Counter movement this span:** Keen Sense +5 uses/+2 scenes; Resonance Extraction +3/+1 and progress to 1/3; Exploit Pattern +6/+1, level 3→4, progress reset to 0; Field Command +6/+1, progress to 1/3; Mend +3/+1, progress to 2/3; Flux Sight +4 uses. **No level crossed, no Stat moved, no title changed, no gold or cash moved.** New identifiers: `EVT-000413`-`EVT-000418`, `ENT-000204`, `ENT-000205`, `REL-000097`.

Prior span, promoted and checkpointed at 0072: `EVT-000407`-`EVT-000412`.

**`EVT-000407`** — the readiness-gate settlement: three owed Section 7.4 mastery advances (Flash Step → Expert, Sprint → Adept with Mana 3→2, Resonance Extraction → Expert), two stale weapon previews recomputed (128→129, 112→113), Mana Bolt corrected 100→99, three banked holdings restored to `inventory.gear`. No fictional time, no scene, no die. Section 7.5's standing check returned **no open and no withheld Rank-ascension offer**.

**`EVT-000408`-`EVT-000411`** — the played evening, 16:45 → 22:30: no combat, no hazard, no damage, three Keen Sense activations and nothing else rolled. **Keen Sense +2 uses / +2 scenes** (one failed read credits nothing; the two Nakamura reads share one scene). **2 Mana spent, fully recovered in-span**; both pools at cap, remainders zeroed. No XP, level, Stat, title, quest, gold or cash movement. Materials out to Nakamura (5 B crystals, 7 C crystals, 2 C cores, 8 D cores, 1 E core — line closed); the Dormant Core into her custody, ownership unchanged; **$800 owed unpaid**. New identifiers: `EVT-000408`-`EVT-000411`, `REL-000095`, `REL-000096`. No new `ENT-` or `REC-`.

Prior span, promoted and checkpointed at 0071. Since Checkpoint 0069 (which held canon through `EVT-000397`): `EVT-000398`-`EVT-000404`, a full day's play — the Cicero Scar harvest job, the balcony conversation, a solo C-Rank instant dungeon (Crypt, five commons and both elites by ambush, a Serpentine boss by Rupture and dagger), a Level 21→22 crossing mid-fight, full loot extraction, and Wade's closing call settling both `OBJ-23` and (via the dungeon itself) `OBJ-25`. **Real skill activations and real counter movement across the whole span** — Keen Sense, Exploit Pattern, Resonance Extraction, Silent Step (first real use), Twin Fang, Flash Step, Rupture, Sprint, Mana Bolt, Broken Rhythm and Pre-empt all recorded genuine uses; three skills (Flash Step, Sprint, Resonance Extraction) each banked a third qualifying scene at their level, recorded at the time as open `pending-ratification` offers and **settled as the automatic Section 7.4 mastery advances they always were at `EVT-000407`**. Cash $42,936.50→$45,074.00; gold unchanged at 47,561; XP 1630/2100→630/2200 across a level crossing; base Stats each +1; unspent points 0→5. Materials: C-Rank crystals 82→147, C-Rank cores 4→7. No new `ENT-`, `REC-`, or `REL-` this span. New identifiers: `EVT-000398`-`EVT-000404`.

**Prior spans, all promoted and checkpointed — index only; the chronicle holds the detail.** Checkpoint 0069 promoted through `EVT-000397` (the two-spell profile adoption and the skill-audit repairs). Checkpoint 0067 promoted through `EVT-000378` (`EVT-000370`-`EVT-000376` play, `EVT-000377` the checkpoint audit, `EVT-000378` Profile 1.51). Checkpoint 0065 promoted `EVT-000355`-`EVT-000361`, the out-of-character System block — first title loadout, 56 points spent, streak box, 44 crystals sold, Premium rotation — with zero skill activations. Checkpoint 0064 and earlier promoted `EVT-000338`-`EVT-000354`, the B-Rank trial through Loomis Street: Levels 14→21, System Rank D→C, `ENT-000194`-`ENT-000197` and `REL-000090`-`REL-000093` minted, Profile 1.47 adopted with both retroactive Title Assessments.

---

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-16T15:00:00-05:00"
  hidden_pointers_attached: 2
  hidden_last_attached: "2026-08-13T17:50:00-05:00"
  hidden_dry_days: 3
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 23
  concealed_records_available: 15
  tracked_postings: 0
```

**Reading it, 2026-08-16 15:00.** Both dry counters tick by one on the day crossing. **No Urgent offer** — §8.4.2 was never close: the harvest job put him behind a nine-strong strike line where the only endangered people were doing the job they signed and insured for (the contract exclusion, exactly), and the instant dungeon is a **solo-opened instance**, which §8.4.2 states can never generate an Urgent quest at all. Bringing Owen in does not change that — criterion 1 requires an imperilled person *other than* the Bearer, and Owen took 31 damage against a 275 pool with no exchange approaching lethality. **No Hidden pointer** — no proximity to a concealed-discovery record and no clue about a distinct concealed subject; `ENT-000193` remains authored and unattached, and both Marnie threads sit with Fenn rather than advancing under Alexander's own action. **`tracked_postings` falls to 0** on `GB-04`'s settlement — the board is empty, so no board deadline can fire until something new posts.

**Reading it, 2026-08-15 22:30 (same calendar day; dry-day counters do not tick twice).** Dispatched on `scene.opened` and on `location.changed` at both the lakefront and the workshop. **No Urgent offer** — §8.4.2 criterion 1 never met; a park, a rideshare and a workbench threaten nobody, and no Gate creature, break, or sealed-instance hazard appeared. **No Hidden pointer** — no actionable proximity to a `concealed-discovery` record and no clue about a *distinct* concealed subject. The Nakamura identification advances an authored objective (`OBJ-16`) about an object he already owns, not a concealed record; §8.4.3 criterion 1 requires a complete record authored in an earlier exchange. `ENT-000193` remains authored and unattached. `gatefall.board.deadline` settled nothing — the single tracked posting is inside its window.

**Reading it, 2026-08-15 ~16:45 (same calendar day as the last reading; dry-day counters do not tick twice).** No Hidden or Urgent trigger fired today. **No Hidden pointer:** the Cicero Scar structural read couldn't clue on `ENT-000151` (needs a BGM-escorted posting inside the core blocks); the instant dungeon carries no concealed-discovery record. **No Urgent offer:** §8.4.2's criterion 3 excludes a party-entered instant dungeon; nothing else met criterion 1. `ENT-000193` remains authored, unattached. Twenty-two-day drought holds.

**Prior readings, 2026-08-14 and 2026-08-15 06:00 and 16:45 — all `none` on both domains, detail retired to the chronicle.** The structural finding worth carrying forward: **twenty-two days without an Urgent offer is the campaign's longest supply drought, and it is by design rather than accident.** The more of his dangerous time Alexander spends in private instances, negotiations, and rooms with one other person in them, the less of his life is Urgent-eligible — exactly what §8.4.2 says should happen. `ENT-000193` ('Who Runs the CONSULT Operation') has been authored-but-unattached throughout, because every new fact since has refined the *same* attached subject rather than resolving a clue about a distinct concealed one.
