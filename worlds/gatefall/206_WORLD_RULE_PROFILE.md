# Gatefall — World Rule Profile 1.14

**File:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`
**Class:** World rule content (Decision 062): authoritative on behavior in its declared scope; owns no Persistent Object.
**World:** Gatefall
**Profile Version:** 1.15
**Engine Compatibility:** 0.2.0; Data Model 0.1.4
**Status:** Active
**Compatibility Status:** frozen at version 1.15 (Rules Section 14.6, Decision 074), declared on repository date 2026-07-26. Version 1.15 is an **additive party-composition advance** over frozen 1.14: Section 9.4 gains the **high-Rank sponsor exception**, letting a confirmed E-Rank contract be staffed at any party size behind a C-Rank licence, and a confirmed D-Rank contract behind a B-Rank licence, with insurance intact. It recomputes nothing.

**1.14 → 1.15 compatibility treatment.** Preserve every stored value, Stat, pool, skill, item, quest, currency, contract, and resolved outcome. Adoption requires no recomputation and no state migration: the exception governs postings staffed from adoption forward and reopens no completed clear, filed report, or split. Legal minimums (Section 13.3) are untouched, unconfirmed assessments keep the ordinary posting floors, and the solo-entry insurance void is unchanged outside a sanctioned posting. Record the additive-upgrade acknowledgement in the live campaign and the next promoted checkpoint. Immutable Profile 1.14-and-earlier checkpoints remain byte-unchanged; restoration runs the applicable profile chain through 1.15 before play.

Version 1.14 remains the migrating non-daily-quest advance over frozen 1.13: Urgent and Hidden quests now have closed triggers, capacity, acceptance, lifecycle, reward, storage, and rendering rules, and the Intelligence milestone skills have an exact baseline to expand.

**Required 1.13 → 1.14 migration.** Preserve every Stat, skill, pool, item, reward, daily quest, class quest, clock value, and resolved outcome. Add a `non_daily_quests` map to the Bearer's `system_state` with `base_capacity: 1`, `multitask_bonus: 1` only if Multitask is already earned, `analyst_bonus: 1` only if Analyst is already earned, derived `capacity_total`, and empty `active` and `pending_offers` lists unless durable canon already establishes an unresolved System-issued Urgent or Hidden quest. Do not reconstruct missed opportunities from prior fiction and do not convert campaign-ledger objectives into System quests. Re-render `/system` and `/system quests`, then record adoption in mutable live state. This migration consumes no fictional time and changes no XP, reward, or quest result. Immutable Profile 1.13-and-earlier checkpoints remain byte-unchanged; restoration runs the applicable profile chain through 1.14 before play.

Version 1.13 remains the migrating deterministic-recovery advance over frozen 1.12: the Bearer records an exact Chicago-local settlement anchor, recovery modes, and fractional carry; elapsed fictional time settles Mana and Health automatically before the next action.

**Required 1.12 → 1.13 migration.** Preserve every current pool, maximum, injury, skill, item, reward, and resolved outcome. Add a `temporal_state` map to the Bearer's `system_state` containing `campaign_time`, `mana_recovery_mode`, `mana_recovery_remainder_units`, `health_recovery_mode`, and `health_recovery_remainder_units`. Establish `campaign_time` at the most precise current fictional time supported by durable canon, including its UTC offset; do not infer elapsed recovery before that anchor. Initialize both remainders to zero unless durable evidence establishes an exact unsettled fraction. Choose each mode from the current fiction under Sections 5.2 and 6.1.1. From that anchor forward, settle every elapsed span automatically before the next action reads either pool. This migration itself consumes no fictional time and restores no Health or Mana. Immutable Profile 1.12-and-earlier checkpoints remain byte-unchanged; restoration runs the applicable profile chain through 1.13 against mutable live state before validation and play.

Version 1.12 remains the migrating skill-ledger advance over frozen 1.11: every skill records successful-use totals and mastery progress explicitly, with closed counting rules for activations, sustained effects, passives, and continuous scenes.

**Required 1.11 → 1.12 migration.** Preserve every skill, Rank, mastery level, effect, Mana cost, resolved outcome, and all non-skill state. Add `successful_uses`, `qualifying_scenes_total`, and `mastery_progress` to each mastery-tracked skill; stat-milestone passives add `successful_uses` and explicitly declare `mastery_progress: none`. Backfill only from durable evidence, using an honest lower bound where exact history cannot be reconstructed. For Alexander Pendragon at adoption: Stone Skin is 1 successful use / 0 lifetime qualifying scenes / Novice 0 of 3; Rupture is 6 successful uses / 5 lifetime qualifying scenes / Practiced 2 of 3 toward Adept; Flash Step is 1 successful use / 1 lifetime qualifying scene / Novice 1 of 3; Rank-Sight and Overpower each have 0 explicitly demonstrated successful applications and no mastery track. Re-render `/system skills` and the full window, then record adoption in live campaign state. Immutable Profile 1.11-and-earlier checkpoints remain byte-unchanged; restoration runs the applicable profile chain through 1.12 before play.

Version 1.11 remains the additive item-diversity advance over frozen 1.10: future boss equipment carries a source-derived Boss Imprint, boss potion caches and duplicate skill drops resolve from closed rules, and Daily Premium models draw without replacement while a visual fabrication series distinguishes later rotations. Existing items and the active stock cycle do not change.

**1.10 → 1.11 compatibility treatment.** Preserve every stored value, current offer, purchased flag, item, skill, mastery count, currency balance, and resolved outcome. Adoption does not reroll or visually retrofit an existing item and does not reopen a resolved duplicate-skill result. The active Daily Premium cycle remains exactly as generated under its earlier profile. For each future bag-governed category, initialize its bag to the full Section 12.5 model set **minus the active cycle's model**, record that active model as the category's previous draw, and begin bag draws at the next 06:00 rotation. Initialize no fabrication series for the active cycle; the first series roll occurs with that next rotation. Future boss-equipment results use Section 11.2.1, and future dropped runes/books use Section 11.3's duplicate settlement. The already-resolved Stone Skin → Flash Step dropped-rune reroll remains canon and is consistent with the new settlement; nothing else is recomputed. These optional world-rule fields live in the existing Data Model extension mechanism, so Data Model 0.1.3 does not advance. Immutable Profile 1.10-and-earlier checkpoints remain byte-unchanged; restoration runs the applicable profile chain through 1.11 before play.

Version 1.10 remains the additive streak-reward advance over frozen 1.9: every daily completion that raises the consecutive streak to a positive multiple of seven upgrades that completion's one Daily Random Box to two fully resolved rolls with one result chosen. It adds no second box and no special 28-day rule.

**1.9 → 1.10 compatibility treatment.** Preserve every stored value, current streak, pending reward, and resolved outcome. Adoption requires no recomputation and no state migration: only a daily quest completed after adoption may create an upgraded box. A positive multiple of seven already completed under an earlier profile is not reopened or rewarded again, and an already-pending ordinary box is not upgraded; the next upgrade occurs at the next positive multiple of seven the streak reaches. Immutable Profile 1.9-and-earlier checkpoints remain byte-unchanged; restoration runs the applicable profile chain through 1.10 before play.

Version 1.9 remains the additive economy advance over frozen 1.8: Section 12.8.1 declares the previously missing licensed-market settlement price for ordinary ranked gear, derived from the existing same-Rank core and forging-fee anchors. It changed no stored field or existing threshold, combat or resource magnitude, probability, timer, System-shop price, repurchase rule, or resolved outcome.

**1.8 → 1.9 compatibility treatment.** Preserve every stored value and all resolved canon. Adoption requires no recomputation and no state migration: use the Section 12.8.1 licensed ranked-gear anchor for mundane-market transactions from adoption forward, then record the additive-upgrade acknowledgement in the live campaign and next promoted checkpoint. Do not reprice or reopen any transaction already resolved under an earlier profile. Immutable Profile 1.8-and-earlier checkpoints remain byte-unchanged; restoration runs the applicable profile chain through 1.9 before play.

Version 1.8 remains the additive presentation advance over frozen 1.7: the `/system` full-window rendering contract uses a fixed 76-cell frame, 20-cell progress bars, title-case labels and consistent abbreviations, indented quest objectives, and continuation rows separating item identity from mechanics. It changed no stored field, threshold, magnitude, probability, price, timer, or resolved outcome.

**1.7 → 1.8 compatibility treatment.** Preserve every stored value and all resolved canon. Adoption requires no recomputation and no state migration: re-render `/system` and its focused views using the Section 15.1 layout contract, then record the additive-upgrade acknowledgement in the live campaign and next promoted checkpoint. Immutable Profile 1.7-and-earlier checkpoints remain byte-unchanged; restoration runs the applicable profile chain through 1.8 before play.

Version 1.7 remains the migrating terminology advance over frozen 1.6: the world's single E-Rank–S-Rank classification is called **Rank** everywhere, its values render **E-Rank, D-Rank, C-Rank, B-Rank, A-Rank, and S-Rank**, and the persisted Bearer field `system_tier` was renamed `system_rank`. No threshold, magnitude, probability, price, timing rule, or resolved outcome changed. Version 1.6 was adopted at fictional campaign time 2026-07-29 during the repository session dated 2026-07-25; that fictional date is not the repository provenance date.

**Required 1.6 → 1.7 migration.** At the readiness gate or the next natural pause, before further resolution:

1. Preserve every Rank value, Stat, level, XP total, pool value, item, equipment slot, skill, title, currency, ownership, provenance, pending reward, quest state, streak, injury, and resolved fictional outcome. Profile 1.7 rerolls and recomputes nothing.
2. Rename the persisted Bearer field `system_tier` to `system_rank`, preserving its value exactly.
3. Normalize mutable live descriptions and interfaces to the canonical **Rank** vocabulary and `E-Rank` through `S-Rank` value format. Historical field names quoted in older migration records remain literal compatibility evidence.
4. Re-render `/system` and every affected `/system` subview; record the migration event and acknowledgement in the live ledgers and next promoted checkpoint.

Immutable Profile 1.6-and-earlier checkpoints remain byte-unchanged. Restoring one surfaces its captured profile version and runs the applicable migration chain through 1.7 before play.

**Required 1.5 → 1.6 migration.** At the readiness gate or the next natural pause, before further resolution:

1. Preserve every Stat, level, XP total, pool value, item, equipment slot, skill, title, currency, ownership, provenance, pending reward, streak, completed daily quest, and resolved fictional outcome. Profile 1.6 re-resolves no past action and changes no completed or previously failed daily.
2. For an active daily quest issued under 1.5, preserve every objective counter and move its deadline to **00:00 local immediately following its issue date**. If the campaign's current fictional time is already at or past that deadline and the quest was not recorded complete before it, settle the failure immediately under Sections 8.1 and 8.3; otherwise keep it active with the shortened deadline.
3. Record daily state with an explicit issue timestamp, local midnight deadline, objective progress, and penalty status. Re-render `/system quests`; record the migration event and acknowledgement in the live ledgers and next promoted checkpoint.

This migration changes no reward, Health, Mana, XP, Stat, gold, item, or ownership value. It changes only the deadline and possible midnight settlement of an active daily quest.

**Required 1.4 → 1.5 migration.** At the readiness gate or the next natural pause, before further resolution:

1. Preserve every Stat, level, XP total, pool value, item, equipment slot, skill, title, currency, ownership, provenance, daily reward, streak, and resolved fictional outcome. Profile 1.5 re-resolves no past action and recalculates no past damage.
2. Preserve every **currently tracked injury** at its recorded severity, location, and cause. Injuries already healed stay healed; injuries already sustained are not retroactively cleared by this migration — they become clearable by the new treatment rule from this point forward.
3. Preserve each mender's **per-clear touch count already spent** this clear. A touch spent under 1.4 is spent; the remaining touches operate under Section 6.3's new treatment rule.
4. Re-render `/system` and record the migration event and acknowledgement in the live ledgers and next promoted checkpoint.

This migration changes no Health, Mana, XP, Stat, gold, item, or ownership value. It only changes what a mender's touch is able to do from the moment it is adopted.

**Required 1.3 → 1.4 migration.** At the readiness gate, before any further fiction or resolution:

1. Preserve every prior allocation, skill, title, item, equipment slot, condition, injury, current Daily Premium cycle, currency, ownership, provenance, non-daily XP award, and resolved fictional outcome. Profile 1.4 never re-resolves a past action.
2. Rebuild the Bearer's XP track chronologically from level 1 and XP 0 using every recorded **non-daily** XP award and the thresholds in Section 3.1. Exclude every XP award whose source was daily-quest completion. The rebuilt result replaces stored level/current XP; excess still carries normally.
3. Let `n = rebuilt level − 1`, the number of level-ups still completed after Step 2. Add `n` to **each base Stat**: Profile 1.4's automatic `+1 all Stats` applies once per completed level. These additions are System growth, not player allocations.
4. Credit **+2 unspent points per completed level**: the difference between the old three-point level entitlement and Profile 1.4's five-point entitlement. Do not reclaim, move, or reinterpret any point already allocated.
5. Convert every pending old **level-up grant** for a level still reached under Step 2 immediately: move its original `+3` points into the unspent pool, apply its full Health/Mana recovery after the new maxima are derived, and remove that pending grant. Remove without award any pending grant tied to a level Step 2 no longer reaches. Level-up benefits are immediate under 1.4 and cannot remain banked.
6. Normalize historical dailies. Every daily recorded complete under the old profile remains complete; its regimen is established to have included **100 squats performed off-screen alongside the recorded exercises**, consuming no additional fictional time. Preserve the current consecutive-completion **streak**. Give the Bearer one pending unopened **Daily Random Box per recorded completed daily**. For an old daily bundle still pending, convert its stat/recovery parts into independently claimable `Ability Points +3` and one **Status Recovery**; its Random Box is already included in the per-completion count. Previously settled stat/recovery effects remain settled. Future dailies award no XP, advance/reset the streak under Section 8.1, and never produce a Weekly Cache.
7. Give every ranked weapon its Section 11.5 **weapon power** equal to the existing weapon-Rank stat budget. Preserve its Rank, chassis, stat line, premium line, condition, ownership, and equipped/stored state.
8. Re-derive effective Stats from base plus equipped bonuses. Set `maximum Health = 4 × effective Vitality` and `maximum Mana = 2 × effective Intelligence`. If Step 5 applied a pending level-up recovery, fill both new pools and clear ordinary fatigue; otherwise preserve the old missing amount in each pool (`new current = clamp(new maximum − old missing, 0, new maximum)`). Injury severity never clears from migration or pool restoration.
9. Rename the level-derived `effective_band` field to `system_tier`. The same level bracket is preserved for content scaling, shop floors, underdog XP, threat colors, and instance generation, but it no longer supplies the Bearer's Health, Mana, damage, or stat modifier.
10. Re-render `/system`, `/system equipment`, `/system skills`, `/system quests`, and `/system shop`; verify every derived value against Sections 4–8 and 11.5; record the migration event and acknowledgement in the live ledgers and next promoted checkpoint.

**Required 1.2 → 1.3 migration.** Preserve the current Daily Premium cycle's six item models and purchased flags. For each unpurchased Rank-bearing offer — Weapon, Armor, Accessory, Rune, and Key — make a new Section 12.5 Rank d100 roll against the Bearer's then-current level-derived band (renamed **System Rank** in 1.4) at the cycle's original rotation. Update the offer's Rank, derived item line or effect, and price from that roll. A purchased offer is not rerolled or changed. Record the five rolls and migration acknowledgement in the live ledgers and next promoted checkpoint; no other state changes.

**Required 1.1 → 1.2 migration.** At the readiness gate, before any fiction or resolution under 1.2:

1. Preserve every owned item's Rank, type, provenance, condition, and location.
2. Normalize each recorded ranked weapon to the matching Section 12.5 chassis by its authored type (a recorded dagger becomes a **Quickknife**, a sword a **Longsword**, a greatsword/greataxe a **Greatarm**, a spear/polearm a **Reacharm**, a bow/crossbow a **Longshot**, a wand/staff/focus a **Channeling Focus**, and a shield a **Guard Shield**). A weapon whose type is genuinely absent is unresolved: halt and ask the owner to choose its chassis; do not roll or infer it.
3. Normalize each recorded armor piece to its recorded slot. If its style is absent, it becomes **Bastion** armor of that slot. If its slot is genuinely absent, halt and ask the owner; do not roll or infer it.
4. Record the normalized chassis and its derived equipment line from Section 11.5. Do not add, remove, sell, equip, or unequip an item during migration.
5. Add the nine equipment slots from Section 12.9 to the Bearer's canonical `system_state`. Preserve what the fiction already establishes as worn or wielded; every other owned item remains stored. A two-handed weapon occupies both hand slots.
6. Initialize the current Daily Premium cycle by making the seven real rolls required by Section 12.5; no missed pre-migration rotation is reconstructed. Re-render `/system`, `/system equipment`, `/system inventory`, and `/system shop`, verify base stats are unchanged, and record the migration acknowledgement in the next promoted checkpoint's manifest.

This migration changes no gold, Health, Mana, XP, base stat, skill, title, injury, ownership, or item provenance. It only makes already-owned gear mechanically complete and records which pieces are equipped.

**1.6 authors the System in full — the mechanical law of a gate-and-System world of awakened hunters.** Gatefall is a world where every hunter's Rank is fixed at Awakening and only one person in the world grows: the **Bearer** of the System. This profile governs how the Bearer levels, what stats, equipment, and skills do, how mana and health resolve, how the daily quest and its penalty enforce the grind, and how the world's Gates, loot, and economy behave. It is authored across three parts; this file is the whole document as it stands. Sections 1–8 fix the progression core.

---

This document is Gatefall's declared **World Rule Profile** under `010_ENGINE_RULES.md` Section 14 and Decision 059.

It is **world rule content**: authoritative on behavior within its declared scope, owning no Persistent Object and carrying no identifier — as the Engine Rules are authoritative and identifier-free, and for the same reason. Rules are not state (Decision 062).

`200_WORLD_BIBLE.md` is this world's narrative canon. It describes; this document governs. Where the two disagree on a number or a mechanic, **this document is authoritative** (Rules Section 14.5).

Gatefall inherits Chronicle Engine behavior except where an override below declares otherwise. Undeclared behavior uses the engine default. **An undeclared conflict is a contradiction, not an override** (Rules Section 14.1).

Ranks everywhere in this world are **E, D, C, B, A, S**, weakest to strongest.

---

# 1. Declared Overrides

## GTF-OVR-001 — Causal System Progression

- **Replaces/refines:** Rules Sections 5.3 and 5.7; Decisions 012, 013, 051, and 057 where they prohibit levels, XP, or a System from causing capability growth.
- **Scope:** The **Bearer** alone — the single living holder of Gatefall's diegetic System. Not awakened hunters generally: they do not level and nothing counts their growth (Section 2).
- **Activation:** Active while the character bears Gatefall's System.
- **Replacement:** Experience (XP) awarded for genuine resolved challenge is causal canonical state. Crossing a threshold causes an immediate **level-up**: every base Stat rises by 1, five allocatable stat points enter the unspent pool, and Health and Mana restore in full. A spent stat point directly and permanently changes canonical capability. Skills acquired by rune, skill book, milestone award, or ratified practice are canonical capability.
- **State/provenance:** The Bearer's character ledger records level, current XP, next threshold, unspent stat points, every **base** stat and its allocations, the nine equipment slots, the Mana pool maximum, every known skill, and the event or resolved challenge that awarded each XP gain. Item lines live with the owned items; effective stats are derived from base stats plus the equipped lines (Sections 4.1, 11.5, 12.9).
- **Resolution:** Growth changes capability — and therefore automatic possibility, relative stat margins, costs, magnitudes, prerequisites, and available methods. **It never supplies the outcome of an uncertain contested action.** Uncertain actions still resolve on the d100 through Rules Section 4 and Decision 058. A level is never spent to buy a result, and the level-derived System Rank is never a substitute for the Stats that actually govern the Bearer's body.

## GTF-OVR-002 — System Vitality

- **Replaces/refines:** Rules Sections 6.8–6.10 and Decision 018 where they reject a universal health-point pool for a character.
- **Scope:** The Bearer's Health and Mana. Every other hunter, and every monster, uses the engine's **Rank Health** for its effective Rank (Section 6) and the engine injury model; only the Bearer carries a growing Mana pool (Section 5).
- **Activation:** Active while the character bears Gatefall's System.
- **Replacement:** The Bearer's Health and Mana are canonical current/maximum numeric pools. Damage removes Health after applicable reductions; casting and skill use remove Mana. At zero Health the Bearer is incapacitated and receives an outcome appropriate to the attack and established fiction — and in Gatefall, where death is final (Section 6.5), zero Health is where a campaign can end.
- **State/provenance:** The Bearer's character ledger records current/maximum Health, current/maximum Mana, active conditions, and the event provenance of each change.
- **Resolution:** The die resolves whether an uncertain attack or defense succeeds and its result band; established capability and protection then determine damage **after** that result. Effective Vitality sets maximum Health and may supply a relative stat margin on endurance, resistance, and hazard actions under Section 4.3; it never decides a contested result without the die.

## GTF-OVR-003 — Mana-Borne Damage Against Monsters

- **Replaces/refines:** Rules Section 6 (Conflict, Combat, Injury) and the engine default that any sufficiently forceful weapon can wound any target. Operationalized by this profile's Section 6.2 damage model.
- **Scope:** Damage dealt **to monsters** — the mana-suffused creatures of Gates, dungeon breaks, and the Jiu-class exclusions (Bible Sections 1, 5). It does not touch how humans wound humans, or how a monster wounds anyone; those resolve on the engine default and this profile's Rank-health model unchanged.
- **Activation:** Always active in this world.
- **Replacement:** A monster's body is saturated with mana, and **only damage that itself carries mana lands on it.** Mana-borne damage has exactly two sources:
  1. an **awakened combatant's** strike, skill, or signature ability — the awakened channels mana through the blow, so a hunter wounds a monster with a bare fist, a plain blade, or a cast alike. Section 6.2 and the equipped chassis set magnitude (unarmed ×0.5; weapons use their Section 11.5 chassis; authored skills use their own multiplier); and
  2. a **mana-bearing weapon** — ranked Gate-forged gear (Section 11.5) and enchanted or named armaments (Section 11.6), which hold their own mana edge.

  **Conventional, un-enchanted mundane arms carry no mana and deal no damage to a monster.** Gunpowder firearms and their munitions, mundane blades, explosives, artillery, and ordnance of purely mundane make have a skill multiplier (Section 6.2) of **×0** against a monster: they may knock back, stagger, bind, cordon, or destroy terrain, but they remove **no** Health. This is why a dungeon break is answered by hunters and not by soldiers, why conventional forces can only *contain* a break (Section 9.3; Bible Section 2), and why the world counts its awakened as its only real weapon against the Gates.
- **The magic-weapon exception.** A true **magic weapon** — any mana-bearing armament (ranked or enchanted, Section 11.5–11.6) — lets **even an unawakened wielder** land mana-borne damage on a monster, because the mana is the weapon's, not the wielder's. Such weapons are **very rare and correspondingly valuable**: ranked gear is forged from beast cores in small numbers by artificers (Section 12.8), named uniques are one-of-a-kind (Section 11.6), and nothing mundane substitutes. For the unawakened — 4,999 of every 5,000 people (Bible Section 3) — a magic weapon is the *only* way to personally harm a monster, and almost none will ever hold one.
- **State/provenance:** No new tracked state. Whether an attack is mana-borne is read at resolution from its source — the wielder's awakened status (campaign canon) and the weapon's Rank or enchantment (Section 11.5–11.6) — exactly as skill multipliers already are.
- **Resolution:** The die still resolves whether an attack lands and its degree (Rules Section 4; Decision 058). This override only sets the **skill multiplier to ×0 for a mundane-source attack against a monster**, so a landed mundane hit removes no Health. It never touches the roll, and it changes nothing about awakened-versus-monster, monster-versus-anyone, or human-versus-human combat.

## Interaction

`GTF-OVR-001`, `GTF-OVR-002`, and `GTF-OVR-003` are independent and compose without conflict. Progression (001) sets the capability values that vitality (002) consumes; damage-source (003) gates *whether* an attack against a monster carries mana at all, before 002's Rank health ever reads the hit. None of the three touches the die.

---

# 2. Scope: Who the Overrides Bind

Gatefall has one legendary exception and everyone else. The overrides bind only the exception.

| | Grows in play? | Governed by |
|---|---|---|
| **The unawakened** | No | Engine defaults |
| **Awakened hunters** (E-Rank–S-Rank) | No — rank is fixed at Awakening; capability is their Rank | Engine defaults |
| **The Bearer** | Yes — levels, stats, skills, growing pools | `GTF-OVR-001` and `GTF-OVR-002` |

There is exactly **one Bearer alive** in a world-line. Who that is, is campaign canon, not world rule content: this profile binds *the Bearer role*, and each campaign's ledgers name the entity that holds it. A forked world-line has its own Bearer with its own identifier (Decision 053) and inherits this profile unchanged.

**Every other character resolves as an ordinary engine character whose capability is their fixed Rank.** An NPC hunter is not given a stat sheet, a level, an XP total, or a Mana curve. "This is a licensed B-Rank" is a complete mechanical description: it sets the Rank the character acts at (Section 6, Section 13) and nothing further is authored. Monsters likewise are described by Rank alone. This scoping is the world's whole premise — Gatefall is not a world where the engine's progression model is replaced wholesale; it is a world that otherwise obeys the engine and contains one person the System is levelling.

---

# 3. Levels and Experience

Level, XP, and the next threshold are **tracked canonical Bearer state** (Decision 057). They are computed and recorded from the rules below, never estimated to a plausible figure. XP is awarded only for genuine resolved challenge (Section 6 of the engine; the die must have been live). There is **no level cap**.

## 3.1 The XP Threshold

The XP required to advance from level **L** to level **L+1** is:

```
threshold(L) = L × 100
```

Level 1→2 costs **100**, level 2→3 costs **200**, level 3→4 costs **300**, and so on. Excess XP carries into the next level; a level-up spends exactly the threshold and the remainder counts toward the following level.

| L→L+1 | 1 | 2 | 3 | 4 | 5 | 10 | 25 | 50 |
|---|---|---|---|---|---|---|---|---|
| XP to advance | 100 | 200 | 300 | 400 | 500 | 1,000 | 2,500 | 5,000 |

## 3.2 The Level-Up Award

Crossing a threshold is a **level-up**. It settles immediately in this order:

1. Increase **all five base Stats by +1**.
2. Add **+5 unspent stat points**, allocatable by the Bearer under Section 4.2.
3. Re-derive effective Stats and the new Health/Mana maxima.
4. Restore Health and Mana to those maxima and clear ordinary fatigue. Injury severity remains governed by Section 6.3 and does not clear merely because the pools refill.

The System fires the level-up block after all four effects settle. Nothing is offered or banked: a level-up cannot be saved as a later heal. The Bearer chooses only how and when to allocate the five unspent points.

> **Level-up settlement invariant:** every reward caused by crossing an XP threshold applies in that same exchange. The Runtime never asks `accept / defer`, never creates a pending level-up entry, and never lets the Bearer reserve the restoration. If one XP award crosses several thresholds, settle the complete four-step package once for each level in order before play continues.

Allocatable stat points come from the level-up award (+5), the **daily-quest Ability Point reward (+3, Section 8.1)**, and item/title/skill rewards that state a specific point bonus.

## 3.3 Kill XP by Threat Rank

Defeating a monster awards XP by the monster's threat Rank. **Elite** monsters award ×2; a **boss** awards ×4.

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Kill XP | 10 | 25 | 60 | 150 | 400 | 1000 |

An elite of Rank G awards twice the row value; a boss of Rank G awards four times it (an E-Rank boss = 40, a C-Rank elite = 120).

**The underdog bonus.** Killing something stronger than the System Rank prepared the Bearer for pays for the danger of it. The kill XP above is multiplied by how far the slain creature's Rank stands **above the Bearer's System Rank** (Section 6.6) — the multiplier doubles for each full Rank:

| Creature's Rank vs Bearer's System Rank | Kill XP × |
|---|---|
| At or below the Bearer's System Rank | ×1 (no bonus) |
| **+1 Rank** above | **×2** |
| **+2 Ranks** above | **×4** |
| **+3 Ranks** above | **×8** |
| **+4 Ranks** above | **×16** |
| **+5 Ranks** (an E-Rank Bearer felling an S) | **×32** |

The factor applies to the creature's full kill value, elite and boss multipliers included, and is computed per creature at the moment of the kill. Worked examples for an **E-Rank** Bearer: a D-Rank common (25) at +1 → `25 × 2 = 50`; a C-Rank common (60) at +2 → `60 × 4 = 240`; a D-Rank boss (`25 × 4 = 100`) at +1 → `100 × 2 = 200`. A creature **at or below** the Bearer's System Rank carries no bonus — an E-Rank Bearer killing an E gets the flat 10, and once he reaches C-Rank the E and D kills that once paid a premium pay only their base.

The bonus is progression-relative, not a second combat modifier. It shrinks as System Rank climbs, while the actual danger of the fight remains determined by Stats, equipment, fixed-Rank enemy magnitude, and the die. The **Gate-clear milestone (Section 3.4) is not affected**.

## 3.4 Gate-Clear Milestone XP

Clearing a Gate — killing its boss, which collapses the Gate — awards a one-time **milestone** bonus in addition to the per-kill XP earned fighting through it. It is awarded **once per Gate**, on the boss kill, and never per attempt or per re-entry.

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Milestone XP | 70 | 150 | 320 | 700 | 1500 | 3200 |

## 3.5 Daily XP

The daily quest awards **no XP**. Its three independently claimable rewards are Ability Points +3, Status Recovery, and a Daily Random Box (Sections 3.9 and 8.1). XP comes from genuine resolved challenge: kills, clears, and authored quest awards that state an XP value. Training grows the Bearer through its direct rewards, not by also advancing the XP threshold.

## 3.6 Award Timing

XP is added the instant the exchange that resolves the challenge settles. The same exchange adds the XP, checks the threshold, applies every crossed level-up in sequence under Section 3.2, and fires the notification. If one action resolves several monsters, aggregate that action's XP and notify once. There is no pending-XP or pending-level-up state and no later reconciliation.

## 3.7 Worked Example — A Fresh Bearer Clears an E-Rank Gate

A newly awakened Bearer at **level 1** (XP 0/100, effective Intelligence 10, Mana 20/20) enters a confirmed E-Rank Gate. Its population, rolled on the standard formula (Section 8 restates it; the full Gate rules are Section 9), comes up **10 common E-Rank beasts, 1 E-Rank elite, 1 E-Rank boss**.

- Ten common E kills: `10 × 10 = 100 XP`.
- One E-Rank elite (×2): `10 × 2 = 20 XP`.
- One E-Rank boss (×4): `10 × 4 = 40 XP`.
- E-Rank Gate clear milestone (boss kill, once): `70 XP`.

Total earned in the clear: **230 XP**. Tracking against the thresholds: the first 100 crosses level 1→2. The level-up immediately raises all five base Stats by 1, adds **5 unspent points**, re-derives maximum Health and Mana, and restores both pools; the remaining **130** carries toward level 3, whose threshold is 200. The Bearer is now **level 2, XP 130/200**, with five points available for later allocation and no pending level-up reward.

During the fight the Bearer spends Mana on a skill (Section 7); a representative inline notification stream (Section 8 fixes the format) reads:

```text
Mana: 20 → 14/20
XP: 0 → 100/100
[SYSTEM] LEVEL UP — Level 2 · all Stats +1 · Ability Points +5 · HP/MP restored.
XP: 0 → 130/200
```

During the same fight an E-Rank beast lands a standard hit — one E fixed-Rank baseline of 10 before reductions (Section 6.2). Compare that resolved damage with the Bearer's current and maximum Health to apply Section 6.3; do not call it “a quarter of the Bearer's Health,” because the Bearer's pool now derives from Vitality and can be much larger or smaller than the attacker's Rank baseline. Every number here is derived from Sections 3.1–3.4, 6.2–6.3, and the population formula; a Runtime resolves the whole clear — kills, XP, level-up, Mana spend, and whether a hit wounds — without a ruling.

## 3.8 Party XP Credit

Most clears are party clears, and the Bearer earns from them on the same genuine-challenge test that governs all XP (Section 3, opening): the die must have been live and the Bearer must have been a real participant in the fight.

- **Kill XP** (Section 3.3) goes to the Bearer for **any kill his live-die actions materially contributed to** — a killing blow, a landed hit, a skill, or a control or setup action the resolved exchange turned on. He need not land the last hit; he must have taken a genuine, resolved part in bringing the creature down. A kill he took no live-die part in awards him nothing, even when an ally in his party made it.
- **The Gate-clear milestone** (Section 3.4) settles on **any clear the Bearer fought through** — if he was a materially contributing member of the party that killed the boss, the once-per-Gate milestone is his, exactly as it would be on a solo clear. He need not strike the boss's own killing blow.
- **Pure spectating awards nothing.** A Bearer who stands back and lets a party clear around him has met no genuine challenge (Section 3, opening) and earns neither kill XP nor the milestone. Presence is not participation; the live die is the test.

## 3.9 Daily Rewards Are Independent

Level-up effects are immediate (Section 3.2). **Only daily-quest rewards may remain pending or stack for later acceptance.** Completing the daily quest creates three separate reward entries:

1. **Ability Points +3** — claiming it adds three points to the unspent pool.
2. **Status Recovery** — claiming it restores Health and Mana to their current maxima and clears ordinary fatigue; it clears no injury severity.
3. **Daily Random Box** — opening it makes the real d100 contents roll in Section 8.1 and deposits the result into the dimensional inventory or System gold balance.

The Bearer may claim any, all, or none in any order. Each pending reward does not expire, and multiple days' rewards of the same type stack as separate counted entries. Claiming one never claims the others. This preserves the tactical recovery choice without making level-up growth bankable.

The completion prompt renders:

```text
[SYSTEM] DAILY TRAINING COMPLETE.
Rewards available: Ability Points +3 · Status Recovery · Daily Random Box.
Claim separately at any time.
```

The System never allocates points for the Bearer. Pending daily rewards appear individually in `/system`; a Runtime never compresses them into an ambiguous “grant.” Only the Bearer's System creates these rewards, and nothing about an NPC hunter changes (Section 13.1).

---

# 4. Stats

## 4.1 The Five Stats

The Bearer has five **base stats**:

| Stat | Governs |
|---|---|
| **Strength** | Physical force and magnitude: unarmed and weapon damage, lifting, grappling, breaking. |
| **Agility** | Speed and placement: initiative, evasion, weapon accuracy, closing or breaking distance, acting first. |
| **Vitality** | Bodily capacity: maximum Health, endurance, recovery, resisting wounds and hazards. |
| **Perception** | Senses and danger-reading: detection, ambushes, concealed motion, anomaly cues. |
| **Intelligence** | Mana and System control: maximum Mana, Mana recovery, appraisal, analysis, extraction and class capacity. |

An ordinary awakened adult sits at a **baseline of 10 per stat**. The Bearer begins at campaign-creation values — the **authored creation array** — and raises base Stats through automatic level growth, permanent allocations, and any authored permanent reward thereafter.

**The creation array.** At campaign creation the Bearer's five stats are set from a fixed civilian-range array: **five stats, each in the range 8–12, summing to exactly 50, with none above 12.** The average is the ordinary-adult baseline of 10, and the ±2 spread is the pre-System human variation the protagonist starts with. No creation stat sits above 12: the Bearer opens as a civilian, and every point beyond that spread is growth the System has not yet granted.

**Base and effective stats.** Equipment never rewrites a base stat. While an item is equipped, its Section 11.5 bonuses add to the Bearer's base values:

```text
effective_stat = base_stat + sum(bonuses from equipped items)
```

The effective value governs the Bearer's body, pools, magnitudes, and relative stat margins, so every equipped point is causal capability rather than descriptive loot. Unequipping the item removes its contribution immediately. Permanent allocation, automatic level growth, elixirs, and point rewards change the base value instead.

When equipment changes effective Vitality or Intelligence, re-derive the affected maximum while preserving the pool's **missing amount**, not its percentage:

```text
new_current = clamp(new_maximum − (old_maximum − old_current), 0, new_maximum)
```

Equipping capacity is not a heal, and unequipping it is not damage. A separate Status Recovery or level-up may fill the resulting maximum.

## 4.2 Stat Points

A **stat point** is the allocatable unit of growth. Its sources are the **level-up award** (+5, Section 3.2), the **daily Ability Point reward** (+3, Sections 3.9 and 8.1), plus any item, title, or skill that states a specific point bonus. One stat point raises one **base** stat by **1**. Allocation is permanent canonical capability; there is no respec unless a future authored in-world mechanism adds one with a cost. Awarded points sit in the Bearer's **unspent pool** until he allocates them; allocation may happen any time.

## 4.3 Stats in Action Resolution

A **modifier step** is one 20-percentile-point adjustment to a d100 resolution, composed under engine rules (Rules Section 4.4; Decision 058). Stats feed the die through exactly one rule:

> **A Stat contributes only through its margin against the resistance actually opposing the method. Baseline against baseline is 0, never a free bonus.**

For a ranked hunter or ranked monster without a five-Stat sheet, Rank supplies the opposing domain rating:

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Domain rating | 10 | 20 | 30 | 40 | 50 | 60 |

For an unranked ordinary adult, use rating **10** unless established capability, injury, age, or condition changes the resistance. A specifically authored character value takes precedence over the reference table.

```text
stat_margin = acting effective Stat − opposing domain rating
```

| Stat margin | Modifier contribution |
|---:|---:|
| −20 or less | −2 steps |
| −19 to −10 | −1 step |
| −9 to +9 | 0 steps |
| +10 to +19 | +1 step |
| +20 or more | +2 steps |

Exactly one **acting** Stat supplies the margin for one roll. The action's method selects it: Agility places a weapon attack or evasion; Perception detects; Vitality endures; Intelligence appraises or controls a System technique; Strength contests direct force. Strength still supplies physical damage after a hit even when Agility governed whether the weapon landed. A different Stat may govern a later reaction by the opponent.

The stat-margin contribution is capped at ±2 so skill, preparation, equipment effects, wounds, and circumstances retain room inside the engine's ordinary net ±3 cap. Do not also apply a Rank-gap modifier when the Rank-derived domain rating already represents the opponent: that would count the same disparity twice. NPC-versus-NPC actions, where neither side has Stats, continue to use the ordinary Rank gap under Section 13.1.

**Stats establish possibility before probability.** Before rolling, compare the effective Stat with established reality under Rules Section 4.2:

- if capability clearly guarantees the declared method, resolve it automatically;
- if the method is physically impossible even with that Stat, resolve automatic failure or offer a possible alternative;
- if resistance, timing, opposition, or consequence leaves genuine uncertainty, use the margin above and roll.

A high Stat therefore changes what the Bearer can do and how much a landed effect accomplishes; it does not erase the die from a resisting fight. An attack on an active opponent remains uncertain. Lifting a load far beneath demonstrated Strength does not become uncertain merely to display a roll.

**Runtime procedure — mandatory for every Bearer action:**

1. Read intent and method.
2. Decide automatic success, automatic failure, or uncertainty from the direct Stat effects and established facts.
3. If uncertain, choose the single acting Stat materially governing the method.
4. Read the opposing rating, calculate the stat margin once, then add distinct skill, equipment-effect, condition, and circumstance steps.
5. Cap the ordinary net at ±3, make the real d100 roll, and read its degree.
6. Apply resource cost and magnitude from Sections 5–7 and 11.5; round only at the final rule-defined step.
7. Narrate the embodied result without mechanical vocabulary. Render figures only through the Bearer's System or OOC `/debug` under Section 20.5.

## 4.4 Stat-Milestone Skills

At **30** and **50** in a **base** Stat, the System awards a named permanent **milestone skill**. These are Gatefall-specific System rewards, not the Stat's intrinsic effect: the Stat already changes the Bearer's body point by point. Equipment bonuses do not satisfy the thresholds. Each award is recorded in the skill ledger, fires once, and remains after later equipment changes:

| Stat | At 30 | At 50 |
|---|---|---|
| **Perception** | **Rank-Sight** — read the true Rank of any Gate at or below the Bearer's System Rank, converting an unconfirmed reading to confirmed by capability. | **Deep Sight** — read the true Rank of a Gate up to one full Rank above the Bearer's System Rank. |
| **Agility** | **Pre-empt** — act on an ambush warning before the ambush lands, taking a normal action in the surprise exchange rather than being caught flat. | **Slipstream** — disengage or reposition once per exchange without granting an opponent a reactive strike. |
| **Strength** | **Overpower** — grapple, pin, or bull-rush a foe up to one Rank above the Bearer's own. | **Titan's Grip** — overpower or restrain a foe up to two Ranks above, and wield oversized or two-handed arms one-handed. |
| **Vitality** | **Shrug Off** — ignore the effect of minor wounds, continuing to act without their modifier-step penalty. | **Iron Constitution** — suppress the penalty of one serious wound until the scene ends, and halve the onset rate of Rank-appropriate environmental hazards. |
| **Intelligence** | **Multitask** — raise concurrent non-daily System-quest capacity from the default **1** to **2** (Section 8.4). | **Analyst** — raise that capacity from **2** to **3**, and appraise the full effect of an unidentified rune, skill book, or core before use. |

Perception's two milestone skills (Rank-Sight, Deep Sight) turn the Gate-assessment problem into a System technique the Bearer can earn; the world otherwise re-measures a Gate's Rank only by instrument survey (Section 9). Their “own tier” reads against the System Rank of Section 6.6 — Rank-Sight covers Gates at or below it, Deep Sight one Rank above it.

---

# 5. Mana

Mana is **tracked canonical Bearer state** (Decision 057): every cost and every tick of recovery is computed from the rules below and recorded, never estimated. Only the Bearer carries a Mana pool of this kind; other hunters' capacity is subsumed in their fixed Rank.

## 5.1 The Pool

The Bearer's maximum Mana is the direct expression of effective Intelligence:

```
maximum_mana = 2 × effective Intelligence
```

Intelligence 10 yields **20 Mana**; Intelligence 20 yields **40**; Intelligence 50 yields **100**. Automatic level growth, allocation, and equipped Intelligence all change the pool because they change effective Intelligence. Apply the missing-amount rule of Section 4.1 whenever the maximum changes outside a level-up or Status Recovery.

## 5.2 Recovery

- **Active** (moving, fighting, or under threat): **10% of the pool per hour**.
- **Resting** (safe, still, unpressed): **25% of the pool per hour**.
- **Level-up or claimed Status Recovery**: full restoration, immediately (Sections 3.2 and 3.9).

Recovery is a percentage of the *maximum* pool, so Intelligence increases both capacity and recovered Mana per hour while the time required to refill the whole pool stays constant. Recovery is settled from elapsed fictional time before the next action reads available Mana; a narrated span of rest produces one settled Mana figure, not a tick-by-tick stream.

**Deterministic settlement.** `campaign_time` is an ISO-8601 Chicago-local
timestamp with an explicit UTC offset and minute precision. `mana_recovery_mode`
is `active` or `resting`; `mana_recovery_remainder_units` is a nonnegative integer
smaller than `720000`. For elapsed seconds, use half-percent rate units so the
Frozen Gallery's halving remains exact:

```text
rate_units = 20 active | 50 resting
rate_units = rate_units ÷ 2 inside a Frozen Gallery
total_units = mana_recovery_remainder_units
            + elapsed_seconds × maximum_mana × rate_units
