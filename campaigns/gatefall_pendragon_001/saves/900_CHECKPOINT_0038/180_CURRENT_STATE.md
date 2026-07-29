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
  source: EVT-000187
  game_date: "2026-08-06 ~16:00 -05:00"
  real_date: "2026-07-29"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile **1.30**)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.5
- Start city: Chicago
- Campaign date: **2026-08-06T16:00:00-05:00** — **outside Edgewater Hospital, Chicago**, Alexander in civilian clothes having just walked Owen Callahan to his shift. This is the exact canonical settlement anchor. The next daily quest issues **06:00 on 2026-08-07**; crew training is fixed for **2026-08-09, 18:00**, with a standing order that no crew Gate precedes it.
- Campaign state: session-3 in progress. Since Checkpoint 0037's 15:10 anchor (`EVT-000186`): potion-use terms settled with Owen (anyone he chooses, never a mana potion), one lesser healing potion transferred to him, a goodbye kiss, a walk-long conversation covering Owen's reasons for staying at Edgewater rather than leading or opening his own clinic, a Character First where Owen accepted reassurance without deflecting it, and an open, undecided proposal (new `OBJ-19`) to book Owen's next fight through his own C-Rank license. **No World Rule Profile adoption this span** — the player explicitly held Profile 1.31 at 1.30 while it is separately in progress elsewhere; this campaign's live state remains on frozen **1.30**, not 1.31, until told otherwise.
- World Rule Profile: Gatefall **1.30**, frozen on repository date 2026-07-28 — trigger telemetry at each checkpoint. Profiles **1.29** (Urgent eligibility clarified), **1.28** (the tracked board), **1.27** (concealed-canon supply), **1.26** (skill Rank ascension) and **1.25** (consumable economy and sourcing) all remain operative beneath it, unchanged this span. Alexander has no pending ratification.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0038/` — immutable Profile **1.30** / Data Model **0.1.5** capture at the 2026-08-06 16:00 anchor, requiring **no migration** on restore, capturing an ordinary, non-dangerous closing scene (Owen already inside his shift). `900_CHECKPOINT_0037` (2026-08-06 15:10) remains the preceding immutable capture, a closed scene in Owen's kitchen. `900_CHECKPOINT_0036` (2026-08-06 14:52) is an **open dangerous scene** — restoring it resumes mid-clear with a boss and a second elite alive.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-Rank hunter (~19 days).
- Status: Active, **Bearer** — **Level 10 / System Rank: D-Rank**, XP **870/1000**, Health **144/144 (full)**, Mana **72/72 (full)**, **5 unspent stat points**; base Stats **33 / 32 / 32 / 38 / 36**, equipped-effective **43 / 57 / 36 / 38 / 36**. Pending rewards, still unclaimed: **Ability Points +3 x1 · Status Recovery x8 · Daily Random Box x1**. **Seventeen skills**, and two crossed a mastery level at the instance close (`EVT-000184`): **Keen Sense advanced to Expert** (Mana cost 2 -> 1, read now extends to himself plus 3 allies) and **Exploit Pattern advanced to Adept** (3 concurrent Patterns). Field Command took **its first qualifying scene in the campaign's life**. Non-daily System quests **0/2 active**, no pending offer — but see new `OBJ-19`, a proposal (not yet accepted) to have Owen sponsor a future posted Gate under his own C-Rank card. Gold **1,052**; daily streak **13**. Full detail: `100_CHARACTER_SHEET.md` `system_state`.
- Location: **Outside Edgewater Hospital, Chicago, 16:00 on 2026-08-06** (`EVT-000186`). Walked there from Owen's kitchen, hand in hand, in civilian clothes with the field kit stowed. Owen is now on shift; nothing is owed to anyone until tomorrow's daily quest or the 2026-08-09 crew training.
- Condition: Health **144/144**, Mana **72/72 (full)**, **no injury**. No die was rolled this span — pure conversation and one hand-to-hand item transfer. Mana recovered fully over the walk: 66 -> 72, `active` mode, remainder reset to **0** per Section 5.2, settled at the exact `2026-08-06T16:00:00-05:00` anchor (3,000s elapsed from the Checkpoint 0037 anchor).
- Equipment: **unchanged**, full nine-slot loadout stowed in the dimensional inventory (civilian clothes worn instead), combined physical reduction ~23% when equipped. Also held: **14 E-Rank crystals**, **15 E-Rank cores**, **9 lesser healing potions** (10 -> 9, one transferred to Owen under explicit terms), **2 lesser mana potions**, 2 antidotes, a duplicate **Titan Boots [E-Rank]** banked unequipped, one unconsumed **unbound-awakened rune teaching Flash Step [D-Rank]** still eligible to teach Owen, and 0 instant-dungeon keys. **$20,806.50 cash**, untouched; **~$40,000** still pending from the Denise Ferro harvest job.
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

## The Clear (`EVT-000182`-`EVT-000184`)

**The shrine read.** Keen Sense at forty metres closer found two occupants — confirming the Pattern derived at `EVT-000179` from lattice density alone — and, decisively, that both were **anchored** to a twelve-metre radius they would not leave. The boundary belonged to them and not to the party: crossable in either direction by Alexander and Owen, and a wall to the garrison. The smaller occupant walked a fixed arc reaching the edge every nine seconds with its back turned. Exploit Pattern was at capacity, so the spent lattice Pattern was dropped and the anchor took its slot. **Rank-Sight was recorded as contributing nothing** — it reads a Gate's Rank, and this instance's Rank was bought over a shop counter.

**Owen killed the second elite** off the back of its arc on a legendary success, at a walk rather than a run because a run announces itself. **The shrine reacted to that death and to none of the previous fourteen** — every rope in the vault contracting at once — and the boss came off its block to stand between Owen and the stone rather than between Owen and the exit.

**Two boss exchanges, fought alone.** Owen raised Stone Skin before contact and took the boss from 160 to 15 across two exchanges — the second arriving on the recovery beat rather than the set, the exact correction diagnosed in Priya Okafor at `EVT-000116`. The boss's one landed answer was **a driving shoulder rather than a killing strike, and it declined the follow-up it had earned**: 12 damage, and it stepped back between him and the block. It was refusing him ground, not hunting him. **None of the four agreed tells fired, and Alexander did not move.**

**The lid.** With the second elite dead the growth withdrew and the shrine came clear: a seam the full width of the block, unopenable while the guard lived. Section 17 gives an instant dungeon **no post-boss window** — this campaign's own `EVT-000097` ruling — so the lid, the eleven unmined deposit crystals and the room stood on one clock with no second chance and no second key.

**Alexander entered the fight he had sworn off, for a different reason.** A natural-99 Flash Step put him twelve metres onto the boss's blind quarter, angled so the only way it could face him was by turning off the stone; it made the correct read, committed to the larger threat, **and the correct read cost it the thing it was guarding.** He then held it with Milo's reaction-footwork drill from `EVT-000167` — exceptional success, **without striking it once**, its head never turning for the man walking past behind it. Owen slid the lid off a cavity cut square into the block: **three lesser healing potions.** A garrison, an extra elite and a sealed stone lid, for first aid.

**The clear.** The finishing blow resolved automatically against a collapsed three-legged target. **XP 760 -> 870/1000** (boss 40 + the E-Rank clear milestone 70), both credited under Section 3.8 because Alexander's die was live throughout. Loot at the clear: 14 crystals, 3 cores, a boss-drop potion cache, and the archetype's bonus roll yielding **a duplicate pair of the boots already on his feet**. **The eleven deposit crystals were lost unmined** — the price of spending the last minutes on the lid.

## The Walk to Edgewater (`EVT-000186`)

**The potion question, closed.** Alexander confirmed the terms outright: the earmarked potion is Owen's to use on anyone he judges needs it, with one hard line — never a mana potion, not to another mender, not ever. Circumspection instructions given (dose quietly, never show it, use it on someone not positioned to ask questions) and adopted by Owen as his own operating procedure rather than a rule imposed on him. Owen chose to keep his own ask to one potion. **The second of the three lid potions returned to Alexander's inventory; the earmarked one moved with Owen into his field kit and is at Edgewater now.**

**A kiss, then a forty-minute walk hand in hand**, Alexander in civilian clothes with the field kit stowed. Owen explained, unprompted, why he stays at Edgewater rather than take a year-standing offer to lead (a colleague, **Dr. Kowalczyk**) or open his own clinic: both trade away the thing that actually matters to him, being the one still in the room, and a clinic specifically removes the backstop that catches a pause the way the rocks never did. Told plainly that he'd proven himself that same afternoon, **Owen accepted it without his usual joke-deflection** — a genuine break from an established pattern, recorded as a Character First in `REL-000066`'s texture.

**New OBJ-19, open.** Alexander proposed booking Owen's next fight through Owen's own C-Rank license — a real posted Gate, Cicero-style, Owen fighting while Alexander backs off — rather than another private instant dungeon paid for out of pocket. Owen didn't decline; he named the real risk (a confirmed posting is assessed, not guaranteed — Cicero itself came in two Ranks off) and asked to actually think about it. No commitment made.

## Current Scene Anchor

Session 3, 2026-08-06 (Thursday), **16:00, outside Edgewater Hospital, Chicago.** Owen has just gone in for his shift; Alexander is alone on the sidewalk in civilian clothes, nothing owed to anyone until tomorrow's daily quest.

**Owen's supply-chain conclusion, still unresolved and unspoken (`EVT-000182`).** He worked out that **only official contracted Gate work funds a potion supply** — private instances run net negative — and said the contradiction aloud: the useful version of him is the one where Alexander keeps taking contracts, against two weeks of quietly hoping for fewer. The step he has reached and **not** said is that a mender who wants a supply has to be in the crew that earns it. Nothing proposed, nothing agreed; he has volunteered for nothing and must not be played as though he has. Directly live against `OBJ-12`, `OBJ-18`, and now `OBJ-19`.

**Open threads:** `OBJ-19`, whether Owen accepts a real posted Gate under his own license, undecided; the unsettled Daily Premium rotation, now running a third checkpoint; **OBJ-18**, the promise to enlarge Owen's well, with no mechanism identified; the moving-in question (`OBJ-15`); the pending artificer consultation (`OBJ-16`); the pawnbroker's undisclosed use for C-Rank cores and above; the two unattached concealed threads in the warehouse district (`ENT-000165`, `ENT-000167`), still exterior reads only; **fifteen** E-Rank cores with one outlet; the ~$40,000 Ferro share still processing; a standing Coalition flag for C-Rank-or-above mining; crew training on 2026-08-09 with a standing no-Gate order until then; `OBJ-12` still undecided; Priya's untested question about the spend-call; Renata's deferred *who are you, exactly?*; the sensor rig owed for Owen's 14 September birthday; Dale's B-Rank mining answer, unchased; Ironline's overture; and **Owen now carrying a System healing potion into a hospital shift, on his own terms, as evidence of a supply channel that exists for nobody else alive.**

## Promotion Status

Session 3 in progress — **checkpoint `900_CHECKPOINT_0038` written** at the 2026-08-06 16:00 anchor under frozen Profile **1.30** / Data Model **0.1.5**, carrying `EVT-000186`-`EVT-000187`. No migration on restore; an ordinary closing scene, no danger, no roll.

Registry advanced through **`EVT-000187`**. No new entities or relationships this span. Owen's (`ENT-000139`) `capabilities` framing was corrected in `130_NPCS_AND_FACTIONS.md` — no mechanical value changed, narration-only.

**The promotion barrier (`EVT-000187`) discharges cleanly: batch settlement `none`.** `EVT-000186` carried no skill activation, so no Section 7.4 reconciliation was required. `reactive_pattern_anticipation` and `formation_instruction` remain exactly as settled at `EVT-000184`, at 2/3 each. No `pending-ratification` candidate exists; the readiness gate is clear.

**The `EVT-000181` deferral is discharged.** `EVT-000184` is the dangerous-scene settlement for the whole instance: uses settled per activation, qualifying scenes once each. **Keen Sense advanced Adept -> Expert** (Mana 2 -> 1, scope himself + 3 allies) and **Exploit Pattern advanced Practiced -> Adept** (3 concurrent Patterns); Field Command took its first qualifying scene; Flash Step reached 2/3 toward Master. The Mana trace 72 -> 70 -> 71 -> 66 reconciles exactly against two Keen Sense activations and one Flash Step.

**Two formation candidates now stand at 2/3, and neither has an authored result.** `reactive_pattern_anticipation` (the footwork hold against a live boss) and `formation_instruction` (the flinch-forward doctrine delivered under fire, producing thirteen kills and one landed hit). **A third qualifying scene for either opens the mandatory Section 7.1 adjudication queue** — a scene-opening block that must be resolved by owner ruling before play continues — rather than ratifying automatically. Worth knowing before the next dangerous scene. No `pending-ratification` candidate exists today; the readiness gate is clear.

**Carried forward, unresolved for a second checkpoint: the 2026-08-06 06:00 Daily Premium rotation.** Never settled, no Tier-1 notification fired, and **no offer has been invented to cover it.**

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-06T16:00:00-05:00"
  hidden_pointers_attached: 0
  hidden_last_attached: never
  hidden_dry_days: 15
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 15
  concealed_records_available: 15
  tracked_postings: 4
```

