# Resources — Gatefall

**Ledger:** Canonical Record (`011` Section 8) holding Gatefall's four world-level Resource entities — the ranked goods every clearance produces and the System shop trades in.

**Status:** Active — instantiated as canonical world content (2026-07-22).

These four entries describe the standing **resource classes** the Gatefall economy runs on, not individually tracked items — an E-Rank crystal a given hunter is carrying is a quantity in that hunter's holding record (`011` Section 11), with no identifier of its own, exactly as `templates/objects/resource.md` describes for generic and aggregated resources. What is authored here is the class itself: the world fact that mana crystals, beast cores, ranked gear, and System-shop consumables exist, how each behaves on the licensed and black markets, and the priced anchors (`206_WORLD_RULE_PROFILE.md` Sections 11–12, Anchors A7–A8) that govern every transaction a campaign inventory will ever record against them. The profile is authoritative on the numbers; this ledger describes the goods as world entities and cites the profile rather than restating it as a second source of truth.

---

## Record

```yaml
id: REC-000072
canonical_record: REC-000072
schema_version: "0.1.4"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000119
  - ENT-000120
  - ENT-000121
  - ENT-000122
```

---

## Mana Crystals

The base currency good of the whole trade. Every beast a party kills leaves behind one crystal, ranked to the beast's own Rank (E-Rank–S-Rank) — the single most common thing that comes out of a cleared Gate, and the good every licensed market, black-market buyer, and the System shop itself all price first. A crystal's Rank is read the same way everything else in Gatefall is read: on the unified E-through-S appraisal band, by the same cells that Rank Gates, hunters, and gear.

**Market behavior.** On the licensed market a crystal sells at its posted Rank price, no questions asked, through any BGM- or CGA-registered buyer; the sale is logged and the crystal enters the regulated supply. Selling instead to an unlicensed buyer pays a **40% premium** over the licensed price, but is a felony in both jurisdictions — no sale record, no Rank audit, and real prosecution risk if caught (`206` Section 12.2). The System shop buys crystals too, but strictly for its own currency, **gold**, which never converts back to money (`206` Section 12.5) — a hunter chooses, per crystal, whether it becomes cash or gold, and cannot move the value the other way.

**Who buys at the licensed window.** The volume buyers behind the posted price are the industrial refiners — chiefly **Cindermark Refining** and **Halcyon Mana-Industrial** — who take crystal as feedstock for the mana-tech and power-storage industries (`200_WORLD_BIBLE.md` Section 4); Rank for Rank, that industrial appetite is what the price rests on. The black market's +40% is not paid for anonymity alone: it is what unlicensed mana-tech shops and foreign buyers dodging the **export controls on B-and-above crystal** will pay to source feedstock the licensed window would log, tax, or refuse.

**Price table** (`206` Section 12.1, Anchor A7, copied verbatim — licensed market, Chicago USD; Prague pays ≈70% of Chicago, settled CZK/EUR):

| Rank | Licensed price |
|---|---|
| E-Rank crystal | $150 |
| D-Rank crystal | $600 |
| C-Rank crystal | $2,500 |
| B-Rank crystal | $11,000 |
| A-Rank crystal | $50,000 |
| S-Rank crystal | Auction-only (no posted price) |

The System shop's separate gold-buy schedule (`206` Section 12.5, Anchor A7): E **10 g**, D **40 g**, C **170 g**, B **750 g**, A **3,400 g**.

