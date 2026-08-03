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
  source: EVT-000377
  game_date: "2026-08-14 ~18:10 -05:00"
  real_date: "2026-08-03"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- **World:** Gatefall
- **World Rule Profile:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`, Profile 1.50
- **Engine Rules:** 0.3.0
- **Data Model:** 0.1.6
- **Campaign time:** 2026-08-14 (Friday), approximately 18:10 CDT (`-05:00`)
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0067/` — Checkpoint 0066 audited: the XP that did not add up, the count that went stale, and the promise the key was carrying.
- **System Rank: D → C**, crossed at the Level 20 threshold this checkpoint (`EVT-000341`).
- **Stat Passives, Profiles 1.48-1.49** (`EVT-000362`-`EVT-000365`). Section 4.4's missing B/A/S rungs were authored, so all four clamped passives rose **C → B** at once on Stat already banked — no Stat moved. **Overpower** *redirection*; **Pre-empt** *first blade* (resolves first in any exchange he opens); **Shrug Off** *total suppression*, now holding a full **S**-Rank of Vitality against the System Rank ceiling alone (A at level 40, S at 50). Flux Sight unchanged at B.
- **Multitask retired; Intelligence's passive is Conduit.** Its only grant was a quest ceiling that never bound — use counter **0**, no Urgent quest in ninety days — so **capacity moved to System Rank** (C → **4**, nothing evicted) and Intelligence took the resource it owns. **Conduit at B: Mana recovery +20 points — 30%/hr active, 45%/hr resting.** It cannot refill mid-fight; §5.3 exhaustion untouched.
- **`shop_holdings` is now `inventory`, grouped by kind** (`EVT-000366`, Profile 1.50 at `EVT-000367`) — after a `/system gear` render dropped the Gate Direction Finder off it. **31 holdings, one per entry: keys 3 · consumables 6 · special 4 · gear 12 · materials 6.** Was 27 at Checkpoint 0065; `EVT-000373` added the listening rig and `EVT-000375` added the Longsword [C-Rank], the C-Rank crystal stock, and the C-Rank core stock, while the spent Crystal Key left `keys` and the fresh Instant-Dungeon Key [C-Rank] replaced it. A repository check holds the shape.
- **Titles are live and equipped for the first time** (Profile 1.47, `EVT-000348`-`EVT-000349`, `EVT-000357`). **Ten of twenty-one granted** — seven at level 10 (Kingmaker, Underdog, Diehard, Loner, Untouchable, Centurion, and the **Rare** Cartographer) and three at level 20 (Prospector, Penitent, Ascetic). **Both slots now filled: Ascetic and Prospector.** The other eight are dormant. **Next assessment: level 30**, opening a third slot.
- **Every stat point is spent** — 53 banked plus the claimed +3, all 56 allocated across `EVT-000357` and `EVT-000360`. `unspent_points` reads **0** for the first time since Level 15.
- **Every Stat Passive is at B; only Shrug Off is clamped there.** 1.48 authored every rung, leaving the **System Rank + 1 ceiling** (§7.5) as the last limit, and it binds Shrug Off alone on a full S of banked Vitality. The other four sit where their Stat puts them, all short of the **A threshold at 66**: Overpower 61, Flux Sight 60, Conduit 58, Pre-empt 54.
- **A new, live piece of leverage exists:** Wade Bishop is materially compromised — a confirmed B-Rank Gate staffed at 4 combat-rated hunters against a legal minimum of 8 (`110_WORLD_LEDGER.md`, `140_OBJECTIVES.md` `OBJ-27`).

---

## Protagonist

