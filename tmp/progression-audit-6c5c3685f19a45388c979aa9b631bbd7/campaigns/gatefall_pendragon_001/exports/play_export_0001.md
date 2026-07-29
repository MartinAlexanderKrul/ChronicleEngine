# Gatefall: Pendragon — Session Export 0001

- Campaign: `campaigns/gatefall_pendragon_001/`
- World: `worlds/gatefall/`
- Exported: 2026-07-29T14:30:00Z
- Session span: resumed at Checkpoint 0010 (mid-combat, Ashfield Gate) → 2026-07-29 14:11, Alexander's apartment
- Latest checkpoint: `900_CHECKPOINT_0013`
- Versions: Engine 0.2.0, World 0.1, World Rule Profile 1.4 → 1.5 (authored mid-session, `EVT-000078`), Campaign Schema 0.1.2
- Label: the Ashfield clear and after

> **FIDELITY NOTICE — read before relying on this file.**
> This export is a **faithful condensed record**, not a byte-for-byte verbatim transcript. Player declarations are reproduced closely; narrator prose is compressed to its substance, with dialogue that carries canon quoted directly. Every **roll, modifier, damage calculation, identifier, and state change is exact** and was captured as the session ran, not reconstructed afterward.
> The five structured sections required by the Sufficiency Contract (Opening State, Resolutions, Identifiers Allocated, Promotions, Closing State) are present and complete, so this file **is** usable as a recovery source for mechanical state. Its narrative prose is evidence of what happened, not a substitute for the original wording.

## Opening State

```yaml
opened_from: 900_CHECKPOINT_0010
protagonist: ENT-000125
location: ENT-000087   # Chicago; inside the Ashfield Gate at resume
active_relationships: [REL-000062, REL-000063, REL-000064, REL-000065]
active_objectives: REC-000078
registry_at_open: {ENT: 139, REC: 87, EVT: 74, REL: 65}
system_state_at_open:
  level: 3
  xp: "80/300"
  health: "60/60"
  mana: "24/24"
  unspent_points: 10
  base_stats: {STR: 18, AGI: 14, VIT: 12, PER: 13, INT: 12}
  system_tier: E
  gold: 22520
  pending: {ability_points: 3, status_recovery: 1, random_boxes: 4}
```

---

## Session Record

**System** — `/chronicle` bootstrap. Engine Welcome Page rendered from `system/WORLDS_AND_CAMPAIGNS.md`; four campaigns listed. Player selected `/continue gatefall_pendragon_001`.

**System** — Campaign loaded. Live ledgers already migrated to World Rule Profile 1.4 (`EVT-000072`–`EVT-000074`). Resume anchor: mid-combat, Ashfield Gate, wounded C-grade elite active.

**Player · OOC** — "Let's first distribute the skill points. show me systeme"

**Narrator · OOC** — Full `/system` window rendered from canonical state per Profile Section 15.1: Level 3, XP 80/300, HP 60/60, MP 24/24, 10 unspent points, base Stats 18/14/12/13/12, effective 18/23/15/13/12, System tier E, gold 22,520, Daily Premium 6/6.

**Player** — "+3 strength / +3 perception / +3 inteligence / +1 vitality"

**System** — Stats allocated: STR 18→21, PER 13→16, INT 12→15, VIT 12→13. Unspent 10→0. Derived maxima re-derived, both pools already full: HP 60→64/64, MP 24→30/30.

**Player** — "I'll open one of the box before"

**Roll** — 🎲 d100: 85 → graded gear at System tier E (81–93 band)
**Roll** — 🎲 d20: 8 → Channeling Focus

**System** — Daily Random Box opened. **Channeling Focus [E]** — Intelligence +2, focus power 2, Good. Added unequipped (main hand occupied; no skill known that uses focus power). Pending boxes 4→3.

**Player** — "I don't equip it. let's continue the game. I am standing my grounds, ready for the elite like I have never been before... I use my krav maga skills and the bate hands equipped with the gauntlets with the combination of appearing and disappearing daggers."

**Roll** — 🎲 d100: 37 natural | net +1 (elite wounded) | effective 57 | partial success
**Narrator** — A gauntleted feint, the C-blade summoned mid-motion — a shallow line across the elite's flank, not the kill. Owen watching, kit forgotten.

