# Inventory and Ownership - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) holding Alexander's individually-tracked resources. Generic goods are noted as quantities without identifiers (`011` Section 11).

---

## Record

```yaml
id: REC-000076
canonical_record: REC-000076
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000592
  game_date: "2026-08-21T17:26:00-05:00"
  real_date: "2026-08-15"
role: canonical ledger
scope: campaign
subjects: []
# Since Checkpoint 0102: EVT-000588, EVT-000589 (two instances, two keys, two sales),
#   EVT-000592 (the ceiling sweep — see the Ceiling Register below)
# Since Checkpoint 0101: EVT-000583 (the Ironline report leaves the inventory),
#   EVT-000584, EVT-000586 (two Gates), EVT-000587 (sales)
# Since Checkpoint 0100: EVT-000578 (two lots into Nakamura's custody; a monitoring
#   liability opened; no gold or cash moved)
# Since Checkpoint 0099: EVT-000570, EVT-000572
# Since Checkpoint 0098: EVT-000563, EVT-000564, EVT-000565, EVT-000567
# Since Checkpoint 0096: EVT-000548, EVT-000550, EVT-000556, EVT-000557
# Since Checkpoint 0083: EVT-000494, EVT-000496
# Since Checkpoint 0081: EVT-000487
# Since Checkpoint 0080: EVT-000485
# Since Checkpoint 0079: EVT-000479, EVT-000480, EVT-000481
# Since Checkpoint 0078: EVT-000464, EVT-000469, EVT-000472, EVT-000473, EVT-000474, EVT-000476
# Since Checkpoint 0076: EVT-000446, EVT-000447
# also updated by EVT-000285, EVT-000300, EVT-000323, EVT-000324, EVT-000326, EVT-000327, EVT-000328, EVT-000339, EVT-000342, EVT-000343
# Checkpoint 0065: EVT-000358, EVT-000359
# Since Checkpoint 0069: EVT-000398, EVT-000399, EVT-000400, EVT-000401, EVT-000402, EVT-000403
# Since Checkpoint 0071: EVT-000407, EVT-000410, EVT-000411
# Since Checkpoint 0072: EVT-000415, EVT-000416, EVT-000417
# Since Checkpoint 0074: EVT-000420, EVT-000422, EVT-000423, EVT-000424, EVT-000425
# Since Checkpoint 0075: EVT-000428, EVT-000429, EVT-000430, EVT-000431, EVT-000432, EVT-000433, EVT-000434, EVT-000435
```

---

## Current Funds

**The authoritative current figures, held in one place.** Every other statement of cash, gold, or pending income in this repository — `180_CURRENT_STATE.md`'s Bindings, `100_CHARACTER_SHEET.md`'s `gold`, any panel's FUNDS block — is a restatement of this block and yields to it.

This block exists because the alternative was worse. Before it, a panel needing the current cash figure had to read this entire ledger, because the figure was derived across dated history rather than held anywhere: roughly 13,000 tokens of `/system` and the same again of `/system gear`, on both of which the failure ceiling had to be waived. Pointing those panels at any narrower heading would have rendered a **stale number behind a plan that looked correct**, which is worse than being over budget, so the narrowing waited for a block that is guaranteed current.

**What guarantees it.** `as_of_event` and `as_of_game_date` must equal this file's own Record provenance, and `validate_repository.ps1` enforces that on every save. A span that moves this ledger without moving this block fails the gate; the figures cannot silently go stale behind a panel that reads only this heading.

```yaml
current_funds:
  as_of_event: EVT-000592
  as_of_game_date: "2026-08-21T17:26:00-05:00"
  cash_usd: 278155.22
  gold: 367501
  pending_payouts_usd: 52500.00
  pending_payout_count: 1
  note: "USD and gold do not exchange (Profile Section 12.5). Cash moves only through world-side transactions; gold moves only inside the System shop. One pending payout: Ada Reyes's Cicero Scar declaration, 21 crystals at the licensed C-Rank rate, filed 2026-08-20 (`EVT-000556`), not yet cleared."
```


---

## Ceiling Register (2026-08-21 17:04-17:26, `EVT-000592`)

**Every holding, read once, with The Unmeasured equipped.** Flux Sight is a passive and returns a subject's **ceiling** alongside its current state — what an object can still become, whether it will take an infusion, the highest Rank it could be raised to, and whether it is finished. This register is the sweep's full output. **It is a property of each object and does not expire**; re-read only what changes.

### Worn

| Holding | Ceiling | |
|---|---|---|
| **Finished dagger [S]** | **REACHED — finished** | No headroom. No infusion will take. Nothing further can be added by any hand. |
| **Warded Vambrace [A] ×2** | **REACHED** | The −30% is all there is. No stat line, no headroom — which is precisely why Walt Adamik sat on one for nine days and let it go at $3,000. |
| Ghost Quickknife [A] | **headroom → [S]** | |
| Adaptive Titan Coif [B] | **headroom → [A]** | 15% → ~20% |
| Watcher Torso [B] | **headroom → [A]** | and the Carapaced imprint deepens with it |
| Adaptive Titan Legs [B] | **headroom → [A]** | 15% → ~20% |
| **Gale Hunter's Gauntlets [C]** | **REACHED — no upgrade path** | 8%, and the weakest link in a multiplicative chain |
| **Arcanist Feet [C]** | **REACHED — no upgrade path** | 8% |

**This answers the Combat Tier S question in both directions and changes the plan.** Tier S needs worn reduction ≈60% at 2,000 max Health, against 46.2% held. **The two 8% pieces cannot be improved by anyone — only replaced.** The three [B] pieces *can* be raised. So the route is **artificer work on three and outright purchase of two**, not the shopping trip it appeared to be an hour earlier.

### Stored

| Holding | Ceiling | |
|---|---|---|
| **Half-finished leather piece** | **NOT REACHED — substantial headroom** | **An incomplete [A-RANK] armour piece**, stopped partway, **and it can still be completed by a hand good enough to read what was already done to it.** Carried since 2026-08-13 as evidence rather than value. |
| **Mana Reservoir [C]** | **headroom → [B] pool** | Capacity 125, charge 17. **The housing was built to carry a B-Rank pool and has run at 42% of what it is for since purchase** (`EVT-000446`, $2,500). |
| **Unlicensed Lockpick Set [B]** | **headroom → [A]** | *Effective up to B-Rank* is a current state, not a design limit. |
| Ghost Quickknife [B] · Quickknife [B] | headroom | |
| Longsword [B] · Reacharm [B] | headroom | |
| Warlord's Loop [A] · Mindspun Loop [C] | REACHED | |
| Hunter's Band [D] · Quickknife [C] | REACHED | |
| Keyed document wallet [C] · sensor rig [D] | REACHED | |
| Suppression Emitter [E] · Gate Direction Finder [E] | REACHED | |
| Directional listening rig | *no reading* | mundane make, carries no Rank |

### Consumables and materials

| Holding | Ceiling | |
|---|---|---|
| **Elixir of a stat** | **+3 to a chosen Stat, permanent** | **That is its whole capacity and it cannot be made to give more.** Daily Premium stock, one per cycle (`EVT-000548`, 5,000 g) — so **+3 a day at 5,000 gold**, not a lever 367,501 gold pulls seventy-three times. The Runtime had flagged that it did not know this magnitude and would not guess it. |
| Skill Rune — Keen Sense [C] | teaches to [C] only | confirmed inert; he holds Keen Sense at [S] |
| Drowned mana nodule [B] · Bone-lattice plating [B] | component material | ceiling defined by what they are made into |
| Alpha-strain sinew [B] ×2 lots | component material | the same material at two ages; the alpha's lot is older |

### The finding that is not about gear

**The Finished dagger is at its ceiling — Marnie completed it.** Her loading dock at `EVT-000326` was a workspace abandoned mid-job: a half-finished leather piece, loose tool components, raw salvage in the middle of being worked. **Everything on that bench was interrupted except the dagger.** She took an S-Rank blade all the way to its ceiling, put it down, and never came back for it. **Whatever happened to her happened after she finished it**, and the name it auto-identified under was accurate rather than optimistic.

**And the leather piece she did not finish is an [A-Rank] commission that can still be completed.** Both facts are `OBJ-27` evidence and both landed two hours before an appointment with the one artificer in Chicago who has held that maker's work, identified her tic across three objects at three difficulty grades, and said she would know the hand again anywhere.

---

## This Checkpoint's Movement (`EVT-000588`-`EVT-000589`)

**Gold: 305,251 → 260,251 (key) → 336,001 (101 B crystals) → 291,001 (key) → 367,501 (102 B crystals).** Net **+62,250**, and the campaign's highest figure.

- **−90,000 g** — two Instant-Dungeon Keys [B], turned at 13:09 (Flooded Mine) and 15:05 (Beast Den).
- **+152,250 g** — 203 B-Rank crystals across two sales at the flat 750 rate. Stock 50 → 151 → 50 → 152 → **50**. **Fifty held back for the fifth consecutive sale; no crystal line has ever been sold to zero.**
- **+ Instant-Dungeon Key [B] ×1, free** — the Beast Den boss's drop (d100 84 → key band). A key out of a key, on a body that cost 45,000 to meet.
- **+ Drowned mana nodule [B]** — legendary harvest, Flooded Mine boss. Catalogued and priced.
- **+ Alpha-strain sinew [B] ×2 lots** — Beast Den boss and alpha. Catalogued; the same material at two ages.
- **+5 Beast Cores [B]** (two elites, alpha, boss, elite) → **20**. The shop refuses cores at every Rank, so **sixty-seven cores now sit as dead assets** against a bench appointment at 19:30 where none have been shown.
- **Cash unmoved at $278,155.22.** The $1,050 monitoring charge to Nakamura is still outstanding and not yet due.

**Four catalogued harvests in a row** — bone-lattice, drowned nodule, and both sinew lots — which retires the idea that boss material is generally unreadable and marks the **frost-fused carapace plating** and the **heartwood core-mass** as anomalous *specifically*. Both are in Nakamura's custody.

---

## Prior Checkpoint's Movement (`EVT-000583`-`EVT-000587`)

**Gold: 238,841 → 193,841 (fifth B-Rank key) → 292,841 (132 B crystals) → 305,251 (73 C crystals).** Net **+66,410**, and the highest figure this ledger has ever carried.

- **−45,000 g** — one Instant-Dungeon Key [B-Rank], turned in the living room at 11:31, walked out of at 12:51 with forty minutes unused. `EVT-000586`.
- **+99,000 g** — 132 B-Rank crystals at the flat 750 rate. Stock 61 → 182 (+15 beast drops, **+106 mined of 104**) → **50**.
- **+12,410 g** — 73 C-Rank crystals at 170. Stock 50 → 123 (+15 beast drops, **+58 mined of 56**) → **50**. **Fifty of each line held back, the same floor as `EVT-000557`; no crystal line has ever been sold to zero.**
- **+2 Beast Cores [B]** → **14**, **+2 Beast Cores [C]** → **25**. The shop refuses cores; sixty-one cores of artificer material now sit against a bench appointment.
- **+ Longsword [B-Rank]** (Crypt boss drop) and **+ Bone-lattice plating [B-Rank] × 1 lot** (field harvest). The plating **categorises completely** — Rank, composition, catalogue line, market value — which retroactively marks the frost-fused plating and the heartwood as anomalous *specifically* rather than as a property of boss material.
- **+2 Lesser Healing, +1 Lesser Mana** — Ashfield boss cache.
- **Skill Rune — Field Command [C-Rank]** drawn from the streak-upgraded box and **consumed the same minute** (`EVT-000585`). The box's second candidate, an **Ascendant Mindspun Band [B-Rank]**, was discarded unrolled and does not exist.
- **Cash unmoved at $278,155.22.** The $1,050 monitoring charge to Nakamura is still outstanding and not yet due.

### The Ironline Trial Roster Report Leaves This Ledger (2026-08-21 ~06:50, `EVT-000583`)

**Given, not sold, and it is the most valuable thing Alexander has ever handed anyone.** Three pages on Ironline letterhead, unfiled — a roster of eight against five actually present, padded with Priyanka Osei, Marcus Delray and Toby Fenwick off Brannigan's office's bench. **Withdrawn from the dimensional inventory in a grain yard and handed to Wade Bishop**, who watched it arrive from nowhere and filed the observation without comment.

**It has underwritten `OBJ-27`'s leverage since 2026-08-14.** Wade named it himself as the reason he has said yes since the fourteenth. It now goes in front of whoever really sits above Region V — a name Rosalind Fenn is finding tonight — and **it is spent by being used**, which Alexander was told plainly and accepted.

**The terms were not renegotiated.** Wade's words: *'Cold as you said it, that's the single most generous thing anyone's done for me in six years, and I don't think you meant it to be. You could have asked for more.'*

---

## Prior Checkpoint's Movement (`EVT-000578`)

**Nothing moved in either currency.** Gold holds at **238,841**, cash at **$278,155.22**. Asserted rather than omitted: an evening that opened an S-Rank object, identified a maker across three items and set a week of paid monitoring produced **no transaction at all**, because the artificer waived her fee and billed her monitoring in arrears.