```yaml
id: ENT-000119
canonical_record: REC-000072
schema_version: "0.1.4"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-22T00:00:00Z"
type: Resource
subtype: ranked-family
scope: world
lifecycle: active
aliases:
  - name: "mana crystals"
    quality: current
canonical_state:
  description: "The ranked family of mana crystals every clearance produces, at E-Rank-S. Two sources (`206` Section 11.1): one crystal drops from each beast killed at the beast's Rank, but the bulk of a clear's tonnage is MINED from the Gate interior's own crystal deposits (veins seamed through its walls), worked out by a party's support element during the clear and lost with the collapsing interior if not extracted in time. Mined and dropped crystals of the same Rank are identical goods. The base commodity of the licensed market and the sole bridge between USD/CZK and the System's gold."
  market_behavior: "Licensed sale at posted Rank price through any BGM/CGA-registered buyer, logged and regulated; unlicensed sale pays +40% but is a felony in both jurisdictions; the System shop buys crystals for gold only, with no reverse conversion. Licensed demand is industrial: refiners (Cindermark Refining, Halcyon Mana-Industrial) take crystal as mana-tech and power-storage feedstock; the black-market premium is paid by unlicensed mana-tech and by foreign buyers dodging export controls on B-and-above crystal."
  price_table: "Licensed (Chicago USD, Section 12.1): E $150, D $600, C $2,500, B $11,000, A $50,000, S auction-only; Prague ~70% in CZK/EUR. System shop buy (gold, Section 12.5): E 10 g, D 40 g, C 170 g, B 750 g, A 3,400 g."
```

---

## Beast Cores

Where a crystal is common loot, a core is the trophy: **elites and bosses always drop one core each**, at their own Rank, and never common beasts (`206` Section 11.1). A core is worth roughly **2.5×** the same-Rank crystal and is the raw material behind gear enchantment, consumable brewing, and the rarer boss-drop tables — the good every appraiser, guild armory, and black-market buyer wants more than crystal volume, because a core is proof a party cleared something dangerous enough to carry an elite or a boss.

**Market behavior.** Cores move through the same two channels as crystals — licensed sale at the derived price, logged and regulated, or an unlicensed buyer's **+40%** premium at felony risk (`206` Section 12.2) — but because cores are rarer and higher-value per unit, they draw closer BGM/CGA scrutiny at the evidence locker, and an undeclared core is the loot-declaration violation regulators chase hardest. The Chicago-to-Prague black-market lane both cities' regulators know exists, and neither has fully closed, runs disproportionately on cores rather than crystal volume.

**Who buys at the licensed window.** At the licensed window cores are bought by guild armories and the **enchanting industry that forges ranked gear** from them (`200_WORLD_BIBLE.md` Section 4) — the standing demand that makes a core worth its ~2.5× premium over the same-Rank crystal in the first place. The unlicensed +40% is paid by unlicensed enchanters and by foreign buyers who cannot or will not clear a core through a logged, Rank-audited sale.

**Price table** (`206` Section 12.1, Anchor A7, copied verbatim — derived at 2.5× the same-Rank crystal):

| Rank | Core price (≈2.5× crystal) |
|---|---|
| E-Rank core | ≈$375 |
| D-Rank core | ≈$1,500 |
| C-Rank core | ≈$6,250 |
| B-Rank core | ≈$27,500 |
| A-Rank core | ≈$125,000 |

The multiplier is authoritative and the figures follow from it, exactly as `206` Section 12.1 states.

```yaml
id: ENT-000120
canonical_record: REC-000072
schema_version: "0.1.4"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-22T00:00:00Z"
type: Resource
subtype: ranked-family
scope: world
lifecycle: active
aliases:
  - name: "beast cores"
    quality: current
canonical_state:
  description: "The ranked family dropped once per elite and once per boss (never common beasts), at their own E-Rank-S. Raw material for ranked gear and System consumables; the loot regulators scrutinize hardest."
  market_behavior: "Licensed sale at the derived price through a registered buyer, logged and regulated; unlicensed sale pays +40% at felony risk; cores carry the black market's real margin over crystal volume, including the Chicago-Prague smuggling lane. Licensed buyers are guild armories and the enchanting industry that forges ranked gear from cores; the black-market premium is paid by unlicensed enchanters and foreign buyers avoiding a logged, Rank-audited sale."
  price_table: "Derived at ~2.5x the same-Rank crystal (Section 12.1): E ~$375, D ~$1,500, C ~$6,250, B ~$27,500, A ~$125,000; S is auction-only, as the crystal it derives from."
```

---

## Ranked Hunter Gear