**Player · OOC** — "who's Ilya? And shouldn't I know the monster current HP?"

**Narrator · OOC** — **Runtime error acknowledged and retracted.** "Ilya" was an invented NPC name with no canonical basis; struck from the record. On monster HP: the System's Information Boundary (Section 14.4) means it knows Bearer state only — no enemy health readout exists.

**Player · OOC** — "isn't there some rule that I can see the monster name in color and it's HP?"

**Narrator · OOC** — **Second Runtime error acknowledged.** Designation colors (Section 14.6) are real, fire unprompted, and had been omitted. Elite rendered: **🔴 RED — pulsing** (two or more bands above System tier E). HP readout confirmed as genuinely not existing.

**Player** — "I don't give up. I have two lifes on line... I use the same technics but calculating the weakest spot which hits the most."

**Roll** — 🎲 d100: 58 natural | net +2 (elite wounded +1, calculated weak-point targeting +1) | effective 98 | **critical success**
**Narrator** — Damage `(STR 21 + power 7) × 0.75 × 4 = 84`. The elite folds around the strike and staggers back two full steps.

**Player** — "I repeat it, I use the dagger and aim to the same weak spot."

**Roll** — 🎲 d100: 30 natural | net +3 (critically wounded +2, weak-point +1, at cap) | effective 90 | strong success
**Narrator** — Damage `28 × 0.75 × 2 = 42`. The elite collapses — down, breathing, unable to defend.

**Player** — "I finish it without a mercy."

**Narrator · OOC** — No roll: failure impossible against a collapsed, unresisting target (Rules Section 4.2).

**System** — Elite killed. XP: C base 60 × elite ×2 × underdog ×4 = **480**. XP 80 → 560/300 → **LEVEL UP Level 4**, all base Stats +1, Ability Points +5, HP/MP restored 68/68 and 32/32. XP carried 260/400.

**Narrator** — The clearing goes quiet. Priya, low: *"...Right. Okay."* — recalculating.

**Player** — "You guys, I keep Owen alive bit almost lost my own life. I wanted to scream for help but you weren't coming"

**Narrator** — Owen first: *"I saw it. You went down. I had the kit half open and you were already back on your feet before I'd taken two steps... I wasn't fast enough to matter either way. I'm sorry."* Priya takes formal responsibility for the rear-pair formation gap; Julian confirms with a nod that he saw nothing either.

**Player** — "I just thought you'll see a fucking big elite charging on the rear and come to help, I was just mistaken, it happens." *(insincere)* — then, to Owen, with the only smile of the morning: "I am fine now, Owen, thank you. I might need it soon more, don't use your power now - I know healing is limited." *(arm around his shoulder)*

**Narrator** — Priya: *"Noted."* Flat, professional, unwilling to relitigate. Owen laughs, surprised: *"That's the first time I've seen you smile at anybody all morning... Also, for the record, still no idea how you did that thing with the dagger twice. Gonna keep not asking, but I want that on the record too."*

**Player · OOC** — "is she asking me directly?"

**Narrator · OOC** — Confirmed: Priya is asking Alexander directly, grounded in his read having been correct twice under fire.

**Player** — "I will tell you Owen, but over a beer you're gonna pay for after we finish here." *(then, to Priya)* "Its your call, but let me calculate..."

**Roll** — 🎲 d100: 40 natural | net +1 (analytical edge, offset by Ashfield burn-haze) | effective 60 | partial success
**Narrator** — Burn-scarring density climbs **northeast** — a real lead toward the boss and den — but intensifying rather than tapering, implying worsening terrain. Reported to Priya with the catch attached.

**Player** — "is all of you D grades or some of you are above?"

**Narrator** — Priya: herself D (eight months), Julian and Renata E — then corrected: **Owen is C**, the one piece of the crew not punching over its head, and the reason a waiver-tier crew could afford a real mender.

**Player · OOC** — "can we make Owen C rank? he feels like he should be higher and the crew hired him because he is higher ranked healer"

**Narrator · OOC** — Adopted; conflicts with nothing established. Recorded in canon.

**Player** — "Owen. If anything happens, how many peoples can you heal?"

