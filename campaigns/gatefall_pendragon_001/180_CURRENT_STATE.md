# Current State - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8). This is the live operational ledger - read first at session start.

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.4"
status: active
provenance:
  source: EVT-000128
  game_date: "2026-08-04 06:00 -05:00; profile migration, no fictional time consumed"
  real_date: "2026-07-27"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile **1.17**)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.4
- Start city: Chicago
- Campaign date: **2026-08-04T06:00:00-05:00, morning** — asleep at Owen Callahan's Rogers Park apartment, Alexander awake and alone perceiving the System's 06:00 notifications. This is the exact canonical settlement anchor. The next daily quest issues **06:00 on 2026-08-05**. The next crew training session is fixed for **2026-08-09, 18:00**, with a standing order that no crew Gate precedes it.
- Campaign state: session-3 in progress. The Cicero Gate is fully cleared and declared; no crew, contract, or filing pressure stands. Since the 2026-08-03 16:00 anchor: arrival at Owen's and the Damen Avenue Break disclosure (`EVT-000122`), dinner and the pocket-gate promise (`EVT-000123`), the night's rest and the 06:00 notifications (`EVT-000124`), Profile 1.16's adoption (`EVT-000125`), the deferred Daily Premium cycle resolved in full (`EVT-000126`), the missed skill counters corrected (`EVT-000127`), and Profile 1.17's instructional binding migration adopted (`EVT-000128`).
- World Rule Profile: Gatefall **1.17**, frozen on repository date 2026-07-27 — the migrating instructional-item binding and recipient-consumption advance over Profile 1.16's Daily Premium bag-persistence repair. Rune/book identity is fixed at generation; unbound instruction may be consumed by an eligible awakened NPC, while Bearer duplicate protection now fires only at consumption.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0029/` — immutable Profile **1.16** / Data Model **0.1.4** capture at the 2026-08-04 06:00 anchor. Restoring it requires the **1.16→1.17 instructional-binding migration** before play. `900_CHECKPOINT_0028` (2026-08-03 16:00, the Cicero Gate just cleared) remains the preceding immutable historical capture and runs its full applicable migration chain through 1.17.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-Rank hunter (~18 days).
- Status: Active, **Bearer** — **Level 8 / System Rank: E-Rank**, XP **570/800**, Health **116/116**, Mana **60/60 (full)**, **0 unspent stat points**; base Stats **Strength 31 / Agility 30 / Vitality 25 / Perception 31 / Intelligence 30**; equipped-effective **41 / 55 / 29 / 31 / 30**. Pending rewards, unchanged this session: **Ability Points +3 ×1, Status Recovery ×5, Daily Random Box ×1**, all unclaimed. **Ten skills**: Rupture (Adept), Flash Step (Practiced), Stone Skin (Novice), Keen Sense (Novice), Dagger Mastery (Novice, passive), the four no-mastery stat-milestone passives (Rank-Sight, Overpower, Pre-empt, Multitask), and Bulwark (Novice, not yet used). Non-daily System quests **0/2 active**, no pending offer. Gold **12**; daily streak **10**, eleventh daily in progress (0/100 across all objectives). Full detail: `100_CHARACTER_SHEET.md` `system_state`.
- Location: **Rogers Park, Chicago, morning of 2026-08-04** — Owen's apartment, Owen still asleep beside him.
- Condition: Health **116/116**, Mana **60/60**, **no injury**. Mana settled deterministically from 21/60 under `resting` recovery across the 14-hour span since the Cicero Gate, reaching full well inside the window. Both recovery modes `resting`, zero fractional carry, at the exact `2026-08-04T06:00:00-05:00` anchor.
- Equipment: **Unchanged from Checkpoint 0028.** Full nine-slot loadout: main hand (Ghost Quickknife [B-Rank]), off hand (C-Rank Quickknife), head (Horizon Gale Coif [D-Rank]), torso (Adaptive Bastion Torso [E-Rank]), hands (Horizon Gale Gauntlets [C-Rank]), legs (Shin Guards [E-Rank]), feet (Titan Boots [E-Rank]), both accessory slots (Ascendant Hunter's Bands, Strength +9 total). Combined physical reduction ≈23%, unchanged. Also held: 4 lesser healing potions, 2 antidotes, 1 unused Runic Key [E-Rank], **9 E-Rank cores**, 0 E-Rank crystals. **$9,831 cash**, unchanged; **≈$1,762.50** still pending from the Cicero split, alongside the still-processing ≈$9,000 Sable & Kern share. Full detail: `100_CHARACTER_SHEET.md` and `120_INVENTORY_AND_OWNERSHIP.md`.
- Daily Premium: **ROTATED 2026-08-04 06:00 → 2026-08-05 06:00** (`EVT-000124`/`EVT-000126`), fabrication series **Cobalt**. Six offers resolved and priced (Colossus Greatarm [E-Rank] 200 g, Adaptive Titan Hands [D-Rank] 540 g, Ascendant Mindspun Loop [E-Rank] 160 g, Clarity Phial 750 g, Premium Rune teaching Silent Step [C-Rank] 50,000 g, Crystal Key [D-Rank] 4,500 g), **0/6 purchased**, all unaffordable at 12 gold. Under `EVT-000128`, the rune retains its exact identity and is marked **UNBOUND · NPC-ELIGIBLE** (`instruction_binding: unbound-awakened`). Full detail: `100_CHARACTER_SHEET.md` `system_state.daily_premium`.
- Daily quest: the **eleventh** issued this morning (streak 10, unresolved); no objective yet started. Deadline 00:00 tonight. Next issues 2026-08-05 06:00.
- Social position: unchanged in structure — Windy City Hunters Coalition freelancer (`REL-000062`); fifth-slot membership on Priya Okafor's crew with Alexander holding tactical/strategic field command (`REL-000065`); harvest-hire standings with the corporate-adjacent contractor and Sable & Kern (`REL-000064`, `REL-000067`). Personal relationship with Owen (`ENT-000139`, `REL-000066`) deepened by the largest non-System disclosure of the campaign — see below.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.
- **New disclosure — the first thing that isn't the System.** At Owen's door, Alexander volunteered for the first time why he is the way he is: his parents died in the Damen Avenue Break (July 2016, established world canon, `worlds/gatefall/200_WORLD_BIBLE.md`) when he was fifteen — his mother a university professor, his father an FBI Task Force detective who'd awakened days into the Gatefall and died beside her with no BGM protocol yet chartered to help him. His birthdate is now fixed: September 17, 2000. Owen received it without pressing, and the two kissed at the threshold. Over dinner, Alexander separately committed to showing Owen a pocket-gate clear from the inside — a live, unscheduled thread continuing OBJ-13 — and discovered he already has the key for it banked. The pocket-gate exposure note from Checkpoint 0028 stands unchanged: the System itself remains unnamed and unknown to Owen and to everyone else (Section 14.4).

## Current Situation

Session 3 continues directly from Checkpoint 0028's anchor. Arriving at Owen's Rogers Park apartment the evening of 2026-08-03, Alexander answered Owen's "you good?" honestly for the first time: since his parents died at the Damen Avenue Break, this is the first time he has been genuinely, simply good. Owen took the street name back to him once and pulled him inside rather than press for more; they kissed at the threshold (`EVT-000122`).

**Dinner.** Alexander cooked steak and potatoes over Owen's mock protest about being conscripted into table-setting duty. Banter proposed turning two-person sponsored Gate clears into a recurring "date." More seriously, Alexander committed to showing Owen a private instant-dungeon clear from the inside — pay-nothing, provenance-nothing, exactly as it actually works — and, starting to say he'd need to find a key, caught himself: the **Runic Key [E-Rank]** bought that same morning is still banked, forgotten since (`EVT-000123`).

**The night and the morning.** An uneventful evening; both asleep by the ordinary hour. At 06:00 the System issued the eleventh daily quest and rotated the Daily Premium stock; Owen slept through it undisturbed (`EVT-000124`). Profile 1.16 was adopted — a migrating repair making each Daily Premium category's compact stored state (rather than full rotation history) the sole source needed for an ordinary draw (`EVT-000125`) — which let the deferred 2026-08-04 cycle resolve in full: fabrication series Cobalt, six offers priced, 0/6 purchased (`EVT-000126`).

**Profile 1.17 adoption.** With no fictional time consumed, instructional identity and recipient binding were migrated (`EVT-000128`). No held unconsumed rune/book existed. The live Premium Rune remains Silent Step [C-Rank], gains `unbound-awakened`, and may be consumed by any eligible awakened recipient; only Bearer consumption can trigger duplicate rerolls.

**Open threads, none urgent:** the pocket-gate demonstration Owen accepted, unscheduled; nine E-Rank cores still with no legal sale path; six live Premium offers expiring 2026-08-05 06:00 (none affordable at 12 gold); the ≈$9,000 Sable & Kern share and the ≈$1,762.50 Cicero split both still processing; crew training fixed for 2026-08-09 with a standing no-Gate order until then; OBJ-12 (the crew question) still undecided, pending Owen watching this crew run a real job; Priya's untested question about whether the spend-call rule survives either of them bleeding; Renata's deferred *who are you, exactly?*; the sensor rig still owed for Owen's 14 September birthday; and possible B-Rank mining work through Dale, unanswered. The eleventh daily quest (100/100/100/10km, deadline 00:00 tonight) is unstarted.

## Current Scene Anchor

Session 3, morning of 2026-08-04, 06:00, at Owen's Rogers Park apartment. Owen is asleep; Alexander is awake, having just perceived the System's notifications alone. Nothing is owed to the crew or anyone else until the next training session on 2026-08-09; the eleventh daily quest is live with an 18-hour window (06:00–23:59).

## Promotion Status

Session 3 in progress — **checkpoint `900_CHECKPOINT_0029` written** at the 2026-08-04 06:00 anchor, carrying `EVT-000122` (arrival and the Damen Avenue Break disclosure), `EVT-000123` (dinner and the pocket-gate promise), `EVT-000124` (the night and the 06:00 notifications), `EVT-000125` (Profile 1.16 adoption), and `EVT-000126` (the deferred Daily Premium cycle resolved).

Post-checkpoint live canon also carries `EVT-000127` (Cicero skill-counter correction) and `EVT-000128` (Profile 1.17 instructional-binding migration); neither rewrites the immutable checkpoint.

Checkpoint 0029 is the latest immutable restore point at **Profile 1.16 / Data Model 0.1.4** and requires the Profile 1.16→1.17 migration on restore. Registry is advanced through `EVT-000128`.

**Proactive trigger audit (Profile Sections 8.4 and 14.3).** Run at scene opening and after each resolved exchange this session, including the 06:00 notification settlement. No Urgent condition arose and no Hidden pointer condition arose; non-daily slots remain **0/2** with no pending offer, and nothing was invented to make a trigger fire.

**One exclusive writer during this session** — this checkpoint reconciles one externally-authored addition (Profile 1.16's adoption, `EVT-000125`, and its registry/live-state edits) discovered mid-session; its content was read back and built upon rather than overwritten, and no conflicting allocation resulted.
