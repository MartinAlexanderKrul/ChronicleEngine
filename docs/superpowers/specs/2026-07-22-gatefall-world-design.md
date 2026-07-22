# Gatefall — World Design Spec

**File:** `docs/superpowers/specs/2026-07-22-gatefall-world-design.md`
**Status:** Approved design, pending implementation plan
**Date:** 2026-07-22

---

# 1. Purpose and goals

Create a new world, **`worlds/gatefall/`**, built on the Solo Leveling framework — the System, awakening, Gates/dungeons, hunter ranks E–S, mana, dungeon breaks, and a protagonist who uniquely levels — set in the real world with **two fully-authored start locations at equal depth: Chicago, USA and Prague, Czech Republic**.

Gatefall replaces Reikon as the active Solo Leveling-style world. Reikon is judged a failure on five counts (owner ruling, 2026-07-22): boring gameplay loop, no real danger, weak progression payoff, flavor that didn't land, and **flat characters**. Reikon's own playtest backlog (`worlds/reikon/270_PLAYTEST_BACKLOG.md`, PT-001/002/003) diagnosed the first three mechanically. Gatefall's design constraint is that **all three diagnosed failures are fixed as world law at profile 1.0**, not patched later.

All expression is original: same mechanical skeleton and genre principles as Solo Leveling, but original names, characters, institutions, and text throughout. No copied text, characters, or plot.

## Approved decisions

| Decision | Ruling |
|---|---|
| System fidelity | Full System at 1.0 (stat window, daily quests + penalties, skills, inventory, shop, instant dungeon keys, titles, class quest) |
| Unique power | Multiple original hidden classes, shadow-army path included; class quest determines what is offered |
| Start locations | Chicago, USA **and** Prague, Czech Republic — both authored at full depth; campaign creation chooses one |
| Character depth | Every notable figure authored with want, fear, secret, live agenda, and relationships — flat characters are a recorded Reikon failure and a spec violation here |
| Lethality | Fully lethal — die + authored threat model decide; protagonist death hard-ends the campaign |
| Reikon fate | Kept as-is, campaign `reikon_awakening_001` marked **dormant** (fully resumable, nothing deleted) |
| Build approach | Clean-slate full build; reuse engine primitives that work (grade-banded health, grade-baselined damage); no retheme of Reikon's profile |

---

# 2. World identity and premise

**The event — Gatefall.** ~10 years before campaign start, Gates began opening worldwide: portals to pocket dungeons populated by magic beasts. Early appearances killed thousands before the rules were understood. Simultaneously, a fraction of humanity **awakened**: mana capacity, superhuman ability, and a fixed measured rank.

**Rules everyone knows.**
- A Gate left uncleared past its timer causes a **dungeon break** — its population pours out.
- Awakened rank (E–S) is assessed once by mana measurement and never changes — for everyone except the protagonist.
- Only awakened can enter Gates. Killing the boss closes the Gate.

**The USA layer.** Gate affairs are federally regulated by the **Bureau of Gate Management (BGM)**: hunter licensing, Gate grading, clearance-contract auctions. Clearing is done by private **guilds** (majors are publicly traded, with drafted S-ranks) and freelance low-rank hunters working E/D-Gate contracts. The world adapted the way the real world adapts: insurance markets, federal regulation, guild capitalism, cable-news coverage of S-rank raids.

**Chicago** is a top-five US Gate city: high Gate density along the lakefront and L corridors, two major guilds, a BGM regional office.

**The protagonist's hook** (campaign-level, the world must support it): the city's notoriously weakest licensed E-rank survives a double-dungeon-style incident and receives the **System** — quests, levels, stats that grow — which no other hunter has and no instrument can detect.

**Prague** is the second home base, authored at the same depth as Chicago. Europe runs national Gate agencies under an EU coordination body (the **European Gate Council**); hunter licenses have international reciprocity. Prague's texture deliberately contrasts with Chicago's: Gates opening inside a UNESCO-protected historic center (clearing without destroying heritage is a legal and tactical constraint), a smaller and scrappier hunter scene where individuals matter sooner, older infrastructure, and a stronger black market feeding artifact smuggling westward. The System works identically everywhere.

