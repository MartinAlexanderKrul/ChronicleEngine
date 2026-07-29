# Current State - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8). This is the live operational ledger - read first at session start.

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000181
  game_date: "2026-08-06 ~14:52 -05:00"
  real_date: "2026-07-28"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile **1.30**)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.5
- Start city: Chicago
- Campaign date: **2026-08-06T14:52:00-05:00, mid-afternoon** — **inside a sealed E-Rank instant dungeon, archetype Overgrown Temple, opened at ~13:52 from Owen Callahan's kitchen in Rogers Park.** This is the exact canonical settlement anchor. **The instance closes at 15:55 or on the boss kill, whichever comes first.** Owen is due at Edgewater at 16:00. The next daily quest issues **06:00 on 2026-08-07**. The next crew training session is fixed for **2026-08-09, 18:00**, with a standing order that no crew Gate precedes it.
- Campaign state: session-3 in progress. Since Checkpoint 0035's 11:15 anchor (`EVT-000176`-`EVT-000181`): the lakefront reckoning over the note and the poured-out coffee, ending in a play-fight Owen won on a natural 96; a meal at Nikitas where Voula cleared the guard table after nine years and Owen told the story of the pause on the rocks; a training contract with four agreed intervention tells, and **the Stone Skin rune given to Owen, who now holds a second ability**; an E-Rank instant dungeon bought and opened as the training ground; and **Owen clearing eleven commons and an elite alone** while Alexander took no offensive action at all.
- World Rule Profile: Gatefall **1.30**, frozen on repository date 2026-07-28 — trigger telemetry at each checkpoint. Profiles **1.29** (Urgent eligibility clarified), **1.28** (the tracked board), **1.27** (concealed-canon supply), **1.26** (skill Rank ascension) and **1.25** (consumable economy and sourcing) all remain operative beneath it, unchanged this span. Alexander has no pending ratification.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0036/` — immutable Profile **1.30** / Data Model **0.1.5** capture at the 2026-08-06 14:52 anchor, requiring **no migration** on restore. **Restoring it resumes mid-clear, inside the instance, with a boss and a second elite alive at the shrine.** `900_CHECKPOINT_0035` (2026-08-06 11:15, the Loyola Park lakefront) remains the preceding immutable historical capture at the same Profile/Data-Model pair and likewise needs no migration. `900_CHECKPOINT_0034` (2026-08-05 14:40) is a Profile **1.25** capture adopting the additive 1.25→1.26, 1.26→1.27, 1.27→1.28, 1.28→1.29 and 1.29→1.30 steps at readiness with no recomputation.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-Rank hunter (~19 days).
- Status: Active, **Bearer** — **Level 10 / System Rank: D-Rank**, XP **740/1000**, Health **144/144 (full)**, Mana **72/72 (full)**, **5 unspent stat points**; base Stats **Strength 33 / Agility 32 / Vitality 32 / Perception 38 / Intelligence 36**; equipped-effective **43 / 57 / 36 / 38 / 36**. Pending rewards, unchanged and unclaimed: **Ability Points +3 ×1 · Status Recovery ×8 · Daily Random Box ×1**. **Seventeen skills**, no Rank or mastery change this span; three counters advanced (Keen Sense uses 8→9, Exploit Pattern 5→6, **Field Command 0→3 — its first material uses in the campaign**). Non-daily System quests **0/2 active**, no pending offer. Gold **1,052**; daily streak **13**. Full detail: `100_CHARACTER_SHEET.md` `system_state`.
- Location: **Inside the sealed Overgrown Temple instance, roughly eighty metres of colonnade behind him, at ~14:52 on 2026-08-06.** The mouth stands in Owen's kitchen. Nothing is owed to anyone outside until tomorrow's daily quest or the 2026-08-09 crew training — but Owen has a 16:00 shift and the instance has a hard 15:55 close.
- Condition: Health **144/144**, Mana **72/72**, **no injury**. He has not been struck, has not attacked, and has spent 2 Mana all afternoon. Mana mode `active`, remainder 0; Health mode `light`, remainder 0, at the exact `2026-08-06T14:52:00-05:00` anchor.
- Equipment: **unchanged**, full nine-slot loadout equipped, combined physical reduction ≈23%. Also held: 6 lesser healing potions, 2 antidotes, **12 E-Rank cores**, **0 E-Rank crystals** (all 112 sold this span), 0 instant-dungeon keys, one unconsumed **rune teaching Flash Step [D-Rank]** (`unbound-awakened`, and therefore still eligible to teach Owen). **$20,806.50 cash**, untouched today; **≈$40,000** still pending from the Denise Ferro harvest job.
- **Daily Premium: UNSETTLED.** The 2026-08-06 06:00 rotation was never resolved; the stored cycle is the expired 2026-08-05 Argent cycle and the anchor is now 14:52 the following day. Neither the rotation nor its Tier-1 notification fired during `EVT-000171`/`EVT-000172`, which spanned the boundary. **No replacement offer has been invented.** Settling it needs a d8 series, five d100 Rank rolls against System Rank D, model-bag draws from the stored bags, and a d10 rune skill, at Profile 1.24's 125% pricing. Full detail and the exact procedure: `100_CHARACTER_SHEET.md` `system_state.daily_premium`.
- Daily quest: **none active.** The thirteenth completed the morning of 2026-08-06 (`EVT-000172`); next issues 2026-08-07 06:00.
- Social position: unchanged in structure. Coalition freelancer (`REL-000062`); fifth-slot membership on Priya Okafor's crew with tactical/strategic field command (`REL-000065`); harvest-hire standings (`REL-000064`, `REL-000067`, `REL-000070`); an unaccepted Ironline overture via Wade Bishop (`REL-000068`); a working fence/supplier arrangement with the pawnbroker (`REL-000069`) with an artificer introduction still pending. **Personal relationship with Owen (`ENT-000139`, `REL-000066`) moved further in one afternoon than in any comparable span**: two mutual admissions of failing the same way, the largest disclosure Owen has ever made, and a gift that changed what he physically is.

## Current Situation

**The lakefront reckoning (`EVT-000176`).** Owen corrected Alexander's read of the clock off the size of the beach crowd, and volunteered that he had moved his 10:00 round at 06:40 after finding the note. The argument that followed resolved in both directions: Owen had read *you know where I am* as a coordinate rather than an invitation and deliberately stayed away, then found the full cold mug on his own counter — poured out at 10:30 in the belief it was abandoned — and conceded he had spent nine hours in a room with Alexander the previous evening without once asking about his day. Alexander had waited half an hour with the coffee made. **Owen volunteered a limit unasked**: he does not know how to be invited by a man who does not invite people, and errs toward leaving him alone. He asked to be woken regardless of how he looks, and to be the one who says he cannot; Alexander agreed and added *once I commit you cannot say no*. A play-fight ended with Owen escaping a grapple on a **natural 96** — a drilled lifeguard release, in his own water.

**Nikitas, and the rocks (`EVT-000177`).** Four blocks up Sheridan to the diner where the guard staff ate. **Voula (`ENT-000169`)** recognised Owen on the bell after nine years, corrected him to twelve, and cleared the corner booth — **the guard table**, unseated ever since, kept that way over Kostas's objections. She ordered for them, refused Alexander's money, and volunteered the memorial notice on her own door before Owen could be tactful about it: her sister's boy **Andreas**, two years ago, **not the lake**.

Owen then told the whole of it. On the rocks in his third summer he did not go in for one to three seconds, then took the nearer, conscious, easier casualty while Ruiz went past him for the girl beyond the bar. **She lived. Nobody reviewed it. Nobody noticed there had been a pause.** That is exactly why it has never resolved — his supervisor bought them a beer. He never worked a beach again, and described mending as the profession where the going-in has already been done by someone braver. He connected it to the Ashfield Gate unled, and named the real fear: not that he will fail to reach Alexander, but that he will pause again, it will work out again, and he will never know.

**The training contract, and Owen's second ability (`EVT-000178`).** Owen asked to be **trained rather than absolved**. Alexander disclosed, unprompted and when it could have stayed buried permanently, that the Lakefront booking declined at `EVT-000170` had been built the previous afternoon as exactly this scenario. Owen named it as the same paternalism and conceded Alexander had been right anyway.

Alexander's threshold was cold — he engages only when Owen would die if he did not, and will let him bleed. Owen accepted the standard and supplied the observable proxies for it, because *would die* is a conclusion arriving four seconds after the moment intervention was needed, and those four seconds are what a pause is made of. **The four tells: down and not up inside three seconds; three or more in contact and unbroken next beat; hands coming open after a hit; still standing and not answering.**

Then the gift. Alexander materialized the banked **Stone Skin rune** and gave it to him. Under Section 7.1's consumption settlement it taught at the technique's native floor against his C-Rank: **Owen holds Stone Skin [D-Rank] Novice, 30% physical reduction.** No window, no notification, nothing to see — he perceives no System, and simply knows how, the way he knows the other one. **This is the first recorded instance in Gatefall of an awakened acquiring a second ability**, against his own account of being told at twenty-two that a gift is fixed and singular for life. He identified the cost himself before consuming — it draws on the same well as his mending, making it the rocks turned into a decision he takes six times a fight — and took it anyway. Alexander's answer was **OBJ-18**: he will find a way to make the well bigger.

**The Overgrown Temple (`EVT-000179`).** An **Instant-Dungeon Key [E-Rank]** for 500 g, opened from Owen's kitchen; E-Rank chosen deliberately as the training bracket. Archetype rolled **Overgrown Temple** — a lootable shrine, guarded by an extra elite. Population **11 common, 2 elites, 1 boss**; an unextracted **11-crystal deposit**. Keen Sense on the threshold read the grid cleanly and **greyed out at the shrine**, which Alexander said aloud rather than pretend otherwise. His own deliberate analysis then landed a **legendary success**, producing two Patterns: the lattice is their road, so a man mid-bay can only be dropped on from four countable committed points and the floor is dead ground; and the shrine holds **more than one thing**, derived from lattice density rather than from the failed portion of the read.

**Owen clears the bays (`EVT-000180`).** He fought the whole span alone. Field Command relayed the bay Pattern — its first material use in the campaign — and the coaching corrected his `EVT-000116` four-inch flinch to **flinch forward**. First contact killed one and left three humiliated on a **critical failure**; the sweep ran to a **legendary success** and ten more commons without a scratch, and **by the sixth bay Owen was calling the commits ahead of Alexander**. The elite came along the floor and never committed, which is the Pattern's limit: a **partial success**, four minutes of grinding work, and the cost fell on his capacity rather than his body — **two-thirds of his well**, most of it sustaining Stone Skin's first-ever use.

Alexander sold **all 112 crystals** and bought one **Standard Mana Potion**, and Owen drank it without asking a single question. **It restored him in full** — against his own statement that capacity returns overnight at best and that this is the one hard constraint on the entire profession. His unanswered question is *how many of those can you make?*

## Current Scene Anchor

Session 3, mid-afternoon of 2026-08-06 (Thursday), ~14:52, inside the sealed Overgrown Temple instance, the bays cleared behind them. Owen sits on a column plinth with his capacity restored and Stone Skin known. **The boss (160 Health) and a second elite (80 Health) are both upright at the shrine, and neither has moved toward them yet.** The instance closes at 15:55 or on the boss kill; Owen is at Edgewater at 16:00. Nothing has been decided about whether they take the shrine at all — Alexander's own instruction was that Owen does not go near it.

**Open threads, none urgent outside this room:** the unsettled Daily Premium rotation; **OBJ-18**, the promise to enlarge Owen's well, with no mechanism identified; the moving-in question (`OBJ-15`); the pending artificer consultation and its two questions (`OBJ-16`); Walt Adamik's undisclosed reason for wanting C-Rank cores and above; the two unattached concealed threads in the warehouse district (`ENT-000165`, `ENT-000167`), both still exterior reads only; twelve E-Rank cores with one outlet; the ≈$40,000 Ferro share still processing; a standing Coalition flag for C-Rank-or-above mining; crew training on 2026-08-09 with a standing no-Gate order until then; `OBJ-12` still undecided; Priya's untested question about the spend-call; Renata's deferred *who are you, exactly?*; the sensor rig owed for Owen's 14 September birthday; Dale's B-Rank mining answer, due end of day today; Ironline's overture; and a new one — **Owen is now walking evidence of a supply channel that exists for nobody else on Earth**, and Renata reads people for a living.

## Promotion Status

Session 3 in progress — **checkpoint `900_CHECKPOINT_0036` written** at the 2026-08-06 14:52 anchor under frozen Profile **1.30** / Data Model **0.1.5**, carrying `EVT-000176`-`EVT-000181`. It requires **no migration** on restore, and it captures an **open dangerous scene**: restoring resumes mid-clear with two enemies alive.

Registry advanced through **`ENT-000170`** and **`EVT-000181`**.

**Owed at instance close, recorded here so it survives the checkpoint:** `EVT-000180`'s dangerous-scene formation audit; the qualifying-scene credit and mastery progress for Keen Sense (currently 2/3 toward Expert), Exploit Pattern (2/3 toward Adept) and Field Command (0/3 toward Practiced); and any movement on `formation_instruction`, which stands `tracking` at 1/3 and is a plausible match for this afternoon's coached clear. Section 7.1 settles danger **once**, at scene close, and this scene has not closed.

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-06T14:52:00-05:00"
  hidden_pointers_attached: 0
  hidden_last_attached: never
  hidden_dry_days: 15
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 15
  concealed_records_available: 15
  tracked_postings: 4
```

