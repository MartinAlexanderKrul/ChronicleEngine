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
  source: EVT-000388
  game_date: "2026-08-15 06:00 -05:00"
  real_date: "2026-08-03"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- **World:** Gatefall
- **World Rule Profile:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`, Profile 1.51
- **Engine Rules:** 0.3.0
- **Data Model:** 0.1.6
- **Campaign time:** **2026-08-15 (Saturday), 06:00 CDT (`-05:00`)** — the twenty-second daily quest just issued, uncompleted.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0068/` — an evening of seeds, a story told deliberately short, and a forged roster in a blind corner.
- **System Rank C**, crossed at Level 20 (`EVT-000341`). Non-daily quest capacity **4**, derived from Rank since Profile 1.49.
- **All five Stat Passives sit at B** (`EVT-000362`-`EVT-000365`, Profiles 1.48-1.49): **Overpower** *redirection*, **Pre-empt** *first blade*, **Shrug Off** *total suppression*, **Flux Sight**, and **Conduit** (Mana recovery +20 points — **30%/hr active, 45%/hr resting**, and it cannot refill mid-fight). Only **Shrug Off** is clamped, by the System-Rank+1 ceiling alone, holding a full S-Rank of Vitality (A at level 40, S at 50); the other four are short of the A threshold at 66 — Overpower 61, Flux Sight 60, Conduit 58, Pre-empt 54. Multitask was retired as a ceiling that never bound.
- **Inventory is grouped by kind** (`EVT-000366`-`EVT-000367`, Profile 1.50), one holding per entry, shape held by a repository check. **33 holdings: keys 3 · consumables 6 · special 5 · gear 13 · materials 6** — up from 31 at Checkpoint 0067 (`EVT-000384` added the Ironline report to `special`; `EVT-000385` removed the stale equipped-dagger line and banked the two retired pieces).
- **Titles: ten of twenty-one granted, both slots filled — Ascetic and Prospector** (`EVT-000348`-`EVT-000349`, `EVT-000357`). Eight dormant, including the Rare **Cartographer**. **Next assessment level 30**, opening a third slot.
- **Unspent stat points: 0** — all 56 allocated at `EVT-000357` and `EVT-000360`, the first empty pool since Level 15.
- **Live leverage, now documentary:** Wade Bishop is materially compromised — a confirmed B-Rank Gate staffed at 4 combat-rated hunters against a legal minimum of 8, filed on a roster forged to 8 — and **Alexander physically holds that unfiled report** (`EVT-000384`, `110_WORLD_LEDGER.md`, `OBJ-27`).

---

## Protagonist