**Global layer.** Gates are worldwide. The world bible carries the worldwide Gate landscape, the European authority structure, license reciprocity, and notable foreign powers at foundation depth. Campaign creation chooses Chicago or Prague; other regions get authored if a campaign ever needs them.

**European guild landscape.** EU license reciprocity makes Europe's guild scene transnational: **guild strength scales with home-country size and Gate density.** Large countries (Germany, France, UK) field top-tier national guilds that operate across borders; small countries can't sustain an S-rank-tier domestic guild and import clearance capacity — a standing political tension between sovereignty and safety. The world bible names the major international guilds operating in Europe (each with a one-line identity, home country, and posture), including at minimum: **Brandhof** (German, the continent's largest, engineering-corps culture), **Zenith Group** (British, finance-driven, buys rather than builds), and Horizon Guild's European arm. In Prague all three compete for CGA contracts against local Karlov; internationals get full institution ledgers only when a campaign engages them beyond contract competition.

## Hunter scale (authored in the world bible)

The population pyramid is fixed at 1.0 so "how rare is a hunter?" is never improvised:

- **Awakening rate:** roughly 1 in 5,000 people (~0.02%) — about 1.6 million awakened worldwide; a minority hold hunter licenses (many awakened take safer work: appraisal, construction, medicine, military).
- **Rank distribution among licensed hunters:** E 60%, D 22%, C 11%, B 5%, A ~2%. **S-rank is counted in individuals, not percentages** — about 200 worldwide, each a strategic national asset.
- **United States:** ~66,000 awakened, ~25,000 licensed hunters, **11 S-ranks**. Chicago: ~1,200 licensed hunters, 2 resident S-ranks (Horizon Guild's ace; one BGM federal asset).
- **Czech Republic:** ~2,100 awakened, ~800 licensed hunters, **1 S-rank** (a national celebrity and political football). Prague: ~350 licensed hunters — small enough that every B-rank is a known name, which is exactly the point of starting there.

---

# 3. The System (full at 1.0)

Everything below is authored in `206_WORLD_RULE_PROFILE.md` before play. Numeric magnitudes (XP curves, thresholds, costs, prices) are fixed during profile authoring, governed by one rule: **any magnitude the System can surface in play must be authored — an unauthored magnitude is a profile bug**, the failure class behind Reikon's empty Rifts.

- **Stat window** — Strength, Agility, Vitality, Intelligence, Perception. **Every stat has an authored payoff at 1.0:** stats feed die modifiers in their domains at authored thresholds, and named thresholds unlock capabilities (e.g., high Perception reads a Gate's true grade; high Agility unlocks reaction windows ordinary hunters don't get).
- **Levels & XP** — XP from kills, quests, and Gate-clear milestones. Level-up grants stat points. Only the protagonist levels; every other hunter is fixed at measured rank.
- **Daily quest** — a training regimen with a real reward (stat points) and a real penalty: skipping it drops the protagonist into a lethal **penalty zone**. Every in-world day carries stakes.
- **Quests** — urgent quests (the System reacts to nearby crises) and hidden quests with first-clear rewards.
- **Skills** — active and passive. Learned from skill books (dungeon loot) or earned by doing (sustained dagger fighting yields Dagger Mastery). Mana costs and effects authored, never improvised.
- **Inventory & Shop** — dimensional storage; a shop trading in **System gold** (from selling loot to the shop) for potions, gear, and keys. Parallel to the **USD economy**: mana crystals and cores sell for real money; rent still exists.
- **Instant dungeons** — looted keys open private solo dungeons: combat/loot runs on demand with no BGM paperwork. The designed antidote to logistics-heavy sessions.
- **Titles** — earned by feats, each granting an authored passive.
- **Class quest** — see Section 5.

## Loot

Loot is a first-class subsystem at 1.0, not flavor text. **Every Gate clear yields loot rolled from an authored table keyed to the Gate's grade; the boss always drops something.** Items carry a grade E–S on the same banding as Gates and hunters, so an item's magnitude follows from its grade the way a monster's health does. An item the table can produce but the profile hasn't authored is a profile bug.

Categories at 1.0, each with authored effects, prices (gold and USD where sellable), and grade scaling:

- **Weapons & armor** — graded gear with authored die-facing effects; rare pieces carry one named property (lifedrink, mana-burn, unbreaking). High-grade beast materials (fangs, hide, cores) are the crafting inputs *industry* uses — the protagonist sells materials or commissions gear; no player crafting subsystem.
- **Potions & elixirs** — healing and mana restoration in grade tiers; antidotes; **elixirs** as rare permanent stat consumables (the shop's late-game gold sink).
- **Runes** — single-skill teaching stones, consumed on use; the common way combat skills enter circulation. Rune drops are how the world's *other* hunters got their one or two fixed skills — for the protagonist they stack.
- **Skill books** — rarer, richer than runes: a full skill with a growth path. Class-restricted books exist and are worthless to everyone but him.
- **Dungeon keys** — instant-dungeon access, graded; the loot that generates more gameplay.
- **Mana crystals & beast cores** — the economy's spine: sellable for USD on the licensed market (or better prices on the black market, with consequences), or to the shop for gold.

Drop rarity is authored per Gate grade (e.g., an E-Gate yields crystals and maybe a rune; a red-gate anomaly rolls on a table a grade above its assessment). Named uniques exist only as authored items with provenance — no procedurally invented artifacts.

Engine integration: reuse `band_health` per grade and grade-baselined damage (already proven in Reikon's profile). The profile is written in Chronicle Engine terms and governed by engine rules.

---

# 4. Danger, threat model, and pacing — the anti-Reikon laws

World law at 1.0, addressing PT-002, PT-003, PT-001 respectively:

1. **Every Gate is populated, by law.** A Gate of grade G contains a threat population derived by formula from G — trash beasts, at least one elite, a boss — on the grade-banded health/damage baselines. The simulation cannot improvise "empty"; an empty Gate is an authored anomaly with an in-world cause, and in this world an empty-looking dungeon is a *warning sign* (the double-dungeon lesson). No bestiary, no tactical/map subsystem: a threat needs only a grade, per the existing engine constraint.
2. **Grades are assessments, not facts.** A BGM grade carries a stated confidence. On first entry, a low-confidence grade **rolls its true grade on the die**, with a distribution that includes worse-than-assessed. Mis-graded Gates are canonically how low-rank hunters die. Red-gate-style anomalies (no exit until cleared) exist in an authored anomaly table. High Perception removes the uncertainty legitimately by reading the true grade — a stat payoff with teeth.
3. **Logistics compress to montage, by law.** BGM paperwork, licensing queues, and contract auctions exist in fiction but the profile directs the runtime to compress them by default. Beat-by-beat play is reserved for uncertain, opposed, or consequential action. If a scene has no way to go wrong, it is a sentence, not a session. This is compression, not a drama timer — danger still arises only causally (Consistency Before Drama, Decision 003, is preserved).
4. **Fully lethal.** The die and the authored threat model decide; protagonist death hard-ends the campaign. Penalty zones can kill. Uncleared Gate timers genuinely lapse into dungeon breaks — standing world pressure the simulation surfaces honestly instead of inventing drama.

---

# 5. Class quest and hidden classes

At an authored level threshold, the System issues the **Class Quest**: a brutal solo trial in a sealed instance, fully lethal, no retreat. Not a menu — the trial tracks *how* the protagonist fights (kill efficiency, tactical control, weapon breadth, endurance under pressure, positioning/evasion) and offers classes matching the demonstrated style. **At least two classes are always offered**, preserving real choice.

Hidden class table at 1.0 — all unique on Earth, each authored with core mechanic, costs, growth path, and its own later class-quest evolution chain:

1. **Shadowbinder** *(shadow-army path)* — extract shadows of defeated enemies as permanently loyal soldiers that persist, level, and can be stored and re-summoned. Army command scales with Intelligence. Offered for battlefield control.
2. **Soulforged Armory** — bind essences of slain foes into weapons; a growing living arsenal where each bound weapon holds one ability of its source creature. Offered for weapon versatility.
3. **Devourer** — consume beast cores to permanently steal fragments of their power (breath attack, stone-hide, regeneration…), stacking a self-built stat sheet. Offered for raw aggressive efficiency.
4. **Echo Knight** — record instants of own combat; deploy time-echo copies that replay them. Offered for winning alone against many.
5. **Riftwalker** — weaponized Gate-space: short-range rift-steps, micro-rifts that cut or redirect attacks, pocket-space ambushes, eventually personal gates for travel and infiltration. Offered for positioning and evasion.

---

# 5b. Completeness bar — the no-OOC principle

**Goal: ordinary play never needs an out-of-character question.** Reikon's failure mode generalized: every unauthored fact becomes either an OOC interruption or an improvised (usually favorable) default. Gatefall is authored so the predictable questions of play are answered in the files before the first session. Concretely, the world must pre-answer at least these question classes:

- **Money** — authored price lists: cost of living (rent, food, transit) in both cities; gear and potion prices by grade; contract payouts by Gate grade; crystal/core prices on the licensed market vs. black market; typical starting funds by protagonist background; guild salary/split terms vs. freelance rates.
- **Procedure & time** — how licensing works and how long it takes; the step-by-step path from Gate detection → grading → auction/assignment → clearance → loot declaration; auction cadence; emergency response order when a break starts. Each authored once as a procedure, so play can montage it.
- **Law** — what is illegal (unlicensed Gate entry, undeclared loot, black-market sale, ability use on humans), the realistic penalty range, and how enforcement actually behaves in each city.
- **Gates** — spawn rate per city per week, grade frequency distribution, timer length by grade, what a break looks like by grade, who responds.
- **The System's voice** — authored message templates (quest issued, quest complete, level up, penalty warning, title granted), the daily quest's exact regimen, rewards, and penalty; the XP curve and level-up stat grant; shop stock list by tier.
- **Common knowledge** — what an ordinary citizen knows, what a licensed hunter knows, what only regulators/guild masters know. Prevents both "everyone knows everything" and repeated table questions about who can know what.

Two enforcement rules: (1) **the die never replaces a missing fact** — dice resolve uncertainty *within* authored ranges, not the absence of authoring; (2) when play does surface an unanswered question, the answer is **captured as a ruling into the world files in the same session's checkpoint**, so no question is ever asked twice.

# 6. Worldbook content plan

## Character depth law (fixes the flat-characters failure)

Every notable figure is authored with all of: a **want** (what they're pursuing), a **fear or flaw** (what bends their judgment), a **secret** (something true the world doesn't know), a **live agenda** (what they are doing this month whether or not the protagonist exists), and **relationships** (at least two named ties, at least one crossing an institution boundary). Figures are people in motion, not quest dispensers: their agendas advance in play, and institutions have interior factions that disagree. A figure entry missing any of these is incomplete by spec.

## Chicago

- **Places** — Loop/lakefront high-density Gate corridor; an L-line district for low-rank contract work; a permanently quarantined dungeon-break scar (standing mystery and danger zone); guild HQs; BGM Region V office.
- **Institutions (4):**
  - **Bureau of Gate Management — Region V** — federal regulator: licensing, grading, contract auctions.
  - **Horizon Guild** — top-tier, publicly traded, S-rank ace.
  - **Ironline Guild** — blue-collar rival, aggressive recruiter of low-ranks.
  - **Windy City Hunters Coalition** — freelancer co-op; likely protagonist starting affiliation.
- **Notable figures** — BGM regional director; each guild's master and ace; a licensed appraiser; a black-market core buyer.
- **Seed events** — a mis-graded Gate incident brewing; a guild war over a Gate-rich district auction.

## Prague (same depth as Chicago)

- **Places** — Old Town / Malá Strana historic-center Gate cluster (UNESCO constraint: heritage-preserving clearance rules that make fights harder and contracts pricier); the metro-tunnel corridor where low-rank contracts live; a quarantined break scar across the Vltava in an outer district; Karlov Guild HQ; the Czech Gate Administration seat.
- **Institutions (4):**
  - **Czech Gate Administration (CGA)** — national regulator under the European Gate Council; underfunded, proud, protective of its one S-rank.
  - **Karlov Guild** — Prague's dominant guild, family-run, deep city ties, old-fashioned.
  - **Horizon Guild — Europe** — the American major's Prague branch office; resented, well-funded, hiring away local talent (ties the two cities into one world).
  - **Staroměstská Lodge** — the freelancer co-op; likely protagonist starting affiliation for a Prague campaign.
- **Notable figures** — the CGA director; the Czech S-rank (national celebrity, political football); Karlov's guildmaster and heir; Horizon Europe's branch chief; Brandhof's and Zenith's Prague operations leads (bible-level entries, promoted to full depth if a campaign engages them); a black-market artifact smuggler moving goods westward.
- **Seed events** — an Old Town Gate that keeps re-grading upward and nobody will say why; a three-way foreign bidding war (Horizon, Brandhof, Zenith) to buy out or displace Karlov Guild, with the CGA quietly favoring whoever promises to keep the S-rank home.

## Shared / global

- **Resources (`240_RESOURCES.md`)** — the dual economy: local currency (USD / CZK–EUR) for crystals, cores, contracts, rent; System gold shop-internal; authored prices for both cities and the loot categories of Section 3.
- **Seed events (global)** — a rising worldwide dungeon-break rate the authorities are quietly failing to explain (the long-arc hook, visible from either city).
- **File layout** — `210_PLACES.md`, `220_NOTABLE_FIGURES.md`, and `260_SEED_EVENTS.md` each carry a Chicago section, a Prague section, and (where applicable) a global section; `institutions/` holds all 8 ledgers.

---

# 7. Repository changes

- New `worlds/gatefall/`: `README.md`, `200_WORLD_BIBLE.md` (including hunter-scale numbers and the global layer), `206_WORLD_RULE_PROFILE.md` (the System incl. loot tables, 1.0), `210_PLACES.md`, `220_NOTABLE_FIGURES.md`, `240_RESOURCES.md`, `260_SEED_EVENTS.md`, `institutions/` (8 ledgers: 4 Chicago, 4 Prague). File naming and conventions follow the existing world skeleton (Reikon/Verra) and `templates/000_TEMPLATE_CONVENTIONS.md`.
- `system/WORLDS_AND_CAMPAIGNS.md`: add the `worlds/gatefall/` row. Mark `campaigns/reikon_awakening_001/` dormant via its **per-campaign note** (the index's status vocabulary is fixed to *not started / in progress / closed or terminal*, so its status column stays `In progress` and the note records that the campaign is dormant by owner ruling, kept fully resumable). Reikon world files untouched otherwise.
- `tools/validate_repository.ps1` and `tools/test_checkpoint_contract.ps1` must pass after the change.
- Any registration the engine requires for new worlds (e.g., `system/ID_REGISTRY.md` identifiers) is included; the implementation plan enumerates these from the engine docs.

## Out of scope

- **Campaign creation** (protagonist, start city, opening incident) — its own step after the world exists.
- **Deep authoring of regions beyond Chicago and Prague** — the world bible carries the global layer; any third region is authored only if a campaign needs it.
- **Any change to Reikon's world files or engine rules** beyond the index status change above. Engine-general findings (PT-001's runtime-cadence half) remain on the engine backlog; Gatefall works around them at the world-profile level.

## Success criteria

1. Repository validation passes; the welcome-page index lists Gatefall and shows `reikon_awakening_001` dormant.
2. The profile contains no unauthored magnitude reachable in ordinary play: every Gate grade yields a concrete threat population **and a concrete loot roll**; every System feature has authored costs, rewards, and thresholds.
3. A campaign can be created in Gatefall in **either Chicago or Prague** without the world needing further authoring for its first sessions.
4. Every notable figure satisfies the character depth law (want, fear/flaw, secret, live agenda, relationships).
5. The completeness bar holds: every question class in Section 5b has its answers authored in the files — a first-session read-through can answer money, procedure, law, Gate, System-voice, and common-knowledge questions without a single OOC ruling.
