# Resources — Gatefall

**Ledger:** Canonical Record (`011` Section 8) holding Gatefall's four world-level Resource entities — the graded goods every clearance produces and the System shop trades in.

**Status:** Active — instantiated as canonical world content (2026-07-22).

These four entries describe the standing **resource classes** the Gatefall economy runs on, not individually tracked items — an E-crystal a given hunter is carrying is a quantity in that hunter's holding record (`011` Section 11), with no identifier of its own, exactly as `templates/objects/resource.md` describes for generic and aggregated resources. What is authored here is the class itself: the world fact that mana crystals, beast cores, graded gear, and System-shop consumables exist, how each behaves on the licensed and black markets, and the priced anchors (`206_WORLD_RULE_PROFILE.md` Sections 11–12, Anchors A7–A8) that govern every transaction a campaign inventory will ever record against them. The profile is authoritative on the numbers; this ledger describes the goods as world entities and cites the profile rather than restating it as a second source of truth.

---

## Record

```yaml
id: REC-000072
canonical_record: REC-000072
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
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

The base currency good of the whole trade. Every beast a party kills leaves behind one crystal, graded to the beast's own grade (E–S) — the single most common thing that comes out of a cleared Gate, and the good every licensed market, black-market buyer, and the System shop itself all price first. A crystal's grade is read the same way everything else in Gatefall is read: on the unified E-through-S appraisal band, by the same cells that grade Gates, hunters, and gear.

**Market behavior.** On the licensed market a crystal sells at its posted grade price, no questions asked, through any BGM- or CGA-registered buyer; the sale is logged and the crystal enters the regulated supply. Selling instead to an unlicensed buyer pays a **40% premium** over the licensed price, but is a felony in both jurisdictions — no sale record, no grade audit, and real prosecution risk if caught (`206` Section 12.2). The System shop buys crystals too, but strictly for its own currency, **gold**, which never converts back to money (`206` Section 12.5) — a hunter chooses, per crystal, whether it becomes cash or gold, and cannot move the value the other way.

**Who buys at the licensed window.** The volume buyers behind the posted price are the industrial refiners — chiefly **Cindermark Refining** and **Halcyon Mana-Industrial** — who take crystal as feedstock for the mana-tech and power-storage industries (`200_WORLD_BIBLE.md` Section 4); grade for grade, that industrial appetite is what the price rests on. The black market's +40% is not paid for anonymity alone: it is what unlicensed mana-tech shops and foreign buyers dodging the **export controls on B-and-above crystal** will pay to source feedstock the licensed window would log, tax, or refuse.

**Price table** (`206` Section 12.1, Anchor A7, copied verbatim — licensed market, Chicago USD; Prague pays ≈70% of Chicago, settled CZK/EUR):

| Grade | Licensed price |
|---|---|
| E-crystal | $150 |
| D-crystal | $600 |
| C-crystal | $2,500 |
| B-crystal | $11,000 |
| A-crystal | $50,000 |
| S-crystal | Auction-only (no posted price) |

The System shop's separate gold-buy schedule (`206` Section 12.5, Anchor A7): E **10 g**, D **40 g**, C **170 g**, B **750 g**, A **3,400 g**.

```yaml
id: ENT-000119
canonical_record: REC-000072
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Resource
subtype: graded-family
scope: world
lifecycle: active
aliases:
  - name: "mana crystals"
    quality: current
canonical_state:
  description: "The graded family of loot crystals every beast drops on death, one per kill, at the beast's own grade E-S. The base commodity of the licensed market and the sole bridge between USD/CZK and the System's gold."
  market_behavior: "Licensed sale at posted grade price through any BGM/CGA-registered buyer, logged and regulated; unlicensed sale pays +40% but is a felony in both jurisdictions; the System shop buys crystals for gold only, with no reverse conversion. Licensed demand is industrial: refiners (Cindermark Refining, Halcyon Mana-Industrial) take crystal as mana-tech and power-storage feedstock; the black-market premium is paid by unlicensed mana-tech and by foreign buyers dodging export controls on B-and-above crystal."
  price_table: "Licensed (Chicago USD, Section 12.1): E $150, D $600, C $2,500, B $11,000, A $50,000, S auction-only; Prague ~70% in CZK/EUR. System shop buy (gold, Section 12.5): E 10 g, D 40 g, C 170 g, B 750 g, A 3,400 g."
