# Gatefall World — Usage Guide

**World Status:** Complete and playable
**Version:** 0.1 (World Rule Profile 1.87)
**Engine Compatibility:** Chronicle Engine 0.2.0; Data Model 0.1.6; Gatefall World Rule Profile 1.87
**Created:** 2026-07-22

---

## What Gatefall Is

Ten years ago, Gates began opening worldwide — portals into pocket dungeons filled with magic beasts. A fraction of humanity **awakened** the same week: mana capacity, superhuman ability, and a measured Rank (E-Rank through S-Rank) fixed for life. The world adapted the way the real world adapts — federal regulation, publicly traded guilds, an insurance market, cable news covering S-Rank raids.

Every awakened hunter's Rank is fixed at Awakening and never changes — except one. The protagonist, the city's notoriously weakest licensed E-Rank, survives a near-fatal incident and receives the **System**: quests, levels, and stats that grow, invisible to every instrument the world has built. He is the only person alive who levels.

Two start cities are authored at full, equal depth: **Chicago, USA** and **Prague, Czech Republic**. Both are first-session-ready — places, institutions, notable figures, and seed events, all authored before play, not improvised at the table.

The world is original throughout — original names, characters, institutions, and text. It uses the gate-and-hunter genre skeleton (Gates, awakening, hunter Ranks E-Rank–S-Rank, mana, a uniquely leveling protagonist) but nothing in these files is copied from any existing work.

---

## Quick Start

1. **Read the World Bible first:** `200_WORLD_BIBLE.md`
   - The Gatefall event, the rules everyone knows, hunter-scale numbers
   - The United States (BGM, Chicago) and Europe (the European Gate Council, the Czech Gate Administration, Prague)
   - Common knowledge by tier — what a citizen, a licensed hunter, and a regulator each know
   - What the System publicly is (nothing — no one on Earth believes it exists)
   - Section 9 is an **owner-only section** on the world's hidden truth. It is not campaign-facing, the Runtime never reveals it in play, and it is not for players — do not open it looking for spoilers.

2. **Load the World Rule Profile section-by-section:** `206_WORLD_RULE_PROFILE.md` — **authoritative for every mechanic.** The profile exceeds some readers' single-call output limit; do not request the whole file or batch overlapping ranges. Search its numbered headings, read the applicable compatibility/migration text during restoration, and fetch each governing section before resolving the operation it affects. Where the bible and the profile disagree on a number, the profile governs. It authors the System in full: levels and XP, base/effective stats, equipment slots and item lines, mana, health and injury, skills, the daily quest and its penalty, Gates (population, ranking, timers, the tracked board that keeps a detection's clock running after its scene ends, breaks, archetypes), loot, the economy, parties, the System's behavioral contract, every `/system` panel, titles, instant dungeons, the class quest with its five authored trial phases, the five catalogued classes and the three uncatalogued ones reached by conduct the tally cannot score, exposure and re-ranking, and the world's pacing and lethality laws. No magnitude the System can surface in play is left unauthored — treat the applicable profile text as the source of truth, not this README.

3. **Read the supporting files** for setting texture and NPCs (see File Map below).

4. **Create a character:** at campaign creation, choosing Chicago or Prague. See *Campaign Creation* below.

5. **Start playing:** narrative text RPG (like Reikon and Verra campaigns)
   - Describe your actions in plain text
   - I respond with consequences and story development
   - No predefined options — you choose what to do

---

## File Map

