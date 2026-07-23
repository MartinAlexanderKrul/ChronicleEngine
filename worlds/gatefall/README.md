# Gatefall World — Usage Guide

**World Status:** Complete and playable
**Version:** 0.1 (World Rule Profile 1.0)
**Engine Compatibility:** Chronicle Engine 0.2.0; Data Model 0.1.2; Gatefall World Rule Profile 1.0
**Created:** 2026-07-22

---

## What Gatefall Is

Ten years ago, Gates began opening worldwide — portals into pocket dungeons filled with magic beasts. A fraction of humanity **awakened** the same week: mana capacity, superhuman ability, and a measured rank (E through S) fixed for life. The world adapted the way the real world adapts — federal regulation, publicly traded guilds, an insurance market, cable news covering S-rank raids.

Every awakened hunter's rank is fixed at Awakening and never changes — except one. The protagonist, the city's notoriously weakest licensed E-rank, survives a near-fatal incident and receives the **System**: quests, levels, and stats that grow, invisible to every instrument the world has built. He is the only person alive who levels.

Two start cities are authored at full, equal depth: **Chicago, USA** and **Prague, Czech Republic**. Both are first-session-ready — places, institutions, notable figures, and seed events, all authored before play, not improvised at the table.

The world is original throughout — original names, characters, institutions, and text. It uses the gate-and-hunter genre skeleton (Gates, awakening, hunter ranks E–S, mana, a uniquely leveling protagonist) but nothing in these files is copied from any existing work.

---

## Quick Start

1. **Read the World Bible first:** `200_WORLD_BIBLE.md`
   - The Gatefall event, the rules everyone knows, hunter-scale numbers
   - The United States (BGM, Chicago) and Europe (the European Gate Council, the Czech Gate Administration, Prague)
   - Common knowledge by tier — what a citizen, a licensed hunter, and a regulator each know
   - What the System publicly is (nothing — no one on Earth believes it exists)
   - Section 9 is an **owner-only section** on the world's hidden truth. It is not campaign-facing, the Runtime never reveals it in play, and it is not for players — do not open it looking for spoilers.