- **Alexander Pendragon:** Level 21, C-Rank System Rank, 1,630/2,100 XP.
- **Health:** 330/420. **Mana:** 26/120. No injury — real damage taken in the instant-dungeon clear (`EVT-000375`) but nothing classified. Both settled from resolved combat exchanges, not passive recovery; maxima unchanged since the last allocation.
- **Stats (base):** Strength 61, Agility 54, Vitality 100, Perception 60, Intelligence 58. **Effective:** Strength 70, Agility 94, Vitality 105, Perception 60, Intelligence 60. The Vitality line is where 43 of the session's 56 points went, and it bought Health rather than Shrug Off — which holds at C-Rank with an S-Rank rung's worth of Stat retained intact.
- **Titles held: 10 / 21 (nine Common, one Rare). Both slots filled — Ascetic and Prospector** (`EVT-000357`). The eight dormant include the strongest situational picks if he wants to swap before a Gate: **Cartographer** (Rare — a Gate's archetype known on entry without a read, plus +1 step on anything exploiting the twist), **Kingmaker** (his relayed reads buy an allied hunter +1 step), **Underdog** (+1 step on his first action against anything orange or red — at System Rank C on B-Rank work, most of it), **Loner** and **Untouchable**. Swapping is free, instant, and takes no action in a fight, but a newly equipped passive applies only from the next resolved action.
- **Unspent stat points: 0.** All 56 allocated across `EVT-000357` (49: Perception +6, Intelligence +4, Strength +1, Vitality +38) and `EVT-000360` (7: Agility +2, Vitality +5).
- **Pending rewards:** Status Recovery ×13, and nothing else. The Ability Points +3 was claimed at `EVT-000357` and the streak-upgraded Daily Random Box opened at `EVT-000358`.
- **Daily streak: 7.** Twenty-first daily completed 2026-08-14 06:00 (streak 6→7); the twenty-second issues 06:00 on 2026-08-15 and will be the first to pay **+4** Ability Points under the newly equipped Ascetic. The character sheet's own `daily_quest` block had gone stale at its 2026-08-09 figures and was reconciled to these values by owner ruling at `EVT-000355`.
- **Daily Premium: the 2026-08-14 Prismatic cycle is live, 0/6 bought, rotating 2026-08-15 06:00** (`EVT-000356`) — the first cycle ever rolled against System Rank C. Full offer list in `100_CHARACTER_SHEET.md`. At 47,561 g every offer is individually affordable for the first time in the campaign; all six together come to 53,000 and are not.
- **Equipment change:** the recovered **S-Rank dagger is equipped for the first time**, main hand — Agility +22, weapon power 22, armed strike ×0.75 base. The **Ghost Quickknife [B-Rank]** moves to off-hand. The prior **C-Rank Quickknife** is unequipped, banked unused. Total physical reduction unchanged, ≈26%.
- **Skill changes this session:** **Resonance Extraction** advances Practiced → Adept (its third qualifying scene, a legendary-sited B-Rank vein). **Shrug Off** triggers its threshold absorption for the first time. **Flux Sight** ranks C → B cleanly on Perception growth (reads item Rank/full stat line on sight now). **Overpower and Shrug Off do NOT rank up to B** despite crossing the B-Rank stat threshold — Section 4.4 clamps their B/A/S rungs as unauthored; both render `[C-Rank, held: [B-Rank] rung unauthored]`.
- **Cash:** $43,129.60 — $650 spent on a listening rig at Walt Adamik's (`EVT-000373`). **Gold: 47,561**, unchanged this span — no shop transaction. **Pending income:** $2,137.50 (processing, older) plus **$221,540 from Wade Bishop**, filed and processing (`EVT-000371`) — none of it received or counted in cash on hand.
- **B-Rank crystals: 40 banked, undeclared** (mined pool, unchanged this span) — see `140_OBJECTIVES.md` `OBJ-27` and `100_CHARACTER_SHEET.md` for the 25 further B-Rank crystals and 1 core still sitting undivided in the trial Gate's combat pool.
- **C-Rank crystals: 82 banked**, new this span (`EVT-000375`) — 10 beast-drop, 72 mined, the instant dungeon's full deposit. **4 C-Rank cores** banked alongside them.
- **New gear this span:** a **Longsword [C-Rank]** boss drop (Predator Imprint, Edge Echo), unequipped; a fresh **Instant-Dungeon Key [C-Rank]** (Alpha A's boss drop), unused; a mundane **directional listening rig**, unused. The **Crystal Key [C-Rank]** that opened this clear is spent.
- **Consumables:** **12 Lesser Healing, 8 Lesser Mana** (2 drunk this span, `EVT-000375`), **2 Standard Mana**, 2 Antidotes, Mender's and Stabilization Seals.
- **Current location:** home, Rogers Park apartment — back from the instant-dungeon clear, waiting on Wade's delivery of the Watcher Torso and Fenn's report.
- **Immediate obligations:**
  - **Crew training — fully closed.** Monday 2026-08-17, 18:00, at the **freight yard off Ashland** (`ENT-000200`, booked through Duane `ENT-000199`, $400 cash due on arrival, `EVT-000373`). All ten confirmed the location; Soraya's gear question answered (not mandatory). Nothing left owed on this thread before Monday itself.
  - **Wade Bishop's trial-Gate payout: filed, not landed.** $221,540 total (`EVT-000371`), processing on the standard 1-2 business day window. The boss-drop **Watcher Torso [B-Rank]** (Perception +5, 12% reduction, Boss Imprint) is outside that cash figure — **Wade is bringing it to the apartment tonight**, not yet arrived. Alexander hasn't said what he'll do with it.
  - **Wade Bishop separately owes the Ironline guild-decision call tomorrow, 2026-08-15** (`OBJ-23`) — genuinely undecided, now weighed against real leverage rather than just Wade's pitch.
  - **Rosalind Fenn is investigating two threads** (`ENT-000198`, `EVT-000374`): the Marnie disappearance and the Meridian Cold Storage ownership question (`OBJ-21`), both running in parallel, 2-3 days before anything concrete.
  - **Confirmed jobs stacking:** Wade's B-Rank harvest trial itself now closed; Ada's C-Rank harvest (8/15 morning), Dale's B-Rank harvest (8/16 morning).
  - **Marnie:** the search is now a professional investigation rather than Alexander's own legwork. Loomis Street is located, read twice (`EVT-000353`, `EVT-000372` — the second read finding a real camera blind spot, manned by the parked van), and still not approached. Walt Adamik's channel closed; Fenn's now working it.
  - **Owen owes Alexander $2,925** toward the deposit — still not repaid.
  - Priya still hasn't told Julian or Renata (`OBJ-12`).
- **Daily Premium:** unchanged this session, rotation carried from 2026-08-13.

---

## Wade Bishop, and What Changed

**He is no longer merely a recruiter Alexander is evaluating.** Confronted first over the trial crew's total lack of coordination — the same failure as the D-Rank trial, confirmed to Alexander's face by two of today's hunters as standard practice — and then over a genuine, confirmed crime: today's B-Rank Gate ran 4 combat-rated hunters against a legal minimum of 8. Wade conceded both without argument. In exchange for Alexander's discretion before his end-of-day report, Wade accepted retroactive (and still-insufficient) roster inclusion, report review before filing, confirmed standard shares, and an ongoing unofficial arrangement — contacts, hunters, artificers, information, nothing manual or independently prosecutable. **He delivered the payout numbers that same evening** (`EVT-000371`): $221,540 total, filed and processing. The separate Ironline decision is still owed tomorrow. The two of them both know the relationship's actual shape has changed.

---

## Current Situation

**2026-08-14, ~06:00-12:15 (`EVT-000338`-`EVT-000347`).** The twenty-first daily completed with Owen at dawn, then Wade Bishop's long-owed B-Rank harvest trial past the Region V line. Alexander entered alone over Wade's objection; a botched stealth entry and a scrambled Keen Sense read (both natural critical failures) alerted the swarm on arrival. Equipped the recovered S-Rank dagger for the first time and cut through the bulk of a 24-common Hive swarm across a long engagement, providing the tactical reads (a chokepoint funnel, a burrower boss's sweep tell and cracked belly plate) that let four borrowed hunters — Corbin Yates, Felix Aranda, Dana Whitcombe, Warren Sato — hold and eventually close the fight. A catastrophic fumble chained into a critical enemy hit dropped Health to 0 mid-fight; Shrug Off's threshold absorption held for the first time. The boss died to a coordinated Dana/Felix strike on the exploited weak point; the Gate collapsed, and the two-hour clear window that followed was spent mining a legendary-sited vein for 104 B-Rank crystals. Kill XP, the Gate-clear milestone, and retroactive contribution credit carried Alexander from Level 14 at the trial's start to **Level 21**, crossing **System Rank D→C**.

The trial's aftermath mattered as much as the fight: the crew thanked him and took his number for the crew he's forming; and a direct confrontation with Wade over the borrowed crew's coordination surfaced a genuine legal violation — the crew's headcount was half the legal minimum for a B-Rank posting. Alexander used it as leverage rather than simply walking away, extracting concrete terms before Wade's report goes in tonight.

**2026-08-14, ~12:20-14:30 (`EVT-000350`-`EVT-000354`).** Over the round he bought, pressed by Dana for specifics, Alexander finally named a date for the first crew training — **Monday 18:00**, location owed by Saturday — and then texted it to the other six. All ten confirmed; the campaign's longest-running blocker closed in about twenty minutes, and the two people who had frozen on it (Iris, Soraya) are now committed to attend.

Then the Marnie thread, both leads at once. A call to Walt collected the inquiry due today: **it failed badly** — his thirty-year contact was frightened by the single word 'CONSULT' and cut the line, which is a worse finding than silence. Walt volunteered a warning nobody asked for. Alexander went to **Loomis Street** anyway and read it from the pavement: an unremarkable industrial block with exactly one building that doesn't belong — unsigned, cameras covering every approach, an occupied van with a cold engine parked opposite. Professional, funded, deliberately unadvertised. He has the address and the read. **Nothing there has seen him, and he has not gone near the door.** Current anchor: standing on that street, deciding.

**2026-08-14, ~14:30, at that same unmoved anchor (`EVT-000355`-`EVT-000361`).** Out-of-character System work with no fiction in it: no scene, no NPC, no world-facing die, no minute elapsed. Titles equipped for the first time, all 56 banked points spent, the streak box taken as gold, 44 crystals sold, the Premium tab rotated. On paper he is a different proposition than two hours ago — nearly twice the Health, four times the gold, two live passives — and none of it has been tested against anything. The building across the road is exactly as it was.

**2026-08-14, ~14:30-16:45 (`EVT-000370`-`EVT-000374`).** The trial Gate's owed boss-drop rolled live (**Watcher Torso [B-Rank]**) and Wade texted the full payout, $221,540 filed and processing. A math/physics read (not a System skill) found a real camera blind spot on Loomis Street's north wall, manned by the parked van. Told Walt Adamik everything short of the dock; he refused to arrange a break-in specialist even reframed as an owed favor, but connected Alexander with investigator **Rosalind Fenn** (took on the Marnie and Meridian threads together) and referred **Duane**'s freight yard off Ashland, booked for Monday's training — closing that objective's last two blockers. Bought a listening rig.

**2026-08-14, ~16:45-18:10 (`EVT-000375`-`EVT-000376`).** Walked home and opened the banked Crystal Key [C-Rank] for solo training. Rolled **Beast Den** — twin C-Rank boss alphas instead of one. Cleared the full population (6 commons, 2 elites, both alphas) across a real fight with a critical failure, a failed separation attempt, and two natural criticals on the way to both boss kills. Full loot extracted, deposit fully mined, 1,160 XP, no level crossed. Currently home, Health and Mana down from the fight, waiting on Wade's delivery and Fenn's report.

---

## Open Threads

- **First crew training is set: Monday 2026-08-17, 18:00, freight yard off Ashland.** Location and gear question both closed (`EVT-000373`). Nothing left owed before Monday itself.
- **Marnie's disappearance is now a professional investigation.** Rosalind Fenn (`ENT-000198`) is working it alongside the Meridian warehouse thread, 2-3 days estimated. Loomis Street's building is located, read twice, and still not approached — a real camera blind spot found this session, manned rather than closed. The dock and everything taken from it were deliberately withheld from Fenn.
- **Wade Bishop's payout is filed but not landed** — $221,540, standard processing window. The Ironline decision call is still owed tomorrow (2026-08-15).
- **The boss-drop Watcher Torso [B-Rank]** is not part of that cash figure. Wade is bringing it to the apartment tonight, not yet arrived; Alexander hasn't said what happens to it.
- **The B-Rank legal-minimum violation** (`110_WORLD_LEDGER.md`) is unreported to any authority beyond Alexander and Wade. Whether it's isolated to today's trial or a wider Ironline pattern is unestablished.
- **Four new crew contacts** (Corbin, Felix, Dana, Warren) — genuine interest, nothing scheduled beyond Monday.
- **The S-Rank dagger is now equipped and visibly in use** — a live provenance/exposure risk (Section 19), accepted knowingly rather than avoided.
- **40 undeclared B-Rank crystals** banked, unsold; separately, **25 further B-Rank crystals and 1 core** sit undivided in the trial Gate's combat pool pending Wade's physical split.
- **82 C-Rank crystals and 4 C-Rank cores** banked, new this session (`EVT-000375`), unsold.
- **A Longsword [C-Rank]** boss drop (Predator Imprint, Edge Echo) banked, unequipped.
- **The Daily Premium tab expires 2026-08-15 06:00** with nothing bought. Six offers, 47,561 g, and no decision made.
- `OBJ-12` told; Priya still hasn't told Julian or Renata.
- **Confirmed jobs stacking:** Ada (8/15 morning), Dale (8/16 morning), Reyna/Owen (8/15 evening).
- Quickstep Charm [D-Rank] and Arcanist Torso [D-Rank] banked, unequipped.
- **28 D-Rank Beast Core + 1 E-Rank Beast Core** banked, unsold.
- **A fresh Instant-Dungeon Key [C-Rank]** (this session's boss drop), a second **Instant-Dungeon Key [E-Rank]**, and one **Instant-Dungeon Key [D-Rank]** banked, unused. The Crystal Key [C-Rank] is **spent** — it opened this session's clear, which is what collides with `OBJ-25` above.
- **A directional listening rig**, mundane, bought this session, untested.
- **`OBJ-18`** — neither route (elixir or cheap-Mana rune) acted on yet for Owen.
- Titan Legs [D-Rank] and Watcher Feet [D-Rank] remain banked, unequipped.
- Daily Premium rotations 2026-08-06 through 2026-08-08 remain formally unsettled by owner ruling.
- **Stat points, rewards, and the box are all settled** — 0 unspent, the Ability Points claimed, the box opened for 8,500 g. **Status Recovery ×13** is the only pending reward left.
- **AN OPEN OWNER RULING, RAISED AT READINESS — `OBJ-25` was overtaken by events.** The Crystal Key [C-Rank] Alexander used for tonight's training run is the **same key** `OBJ-25` reserved for his first solo C-Rank instant dungeon **with Owen present** as backup mender and observer, on terms both of them agreed explicitly (Owen's stop-call binding and instant). He ran it alone, at home, without telling him; the key is spent and the objective can't be completed as written. **Not ruled:** whether Alexander set the agreement aside knowingly or simply didn't connect a training run to it, and what Owen makes of it. **Owen has no channel to this yet** — nothing has told him. No `REL-000066` state moved.
- **An open owner ruling, carried and not gating:** whether Ascetic's +4 reaches a daily reward **issued** before the title was equipped. Unauthored at the seam between §3.9 and §16.3; settled at the issued +3 on the player's declared order, worth 1 point if ruled otherwise. Recorded at `100_CHARACTER_SHEET.md` `skill_rulings.ascetic_claim_timing_evt_000357`.
- **A pre-existing ledger discrepancy, flagged not resolved:** `inventory.consumables` renders **8** Lesser Healing Potions where this record says **3**. It predates this session and no Event since has touched potions, so it sat outside Checkpoint 0065's derived target set. `EVT-000366` and `EVT-000367` reshaped the field around it without picking a number.

---

## Promotion Status

Live canon is promoted through `EVT-000376`. Since Checkpoint 0065: `EVT-000370` (trial-Gate boss drop, Watcher Torso [B-Rank]), `EVT-000371` (Wade's $221,540 payout texted), `EVT-000372` (Loomis Street's blind-spot read), `EVT-000373` (Walt's shop — Fenn, Duane, freight yard booked, crew closed, listening rig bought; new `ENT-000198`-`ENT-000200`, `REL-000094`), `EVT-000374` (Fenn assigned Marnie + Meridian), `EVT-000375` (Crystal Key instant-dungeon clear, Beast Den, twin alphas, full loot, **1,400 XP**), `EVT-000376` (closing barrier settlement, `none`). XP 230→1,630/2,100, no level crossed. Cash $43,779.60→$43,129.60; gold unchanged. Nine skills advanced qualifying-scene counters — no rank-ups. Prior to that, since Checkpoint 0064: the `daily_quest` reconciliation (`EVT-000355`); the Daily Premium rotation (`EVT-000356`); the first title loadout, Ability Points claim, and 49 points allocated (`EVT-000357`); the streak box opened for 8,500 g (`EVT-000358`); 44 B-Rank crystals sold (`EVT-000359`); the final 7 points and Pre-empt's held B-rung (`EVT-000360`); the barrier settlement, explicit `none` (`EVT-000361`). No identifier minted but those seven Events. **Zero skill activations across the span**, so no skill counter moved. Prior to that: Since Checkpoint 0062: the twenty-first daily and a streak-upgrade box (`EVT-000338`); Wade Bishop's B-Rank harvest trial entered alone (`EVT-000338`); a double critical-failure entry and the S-Rank dagger's first combat use (`EVT-000339`, new `ENT-000195` Felix Aranda); the Hive swarm engagement, Levels 15-16, Shrug Off's first trigger (`EVT-000340`, new `ENT-000194` Corbin Yates, `ENT-000197` Warren Sato); the burrower boss, Levels 17-21, System Rank D→C (`EVT-000341`, new `ENT-000196` Dana Whitcombe); the richest vein and Resonance Extraction's Adept ascension, 104 B-Rank crystals mined (`EVT-000342`); 20 crystals declared, 84 kept (`EVT-000343`); crew thanks and four new contacts (`EVT-000344`, new `REL-000090`-`REL-000093`); the legal-minimum confrontation and Wade's new leverage terms (`EVT-000345`); a closing round of beer (`EVT-000346`); promotion-barrier settlement and the Overpower/Shrug Off clamp correction (`EVT-000347`); Profile 1.47 adopted and both missed Title Assessments run retroactively (`EVT-000348`-`EVT-000349`); the training date named and sent to ten people (`EVT-000350`-`EVT-000351`); Walt Adamik's supplier inquiry discharged and failed (`EVT-000352`); Loomis Street located and read (`EVT-000353`); the closing promotion-barrier settlement (`EVT-000354`). Cash and gold unchanged all session; XP 1230→230/2100 across seven level-ups; unspent stat points 0→53.

---

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-14T18:10:00-05:00"
  hidden_pointers_attached: 2
  hidden_last_attached: "2026-08-13T17:50:00-05:00"
  hidden_dry_days: 1
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 21
  concealed_records_available: 15
  tracked_postings: 1
```

**Reading it.** Counts hold across this span too. The Marnie thread advanced further (`EVT-000372`-`EVT-000374`, the blind-spot read and Fenn's engagement) but **still no new Hidden pointer attached**: `ENT-000193` ('Who Runs the CONSULT Operation') remains authored-but-unattached for the same reason as last checkpoint — the new information (the camera gap, Fenn now investigating) refines the same attached subject rather than resolving a clue about a distinct concealed one. `hidden_dry_days` holds at 1. `urgent_dry_days` holds at 21 — same calendar day, nothing in the instant-dungeon clear or the shop visit met Section 8.4.2's criteria (a solo instant dungeon can never generate an Urgent quest at all, per Section 8.4.2's own text). `concealed_records_available` unchanged at 15. `tracked_postings` unchanged, not re-checked.