mana_restored = floor(total_units ÷ 720000)
mana_recovery_remainder_units = total_units mod 720000
current_mana = min(maximum_mana, current_mana + mana_restored)
```

The denominator is `3600 seconds × 100 percent × 2`. At full Mana, set the
remainder to zero. Changing mode first settles through the change instant under
the old mode, then applies the new mode. Recovery settles after every action,
transition, montage, travel span, wait, or sleep that advances time—never for the
first time when `/system` is opened or the player asks.

## 5.3 Running Dry

- A casting or skill whose cost exceeds current Mana is **unavailable** — it cannot be attempted until the Bearer has the Mana to pay it.
- At **0 Mana**, the Bearer suffers **−1 modifier step on all actions** until Mana recovers **above 25% of the pool**. This is exhaustion, not merely an empty counter, and it applies to physical actions as well as castings.

Mana gates whether a skill can be *attempted*; it never decides the result. The die resolves the attempt (Rules Section 4).

---

# 6. Health, Damage, and Vitality

## 6.1 Health Pools

NPC hunters and monsters have **Rank Health** sized to their fixed Rank. A creature's Rank is a complete description of its durability: a C-Rank beast has C-Rank health and a B-Rank hunter has B-Rank health, with nothing further authored per creature (Decision 020).

The Bearer is the declared exception. His maximum Health is the direct expression of effective Vitality:

```text
maximum_health = 4 × effective Vitality
```

Vitality 10 yields **40 Health**; Vitality 20 yields **80**; Vitality 50 yields **200**. Automatic level growth, allocation, and equipped Vitality all change the pool because they change effective Vitality. Apply Section 4.1's missing-amount rule whenever the maximum changes outside a level-up or Status Recovery.

The fixed-Rank table remains canonical for every NPC hunter and monster:

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Rank Health | 40 | 100 | 250 | 600 | 1,500 | 4,000 |

The scale climbs roughly ×2.5 per Rank, keeping fixed-rank entities resolvable without individual Stat sheets. It never substitutes for the Bearer's effective Vitality.

## 6.1.1 Natural Health Recovery

Natural Health recovery is deterministic tracked state and is independent of
injury severity. Safe rest restores **25% of maximum Health per eight hours**;
safe light activity restores half that rate; combat, threat, strenuous exertion,
or an unstable environment pauses natural recovery. Reaching full Health does
not clear an injury, pain, poison, scar, or modifier; those change only under
Sections 6.3–6.4.

`health_recovery_mode` is `resting`, `light`, or `paused`.
`health_recovery_remainder_units` is a nonnegative integer smaller than
`5760000`. Settle elapsed seconds with integer arithmetic:

```text
rate_units = 50 resting | 25 light | 0 paused
total_units = health_recovery_remainder_units
            + elapsed_seconds × maximum_health × rate_units
health_restored = floor(total_units ÷ 5760000)
health_recovery_remainder_units = total_units mod 5760000
current_health = min(maximum_health, current_health + health_restored)
```

The denominator is `8 hours × 3600 seconds × 100 percent × 2`. At full Health,
set the remainder to zero. A mode or maximum-Health change preserves accumulated
carry unless the pool reaches full. New damage applies immediately and does not
erase carry. Settle through a mode change under the old mode before starting the
new one. The Runtime performs this settlement automatically from `campaign_time`
before the next action reads Health.

## 6.2 Damage

A hit's damage is built from the attacker's own magnitude source and the quality of the d100 result.

For a fixed-rank NPC hunter or ranked monster:

```text
fixed_band_damage = (rank_health ÷ 4 + equipped weapon_power)
                  × chassis_or_skill_multiplier
                  × result_multiplier
                  × (1 − total_reduction)
```

A monster's ordinary natural attack uses `weapon_power 0` and multiplier ×1 unless its authored signature states another multiplier. A fixed-rank hunter's unarmed strike uses ×0.5; an equipped weapon uses that weapon's chassis and power. This preserves Rank-honest monster damage while letting equipment improve a hunter from the hunter's own Rank rather than replacing it.

For the Bearer's physical strike:

```text
Bearer_physical_damage = (effective Strength + weapon_power)
                       × chassis_multiplier
                       × result_multiplier
                       × (1 − total_reduction)
```

An unarmed strike has `weapon_power 0` and chassis ×0.5. A wielded weapon uses only that weapon's power; dual-wielding does not add two weapon-power values to one strike unless a named skill explicitly says it does. Agility normally governs whether the weapon lands (§4.3); Strength governs how hard the landed physical strike hits.

For a Bearer damage or healing skill:

```text
Bearer_skill_magnitude = (skill_rank_baseline + equipped_focus_power)
                       × skill_multiplier
                       × result_multiplier