2. **Read the World Rule Profile:** `206_WORLD_RULE_PROFILE.md` — **authoritative for every mechanic.** Where the bible and the profile disagree on a number, the profile governs. It authors the System in full: levels and XP, stats, mana, health and injury, skills, the daily quest and its penalty, Gates (population, grading, timers, breaks, archetypes), loot, the economy, parties, the System's behavioral contract, every `/system` panel, titles, instant dungeons, the class quest and the five hidden classes, exposure and re-grading, and the world's pacing and lethality laws. No magnitude the System can surface in play is left unauthored — treat this file as the source of truth, not this README.

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
- `206_WORLD_RULE_PROFILE.md` — **World Rule Profile 1.0 (authoritative).** Every mechanic: levels/XP, stats, mana, vitality and injury, skills, the daily quest and penalty zones, Gates, loot, economy, parties, the System's behavioral contract, the `/system` command and its panels, titles, instant dungeons, the class quest and hidden classes, exposure and re-grading, pacing and lethality
- `210_PLACES.md` — Geography: Chicago (Lakefront Gate Corridor, Red Line Corridor, the Cicero break scar, Horizon Tower, the BGM Region V field office) and Prague (Old Town Gate Cluster, Metro Corridor, the Libeň break scar, Karlov House, CGA headquarters)
- `220_NOTABLE_FIGURES.md` — Fourteen NPCs — twelve city figures (six per city) plus two world-ranked S-ranks (the highest-ranked American and Brandhof's German ace) — each authored with a want, a fear/flaw, a secret, a live agenda, and named relationships: guild masters, regulators, S-ranks, appraisers, and black-market contacts
- `240_RESOURCES.md` — The dual economy's material side: mana crystals, beast cores, graded hunter gear, and System-shop consumables, priced by grade
- `260_SEED_EVENTS.md` — Brewing situations ready to surface in play: a Chicago mis-graded Gate and a guild-war auction, a Prague re-grading mystery and a three-way foreign bidding war for Karlov Guild, and the global rising break-rate hook

**Institution Ledgers (8):**
- `institutions/bgm-region-v/250_INSTITUTION_LEDGER.md` — Bureau of Gate Management, Region V (Chicago's federal regulator: licensing, grading, contract auctions)
- `institutions/horizon-guild/250_INSTITUTION_LEDGER.md` — Horizon Guild (Chicago's top-tier, publicly traded guild; fields a resident S-rank)
- `institutions/ironline-guild/250_INSTITUTION_LEDGER.md` — Ironline Guild (Chicago's blue-collar rival, an aggressive recruiter of low-ranks)
- `institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md` — Windy City Hunters Coalition (Chicago's freelancer co-op; the likely starting affiliation for an unaffiliated Chicago hunter)
- `institutions/czech-gate-administration/250_INSTITUTION_LEDGER.md` — Czech Gate Administration (Prague's national regulator, underfunded and protective of its one S-rank)
- `institutions/karlov-guild/250_INSTITUTION_LEDGER.md` — Karlov Guild (Prague's dominant, family-run guild, under slow siege from foreign money)
- `institutions/horizon-europe/250_INSTITUTION_LEDGER.md` — Horizon Guild — Europe (the American major's Prague branch office; the thread that ties the two cities into one world)
- `institutions/staromestska-lodge/250_INSTITUTION_LEDGER.md` — Staroměstská Lodge (Prague's freelancer co-op; the likely starting affiliation for an unaffiliated Prague hunter)

---

## How Play Works Here

### The System and `/system`

Gatefall declares **`/system`** as its diegetic command — the profile (Section 15) is the governing source for every panel's exact template and content. `/system` and its panels are read-only views of canonical state, rendered identically by every Runtime from the same underlying numbers, never invented at the table:

- `/system` — the status window: name, level, class (or `—`), equipped title, XP bar, Health/Mana, the five stats, unspent points
- `/system quests` — active daily, urgent, and hidden quests with objectives, rewards, and deadlines
- `/system skills` — known skills with rank, mana cost, and effect
- `/system inventory` — dimensional storage contents with item grades
- `/system shop` — the authored stock list at the protagonist's tier, with gold prices — shopping happens in-window, never as an out-of-character question
- `/system titles` — earned titles and their passives; one equipped at a time
- `/system log` — the last System messages, replayed from the authored templates
- **A class panel**, once the class quest is completed (`/system shadows`, `/system arsenal`, `/system fragments`, `/system echoes`, or `/system rifts`, depending on the class chosen) — see the profile Section 18

Between panel calls, ordinary numeric changes render inline as compact notifications (`XP: 40 → 90/300`), per the profile's notification contract. `/system` is *diegetic* — it belongs to Gatefall's fiction and is different from the engine's out-of-character **runtime commands** (`/save`, `/continue`, `/new`, `/end`, `/status`, and the rest), which work the same in every world. See `docs/GAMEPLAY_START_GUIDE.md` for the full runtime command list.

### The Daily Quest

Once per in-fiction day the System issues a training regimen with a real reward (XP, and a stat point every seventh consecutive completed day) and a real penalty: miss the 24-hour window and the System transfers the protagonist into a **penalty zone** — a sealed, unrequested survival instance scaled to his own strength, with no loot and no early exit. Every in-world day carries stakes; the profile (Section 8) authors the full regimen, reward, and penalty.

### Gates and Lethality

Every Gate is populated by an authored formula tied to its grade — trash beasts, at least one elite, and a boss that always drops loot — so an empty-looking dungeon is never a lucky break; it is a warning sign. A Gate's assessed grade carries a stated confidence, and an unconfirmed Gate can read worse than advertised on first entry. Left past its timer, a Gate breaks and its remaining population pours out. **Death is final:** the die and the authored threat model decide, and the protagonist's death hard-ends the campaign. None of this is softened at the table — the profile's Sections 9, 10, 19, and 20 govern Gates, archetypes, exposure, and the world's lethality laws in full.

### Loot and the Economy

Every Gate clear yields crystals, cores, and a rolled boss drop (weapon, rune, potions, an instant-dungeon key, a skill book, or an elixir) — nothing is improvised at the drop. Two currencies run in parallel and never exchange: ordinary money (USD in Chicago, CZK/EUR in Prague) for the licensed and black markets, and the System's own gold for the shop. The profile's Sections 11 and 12 author every price, every drop table, and the spread between them.

---

## Campaign Creation

Gatefall has no pre-built example character — the protagonist is **created at campaign creation**, not provided. The starting point is fixed by world law:

- **Choose a start city: Chicago or Prague.** Both are authored at full, equal depth and either is playable from session one with no further authoring needed.
- **The protagonist starts as the pre-System weakest licensed E-rank** in that city — the notoriously weak hunter the System has not yet chosen when the campaign begins. His stats, background, and starting funds are set at civilian range (the profile's Section 4.1 authors the creation array — five stats, each 8–12, summing to 50, none above 12 — and Section 12.6 the starting-funds table by background); the System and its growth arrive through play, not at character creation.
- **Likely starting affiliation** is each city's freelancer co-op — the Windy City Hunters Coalition in Chicago, the Staroměstská Lodge in Prague — though any of the four institutions per city is a valid hook.
- The world needs no additional authoring to begin: places, institutions, notable figures, and seed events are ready in both cities, and the System's full mechanics are authored in the profile before the first quest is ever issued.

---

## Technical Notes

**Engine Compliance:**
- All mechanics follow Chronicle Engine Rules Sections 4–5; the System's growth is a declared override (`GTF-OVR-001`, `GTF-OVR-002`) scoped to the protagonist alone — every other hunter and every monster resolves by fixed rank/grade band, never a sheet
- Stats and level establish modifier steps and available methods; **the d100 still decides every uncertain action** — no power and no level ever buys a result
- `/system` renders the profile's fixed panel templates from canonical state only — the same state renders the same panel from any Runtime

**Progression:**
- The protagonist alone levels; XP from kills, quests, and Gate-clear milestones drives level-ups that grant stat points and fully restore Health and Mana
- Mana, Health, and XP changes surface inline as compact notifications as they happen; the full picture is always available via `/system`

---

## Ready to Play

The world is complete and self-contained. A new player can:
1. Read the World Bible and the World Rule Profile
2. Create a protagonist at campaign creation, choosing Chicago or Prague
3. Start a campaign
4. Use `/system` to check status, quests, skills, inventory, shop, titles, and log at any time
5. Play a narrative text RPG with full mechanical depth, fully lethal from the first Gate

No external dependencies. All world content is in this directory.