- **Fee waived, not discounted.** Priscilla Nakamura declined to charge for four hours, a boundary opened and a comparative maker identification — work she priced aloud at *a number you wouldn't enjoy hearing* — on the ground that she opened something that was running down because she wanted to, and would rather that sit on her side of the ledger. The same instinct that voided the credit line on a gifted core at `EVT-000550`.
- **A liability opened, not paid: $1,050.00** — seven days at her **$150/day sitting rate**, twice-daily readings on the Dormant Core, billed at the end of the week **whether the signature drifts or not**, because a negative result costs her the same week. Not yet due. First entry of its kind in this ledger: an agreed future charge against a service rather than an object.
- **Two further lots into custody, same terms as the core — hers to hold, Alexander's to own, no fee against the objects.** The **frost-fused carapace plating [B-Rank]** and the **heartwood core-mass [B-Rank]**. Both are now physically on her bench, **out of the dimensional inventory**, and render in no `/system gear` panel.
- **The plating's five-day question is answered.** The System returning no Rank is *a statement about its catalogue, not about the material* — it prices what it recognises, and this came off a boss it had already paid for in a form with no line item. Real, structurally sound, carrying residual, and **frost-fused in the sense that the cold is structural rather than incidental**. Infusion still untested. **Worth working rather than selling; a flat price quote is a guess.**
- **The heartwood is the item to watch.** Warm nine hours after the kill with no lattice, no binding and no housing — material holding a charge it has no mechanism for holding, and now sitting eight feet from a sedative nobody is renewing. Folded into the monitoring week; she calls before Sunday if it does anything near the core.
- **Twelve Beast Cores [B-Rank] deliberately not shown**, deferred to Sunday. Recorded so the omission reads as a choice.

**Custody now covers three objects** — Dormant Core [S], plating [B], heartwood [B] — none sold, none transferred, none rendering in inventory panels.

---

## Prior Checkpoint's Movement (`EVT-000570`-`EVT-000572`)

**Gold: 216,341 → 171,341 (fourth B-Rank key) → 238,841 (90 crystals sold).** Net **+22,500 g** on the key.

- **−45,000 g** — one Instant-Dungeon Key [B-Rank], bought and turned in the living room at 13:00, left at 14:46 with fourteen minutes unused. `EVT-000570`. **Four keys turned in one day; all four spent.**
- **+67,500 g** — 90 B-Rank mana crystals at the flat 750 g rate. Stock 55 → 151 (+17 beast drops, +79 mined of 88) → **61**. `EVT-000572`.
- **+4 Beast Cores [B-Rank]** — three elites and the boss. Stock 8 → **12**. The shop refuses cores entirely (Section 12.5), so they convert to nothing in gold.
- **Ascendant Warlord's Loop [A-Rank]** — boss drop, Strength +16, Excellent, unbound. The top drop band, ranked gear **one Rank above the instance**, and the highest-Rank stat line this campaign has pulled from a Gate. **Banked unequipped and undecided** against the second Warded Vambrace.
- **Heartwood core-mass [B-Rank] × 1 lot** — field harvest off the boss. **It Ranked itself into storage from its source** under Profile 1.72's Section 11.1 rule, which is the defect that needed an owner ruling at `EVT-000522` when the frost-fused plating returned no Rank at all. Function unidentified, value unauthored, still warm the way the Mana Reservoir is warm.
- **Skill Rune — Dimensional Projection [C-Rank]** — shrine bonus roll, **consumed the same minute** (`EVT-000570`).
- **Skill Rune — Sprint [B-Rank]** — banked since `EVT-000563`, **consumed** (`EVT-000571`).
- **Cash unmoved at $278,155.22.** No USD transaction this span.
- **$52,500.00 still filed and pending** — Ada Reyes's Cicero Scar manifest, unchanged.

---

## Prior Checkpoint's Movement (`EVT-000563`-`EVT-000567`)

**Gold: 129,341 → 186,341 (76 B-Rank crystals, `EVT-000563`) → 141,341 (second key) → 183,341 (56 crystals, `EVT-000564`) → 138,341 (third key) → 216,341 (104 crystals, `EVT-000567`).** Net **+87,000 g** across one morning.