**Core World Files:**
- `200_WORLD_BIBLE.md` — Setting and narrative canon: the Gatefall event, the rules everyone knows, hunter-scale numbers, the World Ranking of S-ranks, the US and European layers, Chicago and Prague at national depth, the Jiu Valley Exclusion (the quarantined catastrophe region abroad), common knowledge by tier, the System's public (non-)existence, and an owner-only hidden-truth section not for players
- `206_WORLD_RULE_PROFILE.md` — **World Rule Profile 1.87 (authoritative).** Every mechanic: levels/XP, causal base/effective stats, Rank-derived Stat Passives and Flux Sight, the derived Combat Tier that sizes every instance authored to fight the Bearer, equipment power and item bonuses, boss imprints and item appearance identity, exact campaign-time and automatic Mana/Health recovery settlement, vitality and injury, closed offensive-action packages and dual-wield resolution, skills with reconcilable use/mastery counters and skill-appropriate mastery scenes, skill Rank ascension by earned breakthrough or higher-Rank instruction under a System-Rank-derived ceiling that binds acquisition too, the Rank Dominance Law sizing every utility Rank scale, danger-scene formation audits, promotion-batched work/practice evidence, save-time combat-skill reconciliation, automatic pre-authored ratification and the mandatory unauthored-candidate adjudication gate, ratified Exploit Pattern/Field Command/Resonance Extraction techniques, dimensional inventory and its earnable projection extension, instructional-item binding and NPC consumption, Daily/Urgent/Hidden quests with exact capacity and lifecycle rules, the concealed-canon supply and promotion ritual that makes Hidden quests reachable, seven-day streak-box upgrades and penalty zones, Gates, loot, economy and licensed ranked-gear resale, System-exclusive Healing/Mana potion sourcing and their action-economy tier pricing, Daily Premium rotation bags and 25% surcharge, parties, the System's behavioral contract, the `/system` command and its fixed-width panels with active/passive skill grouping and derived standard-hit damage previews, titles and the decade-level Title Assessment that grants them, instant dungeons with explicit mineable deposits, the class quest and hidden classes, exposure and re-ranking, pacing and lethality
- `210_PLACES.md` — Geography: Chicago (Lakefront Gate Corridor, Red Line Corridor, the Cicero break scar, Horizon Tower, the BGM Region V field office) and Prague (Old Town Gate Cluster, Metro Corridor, the Libeň break scar, Karlov House, CGA headquarters)
- `220_NOTABLE_FIGURES.md` — Fourteen NPCs — twelve city figures (six per city) plus two world-ranked S-ranks (the highest-ranked American and Brandhof's German ace) — each authored with a want, a fear/flaw, a secret, a live agenda, and named relationships: guild masters, regulators, S-ranks, appraisers, and black-market contacts
- `240_RESOURCES.md` — The dual economy's material side: mana crystals, beast cores, ranked hunter gear, and System-shop consumables, priced by Rank
- `230_KNOWLEDGE_SUBJECTS.md` — Gatefall's Knowledge Subjects, every one of them a **concealed discovery**: ten owner-facing records carrying the exact reveal condition, objective, and proximity contract Profile Section 8.4.3 requires before a Hidden quest can attach. Not player-facing and never rendered — this is the supply behind the Hidden-quest trigger, translated from the secrets already authored in the figures, places, and seed-event ledgers
- `260_SEED_EVENTS.md` — Brewing situations ready to surface in play: a Chicago mis-ranked Gate and a guild-war auction, a Prague re-ranking mystery and a three-way foreign bidding war for Karlov Guild, and the global rising break-rate hook

**Institution Ledgers (8):**
- `institutions/bgm-region-v/250_INSTITUTION_LEDGER.md` — Bureau of Gate Management, Region V (Chicago's federal regulator: licensing, ranking, contract auctions)
- `institutions/horizon-guild/250_INSTITUTION_LEDGER.md` — Horizon Guild (Chicago's leading publicly traded guild; fields a resident S-Rank hunter)
- `institutions/ironline-guild/250_INSTITUTION_LEDGER.md` — Ironline Guild (Chicago's blue-collar rival, an aggressive recruiter of low-ranks)
- `institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md` — Windy City Hunters Coalition (Chicago's freelancer co-op; the likely starting affiliation for an unaffiliated Chicago hunter)
- `institutions/czech-gate-administration/250_INSTITUTION_LEDGER.md` — Czech Gate Administration (Prague's national regulator, underfunded and protective of its one S-Rank)
- `institutions/karlov-guild/250_INSTITUTION_LEDGER.md` — Karlov Guild (Prague's dominant, family-run guild, under slow siege from foreign money)
- `institutions/horizon-europe/250_INSTITUTION_LEDGER.md` — Horizon Guild — Europe (the American major's Prague branch office; the thread that ties the two cities into one world)
- `institutions/staromestska-lodge/250_INSTITUTION_LEDGER.md` — Staroměstská Lodge (Prague's freelancer co-op; the likely starting affiliation for an unaffiliated Prague hunter)

---

## How Play Works Here

### The System and `/system`

Gatefall declares **`/system`** as its diegetic command — the profile (Section 15) is the governing source for every panel's exact template and content. `/system` and its panels are read-only views of canonical state, rendered identically by every Runtime from the same underlying numbers, never invented at the table:

- `/system` — the **Console**: one screen with name, level, Card and System Rank, class, title, condition, Health/Mana/XP bars, base + gear = effective stats, unclaimed rewards, active quests, funds, and a counted index naming the panel that holds each remaining body of detail
- `/system quests` — active daily, urgent, and hidden quests with objectives, rewards, and deadlines
- `/system skills` — known skills in three groups (active, passive, stat passive) with Rank, Mana cost, effect, mastery, and progress to the next level
- `/system gear` — the worn nine-slot loadout **and** dimensional storage in one panel: complete item lines, derived stat contribution and total armor reduction, stored holdings grouped by kind, and gold, cash, and pending payouts. `/system equipment` and `/system inventory` are retained aliases and render this panel
- `/system shop` — fixed Weapons, Armor, Accessories, Consumables, Runes, Keys, and Sell tabs at the protagonist's unlocked Ranks, plus six quantity-one System-exclusive Daily Premium offers rotating every morning at 06:00; each Rank-bearing premium offer rolls independently and can exceed the protagonist's System Rank, then costs 125% of its ordinary same-Rank category anchor — shopping happens in-window, never as an out-of-character question
- `/system titles` — earned titles and their passives, one equipped slot per assessment passed (max five), and the assessment line (last, next, held-of-catalog, slots). Titles are granted only by the **Title Assessment**, which runs at level 10 and every tenth level after; each grants stat points on earning — +2 Common, +5 Rare, +10 Singular across a twenty-one-entry catalog — and one passive while equipped (Profile Section 16)
- `/system log` — the last System messages, replayed from the authored templates
- `/system all` — the Console followed by every panel in sequence: the whole of the protagonist at once
- `/system <panel> <item>` — one entry's complete canonical line, including provenance and binding fields no panel column carries
- **A class panel**, once the class quest is completed (`/system shadows`, `/system arsenal`, `/system fragments`, `/system echoes`, or `/system rifts`, depending on the class chosen) — see the profile Section 18

Panels render as framed, fixed-width System windows under the profile's render grammar (Section 15.1): 78 cells, required blank-row spacing, fixed columns with prose on indented continuation rows, a status gutter marking what is actionable (`!`) and what changed since the last checkpoint (`Δ`), and Rank always written `[E-Rank]` through `[S-Rank]`, never as a bare letter.

Between panel calls, ordinary numeric changes render inline as compact notifications (`XP: 40 → 90/300`), per the profile's notification contract. `/system` is *diegetic* — it belongs to Gatefall's fiction and is different from the engine's out-of-character **runtime commands** (`/save`, `/continue`, `/new`, `/end`, `/status`, and the rest), which work the same in every world. See `docs/GAMEPLAY_START_GUIDE.md` for the full runtime command list.

### The Daily Quest

At 06:00 local each in-fiction day the System issues its fixed training regimen: 100 push-ups, 100 sit-ups, 100 squats, and a 10 km run. The Bearer has until midnight that same calendar day—06:00 through 23:59—to finish. Completion creates three separately claimable rewards (Ability Points +3, Status Recovery, and a Daily Random Box) and no XP; an incomplete quest at 00:00 resets the informational streak and transfers him into a **penalty zone**, or defers that transfer until he exits an already-sealed instance. The profile (Section 8) authors the full schedule, rewards, and penalty.

### Urgent and Hidden Quests

The Bearer has one non-daily quest slot by default. **Multitask** raises capacity to 2/3/4 at E/D/C-Rank, with its Rank derived from base Intelligence under Section 4.4; the live Bearer's Intelligence 36 makes it D-Rank and capacity 3. The Daily and class quests have reserved slots. An **Urgent** quest is an explicit offer tied to an actionable nearby threat to life; it must be accepted and pays fixed Rank-scaled XP if its stored success condition is met before the crisis closes. A **Hidden** quest attaches only when the Bearer reaches a concealed discovery already authored in canon; it renders `???` until an in-fiction action meets its stored reveal condition, then pays fixed Rank-scaled XP on completion. Those discoveries are authored ahead of play in `230_KNOWLEDGE_SUBJECTS.md`, each carrying an exact reveal condition, objective, and statement of what physical proximity to it means — and Section 8.4.5 authors the ritual by which a Runtime promotes a thread the fiction has already produced into a new one, always at least one scene before any pointer may attach to it. The profile's Section 8.4 is authoritative for triggers, capacity, abandonment, rewards, state, and rendering.

### Gates and Lethality

Every Gate is populated by an authored formula tied to its Rank — trash beasts, at least one elite, and a boss that always drops loot — so an empty-looking dungeon is never a lucky break; it is a warning sign. A Gate's assessed Rank carries a stated confidence, and an unconfirmed Gate can read worse than advertised on first entry. Left past its timer, a Gate breaks and its remaining population pours out. **Death is final:** the die and the authored threat model decide, and the protagonist's death hard-ends the campaign. None of this is softened at the table — the profile's Sections 9, 10, 19, and 20 govern Gates, archetypes, exposure, and the world's lethality laws in full.

### Loot and the Economy

Every Gate clear yields crystals, cores, and a rolled boss drop (equipment chassis, rune, potions, an instant-dungeon key, a skill book, or an elixir) — nothing is improvised at the drop. Runes and books have fixed taught techniques and immutable recipient bindings: ordinary catalogue/Random Box instruction is Bearer-only, while Premium and world-loot instruction can teach an eligible awakened NPC. Equipment is causal game state: its Rank supplies a stat/protection budget and weapon power, its chassis assigns the bonuses and combat behavior, and only equipped items apply. Boss equipment additionally carries a source-derived imprint: the boss's body family supplies one further Stat point, its defining attack supplies a bounded once-per-scene Echo, and its Gate, anatomy, and rolled finish supply persistent visual identity. A higher-Rank weapon adds its authored power to the wielder's own magnitude; it never lends its full Rank, Health, accuracy, or defense. The shop's Daily Premium tab separately produces one expiring, quantity-one offer in each of its six goods categories at 06:00; model bags prevent repeats until their category is exhausted, a shared fabrication series distinguishes each cycle visually, and five independent Rank rolls can place its equipment, rune, and key offers above the Bearer's System Rank. Rank-bearing Premium offers cost 125% of their ordinary same-Rank category anchor; their exclusivity and above-Rank access do not double their prices. These premium models exist nowhere in the normal world's store inventory. Two currencies run in parallel and never exchange: ordinary money (USD in Chicago, CZK/EUR in Prague) for the licensed and black markets, and the System's own gold for the shop. Instant dungeons carry both creature drops and the normal mineable deposit, which must be extracted before the boss kill or two-hour closure. The profile's Sections 7, 11, 12, and 17 author every binding, price, item line, rotation table, drop table, deposit, and spread.

---

## Campaign Creation

Gatefall has no pre-built example character — the protagonist is **created at campaign creation**, not provided. The starting point is fixed by world law:

- **Choose a start city: Chicago or Prague.** Both are authored at full, equal depth and either is playable from session one with no further authoring needed.
- **The protagonist starts as the pre-System weakest licensed E-Rank** in that city — the notoriously weak hunter the System has not yet chosen when the campaign begins. His stats, background, and starting funds are set at civilian range (the profile's Section 4.1 authors the creation array — five stats, each 8–12, summing to 50, none above 12 — and Section 12.6 the starting-funds table by background); the System and its growth arrive through play, not at character creation — and by profile law (§14.7) no later than the protagonist's first genuine fight.
- **Likely starting affiliation** is each city's freelancer co-op — the Windy City Hunters Coalition in Chicago, the Staroměstská Lodge in Prague — though any of the four institutions per city is a valid hook.
- The world needs no additional authoring to begin: places, institutions, notable figures, and seed events are ready in both cities, and the System's full mechanics are authored in the profile before the first quest is ever issued.

---

## Technical Notes

**Engine Compliance:**
- All mechanics follow Chronicle Engine Rules Sections 4–5; the System's growth is a declared override (`GTF-OVR-001`, `GTF-OVR-002`) scoped to the protagonist alone — every other hunter and every monster resolves by fixed rank/Rank, never a sheet
- Stats and level establish modifier steps and available methods; **the d100 still decides every uncertain action** — no power and no level ever buys a result
- `/system` renders the profile's fixed panel templates from canonical state only — the same state renders the same panel from any Runtime

**Progression:**
- The protagonist alone levels; XP from kills, clears, and explicitly authored challenge rewards drives immediate level-ups that raise all five base Stats by 1, grant 5 allocatable points, and fully restore Health and Mana
- Mana, Health, and XP changes surface inline as compact notifications as they happen; the full picture is always available via `/system`

---

## Ready to Play

The world is complete and self-contained. A new player can:
1. Read the World Bible and the World Rule Profile
2. Create a protagonist at campaign creation, choosing Chicago or Prague
3. Start a campaign
4. Use `/system` to check status, quests, skills, equipment, inventory, shop, titles, and log at any time
5. Play a narrative text RPG with full mechanical depth, fully lethal from the first Gate

No external dependencies. All world content is in this directory.