**Reading it: unchanged, and still the healthy zero.** Supply is untouched — fifteen concealed discoveries available, four postings live, no deadline reached (`GB-01` breaks midnight 2026-08-08). Nothing this span met a bar, and nothing should have.

**Urgent eligibility was structurally live this afternoon and correctly produced nothing.** Under Profile 1.29 a sealed instance can satisfy criterion 1 where the Bearer brought someone in, and Owen was inside for the whole clear — the first time that has been true since the clarification, and only the second of twelve instances Alexander has opened with anyone else in it. It still never fired, and the record is worth keeping precisely because it came close enough to be worth checking: Owen fought fourteen creatures, took one landed hit for 12 damage against 250 Health, and was never at immediate threat of death. The bar is a threat to life, not a fight. **A quiet result from a live eligibility surface is the section working.**

**Proactive trigger audit, this span (`EVT-000182`-`EVT-000185`).** Quest checks ran at each scene opening and after each resolved exchange. **No Urgent condition arose** (Section 8.4.2, criterion 1 — no non-hostile person at immediate threat of death). **No Hidden pointer attached**: the shrine lid is a feature of an instance that no longer exists, and Section 8.4.5 forbids authoring a concealed-discovery record and attaching its pointer in the same exchange — a room that closed on the boss kill can never satisfy the later-scene requirement, so no record was authored for it. Neither standing record (`ENT-000165`, `ENT-000167`) was approached; Alexander was inside a private instance all afternoon. Non-daily slots remain **0/2**, no pending offer. **Skill-formation:** the dangerous-scene settlement at `EVT-000184` advanced Keen Sense to Expert and Exploit Pattern to Adept, gave Field Command its first qualifying scene, and moved **`reactive_pattern_anticipation` and `formation_instruction` each to 2/3**. `dimensional_weapon_control` remains `tracking` 2/3; `nonvisual_combat_mapping` remains `tracking` 1/3. No `pending-ratification` candidate exists; the readiness gate is clear.

**Audit continued, `EVT-000186` (the walk to Edgewater).** Ordinary conversation and travel, no danger, no genuine crisis, no concealed discovery approached. **No Urgent condition** — no non-hostile person at immediate threat of death. **No Hidden pointer attached.** Non-daily slots remain **0/2**; `OBJ-19` is a campaign objective, not a System quest, and mints no quest state. No skill activated, so no counters advanced and no formation-candidate scene accrued this span — `reactive_pattern_anticipation` and `formation_instruction` remain exactly as settled at `EVT-000184`, still 2/3 each. No `pending-ratification` candidate exists; the readiness gate is clear.

**One exclusive writer during this session** — this session's allocation (`EVT-000186`) sequences cleanly after Checkpoint 0037's high-water marks with no conflicting allocation.