**Narrator** — *"Four. Five if I'm lucky and nobody's asking for much... Something like what you walked away from earlier — that's not one of the five, that's most of what I've got in one go. So: five people with normal problems, or maybe two of you if it's another one of those."*

**Player · OOC** — `/save`

**System** — Checkpoint `900_CHECKPOINT_0011` written. `validate_repository.ps1` PASSED (exit 0); `test_checkpoint_contract.ps1` PASSED (exit 0).

**Player** — "If you all agree I think with a property strategy now we can finish it here and walk home with bosses killed." *(looking to Owen for confirmation)*

**Narrator** — Owen agrees first and cites the owed beer. Julian shrugs and racks the shotgun. Renata: *"strategy is exactly what we've been missing... If you've actually got one, I'll follow it."* Priya cedes the call — *"you've earned it twice today"* — but demands a real plan including a contingency for her going down again.

**Player** — Full plan declared: Renata reads and locates; Julian opens on the go and fires without break; Alexander and Priya work opposite sides in rotation, each striking while the boss commits to the other; Owen held back, unguarded, to reach whoever drops.

**Narrator** — Each member raises a real objection: Renata cannot both read and cover Owen; Julian's lane closes whenever the melee crosses it; Owen is one bad thirty seconds from being the failure point; Priya's wound makes her unreliable on the front line. Priya puts the trade to Alexander: thinner watch on Owen, or lose constant fire.

**Player** — *(gives Priya a healing potion)* "Actually I bought something." — then revises: unseen approach on Renata's read, strikes from concealment before Julian opens, Renata freed to read exclusively, Owen told not to come if both are down. "I bought more stuff."

**Narrator** — Priya drinks it; Health restored, wound severity untouched (Section 6.4). *"You've been carrying this the whole time."* Not quite a question. Owen registers the fourth unexplained thing and sets it down, deliberately, unasked.

**Player** — "Let's proceed"