```

---

## Beast Cores

Where a crystal is common loot, a core is the trophy: **elites and bosses always drop one core each**, at their own grade, and never common beasts (`206` Section 11.1). A core is worth roughly **2.5×** the same-grade crystal and is the raw material behind gear enchantment, consumable brewing, and the rarer boss-drop tables — the good every appraiser, guild armory, and black-market buyer wants more than crystal volume, because a core is proof a party cleared something dangerous enough to carry an elite or a boss.

**Market behavior.** Cores move through the same two channels as crystals — licensed sale at the derived price, logged and regulated, or an unlicensed buyer's **+40%** premium at felony risk (`206` Section 12.2) — but because cores are rarer and higher-value per unit, they draw closer BGM/CGA scrutiny at the evidence locker, and an undeclared core is the loot-declaration violation regulators chase hardest. The Chicago-to-Prague black-market lane both cities' regulators know exists, and neither has fully closed, runs disproportionately on cores rather than crystal volume.

**Who buys at the licensed window.** At the licensed window cores are bought by guild armories and the **enchanting industry that forges graded gear** from them (`200_WORLD_BIBLE.md` Section 4) — the standing demand that makes a core worth its ~2.5× premium over the same-grade crystal in the first place. The unlicensed +40% is paid by unlicensed enchanters and by foreign buyers who cannot or will not clear a core through a logged, grade-audited sale.

**Price table** (`206` Section 12.1, Anchor A7, copied verbatim — derived at 2.5× the same-grade crystal):

| Grade | Core price (≈2.5× crystal) |
|---|---|
| E-core | ≈$375 |
| D-core | ≈$1,500 |
| C-core | ≈$6,250 |
| B-core | ≈$27,500 |
| A-core | ≈$125,000 |

The multiplier is authoritative and the figures follow from it, exactly as `206` Section 12.1 states.

```yaml
id: ENT-000120
canonical_record: REC-000072
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Resource
subtype: graded-family
scope: world
lifecycle: active
aliases:
  - name: "beast cores"
    quality: current
canonical_state:
  description: "The graded family dropped once per elite and once per boss (never common beasts), at their own grade E-S. Raw material for graded gear and System consumables; the loot regulators scrutinize hardest."
  market_behavior: "Licensed sale at the derived price through a registered buyer, logged and regulated; unlicensed sale pays +40% at felony risk; cores carry the black market's real margin over crystal volume, including the Chicago-Prague smuggling lane. Licensed buyers are guild armories and the enchanting industry that forges graded gear from cores; the black-market premium is paid by unlicensed enchanters and foreign buyers avoiding a logged, grade-audited sale."
  price_table: "Derived at ~2.5x the same-grade crystal (Section 12.1): E ~$375, D ~$1,500, C ~$6,250, B ~$27,500, A ~$125,000; S is auction-only, as the crystal it derives from."