```

The rank baselines are Section 7.2's E-Rank–S-Rank table. Only a Channeling Focus contributes focus power, and only to a damage or healing skill. Intelligence governs the Mana pool and uncertain control; it does not silently multiply every skill's authored magnitude.

An unawakened wielder of a mana-bearing weapon uses ordinary-adult Strength 10 unless established capability says otherwise:

```text
unawakened_magic_weapon_damage = (10 + weapon_power) × chassis × result × reductions
```

**Mana-borne gate.** Against a monster, final damage is 0 unless the source carries mana under `GTF-OVR-003`: an awakened combatant's blow or skill, or a mana-bearing weapon. A mundane firearm, blade, or explosive can still produce non-Health fictional effects authored by the resolution.
- **Result multiplier — by degree of success.** The degree of success the d100 yields (Rules Section 4; Decision 011) scales the hit:

| Degree of success | Name | Multiplier |
|---|---|---|
| Partial success | graze | ×0.5 |
| Success | standard | ×1 |
| Strong success | strong | ×2 |
| Critical success | critical | ×4 |

A miss deals no damage. **Critical tails are always live** (Decision 052): a natural critical is a critical hit that no modifier can remove, and a natural fumble lands nothing.

- **Reductions apply last, and compose with `GTF-OVR-002`.** The die first resolves whether the hit lands and its degree; the multipliers above then set the raw magnitude; and only then is damage removed from Health **after** applicable reductions — exactly the "damage after reductions" order `GTF-OVR-002` declares. Reductions **multiply, never add** (`total_reduction = 1 − Π(1 − rᵢ)`, Section 7), so no stack of protections reaches immunity.
- **Equipped armor is an authored reduction.** Each equipped armor piece and Guard Shield contributes the reduction for its own Rank from Section 11.5. These reductions compose multiplicatively with one another, skills, titles, and circumstances under the same formula above. Stored, carried, broken, or merely owned armor contributes nothing.

**Final rounding.** Keep precision through every multiplier and reduction, then round the final Health change to the nearest whole number, with `.5` rounding up. A landed damaging hit that remains positive after reductions deals at least 1 Health. Do not round intermediate values.

Healing uses the magnitude source its effect names: a fixed-rank mender uses its Rank baseline, while a Bearer skill uses its skill-rank baseline and focus power.

## 6.3 Injuries

Losing Health is not the same as taking a lasting **injury**. A hit inflicts an injury when it is heavy enough to mark the body:

> A single hit that removes **≥ 50% of the target's remaining Health**, **or** drops the target **below 25% of its maximum Health**, inflicts an injury.

The Runtime assigns the injury's **severity** from the engine's four-tier taxonomy (`010_ENGINE_RULES.md` Section 6.8 — **Minor · Moderate · Severe · Critical**) given the hit's magnitude and the established fiction, and tracks it under the engine injury model (location, type, ongoing effect, treatment). An injury's modifier-step and capability consequences (Rules Section 6.9) persist until it is healed; restoring Health does not by itself clear it.

Untreated injuries heal on a tiered clock; professional (hospital) treatment **halves** the time at every tier:

| Severity | Untreated | Hospital / professional care |
|---|---|---|
| **Minor** | 1 day | ½ day |
| **Moderate** | 1 week | ½ week |
| **Severe** | 1 month | ½ month |
| **Critical** | 3 months, **with death risk absent treatment** | 6 weeks |

### A Mender Clears Severity

A healing-touch **mender** does not merely accelerate that clock. A mender's **resolved treatment touch clears an injury's severity outright** — flesh knits, bone sets, the wound closes and the body is whole again — provided the mender's Rank reaches the minimum required for that severity:

| Mender Rank | Highest injury tier they can clear |
|---|---|
| E-Rank | Minor |
| D-Rank | Moderate |
| C-Rank | Severe |
| **B-Rank and above** | Critical |

- **It costs a touch.** Clearing severity consumes one of the mender's limited per-clear touches (Section 13.5), exactly as a Health restoration does. The mender's scarcity, not the injury table, is what makes wounds matter in a Gate.
- **A single touch does one job.** One touch either restores Health or clears one injury's severity, chosen at the moment it is applied. It does not do both; the two axes remain independent (Section 6.4).
- **Above their rank, they still help.** A mender treating an injury above their tier cannot clear it, but their care counts as professional treatment for the halving in the table above, and may step the severity down by one tier at the Runtime's ruling where the fiction supports it.
- **It is a resolved treatment, not a label.** The touch is an actual applied action in the fiction — the mender must reach the patient and lay hands on them. Under pressure it is an uncertain action like any other and may be resolved by the die.
- **Death remains final** (Section 6.5). A mender restores the living; nothing here touches that boundary.

Priced as a hired session in Section 12.7. This is the reason a crew that can afford a mender fields one, and the reason a high-rank mender commands what they do.

A **Critical** injury left untreated may kill the target before it heals — stabilization is not optional. Healing potions restore Health directly on the schedule authored in the economy (Section 12.5, per Anchor A7); a potion controls immediate bleeding and restores Health but does not by itself clear a wound's severity, which advances only through elapsed time and care.

## 6.4 Treatment Interaction

Direct Health restoration (a potion, a skill, a facility) and severity recovery are independent **axes**: restoring Health to full does not automatically clear an injury condition, and clearing a condition does not automatically restore Health. A fictional label ("bandaged", "rested") never upgrades care on its own; care advances only through a resolved treatment appropriate to the injury. New damage applies immediately and may worsen severity.

Independence is about *what an effect does*, not about whether severity can be removed quickly. A **mender's touch is a resolved treatment** and clears severity outright within their rank (Section 6.3) — that is the one effect authored to act on the severity axis directly. A potion, a Status Recovery, and a level-up act only on the Health axis and never clear a wound, however full they leave the pool. This is why a Bearer can stand at maximum Health and still be genuinely broken, and why a crew's mender is the answer to that condition rather than another potion.

## 6.5 Death Is Final

**Death is death.** No resurrection, revival, or reincarnation exists in Gatefall under this profile. When the Bearer dies, the death is resolved and recorded normally, all System state remains with the dead Bearer and transfers to no one, and **the campaign hard-ends** — it becomes terminal under the Engine Rules. The System is patient on a scale its host is not; that a successor may one day be chosen is a matter for the world's hidden canon, never a continuation of the dead character and never a promise play may rely on. A Bearer who dies in an E-Rank Gate is as dead as one who dies in an S-Rank Gate. A **Critical** injury (Section 6.3) that goes untreated is one of the ordinary roads to that end.

## 6.6 The System Rank Ladder

The Bearer's **System Rank** is a level-derived content bracket. It is not his carded rank, not a Stat, and not a substitute for his actual body. Stats and equipment determine Health, Mana, physical magnitude, and Bearer-versus-Rank margins; System Rank only selects the scale of authored content and rewards.

| Level reached | System Rank |
|---|---|
| Creation (level 1) | E-Rank |
| 10 | D-Rank |
| 20 | C-Rank |
| 30 | B-Rank |
| 40 | A-Rank |
| 50 | S-Rank |

The Rank advances the instant the level-up that reaches a threshold settles; between rungs it holds at the last Rank reached. It is canonical derived state, read from level and never estimated.

System Rank governs only:

- **Threat-color designation** (Section 14.6) — every creature is colored against his System Rank.
- **Penalty-zone Rank** (Section 8.3) — the sealed instance runs at his System Rank.
- **Class-trial Rank** (Section 18.2) — the trial's waves and final foe stand at his System Rank.
- **Instant-dungeon “own-tier” keys** (Section 17, Section 12.5) — a shop key opens at his System Rank.
- **Rank-Sight / Deep Sight range** (Section 4.4) — read relative to his System Rank.
- **Underdog XP and Daily Premium Rank floors** (Sections 3.3 and 12.5).

Where those content systems say “the Bearer's own Rank,” they mean this ladder. They never feed Health, Mana, physical damage, or the Section 4.3 stat margin.

---

# 7. Skills

A **skill** is a named, canonical capability the Bearer has learned. Skills are the Bearer's active and passive techniques; each carries a name, a Rank, a Mana cost (or "passive"), and an effect stated in modifier-step, rank-baseline, reduction, resource, or direct-capability terms so a Runtime resolves it without a ruling.

## 7.1 Acquisition

A skill enters the Bearer's ledger by one of four routes, and only these:

1. **Rune.** A rune dropped as loot (Section 11) teaches one authored skill on use, consumed in the teaching. Runes found at E- and D-Rank Gates teach from the starting skill table below.
2. **Skill book.** A rarer drop teaching a specific authored skill, likewise consumed; skill books can carry skills above the rune tier (the full skill-book table is authored with loot in Section 11).
3. **Earned by doing.** An approach the Bearer uses **successfully in at least three distinct dangerous scenes** may be **ratified by the System as a skill** — the System recognizes a proven practice and formalizes it. Ratification requires genuine, resolved, at-risk use each time; trivial repetition does not count, and the three scenes must be materially distinct, not one tactic replayed. On ratification the skill is authored into the ledger with a name, rank, cost, and effect at the time it is granted.
4. **Stat milestone.** Crossing base Stat 30 or 50 awards the exact milestone skill listed in Section 4.4. The trigger, name, and effect are already authored; equipment cannot trigger it.

## 7.2 Skill Entries

Every skill entry carries: **name · rank (E-Rank–S-Rank) · Mana cost · effect · successful uses · mastery progress**. Active skills cost Mana and are gated by it (Section 5.3); passive skills cost 0 and are always in effect. Mastery-tracked skills also carry their lifetime `qualifying_scenes_total`; stat-milestone passives explicitly carry `mastery_progress: none`.

For a Bearer damage or healing skill, rank supplies its base magnitude:

| Skill rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Rank baseline | 10 | 25 | 62 | 150 | 375 | 1,000 |

The table preserves the fixed-Rank standard-hit scale while decoupling it from the Bearer's level. A-Rank Channeling Focus adds its weapon power to this baseline (Section 11.5). The skill's own multiplier and mastery then apply under Section 6.2. Utility effects remain expressed as a modifier step, duration, reduction, resource change, or stated capability.

## 7.3 Starting Skill Table

These eight skills are what a rune can teach at E- and D-Rank. Costs are in Mana; effects resolve under Sections 4.3 (modifier steps) and 6.1 (Rank Health).

| Skill | Rank | Mana cost | Effect |
|---|---|---|---|
| **Sprint** | E-Rank | 3 | +1 modifier step on movement, pursuit, and distance-closing actions for one exchange. |
| **Dagger Mastery** | E-Rank | Passive | Add **+0.10** to a Quickknife's chassis multiplier (normally ×0.75 → ×0.85). |
| **Mend** | E-Rank | 6 | Restore Health at **×1.0 of the E-Rank skill-rank baseline** (10 before mastery/focus); controls bleeding but does not clear a wound's severity. |
| **Stone Skin** | D-Rank | 4 | 30% physical damage reduction while sustained; ends when Mana lapses or the Bearer drops it. |
| **Flash Step** | D-Rank | 8 | Close or break line-of-sight distance instantly once, granting +1 modifier step to the follow-up action. |
| **Keen Sense** | E-Rank | 2 | +1 modifier step on detection: spotting ambush, hidden foes, or anomaly for the scene. |
| **Silent Step** | E-Rank | 3 | +1 modifier step on stealth and unseen-approach actions for the scene. |
| **Mana Bolt** | E-Rank | 5 | A ranged bolt at **×1.0 of the E-Rank skill-rank baseline** (10 before mastery/focus) on a standard success; Intelligence governs uncertain control and the die resolves whether it lands and its degree. |

Reductions from Stone Skin and any other source **multiply, never add** (`total = 1 − Π(1 − rᵢ)`), so no stack of skills reaches immunity.

## 7.4 Skill Mastery

A skill is not fixed the day it is learned — it **grows in the Bearer's hands with use.** Every skill is held at a **mastery level, 1 through 5** — Novice, Practiced, Adept, Expert, Master — starting at **Novice** when acquired. This is the Bearer's **second growth axis beside stats**: a much-used skill becomes formidable even at a low rank, the way a hunter's signature deepens over a career.

**Advancing.** A skill rises **one mastery level** after it has **materially contributed to the resolution of three distinct dangerous scenes at its current level** — the earned-by-doing rigor of Section 7.1: genuine, resolved, at-risk use each time; trivial repetition does not count, and the three scenes must be materially distinct. Reaching Master therefore takes twelve qualifying scenes across a skill's life. The System advances mastery automatically on the third qualifying scene and fires a Tier-1 notification (`[SYSTEM] SKILL MASTERY — Mana Bolt is now Adept.`).

**Use counters.** Every skill records `successful_uses`, a lifetime total that never resets. A successful activation or application adds one; a failed or missed use adds none. One activation counts once even when it affects several targets. A sustained skill counts once when activated, not once per exchange. A passive skill counts once per resolved action in which its effect materially applies. Several successful casts in one continuous dangerous scene each add to `successful_uses`, while that scene contributes at most one mastery point for that skill. A successful non-dangerous test adds a use but no qualifying scene.

Mastery-tracked skills also record `qualifying_scenes_total`, which never resets, and `mastery_progress`, the exact count from 0 to 2 toward the next level. On the third qualifying scene the mastery level advances and current progress resets to 0; at Master it renders complete. Stat-milestone skills from Section 4.4 have no mastery track, but their successful material applications are still counted.

**What each level above Novice improves** — two axes, both closed-form:

- **Magnitude**, by one Rank of the skill's own effect per level:
  - a **damage or healing** skill's multiplier rises **+0.15** (Mana Bolt ×1.0 at Novice → **×1.6 at Master**; E-Rank Mend 10 → 16 before focus at Master);
  - a **reduction** skill's fraction rises **+5 points** (Stone Skin 30% → **50% at Master**);
  - a **modifier-step or utility** skill — already capped at +1 step (Section 4.3) — instead **lengthens**, its effect covering one further exchange per level and reaching the **whole scene at Master**, or widening to one stated additional target.
- **Mana cost**, **−10% per level** (rounded, minimum 1): a 5-cost skill runs 5 → **3 at Master**; passive skills stay 0.

**Rendering.** The focused `/system skills` view carries mastery and counters: `Mana Bolt [E-Rank] ★★★★☆ · MANA 4 · Uses 17 · Progress 2/3 · ×1.45` (Expert, two qualifying scenes toward Master). The full window may wrap the counters onto an indented continuation row to preserve its fixed width. A stat-milestone passive renders `Uses <n> · Progress —`. Every value is read from the skill's ledger entry (Section 15) and is never estimated.

Mastery raises a skill's power, never its **rank** — an E-Rank Mana Bolt mastered is still an E-Rank skill, just a lethal one. Rank reflects the tier it was learned at (Section 7.1); mastery reflects the hands that carry it.

---

# 8. System Quests and Penalty Zones

The System issues the Bearer a **daily quest** — a training regimen with a hard deadline and a real cost for failure — and may also surface bounded **Urgent** and **Hidden** quests under Section 8.4. The daily is the world's mechanism for keeping the Bearer growing between Gates, and its penalty is the sharpest edge the System shows in ordinary play.

## 8.1 The Daily Quest

Once per in-fiction day the System issues the quest, rendered in a bracketed System block:

```text
[SYSTEM] QUEST ISSUED — DAILY TRAINING
Objectives: 100 push-ups 0/100 · 100 sit-ups 0/100 · 100 squats 0/100 · 10 km run 0/10
Rewards: Ability Points +3 · Status Recovery · Daily Random Box
Deadline: 00:00 local tonight.
Warning: incomplete at midnight transfers you to a penalty zone.
```

- **Issue and deadline:** the quest issues at **06:00 local** every in-fiction day. Its deadline is **00:00 local immediately following that issue date**: the Bearer may make progress from 06:00 through 23:59, an 18-hour window. At midnight the issuing day's quest is closed before any later beat resolves. No daily quest is active from 00:00 through 05:59; the next one issues at 06:00.
- **The regimen** is fixed: **100 push-ups, 100 sit-ups, 100 squats, and a 10 km run**, completed within that daily window.
- **Rewards on completion:** three independent pending entries — Ability Points +3, Status Recovery, and one Daily Random Box (Section 3.9).
- The quest awards **no XP**. It tracks a **consecutive-completion streak**: completion advances the streak by 1; failure resets it to 0.
- **Seven-day streak upgrade:** when completion raises the streak to a **positive multiple of seven** (7, 14, 21, and so on), that completion's one Daily Random Box is recorded as **streak-upgraded**. It still creates exactly one pending box, but Section 8.1 resolves that box with two complete candidate rolls and lets the Bearer choose one result. There is no additional Weekly Cache, no multiplier on the other two daily rewards, and no separate 28-day benefit.

On a streak-upgrade completion, append this exact line to the normal completion block:

```text
Streak milestone: Daily Random Box upgraded — roll twice, choose one.
```

Completion is genuine effort, not a checkbox — the objectives are physical work the Bearer must actually do in the fiction. The System tracks progress against each objective (the `0/100` counters advance as the work is done). It resolves the quest **complete immediately** when the final objective finishes; if any objective remains incomplete at 00:00, it resolves the quest **failed at midnight**, resets the streak, and applies Section 8.3.

### The Daily Random Box

A Daily Random Box is rolled only when the Bearer opens that pending reward. A standard box makes one real d100. A **streak-upgraded** box makes **two independent real d100 rolls**, resolves both candidate results completely—including any required item, chassis, skill, or other subrolls—and presents both complete candidates to the Bearer. The Bearer chooses one; the unchosen candidate produces nothing and never enters inventory or state. Rank every ranked candidate to the Bearer's current **System Rank** (Section 6.6) at opening. Items follow their own sections:

| d100 | Daily Random Box yields |
|---|---|
| 01–35 | A **potion cache** — 3 potions at the Bearer's System Rank (healing/mana mix). |
| 36–60 | **System gold** — a purse at the shop's core-buy value for the Bearer's System Rank (E=500, D=2,000, C=8,500, B=35,000, A=150,000, S=650,000; Section 12.5). |
| 61–80 | A **rune** teaching one authored skill (Section 11.3 table) at the Bearer's System Rank. |
| 81–93 | A piece of **ranked gear** at the Bearer's System Rank (Section 11.5). |
| 94–99 | A **skill book** (Section 11.3) — a fuller technique with a growth path. |
| 100 | An **elixir** (+1 permanent to one stat, Section 12.5's lifetime cap applies). |

The box is the Bearer's alone and cannot be traded before opening because it is pending System state, not an object. Once opened, the chosen contents are ordinary dimensional-inventory holdings. One completion creates exactly one box. The streak changes only that box's roll mode at positive multiples of seven; it never adds a second box or changes the table.

## 8.2 Inline System Notifications

During prose, ordinary numeric changes render as compact single lines showing the change and the new standing:

```text
XP: 40 → 90/300
Mana: 25 → 13/45
HP: 34 → 21/40
```

Each shows `before → current/maximum` (for XP, `current/next threshold`). Render each changed quantity once per resolved action. The full daily-quest and level-up blocks retain their bracketed form because they communicate more than a number. (The complete System-voice contract and every `/system` panel are authored in a later section.)

## 8.3 The Penalty Zone

If midnight arrives with the issuing day's quest incomplete, the System **transfers the Bearer into a penalty zone at 00:00 local**: a sealed survival instance he does not choose to enter and cannot leave early.

- **Duration:** a **4-hour survival instance**. The Bearer survives it or dies in it; there is no other exit and no retreat.
- **Rank:** the instance runs at the Bearer's **System Rank** (Section 6.6) — it scales with progression, so it never stops being dangerous as he grows.
- **Population:** populated per the standard Gate population formula at the Bearer's System-tier Rank **G**:

  ```text
  3d6 common beasts (Rank G)
  + 1d2 elites (Rank G, ×2 Rank Health)
  + 1 boss (Rank G, ×4 Rank Health)
  ```

  (Section 9 restates this formula as the general rule for all Gates; it is reproduced here because a penalty zone must be fully resolvable from this section alone.)
- **XP and leveling are full and normal.** Every kill in the penalty zone awards its ordinary kill XP (Section 3.3) and that XP counts toward leveling exactly as anywhere else: thresholds cross and Section 3.2's immediate level-up effects settle in the instance itself. The penalty zone is dangerous, not barren — a Bearer who fights hard climbs out of it stronger, which is the trap's other edge.
- **No material loot.** What the zone withholds is *loot*, not growth: it drops **no crystals, cores, runes, gear, keys, or currency**. There is nothing to sell and nothing to carry home — only levels earned in blood. It punishes by making the Bearer pay in risk for XP he could have earned safely by doing his push-ups.
- **Exit:** the instance ends and returns the Bearer to the world on **surviving the full four hours**, or **early on killing the zone's boss** — a boss kill collapses the instance like any Gate (Section 9.7) and awards the **Gate-clear milestone XP at Rank G** (Section 3.4), the one milestone the zone does pay. Death inside it is death (Section 6.5), and the campaign ends there.

The penalty is deliberately not a fine or a debuff: missing the daily quest drops the Bearer, alone, into a fight at his own System Rank that he did not pick. That is the System being indifferent to his convenience — the daily quest is an order, and refusal has teeth. That the teeth also make him stronger is exactly the System's logic: it does not fine failure, it *forces the training the Bearer skipped*, at knifepoint.

**Deferred transfer from inside a sealed instance.** If midnight arrives while the Bearer is inside a **sealed instance** — a red gate (Section 9.6), an instant dungeon (Section 17), or the class trial (Section 18.2) — the quest still fails and the streak still resets at 00:00, but the penalty transfer **cannot fire** while that seal holds: there is no exit, and the System does not drop him into a second sealed instance atop the first. The transfer **defers**; the instant the Bearer exits the sealed instance, it **fires immediately**, before any new daily quest can issue or any other voluntary action resolves. The deferral spares him nothing — it only waits for a door.

## 8.4 Urgent and Hidden Quests

Urgent and Hidden quests are real System state, not labels the Runtime may add to an ordinary campaign objective. They exist only through the triggers below. The Runtime performs the trigger audit whenever a scene opens, the Bearer enters a new place, a nearby crisis materially changes, or the Bearer's action establishes a new concealed discovery. If no trigger is met, no quest appears.

### 8.4.1 Capacity and Canonical State

The Bearer has **1 concurrent non-daily quest slot by default**. Multitask raises this to **2**; Analyst raises it to **3** (Section 4.4). Only accepted `[URGENT]` quests and attached `[HIDDEN]` quests consume these slots.

- The `[DAILY]` quest has its own reserved slot and never consumes non-daily capacity.
- The Class Quest and later class-evolution quest (Section 18) each use their own reserved class slot and never consume non-daily capacity.
- An Urgent offer that has not been accepted consumes no slot. A Hidden quest consumes one as soon as its pointer attaches, even while its content renders `???`.
- Completion, failure, expiry, or abandonment frees the slot immediately. A capacity increase never creates a quest; it only permits another qualifying quest to attach or be accepted.
- `/system quests` may abandon one named active Urgent quest or one selected Hidden pointer. Abandonment is immediate and irreversible, produces no reward or separate penalty, and cannot erase consequences already caused in the world.

Canonical `system_state.non_daily_quests` stores `base_capacity`, `multitask_bonus`, `analyst_bonus`, `capacity_total`, `active`, and `pending_offers`. Every active quest record stores a stable quest key, type, status, issue time, objective counters, completion and failure conditions, reward Rank and XP, and deadline. A Hidden record additionally stores its authored concealed name, reveal condition, and whether it has been revealed. A pending Urgent offer stores the same resolved contract plus its offer-expiry condition. The complete record is canonical even when the character-facing panel withholds part of it.

If a trigger fires while every non-daily slot is occupied, the quest does not attach and no state is silently displaced:

```text
[SYSTEM] QUEST CAPACITY REACHED — <URGENT or HIDDEN>
Non-daily slots: <used>/<capacity>.
Free a slot while this opportunity remains available.
```

The opportunity may be audited again only while its original world condition still holds. The System does not queue it after the crisis or discovery window has passed.

### 8.4.2 Urgent Quests

An **Urgent quest offer** becomes eligible only when all of the following are already established in the fiction:

1. a present, nearby crisis poses an immediate threat of death to at least one non-hostile person;
2. the threat is a Gate creature, an active Gate break, or a directly perceived sealed-instance hazard;
3. the Bearer has a physically actionable route to intervene before the threat resolves; and
4. the objective, success condition, failure condition, and causal deadline can be stated from facts the Bearer already perceives.

Routine contracted hunting, a danger the Bearer deliberately created, a remote report he cannot reach in time, property loss without immediate danger to life, and a crisis already resolved do **not** qualify. The System does not reveal an unconfirmed Gate Rank, a hidden attacker, or an NPC's intent to make an offer fit.

An eligible offer is Tier 2 (Section 14.3) and renders:

```text
[SYSTEM] URGENT QUEST OFFER — <name>
Objective: <one concrete intervention with counters if needed>
Reward: <XP> XP
Deadline: <known timestamp or causal end condition>
Failure: <the established condition that makes rescue impossible>
Accept / Decline
```

The Bearer must explicitly accept before quest completion can be earned. Declining or letting the offer's causal window close creates no penalty. Acceptance requires a free non-daily slot and fixes the reward at **four times the common-kill XP of the Bearer's System Rank at acceptance**: E-Rank 40, D-Rank 100, C-Rank 240, B-Rank 600, A-Rank 1,600, S-Rank 4,000 (Section 3.3). Later leveling does not reprice it. Ordinary kill XP and Gate-clear XP still settle normally; the Urgent reward is additional challenge XP and settles immediately when the success condition is met. Failure or expiry awards nothing and does not impose a System penalty beyond the world's consequences.

### 8.4.3 Hidden Quests

A **Hidden quest pointer** becomes eligible only when all of the following are true:

1. a concealed discovery, place, object, pattern, or optional objective already exists in authored world or campaign canon;
2. the Bearer has entered immediate, actionable proximity to it or has just established a genuine clue through a resolved action;
3. the Bearer does not yet know the concealed fact; and
4. before notification, the Runtime records one exact reveal condition, one achievable objective, one completion condition, any failure or expiry condition, and the reward Rank in canonical Hidden quest state.

The Runtime may not create `[HIDDEN] ???` merely for atmosphere, retroactively turn a guess into a quest, or use the pointer to describe the concealed fact. Asking the System what `???` means never satisfies the reveal condition. The Bearer must investigate or act in the fiction. If capacity is available, the pointer attaches automatically and renders:

```text
[SYSTEM] HIDDEN QUEST DETECTED
Objective: ???
Reward: ???
Deadline: ???
```

When the authored reveal condition is met, the same record changes in place and immediately renders its name, objective, progress, reward, and any deadline. If the completion condition is met in that same action, reveal and completion settle together. A Hidden quest's reward is the **Gate-clear milestone XP for the Bearer's System Rank when the pointer first attached**: E-Rank 70, D-Rank 150, C-Rank 320, B-Rank 700, A-Rank 1,500, S-Rank 3,200 (Section 3.4). Later leveling does not reprice it. The XP settles immediately on completion; failure, expiry, or abandonment awards nothing and adds no separate System penalty.

### 8.4.4 Settlement and Rendering

Accepted Urgent quests and attached Hidden quests update their counters from resolved fiction, never from narrative convenience. Completion and failure are Tier-1 state reactions once their stored condition becomes true (Section 14.3). A quest cannot complete from conduct that occurred before its offer was accepted or pointer attached.

`/system` and `/system quests` render `Non-Daily Slots <used>/<capacity>` first, then active quests in this order: Daily, Urgent by deadline, Hidden by attachment time, Class/evolution. Urgent rows always show objective progress, fixed XP, and deadline. An unrevealed Hidden row shows only `[HIDDEN] ???`; its reward and deadline remain `???` even though canonical state holds them. Completed, failed, expired, declined, and abandoned quests leave the active panel immediately and remain available only through `/system log`.

---

# 9. Gates

A **Gate** is a breach between the world and a dungeon instance. Every Gate has a Rank (E-Rank–S-Rank), a detection timestamp, an interior archetype (Section 10), and a population (below). This section fixes how a Gate is measured, staffed, resolved, and — if it is left too long — how it breaks.

## 9.1 Spawn Rates

Gates open continuously; the two campaign cities open at very different rates.

| Metro | Gates per week (approx.) |
|---|---|
| **Chicago metro** | ≈ **35** |
| **Prague** | ≈ **8** |

These are aggregate rates across the metro, not a schedule; the Runtime distributes them into the fiction as needed and does not roll a fixed calendar.

## 9.2 Rank Frequency

When a Gate opens, its true Rank follows this distribution:

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Frequency | 50% | 25% | 15% | 7% | 2.5% | 0.5% |

Most Gates are E and D; an S-Rank Gate is a once-in-a-long-while, world-news event.

## 9.3 Break Timers

From detection, an uncleared Gate runs a countdown to a **dungeon break** (Section 9.8). Higher-Rank Gates break faster — the pressure behind them is greater.

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---|---|---|---|---|---|
| Days from detection to break | 7 | 6 | 5 | 4 | 3 | 2 |

The timer starts at detection, not at first entry. A Gate cleared before its timer expires closes safely on the boss kill; a Gate whose timer runs out breaks.

**Why the worst Gates give the least warning.** The timer is not a schedule; it is the barrier failing. A Gate's countdown is read from its mana pressure (the same reading that Ranks it), and a higher-Rank interior strains harder against the barrier that contains it — an E-Rank Gate is a sealed jar, an S-Rank Gate an overpressured boiler. This is the single fact the world's hunter politics is built on: no state can *assemble* an S-response inside two days, so an S-Rank Gate is answered by whoever is already in range — which is why S-Ranks are pre-positioned strategic assets counted by name, why the S-Rank draft binds them to emergency mobilization, why a state with one S-Rank guards where that one sleeps, and why an S-Rank Gate beyond the reach of a standing response becomes a Jiu Valley. An S-Rank Gate response is never "every S-Rank in the country"; it is the nearest adequate force plus **military containment** — cordon, evacuation, and holding the perimeter, since conventional arms cannot *kill* what a break releases (`GTF-OVR-003`) — of whatever the force cannot reach in time.

## 9.4 Party Minimums — Law and Practice

Regulation sets the minimum sanctioned party to legally enter a Gate by Rank; the trade's posting floors sit above the law at every Rank. Entering under the **legal minimum** is an offense in both jurisdictions (Section 13). **Posting floors** are enforced by the boards themselves: no licensed board — BGM auction, co-op desk, or guild dispatch — posts a contract below its floor, and none accepts a solo bid on an unconfirmed Gate or any Gate assessed D or above.

**The legal minimum is a *combat* requirement.** Every count in the "legal minimum" column below means **combat-rated hunters of adequate rank** — the strike element that must be able to fight the Gate's population (Section 9.7). It says nothing about the total headcount that walks through the mouth.

| Rank | Legal minimum — combat-rated hunters | Posting floor (total, incl. support) |
|---|---|---|
| **E-Rank–D-Rank** | None (a lone licensed hunter may enter) | **8** — a strike element of ≥5 plus support (waiver floor: 5, see below) |
| C-Rank | 4 (C-Rank-capable) | 10–12, strike + support |
| B-Rank | 8 (B-Rank-capable, incl. ≥1 B) | 14–18 |
| A-Rank | 16 (incl. at least one A-Rank) | 24–32 |
| S-Rank | National-asset operation (state-directed) | State-directed |

The gap between the columns is deliberate: the legal floor is the fighting strength; the posting floor is the fighting strength **plus the support crew who make a clear pay.**

**Support crew may be any rank — even far below the Gate's Rank.** Miners, harvesters, and porters do not fight, so they are not held to the combat requirement. They ride in **under the strike element's protection**: they cross the mouth after the line has secured ground, work only in the zones the fighters have cleared, and withdraw the moment the line moves or bends. An **E-Rank can legally and sensibly work a C- or B-Rank Gate** — cutting crystal worth a fortune he could never earn fighting — precisely because he is not there to fight. The strike element carries the combat rating for everyone; the support crew carries the tonnage out. This is the arrangement that puts a weak hunter on a strong Gate and pays him for it.

**This is what most low-rank hunters actually do.** The world's floor is not a floor of weak *fighters* — it is a support tier. Most E- and D-Ranks make their living as **miners, harvesters, and gear-porters** on higher-Rank clears, not as front-line strikers expected to trade blows with beasts that would kill them. Fighting below one's safe Rank is the *exception* an ambitious hunter chooses; the ordinary career of a low-rank licensed hunter is support work, and it is honest, needed, and dangerous enough — a support crewman caught when a line breaks dies exactly as a striker would (Section 9.8). A standard clear therefore fields a **strike element** (combat-rated, Section 13.5) and a **support element** (any rank — miners cutting the deposits of Section 11.1, plus porters who haul loot and carry the fighters' spare gear and consumables), the support paid a harvest share rather than a full combat split (the standard support-contract terms — 20% of the clear, output-weighted — are Section 13.2).

**The under-strength waiver.** A low-rate E- or D-Rank contract that has sat undersubscribed may post under a signed under-strength waiver at an absolute floor of **five** — no support element, everyone doubling roles, every signature acknowledging the risk. Cheap jobs sit, and thin crews take them; the waiver tier is where the trade's casualties concentrate, and everyone signing one knows it. Hunter insurance is void from the moment a hunter crosses a threshold alone. Solo entry of a populated Gate remains *legal* at Ranks E-Rank–D-Rank — as a matter of law, the government does not stop anyone from dying — and is understood by the entire trade as desperation or a death wish; the Lone Clear title (Section 16) is legendary precisely because its feat is one the working world considers suicide. The solo format that actually exists is not a Gate at all: it is the instant dungeon (Section 17), and it belongs to exactly one person on Earth.

### The high-Rank sponsor exception (Profile 1.15)

A **confirmed** low-Rank contract may be posted to, and bid by, a party of **any size** — including two — when the party carries a licence far enough above the Gate to make the headcount irrelevant:

| Gate assessment | Sponsor requirement | Minimum party size |
|---|---|---|
| **Confirmed E-Rank** | at least one **C-Rank or higher** licensed member | none |
| **Confirmed D-Rank** | at least one **B-Rank or higher** licensed member | none |

- **Confirmed assessments only.** The exception reads the assessment's confidence (Section 9.5), not its posted number. An **unconfirmed** Gate keeps the ordinary floors — 8, or 5 under the under-strength waiver — and no board accepts a small bid on an unconfirmed posting or on anything assessed D-Rank or above. This is the whole safety of the rule: a sponsored pair can never be surprised by a true Rank two bands above them, because the assessment they bid on was already settled.
- **A sponsored posting is sanctioned, so it is insured.** The sponsor's licence is what makes the clear legal to staff at that size, and hunter insurance applies to every member exactly as on any full-floor contract. The solo-entry void above is unchanged and still applies to anyone crossing a threshold outside a sanctioned posting.
- **It changes no legal minimum.** E-Rank–D-Rank already require no combat-rated minimum (Section 13.3); this clause moves the *board's* floor, not the law's.
- **Ordinary terms otherwise.** Standard party contract terms, declaration at exit, liability waivers, and beneficiary rules apply unchanged (Section 13.2). The sponsor holds no automatic leader's share; the split is whatever the contract says.
- **The trade's opinion is its own.** Boards post these; veterans still read a two-person clear as thin, and a sponsor who loses a low-Rank member on one answers for it socially long before anyone answers for it legally.

## 9.5 Confidence and the True Rank

An assessed Rank carries a **confidence**:

- **Confirmed** — established by an instrumented survey. The survey drone or licensed surveyor has read the interior; the Rank and archetype (Section 10) are known before entry.
- **Unconfirmed** — a remote reading only (mana-flux magnitude read from outside). The Rank is a best estimate and the archetype is unknown.

A **confirmed** Gate is entered at its stated Rank. An **unconfirmed** Gate resolves its true Rank on the **first entry**, on a d100:

| d100 | True Rank |
|---|---|
| 01–15 | One Rank **lower** than assessed |
| 16–70 | **As assessed** |
| 71–92 | One Rank **higher** than assessed |
| 93–00 | **Anomaly** — roll on the anomaly table (Section 9.6) |

The Bearer's Perception unlocks (Section 4.4: **Rank-Sight** at 30, **Deep Sight** at 50) convert an unconfirmed reading to confirmed by capability, within their band range, and so bypass this roll.

**The ladder clamps at both ends.** The true-Rank roll can point past the ends of the E-Rank–S-Rank ladder; when it does, it resolves to the nearest real Rank rather than an impossible one:

- A result **below E** (a "one Rank lower" on an assessed-E-Rank Gate) resolves as **E** — there is no sub-E-Rank Gate; the remote reading was merely generous, and the interior is a true E.
- A result **above S** (a "one Rank higher" on an assessed-S-Rank Gate) resolves as an **S-Rank anomaly**: treat that 71–92 outcome as though it had rolled 93–00 and roll on the anomaly table (Section 9.6). There is no supra-S-Rank, so the excess pressure surfaces as an anomaly instead.

## 9.6 The Anomaly Table

A 93–00 on the true-Rank roll is an **anomaly**. Roll again on a d100:

| d100 | Anomaly |
|---|---|
| 01–50 | **Population one Rank above** the assessment (Rank as assessed, but populated as the next Rank up). |
| 51–80 | **Red gate** — the Gate seals on entry and cannot be exited until its boss dies; there is no retreat. |
| 81–95 | **Archetype twist doubled** — the interior archetype's mechanical twist (Section 10) applies at double effect. |
| 96–00 | **Dungeon-break-in-progress on arrival** — the Gate is already breaking (Section 9.7); its population is pouring out as the party arrives. |

## 9.7 Population

**A Gate is populated by default. Emptiness is an authored exception carrying an in-world cause — and in Gatefall, an empty-looking dungeon is itself a warning sign.**

Every Gate of Rank **G** is populated on this formula:

```text
3d6 common beasts (Rank G)
+ 1d2 elites (Rank G, ×2 Rank Health)
+ 1 boss (Rank G, ×4 Rank Health)
```

- **Common beasts** have plain Rank-G Rank Health (Section 6.1) and award Rank-G kill XP (Section 3.3).
- **Elites** carry **×2** Rank Health and award **×2** kill XP.
- The **boss** carries **×4** Rank Health, awards **×4** kill XP, and deals damage at **its own Rank's baseline** like every other creature of its Rank (Section 6.2) — a Rank is an honest statement of what hits you; a D-Rank Gate's boss hits like a D. Killing the boss **clears the Gate** — it collapses the instance and awards the Gate-clear milestone XP (Section 3.4).

**A boss fights with a signature.** A boss is never a bigger common. At instantiation it carries one authored **signature method**, consistent with its form and the Gate's archetype — a sweeping tail that threatens everything in its arc, a breath that fills a corridor, a burrowing charge, a coil-and-drown — capable of endangering **several hunters in a single exchange**. Each endangered hunter resolves against it separately (own roll, own damage at the boss's Rank); the signature multiplies *who is in danger*, never the per-hit number. And a boss is played with the cunning of an apex thing on its own ground: it ambushes, uses terrain, and picks targets — the mender first, the wounded first — rather than trading blows with whoever stands closest. Its menace is reach, endurance, intent, and the fact that nothing closes the Gate but its death; Rank honesty holds at every point of contact.

For loot provenance, instantiation also records the boss's exact fictional form plus two normalized facets. These classify authored facts; they are **not rolls** and do not replace the creature's description or signature:

| Body family | Covers | Boss-Imprint stat resonance |
|---|---|---|
| **Brute** | massive, load-bearing, crushing forms | +1 further Strength |
| **Predator** | fast hunters, pouncers, stalking quadrupeds | +1 further Agility |
| **Carapaced** | plated, shelled, stone-skinned forms | +1 further Vitality |
| **Winged** | flying, gliding, aerial forms | +1 further Perception |
| **Serpentine** | coiling, swimming, many-jointed forms | +1 further Agility |
| **Arcane** | caster-like, crystalline, incorporeal, or otherwise mana-dominant forms | +1 further Intelligence |

| Signature mode | Covers |
|---|---|
| **Impact** | slam, charge, quake, knockdown, crushing force |
| **Edge** | claw, bite, horn, blade, tearing or puncture |
| **Projection** | breath, bolt, spit, beam, ranged burst |
| **Affliction** | venom, disease, drain, corrupting contact |
| **Mobility** | pounce, dive, teleport, burrow, impossible speed |
| **Control** | grapple, web, coil, fear, restraint, forced position |
| **Guard** | shell, barrier, parry, reactive armor |
| **Renewal** | regeneration, lifedrain, repair, rebirth |

Use the single body family and signature mode most responsible for how the boss actually threatens the party. A hybrid still receives one of each, fixed before combat resolution and never selected after seeing its loot.

An empty or under-populated interior is never a lucky break; it is an authored signal that something has already emptied the Gate — a break in progress, a prior party wiped, or a worse thing feeding. The Runtime treats emptiness as a clue, not an absence.

**The clear window.** Killing the boss does not snuff the instance around the victors — it begins the collapse. From the moment of the boss's death the interior holds stable for **two hours**: the window in which a party loots the dead (Section 11), treats its wounded, and walks out the way it came. Section 13.2's loot-declared-at-exit procedure presumes this window. When it ends, the mouth closes and the interior ceases to exist; anyone still inside is lost with it, and no one has ever come back. The window is two hours at every Rank. Ordinary hunters work it by watch and hard-learned habit; the System, which holds Gate state (Section 14.4), surfaces the countdown to its Bearer. A hunter may also exit a standing, uncleared Gate through its mouth at any time — the threshold bars the unawakened inward and beasts outward (Section 9.8), never the awakened out — except inside a red gate (Section 9.6), which seals until the boss dies.

## 9.8 Dungeon Breaks

While a Gate stands, its barrier contains what lives inside: beasts can no more pass the threshold outward than the unawakened can pass it inward. Only a break dissolves that barrier.

If a Gate's break timer (Section 9.3) expires before the Gate is cleared, the Gate **breaks**: its barrier fails and its **remaining population** — every monster not yet killed, boss included — pours out into the surrounding area, where it fights with none of the containment a sealed instance provides. A break is the disaster the whole regulatory apparatus exists to prevent.

**Hunters inside at the break are expelled with everything else.** The failing barrier holds nothing back, beast or hunter: a crew still inside when the timer lapses lands at the Gate site — alive if they were alive inside, wounds and all — amid the entire remaining population, in the open, with no containment and the city behind them. Ejection is survivable in principle; what follows usually is not, because the crew now stands at the center of the break it failed to prevent.

**A break spends the Gate.** The release is one-time: the barrier's failure empties the interior, and the mouth collapses once nothing remains for it to hold. A broken Gate leaves no standing portal, no instance to clear, and nothing to close — what it leaves is its released population loose in the world (the Jiu Valley Exclusion is what that population does afterward, not an open wound still feeding).

Response follows a fixed escalation order by jurisdiction:

| Jurisdiction | Response order |
|---|---|
| **Chicago** | BGM **emergency contract** issued → **nearest guild strike team** dispatched under it. |
| **Prague** | **CGA** mobilizes → **Karlov Guild** or the **nearest international branch** dispatched. |

The remaining-population rule means a Gate broken early (few kills made) is far worse than one broken after a party has fought most of the way through — what pours out is exactly what was left inside.

## 9.9 Worked Example — An Unconfirmed D Reads Worse

A Red Line contract posts an **unconfirmed D-Rank Gate**. Because it is assessed D, no legal minimum applies (Section 9.4) and a small crew takes it.

1. **Confidence → true-Rank roll.** Unconfirmed, so the true Rank resolves on first entry (Section 9.5). The d100 comes up **84** (71–92): **one Rank higher**. The Gate is truly **C**, not D — and a C-Rank Gate legally requires four licensed hunters. The crew is already in an under-strength, illegal entry without knowing it.
2. **Population.** At C-Rank the formula (Section 9.7) rolls **3d6 = 11 common C-Rank beasts, 1d2 = 2 C-Rank elites, 1 C-Rank boss** (×4 Rank Health).
3. **Archetype.** Unknown on entry because the Gate was unconfirmed (Section 10); it reveals as **Crypt** (d8 = 1) — darkness, so Perception checks to avoid ambush.
4. **Clear.** The crew fights through and kills the boss; the two-hour clear window (Section 9.7) opens, and they loot and walk out well inside it. Kill XP and the C-Rank Gate milestone (320 XP, Section 3.4) settle on the boss kill.
5. **Loot roll.** Eleven C-Rank crystals drop (one per beast, Section 11); the two elites and the boss each drop a C-Rank core (three cores). The boss-drop d100 (Section 11) comes up **52** (41–65): a **rune** teaching one authored skill.
6. **Sale.** At licensed market prices (Section 12): 11 C-Rank crystals × **$2,500 = $27,500**; 3 C-Rank cores at ≈2.5× the C-Rank crystal price (**$6,250** each) = **$18,750**. The clear grosses **≈ $46,250** in sellable crystal and core, plus the rune, which the Bearer keeps to learn a skill rather than sell.

Every step above is resolved from the tables in Sections 9, 11, and 12 — the Runtime took the Gate from posting to sold loot without inventing a single number, and the "easy D" that was really a C is exactly the kind of hazard the confidence rule exists to model.

---

# 10. Dungeon Archetypes

Every Gate has an **archetype** — the character of its interior — fixed when the Gate is instantiated and rolled on a d8. Each archetype carries **one mechanical twist**, stated below in a single rule.

**The interior is another world.** A Gate is a mouth onto somewhere *else* — a slice of the beasts' own world held in the void between it and ours — and its interior **never resembles, continues, or copies the place where the Gate stands.** A Gate in a metro tunnel may open onto a sun-bleached bone flat under three moons; a Gate in a cathedral onto a drowned forest. The interior keeps its own light, its own weather, its own horizon that goes nowhere; the mouth is the only way home. The archetype names below are the trade's shorthand — a domestication of terrains that have no Earthly names: the "Flooded Mine" archetype is no mine of ours, its timbers cut from no tree that grows here, its water fed by no rain we know. A Runtime narrating an interior draws it **alien first** — the archetype sets the mechanics and the broad character; the flesh on it belongs to the monsters' world, never to the neighborhood outside. An interior that *does* mirror its surroundings is not an aesthetic choice: it is anomaly-Rank wrongness, treated exactly like an empty interior (Section 9.7) — a clue, and a reason to leave.

| d8 | Archetype | Mechanical twist |
|---|---|---|
| 1 | **Crypt** | Darkness fills the interior: entering combat requires a Perception check to avoid being ambushed, and unlit fighting imposes −1 modifier step on sight-dependent actions. |
| 2 | **Hive** | Swarming brood: the common-beast count is **doubled** and **no elite is present** (the two 1d2 elite slots are replaced by additional common beasts). |
| 3 | **Flooded Mine** | Standing water throughout: Strength and Agility actions take −1 modifier step, and going under imposes a drowning risk resolved as an environmental hazard. |
| 4 | **Overgrown Temple** | A lootable shrine stands in the interior: clearing the Gate grants a **bonus loot roll** (Section 11), but the shrine is guarded by an extra elite. |
| 5 | **Beast Den** | A second **boss-Rank alpha** roams alongside the boss — two boss-Rank threats (×4 Rank Health) instead of one. |
| 6 | **Shattered City** | Broken verticality: falls and drops deal **Rank damage** (a standard-hit baseline at the faller's Rank, Section 6.2), and ledges force Agility checks. |
| 7 | **Ashfield** | Lingering burn hangs in the air: every hour inside forces a Vitality check against Rank-appropriate burn hazard (Section 6.3). |
| 8 | **Frozen Gallery** | Deep cold saturates the instance: **Mana recovery is halved** inside (Section 5.2), pressuring any Mana-dependent Bearer to clear quickly. |

**When the archetype is known.** The archetype is set at Gate instantiation. On a **confirmed** Gate the surveyors have seen the interior, so the archetype is **named in the assignment** alongside the confirmed Rank. On an **unconfirmed** Gate the archetype is **unknown** until first entry, and it reveals as the party crosses the threshold — the same entry that resolves the true Rank (Section 9.5).

An **archetype twist doubled** anomaly (Section 9.6, 81–95) applies that single twist at double effect: doubled darkness penalty, doubled swarm, twice the hazard rate, and so on, as fits the archetype.

---

# 11. Loot

Loot is the material output of a cleared Gate. Crystals and cores drop deterministically; the boss drop is rolled. Nothing here is estimated — every drop is read off the rules below.

## 11.1 Crystals and Cores

- **Mana crystals (beast-drop).** Every beast killed drops **one crystal**, of the **beast's own Rank**. An E-Rank beast drops an E-Rank crystal; a C-Rank beast drops a C-Rank crystal. Crystals are the world's base currency good (Section 12).
- **Beast cores.** **Elites and bosses always drop one core** each, of their Rank. A core is worth roughly **2.5× the same-Rank crystal** (Section 12) and is the raw material for gear and consumables.

### Mined crystal deposits

Beast drops are not the only crystals a Gate yields — most of a clear's crystal *tonnage* is **mined from the interior itself.** A Gate's structure carries **mana-crystal deposits**: veins and clusters seamed through its walls, floor, and the strange geology of the dimension it opens onto (Section 10). These are the deposits the trade's **support element** (Section 9.4) exists to strip, and the reason a clear fields miners alongside its strikers. Because mining is not fighting, the miners may be **any rank** — an E-Rank works a B-Rank Gate's veins under the strike team's protection (Section 9.4) — which is how the bulk of the world's low-rank hunters earn.

- **Rank and value.** Deposits are of the **Gate's Rank**; a mined crystal is worth exactly a beast-drop crystal of the same Rank (Section 12). Mining yields crystals only — never cores (cores come from creatures) and never gear.
- **Yield.** A cleared Gate holds roughly **`3d6 × (Rank multiplier)` Rank-G crystals** in minable deposits — where the Rank multiplier is 1 at E and rises with Rank the way crystal *value* does (E ×1, D ×2, C ×4, B ×8, A ×16, S ×32), so a Gate's minable crystal wealth scales sharply with its danger. The deposits are the bulk of a clear's take, which is why Rank determines a contract's pay far more than its kill count does.
- **Extraction costs time and hands.** Deposits are not picked up like a drop; they are **worked out** with effort during the **two-hour clear window** (Section 9.7) — or during the fight, by hunters not needed on the line. A short-handed crew (the waiver tier, Section 9.4) leaves crystal in the walls it has no time to cut before the window closes; a full crew with a dedicated support element strips a Gate near-clean. What is not extracted before the window closes is **lost with the collapsing interior** — a real tension between mining more and leaving alive.
- **Who profits.** Under a standard party contract (Section 13.2) mined crystals are declared at exit and pooled; a peer crew splits them like all loot, while a hired **support element takes the authored harvest share — 20% of the total clear, output-weighted (Section 13.2)** — and no cut of the cores in kind. For a **solo Bearer** in an instant dungeon (Section 17) or a lone clear, every deposit is his — one of the quiet reasons a Bearer's private clears are so lucrative.

The Bearer benefits from mining exactly as anyone does; nothing here is System-specific. It is ordinary hunter economics, finally stated: a Gate is not just a fight, it is a **mine with teeth.**

## 11.2 The Boss Drop

On the boss kill, in addition to its core, roll the **boss drop** on a d100. The drop's Rank is the **Gate's Rank** unless a Rank bump applies (Section 11.4).

| d100 | Boss drop |
|---|---|
| 01–40 | **Equipment** at the Gate Rank — roll its chassis on the table below (Section 11.5). |
| 41–65 | **Rune** — roll d8 on the Section 7.3 starting-skill table in listed order; it teaches that authored skill (Section 7.1). |
| 66–80 | **Potion cache** — 3 potions at the Gate Rank (Section 12.5). |
| 81–90 | **Instant-dungeon key** at the Gate Rank (Section 17, authored later). |
| 91–97 | **Skill book** — from the skill-book table (Section 11.3). |
| 98–00 | **Elixir** — a permanent +1 to one stat (max 3 lifetime per stat, Section 12.5). |

The **potion cache** tier follows the Gate Rank: Gate Rank **E-Rank–D-Rank → lesser** potions, **C-Rank–B-Rank → standard**, **A-Rank–S-Rank → greater** (the tiers priced in Section 12.5). Resolve its healing/mana mix with one real d4:

| d4 | Three-potion cache |
|---:|---|
| 1 | 3 healing potions |
| 2 | 2 healing potions · 1 mana potion |
| 3 | 1 healing potion · 2 mana potions |
| 4 | 3 mana potions |

For an **equipment** result, roll d20:

| d20 | Equipment chassis |
|---|---|
| 1–2 | Quickknife |
| 3–4 | Longsword |
| 5 | Greatarm |
| 6 | Reacharm |
| 7 | Longshot |
| 8 | Channeling Focus |
| 9 | Guard Shield |
| 10–14 | Armor piece: roll d5 for slot (head, torso, hands, legs, feet) and d5 for style (Bastion, Titan, Gale, Watcher, Arcanist). |
| 15 | Hunter's Band |
| 16 | Quickstep Charm |
| 17 | Heartward Sigil |
| 18 | Seer's Lens |
| 19 | Mindspun Loop |
| 20 | The player chooses any non-unique chassis in this table. |

Every roll is real under the resolution contract; a Runtime never chooses a favorable item except on the authored 20 result. The result receives the Gate Rank (or Section 11.4 bump), and its exact line is then derived from Section 11.5.

### 11.2.1 Boss Imprints

Every **equipment result produced by a boss** — the normal 01–40 result, an Overgrown Temple bonus roll that lands on equipment, or a Premium Armory Key's guaranteed equipment result — carries one **Boss Imprint**. Random-box gear, shop stock, commissioned gear, and ordinary market gear do not. The imprint is a non-unique source property: it never turns the item into a Section 11.6 named artifact.

The imprint is fixed from facts recorded under Section 9.7:

1. Record the exact boss form and signature method in provenance.
2. Apply the body family's **+1 further Stat point** from the Section 9.7 table. It sits outside the Rank budget like a Premium item's further points.
3. Apply the signature mode's **Echo** below.
4. Roll one real d6 finish and compose the visible item from the Gate-archetype palette, the boss's actual anatomy/material, and that finish.

| Signature mode | Echo — once per scene, within the net ±3 cap |
|---|---|
| **Impact** | +1 modifier step on one Strength action to break, shove, resist knockdown, or resist forced movement. |
| **Edge** | +1 modifier step on one close attack against an already-injured target. |
| **Projection** | +1 modifier step on one ranged attack or one defense against a ranged/area attack. |
| **Affliction** | +1 modifier step on one resistance attempt against poison, venom, disease, drain, or the source's authored affliction. |
| **Mobility** | +1 modifier step on one movement, pursuit, escape, or evasion action. |
| **Control** | +1 modifier step on one attempt to establish or break a grapple, restraint, fear hold, or forced position. |
| **Guard** | +1 modifier step on one physical defense action. |
| **Renewal** | +1 modifier step on one healing, stabilization, or recovery action affecting the wearer; the Echo alone restores no pool and clears no injury. |

A wearer may invoke **only one Boss-Imprint Echo per scene**, regardless of how many imprinted pieces are equipped. Passive body-family Stat resonances still apply normally. An Echo is an item capability, not a learned skill, costs no Mana, and does not gain mastery.

| d6 | Finish |
|---:|---|
| 1 | Seamless |
| 2 | Segmented |
| 3 | Etched |
| 4 | Crystalline |
| 5 | Bound or wrapped |
| 6 | Weathered |

| Gate archetype | Appearance palette |
|---|---|
| **Crypt** | soot-black metal, ossified-white accents, violet mana lines |
| **Hive** | lacquered chitin, amber resin, hexagonal seams |
| **Flooded Mine** | green-black alloy, pearl accents, blue current-lines |
| **Overgrown Temple** | root-grained metal, jade stone, gold sap-lines |
| **Beast Den** | horn, bone, rawhide, iron-red accents |
| **Shattered City** | fractured ceramic, black glass, bright metal joins |
| **Ashfield** | cinder steel, charred grips, ember-red fissures |
| **Frozen Gallery** | pale alloy, ice-blue crystal, frost tracery |

An authored nonstandard archetype supplies its own one-line palette before the equipment appearance is resolved. The appearance roll changes no Rank, condition, slot, or combat magnitude. A Boss Imprint creates no automatic price multiplier: the System shop uses its existing category repurchase rule, and the licensed market retains Section 12.8.1's ordinary ranked-gear anchor unless a specific negotiated transaction values the provenance differently. A complete imprinted line records `boss form · body family · signature method · signature mode · finish · appearance · provenance` in addition to Section 11.5's ordinary fields.

Worked item-line example (illustrative, not canon):

```text
Quickknife [C-Rank] · Agility +7 · Vitality +1 Boss Resonance · weapon power 7 · armed strike ×0.75
Boss Imprint — plated mandible queen · Carapaced · acid fan · Projection Echo
Finish/appearance — Etched · lacquered black chitin, amber resin seams, hooked mandible guard
Echo — once/scene, +1 step on one ranged attack or defense against a ranged/area attack
Provenance — C-Rank Hive boss equipment drop · Good
```

## 11.3 The Skill-Book Table

A **skill book** (boss drop 91–97) is rarer than a rune and teaches its skill at the **rank matching the Gate Rank it dropped from** — a book from a C-Rank Gate teaches its skill at C-Rank, above the E-Rank/D-Rank rune tier. Roll the taught skill on a d10:

| d10 | Skill book teaches |
|---|---|
| 1 | **Sprint** (Section 7.3) — movement. |
| 2 | **Dagger Mastery** (Section 7.3) — passive weapon mastery. |
| 3 | **Mend** (Section 7.3) — healing. |
| 4 | **Stone Skin** (Section 7.3) — sustained physical damage reduction. |
| 5 | **Flash Step** (Section 7.3) — mobility. |
| 6 | **Keen Sense** (Section 7.3) — detection. |
| 7 | **Silent Step** (Section 7.3) — stealth. |
| 8 | **Mana Bolt** (Section 7.3) — ranged attack. |
| 9 | **Rupture** — Mana **12**: a heavy strike at **×2.0 of its skill-rank baseline** (Sections 6.2 and 7.2); the die resolves whether it lands and its degree. |
| 10 | **Bulwark** — Mana **10**: **50% physical damage reduction** for one exchange; reductions multiply, never add (Section 7.3), so it never reaches immunity. |

Entries 1–8 are the eight starting skills of Section 7.3, taught here at the dropped Gate's Rank rather than at the E-Rank/D-Rank rune tier. **Rupture** and **Bulwark** (entries 9–10) are authored here and enter the ledger with their name, rank (the Gate Rank the book dropped from), Mana cost, and effect on the schedule of Section 7.2.

**Known-skill settlement for dropped runes and books.** A candidate teaches at the drop's Rank, never below the skill's native Rank. If the Bearer does not know it, settlement is ordinary. If the Bearer knows it at a lower Rank, consuming the item raises that skill to the candidate Rank while preserving mastery level and qualifying-scene progress. If the Bearer knows it at the same or a higher Rank, reroll on the originating d8/d10 table until the result is unknown or a genuine Rank upgrade. If no eligible result remains, the drop becomes a **Mastery Rune** or **Mastery Book** matching its original category; consuming it counts as one qualifying dangerous-scene contribution toward one chosen known skill's current mastery level, exactly as Section 12.5's Mastery Rune. This is duplicate protection, not player selection: every required reroll is real.

**Class-restricted skill books** exist only as **authored named items with provenance** — usable by no one but the holder of their class, and entering play solely where a file authors them, exactly as the named-uniques rule (Section 11.5) requires.

## 11.4 Red-Gate and Anomaly Rank Bump

**Red gates and anomaly Gates roll loot one Rank above the assessment.** A Gate that resolved to any anomaly (Section 9.6) — including a red gate — drops crystals, cores, and boss loot as if it were **one Rank higher** than the Rank it was assessed at. This is the reward for surviving the elevated danger an anomaly represents.

## 11.5 Equipment, Ranks, and Item Lines

Equipment is mechanically complete only when its line records **name · Rank · chassis · slot · stat bonus · weapon power/protection · combat effect · provenance · condition**. Boss-imprinted and Premium equipment additionally records its Section 11.2.1 imprint/appearance or Section 12.5 fabrication series. Rank **E-Rank–S-Rank** sets the magnitude; chassis determines where that magnitude goes. An equipped item applies its line to its wielder. A stored, carried, broken, or merely owned item does not. The Bearer receives both the stat and combat lines. An ordinary hunter has no five-stat sheet (Section 13.1), so the item grants weapon power, combat effects, and protection but does not create or alter Stats for that hunter.

**Stat budgets by Rank:**

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Weapon stat points | 2 | 4 | 7 | 11 | 16 | 22 |
| Weapon power | 2 | 4 | 7 | 11 | 16 | 22 |
| Armor-piece stat points | 1 | 2 | 3 | 5 | 7 | 10 |
| Accessory stat points | 1 | 2 | 4 | 6 | 9 | 12 |

**Weapon chassis.** “All” assigns the full weapon stat budget to one Stat. A split assigns the stated share, rounding the primary share up and giving the remainder to the secondary Stat. Every damaging weapon also carries its Rank's weapon power from the table; a Guard Shield carries no weapon power.

| Chassis | Slot | Stat line | Combat line |
|---|---|---|---|
| **Quickknife** (dagger/short blade) | main or off hand | all Agility | Armed strike ×0.75; may be dual-wielded. |
| **Longsword** (sword/axe/mace) | main hand | all Strength | Armed strike ×0.85. |
| **Greatarm** (greatsword/greataxe/maul) | both hands | 75% Strength, 25% Vitality | Armed strike ×1.0; two-handed. |
| **Reacharm** (spear/polearm) | both hands | 60% Perception, 40% Strength | Armed strike ×0.85; +1 circumstance step to hold distance against a closing foe, within the net ±3 cap. |
| **Longshot** (bow/crossbow) | both hands | 60% Perception, 40% Agility | Ranged armed strike ×0.75; requires ammunition but carries the weapon's mana. |
| **Channeling Focus** (wand/staff/orb) | main hand | all Intelligence | Adds its weapon power as **focus power** to Bearer damage/healing skill magnitude (Sections 6.2 and 7.2); it has no mundane strike upgrade. |
| **Guard Shield** | off hand | all Vitality | Grants the armor reduction of its Rank below. |

A ranked weapon never lends its owner the weapon's Rank. For the Bearer, its power adds to effective Strength and the chassis multiplier applies under Section 6.2. For a fixed-rank hunter, power adds to that hunter's Rank baseline. For an unawakened wielder, power adds to ordinary-adult Strength 10. Accuracy, defense, Health, and resistance remain the wielder's own. All ranked weapons are mana-bearing — forged from beast cores by artificers (Section 12.8) — and therefore wound monsters under `GTF-OVR-003`.

Worked example — an E-Rank Bearer with Strength 16 and a C-Rank Quickknife:

```text
(Strength 16 + C-Rank weapon power 7) × Quickknife 0.75 = 17.25
standard success → 17 final damage before target reduction
strong success   → 35
critical success → 69
```

The weapon's Agility bonus separately affects placement through Section 4.3. It does not grant C-Rank Health, C-Rank defense, automatic accuracy, or a C-Rank license.

The same C-Rank Quickknife in a fixed E-Rank hunter's hand deals `(E-Rank baseline 10 + power 7) × 0.75 = 12.75 → 13` on a standard success before reduction. In an unawakened adult's hand it uses the same numerical ordinary-adult Strength basis, so it also deals 13 if the d100 attack lands; the weapon supplies the mana edge that can wound a monster, but the wielder still attacks, evades, and survives as an ordinary human. By contrast, lending that wielder the old C-Rank baseline would have produced about 47 damage and silently granted most of a C-Rank's offense; Profile 1.4 explicitly forbids that substitution.

**Armor pieces.** Armor occupies one of five slots: **head · torso · hands · legs · feet**. Its style assigns the entire armor-piece stat budget: **Bastion → Vitality · Titan → Strength · Gale → Agility · Watcher → Perception · Arcanist → Intelligence**. Every style protects equally at the same Rank; the choice is which capability it reinforces.

| Armor/Shield Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Physical damage reduction per equipped piece | 3% | 5% | 8% | 12% | 17% | 23% |

Each piece and shield is a separate reduction and reductions multiply under Sections 6.2 and 7.3. Armor has no blanket protection against poison, mental effects, environmental hazards, or a named effect that says it bypasses armor.

**Accessories.** The Bearer has two accessory slots. Each accessory assigns the entire accessory budget to its named stat and has no second passive: **Hunter's Band → Strength · Quickstep Charm → Agility · Heartward Sigil → Vitality · Seer's Lens → Perception · Mindspun Loop → Intelligence**. Two copies may be equipped; both bonuses apply.

**Condition.** Excellent, Good, Worn, and Damaged equipment applies its complete line. Broken or Destroyed equipment applies none. Condition changes only through established fiction and resolved damage; this profile adds no durability-point subsystem.

**Named uniques** exist only as **authored items with provenance** — a specific weapon or artifact written into a world or campaign file with a recorded origin. A boss drop never generates a named unique at random; the boss-drop table yields ranked generic gear, and a named unique enters play only where a file authors it.

## 11.6 The Named Artifacts

A handful of legendary items are known to the trade by name — relics with a history, each one-of-a-kind, each carrying a property ordinary ranked gear does not. They are the prizes a campaign plants, not random drops: a named artifact enters play only where a file authors it doing so, and there is exactly one of each. The set below is the world's standing legends; a campaign may author more with the same shape (name · Rank · type · one named effect in the vocabulary of Section 6.2 · a recorded provenance).

| Artifact | Rank | Type | Named effect (equipped) | Provenance |
|---|---|---|---|---|
| **The Damen Vigil** | B-Rank | Tower shield | +1 modifier step on any defensive action taken to shield an ally or civilian (to the net ±3 cap, Section 4.3). | Carried by the hunter who held the line at the Damen Avenue Break (Chicago, 2016) until the strike teams came; dug from the rubble, never sold. |
| **Cicero's Quiet** | C-Rank | Dagger | The first strike of a combat, made unseen, adds **+0.5** to its skill multiplier (Section 6.2). | Pulled from the quarantined Cicero Scar by a cordon scavenger; it came out colder than it went in. |
| **The Libeň Needle** | D-Rank | Caster focus | Lowers the Mana cost of the wielder's ranged and caster skills by **2** (minimum 1). | Left on the desk of the analyst's trailer at the Libeň Scar — a working tool that proved to be more. |
| **Karlov's Warrant** | B-Rank | Sword (artificer-marked) | +1 modifier step on the **first exchange** of any combat — a blade balanced past any tolerance. | Forged and marked by a master of the Karlov house; a named artificer's work trades far above anchor (Section 12.8). |
| **The Broodmother's Fang** | C-Rank | Fang-spear | On a killing blow, restores Mana equal to **one E-Rank standard-hit baseline (10)**. | Cut from a C-Rank Gate brood-queen and set into a haft; it pays the wielder a little for feeding it. |
| **Jiu Ash** | A-Rank | Greatsword | A-Rank strikes **ignore one full Rank of the target's damage reduction** (reductions apply one Rank lower, Section 6.2). | Recovered at ruinous cost during a containment operation inside the Jiu Valley Exclusion — one of the few things ever carried out of that valley alive. |

Each inherits the matching Section 11.5 chassis and its Rank-scaled stat/combat line in addition to the one named effect: Damen Vigil → Guard Shield; Cicero's Quiet → Quickknife; Libeň Needle → Channeling Focus; Karlov's Warrant → Longsword; Broodmother's Fang → Reacharm; Jiu Ash → Greatarm. A named artifact is worth far past its Rank on any market and is never generated at random — finding one is an authored event.

---

# 12. Economy

Two currencies run in parallel and **never exchange**: ordinary money (USD in Chicago, CZK/EUR in Prague) and the System's **gold**, which exists only inside the System shop. Goods cross between them solely through the shop's buy/sell spread (Section 12.5).

## 12.1 Licensed Market Prices

The regulated market buys crystals and cores at posted rates. Prices are Chicago USD; Prague pays **≈ 70% of Chicago rates**, settled in CZK/EUR.

| Good | Licensed price (Chicago USD) |
|---|---|
| **E-Rank crystal** | $150 |
| **D-Rank crystal** | $600 |
| **C-Rank crystal** | $2,500 |
| **B-Rank crystal** | $11,000 |
| **A crystal** | $50,000 |
| **S-Rank crystal** | Auction-only (no posted price) |
| **Beast core** | ≈ **2.5×** the same-Rank crystal |

At 2.5× the crystal, cores derive to ≈ $375 (E-Rank), $1,500 (D-Rank), $6,250 (C-Rank), $27,500 (B-Rank), $125,000 (A-Rank); the multiplier is authoritative and the figures follow from it.

## 12.2 Black Market

An unlicensed buyer pays **+40%** over the licensed price but dealing there is a **felony** in both jurisdictions, carrying license revocation and prosecution risk. The premium is the price of anonymity — no sale record, no Rank audit, no questions about a Gate's legality.

## 12.3 Contract Payouts and Salaries

| Work | Pay (Chicago USD) |
|---|---|
| **E-Rank Gate freelance contract** | $2,000–5,000 (split by party contract, Section 13) |
| **D-Rank Gate freelance contract** | $8,000–15,000 (split by party contract) |
| **C-Rank Gate freelance contract** | $30,000–60,000 (split by party contract) |
| **B-Rank Gate freelance contract** | $130,000–240,000 (split by party contract) |
| **A-Rank Gate freelance contract** | Negotiated at **national-asset scale** (Section 9.4) — no posted band |
| **Guild-salaried B-Rank** | ≈ **$240,000 / year** |

Prague contract and salary rates run at **≈ 70% of Chicago**, paid in CZK/EUR.

## 12.4 Cost of Living

| Item | Chicago | Prague |
|---|---|---|
| **Shared apartment** | $1,400 / month | 18,000 CZK / month |

## 12.5 The System Shop

The shop is the Bearer's alone (Section 2). It trades in **gold**, buying crystals and selling consumables, equipment, runes, and keys. It is a **System interface, not a place** — the Bearer opens it with `/system shop` from anywhere, at any time, instantly; there is no storefront to travel to and no hours. A purchase deposits straight into his dimensional inventory (Section 12.9), and a sale is drawn from it, so trading never requires him to be anywhere or carry anything. **USD and gold do not exchange** — the Bearer converts loot to gold only by selling it to the shop, and spends gold only inside it.

**Stock unlock.** Equipment and keys are stocked at every Rank **at or below the Bearer's System Rank** (Section 6.6). An E-Rank Bearer sees E-Rank stock; reaching D-Rank adds D-Rank without removing E-Rank, through S-Rank at level 50. Consumables are always stocked. Skill runes appear when their native Rank is at or below the System Rank. Stock is fixed and unlimited; there is no refresh timer, random inventory, scarcity roll, or haggle.

The unlimited catalogue is separate from the rotating **Daily Premium** stock below.

**The shop buys crystals (gold):**

| Crystal | Shop buys for |
|---|---|
| E-Rank | 10 g |
| D-Rank | 40 g |
| C-Rank | 170 g |
| B-Rank | 750 g |
| A-Rank | 3,400 g |

**Equipment and key prices (gold):**

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Any weapon chassis | 100 g | 450 g | 2,000 g | 9,000 g | 40,000 g | 180,000 g |
| Any armor piece | 60 g | 270 g | 1,200 g | 5,400 g | 24,000 g | 108,000 g |
| Any accessory | 80 g | 360 g | 1,600 g | 7,200 g | 32,000 g | 144,000 g |
| Instant-dungeon key | 500 g | 2,250 g | 10,000 g | 45,000 g | 200,000 g | 900,000 g |

“Any weapon chassis” means the seven Section 11.5 lines; “any armor piece” means any combination of its five slots and five styles; “any accessory” means the five named stat accessories. The buyer chooses the exact stocked chassis. Purchased keys are fixed at the Rank bought — they do not rise with the Bearer later.

**Consumables and runes (gold):**

| Item | Price |
|---|---:|
| **Lesser healing potion** | 25 g |
| **Standard healing potion** | 90 g |
| **Greater healing potion** | 400 g |
| **Lesser mana potion** | 20 g |
| **Standard mana potion** | 75 g |
| **Greater mana potion** | 300 g |
| **Antidote** | 30 g |
| **Appraisal scroll** | 60 g |
| **Stabilization seal** | 150 g |
| **E-Rank skill rune** (choose an E-Rank skill from Section 7.3) | 1,000 g |
| **D-Rank skill rune** (choose a D-Rank skill from Section 7.3) | 4,500 g |
| **Elixir of a stat** (+1 base stat permanent; **max 3 lifetime per stat**) | 5,000 g |

**The no-exchange rule.** There is no gold-to-USD or USD-to-gold conversion at any rate. The only bridge between the two economies is the spread between what the shop pays for a crystal and what the same crystal fetches on the licensed market — the Bearer chooses, per crystal, whether it becomes cash or gold, and cannot move value back the other way.

**Consumable effects.** Healing and Mana potions scale with the drinker's own maximum pools, so Vitality and Intelligence remain causal. The stat elixir's effect is stated inline in the sell table above.

| Consumable | Effect |
|---|---|
| **Lesser healing potion** | Restores 25% of maximum Health, final amount rounded under Section 6.2. |
| **Standard healing potion** | Restores 50% of maximum Health, final amount rounded under Section 6.2. |
| **Greater healing potion** | Restores Health to full. |
| **Lesser mana potion** | Restores 25% of the drinker's maximum Mana (Section 5). |
| **Standard mana potion** | Restores 50% of the drinker's maximum Mana. |
| **Greater mana potion** | Restores Mana to full. |
| **Antidote** | Clears poisons and venoms of the drinker's Rank or below. |
| **Appraisal scroll** | Consumed to reveal one unidentified item's complete Section 11.5 line, regardless of Intelligence; it does not identify hidden history or an unauthored effect. |
| **Stabilization seal** | Applied to one Critical injury to suspend its untreated death risk for 24 hours; it restores no Health, clears no severity, and does not replace professional treatment. |

**Skill runes.** A purchased rune teaches the selected Section 7.3 skill at its native rank and is consumed on use, exactly as a dropped rune (Section 7.1). The shop will not sell a rune for a skill the Bearer already knows; mastery and higher-rank versions are earned through use or loot, never bought here.

**Resale.** The shop repurchases an intact equipment item from its own catalogue for **25% of the table price, rounded down**, regardless of where it came from. It repurchases an unused shop consumable, rune, or key for **50% of its listed price, rounded down**. Named artifacts, commissioned gear, broken gear, mundane possessions, cores, and story objects have no automatic shop price; the shop refuses them unless a later authored line says otherwise. Resale withdraws the item permanently and credits gold in the same transaction.

### Daily Premium Stock — System-Exclusive Rotation

At **06:00 local time every morning**, the shop replaces its Daily Premium tab with exactly **six offers: one Weapon, one Armor, one Accessory, one Consumable, one Rune, and one Key**. These are premium System models: they cannot drop from a Gate, be commissioned from an artificer, or appear as stock in any licensed or black-market store. The System shop is their only source.

**Rotation state and timing.**

- At 06:00 the Runtime makes the **twelve base real draws** below — five model-bag draws, one rune roll, one fabrication-series roll, and five independent Rank rolls — plus any explicitly required rune rerolls. It records the cycle date, fabrication series, all six complete offers, their prices, six purchased/unpurchased flags, each bag's remaining entries, and the previous draw for each bag-governed category as canonical Bearer state. A Runtime never selects the offers itself.
- Each offer has **quantity 1**. Buying it marks that category purchased and removes the row until the next rotation. Unbought offers expire at the next 06:00; they are not carried forward or discounted.
- A later level-up does not re-Rank the current cycle. If the System first attaches after 06:00, it generates the current cycle immediately using the Bearer's then-current System Rank as each Rank roll's floor; it does not reconstruct earlier cycles.
- Rotation occurs even while the Bearer sleeps or occupies a sealed instance. The System fires the Tier-1 line: `[SYSTEM] DAILY PREMIUM STOCK ROTATED — 6 offers available.`
- Once purchased, a premium item is ordinary transferable physical property under the withdrawn-goods rule below, but no world store stocks it and it has no anchored mundane-market price. An unused premium item may be sold back only to the System shop for **25% of its premium purchase price, rounded down**.

**Model bags — draw without replacement.** Weapon, Armor, Accessory, Consumable, and Key each maintain a separate bag containing every model in their tables below; Armor's bag contains the 25 exact slot/style pairs. At rotation, make one real uniform draw from each category's remaining entries and remove the drawn entry. When a bag is empty, refill it with the full model set. On the first draw after refill, temporarily exclude that category's immediately previous model; draw from the rest, then return the excluded model to the remaining bag. Thus every model appears once per bag before ordinary repetition, and no refill boundary repeats yesterday's exact model. Rank is not part of bag identity and continues to roll independently.

**Fabrication series — roll d8 once per rotation.** The one series applies visually to all six offers generated in that cycle, including consumable vessels, rune media, and key geometry. It changes no effect, Rank, price, quantity, resale value, or compatibility; withdrawn items retain their series appearance permanently.

| d8 | Series | Visual language |
|---:|---|---|
| 1 | **Obsidian** | matte black, violet mana lines, sharp facets |
| 2 | **Ivory** | pale ceramic, gold seams, smooth geometry |
| 3 | **Cobalt** | deep-blue alloy, silver tracery, angular construction |
| 4 | **Crimson** | dark-red enamel, black fittings, aggressive silhouettes |
| 5 | **Verdant** | green-bronze surfaces, amber light, organic curves |
| 6 | **Argent** | brushed silver, blue-white light, minimal ornament |
| 7 | **Umbral** | smoked glass, muted metal, drifting internal shadow |
| 8 | **Prismatic** | color-shifting surfaces and iridescent mana channels |

For each Rank-bearing offer — Weapon, Armor, Accessory, Rune, and Key — make an independent **d100 Rank roll** against the Bearer's System Rank at rotation:

| d100 | Offer Rank |
|---:|---|
| 01–50 | Bearer's System Rank |
| 51–80 | +1 Rank |
| 81–93 | +2 Ranks |
| 94–98 | +3 Ranks |
| 99 | +4 Ranks |
| 100 | +5 Ranks |

Cap every result at **S**. The rolled offer Rank determines that offer's Stats, power, protection, effect, and price; it does not change the Bearer's System Rank. Consumables are unranked and receive no Rank roll.

**Premium Weapon — draw from the seven-model Weapon bag.** Price: **2×** the offer-Rank weapon price.

| Bag entry | Offer | Premium line in addition to its normal Section 11.5 line |
|---|---|---|
| 1 | **Ghost Quickknife** | +2 further Agility; +1 step on the first attack made unseen in a combat. |
| 2 | **Execution Longsword** | +2 further Strength; armed strike multiplier +0.10. |
| 3 | **Colossus Greatarm** | +2 further Strength; armed strike multiplier +0.15. |
| 4 | **Horizon Reacharm** | +1 further Perception and +1 further Strength; its hold-distance step also applies to protecting one adjacent ally. |
| 5 | **Farline Longshot** | +1 further Perception and +1 further Agility; ignore one range-derived circumstance penalty step. |
| 6 | **Spellthread Focus** | +2 further Intelligence; reduce active-skill Mana costs by 1, minimum 1. |
| 7 | **Aegis Guard Shield** | +2 further Vitality; its own physical reduction is 5 percentage points higher. |

“Multiplier +0.10/+0.15” adds to the chassis multiplier before the result multiplier; it does not change the d100.

**Premium Armor — draw from the 25-pair Armor bag.** The pair order is the Section 11.2 slot-major cross-product: head/torso/hands/legs/feet, each paired in order with Bastion/Titan/Gale/Watcher/Arcanist. Price: **2×** the offer-Rank armor-piece price. The result is an **Adaptive** version of that piece: it grants **+2 further points to its style stat** and its own physical reduction is **3 percentage points higher**.

**Premium Accessory — draw from the five-model Accessory bag** in Section 11.2's accessory order. Price: **2×** the offer-Rank accessory price. The result is an **Ascendant** version granting **+3 further points** to its named stat.

**Premium Consumable — draw from the six-model Consumable bag.**

| Bag entry | Offer | Price | Effect |
|---|---|---:|---|
| 1 | **Restoration Draught** | 900 g | Restores Health and Mana to full; clears no injury severity. |
| 2 | **Sovereign Panacea** | 600 g | Clears one poison, venom, or disease regardless of Rank; does not reverse an authored permanent condition. |
| 3 | **Mender's Seal** | 1,200 g | Clears one Minor injury or reduces one Moderate injury to Minor; restores no Health. |
| 4 | **Ironblood Phial** | 750 g | Grants 30% physical damage reduction for one scene. |
| 5 | **Quicksilver Phial** | 750 g | Grants +1 modifier step on Agility-governed actions for one scene, within the net ±3 cap. |
| 6 | **Clarity Phial** | 750 g | Grants +1 modifier step on Intelligence- or Perception-governed appraisal and detection for one scene, within the net ±3 cap. |

**Premium Rune — roll d10** on Section 11.3's skill-book table. The candidate teaches at the current offer Rank, never below the skill's native E-Rank/D-Rank, and uses Section 11.3's known-skill settlement: an unknown skill or a genuine Rank upgrade is eligible; a same-or-lower duplicate rerolls. If no eligible result remains, the offer is a **Mastery Rune** instead: consuming it counts as one qualifying dangerous-scene contribution toward the chosen known skill's current mastery level (Section 7.4). Price by offer Rank:

| Rank | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Premium Rune | 2,500 g | 11,250 g | 50,000 g | 225,000 g | 1,000,000 g | 4,500,000 g |

**Premium Key — draw from the six-model Key bag.** Price: **2×** the offer-Rank instant-dungeon key price. The key otherwise opens a standard Section 17 instance and carries one exclusive loot modifier:

| Bag entry | Key model | Premium modifier |
|---|---|---|
| 1 | **Bounty Key** | The boss makes two independent boss-drop rolls; both drops settle. |
| 2 | **Crystal Key** | The instance's mined deposit roll is treated as 18 before the Rank multiplier. |
| 3 | **Core Key** | The boss drops one additional same-Rank core. |
| 4 | **Armory Key** | The boss drops one guaranteed equipment result in addition to its normal boss-drop roll; roll the equipment chassis normally. |
| 5 | **Runic Key** | The boss drops one guaranteed rune result in addition to its normal boss-drop roll; roll the taught skill normally. |
| 6 | **Alchemist Key** | The boss drops one guaranteed potion cache in addition to its normal boss-drop roll; tier it by Section 11.2. |

**Off-shop note — the gray sleep.** The wider world's restorative-alchemy market is separate from this Bearer-only shop (`240_RESOURCES.md`), but its one authored price anchors to the same scale: **arresting** chronic mana saturation — *the gray sleep* (Bible Section 5) — runs about a **greater healing potion's** worth of high-Rank restorative a month (≈400 g-equivalent shop-side; on the licensed medical market an **A crystal-scale sum** across a year — tens of thousands of USD, Section 12.1), while a **full reversal is an elixir-Rank intervention** priced accordingly, which is why only guilds and governments pay for a cure.

**Withdrawn goods are ordinary objects.** Once a consumable or item leaves the shop into the world it is an **ordinary physical object** — usable by anyone, transferable to anyone, and traceable to anyone who holds it. The shop's origin neither clings to it nor conceals it: a System-shop healing potion works in an ally's hand exactly as in the Bearer's, and the same potion turning up in a pawnshop, an evidence locker, or a rival's kit is a physical thing with no licensed provenance and no market record — an **exposure thread** (Section 19) leading back toward a Bearer the world cannot otherwise see.

## 12.6 Starting Funds by Background

A campaign sets the Bearer's opening money by background. Prague equivalents are the USD figure **×22** in CZK.

| Background | Chicago (USD) | Prague (CZK, ×22) |
|---|---|---|
| **Working poor** | $800 | 17,600 CZK |
| **Stable** | $4,000 | 88,000 CZK |
| **Guild-family** | $15,000 | 330,000 CZK |

## 12.7 Care Prices — Menders and Hospitals

Restorative care is priced off the same scale as the rest of the economy (licensed prices Section 12.1, cost of living Section 12.4):

- **A mender-for-hire session** — a private healing-touch mender engaged for a clear or an aftercare visit — runs about the **price of a same-Rank beast core** (Section 12.1): a C-Rank mender's session prices near a C-Rank core, which is why fielding one is a serious cost and why menders are rare enough to bid over (Bible Section 3).
- **A hospital week** — a week of professional inpatient care at a licensed facility — runs about a **month's local rent** (the shared-apartment figure, Section 12.4): ≈ **$1,400** in Chicago, ≈ **18,000 CZK** in Prague.

**Mender care is professional care.** A mender's healing-touch treatment counts as **professional (hospital-equivalent) care for the injury clock of Section 6.3**, halving an injury's recovery time at every tier exactly as hospital treatment does. This is separate from the **party-mender's one-tier post-fight conversion** (Section 13.5), which a mender grants their party automatically; a hired mender treating a wound outside a party clear applies the Section 6.3 halving instead. The two effects do not stack on the same injury beyond what each section states.

## 12.8 Commissioned Gear and the Artificers

Ranked gear is not mined out of Gates whole — it is **forged from what Gates yield**, and the forging is done by **artificers**: awakened whose signature ability (Section 13.6) works mana into matter, rare on the order of menders and paid on the same logic (Bible Sections 3–4). Licensed artificers are the enchanting industry's hands; the great ones are the trade's quiet celebrities, their waitlists a status symbol, and an artificer's mark on a blade is worth more than the steel.

**Commissioning is how a hunter turns his clears into his arsenal:**

- The commissioner **supplies the core** — the core's Rank sets the ceiling of the piece's Rank (Section 11.5's banding governs the result) — plus any beast materials (hide, fang, scale) the design calls for.
- The **forging fee** runs about the **market price of a same-Rank core** (Section 12.1): commissioning a C-Rank blade means a C-Rank core supplied plus ≈ $6,250 in fee. Turnaround is days at E-Rank–C-Rank.
- **B-Rank and above is guild- and state-contract work** — waitlisted, logged, and subject to the export controls of Bible Section 4; a freelancer commissioning at B+ attracts exactly the attention Section 19 describes.
- A commissioned piece is ordinary ranked gear under Section 11.5; **named work by a known artificer trades above every anchor** on the negotiated market, like all gear resale.

There is **no player crafting subsystem**: the Bearer commissions or buys like every other hunter — the forge is someone else's signature.

### 12.8.1 Licensed Resale of Ranked Gear

The licensed negotiated market values an ordinary finished ranked item at roughly its commissioning cost: **one same-Rank core plus a forging fee equal to the market price of a same-Rank core** (Section 12.8). Because a core is worth approximately **2.5×** the same-Rank crystal (Section 12.1), the authoritative settlement anchor is:

`ranked gear licensed anchor = 5 × the same-Rank crystal price`

| Item Rank | Chicago licensed settlement | Prague licensed settlement |
|---|---:|---:|
| **E-Rank** | ≈ **$750** | ≈ **11,550 CZK** |
| **D-Rank** | ≈ **$3,000** | ≈ **46,200 CZK** |
| **C-Rank** | ≈ **$12,500** | ≈ **192,500 CZK** |
| **B-Rank** | ≈ **$55,000** | ≈ **847,000 CZK** |
| **A-Rank** | ≈ **$250,000** | ≈ **3,850,000 CZK** |
| **S-Rank** | **Auction-only** | **Auction-only** |

The Prague figures apply the existing **70% regional market factor** (Sections 12.1 and 12.3) and the profile's **×22 USD/CZK convention** (Section 12.6). The table is the default total transaction value when no authored premium or exclusion below applies. The d100 never haggles around a missing range: a Runtime uses the anchor rather than inventing a discount, markup, or bid/ask spread (Sections 20.2–20.3).

- **One anchor for every ordinary chassis.** A weapon, one armor piece, and one accessory of the same Rank use the same licensed settlement anchor. The System shop's separate gold prices and chassis ratios (Section 12.5) do not price the mundane market and establish no gold-to-money exchange.
- **Functional condition.** Excellent, Good, Worn, and Damaged gear uses the complete Section 11.5 item line and therefore the same anchor. Broken or Destroyed gear has no functional ranked-gear settlement price; any salvage value requires later authoring and is never improvised or rolled.
- **Provenance is required.** The anchor applies to ordinary gear with licensed provenance — including a declared Gate drop or commissioned piece. Equipment originating in the System shop has no licensed provenance, receives no USD/CZK/EUR price under this subsection, and cannot use Section 12.2's `+40%` rule because there is no licensed price to modify. Such an item remains transferable physical property under Section 12.5, but this profile authors no mundane-currency sale for it; buying with gold and reselling for ordinary money is not an exchange path.
- **Named artificer work.** A known artificer's marked work trades above the generic same-Rank anchor, as Section 12.8 establishes, but has no universal multiplier. The exact offer must be authored for that transaction and is never rolled.
- **Named artifacts.** A Section 11.6 artifact is individually negotiated or auctioned above the generic same-Rank anchor. Its exact value must be authored for the artifact or transaction and is never generated from this table.

The black-market premium in Section 12.2 composes normally with an eligible licensed-provenance item's anchor. It does not create a price for excluded System-origin equipment, broken gear, or a named work whose exact value has not been authored.

## 12.9 The Dimensional Inventory

The Bearer's inventory is not a backpack — it is a **pocket dimension**, a private space only he can reach, and it is his alone (no other hunter on Earth has one; Section 14.1). Every item he owns lives there unless he has chosen to hold or wear it, and the difference between "stored" and "carried" is his to set at any instant.

**Equipment slots are canonical System state.** The Bearer has exactly nine: **main hand · off hand · head · torso · hands · legs · feet · accessory 1 · accessory 2**. A two-handed chassis occupies main and off hand together. One item cannot fill two unrelated slots, and a slot holds at most one item. Only slotted equipment applies its Section 11.5 line; “in hand” and “worn” are the fiction-facing forms of equipped.

- **Weightless and unencumbering.** Stored items impose no weight, bulk, or carrying limit. The Bearer never chooses what to leave behind for lack of hands; a full clear's loot, a spare weapon, a case of potions all sit in the pocket dimension at once, and he walks out unburdened.
- **Store and withdraw anywhere, instantly, as a free action.** He may send an item to the inventory or call one to his hand from anywhere — a street, a Gate interior, mid-sentence, mid-fight — with a thought. Drawing a blade from nothing to meet an attack is a legitimate action the die still resolves for its outcome, but the *summoning itself* costs no action and no Mana. This is a real tactical edge: he is never disarmed, never out of potions he owns, never caught with the wrong tool.
- **Equip and swap.** Outside an exchange, any number of slots may be rearranged instantly. During an exchange, the Bearer may change **one item** as a free System operation; putting away one weapon and calling another into the same slot is one change. A two-handed item changes both hand slots as one item. Changing armor under immediate attack does not erase an attack already resolved against the prior loadout. The equipment state used for a roll and its damage is the state established before that roll.
- **Private and secure.** What is in the pocket dimension cannot be seen, searched, stolen, or confiscated — it is not on his person to find. A licensed inspection, a mugging, a pat-down at a cordon reaches nothing. This is a standing advantage and a standing exposure risk (Section 19): an item summoned from empty air in front of witnesses is as much a giveaway as a status window, because no ordinary hunter can do it.
- **What it holds.** **Inanimate physical objects** — gear, weapons, armor, consumables, crystals, cores, runes, books, keys, ordinary possessions. It does **not** hold living things (no creature, no person, no plant kept alive), and it is not a bank: **USD/CZK is mundane wallet-and-account money, never a System good** (Section 15, the `/system inventory` panel). System **gold** is likewise not "in" the inventory — it is the shop's internal currency (Section 12.5), shown as a balance, spent only in-window.
- **Capacity.** No practical limit constrains a campaign — the pocket dimension holds what the Bearer puts in it. (There is no encumbrance subsystem to track; "he stored it" is the whole rule.)

The inventory is read live and shown by the `/system` window (Section 15); loot enters it on pickup, shop purchases deposit into it, and shop sales withdraw from it. The Bearer interacts with the world's economy exactly as Sections 11–12 describe — he simply never has to carry the goods to do it.

---

# 13. Parties and Other Hunters

Most Gates are cleared by parties, and most hunters in the world are ordinary licensed professionals — not Bearers. This section fixes how those hunters resolve mechanically and the standard terms under which a party runs a Gate.

## 13.1 NPC Hunters Resolve by Rank

Every NPC hunter is a fixed-rank engine character (Section 2). A hunter's **Rank** is its complete mechanical description: a licensed B-Rank acts on the B-Rank for Health and damage, and nothing further is authored. No NPC hunter carries a level, a Stat sheet, an XP total, or a Mana curve.

When neither side is the Bearer, compare their Ranks for the capability contribution: **+1 step per Rank the actor stands above the resistance, −1 per Rank below**, capped inside the engine's net ±3. When the Bearer acts or resists, use Section 4.3's relevant effective Stat against the other party's Rank-derived domain rating instead; never apply both systems to one action.

## 13.2 Standard Party Contract Terms

A freelance party runs on a written contract. The standard terms, absent a negotiated exception, are:

- **Split:** the party leader takes a **10% leader's share** off the top; the **remainder is split equally** among all members (leader included in the equal split of the remaining 90%).
- **Loot declared at exit:** all crystals, cores, and drops are **declared at the Gate exit** and pooled for the split. Undeclared loot taken inside is theft under the contract.
- **Liability waivers:** members sign a **liability waiver** — a Gate is lethal work, and the contract disclaims the party's and the poster's liability for injury or death inside.
- **Death of a member:** a dead member's share of the pooled loot passes to their **named beneficiary** — naming one is part of signing the contract, so no share is ever left unassigned. The dead hunter's own effects and license are handled by the beneficiary and the authorities, not folded into the party pool.
- **Death of the leader:** if the leader dies mid-clear, the **senior surviving license** — the highest-ranked survivor, longest-licensed breaking a tie — assumes the **leader's role and the 10% leader's share** for the remainder of the clear, so the party keeps a decision-maker and the split still resolves cleanly at exit.

### Support and harvest contracts

The split above governs a **peer combat crew**. A clear that fields a separate **support element** (miners, harvesters, porters — any rank, Section 9.4) pays them on a different, standard basis, because they take no combat risk on the line and are not partners in the clear:

- **The harvest share is 20% of the total declared pool.** The support crew collectively receives **20% of the value of the entire declared clear** — every mined and beast-drop crystal and every core, valued at licensed rates (Section 12.1). It is taken **off the top**; the remaining **80%** is the combat pool, divided among the strike element by the standard terms above (or, when a contractor posted the clear, by the contractor's terms after its cut).
- **Split among harvesters is output-weighted, not flat-equal.** Each support worker's cut of the 20% is **proportional to the crystal *they personally mined*** (declared at exit, Section 11.1). A harvester who cut 7 of the crew's 19 mined crystals takes 7/19 of the harvest share. This is the standard; a flat-equal harvest split is a negotiated exception, stated in the contract.
- **Support workers draw no cut of the cores or beast-drops in kind.** Their entire compensation is the harvest share (the 20%, a cash valuation); the physical cores, beast-drop crystals, and any boss drop belong to the combat pool. A harvester is paid *for the mining*, valued against the whole clear, and takes none of the trophies home.
- **Everything else in Section 13.2 applies** — loot declared at exit, liability waivers signed, a dead support worker's harvest share to a named beneficiary.

**Worked example (Cicero Scar, C-Rank — Gatefall: Pendragon).** A five-hunter support crew declares 19 mined C-Rank crystals at exit; the total clear (mined + beast-drop crystals + cores) values at **≈ $77,500** on the licensed market (Section 12.1). The harvest share is **20% = $15,500**, split by output. Alexander mined **7 of the 19** crystals, so his cut is `7/19 × $15,500 ≈ ` **$5,700**. The other 80% (≈ $62,000, plus the physical cores) is the combat pool, divided among the strike element and the posting contractor by their terms. Every figure resolves from Section 12.1 prices and this rule alone.

## 13.3 Legal Minimums

Party size is not only a tactical choice; regulation sets a **legal minimum** by Gate Rank (Section 9.4): none for E-Rank–D-Rank, four licensed for C-Rank, eight for B-Rank, sixteen plus an A-Rank hunter for A-Rank, and a national-asset operation for S-Rank. Entering below the minimum is an offense in both Chicago (BGM) and Prague (CGA) jurisdictions, independent of whether the clear succeeds.

## 13.4 The Witness Rule

The foundation of every party dispute is one fact: **inside an uncleared Gate there are no cameras and no instruments — only testimony.**

A sealed Gate interior admits no recording and no remote monitoring: mana flux blinds instruments, and nothing transmits out of a live instance. What happened inside is established solely by the **testimony** of those who walked out. This is the authored foundation on which betrayal, false report, and disputed-clear plots stand — the profile fixes the fact and adds no further subsystem. Who lived, who died, what dropped, and who struck whom inside an uncleared Gate is, mechanically and legally, whatever the survivors say it was until contradicted by evidence found outside.

## 13.5 Support Types and Party Roles

Party role composition is **descriptive, not a subsystem.** Signature abilities (Section 13.6) are as varied as the people who wake with them, so the trade files hunters by *what an ability does in a fight* using a loose, open vocabulary — **strikers** (melee damage), **casters / mages** (ranged mana — bolts, bursts, elements, area denial), **archers** (a signature that guides a shot), **wardens / tanks** (barrier and frontline), **menders** (healing-touch), **sensors** (detection and appraisal), **summoners / beast-tamers**, illusionists, and any number of others. **This is common shorthand, not a closed classification.** A hunter whose signature fits no board label is ordinary, not an error; most powers blur two or three of these at once, and new ones are named as they appear. Whatever the label, an NPC hunter is resolved the same way — **by Rank** (Section 13.1, Section 2), with no stat sheet, level, or Mana curve; the label is flavor and reach (Section 13.6), never a mechanic.

Because the labels are open, the **mechanics key to function, not to the word.** Only **three** effects are authored, and they attach to *what a signature does*, whatever the trade calls its owner:

- **The "mender" effects apply to any signature that restores Health by touch** — a healer, a life-drawing summoner, a laying-on-of-hands, anything whose function is closing wounds in the field. Such a hunter is a "mender" for these effects regardless of label.
- **The "warden" effect applies to any signature that raises a held barrier or physically holds a line** for the party — a wall, a shield-field, an immovable frontline. Such a hunter is a "warden" for that effect regardless of label.

The three authored effects, at exactly these magnitudes:

- **A mender's field-touch** restores Health equal to **one standard-hit baseline of the mender's Rank** (¼ of the mender's Rank health, Sections 6.1–6.2): a D-Rank mender's touch restores 25, a C-Rank mender's 62. A mender can channel **three field-touches per Gate clear**; a touch restores Health only — it does not change an injury's tier or its recovery clock (Sections 6.3, 12.7 govern those). A higher-Rank mender is simply a stronger healer; that is the whole skill model, per Section 13.1.
- **A party with a mender** additionally converts **one post-fight injury tier down, per member, per clear**, for injuries at the **mender's Rank or below**: a Minor injury disappears, a Moderate becomes a Minor, a Severe becomes a Moderate, a Critical becomes a Severe (Section 6.3). It is one tier, once per member, per Gate cleared.
- **A party with a warden** grants **+1 modifier step on the party's defensive actions taken in formation** (Section 4.3), composing into the net ±3 cap like any other step.

Healing-touch and barrier signatures are rare (Bible Section 3), which is exactly why a party that fields one is meaningfully safer and a party without one pays for the gap in Section 6.3 injuries. Nothing further is authored: **every other signature — striker, caster, archer, summoner, sensor, and all the rest — adds texture and reach, not a mechanic.** A caster's bolt, an archer's guided shot, and a swordsman's cut are all a standard hit at the hunter's Rank (Section 6.2); a summoner's called beast fights at the summoner's Rank; a sensor reads what the fiction says it reads. The signature decides the *method*; the Rank decides the *magnitude*. And **the Bearer in a party benefits from a mender or a warden exactly as any other member does** — the three effects are properties of the party, not of who is in it.

## 13.6 Signature Abilities

Most awakened manifest a **signature ability** at awakening (Bible Sections 2–3): one personal, permanent expression of their mana — a firelance, a stone hide, a ten-meter blink, a healing touch, a field-sense. For an NPC hunter the signature is a **descriptive fact, not a subsystem**: it is named in one sentence in the character's ledger entry, it determines the *method and reach* of what they do — a C-Rank caster's firelance is a C-Rank standard hit delivered at forty meters; a B-Rank warden's force-wall is Section 13.5's formation step made visible — and it never adds a magnitude beyond the character's Rank and the three Section 13.5 effects. **Every named NPC hunter introduced in play is given a signature ability in their ledger entry when they are recorded** — a crew of hunters should read like a crew of powers, not a crew of weapons.

Signatures are innate and singular: one per awakening, fixed for life, its expression growing only as its owner's measured rank allows. Runes and skill books (Section 11) add *learned* techniques on top — rare enough that a hunter with two tricks is notable and a hunter with three is a story. The Bearer is the sole exception to all of it: he manifested nothing at awakening — the notorious blank card of the weakest E-Rank — and everything he gains, the System governs (Section 7). In a world where every hunter is born as exactly one power, the man who can *accumulate* them is a walking impossibility, and hiding that is the whole game (Section 19).

---

# 14. The System's Behavioral Contract

The System is the Bearer's interface to his own growth and the world's danger. This section fixes what it is, what it will and will not say, and the exact shape of what it says — so a Runtime speaks with the System's voice from canonical state alone, never inventing a line.

## 14.1 The System Is Not a Persistent Entity

The System has continuity (one Bearer at a time), initiative (it issues the daily quest, opens penalty zones, offers the class quest), and a direction (it grows its Bearer). Those look entity-shaped. It is **not** a Persistent Entity and must not be modeled as one.

- Its **active state is Bearer state** — including level progression, equipment slots, gold, and the current Daily Premium cycle — held in the Bearer's `canonical_state` on the campaign character ledger, nowhere else.
- Its **world-line continuity is a rule of Gatefall** (Section 2): exactly one living Bearer per world-line, no successor while he lives, and **death is final** (Section 6.5) — the dead Bearer's System state transfers to no one. It has no aliases, lifecycle block, inventory, relationships, or separately addressable identity.
- Its **purpose is directional, not personal**: produce a stronger Bearer. It does not love, hate, bargain for its own survival, or value the present host above the world's danger to him.
- Its **outputs are world reactions.** They act on or address the Bearer; they never author his voluntary choices.

Structurally the question is closed: the Persistent Entity Type set is closed (`011` Section 4.2) and contains nothing the System fits, and Rules Section 14.3 forbids a World Rule Profile from touching Persistent Object structure. Gatefall could not make the System an entity even on its own authority. The testable property follows:

> **Given the same canonical Bearer state, the System renders the same thing.**

It has no freeform off-ledger reasoning. Its outputs come only from declared triggers, tracked state, and the rules in this profile.

## 14.2 Truthfulness — It Never Lies, But It May Withhold

**The System never asserts a falsehood, and never asserts a world-fact it does not know.** Truthfulness and omniscience are different properties, and the System is truthful *and* non-omniscient because its assertive domain is bounded:

- **About the Bearer it is authoritative and correct.** It is him, quantified — his level, XP, stats, pools, skills, and quests are not in doubt.
- **About the world it may point, never describe.** "An unregistered presence is near" is a pointer; "the C-Rank beside you is a disguised killer" is a description it never makes. Pointing leaks no secret; describing would bypass discovery.

**Silence is not a lie.** Withholding, cryptic phrasing, and `[HIDDEN] ???` are honest — they assert that a thing exists without asserting what it is. The System is **not an oracle**: it cannot be asked what the world is hiding, and it does not answer.

## 14.3 Trigger Tiers — What It Says Unprompted, and What Only on Request

The System never decides what is true. It may decide **when to say it**.

- **Tier 1 — Mandatory (unprompted; a pure function of state the System already holds).** Fires the instant the condition holds, with zero discretion:
  - Mana, Health, or XP changes → the matching compact line (Section 14.5);
  - an XP threshold is crossed → first settle every Section 3.2 reward immediately, then show the `LEVEL UP` block (worked example in Section 3.7); never render an acceptance prompt;
  - the daily quest is issued, completed, or failed → its block (Section 8.1, Section 15.7);
  - an accepted Urgent quest or attached Hidden quest completes, fails, expires, or reveals → its stored quest-state block (Section 8.4);
  - 06:00 local time arrives → the Daily Premium stock rotates and its compact line fires (Section 12.5);
  - the daily window lapses incomplete → the penalty warning, then the transfer notice (Section 15.7);
  - a title is earned → the `TITLE EARNED` block (Section 15.7);
  - a pool crosses a declared danger threshold (e.g., 0 Mana, Section 5.3) → a warning;
  - a creature of resolved Rank (Section 14.4) enters the Bearer's perception → its **designation color** renders inline, red and pulsing for a creature two or more Ranks above him — the System's only unprompted tactical warning (Section 14.6).
- **Tier 2 — Permitted (bounded discretion; a declared precondition must hold, the Runtime picks the beat).** Appraisal when an unidentified item or foe enters perception and Intelligence permits it (Section 4.4, Analyst); a Hidden pointer when every Section 8.4.3 precondition is recorded; an Urgent offer when every Section 8.4.2 precondition holds; a danger warning while the condition holds. The Runtime picks the moment inside the valid opportunity window; it never picks whether the precondition is met.
- **Tier 3 — Prohibited.** The System may never fire to supply an uncertain outcome, to describe a world-fact (Section 14.2), to author the Bearer's decision, or **with no declared precondition at all**.

**On request** is separate: the `/system` panels (Section 15) render on the Bearer's command at any time. They are read-only views, not announcements, and they never resolve an action.

## 14.4 The Information Boundary

The System knows, exactly: **Bearer state** (Sections 3–7, 12.5), **quest state** (including concealed fields the character-facing Hidden panel withholds under Section 8.4.3), **its current shop stock**, and **Gate state once resolved** (a Gate's true Rank after Section 9.5 settles it, its population, its break timer). It does **not** know NPC minds, hidden identities, the true Rank of an unconfirmed Gate before entry, or anything a die has not yet resolved.

It is **perceptible only to its Bearer** — always, without exception. It cannot be displayed, shared, demonstrated, or proven; to an onlooker, a Bearer reading a notification is a man who stopped walking and looked at nothing. **System-issued quests are Bearer-only and therefore unknown to the world** — no NPC, institution, or public holds a Knowledge State about one. The quest is secret; its footprint is not. If the daily quest puts the Bearer on a rooftop at dawn, the world sees a man on a rooftop at dawn.

## 14.5 Compact Inline Notifications (exact)

During prose, ordinary numeric changes render as compact single lines showing the change and the new standing — `before → current/maximum` (for XP, `current/next threshold`):

```text
XP: 40 → 90/300
Mana: 25 → 13/45
HP: 34 → 21/40
```

Render each changed quantity once per resolved action; if one action resolves several monsters, aggregate that action's change and notify once. The bracketed blocks (Section 8.1, Section 15) are reserved for messages that carry more than a number. This is the A10 notification contract, identical to Section 8.2 — the two must never diverge.

## 14.6 Threat-Color Legibility (Designation Colors)

The System colors every creature the Bearer perceives. A **designation color** compares the creature's true Rank with the Bearer's **System Rank** (Section 6.6), and it is the single tactical read the System volunteers unprompted. It is a progression warning, not a substitute for the Bearer's actual Stats or a promised combat outcome.

The creature's Rank relative to the Bearer's System Rank sets the color:

| Creature's Rank vs. the Bearer's System Rank | Designation color |
|---|---|
| Two or more bands **beneath** | **gray** |
| One band **beneath** | **white** |
| **Same** band | **yellow** |
| One band **above** | **orange** |
| Two or more bands **above** | **red** — *pulses* |

- **Red pulses; everything else is steady.** A **red** designation — a creature two or more Ranks above the Bearer — is the System's **only unprompted tactical warning** (Section 14.3, Tier 1): it pulses to mark a threat that can kill him outright. Gray, white, yellow, and orange render steady and volunteer nothing beyond the color itself.
- **Derived from true Rank; never wrong, never guessed.** The color follows the creature's **true Rank**, resolved per Section 9.5 and known to the System per the information boundary (Section 14.4). The System never mis-colors a creature even when its posted Rank is a mis-Rank — the colors are how the Bearer *experiences* the true-Rank resolution Section 9.5 performs on entry. Equally, the System colors nothing whose true Rank it does not yet hold: an unconfirmed Gate's population is **uncolored until first entry resolves it** (Section 9.5), because the System asserts no Rank it has not been given (Section 14.2). Coloring is a rendering of resolved knowledge, never a preview of it.
- **Bearer-only, always — an edge and an exposure.** Like every System output the coloring is perceptible to the Bearer alone (Section 14.4). Ordinary hunters see nothing; to a party, the Bearer is a man who glanced at a beast and knew, a beat early, exactly how much it outclassed him. That is a quiet informational edge — and a standing exposure risk (Section 19): a Bearer who backs off a beast his card says he should crush, or holds his ground against one his card says should rout him, is visibly acting on knowledge the world cannot account for.
- **Against System Rank, so the palette shifts with progression.** The comparison is not the Bearer's carded rank and does not calculate his chance to win. A specialized or poorly allocated build may overperform or underperform its color; Section 4.3 and the direct Stats settle the real contest.

**In prose play.** A creature's designation color is stated **inline on first perception** of that creature in a scene and is not repeated each exchange unless the Bearer's System Rank changes mid-scene and recolors it. It has no `/system` panel of its own.

## 14.7 The Onset Sequence

The System's **first contact** with a new Bearer is a fixed message sequence — the same four beats every time, rendered in the bracketed A10 style (Section 14.5, Section 15). This section authors only the **System's messages**; the in-world incident that precedes attachment is a campaign concern (Section 2) and is not authored here.

**Onset timing (owner ruling, 2026-07-24).** The incident is a campaign concern; its **pacing is not**. The System attaches within the campaign's opening arc and **no later than the resolution of the protagonist's first genuine fight** — the first scene in which he faces lethal, uncertain combat. The precipitating incident must still arise causally from the fiction in play — a brush with death is the classic crucible; what this ruling bounds is *when*, not *why*. A campaign that resolves its first real fight with the protagonist still bare of the System is out of law. This binds every Gatefall campaign, including any in progress at the time of the ruling.

1. **Attachment notice** — the initializing handshake and host designation, fired the instant the System attaches.
2. **Status-window grant** — the STATUS panel (Section 15.1) is granted and rendered once, opening at level 1 with the creation-array Stats and the Health/Mana maxima derived from its Vitality and Intelligence.
3. **First Daily Premium cycle** — initialize Section 12.5's five model bags, make its twelve base real draws (plus any required rune rerolls), and fire the rotation line; this is the current 06:00-to-06:00 cycle, not an extra cycle.
4. **First daily quest** — the standing daily quest (Section 8.1) issues at the **next 06:00 local** after attachment. It expires at the immediately following local midnight; later quests repeat on the same 06:00-to-00:00 calendar-day schedule.

The worked onset block:

```text
[SYSTEM] INITIALIZING…
[SYSTEM] HOST DESIGNATION ACCEPTED — you are the Bearer.
[SYSTEM] STATUS WINDOW GRANTED. Access via /system.