Weapons, armor pieces, shields, focuses, and accessories are ranked E through S. Under Profile 1.4, Rank supplies an exact stat budget, weapon power, and protection magnitude while the item's **chassis** determines its slot, stat allocation, and combat behavior (`206` Section 11.5). A complete item line is therefore game state — not flavor — and equipped bonuses feed the Bearer's effective stats. Weapon power adds to the wielder's own damage magnitude; a higher-Rank weapon does not lend its full Rank, accuracy, defense, or Health. Gear enters play through a rolled boss-drop chassis or the System shop's catalogue, which unlocks every Rank through S as the Bearer's System Rank rises. Under Profile 1.11, boss equipment retains its source as a **Boss Imprint**: body family adds one further Stat point, the boss's defining attack contributes one bounded Echo, and archetype/form/finish compose its appearance. Daily Premium models draw from persistent category bags and retain the cycle's visual fabrication series. **Named uniques** remain authored one-of-a-kind items with provenance and are never generated randomly. **All ranked weapons are mana-bearing**, forged from beast cores by artificers (`206` Section 12.8), and can wound monsters even in an unawakened hand (`206` `GTF-OVR-003`).

**Market behavior.** The open licensed market trades gear informally between guilds, dealers, and freelancers at negotiated prices; only the System shop has a fixed schedule. The shop sells all non-unique chassis at unlocked Ranks and repurchases eligible intact catalogue gear at 25% of its listed price (`206` Section 12.5). At 06:00 each day it also draws one quantity-one **premium Weapon, Armor, and Accessory** model from its persistent category bags; all bear that cycle's visual fabrication series, remain unavailable as stock from any world store, and expire at the next rotation. Stolen or unregistered gear moves through the same underground channels that carry cores and artifacts westward out of Prague, but Gatefall authors no felony premium specific to gear (`206` Section 12.2) — its black-market risk is provenance risk.

**Price table** (`206` Section 12.5, Anchor A7, copied verbatim — System shop sell line, gold):

| Rank | E | D | C | B | A | S |
|---|---:|---:|---:|---:|---:|---:|
| Any weapon chassis | 100 g | 450 g | 2,000 g | 9,000 g | 40,000 g | 180,000 g |
| Any armor piece | 60 g | 270 g | 1,200 g | 5,400 g | 24,000 g | 108,000 g |
| Any accessory | 80 g | 360 g | 1,600 g | 7,200 g | 32,000 g | 144,000 g |

```yaml
id: ENT-000121
canonical_record: REC-000072
schema_version: "0.1.4"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-22T00:00:00Z"
type: Resource
subtype: ranked-family
scope: world
lifecycle: active
aliases:
  - name: "ranked hunter gear"
    quality: current
canonical_state:
  description: "Weapons, armor, shields, focuses, and accessories ranked E-S. Rank supplies the stat/protection magnitude and chassis supplies slot, stat allocation, and combat behavior; equipped lines causally modify the Bearer. Boss equipment carries a source-derived stat/Echo imprint and persistent appearance, while the shop unlocks bag-governed catalogue Ranks through S with Bearer progression."
  market_behavior: "Trades informally on the licensed market at negotiated prices; the System shop has fixed E-S gold schedules and repurchases intact catalogue gear at 25%. Its 06:00 Daily Premium rotation draws one quantity-one Weapon, Armor, and Accessory from persistent model bags under a shared visual series; each rolls its Rank independently and may exceed the Bearer's System Rank. Underground movement carries provenance risk rather than an authored felony premium. Named uniques enter play only with authored provenance, never at random."
  price_table: "System shop sell (gold, Section 12.5), E-Rank/D-Rank/C-Rank/B-Rank/A-Rank/S-Rank: weapons 100/450/2,000/9,000/40,000/180,000 g; armor pieces 60/270/1,200/5,400/24,000/108,000 g; accessories 80/360/1,600/7,200/32,000/144,000 g. Daily Premium equipment costs 2x its rolled offer-Rank category price."
```

---

## System-Shop Consumables