- **Alexander Pendragon:** Level 21, C-Rank System Rank, 1,630/2,100 XP.
- **Health:** **412/412. Mana: 120/120. Both full**, no injury. Restored entirely by passive recovery across the evening and a full night's rest — **no damage taken, no consumable drunk, and no Mana spent on any skill since the instant-dungeon clear**. The maximum is **412 rather than 420** because `EVT-000385`'s torso swap traded flat Vitality for Perception; nothing was lost from the current pool.
- **Loadout changed for the first time since the dagger** (`EVT-000385`): the **Watcher Torso [B-Rank]** is equipped (Perception +5, 12% reduction, Carapaced Imprint +1 Vitality, Impact Echo — once/scene, +1 step resisting stagger or knockdown), and the long-banked **Warded Vambrace [A-Rank]** is finally in accessory slot 1 (once per exchange, a landed hit takes **−30%**, multiplicative, on top of worn reduction). **Worn physical reduction ≈26% → ≈31%.** Both retired pieces — Adaptive Bastion Torso [E-Rank], Ascendant Hunter's Band [E-Rank] — are banked, not sold.
- **Stats (base):** Strength 61, Agility 54, Vitality 100, Perception 60, Intelligence 58 — unchanged. **Effective, re-derived at `EVT-000385`:** Strength **66**, Agility 94, Vitality **103**, Perception **65**, Intelligence 60. Perception carries its first equipment bonus of the campaign; Strength gave up 4 for the Vambrace, which carries no Stat line at all. The Vitality line is where 43 of the session's 56 points went, and it bought Health rather than Shrug Off — which holds at C-Rank with an S-Rank rung's worth of Stat retained intact.
- **Titles: both slots filled — Ascetic and Prospector.** Eight dormant, and swapping is free and instant out of combat: the strongest situational picks before a Gate are **Cartographer** (Rare — archetype known on entry, +1 step exploiting the twist), **Kingmaker** (relayed reads buy an ally +1 step), **Underdog** (+1 step on first actions against orange/red, which at System Rank C is most B-Rank work), **Loner**, and **Untouchable**. A newly equipped passive applies only from the next resolved action.
- **Pending rewards:** Status Recovery ×13 and nothing else.
- **Weapons unchanged:** the **S-Rank dagger** main hand (Agility +22, power 22), **Ghost Quickknife [B-Rank]** off-hand. Standard damage previews fell with Strength at `EVT-000385` — main 96→92, off 85→80.
- **No skill moved this session.** Zero activations across the whole span; the last skill changes were `EVT-000375`'s nine qualifying-scene counters, none of which crossed a rank.
- **Cash: $42,936.50** — $146.30 on thirty-eight packets of seed (`EVT-000379`) and $46.80 on dinner for two at Halvard's (`EVT-000382`). Prior line: $43,129.60 after $650 on a listening rig at Walt Adamik's (`EVT-000373`). **Gold: 47,561**, unchanged this span — no shop transaction. **Pending income:** $2,137.50 (processing, older) plus **$221,540 from Wade Bishop**, filed and processing (`EVT-000371`) — none of it received or counted in cash on hand.
- **B-Rank crystals: 40 banked, undeclared** (mined pool, unchanged this span) — see `140_OBJECTIVES.md` `OBJ-27` and `100_CHARACTER_SHEET.md` for the 25 further B-Rank crystals and 1 core still sitting undivided in the trial Gate's combat pool.
- **C-Rank crystals: 82 banked**, new this span (`EVT-000375`) — 10 beast-drop, 72 mined, the instant dungeon's full deposit. **4 C-Rank cores** banked alongside them.
- **New gear this span:** a **Longsword [C-Rank]** boss drop (Predator Imprint, Edge Echo), unequipped; a fresh **Instant-Dungeon Key [C-Rank]** (Alpha A's boss drop), unused; a mundane **directional listening rig**, unused. The **Crystal Key [C-Rank]** that opened this clear is spent.
- **Consumables:** **12 Lesser Healing, 8 Lesser Mana** (2 drunk this span, `EVT-000375`), **2 Standard Mana**, 2 Antidotes, Mender's and Stabilization Seals.
- **Current location:** home, Rogers Park apartment, **06:00 Saturday morning with Owen**, the daily quest freshly issued. Saturday was promised to the two of them; it is not actually free (see obligations).
- **TODAY, Saturday 2026-08-15 — the day is already spoken for:**
  - **09:00, Ada Reyes's C-Rank harvest job** (`OBJ-20`), morning through early-to-mid afternoon on her established pattern.
  - **19:00, Reyna Castillo's meeting**, with Owen present (`OBJ-26`). The Ada/Reyna conflict was resolved at `EVT-000318` — morning job, evening meeting, no overlap.
  - **The Ironline decision is owed to Wade today** (`OBJ-23`) — now weighed against a forged report Alexander is physically holding rather than against Wade's pitch.
  - **Wade owes the Priscilla Nakamura scheduling window today** (evening, 2026-08-16 at the outside).
  - **The daily quest must be completed before midnight** or the streak resets and the penalty zone fires at C-Rank.
  - **The Daily Premium tab's 06:00 rotation boundary has now passed unremarked in play** — the 2026-08-14 Prismatic cycle expired 0/6 bought, and exactly one fresh cycle rotates live at the next `/system shop` under the 2026-08-10 standing rule.
  - **Saturday was promised to Owen** after the morning job, which is what all of the above is competing with.
- **Immediate obligations:**
  - **Alexander is holding Ironline's unfiled trial report** (`EVT-000384`) — three pages recording a roster of eight against five present, padded with three bench names. **Whether Wade can still file without it was never raised by either of them.** The single most consequential loose object in the campaign right now.
  - **Wade Bishop's standing rejection pipeline is live** (`OBJ-28`) — every hunter who turns down an Ironline pitch, with a read, same day. Nothing due until his next pitch is refused.
  - **Crew training — fully closed.** Monday 2026-08-17, 18:00, at the **freight yard off Ashland** (`ENT-000200`, booked through Duane `ENT-000199`, $400 cash due on arrival, `EVT-000373`). All ten confirmed the location; Soraya's gear question answered (not mandatory). Nothing left owed on this thread before Monday itself.
  - **Wade Bishop's trial-Gate payout: filed, not landed.** $221,540 total (`EVT-000371`), processing on the standard 1-2 business day window. **The Watcher Torso was delivered in person at `EVT-000384` and is now equipped** — that thread is closed. The 25 B-Rank crystals and 1 core from the combat pool remain physically undivided.
  - **Rosalind Fenn is investigating two threads** (`ENT-000198`, `EVT-000374`): Marnie's disappearance and the Meridian ownership question (`OBJ-21`), in parallel, 2-3 days out. **Marnie is now a professional investigation, not Alexander's legwork** — Loomis Street located and read twice, blind spot found, **still not approached**; the dock deliberately withheld from Fenn.
  - **Dale Pruitt's B-Rank harvest, 8/16 morning** — the next confirmed job after today's.
  - **Owen owes Alexander $2,925** toward the deposit, unrepaid. Priya still hasn't told Julian or Renata (`OBJ-12`).

---

## Wade Bishop, and What Changed

**He is no longer a recruiter Alexander is evaluating; he is a compromised source who answers to him, and both of them said so out loud.** Confronted 2026-08-14 over the trial crew's lack of coordination and then over a genuine crime — 4 combat-rated hunters against a B-Rank legal minimum of 8 — he conceded both without argument and accepted terms in exchange for discretion: retroactive roster inclusion, report review before filing, confirmed shares, and a standing unofficial arrangement (contacts, hunters, artificers, information; nothing manual or independently prosecutable). He delivered the $221,540 the same evening (`EVT-000371`) and the Watcher Torso in person the same night (`EVT-000384`).

**What the lot meeting added** (`EVT-000384`): the report is **forged to eight names against five present**, using a bench roster Brannigan's office keeps for short crews — routine, not a one-off, *nobody checks unless someone dies*. He will **not** stop doing it (*probably*, not his call, never once refused a thin roster), and **three hunters he personally recruited have died in six years**. He accepted both of Alexander's asks (`OBJ-28`, the Nakamura brokerage) and let him walk off with the unfiled report. Alexander named it a partnership dryly and made clear it isn't; Wade agreed and stated the shape himself — leverage on one side, access on the other, useful exactly as long as that holds. **The Ironline decision is owed today.**

---

## Current Situation

**2026-08-14, ~18:10-19:23 (`EVT-000379`-`EVT-000380`).** A shower, a change into civilian clothes, and a walk south with nothing announced to anyone. **Thirty-eight packets of seed, $146.30**, at Glenwood Garden and Feed (`ENT-000201`) — tomatoes, chilis, basil, a long run of herbs and vegetables, half of which will not germinate until spring. It is the balcony he described out loud on the 2026-08-10 run, bought without being asked for. Wade texted about the torso; Alexander called instead and asked to compress an hour into thirty minutes. **Wade refused honestly rather than agreeing and failing (🎲 d100 8)** — the report was not yet filed, and filing it before Alexander saw it would break the term he agreed to. Alexander moved the meeting to 22:00 at Wade's office so Wade could finish, then to the lot when Wade himself named the exposure risk of a hunter walking into an Ironline building the night before deciding on Ironline.

**2026-08-14, ~20:00-21:30 (`EVT-000381`-`EVT-000383`).** Waited unannounced outside Edgewater's staff door through the ten minutes a twelve-hour Friday shift runs over. **Owen's joke failed to arrive for the second recorded time**, and the seeds landed harder than any part of the fight report — he ended up crouched on the pavement counting packets and named the calendar himself: *you bought seeds for next year.*

Then, at Halvard's (`ENT-000202`), **Alexander told him a deliberately shortened version of the trial**. Honest about the Gate's true B-Rank, the swarm, the chokepoint read, the coordinated boss kill, and System Rank C carried out of it — and edited in two specific places: that **Wade had not told him the Gate would be live** and he expected a mining job, and *closer than I liked, and I was prepared for it* in place of **Health from full to 0 in a single exchange**. Owen believed neither cleanly, said so, and **deferred the argument rather than dropping it**. What they actually fought about was a promise: *I would never leave you*, refused on its face — *you don't get to decide that from the inside of a fight* — against the thing Owen actually asked for, **a warning before rather than a report after**. It closed warmly: an apology, an unprompted *I love you*, Saturday promised to the two of them, and a long kiss in the street.

**2026-08-14, ~21:55-22:40 (`EVT-000384`-`EVT-000386`).** The lot meeting — the forged roster, the three dead recruits, the two standing asks, the torso and the report both taken; full detail in the Wade section above. Then two and a half miles home on foot to clear his head, two free loadout swaps, and a night at the apartment that is not narrated.

**2026-08-15, 06:00 (`EVT-000387`).** The twenty-second daily issued, **+4 Ability Points** for the first time under an equipped Ascetic. Both pools full. Saturday is technically the day he promised Owen and is in practice already carrying a 09:00 job, a 19:00 meeting, a decision owed to Ironline, and a regimen due before midnight.

**Earlier the same day, 2026-08-14 06:00-18:10 — compressed; full detail in `160_CAMPAIGN_CHRONICLE.md` at each cited Event.** The twenty-first daily with Owen at dawn, then **Wade Bishop's B-Rank harvest trial** entered alone over Wade's objection (`EVT-000338`-`EVT-000343`): a double critical-failure entry, a 24-common Hive swarm, the S-Rank dagger's first fight, **Health to 0 and Shrug Off's first threshold absorption**, the burrower boss killed off his relayed reads, and 104 B-Rank crystals mined in the clear window — **Level 14 → 21, System Rank D → C**. The aftermath mattered as much: four new crew contacts, and the **legal-minimum violation** confronted and turned into terms before Wade's report (`EVT-000344`-`EVT-000347`, `OBJ-27`). Then the crew training date finally named to all ten (`EVT-000350`-`EVT-000351`), Walt's supplier inquiry **failing badly** on the word CONSULT (`EVT-000352`), and **Loomis Street** located and read from the pavement without approach (`EVT-000353`). At an unmoved 14:30 anchor, a block of out-of-character System work with no fiction in it (`EVT-000355`-`EVT-000361`): first title loadout, all 56 points spent, the streak box taken as gold, 44 crystals sold, the Premium tab rotated. Then the owed boss drop rolled and the $221,540 texted (`EVT-000370`-`EVT-000371`), the camera blind spot found by ordinary analysis (`EVT-000372`), **Rosalind Fenn** engaged and **Duane's freight yard** booked at Walt's shop (`EVT-000373`-`EVT-000374`), and a **solo Crystal Key clear** — Beast Den, twin C-Rank alphas, full loot and deposit, 1,400 XP, no level crossed (`EVT-000375`).

---

## Open Threads

- **Owen believes two things about the trial that are not true, and knows he might be being managed** (`EVT-000382`). He holds that Wade withheld that the Gate was live, and that the worst moment was survivable-and-prepared-for rather than Health at 0. He named the evasion to Alexander's face and **deferred the conversation rather than accepting it** — three rows are in the Closed Channels table. This reopens the moment Alexander answers it, or the moment Wade or one of the four trial hunters says something in his hearing.
- **The unfiled Ironline report is in Alexander's inventory** — documentary evidence of a falsified roster, taken with Wade's knowledge and no discussion of what happens next. Whether Wade can still file is unestablished.
- **`OBJ-28` is live and standing:** every hunter who refuses a Wade Bishop pitch, name plus read, same day. Nothing owed yet.
- **Priscilla Nakamura (`ENT-000203`) is a second, licensed artificer route** that does not require finding Marnie first — the first movement on the Dormant Core [S-Rank] since 2026-08-11. Window owed today; nothing has been shown or named to her.
- **Ironline's roster padding is now established as routine rather than a one-off** (`110_WORLD_LEDGER.md`) — with a named mechanism, Wade's refusal to change it, and his own three dead recruits attached to it. Still unreported to any authority.

- **First crew training set: Monday 2026-08-17, 18:00, freight yard off Ashland**, $400 cash on arrival. Nothing owed before Monday. Four of the ten (Corbin, Felix, Dana, Warren) attend to decide.
- **The S-Rank dagger is equipped and visibly in use** — a live provenance/exposure risk (Section 19), accepted knowingly.
- **Unsold stock:** 40 undeclared B-Rank crystals; 82 C-Rank crystals and 4 C-Rank cores; 28 D-Rank and 1 E-Rank Beast Core. Separately, **25 B-Rank crystals and 1 core sit undivided** in the trial Gate's combat pool pending Wade's physical split.
- **Banked and unequipped:** Longsword [C-Rank], Quickstep Charm [D-Rank], Arcanist Torso [D-Rank], Titan Legs [D-Rank], Watcher Feet [D-Rank], Adaptive Bastion Torso [E-Rank], Ascendant Hunter's Band [E-Rank], and a mundane directional listening rig, untested.
- **Keys banked:** Instant-Dungeon Key at C, D, and E-Rank, all unused. The Crystal Key [C-Rank] is spent.
- **`OBJ-18`** — neither route (elixir or cheap-Mana rune) acted on for Owen.
- Daily Premium rotations 2026-08-06 through 2026-08-08 remain formally unsettled by owner ruling.
- **`OBJ-25` RULED AND CLOSED AS A QUESTION — the objective stays open, unbroken.** The owner ruled at readiness that **the agreement was never about that particular key**: what Owen was promised is that Alexander's *first solo C-Rank instant dungeon* would have him there as backup mender and observer, and that attaches to the dungeon, not to the Crystal Key that would have opened one. Alexander can buy another key; the promise is intact and simply unkept. **Nothing here needs disclosing to Owen, no breach exists, and no `REL-000066` state moved** — which is why no closed-channel row was written for it. The intent question is moot under this reading and is not carried forward.
- **An open owner ruling, carried and not gating:** whether Ascetic's +4 reaches a daily reward **issued** before the title was equipped. Unauthored at the seam between §3.9 and §16.3; settled at the issued +3 on the player's declared order, worth 1 point if ruled otherwise. Recorded at `100_CHARACTER_SHEET.md` `skill_rulings.ascetic_claim_timing_evt_000357`.
- **The potion discrepancy is RULED AND RETIRED.** The owner ruled at readiness: **12 Lesser Healing Potions and 8 Lesser Mana Potions.** Both ledgers already carried those figures — `inventory.consumables` was corrected to 12 at `EVT-000368` and this record's own line reads 12/8 — so the flag was describing a discrepancy that had already been repaired and is removed rather than carried forward.
- **A ledger defect found and repaired this session** (`EVT-000385`): `inventory.gear` still listed the **Finished dagger [S-Rank]** as a stored holding although it has been the equipped main hand since `EVT-000339`. Same double-count class as `EVT-000366`. Removed; stored gear is **13** after the removal and the two retirements.

---

## Promotion Status

**Live canon is promoted through `EVT-000388`.** Since Checkpoint 0067, `EVT-000379`-`EVT-000388`: the seed purchase, Wade's call, Edgewater and Halvard's, the walk home, the lot meeting, the run and loadout swaps, the night, the twenty-second daily, and the barrier settlement. **Zero skill activations and zero counter movement across the entire span** — the only die was `EVT-000380`'s failed compression. Cash $43,129.60→$42,936.50; gold, XP, level, base Stats, and unspent points all unchanged. New identifiers: `ENT-000201`-`ENT-000203`, `EVT-000379`-`EVT-000388`. No new `REL-`.

**Prior spans, all promoted and checkpointed — index only; the chronicle holds the detail.** Checkpoint 0067 promoted through `EVT-000378` (`EVT-000370`-`EVT-000376` play, `EVT-000377` the checkpoint audit, `EVT-000378` Profile 1.51). Checkpoint 0065 promoted `EVT-000355`-`EVT-000361`, the out-of-character System block — first title loadout, 56 points spent, streak box, 44 crystals sold, Premium rotation — with zero skill activations. Checkpoint 0064 and earlier promoted `EVT-000338`-`EVT-000354`, the B-Rank trial through Loomis Street: Levels 14→21, System Rank D→C, `ENT-000194`-`ENT-000197` and `REL-000090`-`REL-000093` minted, Profile 1.47 adopted with both retroactive Title Assessments.

---

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-15T06:00:00-05:00"
  hidden_pointers_attached: 2
  hidden_last_attached: "2026-08-13T17:50:00-05:00"
  hidden_dry_days: 2
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 22
  concealed_records_available: 15
  tracked_postings: 1
```

**Reading it, 2026-08-15.** Both dry counters tick by one on the day crossing; nothing else moved. **No Hidden pointer attached** — the evening produced no proximity to a concealed subject and no clue about a *distinct* one, both threads now sitting with Fenn rather than advancing under Alexander's own action. **No Urgent offer** — §8.4.2's criterion 1 was never met; a seed shop, a diner, and an empty lot threaten nobody. `ENT-000193` remains authored and unattached. **Twenty-two days without an Urgent offer is now the campaign's longest supply drought, and it is structural rather than accidental:** the more dangerous time Alexander spends in private instances and negotiations, the less of his life is Urgent-eligible — exactly what §8.4.2 says should happen.

**Prior reading, 2026-08-14.** Counts hold across this span too. The Marnie thread advanced further (`EVT-000372`-`EVT-000374`, the blind-spot read and Fenn's engagement) but **still no new Hidden pointer attached**: `ENT-000193` ('Who Runs the CONSULT Operation') remains authored-but-unattached for the same reason as last checkpoint — the new information (the camera gap, Fenn now investigating) refines the same attached subject rather than resolving a clue about a distinct concealed one. `hidden_dry_days` holds at 1. `urgent_dry_days` holds at 21 — same calendar day, nothing in the instant-dungeon clear or the shop visit met Section 8.4.2's criteria (a solo instant dungeon can never generate an Urgent quest at all, per Section 8.4.2's own text). `concealed_records_available` unchanged at 15. `tracked_postings` unchanged, not re-checked.