```

---

## Graded Hunter Gear

Weapons and armor pieces graded E through S exactly as monsters and crystals are — an item's grade sets its damage or protection band precisely as a monster's grade sets its band health (`206` Section 11.5, Section 6.1). Gear enters play two ways: as a **boss drop** (d100 01–40 on the boss-drop table, at the Gate's grade) or as a plain purchase from the System shop's own weapon line, which stops at C-grade. A grade is an item's complete mechanical description — no per-item stat line is authored beyond grade, type, and any named effect. **Named uniques** — a specific weapon or artifact with a recorded origin — exist only where a file authors one with provenance; the boss-drop table never generates one at random.

**Market behavior.** The open licensed market trades gear informally between guilds, dealers, and freelancers at negotiated prices with no anchored public schedule the way crystals and cores carry one; the only authored gear prices in Gatefall are the System shop's own sell line, which is fixed and universal because it is gold, not money. Stolen or unregistered gear moves through the same underground channels that carry cores and artifacts westward out of Prague, but Gatefall authors no felony premium specific to gear the way it does for crystals and cores (`206` Section 12.2) — gear's black-market risk is provenance risk (a hot weapon with no clean sale record), not a priced spread.

**Price table** (`206` Section 12.5, Anchor A7, copied verbatim — System shop sell line, gold):

| Item | Shop price |
|---|---|
| E-grade weapon | 100 g |
| D-grade weapon | 450 g |
| C-grade weapon | 2,000 g |

The shop's line stops at C; B-grade and above gear enters play only through boss drops or authored named uniques (`206` Section 11.2, 11.5).

```yaml
id: ENT-000121
canonical_record: REC-000072
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Resource
subtype: graded-family
scope: world
lifecycle: active
aliases:
  - name: "graded hunter gear"
    quality: current
canonical_state:
  description: "Weapons and armor graded E-S, entering play via boss drop (d100 01-40 at Gate grade) or System-shop purchase (E-C only); grade sets damage/protection band exactly as grade sets a monster's band health."
  market_behavior: "Trades informally on the open licensed market at negotiated, non-anchored prices; the System shop's fixed gold line covers E-C only; underground movement carries provenance risk rather than an authored felony premium. Named uniques enter play only with authored provenance, never at random."
  price_table: "System shop sell (gold, Section 12.5): E-grade weapon 100 g, D-grade weapon 450 g, C-grade weapon 2,000 g. B and above: boss drop or authored unique only, no fixed price."
```

---

## System-Shop Consumables

Potions, an antidote, an instant-dungeon key, and a permanent stat elixir — everything the System sells for gold that is not gear. All of it is priced only in the shop's own currency and reachable by no one but the Bearer (`206` Section 2, Section 12.5); the wider world's medical, magical, and dungeon-access economy runs on entirely separate goods and prices the shop never touches. A healing potion restores Health directly on this schedule but does not by itself clear a wound's severity (`206` Section 6.3); an elixir grants a permanent +1 to one stat, capped at **3 lifetime per stat**.

**Market behavior.** Consumables exist exclusively inside the System shop — there is no licensed-market or black-market channel for them at all, because nobody outside the Bearer can see the shop, let alone buy from it. The no-exchange rule applies here as everywhere else in the System's economy: gold spent on a potion or a key can never be recovered as money, and money cannot buy a single one directly (`206` Section 12.5).

**Price table** (`206` Section 12.5, Anchor A7, copied verbatim — System shop sell line, gold):

| Item | Shop price |
|---|---|
| Lesser healing potion | 25 g |
| Standard healing potion | 90 g |
| Greater healing potion | 400 g |
| Lesser mana potion | 20 g |
| Antidote | 30 g |
| Instant-dungeon key (own band) | 500 g |
| Elixir of a stat (+1 permanent, max 3 lifetime per stat) | 5,000 g |

```yaml
id: ENT-000122
canonical_record: REC-000072
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Resource
subtype: graded-family
scope: world
lifecycle: active
aliases:
  - name: "System-shop consumables"
    quality: current
canonical_state:
  description: "Potions, antidote, instant-dungeon key, and stat elixir sold by the System shop for gold; reachable only by the Bearer, no other channel exists for any of it."
  market_behavior: "Exclusive to the System shop; no licensed-market or black-market channel exists for any item in this family. The no-exchange rule holds absolutely: gold spent here is never recovered as money."
  price_table: "System shop sell (gold, Section 12.5): lesser healing potion 25 g, standard healing potion 90 g, greater healing potion 400 g, lesser mana potion 20 g, antidote 30 g, instant-dungeon key (own band) 500 g, elixir of a stat (+1 permanent, max 3 lifetime per stat) 5,000 g."
```
