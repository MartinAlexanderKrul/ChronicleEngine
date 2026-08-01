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
  source: EVT-000304
  game_date: "2026-08-12 ~11:30 -05:00"
  real_date: "2026-08-01"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- **World:** Gatefall
- **World Rule Profile:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`, Profile 1.46
- **Engine Rules:** 0.2.0
- **Data Model:** 0.1.5
- **Campaign time:** 2026-08-12 (Wednesday), approximately 11:30 CDT (`-05:00`)
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0057/` — Two solo D-Rank instant dungeons, Level 14, and the Rogers Park keys.
- **The Coalition's own Rank ceiling is now authored (`EVT-000273`).** `worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md` fixes the Coalition's registered freelancer roster at 420, with C-Rank as its practical ceiling — 22 C-Rank hunters, no B/A/S, since guilds recruit away anyone who breaks past C. Distinct from the citywide pyramid (`200_WORLD_BIBLE.md` Anchor A9), which spans guilds too.
- **NPC pool variance is live (Profile 1.41, `EVT-000248`).** Nine recurring named NPCs carry an authored ±10% on both pools under Section 6.1.2 — Owen Callahan **+10%** (Health 275, Mana 137), Priya Okafor none, Julian Boyd +5%, Renata Marchetti −5%, Ruth +5%, Reggie Calloway +5%, Bhavna Iyer none, Foster Nakashima −5%, Callie Dunmore none. Permanent, never rerolled, recorded in each entry in `130_NPCS_AND_FACTIONS.md`.
- **Signature abilities carry a D-Rank floor (Profile 1.42, `EVT-000250`).** Section 13.6 requires one of every named NPC hunter at **D-Rank or above**. Six authored so far.
- **`OBJ-18` has a mechanism (Profile 1.43, `EVT-000251`).** Section 12.5.1: a stat elixir bought by Alexander and given to an ordinary awakened enlarges their pools — Vitality and Intelligence only, uncapped. Nothing bought, given, or drunk.
- **The tracked board is dispatched (Profile 1.44, `EVT-000268`).** No change this checkpoint — no board activity resolved this span.

---

## Protagonist