**Roll** — 🎲 d100: 50 natural | net +2 (Renata's guidance +1, burn-haze concealment +1) | effective 90 | strong success
**Narrator** — The den chamber: ash deep and patterned, the boss circling unaware. Priya on the far rim, Julian on the high lip, Owen back.
**System** — Ashfield Boss — 🔴 **RED — pulsing**

**Player** — "I Proceed with the plan."

**Roll** — 🎲 d100: 43 natural | net +2 (unaware target) | effective 83 | strong success
**Narrator** — Julian's opening round turns the boss into Alexander's flank; the C-blade goes in behind the shoulder joint. Damage `(22+7) × 0.75 × 2 = 43.5`. The boss commits to Priya as the wounded target; Renata calls it.

**Player** — "I observe him and calculate his weakest spot and I use my both daggers there as he is not concertanting on me hoping I will blow double damage"

**Narrator · OOC** — **Rules correction:** dual-wielding does not stack damage (Section 6.2) — one weapon's power per strike absent a named skill, which Alexander does not have. The second blade enables the feint, not a multiplier.
**Roll** — 🎲 d100: 50 natural | net +3 (attention committed elsewhere +2, weak-point +1) | effective 100 | **critical success**
**Narrator** — Damage `29 × 0.75 × 4 = 87`. The lunge at Priya dies half-formed; the boss fixes entirely on Alexander.

**Player** — "I don't stop... leave the E dagger inside him, call my C grade dagger back to my hand... 'Distract him' I shout while striking him again"

**Roll** — 🎲 d100: **1** — natural critical fumble (always live)
**Narrator** — The recall works flawlessly. The ground does not: his back foot goes through churned ash and puts him on one knee inside the boss's reach.
**Roll** — 🎲 d100: 41 natural | net +2 (target off-balance) | effective 61 | success **against Alexander**
**System** — Damage `(250 ÷ 4) × 1 × 1 × (1 − 0.087) = 57`. **HP: 68 → 12/68.** Injury threshold met on both tests (Section 6.3): **Severe injury, left ribs.**

**Player** — "I know what to do now the boss is distracted... 'I accept the daily reward'"

**System** — **Status Recovery claimed.** HP 12 → 68/68. Pending rewards now AP +3 and 3 Random Boxes.
**Narrator · OOC** — Injury severity **not** cleared — Health and severity are independent axes (Section 6.4). Owen arrives to find him whole: the third impossible recovery he has personally witnessed. He closes his kit without a word.

**Roll** — 🎲 d100: **5** — natural critical fumble (always live)
**Narrator** — The broken ribs refuse the load; the strike dies before it starts and carries him into the open.

**Player** — "Finish him from the side" *(to Priya)*, then evade

**Roll** — 🎲 d100: 88 natural | net −1 (Severe injury −1, open ground −1, boss badly wounded +1) | effective 68 | success
**Narrator** — Clear of the charge; Priya strikes it on the pass. Owen reaches him and finds nothing his gift can act on — no missing Health, only a broken body. *"Tell me what you need."*

**Player · OOC** — `/system`

**Narrator · OOC** — Full window rendered, including `Condition: SEVERE INJURY — left ribs`.

**Player · OOC** — "I don't agree that the healers only heal HP. their class should be a proper healers could heal even broken ribs... that's why I made the plan I made"

**Narrator · OOC** — Frozen Profile 1.4 quoted verbatim (§6.3 halving, §6.4 independence) confirming the ruling was file-based, not invented — followed by agreement that the design is wrong for this world, and three concrete options offered for a Profile 1.5 amendment.

**Player · OOC** — "do option A as version 1.5"

**System** — **World Rule Profile 1.5 authored and frozen (`EVT-000078`).** A mender's resolved treatment touch now clears an injury's severity outright, rank-gated (E/D/C/B+ → Minor/Moderate/Severe/Critical), costing one per-clear touch; one touch does one job. §6.4 clarified. Migration preserves all existing injuries rather than erasing them. Both validators PASSED.

**Player** — "'My ribs' I just answer Owen's question while looking at the room and boss and calculating."

**Roll** — 🎲 d100: 38 natural | net +2 (patient still, boss momentarily off him) | effective 58 | partial success
**System** — **Condition cleared — SEVERE INJURY (left ribs).** Owen: 1 per-clear touch spent.
**Narrator** — Four seconds — long enough that the window closes and Owen is exposed in the open. In those seconds Alexander reads the boss: the dragging limb carries no weight, making every left turn slow and wide.

**Player** — "'Fire between the boss and Owen!' ... I myself do what my calculations tells me to do"

**Roll** — 🎲 d100: 21 natural | net +3 (limb non-functional, known seam, slow side) | effective 81 | strong success
**Narrator** — Julian's suppressing fire turns the boss left onto the dead limb. Alexander levers the shoulder seam apart using his own embedded E-blade as a fulcrum. The front-left quarter collapses.

**Player** — "I strike him again for final one."

**Roll** — 🎲 d100: 9 natural | net +3 | effective 69 | success
**Narrator** — A long wound low on the throat. Not enough. The boss heaves its whole ruined mass sideways — a collapse aimed like an attack.

**Player** — "I put all my remaining points to agility and move from his trajectory"

**System** — Stats allocated: AGI base 15 → 20 (effective 24 → 29). Unspent 5 → 0.
**Narrator · OOC** — Disclosed at the time: the allocation does **not** change this roll's modifier — margin moves −6 → −1, both inside the 0-step band (§4.3). Real permanent growth, no effect on the immediate contest.
**Roll** — 🎲 d100: 67 natural | net 0 | effective 67 | success
**Narrator** — Forward and across, along the line of the fall. The impact pins the boss's last good limb under its own mass, ruined side skyward, unable to reach anything.

**Player** — "Let's finish this" *(strikes)*

**Narrator · OOC** — No roll: pinned, immobile, unable to defend (§4.2).
**System** — **Boss killed. Gate cleared.**
XP: C boss 240 × underdog ×4 = 960, + C-grade clear milestone 320 = **1,280**.
XP 260 → 1,540 → **LEVEL 5 → LEVEL 6 → LEVEL 7** in one settlement. All base Stats +3, +15 unspent points, HP/MP re-derived and restored **80/80, 38/38**. XP 40/700. System tier remains E.

**Player** — "Good job. All of you... We have exactly two hours to collect all crystals..." *(assigns Renata and Owen to crystal extraction; asks Julian and Priya about mining experience)*

**Narrator** — Julian: two seasons on harvest crews, slow but won't shatter anything. Priya: none, but will do as shown. **Renata stops the room:** twelve commons, five killed — *"There are seven C-grade beasts in this Gate we have never seen."*

**Player** — Revised: Renata on watch only, Priya covering, Julian and Owen extracting cores, no deep mining, move toward the entrance.

**Roll** — 🎲 d100: 92 natural | net 0 (INT margin −1, technique +1) | effective 92 | strong success — boss core extracted clean and uncracked
**Roll** — 🎲 d100: 83 natural | net +1 | effective 100 | **legendary success** — Renata's read

**Narrator · OOC** — **Runtime error, caught by the player.** The narration initially had the seven survivors fleeing toward the aperture as an incipient break. Player challenged it; §9.8 was checked and quoted: *"beasts can no more pass the threshold outward than the unawakened can pass it inward. Only a break dissolves that barrier"* — and a break requires timer expiry **before** a clear. Retracted and re-resolved: the seven are penned at the north wall, agitated, going nowhere.

**Roll** — 🎲 boss drop d100: 6 → equipment at Gate grade | 🎲 d20: 7 → **Longshot [C]**
**Narrator** — Gate-forged bow: Perception +5, Agility +2, weapon power 7, two-handed. Julian offers it straight to Priya; Alexander overrules him coldly — split or buy-out. Julian accepts flatly.

**Roll** — 🎲 mining ×5 at net +1: 97 exceptional (2), 70 success (1), 58 partial (1), 29 failure, 37 failure → **4 crystals**; crew adds 6
**Player** — "I still try to mine some more work my experience that there can be more."
**Roll** — 🎲 ×4 at net 0: **5 critical fumble**, 12 major failure, **5 critical fumble**, 75 success → 1 crystal, one shattered, **resonance chisel destroyed** (§4.8)

**Player** — "That's it. We're moving back, we are all spent and tired... And I am in real need of that beer"

**Narrator** — The crew exits; the aperture collapses. Four hours eleven minutes inside. Priya raises the filing problem: posted E–D, truly C, her signature on the line.

**Player** — "I wouldn't do it... We all would get interrogated. We had luck to come out from the dungeon Alive, don't test out luck more..." — then, under pushback: "I didn't say anything about falsification. I just think it's not the clevest to call it right now."

**Narrator** — Priya refuses falsification outright, accepts delay, and states she will file a **true** account of a mis-posted Gate. Renata supplies the binding constraint: **the loot declares the grade** — no appraiser logs C-grade stock against an E–D clear. Owen notes he alone carries no legal risk and is uncomfortable being quiet about it. Agreed: nobody files, nobody sells, reconvene 2026-07-29 18:00.

**Player** — "Let's meet tomorrow at 6 PM" *(then, to Owen)* "Beer it is"

**Narrator** — At the bar, Owen lays it out unprompted: the killing hit walked off with no mender's touch, the knife from nothing twice, the potion he wasn't carrying, and ribs he could feel were broken in a body that read as untouched. *"I'm not confused, Alexander. I'm not going to work out a normal explanation later and feel silly. There isn't one."*

**Player · OOC** — `/save`
**System** — Checkpoint `900_CHECKPOINT_0012` written — first under frozen Profile 1.5. Both validators PASSED.

**Player** — "Owen. I so much want to tell you that I was just lucky, but I know it won't work with you... Something happened to me but I am still not sure what exactly."

**Narrator** — Owen refuses to grab at it, offers a permanent exit from the topic, and answers with the thing that matters: *"**nobody knows what awakening is.** I put my hands on people and their bones go back together and I could not tell you *why* if you held a knife to me... 'something happened to me and I don't understand it' isn't as strange a sentence as you think you just said. It's most of us."*

**Player** — *(hand on his)* "This is the nicest thing anybody said to me since I awakened. I promise I tell you."

**Narrator** — Owen releases him from the promise: *"Promises made in this exact condition aren't binding and they're not fair to you. So: when you want to. If you want to."* Then: the crew has adopted him — Priya will want him on every job, Renata trusts his read, Julian handed him the tactical call.

**Player** — *(ordering two more beers)* "Yet the only one I care about it's no named"

**Narrator** — *"I'm a mender, Alexander. People are grateful to me... I get thanked a lot and it isn't the same thing at all."* Ears red. *"For the record, the feeling's mutual."*

**Player** — *(taking his hand in both)* "I'm not gonna thank you, ... instead I'm gonna get drunk with you on."

**Narrator** — *"To not knowing what we are, and doing it anyway."* Rogers Park; awakened at twenty-two and cried about it; twice declined Horizon Guild because *"guilds put you where the money is, not where the people are."* He falls asleep sitting up, mid-sentence, at 5:14 PM.

**Player** — "I finish my beer, leave money on a table for the whole tab and grab sleeping Owen on me... order a taxi fo my apartment for both of us."

**Narrator** — Boots off, kit set where he'll find it. Alexander sits on the floor against the bedframe. *Someone else's breathing is in the apartment, which hasn't been true since he awakened.* Priya texts: *"Sleep, Pendragon. You've earned about a week of it."*

**Player** — "I put myself on a bed next to the Owen, enjoying his warm... just being slightly drunk and looking at the man in my bed." → "I keep sleeping, puting my arm around Owen."

**System** — 2026-07-29 06:00 — DAILY TRAINING issued; Daily Premium stock rotated; streak 4. Dismissed unanswered.

**Narrator** — They wake past nine. Owen, wrecked: *"Did I fall asleep mid-sentence, or did I finish the shotgun argument? Because if I finished it, I won."*

**Player** — "Sure. You won." *(steals his pillow, attacks)* → *(head on Owen's chest)* "It's either never moving again - or shower. Choose wisely, O great mage."

**Narrator** — *"**Mage.** I'm a mender. There's no wand. There's no — sparkles."* Then the serious turn: Alexander's card says E, and what they did doesn't fit on it.

**Player** — "We didn't talk about the fee, mister no-sparks." → "No, the fee to use my shower."

**Narrator** — *"I got healed into a bed and now there's a toll."* — and then, quieter, his hand curled into Alexander's shirt.

**Player** — "I need to observe the animal on it's natural habitat" *(leads him to the bathroom)*

**Narrator** — *(scene transition)* Past eleven. Coffee made badly in a kitchen he's never seen. Owen in a borrowed departmental t-shirt that doesn't fit across the shoulders. *"The least lonely hour you've had since March."*

**Narrator** — Owen lays out the filing problem: Region V won't ask why an E-rank was inside, it will ask how a D/E/E/E/C crew survived — and the honest answer names Alexander.

**Player** — "The gate was posted as E, possible D, the fact it turned out C is not my problem... The problem is how are we gonna explain our survival."

**Narrator** — Owen concedes the legal point immediately and calls it tighter than Priya had it.

**Player** — "Boring... You are the only one with C grade, maybe we can play it that way, that you killed the boss, even when you are not combatter?"

**Narrator** — *"I'd do it. If that's what you needed, I'd sign it."* — then argues it down: a non-combatant mender killing a C-grade boss is *more* interesting, opens a file on him instead, needs four people to hold one lie, and Renata lies badly. Counter-proposal: **no hero.** The crew killed it in stages; Alexander was the support striker who got hurt and treated. *"It's not a lie about who. It's a lie of emphasis."* One condition: put it to Priya plainly, not cleverly — it's her signature.

**Player** — *(kisses his cheek)* "You're genius. I am totally fine with this version"

**Player** — "I answer the phone first."
**Narrator** — Priya, 11:47: at a clinic; Kesha called; Region V's monitoring registered the closure and the Coalition has been asked when the report is coming. *"If you've got thoughts about how it reads, I'd rather hear them before six than in front of everyone."*

**Player** — *(calls, follows Owen's advice, doesn't mention him)*
**Roll** — 🎲 d100: 62 natural | net +1 (her invitation and regard, the version's substantial truth, vs her commitment to filing true) | effective 82 | strong success
**Narrator** — *"I've been sitting in a waiting room for two hours... every honest sentence I drafted made me sound like a passenger on my own clear. Which is vanity, and I know it's vanity."* Limits stated exactly: she will not write that he was absent or didn't fight; she will answer any direct Region V question honestly; Julian and Renata must hear it from Alexander in the same room. *"Attention from Region V isn't a promotion. It's a process."*

**Player** — "I'll just sweat all the yesterday's beers - I do my daily regimen workout: 20 squats, 20 push-ups, 20 situps, break, repeat"

**System** — No roll (demonstrated reliable competence, §4.2). DAILY TRAINING: push-ups 100/100 · sit-ups 100/100 · squats 100/100 · **10 km run 0/10**. Time 14:11.

**Player · OOC** — `/save`
**System** — Checkpoint `900_CHECKPOINT_0013` written. Both validators PASSED (exit 0).

---

## Resolutions

| # | Intent | Natural | Net steps | Established by | Effective | Band | Event |
|---|--------|---------|-----------|----------------|-----------|------|-------|
| 1 | Random Box contents | 85 | — | table roll | 85 | graded gear | EVT-000075 |
| 2 | Box chassis | 8 (d20) | — | table roll | 8 | Channeling Focus | EVT-000075 |
| 3 | Strike wounded elite | 37 | +1 | elite wounded | 57 | partial success | EVT-000076 |
| 4 | Weak-point strike | 58 | +2 | wounded +1, weak-point targeting +1 | 98 | critical success | EVT-000076 |
| 5 | Repeat same seam | 30 | +3 | critically wounded +2, weak-point +1 (cap) | 90 | strong success | EVT-000076 |
| 6 | Finish collapsed elite | — | — | automatic, §4.2 | — | kill | EVT-000076 |
| 7 | Battlefield tactical read | 40 | +1 | analytical edge, less burn-haze | 60 | partial success | EVT-000077 |
| 8 | Unseen approach to den | 50 | +2 | Renata's guidance +1, haze concealment +1 | 90 | strong success | EVT-000079 |
| 9 | Ambush strike on boss | 43 | +2 | unaware target | 83 | strong success | EVT-000079 |
| 10 | Weak-point strike (pull aggro) | 50 | +3 | attention elsewhere +2, weak-point +1 | 100 | critical success | EVT-000079 |
| 11 | Recall-and-strike | **1** | — | natural fumble, always live | 1 | critical failure | EVT-000079 |
| 12 | Boss retaliation vs Alexander | 41 | +2 | target off-balance | 61 | success (57 dmg) | EVT-000079 |
| 13 | Strike on broken ribs | **5** | — | natural fumble, always live | 5 | critical failure | EVT-000079 |
| 14 | Evade boss charge | 88 | −1 | injury −1, open ground −1, boss wounded +1 | 68 | success | EVT-000079 |
| 15 | Owen's mender treatment | 38 | +2 | patient still, boss momentarily off | 58 | partial success | EVT-000080 |
| 16 | Lever the shoulder seam | 21 | +3 | dead limb, known seam, slow side | 81 | strong success | EVT-000080 |
| 17 | Throat strike | 9 | +3 | boss collapsing | 69 | success | EVT-000080 |
| 18 | Evade the falling mass | 67 | 0 | telegraphed, no injury | 67 | success | EVT-000080 |
| 19 | Finish pinned boss | — | — | automatic, §4.2 | — | kill | EVT-000080 |
| 20 | Renata's post-kill read | 83 | +1 | demonstrated sensor competence | 100 | legendary success | EVT-000080 |
| 21 | Boss core extraction | 92 | 0 | INT margin −1, technique +1 | 92 | strong success | EVT-000080 |
| 22 | Boss drop | 6 | — | table roll | 6 | equipment | EVT-000080 |
| 23 | Boss drop chassis | 7 (d20) | — | table roll | 7 | Longshot [C] | EVT-000080 |
| 24–28 | Mining stretch ×5 | 97/70/58/29/37 | +1 | technique vs C vein | 97/70/58/29/37 | 4 crystals | EVT-000080 |
| 29–32 | Pushing spent seam ×4 | **5**/12/**5**/75 | 0 | exhausted ground | — | 1 crystal, chisel destroyed | EVT-000080 |
| 33 | Persuade Priya on emphasis | 62 | +1 | her invitation and regard, version's truth | 82 | strong success | EVT-000081 |

## Identifiers Allocated

| ID | Names | Owning record | Established by |
|----|-------|---------------|----------------|
| EVT-000075 | Stat allocation and a Daily Random Box | REC-000079 | session play |
| EVT-000076 | The elite's defeat | REC-000079 | session play |
| EVT-000077 | Aftermath: crew regroup, rank reveals, northeast read | REC-000079 | session play |
| EVT-000078 | Gatefall Profile 1.4→1.5 mender-treatment migration | REC-000079 | owner ruling |
| EVT-000079 | The Ashfield boss: plan, ambush, Severe injury | REC-000079 | session play |
| EVT-000080 | The Gate cleared | REC-000079 | session play |
| EVT-000081 | The half-answer, the night, the agreed filing | REC-000079 | session play |
| REL-000066 | Alexander and Owen (personal) | REC-000077 | EVT-000081 |
| REC-000088 | Checkpoint 0011 manifest position | — | Decision 072 |
| REC-000089 | Checkpoint 0012 manifest position | — | Decision 072 |
| REC-000090 | Checkpoint 0013 manifest position | — | Decision 072 |

## Promotions

| Record | Change | Provenance |
|--------|--------|------------|
| REC-000074 (`100`) | Level 3→7; base Stats 18/14/12/13/12 → 25/23/17/20/19; HP 60→80; MP 24→38; unspent 10→15; Status Recovery spent; boxes 4→3; Channeling Focus [E] added; injury inflicted then cleared; profile 1.4→1.5 | EVT-000075–EVT-000081 |
| REC-000076 (`120`) | Resonance chisel marked **broken**; Ashfield haul section added (16 C-crystals, 2 C-cores, Longshot [C], unsplit); potions 10→9 | EVT-000080 |
| REC-000077 (`130`) | Crew ranks recorded (Priya D, Julian/Renata E, Owen C); Owen's healing capacity; all four situations updated; `REL-000065` → contract complete; **`REL-000066` created** with qualities/state/history/texture | EVT-000077–EVT-000081 |
| REC-000078 (`140`) | OBJ-8 complete; **OBJ-9** opened (report and split); **OBJ-10** opened (keep the System hidden) | EVT-000080, EVT-000081 |
| REC-000079 (`160`) | Seven events recorded in full | EVT-000075–EVT-000081 |
| REC-000080 (`170`) | Four changelog entries | EVT-000075–EVT-000081 |
| REC-000081 (`180`) | Date, location, protagonist state, condition, equipment, exposure note, situation, scene anchor, promotion status, latest checkpoint | EVT-000081 |
| `worlds/gatefall/206_WORLD_RULE_PROFILE.md` | **Profile 1.5 authored and frozen** — §6.3 mender severity clearance (rank-gated), §6.4 clarified | EVT-000078 |
| `system/ID_REGISTRY.md` | High-water marks → EVT-000081, REL-000066, REC-000090 | atomic with each promotion |
| `system/WORLDS_AND_CAMPAIGNS.md` | Latest checkpoint → 0013; world version → Profile 1.5 | atomic with each checkpoint |

## Closing State

```yaml
protagonist: ENT-000125
location: ENT-000087   # his studio apartment, Chicago
condition: "Whole. No injury — the Severe rib wound was cleared by Owen's touch. Rested, freshly worked out, unshowered, unfed."
system_state_at_close:
  level: 7
  xp: "40/700"
  health: "80/80"
  mana: "38/38"
  unspent_points: 15
  base_stats: {STR: 25, AGI: 23, VIT: 17, PER: 20, INT: 19}
  effective_stats: {STR: 25, AGI: 32, VIT: 20, PER: 20, INT: 19}
  system_tier: E
  gold: 22520
  pending: {ability_points: 3, status_recovery: 0, random_boxes: 3}
  daily_quest: "calisthenics complete; 10 km run outstanding; streak 4"
registry_at_close: {ENT: 139, REC: 90, EVT: 81, REL: 66}
open_pressures:
  - "10 km run owed before the daily window closes, or a penalty-zone transfer"
  - "18:00 Coalition meeting: brief Julian and Renata in person, then Priya files"
  - "16 C-crystals, 2 C-cores, Longshot [C] unsplit and unsellable until the story is agreed"
  - "Region V will read a report about a crew that should not have survived"
  - "Owen knows there is something to know, and has chosen not to ask"
  - "Resonance chisel destroyed; $80 replacement needed before harvest work"
  - "15 unspent stat points, 3 unopened boxes, an unviewed Daily Premium cycle"
```