- **+177,000 g** — 236 B-Rank mana crystals sold at the System shop's flat 750 g rate, in three sales of 76, 56 and 104. `EVT-000563`, `EVT-000564`, `EVT-000567`.
- **−90,000 g** — two Instant-Dungeon Keys [B-Rank] at 45,000 g each. `EVT-000564`, `EVT-000567`. A third was the banked `EVT-000501` boss drop and cost nothing. **All three are spent**; two were abandoned with most of their two hours unused, which Section 17 does not refund.
- **−$3,000.00** — the second Warded Vambrace [A-Rank] bought back from Walt Adamik, the unsold half of the $5,200 pair from `EVT-000280`, nine days on his shelf. Equipped to accessory slot 2. `EVT-000565`. **Cash 281,155.22 → 278,155.22**, the only USD movement of the span.
- **13 gear holdings transferred to Walt Adamik** as `OBJ-29` partner contribution, not a sale and not a credit — three E-Rank (Adaptive Bastion Torso, Ascendant Hunter's Band [E-Rank], Bastion Torso), eight D-Rank (Titan Legs, Watcher Feet, Arcanist Torso, Bastion Legs, Arcanist Feet, Horizon Gale Coif, Quickstep Charm, Longsword) and two C-Rank (Horizon Gale Gauntlets, Warded Greaves). **Realises roughly $38,000-42,000 on movement**, split by Walt across a licensed shelf (the three Horizon pieces, which have receipts) and a grey one (the eight with no paper and readable boss imprints). Nothing is owed back and no figure is booked until the goods move. `EVT-000565`.
- **Crystals and cores refused.** Walt declined ~50 B-Rank crystals outright under his own term 5 — they become stock once the operation runs, not startup capital, and a conspicuous pile four days into a seven-day build makes him the fence he is being paid to replace. Revisit Monday the 24th. `EVT-000565`.
- **Cicero's Quiet declined** at $35,000 under standing first refusal. First refusal is an order of access, not a discount. `EVT-000565`.
- **+5 Beast Cores [B-Rank]** (stock 3 → 8) and **+8 potions** across the three clears. The shop refuses cores entirely (Section 12.5), so they convert to nothing in gold and remain artificer material.
- **$52,500.00 still filed and pending** — Ada Reyes's Cicero Scar manifest, unchanged this span.

---

## Prior Checkpoint's Movement (`EVT-000547`-`EVT-000557`)

**Gold: 171,861 → 154,761 (Prismatic-cycle purchases, `EVT-000548`) → 149,761 (elixir) → 99,761 (Umbral-cycle Ghost Quickknife, `EVT-000557`) → 129,341 (174 C-Rank crystals sold).**

- **−17,100 g** — Adaptive Titan Legs [B-Rank] (6,750), Greater Healing Potion ×10 (7,500), Greater Mana Potion ×5 (2,400), Stabilization Seal ×3 (450). `EVT-000548`.
- **−5,000 g** — one Elixir of a stat, unassigned. `EVT-000548`.
- **−50,000 g** — Ghost Quickknife [A-Rank], displacing the [B-Rank] model to storage. `EVT-000557`.
- **+29,580 g** — 174 of 224 undeclared C-Rank crystals sold at the shop's 170 g rate. `EVT-000557`.
- **Cash unchanged at $281,155.22** — no USD moved this span; the harvest payout below is filed, not received.
- **$52,500.00 filed and pending** — Ada Reyes's Cicero Scar manifest, 21 of 205 mined C-Rank crystals declared, full licensed solo rate, no crew split. `EVT-000556`. The remaining 184 crystals kept undeclared, same practice as every prior harvest job.
- **One D-Rank Beast Core given to Priscilla Nakamura** as project stock, no credit — an owner-corrected gift, not a sale. `EVT-000550`.

---

## Individually-Tracked Items

### Three Crypts, Bought and Sold (2026-08-19, `EVT-000506`-`EVT-000509`)

**No cash moved; every figure here is gold or material.** Cash stands unchanged at **$281,155.22**.

**Gold across the span: 60,091 → 171,091 → 141,091 → 171,861.**

- **+111,000 g** — 148 Mana Crystals [B-Rank] sold at 750 (`EVT-000506`), stock 198 → **50**, still undeclared.
- **−30,000 g** — 3 Instant-Dungeon Keys [C-Rank] at 10,000 (`EVT-000506`), all three spent the same morning.
- **+30,770 g** — 181 Mana Crystals [C-Rank] sold at 170 (`EVT-000508`), returning C-Rank stock to the **40** held before the run.

**The E-Rank keys that were not bought.** Three E-Rank keys were declared and revised before anything intervened, and the reason belongs in this ledger because it is an economic ruling: §7.4 states a trivial or consequence-free test **adds a use but no qualifying scene**, and an E-Rank instance carries no genuine threat at Level 27 against 468 Health and 42% reduction. Three E-Rank clears at 500 g apiece would have bought loot and **no mastery whatsoever**. The 30,000 g spent on C-Rank keys bought eleven mastery advances and three breakthroughs.

**In from the three Crypts** (`EVT-000507`): **181 Mana Crystals [C-Rank]** — 132 from three deposits, 49 one per beast across forty commons, six elites and three bosses — and **9 Beast Cores [C-Rank]**, one from each elite and each boss. Commons drop crystals only.

**Beast cores now stand at 49 across three Ranks** — 3 at B, 23 at C, 23 at D — and **not one of them converts to gold at any price.** §12.5 has the shop refuse cores outright; §12.8 makes cores the material ranked gear is forged from. That is a very large amount of raw stock to be carrying into Priscilla Nakamura's workshop at 19:30 the same evening, on the day Resonance Extraction gained **Cores and drops**.

**Also in:** two `unbound-awakened` skill runes (**Sprint [C-Rank]**, and **Keen Sense [C-Rank]** which is inert to him at B-Rank but transferable), and a standard potion cache — 2 Standard Healing, 1 Standard Mana.

**Out:** three C-Rank keys, spent. **Status Recovery 18 → 16**, two claimed between clears to restore both pools after the only two hits the span landed.

### The B-Rank Instance: What a 56,250 g Key Returned (2026-08-19, `EVT-000499`-`EVT-000502`)

**No cash and no gold moved.** Nothing was sold, no shop was opened, and gold stands unchanged at **60,091**. Everything below is material.

**In: 158 Mana Crystals [B-Rank]**, taking undeclared B-Rank stock **40 → 198**. Fourteen are one-per-beast drops across eleven commons, two elites and the boss; **144 are the deposit**, extracted whole on a legendary Resonance Extraction read with forty minutes still on the two-hour clock. At the shop's 750 g B-Rank rate the stock is worth **148,500 g**, of which this clear is **118,500** — against 56,250 spent. **The key returned roughly twice its price in crystals alone.**

**In: 3 Beast Cores [B-Rank]** — both elites and the boss, and **the first B-Rank cores Alexander has ever held.** These are not money: the System shop refuses cores outright, and Section 12.8 makes cores the material ranked gear is forged from. They are artificer stock, on the day he is already due at Priscilla Nakamura's at 19:30.

**In: Instant-Dungeon Key [B-Rank]** — the boss drop, 🎲 d100 89 into the 81–90 band at the Gate's Rank. A plain key with no Premium modifier, catalogue value 45,000 g. **The instance replaced the key that opened it.**

**In: frost-fused carapace plating [B-Rank], one lot of five pieces** — **ruled [B-Rank] at `EVT-000522`** under Profile 1.72's Section 11.1 rule that every holding carries a Rank, defaulting to the Rank of the creature, instance or Gate it came from: here a B-Rank instance boss, and the source is recorded. **Function remains unidentified, which under 1.72 is a statement about identification rather than about Rank.** It stays filed under `special` because its worth is still not mechanical. **Flux Sight returns no Rank and no stats on it**: not unidentified, *uncategorised*. It is **authored with no value, no effect and no Rank** and stands for an owner ruling; see `100_CHARACTER_SHEET.md` and `EVT-000502`.

**Out: the Crystal Key [B-Rank]**, spent on opening — a key is spent whether or not anything inside dies. **Out: 3 Standard Healing Potions** (line closed) and **3 Lesser** (12 → 9), all six drunk recovering from the single critical the instance landed. The **Restoration Draught** and **Status Recovery ×18** were deliberately held in reserve and are untouched.

**Holdings 40 → 41** — keys 2 (the E-Rank spare and the new B-Rank), consumables 7, special **5**, gear 21, materials **6**.

### The Prismatic Cycle: Two Premium Purchases (2026-08-19, `EVT-000494`, `EVT-000496`)

**System-side only; no cash moved.** Cash stands unchanged at **$281,155.22** and no payout is pending from any source.

**Gold across the morning: 108,741 → 107,841 → 116,341 → 60,091.** Three movements, in order:

- **−900 g, Restoration Draught** (`EVT-000494`) — Daily Premium consumable, Prismatic series. Restores Health and Mana to full in one action; clears no injury severity. An authored fixed-price Premium model, not derived from any ordinary anchor. **Consumables 7 → 8.** Banked, unused. Once withdrawn it is an ordinary object under Section 12.5's withdrawn-goods rule and works in anyone's hand — including Owen's.
- **+8,500 g, Daily Random Box** (`EVT-000496`) — the twenty-sixth daily's box, opened on 🎲 d100 **40**, landing 36–60 → System gold at the C-Rank core-buy value. Standard single roll; streak 12 is not a positive multiple of seven, so no upgrade and no second candidate.
- **−56,250 g, Crystal Key [B-Rank]** (`EVT-000496`) — Daily Premium key, Prismatic series, at 125% of the B-Rank key anchor of 45,000 g. **Keys 1 → 2.** Banked, **unused and unentered**.

**Holdings 38 → 40** — keys 1 → **2**, consumables 7 → **8**, special 4, gear 21, materials 5. Both holding lines live in `100_CHARACTER_SHEET.md` `inventory`; this ledger records the transactions and the balances.

**What the key is worth, since it is the largest single gold outlay since the trial.** It opens one sealed Section 17 instance at **B-Rank — one Rank above System Rank C**. Its exclusive modifier fixes the instance's mined deposit roll at **18** before the ×8 B-Rank multiplier, so it holds **144 B-Rank crystals guaranteed** where an ordinary B-Rank instance averages about 84 on `3d6 × 8`. At the shop's 750 g B-Rank crystal rate that is **108,000 g on the floor**, before any boss drop, core, or clear XP, and a solo Bearer in an instant dungeon keeps every deposit undeclared (Section 11.1). It cost 56,250 and returns close to double in crystals alone — which is the trade, against a Rank of danger the Combat Tier explicitly does not soften, because Section 6.7 sizes only what the System imposes.

**Left on the tab and unbought:** the Premium Rune ascending **Dagger Mastery to [B-Rank]**, `unbound-awakened` and NPC-eligible, at **112,500 g** against 60,091 remaining. Affordable only by selling stock; expires at the 2026-08-20 06:00 rotation. The Aegis Guard Shield, Adaptive Titan Legs, and Ascendant Quickstep Charm also stand unbought.

**Materials unchanged this span** — nothing mined, sold, or consumed. C-Rank crystals 40, C-Rank cores 14, B-Rank crystals 40, D-Rank cores 23, E-Rank cores 0.

### Pending Rewards Claimed (2026-08-18 ~21:20, `EVT-000487`)

System-side only; no cash moved. **Gold 100,241 → 108,741** (Daily Random Box purse at System Rank C, 8,500 g). **Ascendant Mindspun Loop [C-Rank]** gained from the second box — accessory, Intelligence +4, banked unequipped (both slots full); holding line in `100_CHARACTER_SHEET.md`. Status Recovery ×17 still unclaimed.

**A later span this evening was played and deliberately not promoted** (`EVT-000488`). No inventory consequence — the five Beast Cores that span would have consumed were never spent; **C-Rank cores stand at 14, D-Rank at 23**.

### Priscilla Nakamura's First Working Session (2026-08-18 19:28-~21:15, `EVT-000485`)

**Identification balance paid in full.** $800 cash handed over on arrival, closing the debt owed since `EVT-000410`. **Cash $282,010.02 → $281,210.02.** No gold movement — the practical session's teaching component draws on materials already deposited at her workshop, not System-shop stock.

**Materials at Nakamura's workshop, drawn down.** Of the 5× Mana Crystal [B-Rank], 1× Beast Core [E-Rank], 8× Beast Core [D-Rank], 7× Mana Crystal [C-Rank], and 2× Beast Core [C-Rank] left as a deposit at `EVT-000410`, **4 of the 7 C-Rank Mana Crystals were consumed** this session — one for her own demonstration, three across Alexander's attempts (one fumbled and destroyed, two successful seatings). These were already out of Alexander's own tracked holdings as of the deposit; **3 C-Rank Mana Crystals remain on her bench**, still not part of this ledger's stock.

**No change to Alexander's own on-person inventory, equipment, or gold.** The Bastion Torso [E-Rank] used for practice was drawn from and returned to storage unchanged — the technique demonstrated does not alter Section 11.5 stat lines (Section 12.8: no player crafting subsystem; what Alexander practiced was execution, not authored gear creation).

### Walt Adamik's Counter, and $42,500 Out the Door (2026-08-17 ~10:00-11:00, `EVT-000446`-`EVT-000447`)

**Two items shown, one bought.** Walt put up a pair of pieces he could not identify himself, both off sellers who wanted them gone.

- **Perimeter Ping [D-Rank]** — slim unmarked wrist-mounted device off a decommissioned strike team's gear haul. Flux Sight at B-Rank read it as a silent proximity alert firing on Gate instability (fluctuation, imminent break, or rupture) within roughly 200 m, with **no offensive or defensive function**. Asking **$1,400**. **Not purchased** — it remains Walt's stock and is not an Alexander holding. Recorded because it is a real, priced, still-available item on a counter he now half-owns, and because a break-warning is worth more to him after two E-Rank breaks in the Red Line Corridor inside eleven days than it was when he declined it.
- **Mana Reservoir [C-Rank]** — small dense stone, cool, faintly veined. Read as a genuine **unbound passive Mana battery**: accumulates ambient Mana while carried, banks it for later draw, attuned to nobody. Asked at $2,800, **bought at $2,500** after Walt came down and then declined to move further ("that's actually where I land"), with his standing unconditional buy-back at cost if it proves worthless. **Cash $45,074.00 → $42,574.00.** Full holding line, including the explicit note that its capacity and draw rate are **unauthored and asserted nowhere**, is in `100_CHARACTER_SHEET.md` `system_state.inventory.gear`.

**One C-Rank Beast Core, given.** Alexander put a **Beast Core [C-Rank]** on the counter and refused money for it — the material Walt named as his real want back at `EVT-000157` and has never been offered since. Stock **9 → 8**. Walt's own open-market estimate for one, to a buyer who does not ask questions: **$6,000–7,000**, and he said plainly he does not intend to sell this one. What came back for it was information rather than goods (`EVT-000446`).

**$40,000 cash, as partnership capital rather than a purchase.** Delivered on the counter at `EVT-000447` against Walt's own costed figure for what a real result inside a week requires — better storage, two vouched people for security and legwork, and buying stock outright instead of brokering what walks in. **Cash $42,574.00 → $2,574.00.** This is not an expense and not a loan: it is the opening stake of `OBJ-29`, against a profit share and standing first-look rights. No paper was signed and no security was taken; the whole instrument is a handshake and a stated term set.

### Two Crypt Instant Dungeons, Full Loot and Gear (2026-08-16 evening, `EVT-000428`-`EVT-000435`)

**First Crypt (`EVT-000428`-`EVT-000429`):** 5 commons, 1 elite, 1 boss killed. 36 mined + 7 beast-drop = 43 C-Rank crystals; 2 C-Rank cores (elite, boss). Boss drop: **Gale Hunter's Gauntlets [C-Rank]**, Predator/Edge Boss Imprint, equipped immediately, displacing the Horizon Gale Gauntlets [C-Rank] to storage. A second boss-drop rune (Mana Bolt, C-Rank) also came from the **second** dungeon's boss, not this one — see below.

**Between dungeons (`EVT-000430`):** second Instant-Dungeon Key [C-Rank] bought, 10,000 g (gold 88,771→78,771). Three self-Mend casts, no material change.

**Second Crypt (`EVT-000431`-`EVT-000434`):** 13 commons, 1 elite, 1 boss killed — every common in the dungeon's population, none left unencountered this time. 56 mined + 13 beast-drop = 69 C-Rank crystals; 2 C-Rank cores (elite, boss). Boss drop: a second Mana Bolt rune [C-Rank], `unbound-awakened` — given to and consumed by Owen Callahan (`ENT-000139`), never entered Alexander's own holdings.

**Exit (`EVT-000435`):** 112 of the combined 152 C-Rank crystals (40 pre-existing + 43 + 69) sold to the System shop at 170 g each = 19,040 g (gold 78,771→97,811), leaving 40 banked — the same figure the stock opened this span at.

**Running totals after this span:** Gold 88,771→97,811 (net +9,040 across the key purchase and both sales). C-Rank crystals 40→40 (round trip). C-Rank cores 5→9 (+4). Stored gear +2 (Horizon Gale Coif and Horizon Gale Gauntlets, both retired this session).

### Returning-Session Ledger Audit and Shop Activity (2026-08-16 15:00, `EVT-000420`-`EVT-000425`)

**Ledger audit (`EVT-000420`).** Dale Pruitt's $60,677.42 payout (`EVT-000415`) was already correctly recorded here and in `140_OBJECTIVES.md`'s `OBJ-20` — this ledger never held the stale figure. Only `100_CHARACTER_SHEET.md`'s `pending_rewards` funds tracker had omitted it; corrected there to $291,636.02 across 3 payouts. Similarly, this ledger already read the B-Rank crystal stock correctly through its own narrated chain (35 → 80 at `EVT-000415`, above); the character sheet's stale `× 35` header is corrected to match.

**Crystal sale (`EVT-000422`).** System-shop sale at standard Section 12.5 rates: Mana Crystal [D-Rank] × 24 (all, 960 g), Mana Crystal [C-Rank] × 100 of 140 (17,000 g), Mana Crystal [B-Rank] × 40 of 80 (30,000 g). **47,960 g total. Gold 47,561 → 95,521.** Stock after: D-Rank crystals **0** (line closed), C-Rank crystals **40**, B-Rank crystals **40**.

**Two Daily Random Boxes opened (`EVT-000423`).** Box 1 (🎲 d100 70, rune) taught Mana Bolt at C-Rank, bearer-bound. Box 2 (🎲 d100 13, potion cache, standard tier) yielded 3 Standard Mana Potion (stock 2 → 5).

**The Mana Bolt rune consumed (`EVT-000424`).** Ascended the known Mana Bolt [D-Rank] Practiced to [C-Rank] Novice (magnitude floor holds the multiplier at ×1.15). Rune destroyed in the teaching — never entered this ledger as a standing holding.

**Adaptive Titan Coif bought and equipped (`EVT-000425`).** Daily Premium Obsidian-cycle purchase, 6,750 g. **Gold 95,521 → 88,771.** Equipped to head, displacing the **Horizon Gale Coif [D-Rank]** (Agility +2, physical reduction 5%, purchased at Horizon Outfitters, $3,000, `EVT-000094`), which banks unequipped — the head slot's first change since `EVT-000094`.

**No cash moved in this span** — gold-only transactions throughout.

### The Longsword [C-Rank] Given to Owen Callahan (2026-08-16 ~12:40, `EVT-000416`)

**No longer Alexander's property.** The Beast Den boss drop from `EVT-000375` — Strength +7, weapon power 7, armed strike ×0.85, **Predator Boss Imprint** (+1 further Agility) and **Edge signature Echo** (once/scene, +1 modifier step on one close attack against an already-injured target), condition Excellent — drawn from the dimensional inventory and handed over outright. Tracked henceforth against Owen's own holdings on `ENT-000139`.

**Section 11.5 gives an ordinary hunter no five-stat sheet**, so the Strength +7 and the imprint's Agility grant him nothing. What he actually receives is **weapon power 7 and the ×0.85 Longsword chassis** against the Boss-Imprinted Quickknife's power 2 and ×0.75 — `(250÷4 + 7) × 0.85` against `(250÷4 + 2) × 0.75`, a real upgrade rather than a cosmetic one, and the reason the swap matters mechanically as well as sentimentally. **Blooded the same afternoon** across a full D-Rank clear (`EVT-000417`), including the boss kill.

His Quickknife is retained but displaced.

### The Frozen Gallery Instant Dungeon — Loot, Undivided (2026-08-16 13:10-15:00, `EVT-000417`)

Opened on the banked **Instant-Dungeon Key [D-Rank]** (bought at `EVT-000332`, 2,250 g, banked since). **Key spent** — none remain at D-Rank; keys at E and C stay banked.

**All of it Alexander's outright and none of it split.** Section 17 makes a solo Bearer's instance legally unregulated space — no contract, no declaration, no BGM jurisdiction — and every deposit is his. **This is a deliberate departure from `EVT-000403`**, where the Crypt's full deposit was shared with Owen because `OBJ-25`'s own terms required a shared clear; here nothing required it and nothing was offered.

| Item | Quantity | Source |
|---|---:|---|
| Mana Crystal [D-Rank] | 12 | beast-drop, one per creature (9 commons, 2 elites, 1 boss) |
| Mana Crystal [D-Rank] | 12 | mined deposit — 🎲 3d6 = 6 × D-Rank multiplier 2 (Section 11.1) |
| Beast Core [D-Rank] | 3 | both elites and the boss |
| **Longsword [D-Rank]** | 1 | boss drop — 🎲 d100 7 → equipment, 🎲 d20 4 → Longsword |

**D-Rank crystal stock was 0 before this** — every prior D-Rank crystal was sold at `EVT-000233` and `EVT-000236` — so the 24 open a fresh holding line. Cores go to 20 → 23; the shop still refuses cores at any price.

**The Longsword [D-Rank]** carries Strength +4, weapon power 4, armed strike ×0.85, a **Serpentine Boss Imprint** (+1 further Agility) and an **Impact signature Echo** (once/scene, +1 modifier step resisting stagger or knockdown from a single hit). Condition Excellent. Banked, unequipped — a lighter twin of the weapon given away three hours earlier, and currently spare.

### Dale Pruitt's B-Rank Harvest — 64 Mined, 19 Declared (2026-08-16 08:00-12:00, `EVT-000415`)

Confirmed B-Rank Crypt, correctly staffed at nine combat-rated against a legal minimum of eight. Alexander worked three veins across the two-hour clear window and **mined 64 B-Rank crystals solo**.

- **19 declared** to Dale Pruitt's manifest. Reston logged 12; the declared harvest pool is **31**.
- **45 kept undeclared** in the dimensional inventory — the same practice as the Cicero Scar, the Frozen Gallery, Halsted Depot, and Wade Bishop's own trial. **B-Rank crystal stock 35 → 80.**

**Payout: $60,677.42**, filed 2026-08-16, processing on the standard window. Harvest's authored share is 20% of the total declared clear, output-weighted (Section 13.2): the clear valued at **≈$495,000** including combat drops, giving a $99,000 harvest pool, of which Alexander's 19/31 is $60,677.42. **Not received.**

**No cash or gold moved on this job.** Nothing was sold, and the 45 private crystals have the same disposal problem as every other undeclared stash: the System shop is the only channel that will take them, at 750 g each.

### The Dormant Core Identified, and Placed in Nakamura's Custody (2026-08-15 ~21:20, `EVT-000410`)

**Identified at last, after sitting unexplained since 2026-08-11.** Priscilla Nakamura (`ENT-000203`) established that the **Dormant Core, origin unclassified [S-Rank]** is **not a natural Gate-drop core at all** — it is a made housing built to read as one, holding **at least two distinct mana signatures fused rather than layered**, held stable by something she cannot account for. She has heard the result claimed as theoretically possible and never personally seen one produced. Function, activation method, and maker remain unknown; she declined to disassemble it on a first look without explicit instruction.

**Custody, not transfer.** The core is **physically at her workshop** as of tonight and is out of the dimensional inventory accordingly — it renders in no `/system gear` panel while it sits on her bench. **Ownership is unchanged and remains Alexander's.** Her stated condition was that it stays for real work rather than leaving after a look, which he accepted; there is no sale, no fee against the object itself, and no agreed date for its return.

**Provenance given honestly and in full:** bought from Walt Adamik (`ENT-000147`) 2026-08-11 for $3,000 of a $5,200 pair (`EVT-000280`), off an unnamed original seller who took $1,200 and wanted it gone the same day. She registered the candor as trust-building rather than a problem, consistent with her indifference to origin.

### Materials Left With Nakamura as a Deposit of Intent (2026-08-15 ~21:25, `EVT-000410`)

Drawn from the dimensional inventory onto her bench in one pass, unprompted, to make the arrangement's seriousness legible rather than stated:

| Material | Quantity | Stock after |
|---|---:|---:|
| Mana Crystal [B-Rank] — undeclared | 5 | 35 |
| Mana Crystal [C-Rank] | 7 | 140 |
| Beast Core [C-Rank] | 2 | 5 |
| Beast Core [D-Rank] | 8 | 20 |
| Beast Core [E-Rank] | 1 | **0** |

**The E-Rank core line closes entirely** — the single core from the Overgrown Temple extraction (`EVT-000327`) was the whole remaining stock, and Alexander's stated intent named two. Corrected against actual holdings at the table; one was given. That line is now disposed and renders in no panel.

**No cash and no gold changed hands, and none of this material was declared or sold** — a straight transfer of undeclared and unsaleable stock into a working artificer's keeping. Her own read of it, unprompted: *"That's a licensed harvest crew's good month."*

### The Nakamura Arrangement — Terms and a Debt Owed (2026-08-15 ~21:20-21:30, `EVT-000410`)

Written into her own ledger book, not a phone:

- **Identification: $800 flat**, billed tonight for the core read. **Owed and unpaid** — not yet a cash movement.
- **Research and teaching, combined as one line: $200/hour**, sessions running 3-4 hours (**≈$600-800 per session**).
- **First three sessions are a mutual trial** — same rate, no discount, no refund, an out clause for either side.
- **Alexander supplies materials each session**; she does not draw her own stock for his experiment.
- **First working session: Tuesday 2026-08-18 evening**, exact time to follow by text.

**Contact routed direct, deliberately.** Alexander gave his real personal number rather than let the channel run through Wade Bishop — *"Let's not get Wade in the middle"* — and she copied it into the ledger under his name rather than leaving it loose.

### Three Owned Holdings That Rendered Nowhere (2026-08-15 16:45, `EVT-000407`)

Three items this ledger already recorded as banked had **no holding line in `100_CHARACTER_SHEET.md`'s `system_state.inventory.gear`** — the list `/system gear` renders and takes each group's count from (Profile Section 15.3.2). They were owned throughout and are unchanged in ownership; only their visibility in the Bearer's own window was missing.

- **Quickknife [C-Rank]** — Good · Agility +7 · weapon power 7 · armed strike ×0.75. Bought 2,000 g on 2026-07-27 (`EVT-000069`); unequipped at `EVT-000339` when the S-Rank dagger took main hand and the Ghost Quickknife moved to off-hand. Recorded banked in this ledger at that Event and never given a holding line on the sheet.
- **Quickstep Charm [D-Rank]** — accessory · Agility +2. Beast Den instant-dungeon loot, `EVT-000303`.
- **Arcanist Torso [D-Rank]** — torso armor · Intelligence +2 · ≈6% reduction. Shattered City instant-dungeon loot, `EVT-000304`.

All three restored to the sheet's `inventory.gear`: **stored gear 12 → 15, total holdings 32 → 35.** No acquisition, disposal, transfer, or price is involved, and no cash or gold moved.

### A Solo C-Rank Instant Dungeon, Owen Present at Last (2026-08-15 ~14:05-14:30, `EVT-000400`-`EVT-000403`)

Opened from the apartment on the banked **Instant-Dungeon Key [C-Rank]**, Owen along as backup mender/observer per `OBJ-25`. Crypt archetype, 5 commons/2 elites/1 boss, all C-Rank; cleared by ambush (Silent Step, Twin Fang) then Rupture and a dagger finish on the boss — full detail in `160_CAMPAIGN_CHRONICLE.md`. One hit landed (16 dmg, Vambrace's first trigger); Level 21→22 crossed on the second elite's kill.

**Loot, fully extracted** (`EVT-000403`): 8 beast-drop crystals, the 48-crystal mined deposit, 3 C-Rank cores, and a replacement **Instant-Dungeon Key [C-Rank]** from the boss. Solo Bearer, no declaration (Section 17).

**Closes `OBJ-25`** — Owen present, non-combatant, exactly as its terms specified.

### The Cicero Scar C-Rank Harvest Job (2026-08-15 ~09:20-12:20, `EVT-000398`)

Confirmed C-Rank, archetype Hive. Ada Reyes coordinating. A strong Keen Sense read found the richest vein; a critical Exploit Pattern/Resonance Extraction read mapped it whole. **21 crystals mined, 12 declared, 9 kept undeclared** — the same practice as every prior harvest job.

**Harvest-share payout: $9,418.60**, output-weighted against the crew's declared mined total (12 of 43) under a $168,750 declared clear value, filed and processing.

### The Watcher Torso, Delivered and Worn (2026-08-14 ~22:10, `EVT-000384`, `EVT-000385`)

**Watcher Torso [B-Rank]** — Perception +5, physical reduction 12%, Carapaced Boss Imprint +1 Vitality, Impact Echo (once per scene, +1 modifier step resisting stagger or knockdown from a single hit). The B-Rank harvest trial's owed boss drop, rolled live at `EVT-000370` and **physically handed over by Wade Bishop in the Region V lot** at `EVT-000384`, closing the last undivided piece of that Gate's loot. It was never part of the $221,540 cash figure.

**Equipped the same night** (`EVT-000385`), displacing the **Adaptive Bastion Torso [E-Rank]** worn continuously since `EVT-000094` — which is banked unequipped, not sold. Also equipped in the same pass: the **Warded Vambrace [A-Rank]** (bought `EVT-000280`, banked since 2026-08-11), retiring the **Ascendant Hunter's Band [E-Rank]** from accessory slot 1 to storage. Both retired pieces remain Alexander's property.

**The trial Gate's remaining undivided loot is unchanged:** 25 B-Rank crystals and 1 B-Rank core still sit in the combat pool pending Wade's physical split (`OBJ-27`).

### The Unfiled Ironline Report (2026-08-14 ~22:10, `EVT-000384`)

The physical folder Wade Bishop brought for review under the `EVT-000345` terms — three pages, Ironline letterhead, **not filed** — went into Alexander's dimensional inventory when the lot emptied. It records a **roster of eight against five hunters actually present**, padded with three bench names (**Priyanka Osei, Marcus Delray, Toby Fenwick**) who carry real B-Rank cards and were not there. Wade named the practice himself: Brannigan's office pads a short roster this way as a matter of routine, and nobody checks unless someone dies.

This is documentary evidence of a falsified filing, in Alexander's possession rather than the guild's. **Whether Wade can still file without it was never raised by either of them and is unestablished.** No mechanical line; its value is entirely evidentiary, and it is held as a `special` inventory kind for exactly that reason (Section 15.3.2).

### Seed for a Balcony (2026-08-14 ~19:15, `EVT-000379`)

**Thirty-eight packets of vegetable, herb, and chili seed**, bought at **Glenwood Garden and Feed** (`ENT-000201`) on Glenwood Avenue for **$146.30 cash** — four tomatoes including two heirlooms, a full column of chilis, three basils, and a long run of herbs and vegetables. Ordinary mundane property, carried physically rather than banked in the dimensional inventory; **given to Owen Callahan in effect if not in words** — he took the bag on the pavement outside Edgewater and carried it home himself. Half of it will not germinate until spring, which Owen identified out loud as the actual content of the gift.

Not individually tracked beyond this line. The Rogers Park balcony they are for was described at `EVT-000245` and agreed with total gravity at `EVT-000241`.

### The B-Rank Crystals — 84 Banked, 44 Sold (2026-08-14 ~14:30, `EVT-000342`, `EVT-000343`, `EVT-000359`)

**Mana Crystal [B-Rank]: 84 → 40.** One hundred and four were mined solo from the legendary-sited vein during the two-hour clear window of Wade Bishop's B-Rank harvest Gate (`EVT-000342`); **20 were declared** to Wade's harvest pool and **84 kept undeclared** in the dimensional inventory (`EVT-000343`), consistent with the practice established at the Frozen Gallery and Ada Reyes's C-Rank job.

**Forty-four sold to the System shop (`EVT-000359`) at the Section 12.5 B-Rank crystal rate of 750 g each: 33,000 g. Gold 6,061 → 47,561.** No cash moved; USD and gold do not exchange (Section 12.5), so this transaction does nothing for the tuition liability, the training venue, or any world-side price.

**Forty remain banked, unsold, undeclared.** The System shop is the only channel that will take them: the crystals were withheld from a pool that has already been filed, so no licensed declaration route remains open for them. Selling through the shop is also the step that removes them as physical objects — it leaves no manifest, no filing, and no witness, which is the point of the channel and the exposure it avoids.

**Written here for the first time at Checkpoint 0065.** The 84 were established by `EVT-000343` and carried in `180_CURRENT_STATE.md`, but neither this ledger nor `100_CHARACTER_SHEET.md`'s `shop_holdings` was given a holding line for them when Checkpoint 0064 derived its target set. The sale forced the omission into view and it is repaired here rather than left for a later checkpoint.

### The Daily Random Box — 8,500 Gold (2026-08-14 ~14:30, `EVT-000358`)

The streak-upgraded box from the twenty-first daily (`EVT-000338`) was opened and rolled its two candidates in full: 🎲 d100 19 → potion cache, C-Rank tier **standard**, 🎲 d4 4 → **3 Standard Mana Potions**; and 🎲 d100 50 → **System gold**, the C-Rank core-buy value of **8,500 g**. The player took the gold. Per Section 8.1 the unchosen candidate produced nothing and never entered inventory — **no potions were added.** Gold 6,061 → 14,561, before the crystal sale above carried it to 47,561.

### The Rogers Park Deposit, and a Debt Owed (2026-08-12 09:30, `EVT-000300`)

The Rogers Park lease signed with leasing agent Corinne Whitlock (`ENT-000181`): full **$9,750 certified deposit** paid by Alexander, two sets of keys issued. **Cash: $44,579.60** (from $54,329.60 — the $9,750 deposit).

**Owen owes Alexander $2,925** — half of the original, pre-landlord-markup deposit ($5,850 ÷ 2), not half of the inflated $9,750 total (the landlord's extra ask above that baseline falls on Alexander alone, per player ruling). Recorded as a pending receivable; not yet repaid in scene.

### Two Solo D-Rank Instant Dungeons, Boxes, and a Redundant Rune (2026-08-12 ~10:10-11:30, `EVT-000301`-`EVT-000304`)

All three pending Ability Points +3 stacks claimed and allocated (Strength +2, Agility +6, Intelligence +1) — no items changed hands. Three Daily Random Boxes opened: two potion caches (**3 Lesser Healing Potion**, **3 Lesser Mana Potion**, both banked) and a redundant Flash Step rune (already known at a higher Rank), **sold for 2,250 g**.

Two standard **Instant-Dungeon Key [D-Rank]** bought (2,250 g each) and consumed opening two solo clears:

- **Beast Den** (7 common, 1 elite, 2 boss-Rank alphas, all D-Rank) — full clear. Loot: **31 D-Rank crystals** (sold, 1,240 g), a **Quickstep Charm [D-Rank]** (Agility +2, banked unequipped), and a **Mana Bolt rune [D-Rank]** (consumed on the spot, teaching Mana Bolt [D-Rank] Novice — no longer an item).
- **Shattered City** (7 common, 2 elite, 1 boss, all D-Rank) — full clear, zero damage taken. Loot: **34 D-Rank crystals** (sold, 1,360 g) and an **Arcanist Torso [D-Rank]** (Intelligence +2, ~6% reduction, banked unequipped).

**Beast Core [D-Rank]: 8 → 28** (10 per clear, both unsold — the shop still refuses cores at any price).

**Gold: 1,491 → 3,741** (rune sale + first key) **→ 2,731** (first clear's crystals) **→ 481** (second key) **→ 1,841** (second clear's crystals). **Cash unchanged this span at $44,579.60** — no USD transaction in either dungeon.

### A Grey-Market Lead From Elias Ward (2026-08-11 ~11:20, `EVT-000285`)

Bought for **$400 cash** at Elias Ward's (`ENT-000177`) shop, a separate warehouse-district pawn seller from Walt Adamik: a sealed envelope holding a name and pattern heard repeated near the district's cold-storage lot — opened at `EVT-000287`, reading **Cormant Holdings**, connected with fair confidence (not certainty) to the unidentified lanyard logo from `EVT-000189`. See `OBJ-21` and `110_WORLD_LEDGER.md` `ENT-000166`.

**Cash: $54,329.60** (from $54,729.60 — the $400 purchase).

### Two Grey-Market Pieces Bought From Walt Adamik (2026-08-11 ~11:00, `EVT-000280`)

Bought together for **$5,200 cash** at Walt Adamik's (`ENT-000147`) shop, warehouse district — both auto-identified in full on entering the dimensional inventory (Section 12.5, the `EVT-000216` mechanism):

- **Warded Vambrace [A-Rank]** — $2,200 of the combined price. Once per exchange, when a hit lands against Alexander, reduces that hit's damage by 30% (multiplicative with existing reductions). No passive Stat bonus. Banked, unequipped — both accessory slots are currently full (the two Ascendant Hunter's Bands).
- **Dormant Core, origin unclassified [S-Rank]** — $3,000 of the combined price. Genuine S-Rank on auto-identify, but carries no catalog function or activation method — bespoke, not manufactured, nothing like it in the System shop's tables. True purpose unknown; the pending meeting with the unlicensed artificer (working alias "Marnie," brokered by Walt) is the live lead toward identifying it. Banked, unequipped.

Original seller took $1,200 for the core and left fast, wanting it gone same-day; Walt's own margin on the pair reflects a fence out past his usual depth, by his own admission. Walt is separately holding the artificer introduction terms from `OBJ-16` ($200–300 cash, possibly waived, consultation not commission) and has pushed for a same-day meeting at Alexander's request — two messages sent to Marnie, no reply yet as of this entry.

**Cash: $54,729.60** (from $59,929.60 — the $5,200 purchase). Gold unchanged: **1,491**.

### The Collapsed Rail Cutting Gate — Owen's Second Sponsored Job (2026-08-11, `EVT-000261`-`EVT-000266`)

Confirmed E-Rank Gate, two-person sponsored contract under Owen's C-Rank licence (Section 9.4 high-Rank sponsor exception), split fifty-fifty, no leader's share, loot declared at exit. Archetype Overgrown Temple; Owen fought alone (delegated-sweep departure from the Cicero precedent), Alexander support-only.

- **21 E-Rank crystals** (9 beast-drop + 12 mined deposit, fully extracted) — declared in full, $150 each = $3,150.
- **3 E-Rank cores** (2 elite + 1 boss) — declared in full, ≈$375 each = $1,125.
- **Declared total: $4,275**, split 50/50 — **$2,137.50 each**, processing 1–2 business days. Nothing held back privately this job.
- **Bastion Torso [E-Rank]** (Vitality +2, 3% reduction, Carapaced Boss Imprint) — the Overgrown Temple's bonus loot roll, kept out of the declaration as ordinary licensed property. Banked, unequipped.
- **3 Lesser Mana Potions** — the boss's own drop, System-origin, no licensed-market path. Banked, unwithdrawn.

Gold unchanged (no shop transaction this job): **1,491**. Cash unaffected until the payout lands.

### Three Solo Instant-Dungeon Clears (2026-08-09 afternoon, `EVT-000231`-`EVT-000236`)

Detail: `160_CAMPAIGN_CHRONICLE.md` `EVT-000231`-`EVT-000236`. Three D-Rank keys consumed (Flooded Mine, Frozen Gallery, Shattered City), none banked. Loot, crystals all sold: 75× Mana Crystal [D-Rank] (+3,000 g); banked 8× Beast Core [D-Rank] (unsold), **Titan Legs**/**Watcher Feet [D-Rank]** (unequipped). Boss rune taught **Silent Step [E-Rank] Novice**. Dungeon 1's 22-crystal deposit lost. Potions: Standard 0→2, Lesser unchanged. **Gold** 12,726→**13,151**, cash unchanged. **Dagger Mastery→Master; Rupture→Expert.**

### System Shop Session — Crystal Liquidation and Gear Retirement (2026-08-09, `EVT-000227`-`EVT-000228`)

Daily Premium rotation resolved live (Crimson series); sold 71 C-Rank + 14 E-Rank crystals (12,210 g), bought the Armory Key [D-Rank] (2,813 g), swapped Legs/Feet from E-Rank to D-Rank (540 g, retiring Shin Guards + Titan Boots), and sold seven retired/unused pieces (337 g). **Net gold: 3,532 → 12,726.** No cash moved; no NPC contact. Full breakdown in `100_CHARACTER_SHEET.md` and `160_CAMPAIGN_CHRONICLE.md` `EVT-000227`-`EVT-000228`.

### Harvest Job and Random Boxes (2026-08-09, `EVT-000223`-`EVT-000224`)

- **C-Rank crystal x4** (was x75), private (18/93 declared, $9,000 share; 71 sold to the System shop `EVT-000228`, see above). Rich-Gate ruling, detail at `EVT-000224`.
- **Greatarm [D-Rank]**, **Seer's Lens [D-Rank]** — unequipped, `EVT-000223`; lines in `100_CHARACTER_SHEET.md`.

### Gate Direction Finder (Purchased 2026-08-08)

- **Gate Direction Finder [E-Rank]** — handheld directional instrument bought from Elias Ward (`ENT-000177`) for **$800 cash** (`EVT-000216`). It points toward the strongest nearby active Gate signature but supplies no distance, identity, or Rank. Alexander's D-Rank Keen Sense read established that the device was genuine, untampered, and carried no hidden transmitter; it did not reveal a Gate's location or Rank. Includes its calibration key and a six-month seller warranty. **Owned by Alexander and carried at the 2026-08-09 07:50 anchor.**

### 2026-07-23 to 2026-08-02 — Early Gear, Premium Tabs, Hauls and Five Solo Clears — **compressed, fully superseded**

Every acquisition in this window has since been sold, consumed, retired, or absorbed into `100_CHARACTER_SHEET.md`'s `system_state` (which owns gold, equipment slots, the dimensional inventory, and the Daily Premium cycle under Profile Sections 11.5, 12.5, 12.9, 14.1). Per-item provenance, rolls, and gold traces live in `160_CAMPAIGN_CHRONICLE.md` at each cited Event; restating them here costs the `/system gear` budget on every render for nothing.

- **Ironbound starting kit, 2026-07-23** (`EVT-000058`) — jacket, E-Rank Quickknife, gauntlets, shin guards. **All superseded; all sold back to the System shop.**
- **Daily Premium, 2026-07-29 and 2026-07-30** (`EVT-000083`, `EVT-000088`) — the Adaptive Bastion Torso [E-Rank] and both Ascendant Hunter's Bands (E and D), the **Mender's Seal** (banked, still unused), and two runes consumed on use teaching **Stone Skin [D-Rank]** and **Rupture [E-Rank]**.
- **Daily Random Boxes, 2026-07-31** (`EVT-000089`) — two 500 g purses, Titan Boots [E-Rank], and a small potion cache.
- **Red Line Corridor boss drop, 2026-07-24** (`EVT-000059`) — **Armored Greave [E-Rank]**, never equipped; its split status was left undecided at `EVT-000060` and has never been raised since.
- **Mining tools** — the original resonance chisel broke on a natural fumble at `EVT-000080`; two replacements bought 2026-07-29 ($75 and $140, `EVT-000083`), both undamaged.
- **Horizon Outfitters, 2026-07-31** (`EVT-000094`) — $15,500 for the **Horizon Gale Gauntlets [C-Rank]** and **Coif [D-Rank]**, both worn for weeks and **both retired this month** (`EVT-000425`, `EVT-000429`); banked, unsold.
- **Sable & Kern Halsted Depot job, 2026-07-31** (`EVT-000095`) — 10 mined, 4 sold privately, 6 declared; **$9,000 received 2026-08-05**.
- **Ashfield Gate haul, 2026-07-28** (`EVT-000080`, split `EVT-000083`) — $52,500 pool, Alexander's $9,450 equal share received. **The Longshot [C-Rank] remains unappraised and unsold**, proceeds still owed five ways — the oldest genuinely open item on this ledger.
- **Five solo instant-dungeon clears, 2026-07-31 to 2026-08-02** (`EVT-000096`-`EVT-000114`) — never hit in any of them. **Kept:** the **Ghost Quickknife [B-Rank]** (18,000 g, still the equipped off hand), **Keen Sense** and **Dagger Mastery** from catalogue runes, and the E-Rank cores that later fed the Walt Adamik trade. Everything else sold.

---
## Generic Holdings

- **$59,929.60 USD** cash as of 2026-08-09 ~16:35 (`EVT-000239`) — **$59,992.00 → $59,929.60**, a $62.40 Thai delivery for two with a four-pack, the evening Owen came over. $9,000 harvest share still processing. Gold **13,151** as of `EVT-000236`, unchanged since.
- **Change of civilian clothes**, packed for the 2026-07-29 evening Coalition meeting so as not to arrive looking like he'd trained or fought (`EVT-000083`). Mundane, untracked individually.
- Active BGM-issued hunter license, E-Rank card (~10 days old as of 2026-07-24) — the credential, not a weapon or tool.
- Ordinary krav maga training gear (wraps, mouthguard, gym clothes) and a modest personal wardrobe.
- Standard studio apartment lease in Chicago (rent per Profile Section 12.4, ≈$1,400/month — an ordinary cost of living, not separately tracked as an asset).

**Historical note, `EVT-000114` (2026-08-02), long superseded.** System-shop **gold**, the dimensional inventory's banked holdings, equipment slots, and the Daily Premium cycle are **Bearer state owned by `100_CHARACTER_SHEET.md`'s `system_state`** (Profile Sections 11.5, 12.5, 12.9, 14.1) — that record governs their current values; this ledger does not restate them. Profile 1.2 normalization and loadout state were adopted under `EVT-000072`; premium offer Ranks migrated under Profile 1.3 (`EVT-000073`); Profile 1.4 added weapon power (`EVT-000074`); World Rule Profile 1.10→1.11 adopted additively at `EVT-000100`. No ownership or provenance changed by any of these.

## Pending Income

### Cash Position — current as of 2026-08-15 ~16:30 (`EVT-000399`)

**$45,074.00.** One receipt this session, no spending:

| Change | Amount | Running total |
|---|---|---|
| Start (Checkpoint 0069) | — | **$42,936.50** |
| Rail cutting Gate's overdue half-share, cleared (`EVT-000399`) | +$2,137.50 | **$45,074.00** |

**Gold unchanged at 47,561** — no shop transaction. Daily Premium tab hasn't rotated live yet.

### Pending — as of 2026-08-18 15:30

**All three payouts landed this morning (`EVT-000464`), checked by phone before the daily's regimen finished cooling down:**

- ~~**$221,540.00** — Wade Bishop's trial payout, filed Friday 2026-08-14~~ — **RECEIVED**, first business day of its stated window.
- ~~**$9,418.60** — Cicero Scar harvest cut (`EVT-000398`), filed Saturday 2026-08-15~~ — **RECEIVED**, same window.
- ~~**$60,677.42** — Dale Pruitt B-Rank harvest cut (`EVT-000415`), filed Sunday 2026-08-16~~ — **RECEIVED**, second business day of its window.

**Total received: $291,636.02. Nothing remains pending from any of the three.**

**Cash on hand: $278,155.22** — unchanged as of 2026-08-21 13:01 (`EVT-000587`); no USD has moved since the vambrace on 2026-08-20. **One agreed future charge outstanding: $1,050.00** to Priscilla Nakamura, seven days' monitoring at $150/day, payable at the end of the week. Prior: unchanged at 15:35 (`EVT-000572`). Last movement 12:22 (`EVT-000565`), one movement since: **−$3,000.00** for the second Warded Vambrace [A-Rank] from Walt Adamik. Prior: **$281,155.22** as of 2026-08-18 23:20 (`EVT-000491`). Two movements since the three payouts landed: **−$800.00** paying Priscilla Nakamura's identification balance in full (`EVT-000485`) and **−$54.80** for Thai takeaway on the ride home from LaSalle (`EVT-000491`, the place on Clark). Nothing pending from any source.

**Prior line, superseded — cash on hand: $282,010.02** — as of 2026-08-18 16:15 (`EVT-000480`). $293,810.02 held after the three payouts landed, then **−$11,800.00** for the Warded Greaves [C-Rank] at Horizon Outfitters. Gold **97,811 → 101,441 → 100,241** (two 10,000 g key purchases and 23,630 g in crystal sales during the dungeon span, then −1,200 g for the C-Rank Arcanist Feet from the standard shop catalogue — see `100_CHARACTER_SHEET.md`).

**The thin stretch is over.** Alexander is carrying more cash than at any prior point in the campaign. $800 is still owed to Priscilla Nakamura with no due date named, trivially covered.

### Owed Out — as of 2026-08-18 15:30

- **$800.00** — Priscilla Nakamura (`ENT-000203`), identification of the Dormant Core [S-Rank], billed at her difficulty rate at `EVT-000410` and **not paid at the workshop**. No due date named; the next natural settlement point is tonight's working session. Unchanged.
- ~~**$400.00** — Duane (`ENT-000199`), the freight yard off Ashland~~ — **PAID**, cash on arrival, 2026-08-17 ~17:55 (`EVT-000453`). No longer owed.

**Covered.** See the cash note above the Owed Out heading.

### Owed In — opened 2026-08-17

- **A result, not a sum** — Walt Adamik (`ENT-000147`) owes the first demonstrable return on the `OBJ-29` partnership capital by **2026-08-24**, the one-week mark he priced the $40,000 against himself. See `140_OBJECTIVES.md` `OBJ-29` for the term set and what counts as delivery. No repayment schedule exists and none was asked for: the instrument is equity in an operation, not a loan.

### Historical

**Nothing else currently outstanding.** The Denise Ferro share below and the collapsed rail cutting Gate's share above both cleared, overdue but landed.

### Received — closed 2026-08-07 (overdue processing)

The Denise Ferro rail-corridor payout finally cleared, well past the stated 1–2 business day window (job was 2026-08-04, a Tuesday; landed 2026-08-07, a Friday — three business days late). Alexander did not chase it through Kesha or Denise; it simply cleared when checked.

- **$40,000.00 exactly** — Alexander's net share of the 2026-08-04 C-Rank harvest job at a warehouse-district rail-corridor site, run by Denise Ferro (`ENT-000148`) for a Coalition-run crew (`EVT-000140`). Twenty C-Rank crystals declared (six from a resonance-guided pocket, fourteen from ordinary work) at the licensed C-Rank anchor (~$2,500 each, Section 12.1) = $50,000 gross; standard 80/20 split (her cut 20% off the top) nets $40,000.00 even. Cash **$20,806.50 → $60,806.50**.

### Received — closed 2026-08-05 (`EVT-000153`)

Both cleared overnight processing and landed together the morning of 2026-08-05. Cash went **$10,051.00 → $20,813.50**. Retained here as the provenance of that cash.

- **$9,000** — Alexander's even-fourth share of the Halsted Depot C-Rank harvest job with Sable & Kern (`EVT-000095`), filed 2026-07-31.
- **$1,762.50** — Alexander's half of the Cicero Gate's declared pool (crystals + cores), filed 2026-08-03 (`EVT-000121`).

The **Longshot [C-Rank]** from the Ashfield haul remains unsold and unappraised — no one on the crew uses a bow; its eventual proceeds are still pending Priya's filing.

### Received — closed 2026-07-29 (`EVT-000083`)

All three previously-pending payouts released and landed together the evening of 2026-07-29, after Kesha Morrison traced an apparent processing discrepancy to a stale account-sync issue at the Coalition desk and re-saved the record. Cash went **$1,705 → $34,381**. Retained here as the provenance of that cash.

- **≈$2,313** — equal-fifth share of the Red Line Corridor contract's closing pool ($10,000 D-posted contract payout + ≈$2,850 in beast-drop/mined-crystal and core sale value at licensed rates, standard 10%-leader/90%-equal split). Filed with the Coalition and BGM Region V on 2026-07-25 (`EVT-000060`).
- **≈$5,700** — harvest-share cut of the Cicero Scar C-Rank job's declared pool (7 declared C-Rank crystals of the harvest crew's 19, weighted share of the crew's 20% cut of a ≈$77,500 declared pool). Filed with Ada Reyes (`ENT-000134`) on 2026-07-25 (`EVT-000063`).
- **≈$24,663** — harvest-share cut of the Frozen Gallery C-Rank job's declared pool under the authored support/harvest terms (Profile Section 13.2): 41 of the harvest crew's 91 declared C-Rank crystals against a $273,750 declared pool. Filed at declaration on 2026-07-26 (`EVT-000068`). His largest single payout to date.

Coalition payouts process in **2–3 business days** from filing; past that the desk will trace one (`110_WORLD_LEDGER.md`, established `EVT-000083`).

## Disposed — No Longer Owned

Relocated here from `100_CHARACTER_SHEET.md` at `EVT-000366`. Profile Section 15.1 is explicit that **disposed holdings never render** — *"a stored line whose quantity is zero, or whose canonical entry records it as sold, consumed, given away, or lost, is ledger history and is absent from every panel"* — so a disposed line has no business in the live inventory a panel reads. It is ownership history, and this file is the ownership record.

- **Disposed, no longer owned — compressed** (full per-item detail in `160_CAMPAIGN_CHRONICLE.md` at each cited Event). **This session:** Armory Key [D-Rank] consumed opening Dungeon 1 (`EVT-000231`; its guaranteed-equipment modifier landed the Titan Legs). Mana Crystal [D-Rank] x0 — 17 from Dungeon 1 sold for 680 g (`EVT-000233`) and 58 from Dungeons 2-3 sold for 2,320 g (`EVT-000236`); Dungeon 1's own 22-crystal mined deposit was never extracted and was lost when the boss kill closed the instance (Section 17). Instant-Dungeon Key [D-Rank] x0 — one bought opened Dungeon 2, its boss-drop key opened Dungeon 3, and Dungeon 3's boss dropped a rune rather than a key (`EVT-000233`-`EVT-000235`). **Earlier:** E-Rank crystal x0 (final 14 sold, 140 g, `EVT-000228`; the prior 112 sold for 1,120 g, `EVT-000180`). E-Rank core x0 (all 15 traded to Walt Adamik for the Suppression Emitter and Lockpick Set, `EVT-000212`). Instant-Dungeon Key [E-Rank] x0 (`EVT-000150`-`EVT-000152`). Quickstep Charm [E-Rank] sold, 20 g (`EVT-000118`). Channeling Focus [E-Rank], Guard Shield [E-Rank] x2, Titan Boots [E-Rank] x2, Arcanist Legs [E-Rank], Shin Guards [E-Rank], Greatarm [D-Rank], Seer's Lens [D-Rank] all sold for 337 g combined at the 25% resale rate (`EVT-000228`). Rune teaching Stone Skin given to Owen Callahan (`ENT-000139`) and consumed, teaching him Stone Skin [D-Rank] Novice (`EVT-000178`). Standard Mana Potion x0 from 2026-08-06 — bought 75 g and given to Owen the same minute, establishing that a System Mana potion refills an awakened non-Bearer's well (`EVT-000180`).

- Rune teaching Flash Step [D-Rank] — **given to Owen Callahan and consumed, `EVT-000255`.** No longer Alexander's property. Guaranteed boss-drop rune from the Runic Key (`EVT-000142`), banked unused since; `instruction_binding: unbound-awakened` made it eligible to teach an awakened non-Bearer — Alexander himself already knew Flash Step above its D-Rank, so Bearer consumption would have taught him nothing (Profile 1.39, `EVT-000230`). Materialized on Owen's own boat and handed over; he consumed it on the spot, learning Flash Step [D-Rank] Novice.

## Standing Liability

- **University tuition debt:** $30,000 outstanding principal, **$400/month minimum payment**, recorded at this initialization checkpoint per Profile Section 20.3. This is a pressuring monthly obligation against his income, not a deduction from starting funds.


### 2026-08-03 — Daily Premium, Resales, and the Runic Key (`EVT-000118`)

- **Runic Key [E-Rank]** — Daily Premium, **Verdant** fabrication series. Bought for **1,000 g** from the 2026-08-03 cycle. Opens a standard Section 17 E-Rank instant dungeon whose boss drops **one guaranteed rune in addition to its normal boss-drop roll** (Section 12.5). Green-bronze, amber-lit along the teeth. **Unused, banked.**
- **Lesser Healing Potion ×6** — **SOLD** to the System shop at the 50% consumable resale rate, 12 g each (**+72 g**). Four remain banked.
- **Quickstep Charm [E-Rank]** — **SOLD** to the System shop for **20 g**, the 25% equipment resale rate. Won from a Daily Random Box (`EVT-000114`), never equipped, withdrawn permanently.
- **Gold: 920 → 992 → 1,012 → 12.** The two sales existed solely to close an 80 g gap on the key.
- Five offers from the Verdant cycle expire unbought at the 2026-08-04 06:00 rotation: Farline Longshot [D-Rank] 900 g, Adaptive Bastion Torso [E-Rank] 120 g, Ascendant Hunter's Band [D-Rank] 720 g, Sovereign Panacea 600 g, Premium Rune teaching Sprint [E-Rank] 2,500 g.

### 2026-08-03 — Cash, and Gear Bought For Owen Callahan (`EVT-000118`)

**Cash: $18,881 → $28,331 → $15,831 → $9,831.**

- **+$9,450** — the Ashfield clear settlement, filed true by Priya Okafor on 2026-07-30 and posted by BGM Region V this morning. The ≈$9,000 Sable & Kern harvest share is still processing on its first business day.
- **−$18,500** at **Horizon Outfitters** (`ENT-000133`), Michigan Avenue, on three pieces of protective gear **bought for Owen Callahan (`ENT-000139`) and owned by him**, not by Alexander. Gifted outright at the counter; possession and ownership both Owen's from the moment they were fitted. An ordinary licensed hunter has no five-Stat sheet (Section 11.5), so these grant him **physical reduction and build quality only** — no Stat lines apply to him:

| Item | Slot | Rank | Reduction | Price | Owner |
|---|---|---|---|---|---|
| **Horizon Bastion Gauntlets** | hands | C-Rank | 8% | $12,500 | `ENT-000139` |
| **Horizon Bastion Torso** | torso | D-Rank | 5% | $3,000 | `ENT-000139` |
| **Horizon Bastion Boots** | feet | D-Rank | 5% | $3,000 | `ENT-000139` |

  Owen's own purchases the same visit, with his own money and at his own insistence after Alexander overrode their agreed cost split: a compact field kit, two lesser licensed restoratives off the shelf (world-market alchemy, not System consumables — `206` Section 12.5 sourcing rule, `EVT-000154`), and tape. These are his property and are not tracked in Alexander's inventory.

  Standing liability unchanged: $30,000 tuition principal, $400/month minimum.

### 2026-08-03 — The Cicero Gate: Loot, the Core Declaration, and Owen's First Weapon (`EVT-000119`–`EVT-000121`)

**Genuine haul from the Gate:** 11 E-Rank crystals (one per beast: 8 commons, 1 elite, 2 boss-Rank alphas) and 3 E-Rank cores (elite and both alphas). None of it kept — all declared at exit under the standard 50/50 sponsor-contract terms and sold at licensed rates.

**The core declaration.** Alexander asked Owen to fold all eleven of his private, unregulated E-Rank cores (accumulated across five solo instant-dungeon clears, `EVT-000097`–`EVT-000113`) into this Gate's report. Owen refused to lie to a licensed board without knowing what the cores actually were, and Alexander told him the truth: a private, solo-only form of Gate the Bearer alone can open. They settled on a modest, defensible number — **2 extra cores**, not eleven — declared alongside the 3 genuine ones. Kesha Morrison accepted the revised report (5 cores total) without further question.

**Declared and sold:** 11 crystals ($1,650) + 5 cores ($1,875) = **$3,525** total pool, split 50/50 under the sponsor contract — **≈$1,762.50 each**, processing 1–2 business days.

**Private core stash: 11 → 9.** Two physical cores were drawn out of the dimensional inventory to match the declaration; the remaining nine stay exactly where they've been — no legal sale path in either economy.

**Boss drops.** The leaner alpha dropped a skill book teaching **Bulwark [E-Rank]**, consumed and learned (see `100_CHARACTER_SHEET.md`). The plated alpha dropped equipment, chosen as a weapon per the drop's own open-choice result (Rules §11.2, roll of 20):

- **Quickknife [E-Rank], Boss-Imprinted** — carapace-dark, faintly carbonized finish, worked from the plated alpha's own material. Weapon power 2, armed strike ×0.75, dual-wieldable. Boss Imprint: the body-family Vitality point has no ordinary-hunter Stat sheet to attach to (Section 11.5), but the signature Echo is live regardless — once per scene, **+1 modifier step on a Strength action to break, shove, or resist forced movement.** **Given outright to Owen Callahan (`ENT-000139`) as his first weapon** — drawn from the dimensional inventory and handed over on the spot. No longer Alexander's property; tracked henceforth on Owen's own ledger entry (`130_NPCS_AND_FACTIONS.md`).

### Pending Income — Updated

- **≈$1,762.50** — Alexander's half of the Cicero Gate's declared pool (crystals + cores), filed 2026-08-03, processing 1–2 business days. Not yet received; not counted in cash on hand.
- The ≈$9,000 Sable & Kern harvest share remains pending (see above).

### 2026-08-04 — First Black-Market Core Sale (`EVT-000139`)

At a warehouse-district pawn shop, sold **one private E-Rank core** to its unnamed owner (`ENT-000147`) for **$220 cash** — a genuine unlicensed transaction under Profile Section 12.2 (black market, felony risk both jurisdictions, no sale record). The dealer's offer reasoned from the $375 licensed anchor minus his own risk/movement discount, not the +40% premium a buyer pays for anonymity. First real outlet found for the private core stash.

- **Cash: $9,831 → $10,051.**
- **Private E-Rank core stash: 9 → 8** (see `100_CHARACTER_SHEET.md` `system_state.inventory`, named `shop_holdings` at the time), still no legal path for the rest.
- New informal relationship: `REL-000069`, an untested but willing fence contact, open to future cores "one at a time, price improves with trust."

---

### 2026-08-05 — Ten Cores Paid for Information, Not Cash (`EVT-000157`)

Returning to the same warehouse-district pawn shop (`ENT-000147`), Alexander deliberately declined money and bought **information and standing** instead. Ten private E-Rank cores were drawn from the dimensional inventory (concealed through the ordinary backpack he carries for exactly that purpose) and handed over against a **nine-core** asking price — one over, given as a bonus rather than haggled, and read by the pawnbroker as exactly the trust-by-doing Alexander had proposed.

**What the cores bought** (full detail in `EVT-000157`): the warehouse district's trust map — including **Ferro's Reclamation** (`ENT-000150`) named as an informant risk; **BGM's actual undeclared-goods flagging mechanics** (paperwork gaps and informants, never detection technology; spot audits fire on declared volume mismatching recorded clears); and **Cicero's Quiet's real provenance** (illegal cordon recovery during active quarantine, bought through a middleman, and the scavenger who found it having stopped taking calls not long after the sale).

- **Private E-Rank core stash: 22 → 12.** Still no legal sale path for the remainder; this pawn shop remains the only outlet, and the ten spent here were spent on knowledge rather than converted to dollars.
- **No cash, gold, or crystal changed hands.** Cash stands unchanged at **$20,813.50**; gold unchanged at **507**; the 112 banked E-Rank crystals are untouched and still unsold.
- **A standing want opened on the other side:** the pawnbroker wants **C-Rank cores and above** for an undisclosed purpose. Alexander made no promise.
- **A pending expense, not yet incurred:** an artificer consultation the pawnbroker is brokering, expected at **$200–300 cash** for an hour (possibly waived). The artificer takes no gold or crystals — this is a USD cost when it lands.

---

### 2026-08-05 — Two Coffees at the Coalition (`EVT-000166`)

A minor cash purchase on the walk to the Windy City Hunters Coalition: two black coffees from a food-truck stand in the warehouse district, one handed to Kesha Morrison.

- **Cash: $20,813.50 → $20,806.50** (−$7.00).

---

## 2026-08-06 — Crystals Liquidated, Two Items Transferred to Owen (`EVT-000178`, `EVT-000180`)

Three movements, all through the dimensional inventory (Profile Section 12.9), none of them physical property changing hands in the mundane economy.

**Out — the Stone Skin rune, given and consumed (`EVT-000178`).** The banked rune teaching Stone Skin (boss drop, 2026-08-05 Shattered City instant dungeon, `EVT-000152`, `instruction_binding: unbound-awakened`) was materialized on the pavement outside Owen Callahan's building and handed to him. He consumed it. Under Section 7.1's consumption settlement — eligible by binding, awakened recipient, technique unknown to him — it taught at Stone Skin's **native D-Rank floor** against his C-Rank fixed Rank, giving him **Stone Skin [D-Rank] Novice**. No longer Alexander's property and no longer an item at all; tracked henceforth as Owen's capability on `130_NPCS_AND_FACTIONS.md` (`ENT-000139`). The **Flash Step [D-Rank] rune remains banked and unconsumed**, also `unbound-awakened`, also eligible for Owen.

**Out — the entire E-Rank crystal stock, sold (`EVT-000180`).** All **112 E-Rank crystals** sold to the System shop in one transaction at the standard 10 g rate: **+1,120 g**, gold 7 → 1,127. This is the whole yield of the 2026-08-05 four-clear morning, converted at once and mid-fight to fund a single consumable. **E-Rank crystal stock is now zero.**

**Out — one Standard Mana Potion, bought and immediately given away (`EVT-000180`).** Purchased for **75 g** (Profile 1.25 price; restores a flat 40 Mana), gold 1,127 → **1,052**, withdrawn from the dimensional inventory and handed to Owen inside the instance. He drank it and his expended mender capacity returned in full — establishing, for the first time and by test rather than by rule, that a System Mana potion restores an awakened non-Bearer's well. Once withdrawn a potion is an ordinary transferable object (Section 12.5), but it traces back to Alexander alone, so this is a live Section 19 exposure thread: Owen is now carrying, in his own body, evidence of a supply channel that does not exist for anyone else on Earth.

**Also spent:** one **Instant-Dungeon Key [E-Rank]**, bought for **500 g** (gold 507 → 7) and consumed the same minute opening the Overgrown Temple instance from Owen's kitchen (`EVT-000179`). None banked.

**Not extracted:** the instance carries a **mineable deposit of 11 E-Rank crystals** (Section 17, 3d6 = 11 at the key's Rank). Nothing has been mined, and every unextracted deposit crystal disappears when the instance closes at 15:55 or on the boss kill.

**Unchanged:** 12 E-Rank cores (still no outlet but the pawnbroker, `ENT-000147`); 6 lesser healing potions; 2 antidotes; Mender's Seal; Stabilization Seal; Channeling Focus [E-Rank]; 2 Guard Shields [E-Rank]; Arcanist Legs [E-Rank]; Armored Greave [E-Rank]; the Flash Step [D-Rank] rune; the full nine-slot loadout, equipped. Cash **$20,806.50**, untouched — no mundane-economy transaction occurred today, and Voula refused payment at Nikitas. **≈$40,000** still processing from the Denise Ferro harvest job.

---

## 2026-08-06 — The Overgrown Temple Clear (`EVT-000182`–`EVT-000184`)

**Loot settles at the clear**, as every prior instant-dungeon clear in this campaign has settled it (`EVT-000097`, `EVT-000099`, `EVT-000101`, `EVT-000109` all record their banked totals at the clear Event rather than per kill). Checkpoint 0036's "0 E-Rank crystals" was therefore accurate at its 14:52 anchor: the instance was mid-clear and nothing had settled.

**In:**

- **14 E-Rank crystals** — 11 commons, 2 elites, 1 boss. Stock **0 → 14**.
- **3 E-Rank cores** — 2 elites, 1 boss. Private stash **12 → 15**. Still refused by the System shop (Section 12.5) and still carrying no provenance a licensed buyer would take; the warehouse-district pawnbroker (`ENT-000147`) remains the only outlet in either economy, and he wants C-Rank and above.
- **3 lesser healing potions** — the shrine lid (`EVT-000183`). Its own Section 11.2 roll at a one-Rank bump under the Section 11.4 principle, ruled at that Event: d100 72 → potion cache, tier lesser at D-Rank, d4 1 → three healing.
- **1 lesser healing + 2 lesser mana potions** — the boss drop (`EVT-000184`), d100 73 → potion cache, d4 3.
- **Titan Boots [E-Rank]** — the Overgrown Temple's bonus loot roll on the clear, d100 28 → equipment, d20 14 → armor, d5 5 → feet, d5 2 → Titan. Strength +1, physical reduction 3%. **A duplicate of the pair already equipped**, banked unequipped. No Boss Imprint — Section 11.2.1 governs boss equipment, and this came from the shrine roll.

Running totals: lesser healing potions **6 → 10**, lesser mana potions **0 → 2**.

**Out / lost:**

- **11 unmined deposit crystals, destroyed with the instance.** Section 17 disposes of every unextracted deposit crystal when the instance closes, and the closing was chosen: the last minutes went to opening the lid rather than to mining. Nobody touched the deposit at any point.
- **1 Instant-Dungeon Key [E-Rank]**, consumed at `EVT-000179`. None banked.

**Unresolved ownership, one item.** Owen set one of the three lid potions aside on his own counter for **Ines**, a mender colleague at his Edgewater shift, having been told he may not pass System consumables to anyone — including another mender. He named the distinction himself (one person on one night is not lifting the ceiling), asked directly whether it was over the line, and the question stands unanswered as this checkpoint closes. **The potion has not moved and no transfer is recorded.** It remains in Alexander's count of ten. Section 12.5 is clear that a withdrawn potion is an ordinary transferable object, so the constraint here is Alexander's, not the world's — and every one of them traces back to him (Section 19).

**Unchanged:** gold 1,052 and cash **$20,806.50**, neither touched in the instance; 2 antidotes; Mender's Seal; Stabilization Seal; Channeling Focus [E-Rank]; 2 Guard Shields [E-Rank]; Arcanist Legs [E-Rank]; Armored Greave [E-Rank]; the unconsumed **unbound-awakened rune teaching Flash Step [D-Rank]**, still eligible to teach Owen; the full nine-slot loadout, equipped throughout. **≈$40,000** still processing from the Denise Ferro harvest job.

---

## 2026-08-08 — Wade Bishop's D-Rank Trial: Haul and Private Mining (`EVT-000201`-`EVT-000207`)

**Combat drops from the ten kills** (8 commons, 2 elites, all D-Rank) at 4110 W Fullerton: **11 D-Rank crystals, 3 D-Rank cores** — commons dropping a crystal alone, both elites and the boss adding a core alongside theirs (boss loot below). Collected by the borrowed crew (Reggie Calloway, Bhavna Iyer, Foster Nakashima, Callie Dunmore) for joint declaration; not yet filed with Ironline.

**Boss kill** (Carapaced, Impact-signature, `EVT-000205`): folded into the ten-kill drop count above; the Gate collapse began on this kill, two-hour clear window opened and used in full for mining and looting.

**Alexander's private mining, two veins (`EVT-000206`):** a legendary-read first vein (🎲 d100 63, net +2, effective 100) yielded **18 D-Rank crystals**; a partial-success second vein (🎲 d100 15, net +2, effective 55), thinner and harder-read, yielded **6 D-Rank crystals** at the cost of most of the remaining clear window. **24 D-Rank crystals mined total.**

**Disposition of the mined crystals:** 12 sold privately to the System shop at 40 g each — **+480 g, gold 1,052 → 1,532**. 8 folded voluntarily into the crew's shared declared pool (below). **4 D-Rank crystals remain in Alexander's private, undeclared stash.**

**Declared pool for Ironline filing:** 11 crystals + 3 cores (combat drops) + 8 crystals (Alexander's contribution) = **19 D-Rank crystals, 3 D-Rank cores**, valued at licensed rates (Section 12.1: $600/crystal, $1,500/core) at **≈$15,900**. Split calculated privately under the standard leader's-cut convention (10% off top to Alexander as field lead, remaining 90% divided five ways) — **Alexander $4,452, each of the other four $2,862** — but not yet announced to the crew; Alexander is separately pressing Wade Bishop for 50% of the trial's combined value (loot plus the $10,000 flat D-Rank contract payout) instead, unresolved as of this checkpoint (`OBJ-23`).

**Not yet received:** the guild-held contract payout itself, and any of the above splits — both pending Ironline's filing, which Wade Bishop said he would push personally. Cash **$60,806.50, unchanged this session**; only gold moved (private crystal sale).

---

## 2026-08-06, ~16:00 — The Ownership Question Resolved (`EVT-000186`)

**Resolved.** Alexander confirmed the terms outright rather than leaving the question open: the earmarked potion is Owen's to use on anyone he judges needs it, with one hard line — never a mana potion, not to another mender, not ever. Owen accepted, chose to keep his own ask to one potion, and pocketed it inside his field kit rather than his civilian bag. The second of the three lid potions returned to Alexander's dimensional inventory.

- **Lesser healing potion stock: 10 → 9.** One transferred to Owen Callahan (`ENT-000139`) under the terms above; tracked henceforth against his own holdings in `130_NPCS_AND_FACTIONS.md`, not this ledger.
- **Unchanged:** gold 1,052, cash $20,806.50, 15 E-Rank cores, 14 E-Rank crystals, 2 lesser mana potions, 2 antidotes, and every other item listed above. No combat, no roll, no shop transaction — a straightforward hand-to-hand transfer between two Characters, settled and closed.

---

## 2026-08-08 — Fifteen-Core Trade at Walt Adamik's (`EVT-000212`, reconciled `EVT-000214`)

Alexander returned to Walt Adamik's warehouse-district shop carrying ten E-Rank cores and declined Walt's straight cash offer of $280 per core. He asked for interesting stock instead. Walt produced an unmarked suppression cylinder and an awakened-made lockpick set; after handling both, Alexander offered his entire private stash — **all fifteen E-Rank cores** — for the pair. Walt accepted. No cash, gold, crystal, or equipped item changed hands.

**Out:**

- **15 E-Rank cores.** Private stash **15 → 0**. These were unprovenanced instant-dungeon cores, not part of the pending Ironline declared pool.

**In:**

- **Suppression Emitter [E-Rank].** Unmarked matte-black cylinder, stripped decommissioned surveillance-suppression hardware. Blinds instrument-based anomaly/Gate-signature detection in a 3-meter radius; human perception, awakened senses, and System detection unaffected. Max continuous operation 20 minutes; recharges 1 minute per 5 inactive. Unlicensed and illegal to possess given its provenance. Test-activated once; otherwise unused.
- **Unlicensed Lockpick Set [B-Rank].** Awakened-made locksmith's work from the same trade. Reusable: reads and reshapes to a touched mechanical lock, guides tension/pin manipulation by feel, detects ordinary traps, retains no copy of an examined lock; effective up to B-Rank; no charge or consumption. Cannot open electronics, bypass passwords/biometrics, or beat an inaccessible or actively-opposed lock. **Used twice on Alexander's own deadbolt** (d100 20 success; d100 58 legendary) and dry-tested on a bedroom latch, a padlock, and a bag zipper.

**Rank resolved by d6 roll, not appraisal (`EVT-000216`).** The `EVT-000212` legendary Keen Sense read gave method, not Rank; the earlier note that further appraisal was required was itself wrong — items inside Alexander's System inventory are auto-identified in full, Rank included, once owned. A d6 table (1 E, 2 D, 3 C, 4 B, 5 A, 6 S) settled it: Emitter — roll 1 → **E-Rank**; Lockpick Set — roll 4 → **B-Rank**.

**Unchanged at the 15:15 checkpoint anchor:** 14 E-Rank crystals; 4 private D-Rank crystals; the pending Ironline pool of 19 D-Rank crystals and 3 D-Rank cores; 8 lesser healing potions; 2 lesser mana potions; 2 antidotes; every equipped item; cash **$60,806.50**; gold **1,532**.

---

## 2026-08-13, afternoon to evening — Chasing Marnie: a Bundled Purchase, a Dock Sweep, and Two Extractions (`EVT-000323`–`EVT-000334`)

The evening's acquisitions came from three places: one cash purchase at Elias Ward's shop, one sweep of an abandoned artificer's staging space, and two instant-dungeon extractions run back to back. **This section was omitted from the session's original save and is written here as a backfill** — the transaction chain below is reconciled against `100_CHARACTER_SHEET.md`'s `system_state` and the cited Events, not re-derived from memory.

### Cash

**One mundane-economy transaction all evening.** At Elias Ward's shop (`EVT-000323`), the keyed document wallet and the unmarked motion-sensor rig were bought **as a bundle for $800 total** — a legendary-success negotiation past Elias's stated one-item-or-the-other policy, so no separate per-item price was ever quoted or paid.

- **Cash: $44,579.60 → $43,779.60** (−$800).
- **Pending income unchanged:** $2,137.50, still processing.
- **Owen still owes Alexander $2,925** toward the Rogers Park deposit (`EVT-000300`) — untouched this session, not repaid, not raised in the evening's disclosure scene.

### Gold

Every gold movement happened inside or immediately after the two instant dungeons. Nothing at the dock, the wallet, or the dagger touched gold.

| Change | Amount | Running total |
|---|---|---|
| Start (Checkpoint 0059) | — | **1,841 g** |
| Instant-Dungeon Key [E-Rank] bought as a planned extraction (`EVT-000327`) | −500 | 1,341 g |
| Overgrown Temple boss drop — redundant Flash Step [D-Rank] rune, sold (`EVT-000327`) | +2,250 | 3,591 g |
| Mined deposit — 10 E-Rank crystals at 10 g (`EVT-000327`) | +100 | **3,691 g** |
| Beast Den boss 1 drop — redundant Flash Step [D-Rank] skill book, sold (`EVT-000332`) | +2,250 | 5,941 g |
| Beast Den boss 2 drop — redundant Dagger Mastery [E-Rank] rune, sold (`EVT-000332`) | +2,250 | 8,191 g |
| Mined deposit — 12 E-Rank crystals at 10 g (`EVT-000332`) | +120 | **8,311 g** |
| Instant-Dungeon Key [D-Rank] bought after exiting (`EVT-000332`) | −2,250 | **6,061 g** |

**Net gold across the session: 1,841 → 6,061 (+4,220).** All three sold drops were redundant against skills Alexander already holds at equal or higher Rank — the two Flash Step teachers against C-Rank Adept, the Dagger Mastery rune against Master — so none was consumed and none taught anything.

### In — individually tracked

Full per-item detail (Rank lines, provenance, condition, current state) is authored in `100_CHARACTER_SHEET.md` `system_state.inventory` (named `shop_holdings` until `EVT-000366`) under the standing owner ruling at `EVT-000331`. Recorded here as the ownership record:

- **Keyed document wallet [C-Rank]** (`EVT-000323`) — bundled purchase. Lock beaten at `EVT-000324`; empty, but a hidden lining seam carries an unidentified maker's stamp. Currently open, no key.
- **Unmarked motion-sensor rig [D-Rank]** (`EVT-000323`) — bundled purchase. Logs detected movement to a remote destination rather than displaying locally. Destination unread.
- **Finished dagger [S-Rank]** (`EVT-000326` recovered, `EVT-000328` identified) — swept from the dock, auto-identified at S-Rank on close inspection inside the sealed instance. The single most valuable item Alexander has ever held, and **not his** in any ordinary sense: it is the missing artificer's commissioned work, taken from her staging space.
- **Half-finished leather piece** (`EVT-000326`) — same maker's stamp as the wallet and the dagger, mid-work when abandoned.
- **Loose tool components** and **raw salvage materials** (`EVT-000326`) — hides, cured leather offcuts, unworked beast-part components, from the other two swept crates.
- **Crumpled work order** (`EVT-000326`) — handwritten, references "the consultation" moved to a street later identified as **Loomis Street** (`EVT-000333`). A live lead.
- **Torn visitor-badge fragment** (`EVT-000326`) — printed "CONSULT — TEMP," no logo, no name. A live lead.
- **Beast Core [E-Rank] ×1** (`EVT-000327`) — the Overgrown Temple boss's automatic core. Banked, unsold; the shop refuses cores.
- **Instant-Dungeon Key [D-Rank] ×1** (`EVT-000332`) — bought after exiting the Beast Den, banked unused. The first D-Rank key held since 2026-08-09.

**Provenance note.** Everything swept from the dock (`EVT-000326`) was taken from an actively monitored space belonging to a third party, under time pressure, during an unlawful entry. It is **held, not owned** — no transaction, no transfer, no claim — and the S-Rank dagger in particular is the missing artificer's own work. Owen named the legal and physical exposure of this directly when told (`EVT-000334`).

### Out

- **Instant-Dungeon Key [E-Rank] ×2 → 0.** The first bought for 500 g and consumed opening the Overgrown Temple extraction (`EVT-000327`); the second, won from that instance's own shrine bonus roll, consumed at the dock as an **emergency escape** rather than a planned run (`EVT-000332`) — activated behind cover to break line of sight before a plain-suited stranger rounded the corner.
- **Flash Step [D-Rank] rune** (Overgrown Temple boss drop) — sold, 2,250 g.
- **Flash Step [D-Rank] skill book** (Beast Den boss 1 drop) — sold, 2,250 g.
- **Dagger Mastery [E-Rank] rune** (Beast Den boss 2 drop) — sold, 2,250 g.
- **22 E-Rank crystals → 0** — 10 from the Overgrown Temple deposit (100 g) and 12 from the Beast Den deposit (120 g), both sold on exit.

### Used, not consumed

- **Suppression Emitter [E-Rank]** — deployed twice: once to blind the loading dock's motion sensor for the entry window (`EVT-000326`), once on the way out (`EVT-000332`). Reusable, undamaged, retained.
- **Unlicensed Lockpick Set [B-Rank]** — used on the document wallet's lock (`EVT-000324`, legendary on the second attempt) and on the dock's padlock (`EVT-000326`, legendary). Reusable, retained.

### Unchanged

Every equipped item — the full nine-slot loadout, total physical reduction ≈26% — is untouched; the S-Rank dagger is **not equipped** despite outclassing the Ghost Quickknife [B-Rank] on raw stats. Also unchanged: the Warded Vambrace [A-Rank] and the Dormant Core [S-Rank] (`EVT-000280`), both still banked and unequipped; the Quickstep Charm [D-Rank] and Arcanist Torso [D-Rank]; all potions and antidotes; the 20 D-Rank Beast Cores, still with no outlet.

### Per the Beast Den's own loot

The Beast Den clear (`EVT-000332`) was resolved as a trivial montage against a several-Rank capability gap and **its per-kill core and crystal loot was never itemized at play time** — only the two boss drops and the mined deposit were rolled and recorded. No count is invented here; what was rolled is what is recorded above.

## 2026-08-14 — Wade Bishop's B-Rank Harvest Trial (`EVT-000338`-`EVT-000346`)

### Equipment

**The S-Rank dagger is equipped for the first time**, main hand, mid-fight (`EVT-000339`) — no longer merely held. The Ghost Quickknife [B-Rank] moves to off-hand. The **C-Rank Quickknife it displaces is unequipped and banked**, unused, its prior off-hand slot now filled by the Ghost Quickknife. Full combat line for the S-Rank dagger is authored in `100_CHARACTER_SHEET.md` `system_state.equipment.main_hand` on this same Event, derived from the standard S-Rank weapon table (Section 11.5) since none was appraised beyond Rank at `EVT-000328`.

- **C-Rank Quickknife** — Good · Agility +7 · weapon power 7 · armed strike ×0.75 · unequipped at `EVT-000339`, banked in the dimensional inventory. No longer worn.

### Mined — 104 B-Rank crystals (`EVT-000342`)

A legendary-sited vein, worked solo across the full two-hour post-boss clear window under a Resonance Extraction Pattern (Practiced → Adept). 61 crystals in the first pass, 43 in the second before the vein exhausted cleanly.

- **20 B-Rank crystals** declared to Wade Bishop's harvest pool (`EVT-000343`) — Alexander is the harvest trial's sole declared miner, so this pool of one is his in full once reconciled, licensed value $11,000 each ($220,000 declared).
- **84 B-Rank crystals** kept undeclared, banked in the dimensional inventory, the same private-stash pattern held since the Cicero Scar and Ada Reyes jobs.

### Pending income — figures delivered by text, 2026-08-14 evening (`EVT-000371`)

Wade texted the two owed figures, computed against the full declared pool once `EVT-000370`'s beast-drop roll gave it a total: 20 mined B-Rank crystals ($220,000) + 25 beast-drop B-Rank crystals ($275,000) + 1 B-Rank core ($27,500) = **$522,500 declared**.

- **Harvest-pool share — $104,500.** 20% of the declared pool, output-weighted; Alexander is the trial's sole declared miner, so the whole harvest share is his.
- **Combat-contribution claim — $117,040.** The remaining 80% ($418,000) is the combat pool, split under standard Section 13.2 terms: Wade credited Alexander as the trial's functional field leader (the same role he took unassigned at the D-Rank trial, and no one else called it) — **10% off top ($41,800)**, then an equal fifth of the remaining 90% ($376,200 ÷ 5 = **$75,240**) alongside Corbin Yates, Felix Aranda, Dana Whitcombe, and Warren Sato.
- **Total owed: $221,540**, filed tonight, processing on the standard 1–2 business day window.
- **Not covered by this figure:** the boss-drop Watcher Torso [B-Rank] itself — a physical item, not cash — sits undivided in the combat pool; Alexander hasn't said what happens to it.
- **Cash and gold otherwise unchanged this session** — $43,779.60 cash, 6,061 gold, no purchase or sale of either currency this trial. One **Lesser Mana Potion** consumed mid-fight (`EVT-000340`, restoring 20 Mana); banked count **3 → 2**.

### Unchanged

The Warded Vambrace [A-Rank], the Dormant Core [S-Rank], the Quickstep Charm [D-Rank], the Arcanist Torso [D-Rank], the 20 D-Rank Beast Cores, the dock's other recovered goods (wallet, sensor rig, half-finished leather piece, tool components, work order, badge fragment) — all untouched this trial.

---

## 2026-08-14 evening — Walt's shop, Fenn, and the Crystal Key instant dungeon

- **Cash: $43,779.60 → $43,129.60** — a directional listening rig bought from Walt Adamik for $650 (`EVT-000373`).
- **Gold unchanged at 47,561** — no shop transaction this span.
- **New holdings from the instant-dungeon clear** (`EVT-000375`, Crystal Key [C-Rank], Beast Den archetype, twin C-Rank boss alphas): 82 Mana Crystal [C-Rank] (10 beast-drop + 72 mined, full deposit extracted across two Resonance Extraction passes), 4 Beast Core [C-Rank], a Longsword [C-Rank] boss drop (Predator Boss Imprint, Edge signature), a fresh Instant-Dungeon Key [C-Rank] (Alpha A's own boss drop). All of it Alexander's outright — solo Bearer, no declaration required (Section 17).
- **The Crystal Key [C-Rank] itself is spent** — opened the instance, consumed on use per Section 17, no longer held.
- **Consumables:** 2 Lesser Mana Potion drunk mid-fight (`EVT-000375`, +20 Mana each), stock 10 → 8.
- **XP:** 230 → 1,630/2,100 this span — **1,400 total** from the instant-dungeon clear (`EVT-000375`): 360 from 6 C-Rank commons, 240 from 2 elites, 480 from the 2 boss-Rank alphas, and 320 for the C-Rank Gate-clear milestone. No underdog multiplier — every creature stood at Alexander's own System Rank.
- **Health/Mana at session close:** 330/420, 26/120 — settled from the dungeon's resolved exchanges, not passive recovery.