Healing and Mana potions, antidotes, appraisal scrolls, stabilization seals, ranked dungeon keys, selectable skill runes, and permanent stat elixirs make up the shop's non-equipment catalogue. All are priced in gold and reachable only through the Bearer's interface (`206` Sections 2, 12.5). A healing potion restores Health but does not clear injury severity; a stabilization seal suspends a Critical injury's untreated death risk for 24 hours without healing it; an elixir grants permanent +1 to one base stat, capped at **3 lifetime per stat**.

**Instructional binding.** Runes and skill books remain transferable physical goods, but their consumption eligibility is immutable and follows provenance (`206` Section 7.1). Ordinary catalogue and Daily Random Box instruction is Bearer-bound. Daily Premium, public-Gate boss, instant-dungeon, Runic-Key, and future authored found/world instruction is unbound for already-awakened recipients unless explicitly authored otherwise. Mastery instruction is Bearer-bound; authored class instruction is class-bound. Complete holdings preserve the taught technique, teaching Rank, binding, provenance source kind/event, and unused status through every transfer.

**Market behavior.** These goods originate exclusively in the System shop — there is no licensed-market supply channel because nobody outside the Bearer can see the interface. Once purchased they are transferable physical objects, however, and their unlicensed provenance can become an exposure thread. The shop repurchases an unused consumable, rune, or key at 50% of list price; the gold can never become money (`206` Sections 12.5, 19).

**Daily Premium.** At 06:00 local time the shop rolls six expiring, quantity-one System-exclusive offers — one in every category: Weapon, Armor, Accessory, Consumable, Rune, and Key. Weapon, Armor, Accessory, Rune, and Key each receive an independent d100 Rank roll whose floor is the Bearer's System Rank and whose result can reach higher Ranks; Consumables are unranked. A Premium Rune's taught technique is fixed by its rotation roll and is unbound instruction usable by an eligible awakened recipient; only Bearer consumption invokes duplicate protection. The premium consumables, skill/mastery runes, and loot-modifying instant-dungeon keys have no world-store source at all. Their exact roll tables, effects, prices, expiry, binding, and resale boundary live in `206` Sections 7.1 and 12.5.

**Price table** (`206` Section 12.5, Anchor A7, copied verbatim — System shop sell line, gold):

| Item | Shop price |
|---|---|
| Lesser healing potion | 25 g |
| Standard healing potion | 90 g |
| Greater healing potion | 400 g |
| Lesser mana potion | 20 g |
| Standard mana potion | 75 g |
| Greater mana potion | 300 g |
| Antidote | 30 g |
| Appraisal scroll | 60 g |
| Stabilization seal | 150 g |
| E-Rank selected skill rune | 1,000 g |
| D-Rank selected skill rune | 4,500 g |
| Instant-dungeon key (E-Rank/D-Rank/C-Rank/B-Rank/A-Rank/S-Rank) | 500 / 2,250 / 10,000 / 45,000 / 200,000 / 900,000 g |
| Elixir of a stat (+1 permanent base stat, max 3 lifetime per stat) | 5,000 g |

```yaml
id: ENT-000122
canonical_record: REC-000072
schema_version: "0.1.4"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-22T00:00:00Z"
type: Resource
subtype: ranked-family
scope: world
lifecycle: active
aliases:
  - name: "System-shop consumables"
    quality: current
canonical_state:
  description: "Healing and Mana potions, antidote, appraisal scroll, stabilization seal, ranked key, selectable E-Rank/D-Rank skill rune, and stat elixir sold by the System shop for gold; the interface is reachable only by the Bearer. A 06:00 Daily Premium rotation guarantees one expiring quantity-one offer in all six shop categories."
  market_behavior: "Originates exclusively in the System shop but becomes transferable physical property after purchase; unused listed goods resell to the shop at 50%, premium goods at 25% of premium price. Premium models never appear as world-store stock. The no-exchange rule holds: gold never converts to money."
  price_table: "System shop sell (gold, Section 12.5): healing 25/90/400 g; Mana 20/75/300 g; antidote 30 g; appraisal scroll 60 g; stabilization seal 150 g; E-Rank/D-Rank skill rune 1,000/4,500 g; E-S-Rank keys 500/2,250/10,000/45,000/200,000/900,000 g; stat elixir 5,000 g."
```
