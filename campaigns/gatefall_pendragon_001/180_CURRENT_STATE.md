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
  source: EVT-000154
  game_date: "2026-08-05 ~10:30 -05:00; Profile 1.25 consumable-economy and sourcing correction, no fictional time consumed"
  real_date: "2026-07-28"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile **1.25**)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.5
- Start city: Chicago
- Campaign date: **2026-08-05T10:30:00-05:00, mid-morning** — a quiet corner near Loyola Park, Rogers Park, alone. This is the exact canonical settlement anchor. The next daily quest issues **06:00 on 2026-08-06**. The next crew training session is fixed for **2026-08-09, 18:00**, with a standing order that no crew Gate precedes it.
- Campaign state: session-3 in progress. Since Checkpoint 0031's 20:40 anchor: a full night's rest and the twelfth daily quest completed with Owen at Loyola Park (streak 11→12, `EVT-000147`); the first mutual "I love you" of the relationship, over breakfast (`EVT-000147`); the morning's banked rewards claimed — a Mend rune consumed, a Daily Random Box opened, and all eight unspent Ability Points allocated to Perception/Intelligence (`EVT-000148`); four solo instant-dungeon clears run back to back for deliberate skill training (`EVT-000149`-`EVT-000152`), taking Alexander from **Level 9 to Level 10** and his **System Rank from E to D**, with eight skills advancing mastery levels; two long-pending payouts finally landing (`EVT-000153`); and Profile 1.25's consumable-economy and sourcing correction adopted (`EVT-000154`).
- World Rule Profile: Gatefall **1.25**, frozen on repository date 2026-07-28 — Lesser/Standard Healing and Mana potions now restore a flat amount (30/90 Health, 20/40 Mana) instead of a percentage of maximum, with all six potion prices corrected so no tier is dominated; Greater potions still restore to full. Healing and Mana potions are also now stated System-exclusive: no world vendor stocks one. Alexander currently has no pending ratification.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0032/` — immutable Profile **1.24** / Data Model **0.1.5** capture at the 2026-08-05 10:30 anchor. Restoring it requires the applicable compatibility chain through **Profile 1.25 / Data Model 0.1.5** before play. `900_CHECKPOINT_0031` (2026-08-04 20:40, over dinner) remains the preceding immutable historical capture, also Profile 1.24 / Data Model 0.1.5, and likewise runs the full applicable chain.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-Rank hunter (~19 days).
- Status: Active, **Bearer** — **Level 10 / System Rank: D-Rank** (advanced this session, Level 10 threshold), XP **610/1000**, Health **144/144 (full)**, Mana **9/72**, **5 unspent stat points**; base Stats **Strength 33 / Agility 32 / Vitality 32 / Perception 38 / Intelligence 36**; equipped-effective **43 / 57 / 36 / 38 / 36**. Pending rewards: **Status Recovery ×7** only (Ability Points and the twelfth daily's Daily Random Box both claimed this session, `EVT-000148`). **Seventeen skills**: Rupture (Master), Flash Step (Expert), Keen Sense (Adept), Dagger Mastery (Adept, passive), Twin Fang (Practiced), Exploit Pattern (Practiced, passive), Stone Skin (Practiced), Bulwark (Practiced), Mend (Practiced), Sprint (Practiced), Field Command (Novice, passive), Resonance Extraction (Novice, passive), and the five stat-milestone passives (Rank-Sight, Overpower, Pre-empt, Multitask, Shrug Off). Non-daily System quests **0/2 active**, no pending offer. Gold **507**; daily streak **12**, unchanged (no daily active). Full detail: `100_CHARACTER_SHEET.md` `system_state`.
- Location: **A quiet corner near Loyola Park, Rogers Park, mid-morning of 2026-08-05** — alone, nothing owed to anyone.
- Condition: Health **144/144**, Mana **9/72**, **no injury**. Mana is low from a fourth consecutive solo instant-dungeon clear this morning; Health is full via repeated Mend use. Both recovery modes `resting`, zero fractional carry, at the exact `2026-08-05T10:30:00-05:00` anchor.
- Equipment: **Unchanged weapons/armor from Checkpoint 0031.** Full nine-slot loadout: main hand (Ghost Quickknife [B-Rank]), off hand (C-Rank Quickknife), head (Horizon Gale Coif [D-Rank]), torso (Adaptive Bastion Torso [E-Rank]), hands (Horizon Gale Gauntlets [C-Rank]), legs (Shin Guards [E-Rank]), feet (Titan Boots [E-Rank]), both accessory slots (Ascendant Hunter's Bands, Strength +9 total). Combined physical reduction ≈23%, unchanged. New banked-unequipped items: a second **Guard Shield [E-Rank]** (now ×2), a rune teaching **Stone Skin [E-Rank]** (duplicate, unconsumed). Also held: 6 lesser healing potions, 2 antidotes, **22 E-Rank cores** (up from 13; +9 today across four instant dungeons), **112 E-Rank crystals** (up from 0; the morning's full hauls, unsold), 0 instant-dungeon keys. **$20,813.50 cash** (two long-pending payouts landed today); **≈$40,000** still newly pending from yesterday's harvest job. Full detail: `100_CHARACTER_SHEET.md` and `120_INVENTORY_AND_OWNERSHIP.md`.
- Daily Premium: rotated 2026-08-05 06:00 → 2026-08-06 06:00, Argent fabrication series. 1/6 purchased — the Alchemist Key, bought and used the same morning. Full detail: `100_CHARACTER_SHEET.md` `system_state.daily_premium`.
- Daily quest: **none active.** The twelfth completed (streak 12); next issues 2026-08-06 06:00.
- Social position: unchanged in structure — Windy City Hunters Coalition freelancer (`REL-000062`); fifth-slot membership on Priya Okafor's crew with tactical/strategic field command (`REL-000065`); harvest-hire standings with Sable & Kern, and Denise Ferro's Coalition-run crew (`REL-000064`, `REL-000067`, `REL-000070`); a pending, unaccepted recruitment overture from Ironline Guild via Wade Bishop (`REL-000068`); an informal fence contact for unsellable cores (`REL-000069`). Personal relationship with Owen (`ENT-000139`, `REL-000066`) reached a new milestone this morning: **the first mutual "I love you," said plainly by both**, following last night's naming of the System and the still-open moving-in question.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.
- **The word, finally.** Over breakfast, Owen said "I love you" for the first time, buried in a joke; Alexander froze, then crossed the diner floor to kiss him and say it back. Neither had used the word before this morning, in roughly two weeks of relationship.

## Current Situation

Session 3 continues directly from Checkpoint 0031's anchor over dinner at Owen's apartment. The night settled deterministically (Mana 16→62/62 across 9h20m resting). At 06:00 the twelfth daily quest issued.

**The morning run and "I love you" (`EVT-000147`).** Alexander woke on schedule; Owen, asked to join, negotiated a token protest before agreeing. The regimen was completed together at Loyola Park by ~07:50 — streak 11→12. Over breakfast, Owen said "I love you," buried in a joke; Alexander froze, then kissed him on Sheridan Road and said it back — the first mutual "I love you" of the relationship. Breakfast conversation covered Alexander's private plan for the morning (investigating weapon-combination commissioning and a use for the growing core stash) and confirmed Owen has ordinary mender rounds today, no Bridgeport job.

**Claiming the morning's rewards (`EVT-000148`).** A phone check and a text to Denise Ferro turned up nothing new. Alone in a private corner, Alexander consumed the banked Mend rune (learned Mend [E-Rank]), opened the pending Daily Random Box (+500 g), and claimed the banked Ability Points +3 together with the 5 already-unspent (8 total), allocating all eight to **Perception +4, Intelligence +4**. Maximum Mana re-derived and restored to full (70).

**Four instant-dungeon clears (`EVT-000149`-`EVT-000152`).** Bought and used a Daily Premium Alchemist Key, then a bought standard key, then two boss/shrine-dropped keys in succession — Hive, Ashfield, Overgrown Temple, and Shattered City, each run deliberately to exercise every applicable skill. The Ashfield clear's XP crossed the **Level 9→10 threshold**, advancing **System Rank from E to D**. Eight skills advanced mastery levels across the four clears (Keen Sense to Adept, Rupture to Master, Flash Step to Expert, Dagger Mastery to Adept, Twin Fang/Stone Skin/Bulwark/Exploit Pattern to Practiced, Mend and Sprint to Practiced). Loot from all four: 112 E-Rank crystals, 9 more E-Rank cores (13→22), a duplicate Guard Shield, and a duplicate Stone Skin rune.

**Payouts land (`EVT-000153`).** A text to Owen ("E Rank dungeons are sooo boring") drew a reply from his patient rounds. A phone check turned up the Sable & Kern harvest share (+$9,000) and the Cicero Gate split (+$1,762.50) both cleared — cash $10,051.00→$20,813.50. The ≈$40,000 Denise Ferro share remains processing. A follow-up text to Dale Pruitt confirmed the B-Rank mining lead is still undecided, a real answer expected by end of day 2026-08-06.

**Profile 1.25 consumable-economy and sourcing correction (`EVT-000154`, no fictional time consumed).** Lesser and Standard Healing/Mana potions now restore a flat amount — 30/90 Health, 20/40 Mana — instead of a percentage of maximum, so their value is tied to the Gate-Rank bracket they serve rather than scaling forever with Alexander's own growth; Greater potions continue to restore to full. All six prices are corrected to 60/150/750 g (Healing) and 50/75/480 g (Mana) so no tier is dominated — a Standard now costs fewer actions and no more gold than the Lessers it replaces, and a Greater is the only single-action full restore. Healing and Mana potions are additionally stated **System-exclusive**: no licensed outfitter, guild armory, pharmacy, hospital, or black-market broker stocks one, and none may appear on a world shelf or in an NPC's kit unless Alexander put it there; the world's separate restorative-alchemy market acts on the severity axis over elapsed time and restores no pool as an immediate quantity. Every already-resolved purchase and consumption this session (including `EVT-000150`'s and `EVT-000152`'s mana potions at the old terms) remains canon exactly as narrated; only future purchases and consumptions use the new figures. Alexander's 6 banked lesser healing potions are unaffected in identity, Rank, or count — only their effect-on-use and shop price change prospectively.

**Open threads, none urgent:** the moving-in question (`OBJ-15`), still open and unresolved; twenty-two E-Rank cores with only one pawn-shop outlet; Cicero's Quiet [C-Rank] sitting at the pawn shop for $35,000, not purchased; six live Premium offers expiring 2026-08-06 06:00; the ≈$40,000 harvest share still processing; crew training fixed for 2026-08-09 with a standing no-Gate order until then; OBJ-12 (the crew question) still undecided; Priya's untested question about the spend-call rule; Renata's deferred *who are you, exactly?*; the sensor rig still owed for Owen's 14 September birthday; possible B-Rank mining work through Dale, answer expected 2026-08-06; Ironline Guild's pending recruitment overture (Wade Bishop); the artificer thread, still open with Owen chasing a lead through Kesha; a duplicate rune teaching Flash Step [D-Rank] and a duplicate rune teaching Stone Skin [E-Rank], both unconsumed; and 5 unspent stat points, unallocated.

## Current Scene Anchor

Session 3, mid-morning of 2026-08-05, ~10:30, a quiet corner near Loyola Park, Rogers Park. Alone; nothing owed to anyone until the next daily quest at 06:00 tomorrow or crew training on 2026-08-09.

## Promotion Status

Session 3 in progress — **checkpoint `900_CHECKPOINT_0032` written** at the 2026-08-05 10:30 anchor, carrying `EVT-000147` (morning run, daily quest, "I love you"), `EVT-000148` (rewards claimed), `EVT-000149` (Hive instant dungeon), `EVT-000150` (Ashfield instant dungeon — Level 10, System Rank D), `EVT-000151` (Overgrown Temple instant dungeon), `EVT-000152` (Shattered City instant dungeon), and `EVT-000153` (payouts land, standing threads check in).

Post-checkpoint live canon also carries `EVT-000154` (Profile 1.25 consumable-economy and sourcing correction adopted); it does not rewrite the immutable checkpoint.

Checkpoint 0032 is the latest immutable restore point at **Profile 1.24 / Data Model 0.1.5** and requires the applicable compatibility chain through Profile 1.25 / Data Model 0.1.5 on restore. `900_CHECKPOINT_0031` (2026-08-04 20:40) remains the preceding immutable historical capture, also Profile 1.24 / Data Model 0.1.5, and likewise runs the full applicable chain. Registry is advanced through `EVT-000154`.

**Proactive trigger audit (Profile Sections 7.1, 8.4, and 14.3).** Quest checks ran at scene opening and after each resolved exchange this session. No Urgent condition arose and no Hidden pointer condition arose; non-daily slots remain **0/2** with no pending offer. The skill-formation audit ran four times this session at dangerous-scene close (the four instant dungeons): Keen Sense, Rupture, Flash Step, Dagger Mastery, Twin Fang, Stone Skin, Bulwark, and Exploit Pattern each advanced one mastery level on a third qualifying scene; Mend and Sprint (both newly learned this session) each advanced Novice→Practiced on their own third qualifying scenes; Resonance Extraction remains unchanged (no consequential-work scene this session). No candidate reached a new `pending-ratification` threshold — all advances were mastery gains on already-ratified skills. `dimensional_weapon_control` remains `tracking` at 2/3, `nonvisual_combat_mapping` and `formation_instruction` remain `tracking` at 1/3 — none touched this session.

**One exclusive writer during this session** — this session's new allocations (`EVT-000147`-`EVT-000153`) sequence cleanly after Checkpoint 0031's `EVT-000146` high-water mark with no conflicting allocation.