[SYSTEM] STATUS — <NAME>
Class: —  ·  Title: —
Level 1  ·  XP 0/100
Health <4×Vitality>/<same>  ·  Mana <2×Intelligence>/<same>  ·  Unspent points 0
Strength <n> · Agility <n> · Vitality <n> · Perception <n> · Intelligence <n>

[SYSTEM] DAILY PREMIUM STOCK ROTATED — 6 offers available.

— at the next 06:00 local —

[SYSTEM] QUEST ISSUED — DAILY TRAINING
Objectives: 100 push-ups 0/100 · 100 sit-ups 0/100 · 100 squats 0/100 · 10 km run 0/10
Rewards: Ability Points +3 · Status Recovery · Daily Random Box
Deadline: 00:00 local tonight.
Warning: incomplete at midnight transfers you to a penalty zone.
```

Every value is read from creation state (Sections 3–6): level 1, XP 0/100, `Health = 4 × effective Vitality`, and `Mana = 2 × effective Intelligence`. After this sequence the Bearer is an ordinary played character carrying the System, and all further output follows Section 14.3.

---

# 15. The `/system` Command

Gatefall declares **`/system`** as its diegetic command. Its panels are **read-only views of canonical Bearer state** (Section 14.1): nothing is editable through them, every value is read or derived from canonical state and never invented at render (Decision 051), and the same state renders the same panel from any Runtime. Inline compact notifications (Section 14.5) remain the in-play surface between panel calls.

**The panels render as framed System windows.** Each template below is normative — a Runtime fills the `<…>` slots from state and changes nothing else — but the *presentation* is a proper window, not a bare line list, rendered in a monospaced code block so it holds its shape. The house frame:

- A **box frame** in light box-drawing (`╔ ═ ╗ ║ ╚ ╝`, inner rules `╟ ─ ╢`) around every panel; the panel's title sits in the top border: `╔═ ◈ SYSTEM · STATUS ═…═╗`.
- **Pools render as bars** — a 20-cell meter, `█` filled proportional to `current/max` and `░` empty, with the numbers beside it: `HP  ████████████████░░░░  31/40`. XP uses the same bar against its next-level threshold.
- **Sections are separated by inner rules**; labels are left-aligned and values align in columns.
- The **numbers are the diegetic exception of Section 20.5** — the System speaks in figures to its Bearer by design, and only he sees this window.
- The Runtime **fits the frame width to the widest line** and pads the right border to align; the exact width is presentation, the structure and every value are canonical.

Bare **`/system`** always renders the **full window** — every section (identity, vitals, stats, quests, skills, titles, equipment, inventory, gold) inside one framed window (Section 15.1). Focused single-section views and the interactive shop/titles panels remain available as `/system <section>` (Section 15.2), but the default is the whole of the Bearer at once.

**One example Bearer runs through every base panel.** Call him **Ren** — an illustration only, not a canon character: a level-3, E-Rank Bearer with no class yet. His creation array was Strength 9 · Agility 11 · Vitality 10 · Perception 10 · Intelligence 10. Two immediate level-ups made the current base Stats Strength 11 · Agility 13 · Vitality 12 · Perception 12 · Intelligence 12; an equipped E-Rank Quickknife grants Agility +2 and weapon power 2, making effective Agility 15. He is at XP 150/300, Health 39/48, Mana 18/24, has 10 unspent level-up points, and holds the skills and inventory shown below. One completed daily has all three rewards pending separately.

## 15.1 `/system` — the Full System Window

Bare **`/system`** always renders the **entire System window**: identity, vitals, stats, active quests, known skills, earned titles, equipment, inventory, and gold — every section stacked inside one framed window, divided by labeled section rules. There is no partial default; the Bearer sees his whole state at once, the way the window hangs in his vision.

```text
╔═ ◈ SYSTEM — FULL STATUS ═════════════════════════════════════════════════╗
║  <NAME>                      Card <Rank> · System Rank <Rank>            ║
║  Level <L>                   Class <class or —>                          ║
║  XP <current>/<next>         Title <title or —>                          ║
╟─ VITALS ─────────────────────────────────────────────────────────────────╢
║  HP  <20-cell bar>  <current> / <maximum>                                ║
║  MP  <20-cell bar>  <current> / <maximum>                                ║
║  XP  <20-cell bar>  <current> / <next>                                   ║
╟─ STATS ──────────────────────────────────────────────────────────────────╢
║  Strength      <base> (+<gear>) = <effective>                            ║
║  Agility       <base> (+<gear>) = <effective>                            ║
║  Vitality      <base> (+<gear>) = <effective>                            ║
║  Perception    <base> (+<gear>) = <effective>                            ║
║  Intelligence  <base> (+<gear>) = <effective>                            ║
║  Unspent Points  ● <n>                                                   ║
║  Pending Rewards  <none or reward list>                                  ║
╟─ QUESTS ─────────────────────────────────────────────────────────────────╢
║  Non-Daily Slots <used>/<capacity>                                       ║
║  [<type>] <quest name> · <status/streak>                                 ║
║    <objective progress>                                                  ║
║    <objective progress or local deadline>                                ║
╟─ SKILLS ─────────────────────────────────────────────────────────────────╢
║  <name> [Rank] <★ mastery> · <MANA n or Passive> · <effect>              ║
║    Uses <n> · Progress <n>/3 or —                                        ║
╟─ TITLES · Equipped: <title or none> ─────────────────────────────────────╢
║  <★ equipped title or earned title · effect>                             ║
╟─ EQUIPMENT ──────────────────────────────────────────────────────────────╢
║  <slot>   <item name> [Rank]                                             ║
║           <bonuses · power/protection · effect · condition>              ║
║  Acc.1    <item or —>                                                    ║
║  Acc.2    <item or —>                                                    ║
║  Physical Reduction  <derived total>                                     ║
╟─ INVENTORY ──────────────────────────────────────────────────────────────╢
║  <one item name [Rank] per line>                                         ║
║           <stats/effect/condition on an indented continuation>           ║
╟─ SHOP ───────────────────────────────────────────────────────────────────╢
║  Gold <n> g · /system shop to trade                                      ║
║  Daily Premium <available>/6 · Rotates <deadline>                        ║
╚══════════════════════════════════════════════════════════════════════════╝
```

Ren, mid-run, carrying one completed daily's separate rewards:

```text
╔═ ◈ SYSTEM — FULL STATUS ═════════════════════════════════════════════════╗
║  REN                         Card E-Rank · System Rank E-Rank            ║
║  Level 3                     Class —                                     ║
║  XP 150/300                  Title Lone Clear                            ║
╟─ VITALS ─────────────────────────────────────────────────────────────────╢
║  HP  ████████████████░░░░  39 / 48                                       ║
║  MP  ███████████████░░░░░  18 / 24                                       ║
║  XP  ██████████░░░░░░░░░░  150 / 300                                     ║
╟─ STATS ──────────────────────────────────────────────────────────────────╢
║  Strength      11 (+0) = 11                                              ║
║  Agility       13 (+2) = 15                                              ║
║  Vitality      12 (+0) = 12                                              ║
║  Perception    12 (+0) = 12                                              ║
║  Intelligence  12 (+0) = 12                                              ║
║  Unspent Points  ● 10                                                    ║
║  Pending Rewards  AP +3 · Recovery · Random Box                          ║
╟─ QUESTS ─────────────────────────────────────────────────────────────────╢
║  Non-Daily Slots 1/1                                                     ║
║  [DAILY] Training · Streak 4                                             ║
║    Push-ups 40/100 · Sit-ups 100/100                                     ║
║    Squats 20/100 · Run 6/10 km                                           ║
║    Deadline 00:00 local                                                  ║
║  [URGENT] Cull the Red Line Nest · 3/4 · +40 XP                          ║
║    Deadline: crisis ends                                                 ║
╟─ SKILLS ─────────────────────────────────────────────────────────────────╢
║  Mana Bolt [E-Rank] ★☆☆☆☆ · MANA 5 · Rank Base 10 ×1.0                   ║
║    Uses 4 · Progress 2/3                                                 ║
║  Dagger Mastery [E-Rank] ★☆☆☆☆ · Passive · Quickknife +0.10              ║
║    Uses 11 · Progress 1/3                                                ║
║  Sprint [E-Rank] ★☆☆☆☆ · MANA 3 · +1 Step Movement                       ║
║    Uses 6 · Progress 2/3                                                 ║
║  Mend [E-Rank] ★☆☆☆☆ · MANA 5 · Rank Base 10 ×1.0                        ║
║    Uses 3 · Progress 2/3                                                 ║
╟─ TITLES · Equipped: Lone Clear ──────────────────────────────────────────╢
║  ★ Lone Clear · +1 Step While Alone in a Gate                            ║
║    Untouched · +1 Step Evasion on First Exchange                         ║
╟─ EQUIPMENT ──────────────────────────────────────────────────────────────╢
║  Main     Quickknife [E-Rank]                                            ║
║           Agility +2 · Power 2 · ×0.75                                   ║
║  Off      —                    Head     —                                ║
║  Torso    —                    Hands    —                                ║
║  Legs     —                    Feet     —                                ║
║  Acc.1    —                                                              ║
║  Acc.2    —                                                              ║
║  Physical Reduction  0%                                                  ║
╟─ INVENTORY ──────────────────────────────────────────────────────────────╢
║  License [E-Rank]                                                        ║
║  Lesser Healing Potion ×3                                                ║
║  Dungeon Key [E-Rank]                                                    ║
║  E-Rank Crystal ×8                                                       ║
║  E-Rank Core ×2                                                          ║
╟─ SHOP ───────────────────────────────────────────────────────────────────╢
║  Gold 340 g · /system shop to trade                                      ║
║  Daily Premium 6/6 · Rotates in 14h12m                                   ║
╚══════════════════════════════════════════════════════════════════════════╝
```

- **Bars** are 20-cell meters filled proportionally to `current/max` (Ren: HP approximately four-fifths, MP three-quarters, XP half).
- **Frame width is fixed:** every rendered row is exactly **76 monospace cells** wide, including its two edge characters; the interior is 74 cells. The Runtime pads short rows, never allows content past the right edge, and uses indented continuation rows rather than truncation. If a name or value still exceeds one row, it wraps beneath its own label at the same indentation.
- **Labels use title case and fixed abbreviations:** `Unspent Points`, `Pending Rewards`, `Physical Reduction`, `Acc.1`, `Acc.2`, and `Passive`. The same label is never shortened differently elsewhere in the window.
- **A skill row names its Mana cost in full: `MANA <n>`, never an `M<n>` abbreviation** (owner ruling, 2026-07-30, Section 20.3). A costless skill reads `Passive` in the same position. Mastery renders as the five-cell star string of Section 7.4 ahead of the cost, so a full skill row is `<name> [Rank] ★☆☆☆☆ · MANA <n> · <effect>` — or `<name> · Passive · <effect>` for a passive. The next indented row renders `Uses <n> · Progress <n>/3`; no-mastery milestone passives render `Progress —`.
- **Quest capacity and objectives are explicit.** `Non-Daily Slots <used>/<capacity>` is the first quest row. The quest name and status occupy the next row; objectives, progress, reward, and the local or causal deadline render beneath it with four-space indentation. Unrevealed Hidden quests are the sole exception: they render only `[HIDDEN] ???` until Section 8.4.3 reveals them.
- **Equipment and long inventory entries separate identity from mechanics.** The slot, item name, and `[Rank]` occupy the first row. Bonuses, power/protection, effects, and condition occupy one or more continuation rows aligned beneath the item name. This rule leaves room for prefixes, suffixes, and durability without widening the frame.
- Every **section** is read live from canonical state (Section 14.1) — quests from the quest log, skills from Section 7.2 ledger entries, titles from Section 16, equipment slots from Section 12.9, inventory from the campaign inventory ledger, and gold from the shop balance. Effective stats and physical reduction are derived from the equipped lines. Nothing is invented at render.
- **`Pending Rewards`** lists each unclaimed daily Ability Point reward, Status Recovery, and Daily Random Box separately (Section 3.9), and reads `none` when empty. Level-ups never appear here because they settle immediately.
- The window grows with the Bearer: an empty section still renders its header with `none` beneath it (a fresh Bearer shows `SKILLS — none`, `TITLES — none`), so the shape is constant and the Bearer always sees the whole of himself.
- **Numbers in the window are the diegetic exception of Section 20.5** — the System speaks in figures to its Bearer, and only he sees this window.

## 15.2 Focused Views and Interactive Panels

The full window is the default. A Bearer may still call a **single section** for a closer look or to act on it — `/system quests`, `/system skills`, `/system equipment`, `/system inventory`, `/system titles`, `/system log` — each rendering just that section in its own framed window with the same data. Three of these are **interactive**, not just views:

- **`/system shop`** (Section 12.5) — the trading window: gold balance; BUY tabs for Weapons, Armor, Accessories, Consumables, Runes, and Keys; a **Daily Premium** tab showing its cycle deadline and six quantity-one offers; and a SELL tab for crystals and eligible inventory. Each row renders name, Rank, slot, stat bonus/effect, price, and availability. Buying and selling happen here, in-window, never as an out-of-character question. The **no-exchange rule** (Section 12.5) holds: loot becomes gold only by selling it here, never back to USD.
- **`/system equipment`** — the nine-slot loadout from Section 12.9. Equipping, unequipping, and swapping happen here or directly by thought in the fiction; the panel always re-renders the five effective stats and total physical reduction after a change.
- **`/system titles`** — equipping is done here (one equipped at a time, Section 16).

A focused view never shows less truth than the full window; it is the same canonical read, framed alone.

## 15.3 Class Panels Attach Post-Class-Quest

Before the class quest (Section 18) the window's `Class` line reads `—` and no class section exists. On completing the class quest and choosing a class, a **class section** joins the full window and a focused command attaches — `/system shadows`, `/system arsenal`, `/system fragments`, `/system echoes`, or `/system rifts`. A Bearer has at most one class, so at most one class section; each is authored with its class in Section 18.


---

# 16. Titles

A **title** is a named commendation the System grants for a specific feat, carrying one passive. **One title is equipped at a time**; the equipped title's passive is active and every other earned title is dormant. Titles are permanent once earned; equipping is free and changed through `/system titles` (Section 15.6). Each is granted the instant its feat resolves, as a Tier-1 message (Section 15.7).

The 1.0 titles:

| Title | Earned by | Passive (while equipped) |
|---|---|---|
| **Lone Clear** | first Gate cleared solo — boss killed with no other hunter inside | +1 modifier step on all actions while no allied hunter shares the Gate |
| **Red Survivor** | survive and clear a red gate (sealed anomaly, Section 9.6) | the first injury you would take in any sealed instance each scene is reduced by one severity tier (Section 6.3) |
| **Untouched** | clear a Gate having taken zero damage | +1 modifier step on evasion in the first exchange of every combat |
| **Centurion** | 100 confirmed kills | +1 Mana recovered per common beast killed |
| **Break-Breaker** | be part of stopping a dungeon break (Section 9.8) before it clears the cordon | +1 modifier step on all actions defending a fixed position or civilians |

Every passive is stated in modifier-step or resource terms (Section 4.3, Section 5), so a Runtime applies it without a ruling. Only the equipped passive applies; a title's modifier step composes into the net ±3 cap (Section 4.3) like any other, and any reduction it grants composes multiplicatively (Section 7.3).

---

# 17. Instant Dungeons

An **instant-dungeon key** — a boss drop (Section 11.2, roll 81–90) or a shop purchase (Section 12.5) — opens a private instance on demand: combat and loot without a contract.

**Instant dungeons are the exception to Section 10's alien-interior law:** a System-made instance looks *made* — cut-stone geometry too regular to be natural, uniform sourceless light, corridors that answer to purpose rather than to any world's weather. Where a Gate's interior is a slice of the beasts' world, an instant dungeon is the System's architecture, and a Bearer learns to know the difference at a glance.

- **Rank.** A key's Rank is the Gate Rank it was rolled from or the explicit Rank bought/rolled in the shop. An “own-tier” key snapshots the Bearer's System Rank (Section 6.6) when created. The instance runs at the key's recorded Rank and never re-Ranks later.
- **Opening.** Using a key opens a sealed instance for the Bearer (he may bring a party, but the key is his). It runs **2 hours**, closing at the two-hour mark or on the boss kill, whichever comes first.
- **Population.** Populated by the standard Gate formula (Section 9.7) at the key's Rank G — `3d6` common beasts, `1d2` elites (×2 Rank Health), `1` boss (×4 Rank Health) — and it rolls an archetype on the d8 (Section 10) like any Gate.
- **Loot.** Drops per Section 11: one crystal per beast, a core from each elite and the boss, and the boss-drop d100. It is a **real clear** — kill XP (Section 3.3) and the Gate-clear milestone (Section 3.4) settle on the boss kill exactly as in a public Gate.
- **No timer, no break.** An instant dungeon runs no break countdown (Section 9.3): it is a closed instance keyed to the Bearer, not a breach into the world. An unopened key is inert and never breaks.
- **No BGM/CGA jurisdiction — legally unregulated space, and this profile says so.** An instant dungeon is not a licensed Gate: it posts no contract, requires no minimum party (Section 9.4), files no loot declaration (Section 13.2), and is invisible to the authorities, because only the Bearer's key opens it and only the Bearer perceives the System (Section 14.4). It is the one clearance the world cannot see, tax, or regulate — which is exactly its value and exactly its risk: a Bearer who dies in an instant dungeon (Section 6.5) dies unwitnessed, with no strike team that can be called.

---

# 18. The Class Quest and Hidden Classes

A **class** is the Bearer's unique power path — unique on Earth, held by no one else. It is earned once, through a trial, and it reshapes how he fights for the rest of the campaign.

## 18.1 Trigger

When the Bearer reaches **level 25**, the level-up that crosses into 25 also issues the **Class Quest** (a Tier-1 event, Section 14.3). It is offered once. It does not expire, but no second class is ever offered — a Bearer holds exactly one class for the campaign.

## 18.2 The Trial

The class quest is a **sealed instance, fully lethal, with no retreat**: the Bearer enters alone and cannot leave until he clears it or dies. It is **not a menu**. It is a gauntlet — waves and a final foe at the Bearer's System Rank (Section 6.6) — and the System tracks **how he fights** across five signals:

| Signal | What it measures |
|---|---|
| **Kill efficiency** | damage and kills per exchange and per Mana spent — economy of force |
| **Battlefield control** | managing many foes at once — grouping them, denying ground, holding the shape of the fight |
| **Weapon breadth** | variety of methods and weapons used to good effect, not one tactic replayed |
| **Endurance** | surviving sustained pressure at low resources — outlasting rather than out-bursting |
| **Positioning** | evasion and control of space — where he stands, what he avoids, how he moves |

## 18.3 The Offer

On survival, the System tallies the five signals and offers the classes matching the demonstrated style. The two highest-scoring signals surface their classes, and **at least two classes are always offered** — a tie or a broad performance widens the offer, and a lopsided one never narrows it below two. The signal-to-class map:

- **Kill efficiency → Devourer**
- **Battlefield control → Shadowbinder**
- **Weapon breadth → Soulforged Armory**
- **Endurance → Echo Knight**
- **Positioning → Riftwalker**

The Bearer chooses one. The choice is permanent; it attaches the class's `/system` panel (Section 15.8) and sets the STATUS `Class` line. Each class has a later **evolution quest** — an authored class-quest at **level 50** — that deepens it along its own line.

**Shared Rank Mana ladder.** Several classes spend Mana by a target's Rank on one ladder — **E 5 · D 10 · C 20 · B 40 · A 80**. Because maximum Mana derives from Intelligence (§5.1), class allocation now directly determines how often these effects can be used. A low-Intelligence build may qualify for a class yet lack the pool for its highest-Rank target until it invests.

## 18.4 Shadowbinder — offered for battlefield control

On defeating a foe, the Bearer may raise its shadow. Shadows come in **two classes**, and this is what lets a Shadowbinder end as a general, not a squad leader:

- **Elite shadows** are **named, individually tracked, and level up** — the lieutenants. Extraction is an **Intelligence-governed d100 attempt** costing Rank-ladder Mana (E 5 … A 80). Compare effective Intelligence against the corpse Rank's Section 4.3 domain rating; do not add a Rank-gap modifier. On success the foe rises as an elite retaining its Rank — Rank Health (Section 6.1), fixed-Rank damage (Section 6.2), and a name. **Elite cap = Intelligence ÷ 5** (Int 20 → 4 elites, Int 40 → 8). An elite advances after landing the killing blow in 10 distinct clears, capped at the Bearer's System Rank.
- **The horde** is the **massed, un-named rank-and-file** — not tracked one by one, carried as a **count and Rank** (e.g., "180 E · 44 D"). Ordinary defeated common beasts are **swept into the horde in bulk** at a flat **2 Mana each, no per-corpse roll** — the Bearer scoops the fallen as he passes. **Horde cap = Intelligence × 20** (Int 30 → 600), and the Legion evolution lifts it to **no practical cap — an army of thousands.**

**Commanding the horde (closed-form, never per-shadow):** committed to a fight, the horde resolves as **one action per exchange**. It **automatically overruns** trash threats at or below the horde's dominant Rank (they are swarmed under, no roll), and against elites and bosses it grants the Bearer's side **+1 modifier step per 100 shadows committed, to the net ±3 cap** (Section 4.3) — the weight of numbers. A hard fight inflicts **attrition**: on a poor exchange, or against a boss, the horde loses a die-scaled fraction of the committed shadows, replenished by extracting the newly slain. Storing/re-summoning elites is free/½-cost as before; the horde is always "on call" and costs nothing at rest.

- **Evolution quest hook — the Sovereign's Trial (level 50):** extract a **boss-Rank** elite to unlock **Legion** — the horde cap becomes effectively unbounded (thousands), elite cap rises to Intelligence ÷ 3, and the horde in formation grants **+1 modifier step to one coordinated allied action per exchange** on top of its mass bonus.

```text
[SYSTEM] SHADOWS — Elites <filled>/<cap>  ·  Horde <count>
<name> · <Rank> · <Field | Stored> · clears <n>/10 to next band
Horde: <count by Rank>   (cap = Intelligence × 20)
```

Example — a Shadowbinder at level 25, Intelligence 20 (elite cap 4, horde cap 400):

```text
[SYSTEM] SHADOWS — Elites 3/4  ·  Horde 224
Gravecut · D · Field · clears 7/10 to next band
Hollow · E · Stored · clears 2/10 to next band
Pale Warden · D · Field · clears 4/10 to next band
Horde: 180 E · 44 D   (cap 400)
```

## 18.5 Soulforged Armory — offered for weapon breadth

- **Core mechanic.** **Bind** the essence of a slain foe into a weapon; each bound weapon holds **one source-ability** of its source creature, usable while that weapon is wielded. The ability is stated in Section 6.2 terms — a skill multiplier, a modifier step, or a reduction.
- **Resource costs.** Binding consumes the foe's **core** (Section 11.1) plus the Rank-ladder Mana; the bound ability then costs its own Mana per use. Swapping the wielded weapon is free once per exchange.
- **Arsenal cap = level ÷ 5** (floor): level 25 holds 5 weapons, level 50 holds 10.
- **Growth path.** A bound ability rides the **weapon's Rank** (band); binding a higher-Rank essence of the same kind upgrades that slot. One source-ability per weapon — a second binding overwrites the first unless the class has evolved.
- **Evolution quest hook — the Forge Trial (level 50):** bind a **boss** essence to unlock **Living Edge** — one weapon may hold **two** source-abilities, and bound weapons self-repair between scenes.

```text
[SYSTEM] ARSENAL — <filled>/<cap>   (cap = level ÷ 5)
<weapon> [<Rank>] · <bound ability> · Mana <n> · from <source>
```

Example — a Soulforged Armory Bearer at level 25 (cap 5):

```text
[SYSTEM] ARSENAL — 3/5   (cap = level ÷ 5)
Emberfang dagger [D-Rank] · Searing Strike ×1.5 · Mana 8 · from a D-Rank fire-lizard
Tidespike [C-Rank] · Drowning Coil (target −1 modifier step) · Mana 10 · from a C-Rank serpent
Boneaxe [E-Rank] · Cleave ×1.25 · Mana 4 · from an E-Rank ogre-brute
```

## 18.6 Devourer — offered for kill efficiency

- **Core mechanic.** **Consume** a beast **core** to permanently steal a **fragment** of its power. Each fragment is one authored ability drawn from the source creature's signature.
- **Resource costs.** Consumption destroys the core and resolves a **Vitality-governed digestion** attempt on the d100; a failed digestion inflicts a **Moderate injury** (Section 6.3) and the core is spent regardless. A held fragment's active use costs Mana as stated below.
- **Fragment cap = 1 fragment per 5 levels** (floor): level 25 holds 5, level 50 holds 10.
- **Authored fragment kinds** (which one a core yields is fixed by its source creature's signature):
  - **Breath** — a ×2.0 skill-multiplier attack across all foes in reach; Mana 12.
  - **Stone-Hide** — 30% physical damage reduction while sustained; Mana 4 per exchange (composes multiplicatively, Section 7.3).
  - **Regeneration** — restore the D-Rank skill-rank baseline (25) at the end of each of the next 3 exchanges; Mana 10.
  - **Venom** — strikes inflict Rank-appropriate poison hazard (Section 6.3); passive on a chosen weapon.
  - **Wings** — flight for a scene (an off-die mobility unlock); Mana 8.
- **Growth path.** Fragments are permanent; consuming a higher-Rank core of the same signature upgrades that fragment's Rank.
- **Evolution quest hook — the Apex Trial (level 50):** consume a **boss** core to unlock **Apex Predator** — the fragment cap rises to 1 per 3 levels, and one fragment may be ascended to boss-Rank magnitude (its skill multiplier or reduction takes the next band up).

```text
[SYSTEM] FRAGMENTS — <filled>/<cap>   (cap = level ÷ 5)
<fragment> · <band> · <ability> · <Mana n | Passive> · from <source>
```

Example — a Devourer at level 25 (cap 5):

```text
[SYSTEM] FRAGMENTS — 3/5   (cap = level ÷ 5)
Breath · D · ×2.0 cone across foes in reach · Mana 12 · from a D salamander
Stone-Hide · C · 30% physical reduction sustained · Mana 4/exchange · from a C golem
Regeneration · D · 25 Health for 3 exchanges · Mana 10 · from a D troll
```

## 18.7 Echo Knight — offered for endurance

- **Core mechanic.** **Record** a combat **instant** — a single action resolved at **strong or critical** success — into an echo slot, holding **≤ 3 recorded instants**. **Deploy** an **echo**: a time-copy that replays the recorded instant's action.
- **Resource costs.** Recording is free, but only a strong or critical result may be captured (recording a fourth overwrites a chosen slot). **Deploying an echo costs 8 Mana**; the echo replays the recorded action at the **same skill multiplier**, but the die **re-resolves its degree** — an echo repeats the move, never guarantees the outcome. Up to 3 echoes may be active at once; an echo persists 3 exchanges or until a hit would injure it.
- **Growth path.** At authored thresholds a slot may capture a **critical** (not merely strong), the per-echo Mana cost falls, and echo durability rises.
- **Evolution quest hook — the Chorus Trial (level 50):** unlock a **4th slot** and **Simultaneity** — all recorded instants deploy together in one exchange for a single combined cost.

```text
[SYSTEM] ECHOES — <filled>/3 recorded · deploy Mana 8 each
Slot <n>: <action> · captured <degree> · ×<skill multiplier>
Active echoes: <n>/3
```

Example — an Echo Knight at level 25:

```text
[SYSTEM] ECHOES — 2/3 recorded · deploy Mana 8 each
Slot 1: Mana Bolt volley · captured critical · ×1.0
Slot 2: dagger riposte · captured strong · ×0.75
Active echoes: 0/3
```

## 18.8 Riftwalker — offered for positioning

- **Core mechanic — three abilities and an evolution:**
  - **Rift-step** — teleport to any point in **line of sight**; Mana 6, once per exchange. A true teleport, not a dash; it grants +1 modifier step to the immediate follow-up action.
  - **Micro-rift deflection** — a reaction opening a small rift to deflect or redirect an incoming attack; Mana 8, applying **50% damage reduction** to that hit (composes multiplicatively, Section 7.3) or turning a projectile aside.
  - **Pocket cache** — a personal dimensional pocket, separate from the shop-linked inventory, for staging gear and ambush drops.
- **Resource costs.** As above; both actives ride the pool (Section 5).
- **Growth path.** Rift-step range grows past line of sight at higher tiers; deflection strength and pocket capacity rise with allocation and level.
- **Evolution quest hook — the Threshold Trial (level 50):** unlock the **personal gate** — open a stable two-way portal between two locations the Bearer has physically visited, holding for a scene, with a Mana cost scaling by distance: travel and infiltration the world's own Gates never offered.

```text
[SYSTEM] RIFTS
Rift-step: <range> · Mana 6 · <ready | used this exchange>
Micro-rift deflection: Mana 8 · 50% reduction (reaction)
Pocket cache: <contents>
Gate anchors: <known locations | none — unlocks at evolution>
```

Example — a Riftwalker at level 25:

```text
[SYSTEM] RIFTS
Rift-step: line of sight · Mana 6 · ready
Micro-rift deflection: Mana 8 · 50% reduction (reaction)
Pocket cache: 4 lesser healing potions, 1 spare dagger
Gate anchors: none — unlocks at the Threshold Trial (level 50)
```

---

# 19. Exposure and Re-ranking

The Bearer's System is instrument-invisible (Section 14.4), but his **feats are not**. Growth he cannot hide behind a Rank card is a standing exposure problem, and this section fixes how it surfaces and what he can do about it — on authored rules, never an out-of-character ruling.

## 19.1 How Anomalous Performance Surfaces

- **Witness testimony.** Inside an uncleared Gate there are no cameras (Section 13.4) — but at the mouth, in the streets, and in a party that walked out, people saw. An E-Rank card who fought like a C-Rank hunter is a story hunters tell.
- **Appraiser re-measurement request.** A licensed appraiser — or a suspicious party leader — can ask BGM or CGA to re-measure a hunter whose output does not match his card.
- **Guild scouting.** Guilds watch the freelance boards for underranked talent; a scout who clocks an anomaly reports it upward as a recruiting lead or a compliance flag.
- **Media.** Cable news and tabloids cover S-Rank raids and, when it is strange enough, an E-Rank doing the impossible — the fastest and least controllable way a Bearer's cover cracks.

## 19.2 The Re-assessment Procedure

BGM (Chicago) and CGA (Prague) run the same procedure: a **mana-capacity re-measurement**. The instrument reads the Bearer's current maximum Mana, not level or System Rank:

| Measured maximum Mana | E-Rank | D-Rank | C-Rank | B-Rank | A-Rank | S-Rank |
|---|---:|---:|---:|---:|---:|---:|
| Capacity range | 1–39 | 40–59 | 60–79 | 80–99 | 100–119 | 120+ |

Because maximum Mana is `2 × effective Intelligence` (Section 5.1), Intelligence allocation and equipped Intelligence can move the reading. The instrument does not see the System, other Stats, skills, or hidden class; its official result is therefore a mana-capacity classification, not a complete combat verdict.

- **Voluntary by default.** A hunter requests re-assessment; the authority schedules and measures. No one is dragged in merely for out-performing his card.
- **Compulsory when court-ordered.** After a **public incident** — a death, an illegal clear, ability use on a human, or a party dispute escalated to a regulator — a court may **order** re-assessment, and refusal is then itself an offense (Section 19.4).

## 19.3 The "Reawakened" Classification

The world has exactly **one sanctioned explanation** for a hunter's card reading higher than it used to: **reawakening** — a rare, documented **second measurement** that a regulator rules a **correction of a card mismeasured at Awakening**, not a second Awakening and not a Rank that moved. The instruments are held infallible about the present, so the only admissible account of a changed number is that the original card was wrong all along and the mismeasurement was there from the start — which is exactly the framing the Bible governs (Bible Section 8). It is the narrow exception to Section 2's rule that Rank is fixed at Awakening, defined here and nowhere else. It is the Bearer's **best cover**: measured at a D-Rank or C-Rank pool behind an E-Rank card, "reawakened" accounts for the number as a belated correction, without anyone reaching for a System nobody believes exists.

It is not free. A reawakening is rare enough that claiming one draws the very scrutiny — how, when, witnessed by whom — the Bearer most wants to avoid, and a *pattern* of them is not survivable as a story. Reawakening explains one jump; it cannot explain a curve.

## 19.4 What Can Be Refused, and the Cost

- A Bearer may **refuse voluntary re-assessment** outright and keep his carded rank.
- Refusal has a price: **his contract Rank is capped at his card.** A carded E-Rank is legally barred from C-Rank-and-above contracts (Section 9.4) and the pay they carry (Section 12.3) — concealment costs him the money and the missions his real capacity could take.
- A Bearer may **accept** re-assessment and the reawakened classification: this lifts the contract-Rank cap to the new rank and opens higher work, at the cost of visibility and the standing question of how he grew.
- A **court-ordered** re-assessment cannot be refused without committing an offense (Section 19.2); there, the only choice left is whether to explain the result as reawakening or to let the question stand open.

The secrecy game is this trade, run entirely on the rules above: **card low and stay poor and safe, or measure up and get rich and watched.** Neither is free, and the world is entitled to press on the seam.

---

# 20. Pacing and Lethality Laws

These are the profile's normative restatement of the world's pacing and danger laws (spec Section 4), binding on every Runtime.

## 20.1 Montage Compression

**Logistics compress to montage by default; beat-by-beat play is reserved for the uncertain, the opposed, or the consequential.** BGM and CGA paperwork, licensing queues, contract auctions, travel, restocking, and selling loot exist in the fiction but are narrated as summary unless a die is genuinely live. If a scene has no way to go wrong — no uncertainty, no opposition, no consequence — it is a sentence, not a session.

This is **compression, not a drama timer**: danger still arises only causally (Consistency Before Drama, Decision 003), never because a scene "needs" tension. A queue at the BGM office is a sentence; an appraiser who starts asking how an E-Rank cleared a C-Rank Gate is a scene.

## 20.2 The Die Never Replaces a Missing Fact

The d100 resolves uncertainty **within** authored ranges — it never fills the **absence** of authoring. If a number the System can surface is not in this profile, the answer is not a roll; it is a ruling (Section 20.3). A Runtime that reaches for the die to invent a price, a population, a timer, or a drop it could have read from these files has made exactly the error this world was built to end.

## 20.3 Unanswered Questions Become Rulings at the Checkpoint

When play surfaces a question the files do not answer, the answer is **captured as a ruling into the world files at the same session's checkpoint** — so no question is ever asked twice. The ruling is authored where it belongs (this profile for a mechanic, a world file for a fact), with provenance, and it is canon from that checkpoint forward. This is how the profile grows: not by improvisation at the table, but by ruling recorded into the files.

## 20.4 Fully Lethal

**Death is final and the die decides.** The authored threat model (Section 9, Section 18) and the d100 resolve combat; no drama softens a killing result and no plot armor spares the Bearer. Penalty zones (Section 8.3) can kill; red gates (Section 9.6) seal until the boss dies or the Bearer does; an uncleared Gate's timer genuinely lapses into a break (Section 9.8). A Bearer who dies — in an E-Rank Gate, an S-Rank Gate, a penalty zone, an instant dungeon, or the class quest — is dead, his System state transfers to no one (Section 6.5), and the campaign hard-ends. The world's danger is honest: the causal consequence of what is authored, surfaced without flinching and without invention.

## 20.5 Numbers Stay Out of the Fiction

Health totals, damage figures, Rank tables, modifier steps, XP, and dice results are **Runtime bookkeeping, not world facts.** No character in this world knows what "hit points" are, and none speaks in mechanical vocabulary: a mender reads a wound as a *wound* — "he can't take another hit like that," never "he's at 9 of 40" — a sensor reads presence and pressure, not stat blocks, and a crew leader weighs a fight in blood and odds, not arithmetic. The Runtime surfaces the numeric state **out of character only**: in OOC blocks, tallies, and the debug views the player asks for. The single diegetic exception is the **System itself** — its windows and notifications speak in numbers by design (Sections 14–15), and only its Bearer ever sees them; that asymmetry, one man perceiving the world's hidden arithmetic while everyone around him reads it by feel, is a load-bearing feature of the fiction, not a convenience. An NPC who quotes a number the System would render is a diegesis breach and is corrected like any misstated rule (the `rules` discipline applies).

---
