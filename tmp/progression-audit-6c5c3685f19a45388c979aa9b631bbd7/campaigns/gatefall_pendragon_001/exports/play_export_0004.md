# Gatefall: Pendragon — Session Export 0004

- Campaign: `campaigns/gatefall_pendragon_001/`
- World: Gatefall (`worlds/gatefall/`)
- Exported: 2026-07-31T07:50:00Z (repository session of the same date)
- Session span: restoration from `900_CHECKPOINT_0017` → the end of the 2026-07-31 morning training session
- Latest checkpoint: `900_CHECKPOINT_0018`
- Versions: Engine 0.2.0, World 0.1, World Rule Profile Gatefall 1.8 (frozen), Campaign Schema 0.1.3
- Label: automatic-context-preservation

**Completeness note.** This export was captured as the session ran and carries all five structured sections, so it is a recovery source. Its message record is a **faithful classified summary of each exchange rather than byte-for-byte verbatim text** — the substrate's displayed prose is preserved in substance and sequence, not character-for-character. Where that distinction matters for reconstruction, the Resolutions, Identifiers, and Promotions sections below are authoritative and complete.

## Opening State

```yaml
opened_from: 900_CHECKPOINT_0017
protagonist: ENT-000125
location: ENT-000087   # Owen Callahan's apartment, Rogers Park, Chicago — night of 2026-07-30
active_relationships: [REL-000062, REL-000063, REL-000064, REL-000065, REL-000066]
active_objectives: REC-000078   # OBJ-2, OBJ-3, OBJ-4, OBJ-10, OBJ-11, OBJ-12 live
registry_at_open: {ENT: 140, REC: 92, EVT: 88, REL: 66}
opening_bearer_state:
  level: 7
  xp: "40/700"
  health: "80/80"
  mana: "40/40"
  base_stats: {strength: 29, agility: 23, vitality: 20, perception: 30, intelligence: 20}
  unspent_points: 0
  pending_rewards: {ability_points_awards: 2, status_recovery: 2, daily_random_box: 4}
  gold: 15835
  cash_usd: 34381
  skills: [Stone Skin D-Rank Novice, Rupture E-Rank Novice, Rank-Sight passive]
  daily_streak: 6
```

---

**System** — `/chronicle` bootstrap: Engine Welcome Page rendered from `system/WORLDS_AND_CAMPAIGNS.md`; runtime command catalog shown; no campaign loaded.

**Player · OOC** — `/continue gatefall`

**System** — Restored `900_CHECKPOINT_0018`'s parent, `900_CHECKPOINT_0017`. Versions verified: Engine 0.2.0, Profile 1.8 frozen, Data Model 0.1.3, Save Format 0.1.0 — no migration required. Recap and full command menu presented; readiness gate offered.

**Player · OOC** — `/system`

**Narrator · OOC** — Full System window rendered from canonical state (Profile Section 15.1, 76-cell frame).

**Player** — "I accept the two AP +3 and distribute the points accordingly: +1 strength, +2 vitality, +3 agility."

**Narrator** — Both banked Ability Points +3 awards claimed and the six points allocated in one settlement. Strength 29→30 crossed the Section 4.4 milestone and granted **Overpower**; Vitality 20→22 re-derived maximum Health to 88 and filled it. Narrated as a fact already true by the time he noticed it, with Owen at the sink in the next room, unaware.

**System** — `Unspent Points: 0 → 6` · `Strength: 29 → 30` · `Agility: 23 → 26` · `Vitality: 20 → 22` · `Unspent Points: 6 → 0` · `HP: 80 → 88/88` · `[SYSTEM] STAT MILESTONE — STRENGTH 30. Skill granted: Overpower.`

**Player · OOC** — `/system`

**Narrator · OOC** — Window re-rendered with the settled values and the fourth skill.

**Player · OOC** — "what's the overpower exactly and how does it work"

**Narrator · OOC** — Rules answer with citations: Profile Section 4.4's one-line entry; range read against System Rank (Section 6.6), so D-Rank foes at present; a possibility unlock rather than a modifier (Section 4.3), with the die still resolving an uncertain grapple and Strength supplying the ordinary margin; no duration, per-scene limit, or two-Rank extension authored (that is Titan's Grip at base 50).