- **Alexander Pendragon:** Level 14, D-Rank, 660/1,400 XP.
- **Health:** 200/200, full. **Mana:** 98/98, full. Mode resting, remainder zero. Both maxima were re-derived twice this checkpoint (the Level 13→14 grant, then Intelligence's own allocation) and refilled to full both times; a graze and a solid hit taken mid-clear were entirely overwritten by the level-up's restoration before the checkpoint anchor.
- **Stats:** Strength 45, Agility 45, Vitality 45, Perception 47, Intelligence 47 (base). **Effective:** Strength 54, Agility 70, Vitality 50, Perception 47, Intelligence 49 — equipment bonuses unchanged (+9 Str/+25 Agi/+5 Vit/+0 Per/+2 Int).
- **Unspent stat points: 5** — the Level 13→14 grant, not yet allocated.
- **Pending rewards, all unclaimed:** **Status Recovery ×13** (cosmetic — both pools already full). Ability Points and Daily Random Box both fully claimed this checkpoint.
- **Daily streak: 5.** The nineteenth daily issued 06:00 on 2026-08-12 and was completed by ~07:15 on the lakefront route with Owen joining (`EVT-000299`); the twentieth issues 06:00 on 2026-08-13.
- **Keen Sense:** D-Rank Expert · 25 successful uses, 18 qualifying scenes, 2/3 mastery progress toward Master. Used to isolate both boss-Rank alphas in the solo Beast Den clear.
- **Exploit Pattern:** E-Rank **Master** (ascended from Expert, `EVT-000303`) · 20 successful uses, 12 qualifying scenes, mastery complete. Supports 5 concurrent active Patterns.
- **Twin Fang:** E-Rank **Master** (ascended from Expert, `EVT-000303`) · 30 successful uses, 11 qualifying scenes, mastery complete. ×1.60 mastery multiplier, Mana 4.
- **Rupture:** D-Rank **Master** (ascended from Expert, `EVT-000304`) · 53 successful uses, 20 qualifying scenes, mastery complete. ×2.45 of D-Rank baseline, Mana 9.
- **Stone Skin:** D-Rank Adept · 9 successful uses, 6 qualifying scenes, 0/3 mastery progress toward Expert. Unused this checkpoint.
- **Bulwark:** E-Rank Adept · 6 successful uses, 6 qualifying scenes, 0/3 mastery progress toward Expert. Unused this checkpoint.
- **Dagger Mastery:** E-Rank Master (mastery complete) · 30 successful uses, 12 qualifying scenes. ×1.05 chassis multiplier on both Quickknives.
- **Flash Step:** C-Rank Adept · Mana 6 · 16 successful uses, 13 qualifying scenes, 1/3 mastery progress toward Expert. Unused this checkpoint.
- **Sprint:** E-Rank Practiced · 6 successful uses, 5 qualifying scenes, 2/3 mastery progress toward Adept. Unused this checkpoint.
- **Silent Step:** E-Rank Novice · Mana 3 · 1 successful use, 1 qualifying scene, 1/3 mastery progress toward Practiced. First real activation 2026-08-12 (`EVT-000303`), isolating the first boss-Rank alpha alongside Keen Sense.
- **Mana Bolt:** **NEW**, D-Rank Novice · Mana 5 · a ranged bolt at ×1.0 of the D-Rank baseline (25 before mastery/focus). Learned 2026-08-12 (`EVT-000304`) from a Beast Den boss-drop rune, taught at D-Rank since that was the drop's Rank. **3 successful uses, 1 qualifying scene, 1/3 mastery progress toward Practiced.** First cast missed outright; three landed hits banked its first qualifying scene in the second dungeon.
- **Mend:** E-Rank Adept · Mana 5 (unchanged) · 6 successful uses, 6 qualifying scenes, 0/3 mastery progress toward Expert. Unused this checkpoint.
- **Resonance Extraction, Field Command:** unchanged this checkpoint.
- **Stat Passives:** **Overpower C** (Strength 45, ascended D→C at `EVT-000301`, Sustained Restraint), **Pre-empt C** (Agility 45, ascended D→C at `EVT-000301`, Shared Warning), Shrug Off C (Vitality 45, unchanged rank, never triggered), Flux Sight C (Perception 47, 4 uses, nothing held), Multitask C (Intelligence 47, 0 uses, capacity 4, nothing held).
- **Equipment:** unchanged this checkpoint — Ghost Quickknife [B-Rank] main, C-Rank Quickknife off, full D/C-Rank armor set, both Ascendant Hunter's Bands. Total physical reduction ≈26%, unchanged.
- **Cash/checking:** $44,579.60 — the $9,750 Rogers Park deposit is the only USD movement this checkpoint (from $54,329.60). **Gold:** 1,841 (net across two dungeons' key purchases, a redundant-rune sale, and two crystal-deposit sales; see `120_INVENTORY_AND_OWNERSHIP.md`). **Pending income:** $2,137.50 (the collapsed rail cutting Gate declaration, processing 1-2 business days).
- **Notable carried items:** Gate Direction Finder (unchanged); Crystal Key [C-Rank], banked, unused (`OBJ-25`); Titan Legs [D-Rank], Watcher Feet [D-Rank], Bastion Torso [E-Rank] (banked, unequipped); **Quickstep Charm [D-Rank]** (Agility +2, new, banked unequipped); **Arcanist Torso [D-Rank]** (Intelligence +2, new, banked unequipped); 3 Lesser Healing Potion, 8 Lesser Mana Potion, 2 Standard Mana Potion; **Warded Vambrace [A-Rank]**, banked, unequipped — once/exchange, −30% on a landed hit; **Dormant Core, origin unclassified [S-Rank]**, banked, unequipped — genuine Rank, no catalog function, purpose unknown pending the Marnie meeting; **28 D-Rank Beast Core**, banked, unsold (shop refuses cores at any price).
- **Current location:** The new Rogers Park apartment, ~11:30 Wednesday morning, alone — Owen is at his Edgewater shift (arrived 10:00, covering the two lost hours at the back end).
- **Immediate obligations:** **Five crew candidates contacted and interested, none scheduled to meet** — Reyna Castillo (`OBJ-26`, wants to meet ASAP), Soraya Delgado (cautious, real questions asked), Grant Okwuosa (enthusiastic, ready), Iris Halvorsen (wants to meet ASAP), Theo Bannerman (enthusiastic, ready). **Owen owes Alexander $2,925** toward the deposit — not yet repaid. Wade Bishop's B-Rank harvest trial is confirmed for 2026-08-14, 08:00 (`EVT-000284`); his split offer (35% + lead credit) awaits Alexander's decision after that trial. Walt is still waiting on Marnie's reply (`OBJ-16`). A sparring session with new recruit Marcus Whitlow is agreed in principle, not scheduled. Priya has not yet told Julian or Renata (`OBJ-12`).
- **Daily Premium:** Rotated live this checkpoint to a fresh **Umbral** cycle (2026-08-12 06:00, resolved late during `EVT-000302`). **0/6 purchased.** The redundant Flash Step rune it offered as a Premium option was not bought — a separate, already-consumed loot rune from `EVT-000302` was the one sold.

---

## Owen and the Relationship

- **Owen's shift conflict resolved by his own call, 2026-08-12 ~06:30 (`EVT-000299`).** Realized mid-run he'd never called Edgewater about the 09:30 signing colliding with his 08:00 start. Called it in himself — the truth, packing, forgot — and was granted late arrival (10:00) with a warning, covering the two lost hours at shift's end. His first-ever call-in.
- **The Rogers Park signing, 09:30-09:52 (`EVT-000300`).** Both names on the lease, both sets of keys in hand. Owen left for his shift at 09:52, eight minutes late by his own rescheduled start.
- **A new financial thread: Owen's deposit share.** Player-ruled that Owen owes Alexander half the *original* $5,850 deposit ($2,925), not half the landlord's inflated $9,750 ask — the extra $3,900 the landlord demanded over renting to two active hunters falls on Alexander alone. Not yet repaid in scene; recorded as a pending receivable.
- Alexander spent the remainder of the morning alone at the new apartment — stat allocation, box-opening, and two solo instant-dungeon clears — while Owen worked his shift. No scene time played between them since the 09:52 parting.

---

## Current Situation

**2026-08-11, ~20:00-21:00 (`EVT-000294`-`EVT-000298`).** The apartment moment — Owen told, both saying they love each other plainly. Before sleep, Alexander sent direct outreach texts to all five named crew candidates (Reyna Castillo plus Wade Bishop's four leads). All five replied interested within the hour; none yet scheduled to meet.

**2026-08-12, 06:00-07:15 (`EVT-000299`).** The nineteenth daily completed with Owen joining for the full regimen (streak 4→5). Owen realized his Edgewater shift collided with the signing and called it in himself — granted, with a warning.

**2026-08-12, 09:30-09:52 (`EVT-000300`).** The Rogers Park lease signed. Full $9,750 deposit paid, two keys issued, `OBJ-15` closed. Owen departed for his (rescheduled) shift; Alexander stayed behind to call Corinne — no, that thread is already closed; he simply remained in the newly-theirs apartment, alone.

**2026-08-12, ~10:00-11:30 (`EVT-000301`-`EVT-000304`).** Alone, Alexander worked through the System: claimed and allocated all three pending Ability Points stacks (Strength +2, Agility +6, Intelligence +1), ascending Overpower and Pre-empt to C-Rank. Opened three Daily Random Boxes and sold a redundant Flash Step rune (2,250 g). Bought and cleared two solo D-Rank instant dungeons back to back — a Beast Den (two boss-Rank alphas, one genuinely hard fight) that crossed him to **Level 14** and ascended Twin Fang and Exploit Pattern to Master, and a Shattered City clear leaning on the freshly-learned Mana Bolt, taking zero damage, ascending Rupture to Master. Both crystal hauls sold in full. Current anchor: the apartment, ~11:30 Wednesday, alone, gear half-unpacked around him.

---

## Open Threads

- **`OBJ-26`: five candidates contacted, none scheduled.** Reyna Castillo and Iris Halvorsen both pressed for a meeting as soon as possible; Soraya Delgado is cautiously interested; Grant Okwuosa and Theo Bannerman are enthusiastic and ready. Next action: **schedule the first meeting.**
- **Owen owes Alexander $2,925** toward the Rogers Park deposit — not yet repaid in scene.
- **`OBJ-12` told; harder than hoped.** Priya took it with real hurt, asked Owen not to tell Julian or Renata before she does — still not yet played.
- **`OBJ-16`: the artificer's real name is Marnie, still unmet.** No reply yet despite two pushes.
- **`OBJ-23` (Ironline): split renegotiated to 35% + lead credit; B-Rank trial confirmed 2026-08-14 08:00.** Decision deferred to after the trial.
- **Marcus Whitlow recruited** (first crew member beyond Alexander and Owen); sparring session agreed in principle, not scheduled.
- **5 unspent stat points, unallocated** — the Level 13→14 grant.
- **Status Recovery ×13 unclaimed** — cosmetic only, both pools already full.
- **New items awaiting a decision:** Quickstep Charm [D-Rank] and Arcanist Torso [D-Rank], both banked unequipped — no open accessory or torso slot to swap into without displacing an equipped piece.
- **28 D-Rank Beast Core** banked, unsold — the System shop still refuses cores at any price.
- **A Crystal Key [C-Rank]** is banked, unused (`OBJ-25`) — the plan agreed for it (a first solo C-Rank instant-dungeon attempt with Owen present as a non-combatant observer) is not yet scheduled.
- **`OBJ-18` still has two open routes.** Neither the Section 12.5.1 stat elixir nor a cheap-Mana Mend rune has been acquired, given, or told to Owen.
- Titan Legs [D-Rank] and Watcher Feet [D-Rank] remain banked, unequipped, no decision made.
- Daily Premium rotations from 2026-08-06 through 2026-08-08 remain formally unsettled by owner ruling. Live rotation on a fresh **Umbral** cycle (2026-08-12 06:00), 0/6 purchased.
- **The Coalition's own C-Rank pool is thin by authored design:** 22 C-Rank hunters out of 420 registered freelancers, and C is the practical ceiling. Recruiting for `OBJ-26` draws from that pool alone.

---

## Promotion Status

Live canon is promoted through `EVT-000304`. Since Checkpoint 0056: outreach texts sent to and answered by five crew candidates (`EVT-000298`); the nineteenth daily completed and Owen's shift conflict resolved (`EVT-000299`); the Rogers Park lease signed, deposit paid, `OBJ-15` closed, and Owen's deposit-share ruling recorded (`EVT-000300`); all pending Ability Points allocated, Overpower and Pre-empt ascended to C-Rank (`EVT-000301`); three Daily Random Boxes opened, a redundant rune sold, the overdue Daily Premium rotation resolved (`EVT-000302`); a solo Beast Den instant dungeon cleared, Level 13→14, Twin Fang and Exploit Pattern ascended to Master, Mana Bolt learned (`EVT-000303`); a solo Shattered City instant dungeon cleared with zero damage, Rupture ascended to Master (`EVT-000304`). **Audit repair:** Twin Fang's and Exploit Pattern's mastery-progress credit from the Beast Den clear had not been applied before play continued past it — caught on player query and repaired retroactively into `EVT-000303`'s counter deltas before the second dungeon began. Cash $54,329.60 → $44,579.60 (the deposit alone). Gold 1,491 → 1,841 net across both dungeons.

---

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-12T11:30:00-05:00"
  hidden_pointers_attached: 1
  hidden_last_attached: "2026-08-06T16:45:00-05:00"
  hidden_dry_days: 6
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 18
  concealed_records_available: 14
  tracked_postings: 1
```

**Reading it.** No new Hidden pointer attached and no Urgent offer issued this checkpoint — outreach texts, a daily quest, a lease signing, and two solo instant-dungeon clears, but nothing met either surface's criteria fresh: no present nearby crisis (Section 8.4.2), and the instant dungeons are System-generated content outside the world-side Hidden/Urgent pipeline entirely. `concealed_records_available` unchanged. `tracked_postings` unchanged at 1 (`GB-04`, status not re-checked this checkpoint).