**Reading it: unchanged, and still the healthy zero.** Supply is untouched — fifteen concealed discoveries available, four postings live, no deadline reached (`GB-01` breaks midnight 2026-08-08). The dry counts have not moved because nothing this span met a bar.

**One thing did change in the input stream, and it is worth the owner noting.** Profile 1.29 established that a sealed instance can satisfy Urgent criterion 1 where the Bearer brought others in, and never where he entered alone. **This is the first instance of the campaign Alexander has opened with someone else inside since that clarification** — of the twelve he has now opened, eleven were solo. So for the first time in a private instance, an Urgent offer is *structurally* possible: Owen is a non-hostile person other than the Bearer, sealed in with him. It has not fired and should not have — Owen was never at immediate threat of death, took no damage, and the elite's answer failed outright. Recorded because the eligibility surface genuinely widened this afternoon, not because anything is owed.

**Proactive trigger audit, this span (`EVT-000176`-`EVT-000180`).** Quest checks ran at each scene opening, at each new place entered (Nikitas, the instance), and after each resolved exchange. **No Urgent condition arose** — no crisis, Gate break, or Gate creature threatened a life other than in the training instance, where Owen was never near death (Section 8.4.2, criterion 1). **No Hidden pointer attached** — no concealed-discovery record is anchored at Nikitas or inside an instant dungeon, and neither standing record (`ENT-000165`, `ENT-000167`) was approached; Alexander was nowhere near the warehouse district all afternoon (Section 8.4.3). Non-daily slots remain **0/2**, no pending offer. **Skill-formation:** three known ratified skills advanced use counters only; the batch classification at `EVT-000181` returned `none`, and the open dangerous scene's audit is deferred to its close. `dimensional_weapon_control` remains `tracking` at 2/3; `nonvisual_combat_mapping`, `formation_instruction` and `reactive_pattern_anticipation` all stand `tracking` at 1/3. No `pending-ratification` candidate exists; the readiness gate is clear.

**One exclusive writer during this session** — this session's allocations (`ENT-000169`-`ENT-000170`, `EVT-000176`-`EVT-000181`) sequence cleanly after Checkpoint 0035's high-water marks with no conflicting allocation.