**Player** — "I also open two loot boxes"

**Roll** — 🎲 d100: 19 — potion cache (E-Rank tier: lesser; composition rolled 2 mana / 1 healing)

**Roll** — 🎲 d100: 43 — System gold (E-Rank purse, 500 g)

**System** — `Gold: 15,835 → 16,335` · `Pending Rewards: Status Recovery ×2 · Daily Random Box ×2`

**Player** — "It's always the good kind of staring… What is this? This wasn't there before!" — pulling at the shirt Owen was wearing.

**Narrator** — Owen defends the shirt in three escalating positions and arrives at the true one on the third attempt: it smells like him. Physical comedy; he does not let go of Alexander's wrist.

**Player** — Playful escalation: not offended by the theft, offended by the shirt existing; tickling.

**Narrator** — Owen loses comprehensively, demands the record show he was ambushed, and concedes the shirt as contested territory.

**Player** — "I am the King of menace!" — tears the shirt apart.

**Narrator** — The shirt gives like paper. Owen, a C-Rank mender, registers exactly what that took, says nothing about it, and reroutes into a joke three seconds later. Recorded as the established shape of the exposure thread between them.

**Player** — Playful bites as a "peace offer."

**Narrator** — Owen loses that too and asks for terms.

**Player** — "The Great no-sparky Mage shall never lie in a bed with a shirt on when the majesty himself doesn't have one."

**Narrator** — `mage` detonates as always; corrected to *mender*; terms accepted; lamp requested.

**Player** — Lamp off, an embrace, "sleep my sweet egg Pokémon mage," a kiss.

**Narrator** — Owen defends Chansey's professional standing and is asleep in ninety seconds. The night passes without incident. At 06:00 the System fires.

**System** — `[SYSTEM] DAILY PREMIUM STOCK ROTATED — 6 offers available.` · `[SYSTEM] QUEST ISSUED — DAILY TRAINING` (objectives, rewards, 00:00 deadline, penalty warning). The 2026-07-30 cycle's three unbought offers expired uncarried.

**Player · OOC** — `/system shop`

**Narrator · OOC** — Shop window rendered: gold balance, the six-offer Daily Premium tab, the E-Rank catalogue, and the SELL terms.

**Player** — "I buy the B rank quick knife and premium rune"

**System** — `[SYSTEM] PURCHASE DECLINED — insufficient gold. Ghost Quickknife [B-Rank] · 18,000 g · balance 16,335 g · short 1,665 g.` The rune purchase resolved and was then retracted (below).

**Player · OOC** — "I didn't calculate properly, let's drop the buy for now and reset I bought anything"

**Narrator · OOC** — Rewound by explicit ruling before promotion; nothing had reached disk. Gold restored to 16,335, no rune held, Daily Premium 6/6. **The purchase is not canon and does not appear in the promoted state.**

**Player · OOC** — "for how much can I sell the dagger I have now?"

**Narrator · OOC** — Section 12.5 Resale cited: C-Rank Quickknife 500 g (25% of the 2,000 g table price), E-Rank Quickknife 25 g. Flagged as an unauthored gap that the profile fixes no mundane resale price for ranked gear, and that the no-exchange rule makes any dollar sale irrelevant to a gold balance.

**Player** — "I open the two unopened boxes"

**Roll** — 🎲 d100: 82 — ranked gear (E-Rank; chassis d20 10 → armor; slot d5 5 → feet; style d5 2 → Titan) = Titan Boots [E-Rank]

**Roll** — 🎲 d100: 56 — System gold (E-Rank purse, 500 g)

**System** — `Gold: 16,335 → 16,835` · `Pending Rewards: Status Recovery ×2`

**Player** — "I open my phone to see if Dale texted or not."

**Narrator** — 06:07, no new messages. Dale's thread unchanged (nothing before Monday, ask midweek, something bigger with his name on it); Priya's unchanged; nothing from the Coalition or the crew.

**Player** — Wakes Owen with a kiss: "it's time to run."

**Narrator** — Owen protests at length, then negotiates: 4 km and thirty of everything, coffee afterward, and he'll be there at the finish.

