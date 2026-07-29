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
  source: EVT-000190
  game_date: "2026-08-06 ~15:10 -05:00"
  real_date: "2026-07-29"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile **1.35**)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.5
- Start city: Chicago
- Campaign date: **2026-08-06T15:10:00-05:00, mid-afternoon** — **Owen Callahan's kitchen in Rogers Park**, both men standing on his linoleum in full field kit, ejected there when the Overgrown Temple instance collapsed on the boss kill. This is the exact canonical settlement anchor. Owen is due at Edgewater at **16:00**. The next daily quest issues **06:00 on 2026-08-07**; crew training is fixed for **2026-08-09, 18:00**, with a standing order that no crew Gate precedes it.
- Campaign state: session-3 in progress. Since Checkpoint 0036's 14:52 anchor (`EVT-000182`-`EVT-000185`): the shrine read that found the garrison's anchor radius, Owen's legendary kill on the second elite, two boss exchanges he fought alone, the shrine revealed as a **lid**, a natural-99 Flash Step that displaced the boss off it, an exceptional footwork hold that never landed a blow, the lid opened for three healing potions, and **the Gate cleared — Owen having personally killed thirteen of the fourteen creatures in it.**
- World Rule Profile: Gatefall **1.35**, frozen on repository date 2026-07-29 — a skill is **ascension-eligible** at a target Rank only where that Rank's grant is authored and non-empty for it (Section 7.2); Section 7.5 withholds and states the offer where it is not, so no Rank step can cost mastery and return nothing. Section 7.3 authors the capability-axis rungs: Sprint **broken ground** at D and **vertical** at C, Flash Step **through the barrier** at C. Both stand at native Rank, so no rung is live. Profile **1.34** remains operative beneath it: `/system` derives standard-success raw damage before target reduction for equipped weapons and offensive active skills; Alexander's current previews are main 51, off 48, Rupture 58, and Twin Fang 51 + 55 main→off or 48 + 59 off→main. Profile **1.33** remains operative beneath it: the five Stat Passives derive Rank from base Stat, Rank-Sight is now Flux Sight, and both prior Perception names are retired. Perception 38 makes Flux Sight D-Rank with monster Rank/Health/Mana reads; Intelligence 36 makes Multitask D-Rank and non-daily capacity 3. Profile **1.32** remains operative beneath that: every fixed-Rank entity carries Rank Mana, spends it by tier, and can run dry; individual pools may vary while Section 6.2 damage remains flat. Profile **1.31** remains operative beneath that: the Rank Dominance Law is repaired on the scope axis and the passive-multiplier mastery rate is authored. Earlier profiles remain operative unchanged. Alexander has no pending ratification.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0037/` — immutable Profile **1.30** / Data Model **0.1.5** capture at the 2026-08-06 15:10 anchor, applying the additive **1.30→1.31** scope repair, prospective **1.31→1.32** Rank-Mana subsystem migration, derived **1.32→1.33** Stat-Passive migration, read-only **1.33→1.34** damage-preview migration, and the additive **1.34→1.35** ascension-eligibility correction at readiness with no recomputation, and capturing a **closed** scene in an ordinary domestic room rather than mid-fight. `900_CHECKPOINT_0036` (2026-08-06 14:52) remains the preceding immutable capture and is an **open dangerous scene** — restoring it resumes mid-clear with a boss and a second elite alive; after the chain, entities already engaged use full flat Rank Mana for that encounter and receive no mid-fight variance roll. `900_CHECKPOINT_0035` (2026-08-06 11:15) is the lakefront capture, same Profile/Data-Model pair, applying the same readiness chain.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-Rank hunter (~19 days).
- Status: Active, **Bearer** — **Level 10 / System Rank: D-Rank**, XP **870/1000**, Health **144/144 (full)**, Mana **66/72**, **5 unspent stat points**; base Stats **33 / 32 / 32 / 38 / 36**, equipped-effective **43 / 57 / 36 / 38 / 36**. Pending rewards, still unclaimed: **Ability Points +3 x1 · Status Recovery x8 · Daily Random Box x1**. **Seventeen skills**; Flux Sight and Multitask are derived D-Rank Stat Passives, while Overpower, Pre-empt, and Shrug Off are E-Rank. Keen Sense is Expert and Exploit Pattern Adept after `EVT-000184`; Field Command has its first qualifying scene. Non-daily System quests **0/3 active**, no pending offer. Gold **1,052**; daily streak **13**. Full detail: `100_CHARACTER_SHEET.md` `system_state`.
- Location: **Owen Callahan's kitchen, Rogers Park, ~15:10 on 2026-08-06.** The instance is gone; the key is spent. Nothing is owed to anyone until tomorrow's daily quest or the 2026-08-09 crew training, and Owen has forty-five minutes before an Edgewater shift.
- Condition: Health **144/144**, Mana **66/72**, **no injury**. He was never struck in the instance and struck nothing in it — his four resolved actions were two Keen Sense reads, a legendary Exploit Pattern read, a natural-99 Flash Step displacement and an exceptional footwork hold. Mana trace across the scene: 72 -> 70 (Keen Sense) -> 71 (recovery) -> 66 (Flash Step). Mana mode `active`, remainder **316,800**; Health mode `light`, remainder 0, at the exact `2026-08-06T15:10:00-05:00` anchor.
- Equipment: **unchanged**, full nine-slot loadout equipped, combined physical reduction ~23%. Also held: **14 E-Rank crystals** (the clear's full drop), **15 E-Rank cores** (12 -> 15), **10 lesser healing potions** (6 -> 10, three from the shrine lid and one from the boss cache), **2 lesser mana potions** (0 -> 2), 2 antidotes, a duplicate **Titan Boots [E-Rank]** banked unequipped, one unconsumed **unbound-awakened rune teaching Flash Step [D-Rank]** still eligible to teach Owen, and 0 instant-dungeon keys. **$20,806.50 cash**, untouched; **~$40,000** still pending from the Denise Ferro harvest job.
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

**The shrine read.** Keen Sense at forty metres closer found two occupants — confirming the Pattern derived at `EVT-000179` from lattice density alone — and, decisively, that both were **anchored** to a twelve-metre radius they would not leave. The boundary belonged to them and not to the party: crossable in either direction by Alexander and Owen, and a wall to the garrison. The smaller occupant walked a fixed arc reaching the edge every nine seconds with its back turned. Exploit Pattern was at capacity, so the spent lattice Pattern was dropped and the anchor took its slot. **Flux Sight, then named Rank-Sight, was recorded as contributing nothing** — its live E rung read Gate Rank, and this instance's Rank was bought over a shop counter.

**Owen killed the second elite** off the back of its arc on a legendary success, at a walk rather than a run because a run announces itself. **The shrine reacted to that death and to none of the previous fourteen** — every rope in the vault contracting at once — and the boss came off its block to stand between Owen and the stone rather than between Owen and the exit.

**Two boss exchanges, fought alone.** Owen raised Stone Skin before contact and took the boss from 160 to 15 across two exchanges — the second arriving on the recovery beat rather than the set, the exact correction diagnosed in Priya Okafor at `EVT-000116`. The boss's one landed answer was **a driving shoulder rather than a killing strike, and it declined the follow-up it had earned**: 12 damage, and it stepped back between him and the block. It was refusing him ground, not hunting him. **None of the four agreed tells fired, and Alexander did not move.**

**The lid.** With the second elite dead the growth withdrew and the shrine came clear: a seam the full width of the block, unopenable while the guard lived. Section 17 gives an instant dungeon **no post-boss window** — this campaign's own `EVT-000097` ruling — so the lid, the eleven unmined deposit crystals and the room stood on one clock with no second chance and no second key.

**Alexander entered the fight he had sworn off, for a different reason.** A natural-99 Flash Step put him twelve metres onto the boss's blind quarter, angled so the only way it could face him was by turning off the stone; it made the correct read, committed to the larger threat, **and the correct read cost it the thing it was guarding.** He then held it with Milo's reaction-footwork drill from `EVT-000167` — exceptional success, **without striking it once**, its head never turning for the man walking past behind it. Owen slid the lid off a cavity cut square into the block: **three lesser healing potions.** A garrison, an extra elite and a sealed stone lid, for first aid.

**The clear.** The finishing blow resolved automatically against a collapsed three-legged target. **XP 760 -> 870/1000** (boss 40 + the E-Rank clear milestone 70), both credited under Section 3.8 because Alexander's die was live throughout. Loot at the clear: 14 crystals, 3 cores, a boss-drop potion cache, and the archetype's bonus roll yielding **a duplicate pair of the boots already on his feet**. **The eleven deposit crystals were lost unmined** — the price of spending the last minutes on the lid.

## Current Scene Anchor

Session 3, mid-afternoon of 2026-08-06 (Thursday), **~15:10, Owen's kitchen in Rogers Park.** Both men in full field kit on the linoleum, coif on a chair, the note from six that morning still on the counter. Owen is unhurt, has killed thirteen things today, and has forty-five minutes before he is a mender in Edgewater.

**One thing is live and unanswered.** Owen has set one of the three lid potions on his counter, apart from the others, for **Ines** — a colleague at Edgewater he has watched budget herself down to two patients on a bad night. He named the distinction himself before anyone could name it for him: a lesser healing potion is a thing a hunter could plausibly have bought, one person on one night is not lifting the ceiling, and he will not say where it came from. Then he asked outright whether that crosses the line he was given an hour ago, and said he would put it back if told to. **The potion has not moved. The question stands.**

**Owen's supply-chain conclusion, unresolved and unspoken (`EVT-000182`).** He worked out that **only official contracted Gate work funds a potion supply** — private instances run net negative — and said the contradiction aloud: the useful version of him is the one where Alexander keeps taking contracts, against two weeks of quietly hoping for fewer. The step he has reached and **not** said is that a mender who wants a supply has to be in the crew that earns it. Nothing proposed, nothing agreed; he has volunteered for nothing and must not be played as though he has. Directly live against `OBJ-12` and `OBJ-18`.

**Open threads:** the unsettled Daily Premium rotation, now running a second checkpoint; **OBJ-18**, the promise to enlarge Owen's well, with no mechanism identified — though the potion discovery multiplies his daily output against nothing but gold; the moving-in question (`OBJ-15`); the pending artificer consultation (`OBJ-16`); Walt Adamik's undisclosed use for C-Rank cores and above; the two unattached concealed threads in the warehouse district (`ENT-000165`, `ENT-000167`), still exterior reads only; **fifteen** E-Rank cores with one outlet; the ~$40,000 Ferro share still processing; a standing Coalition flag for C-Rank-or-above mining; crew training on 2026-08-09 with a standing no-Gate order until then; `OBJ-12` still undecided; Priya's untested question about the spend-call; Renata's deferred *who are you, exactly?*; the sensor rig owed for Owen's 14 September birthday; Dale's B-Rank mining answer, due end of day today and not yet chased; Ironline's overture; and **Owen walking into a hospital shift as evidence of a supply channel that exists for nobody else alive.**

## Promotion Status

Session 3 in progress — **checkpoint `900_CHECKPOINT_0037` written** at the 2026-08-06 15:10 anchor under frozen Profile **1.30** / Data Model **0.1.5**, carrying `EVT-000182`-`EVT-000185`. At readiness it applies the 1.30→1.31 scope repair, 1.31→1.32 Rank-Mana migration, 1.32→1.33 derived Stat-Passive migration, 1.33→1.34 read-only damage-preview migration, and the additive 1.34→1.35 ascension-eligibility correction, with no recomputation; unlike its predecessor it captures a **closed** scene in an ordinary room.

Registry advanced through **`EVT-000189`**. No new entities or relationships this span; `EVT-000186` through `EVT-000189` are profile-adoption acknowledgements consuming no fictional time.

**The `EVT-000181` deferral is discharged.** `EVT-000184` is the dangerous-scene settlement for the whole instance: uses settled per activation, qualifying scenes once each. **Keen Sense advanced Adept -> Expert** (Mana 2 -> 1, scope himself + 3 allies) and **Exploit Pattern advanced Practiced -> Adept** (3 concurrent Patterns); Field Command took its first qualifying scene; Flash Step reached 2/3 toward Master. The Mana trace 72 -> 70 -> 71 -> 66 reconciles exactly against two Keen Sense activations and one Flash Step.

**Two formation candidates now stand at 2/3, and neither has an authored result.** `reactive_pattern_anticipation` (the footwork hold against a live boss) and `formation_instruction` (the flinch-forward doctrine delivered under fire, producing thirteen kills and one landed hit). **A third qualifying scene for either opens the mandatory Section 7.1 adjudication queue** — a scene-opening block that must be resolved by owner ruling before play continues — rather than ratifying automatically. Worth knowing before the next dangerous scene. No `pending-ratification` candidate exists today; the readiness gate is clear.

**Carried forward, unresolved for a second checkpoint: the 2026-08-06 06:00 Daily Premium rotation.** Never settled, no Tier-1 notification fired, and **no offer has been invented to cover it.**

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-06T15:10:00-05:00"
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

**Proactive trigger audit, this span (`EVT-000182`-`EVT-000185`).** Quest checks ran at each scene opening and after each resolved exchange. **No Urgent condition arose** (Section 8.4.2, criterion 1 — no non-hostile person at immediate threat of death). **No Hidden pointer attached**: the shrine lid is a feature of an instance that no longer exists, and Section 8.4.5 forbids authoring a concealed-discovery record and attaching its pointer in the same exchange — a room that closed on the boss kill can never satisfy the later-scene requirement, so no record was authored for it. Neither standing record (`ENT-000165`, `ENT-000167`) was approached; Alexander was inside a private instance all afternoon. Non-daily slots are now **0/3** from D-Rank Multitask, no pending offer. **Skill-formation:** the dangerous-scene settlement at `EVT-000184` advanced Keen Sense to Expert and Exploit Pattern to Adept, gave Field Command its first qualifying scene, and moved **`reactive_pattern_anticipation` and `formation_instruction` each to 2/3**. `dimensional_weapon_control` remains `tracking` 2/3; `nonvisual_combat_mapping` remains `tracking` 1/3. No `pending-ratification` candidate exists; the readiness gate is clear.

**One exclusive writer during this session** — this session's allocations (`EVT-000182`-`EVT-000185`) sequence cleanly after Checkpoint 0036's high-water marks with no conflicting allocation.