**Player** — Agrees, adds "+2k every day seems like a good progress," sets the venue as yesterday's, and says he won't stay for breakfast — errands.

**Narrator** — Bathroom scrum; Owen notices the errands line, doesn't ask. Loyola Park at half six: Owen grinds out 4 km and a scaled 30/30/30 without quitting; Alexander completes 10 km and 100/100/100 by roughly 07:40, not winded. Owen watches over a coffee and again declines to say what he is reading.

**System** — `[SYSTEM] DAILY TRAINING COMPLETE.` Objectives complete; rewards available as three separate entries; `Streak: 6 → 7`.

**System** — Context-Preservation Barrier fired at the scene boundary. Save Algorithm executed; `900_CHECKPOINT_0018` written and verified; `tools/validate_repository.ps1` PASSED (82 live files, 357 object blocks, 357 identifiers, high-water ENT-000140 / REC-000092 / EVT-000089 / REL-000066); `tools/test_checkpoint_contract.ps1` PASSED.

---

## Resolutions

No uncertain or opposed action was resolved this session; no contested d100 was made. Every roll below is a System-table roll under Profile Sections 8.1 and 12.5, made as a real tool call.

| # | Intent | Roll | Table | Result | Event |
|---|--------|------|-------|--------|-------|
| 1 | Open banked Daily Random Box (1 of 4) | d100 19 | Section 8.1 (01–35) | Potion cache at System Rank E; composition d2 ×3 → 2 mana / 1 healing | EVT-000089 |
| 2 | Open banked Daily Random Box (2 of 4) | d100 43 | Section 8.1 (36–60) | System gold, E-Rank purse 500 g | EVT-000089 |
| 3 | Open banked Daily Random Box (3 of 4) | d100 82 | Section 8.1 (81–93) | Ranked gear at E; d20 10 → armor; slot d5 5 → feet; style d5 2 → Titan = Titan Boots [E-Rank] | EVT-000089 |
| 4 | Open banked Daily Random Box (4 of 4) | d100 56 | Section 8.1 (36–60) | System gold, E-Rank purse 500 g | EVT-000089 |
| 5 | Daily Premium rotation — weapon Rank | d100 97 | Section 12.5 (94–98) | +3 Ranks over System Rank E → **B-Rank** | EVT-000089 |
| 6 | Daily Premium rotation — armor Rank | d100 24 | Section 12.5 (01–50) | System Rank → E-Rank | EVT-000089 |
| 7 | Daily Premium rotation — accessory Rank | d100 35 | Section 12.5 (01–50) | System Rank → E-Rank | EVT-000089 |
| 8 | Daily Premium rotation — rune Rank | d100 28 | Section 12.5 (01–50) | System Rank → E-Rank | EVT-000089 |
| 9 | Daily Premium rotation — key Rank | d100 20 | Section 12.5 (01–50) | System Rank → E-Rank | EVT-000089 |
| 10 | Premium weapon model | d7 1 | Section 12.5 | Ghost Quickknife | EVT-000089 |
| 11 | Premium armor model | d5 5 slot / d5 1 style | Section 12.5 | Adaptive Bastion Feet | EVT-000089 |
| 12 | Premium accessory model | d5 4 | Section 12.5 | Ascendant Seer's Lens | EVT-000089 |
| 13 | Premium consumable model | d6 4 | Section 12.5 | Ironblood Phial | EVT-000089 |
| 14 | Premium rune model | d10 4 → reroll → d10 5 | Section 11.3 / 12.5 | 4 = Stone Skin, already known → rerolled → Flash Step (taught at its native D floor) | EVT-000089 |
| 15 | Premium key model | d6 4 | Section 12.5 | Armory Key | EVT-000089 |

Stat allocation, the Overpower milestone award, the Health re-derivation, and the daily-quest completion required no roll: they are deterministic settlements under Sections 3.9, 4.2, 4.4, 4.1, and 8.1.

## Identifiers Allocated

| ID | Names | Owning record | Established by |
|----|-------|---------------|----------------|
| EVT-000089 | The night of 2026-07-30 into the morning of 2026-07-31 — six stat points, Overpower, four boxes, the rotation, and the seventh daily | REC-000079 | this session |

No entity, record, or relationship identifier was minted. Titan Boots [E-Rank] is a generic ranked item recorded in the inventory ledger and the Bearer's shop holdings; it is not a Persistent Entity and carries no `ENT-` (Data Model Section 11).

## Promotions

| Record | Change | Provenance |
|--------|--------|------------|
| REC-000074 (`100`) | Base Stats 30/26/22/30/20 and effective 34/26/22/30/20; Health 88/88; unspent 0; pending rewards AP ×1 / Recovery ×3 / Box ×1; **Overpower** added to `skills_known`; gold 16,835; Titan Boots and the three potions added to shop holdings; 2026-07-31 Daily Premium cycle with its twelve rolls; daily streak 7; condition and situation rewritten | EVT-000089 |
| REC-000076 (`120`) | New "Daily Random Box Contents (2026-07-31)" section; potion counts to 10 lesser healing / 2 lesser mana; gold restatement to 16,835 | EVT-000089 |
| REC-000077 (`130`) | `ENT-000139` location (Loyola Park), condition and situation; `REL-000066` texture extended with the domestic register, the shirt-tearing silence, and the training arc | EVT-000089 |
| REC-000078 (`140`) | OBJ-2 gold balance updated and the Ghost Quickknife gap recorded as a new standing pressure | EVT-000089 |
| REC-000079 (`160`) | `EVT-000089` recorded; added to the record's `subjects` | EVT-000089 |
| REC-000080 (`170`) | Session change entry and the Checkpoint 0018 entry | EVT-000089 |
| REC-000081 (`180`) | Date/time, location, protagonist state, Daily Premium cycle, daily quest, latest restorable checkpoint, scene anchor, promotion status | EVT-000089 |
| `system/ID_REGISTRY.md` | EVT high-water 88 → 89; allocation-log row for EVT-000089 | EVT-000089 |
| `system/WORLDS_AND_CAMPAIGNS.md` | Campaign row latest checkpoint → `900_CHECKPOINT_0018`, captured 2026-07-31; per-campaign note rewritten and 0017 marked superseded | EVT-000089 |

`110_WORLD_LEDGER.md` (`REC-000075`) received no change: no world-layer fact moved.

## Closing State

```yaml
protagonist: ENT-000125
location: ENT-000087   # Loyola Park, Chicago lakefront — 2026-07-31, ~07:50
condition: "Whole, no injury, freshly trained and not winded; authoritative values in 100_CHARACTER_SHEET.md"
bearer_state:
  level: 7
  xp: "40/700"
  health: "88/88"
  mana: "40/40"
  base_stats: {strength: 30, agility: 26, vitality: 22, perception: 30, intelligence: 20}
  effective_stats: {strength: 34, agility: 26, vitality: 22, perception: 30, intelligence: 20}
  unspent_points: 0
  pending_rewards: {ability_points_awards: 1, status_recovery: 3, daily_random_box: 1}
  gold: 16835
  cash_usd: 34381
  skills: [Stone Skin D-Rank Novice, Rupture E-Rank Novice, Rank-Sight passive, Overpower passive]
  daily_streak: 7
  next_quest: "2026-08-01T06:00:00"
  daily_premium: "6/6 unbought, expires 2026-08-01 06:00; includes Ghost Quickknife [B-Rank] at 18,000 g"
registry_at_close: {ENT: 140, REC: 92, EVT: 89, REL: 66}
open_pressures:
  - "Unspecified errands announced to Owen and not yet acted on"
  - "Ghost Quickknife [B-Rank] 18,000 g vs 16,835 gold — 1,165 g short, expires 2026-08-01 06:00; no USD bridge"
  - "≈$9,450 Ashfield share and the Longshot [C-Rank] appraisal, both processing"
  - "OBJ-12 — the crew Owen might build, open and undecided"
  - "Dale's midweek mining work and the larger job with Alexander's name on it"
  - "Whether the crew hears about the relationship from them or deduces it"
  - "Owen's accumulating silent observations — two consecutive mornings, plus a shirt torn like paper"
```
