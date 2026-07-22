# Gatefall World Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Author the complete `worlds/gatefall/` file set — a Solo Leveling-framework world (Chicago + Prague) with a full System at Profile 1.0 — plus index registration, so a campaign can start in either city with zero OOC rulings.

**Architecture:** Pure content authoring in Markdown + Object Blocks (fenced YAML per `templates/000_TEMPLATE_CONVENTIONS.md`). The World Rule Profile is world rule content (no identifier, no Object Block); ledgers are Canonical Records composing Persistent Entity blocks; identifiers are allocated from `system/ID_REGISTRY.md` high-water marks and logged there in the same commit. Verification is the repo's own gates: `tools/validate_repository.ps1`, `tools/test_checkpoint_contract.ps1`, plus grep-based spec checks defined per task.

**Tech Stack:** Markdown, YAML Object Blocks (schema_version "0.1.1"), PowerShell validation scripts.

**Spec:** `docs/superpowers/specs/2026-07-22-gatefall-world-design.md` — the requirements source. Where this plan and the spec disagree, the spec governs.

## Global Constraints

- **No unresolved placeholder tokens** in any committed world file: no `ENT-XXXXXX`, `<required: ...>`, `<optional: ...>`, `<generated: ...>` (validation rejects them). Unused optional fields are removed, not left as placeholders.
- **All cross-object references by identifier, never by name.** Names live only in `aliases`.
- **ID allocation:** before minting IDs, read the current high-water marks in `system/ID_REGISTRY.md`; allocate sequentially; update the high-water table AND append an Allocation Log row in the same commit as the files that consume them. Never reuse or renumber.
- **Scope values** must be from: `personal | local | regional | world | historical`. Entity types from: `Character | Institution | Settlement/Kingdom | Resource | Place | Discovery/Knowledge`.
- **Every magnitude authored:** any number the System can surface (price, XP, threshold, timer, drop rate) must appear in a file, drawn from the Canonical Anchors below. An unauthored magnitude is a task failure.
- **Original expression only:** Solo Leveling's skeleton (Gates, System, ranks E–S, sole leveler), never its names, characters, or text.
- **Commit messages:** plain, no Co-Authored-By trailer (repo convention).
- **The spec's character depth law:** every figure entry carries Want / Fear or Flaw / Secret / Live Agenda / Relationships (≥2 named ties, ≥1 crossing institutions).
- Reikon's profile (`worlds/reikon/206_WORLD_RULE_PROFILE.md`) is the **shape reference** for profile structure (numbered sections, normative templates). Reuse its engine-proven patterns (band health, grade-baselined damage, compact notifications, canonical render template). Do not copy its flavor, magnitudes, or vell economy.

---

## Canonical Anchors (normative numbers — copy into files verbatim where a task says so)

Grades everywhere: **E, D, C, B, A, S**.

**A1. XP and levels.**
- XP to advance from level L to L+1: `L × 100` (L1→2 costs 100, L2→3 costs 200, …). No level cap.
- Level-up grant: **+3 stat points**, full Health/Mana restore.
- Kill XP by threat grade: E 10 / D 25 / C 60 / B 150 / A 400 / S 1000. Elite ×2, boss ×4.
- Gate-clear milestone XP (on boss kill, once per Gate): E 70 / D 150 / C 320 / B 700 / A 1500 / S 3200.
- Daily quest: +10 XP per completed day; **+1 stat point per 7 consecutive completed days** (streak resets on a miss).

**A2. Stats.**
- Ordinary awakened adult baseline 10 per stat. Protagonist starts at campaign creation values (campaign concern), civilian-range.
- Domain die modifier: **+1 modifier step per full 10 points** in the governing stat (engine d100 resolution unchanged; stats never replace the roll).
- Capability unlocks (authored in Profile Task 3): each stat has named unlocks at **30 and 50** (e.g., Perception 30 = read true grade of Gates at or below own band; Perception 50 = read up to one grade above; Agility 30 = act on ambush warning; Strength 30 = grapple one band up; Vitality 30 = shrug minor wounds; Intelligence 30 = +1 concurrent System quest slot).

**A3. Mana.**
- Pool: `20 + 5 × (level − 1)`.
- Recovery: 10% of pool per hour active, 25% per hour resting; full on level-up.
- Running dry: castings unavailable at insufficient mana; at 0, −1 modifier step on all actions until above 25%.

**A4. Health.**
- Protagonist and NPC hunters use engine `band_health` for their effective grade band; monsters likewise (per grade).
- Natural recovery: light wounds 1 day, serious 1 week, critical 1 month untreated; hospital halves, potions per A7.
- Death is death. No resurrection exists in Gatefall at 1.0 (owner-only section may know better; play may not).

**A5. Gates.**
- Spawn rates: Chicago metro ≈ **35 Gates/week**, Prague ≈ **8/week**.
- Grade frequency: E 50% / D 25% / C 15% / B 7% / A 2.5% / S 0.5%.
- Timer to dungeon break by grade (from detection): E 7 / D 6 / C 5 / B 4 / A 3 / S 2 days.
- Legal minimum party by grade: E–D none / C 4 licensed / B 8 / A 16 + one A-rank / S national-asset operation.
- Assessed grade confidence: **confirmed** (instrumented survey) or **unconfirmed** (remote reading). Unconfirmed true-grade roll at first entry, d100: 01–15 one grade lower; 16–70 as assessed; 71–92 one grade higher; 93–00 anomaly — roll on the anomaly table.
- Anomaly table, d100: 01–50 population one grade above assessment; 51–80 **red gate** (sealed until boss dies); 81–95 archetype twist doubled (A6); 96–00 dungeon-break-in-progress on arrival.
- Population formula per Gate of grade G: **3d6 common beasts (grade G) + 1d2 elites (grade G, ×2 band health) + 1 boss (grade G, ×4 band health, damage one band up)**. Emptiness only as an authored exception with in-world cause.

**A6. Dungeon archetypes** (roll d8 at Gate instantiation; each twist is one sentence of mechanics, authored in Profile Task 4): 1 Crypt (darkness — Perception checks to avoid ambush), 2 Hive (swarms — common beasts count doubled, elite absent), 3 Flooded Mine (water — Strength/Agility penalties, drowning risk), 4 Overgrown Temple (a lootable shrine — bonus loot roll, guarded), 5 Beast Den (a second boss-band alpha), 6 Shattered City (verticality — falls do band damage), 7 Ashfield (lingering burn — Vitality checks per hour), 8 Frozen Gallery (cold — Mana recovery halved inside).

**A7. Money and prices** (author full lists in Tasks 4 and 9; these are the anchors all other prices scale from).
- Licensed market: E-crystal **$150**, D $600, C $2,500, B $11,000, A $50,000, S auction-only. Beast core ≈ 2.5× same-grade crystal. Black market: +40% price, felony risk.
- Freelance contract payout: E-Gate $2,000–5,000, D $8,000–15,000 (split by party contract). Guild salaried B-rank ≈ $240k/yr. Prague rates ≈ 70% of Chicago, paid CZK/EUR.
- Cost of living: Chicago shared apartment $1,400/mo; Prague equivalent 18,000 CZK/mo.
- System shop (gold): shop buys E-crystal for **10 g** (D 40 g, C 170 g, B 750 g, A 3,400 g). Sells: lesser healing potion 25 g, standard 90 g, greater 400 g; lesser mana potion 20 g; antidote 30 g; E-grade weapon 100 g, D 450 g, C 2,000 g; instant-dungeon key (own band) 500 g; elixir of a stat (+1 permanent, max 3 lifetime per stat) 5,000 g.
- USD and gold do not exchange; goods cross only through the shop's buy/sell spread.

**A8. Loot rolls** (per cleared Gate; author as table in Profile Task 4).
- Crystals: one per beast killed, grade = beast grade. Cores: elites and bosses always drop one.
- Boss drop, d100: 01–40 weapon/armor piece (Gate grade); 41–65 rune (one random authored skill); 66–80 potion cache (3 potions, Gate-grade tier); 81–90 instant-dungeon key (Gate grade); 91–97 skill book (authored table); 98–00 elixir.
- Red gates and anomaly Gates roll loot one grade above assessment. Named uniques only as authored items with provenance.

**A9. Hunter scale** (spec Section 2 numbers — copy verbatim into the world bible): awakening ≈ 1 in 5,000 (~1.6M worldwide); licensed-hunter rank split E 60% / D 22% / C 11% / B 5% / A ~2%; S counted individually — ~200 worldwide, 11 US (2 in Chicago), 1 Czech. Chicago ~1,200 licensed; Prague ~350.

**A10. The System's voice** (author templates in Profile Task 5). All System text renders in bracketed blocks, e.g.:
```text
[SYSTEM] QUEST ISSUED — DAILY TRAINING
Objectives: 100 push-ups 0/100 · 100 sit-ups 0/100 · 10 km run 0/10
Reward: 10 XP · streak 4/7 → +1 stat point at 7
Warning: failure to complete within 24 h transfers you to a penalty zone.
```
Inline compact notifications during prose: `XP: 40 → 90/300`, `Mana: 25 → 13/45`, `HP: 34 → 21/40`.

---

## File Structure

```text
worlds/gatefall/
├── README.md                      world overview, how to play here, /system pointer (Task 10)
├── 200_WORLD_BIBLE.md             premise, Gatefall event, hunter scale, global layer,
│                                  European guild landscape, common knowledge,
│                                  owner-eyes-only hidden truth (Task 2)
├── 206_WORLD_RULE_PROFILE.md      World Rule Profile 1.0 — the System (Tasks 3–5)
├── 210_PLACES.md                  Chicago places, Prague places, global (Task 6)
├── 220_NOTABLE_FIGURES.md         figures both cities, character depth law (Task 8)
├── 240_RESOURCES.md               crystals/cores/gear/potions as Resource entities + prices (Task 9)
├── 260_SEED_EVENTS.md             Chicago, Prague, global seed events (Task 9)
└── institutions/
    ├── bgm-region-v/250_INSTITUTION_LEDGER.md         (Task 7)
    ├── horizon-guild/250_INSTITUTION_LEDGER.md        (Task 7)
    ├── ironline-guild/250_INSTITUTION_LEDGER.md       (Task 7)
    ├── windy-city-coalition/250_INSTITUTION_LEDGER.md (Task 7)
    ├── czech-gate-administration/250_INSTITUTION_LEDGER.md (Task 7)
    ├── karlov-guild/250_INSTITUTION_LEDGER.md         (Task 7)
    ├── horizon-europe/250_INSTITUTION_LEDGER.md       (Task 7)
    └── staromestska-lodge/250_INSTITUTION_LEDGER.md   (Task 7)
system/WORLDS_AND_CAMPAIGNS.md     gatefall row + reikon dormant note (Tasks 1, 10)
system/ID_REGISTRY.md              high-water marks + allocation log rows (Tasks 6–9)
```

Modeling choices locked here: institution directory names as above (kebab-case, matching Reikon's pattern). Chicago and Prague are each a `Settlement/Kingdom`-type entity in `210_PLACES.md`; districts and sites are `Place` entities. The System itself is **not** a Persistent Entity (mirror Reikon Profile Section 9.1's ruling in Gatefall's profile). The five hidden classes are profile content, not entities.

---

### Task 1: Register the world and scaffold the directory

**Files:**
- Create: `worlds/gatefall/README.md` (minimal stub: title, status line "Status: Under construction — Profile 1.0 authoring in progress", pointer to spec)
- Modify: `system/WORLDS_AND_CAMPAIGNS.md` (Worlds table + Reikon campaign note)

**Interfaces:**
- Produces: the `worlds/gatefall/` row every later validation run needs; the dormant note for `reikon_awakening_001`.

- [ ] **Step 1: Verify current validation baseline passes**

Run: `.\tools\validate_repository.ps1`
Expected: exit code 0 (if it fails already, stop and report — do not build on a broken baseline).

- [ ] **Step 2: Create the stub README and index row**

Create `worlds/gatefall/README.md` with title `# Gatefall`, a one-paragraph description (Solo Leveling-framework world, Chicago + Prague, Profile 1.0), status line, and a link to the spec path.

In `system/WORLDS_AND_CAMPAIGNS.md` Worlds table add:

```markdown
| `worlds/gatefall/` | 0.1 (World Rule Profile 1.0 in authoring) | Pre-campaign foundation | 0 | `/system` |
```

In the `campaigns/reikon_awakening_001/` per-campaign note, append (status column unchanged — vocabulary is fixed):

```markdown
**Dormant by owner ruling (2026-07-22):** play is paused indefinitely in favor of `worlds/gatefall/`; the campaign remains fully resumable from `900_CHECKPOINT_0017` as described above.
```

- [ ] **Step 3: Run validation**

Run: `.\tools\validate_repository.ps1`
Expected: exit 0 — the new world directory now has a row; nothing else changed.

- [ ] **Step 4: Commit**

```bash
git add worlds/gatefall/README.md system/WORLDS_AND_CAMPAIGNS.md
git commit -m "Register Gatefall world; mark reikon_awakening_001 dormant by ruling"
```

---

### Task 2: World bible (`200_WORLD_BIBLE.md`)

**Files:**
- Create: `worlds/gatefall/200_WORLD_BIBLE.md`

**Interfaces:**
- Consumes: spec Sections 2 (premise, hunter scale, guild landscape) and 6 (hidden truth); Anchors A9.
- Produces: the named institutions and guilds (exact names: Bureau of Gate Management, Horizon Guild, Ironline Guild, Windy City Hunters Coalition, Czech Gate Administration, Karlov Guild, Horizon Guild — Europe, Staroměstská Lodge, Brandhof, Zenith Group, European Gate Council) that Tasks 6–9 must reference **by these exact names**; the hidden-truth facts all clue-authoring must stay consistent with.

- [ ] **Step 1: Author the file** with this exact section outline (header block per repo convention: File / Class "World canon — narrative layer; the World Rule Profile governs mechanics" / Status Active):

1. `# 1. The Gatefall` — the event ~10 years ago, first breaks, awakening; timeline of 5–8 dated world milestones (first Gate, first break disaster, founding of authorities, first S-rank, present day). Use absolute years (Gatefall event = 2016, present = 2026).
2. `# 2. The Rules Everyone Knows` — Gates, timers, breaks, awakening, fixed ranks, mana measurement, boss-kill closure.
3. `# 3. Hunter Scale` — copy A9 verbatim, plus what non-hunter awakened do.
4. `# 4. The United States` — BGM structure, licensing, contract auctions, guild capitalism, Chicago's position.
5. `# 5. Europe and the World` — European Gate Council, national agencies, license reciprocity, **guild strength scales with home-country size and Gate density**; one-line identities for Brandhof (German, largest, engineering-corps culture), Zenith Group (British, finance-driven, buys rather than builds), Horizon Guild — Europe; sovereignty-vs-safety tension; one paragraph each for East Asia, and the rest of the world in brief.
6. `# 6. The Czech Position` — CGA, the single Czech S-rank as national celebrity/political football, Karlov Guild, Prague's scene.
7. `# 7. Common Knowledge by Tier` — three subsections: what a citizen knows / what a licensed hunter knows / what regulators and guild masters know. Each a concrete bulleted list (≥6 bullets each).
8. `# 8. The System (Public Truth)` — what the world believes: nothing. No hunter has a System; the protagonist's is instrument-invisible. State the world-level fact that ranks never change and levels do not exist for anyone else.
9. `# 9. OWNER EYES ONLY — The Hidden Truth` — begins with a normative warning line: "The Runtime must never reveal, quote, or paraphrase this section in play; it surfaces only as consistent in-world clues." Author concrete answers (invented fresh, original): why Gates exist, what the System is, why/how it chose its bearer, **succession ruling** (explicit — even if "none"), what the rising break rate is building toward, and 3 planted clue-lines that early play may surface.

- [ ] **Step 2: Self-check**

Run: `Select-String -Path worlds/gatefall/200_WORLD_BIBLE.md -Pattern 'XXXXXX|<required|<optional|<generated'`
Expected: no matches.
Check the six exact guild/institution names above appear spelled exactly as listed.

- [ ] **Step 3: Run validation** — `.\tools\validate_repository.ps1` → exit 0.

- [ ] **Step 4: Commit**

```bash
git add worlds/gatefall/200_WORLD_BIBLE.md
git commit -m "Gatefall: world bible with hunter scale, global layer, and owner-only hidden truth"
```

---

### Task 3: World Rule Profile — Part A: progression core (`206_WORLD_RULE_PROFILE.md` Sections 1–8)

**Files:**
- Create: `worlds/gatefall/206_WORLD_RULE_PROFILE.md` (Sections 1–8 of the full document; Tasks 4–5 append)

**Interfaces:**
- Consumes: Anchors A1–A4, A10; Reikon profile Sections 1–8 as shape reference (numbered sections, normative tone, worked examples).
- Produces: section numbers Tasks 4–5 must continue from (Task 4 starts at Section 9); the terms **Bearer** (the System's holder), **stat point**, **modifier step**, **band health** used by all later tasks.

- [ ] **Step 1: Author the document head and Sections 1–8**

Header: `# Gatefall — World Rule Profile 1.0`, File/Class/Status block, Class: "World rule content (Decision 062): authoritative on behavior in its declared scope; owns no Persistent Object." Then:

1. `# 1. Declared Overrides` — `GTF-OVR-001 Causal System Progression` (the Bearer alone levels; XP/stats/skills are canonical state, engine progression rules deferred to this profile) and `GTF-OVR-002 System Vitality` (Bearer health/mana per this profile). Model the override-declaration style on Reikon Section 1.
2. `# 2. Scope` — overrides bind the Bearer only; every other character resolves as an ordinary engine character whose capability is their fixed rank band. NPC hunters get no sheets.
3. `# 3. Levels and Experience` — A1 verbatim: threshold formula, level-up grant, kill/milestone/daily XP tables. Worked example: a fresh Bearer clearing an E-Gate.
4. `# 4. Stats` — the five stats, baseline, A2 modifier-step rule, and the full capability-unlock table: for each of the five stats, a named unlock at 30 and at 50 (author all ten; A2 lists six of them — invent the remaining four in the same spirit and state each in one mechanical sentence).
5. `# 5. Mana` — A3 verbatim: pool formula, recovery, running dry.
6. `# 6. Vitality` — A4: band health reuse, natural recovery tiers, treatment interaction, the death rule (death is final; campaign hard-ends).
7. `# 7. Skills` — acquisition (rune / skill book / earned-by-doing with a concrete earned-skill rule: an approach used successfully in ≥3 distinct dangerous scenes may be ratified by the System as a skill), skill entries carry name/rank/mana cost/effect in modifier-step or damage-band terms; author a **starting skill table of 8 skills** (e.g., Sprint, Dagger Mastery, Mend, Stone Skin, Flash Step, Keen Sense, Silent Step, Mana Bolt) with costs and effects — these are the skills runes can teach at E/D tier.
8. `# 8. The Daily Quest and Penalty Zones` — A1 daily rewards, the exact regimen (A10's objectives), the 24 h window, penalty zone: 4-hour survival instance at the Bearer's band, populated per A5's formula at the Bearer's effective grade, no loot, exit on survival.

- [ ] **Step 2: Self-check** — placeholder grep as Task 2 Step 2; verify the XP threshold formula, pool formula, and all six A2 unlock examples appear verbatim.

- [ ] **Step 3: Run validation** — `.\tools\validate_repository.ps1` → exit 0.

- [ ] **Step 4: Commit**

```bash
git add worlds/gatefall/206_WORLD_RULE_PROFILE.md
git commit -m "Gatefall profile 1.0: progression core (levels, stats, mana, vitality, skills, daily quest)"
```

---

### Task 4: World Rule Profile — Part B: world machinery (Sections 9–13)

**Files:**
- Modify: `worlds/gatefall/206_WORLD_RULE_PROFILE.md` (append Sections 9–13)

**Interfaces:**
- Consumes: Anchors A5–A8; Task 3's terms.
- Produces: the Gate/loot/economy tables Tasks 6–9 must price against; the anomaly and archetype tables.

- [ ] **Step 1: Append Sections 9–13**

9. `# 9. Gates` — A5 verbatim as normative tables: spawn rates, grade frequency, timers, party minimums, confidence and the true-grade d100 table, the anomaly d100 table, the population formula, and: **"A Gate is populated by default. Emptiness is an authored exception carrying an in-world cause — and in Gatefall, an empty-looking dungeon is itself a warning sign."** Dungeon breaks: what pours out (the Gate's remaining population), response order (Chicago: BGM emergency contract → nearest guild strike team; Prague: CGA → Karlov or nearest international branch).
10. `# 10. Dungeon Archetypes` — the A6 d8 table, each twist one mechanical sentence. Rule: archetype is set at Gate instantiation and named in the assignment when the grade is confirmed (surveyors see the interior), unknown when unconfirmed.
11. `# 11. Loot` — A8 verbatim: crystal/core rules, boss d100 table, red-gate/anomaly grade bump, named-uniques rule. Item grades E–S with the rule that gear grade sets its damage/protection band exactly as monster grade sets band health.
12. `# 12. Economy` — A7 verbatim, organized as: licensed market prices; black market (+40%, felony); contract payouts and guild salaries; cost of living Chicago and Prague; **the System shop** (gold buy/sell lists, the no-exchange rule); starting-funds guidance by background (working poor $800 / stable $4,000 / guild-family $15,000 — CZK equivalents ×22).
13. `# 13. Parties and Other Hunters` — NPC hunters resolve by rank band; standard party contract terms (equal split after a 10% leader share; loot declared at exit; liability waivers), legal minimums (A5), and the witness rule: **inside an uncleared Gate there are no cameras and no instruments — only testimony.** (This sentence is the authored foundation for betrayal plots; no further subsystem.)

- [ ] **Step 2: Self-check** — placeholder grep; verify all four d100/d8 tables render as Markdown tables and every price in A7 appears.

- [ ] **Step 3: Run validation** — `.\tools\validate_repository.ps1` → exit 0.

- [ ] **Step 4: Commit**

```bash
git add worlds/gatefall/206_WORLD_RULE_PROFILE.md
git commit -m "Gatefall profile 1.0: gates, archetypes, loot, economy, parties"
```

---

### Task 5: World Rule Profile — Part C: the System's surface (Sections 14–20)

**Files:**
- Modify: `worlds/gatefall/206_WORLD_RULE_PROFILE.md` (append Sections 14–20)

**Interfaces:**
- Consumes: A10; spec Sections 3 (`/system` panels), 5 (classes), 4 laws 3/6; Reikon profile Sections 9–11 as shape reference for behavioral contract, render template, and character ledger extension.
- Produces: the complete profile; the class panel names Task 8's figures never see but campaign play will.

- [ ] **Step 1: Append Sections 14–20**

14. `# 14. The System's Behavioral Contract` — the System is not a Persistent Entity (mirror Reikon 9.1's reasoning in Gatefall's own words); truthfulness (the System never lies but may withhold); trigger tiers (what it announces unprompted vs. on request); the information boundary (it knows Gate/quest/Bearer state, not NPC minds); **compact inline notifications** (A10 format, exact).
15. `# 15. The /system Command` — normative render templates for every panel: `/system` status window, `quests`, `skills`, `inventory`, `shop`, `titles`, `log`, and the rule that class panels attach post-class-quest. Author each template concretely (bracketed block style per A10) with a worked example filled from a hypothetical level-3 Bearer. Panels are read-only views of canonical state.
16. `# 16. Titles` — earning rule (named feats: first solo clear, red-gate survival, zero-damage clear, 100 kills, a break stopped) with one authored passive each (modifier step or resource effect); one equipped at a time.
17. `# 17. Instant Dungeons` — keys (grade = Gate grade rolled from), opening rules (2-hour instance, populated per A5 formula at key grade, loot per A8, no timer, no BGM jurisdiction — legally unregulated space and the profile says so).
18. `# 18. The Class Quest and Hidden Classes` — trigger: **Bearer level 25**; the trial (sealed instance, fully lethal, no retreat, tracked signals: kill efficiency / battlefield control / weapon breadth / endurance / positioning); ≥2 classes always offered. Then the five classes, each with: core mechanic in engine terms, resource costs, growth path, its evolution quest hook, and its `/system` class panel template — **Shadowbinder** (extraction: on a defeated foe, Intelligence-gated attempt, roster cap = Intelligence ÷ 5, shadows persist/level/store), **Soulforged Armory** (bind essence to weapon, one source-ability per weapon, arsenal cap = level ÷ 5), **Devourer** (consume core → permanent fragment, cap 1 fragment per 5 levels, each fragment one authored ability), **Echo Knight** (record ≤3 combat instants, deploy echoes replaying them, mana cost per echo), **Riftwalker** (rift-step line-of-sight, micro-rift deflection, pocket cache, personal gate at evolution).
19. `# 19. Exposure and Re-grading` — how anomalous performance surfaces (witness testimony, appraiser re-measurement request, guild scouting, media); the BGM/CGA re-assessment procedure (voluntary unless court-ordered after a public incident); the **reawakened** classification (rank re-measured upward — the world's only sanctioned explanation for growth, and the Bearer's best cover); what can be legally refused and what refusing costs (contract-tier caps).
20. `# 20. Pacing and Lethality Laws` — montage compression law (logistics compress by default; beat-by-beat only for uncertain, opposed, or consequential action — spec Section 4 law 3, restated normatively); the die never replaces a missing fact; unanswered questions are captured as rulings into world files at the same session's checkpoint; fully-lethal ruling restated.

- [ ] **Step 2: Self-check** — placeholder grep; verify every panel template contains a worked example; verify all five class names and level 25 trigger appear; verify the profile now runs Sections 1–20 with no numbering gaps.

- [ ] **Step 3: Run validation** — `.\tools\validate_repository.ps1` → exit 0.

- [ ] **Step 4: Commit**

```bash
git add worlds/gatefall/206_WORLD_RULE_PROFILE.md
git commit -m "Gatefall profile 1.0 complete: System contract, /system panels, titles, keys, classes, exposure, pacing"
```

---

### Task 6: Places ledger (`210_PLACES.md`)

**Files:**
- Create: `worlds/gatefall/210_PLACES.md`
- Modify: `system/ID_REGISTRY.md`

**Interfaces:**
- Consumes: spec Section 6 place lists; template `templates/000_TEMPLATE_CONVENTIONS.md` Sections 2–3; Reikon `210_PLACES.md` as format reference.
- Produces: place entity IDs Tasks 7–9 reference (record the minted IDs in the task's commit message body for the next tasks: Chicago city, Prague city, and each district/site).

- [ ] **Step 1: Allocate IDs** — read `system/ID_REGISTRY.md` high-water marks. Mint: 1 REC (this ledger) + 12 ENT: Chicago (Settlement/Kingdom), Prague (Settlement/Kingdom), and 10 Places — Chicago: Lakefront Gate Corridor, Red Line Corridor (low-rank contract district), the Cicero Scar (quarantined break site), Horizon Tower, BGM Region V Field Office; Prague: Old Town Gate Cluster, Metro Corridor, the Libeň Scar, Karlov House, CGA Headquarters. Update high-water table + allocation log row in the same commit.

- [ ] **Step 2: Author the ledger** — header block, its own REC Object Block (status active, provenance source `ruling`, event_time 2026-07-22), then `# Chicago`, `# Prague`, `# Global` sections. Each entity: heading, 2–3 paragraphs of concrete describable detail (what it looks like, who is there, what a hunter does there — including each Scar's standing mystery), then its filled ENT Object Block (type, scope `regional` for cities / `local` for sites, lifecycle `active`, aliases, canonical_state with 2–4 world-meaningful fields such as gate_density or quarantine_status). UNESCO clearance constraint stated on the Old Town cluster.

- [ ] **Step 3: Self-check** — placeholder grep on both changed files; every Object Block parses as YAML (fenced ```yaml); IDs sequential with no gaps; registry high-water = last minted ID.

- [ ] **Step 4: Run validation** — `.\tools\validate_repository.ps1` → exit 0.

- [ ] **Step 5: Commit** (list minted ID ranges in the message body)

```bash
git add worlds/gatefall/210_PLACES.md system/ID_REGISTRY.md
git commit -m "Gatefall: places ledger (Chicago and Prague)"
```

---

### Task 7: Institution ledgers (8 files)

**Files:**
- Create: all 8 `worlds/gatefall/institutions/<slug>/250_INSTITUTION_LEDGER.md` per the File Structure block
- Modify: `system/ID_REGISTRY.md`

**Interfaces:**
- Consumes: exact institution names from Task 2; place IDs from Task 6; Reikon institution ledger (`worlds/reikon/institutions/hunters-authority/250_INSTITUTION_LEDGER.md`) as format reference.
- Produces: institution ENT IDs and governance/membership REL IDs Task 8's figures reference.

- [ ] **Step 1: Allocate IDs** — 8 REC (ledgers) + 8 ENT (institutions, type Institution, scope: BGM Region V and CGA `regional`; Horizon Guild `world`; others `local`/`regional` as fits) + REL: one governance/jurisdiction REL per regulator (BGM→Chicago, CGA→Prague, by place ID) and one rivalry/competition REL per spec seed (Horizon Europe↔Karlov). Update registry same commit.

- [ ] **Step 2: Author each ledger** with: identity paragraph; **Interior factions** (≥2 named factions with a disagreement — spec character-depth law applied at institution level); **What they control**; **What they want**; **Current tensions** (from spec seeds: Ironline recruiting against Horizon; the three-way bid for Karlov; CGA protecting its S-rank); REC + ENT Object Blocks; REL blocks in the regulator ledgers.

- [ ] **Step 3: Self-check** — placeholder grep across `worlds/gatefall/institutions/`; each ledger has ≥2 named factions; all referenced place IDs exist in `210_PLACES.md`.

- [ ] **Step 4: Run validation** — `.\tools\validate_repository.ps1` → exit 0.

- [ ] **Step 5: Commit**

```bash
git add worlds/gatefall/institutions system/ID_REGISTRY.md
git commit -m "Gatefall: eight institution ledgers (Chicago and Prague)"
```

---

### Task 8: Notable figures (`220_NOTABLE_FIGURES.md`)

**Files:**
- Create: `worlds/gatefall/220_NOTABLE_FIGURES.md`
- Modify: `system/ID_REGISTRY.md`

**Interfaces:**
- Consumes: spec figure lists + character depth law; institution ENT/REL IDs from Task 7.
- Produces: figure ENT IDs seed events reference.

- [ ] **Step 1: Allocate IDs** — 1 REC + 12 ENT (Character): Chicago — BGM regional director; Horizon guildmaster; Horizon S-rank ace; Ironline guildmaster; a licensed appraiser; a black-market core buyer. Prague — CGA director; the Czech S-rank; Karlov guildmaster; Karlov heir; Horizon Europe branch chief; a black-market artifact smuggler. Plus membership RELs binding each figure to their institution. (Brandhof/Zenith Prague leads stay bible-level per spec — no entities.) Update registry same commit.

- [ ] **Step 2: Author each figure** — original name, rank, role; then **mandatory labeled lines**: `**Want:**`, `**Fear/Flaw:**`, `**Secret:**`, `**Agenda (this month):**`, `**Relationships:**` (≥2 named ties by ID + name, ≥1 crossing institutions); a paragraph of voice/presence; ENT Object Block with membership REL references.

- [ ] **Step 3: Self-check (depth law, mechanical)**

Run: `(Select-String -Path worlds/gatefall/220_NOTABLE_FIGURES.md -Pattern '\*\*Want:\*\*').Count` — expect **12**; repeat for Fear/Flaw, Secret, Agenda, Relationships — each **12**. Placeholder grep.

- [ ] **Step 4: Run validation** — `.\tools\validate_repository.ps1` → exit 0.

- [ ] **Step 5: Commit**

```bash
git add worlds/gatefall/220_NOTABLE_FIGURES.md system/ID_REGISTRY.md
git commit -m "Gatefall: twelve notable figures under the character depth law"
```

---

### Task 9: Resources and seed events (`240_RESOURCES.md`, `260_SEED_EVENTS.md`)

**Files:**
- Create: `worlds/gatefall/240_RESOURCES.md`, `worlds/gatefall/260_SEED_EVENTS.md`
- Modify: `system/ID_REGISTRY.md`

**Interfaces:**
- Consumes: A7/A8 prices; figure and institution IDs from Tasks 7–8; spec seed list.
- Produces: EVT IDs; the priced resource entities campaign inventories will reference.

- [ ] **Step 1: Resources ledger** — 1 REC + 4 ENT (Resource): mana crystals (graded family), beast cores, graded hunter gear, System-shop consumables. Each: description, market behavior (licensed vs black market), and the A7 price table row copied verbatim. Allocate + log IDs.

- [ ] **Step 2: Seed events ledger** — 1 REC + 5 EVT with full Object Blocks (provenance source `ruling`, absolute event_times in 2026): (1) Chicago — a mis-graded Gate incident brewing (an unconfirmed D reading on the Red Line that is worse); (2) Chicago — the district auction guild war (Horizon vs Ironline); (3) Prague — the Old Town Gate that keeps re-grading upward; (4) Prague — the three-way foreign bid for Karlov, CGA favoring whoever keeps the S-rank home; (5) Global — the rising break-rate statistic, publicly unexplained (consistent with the bible's owner-only section — check it before writing). Each event: what is established as having happened by world-start, referencing actor IDs.

- [ ] **Step 3: Self-check** — placeholder grep both files; every referenced ID exists; break-rate seed contradicts nothing in bible Section 9.

- [ ] **Step 4: Run validation** — `.\tools\validate_repository.ps1` → exit 0.

- [ ] **Step 5: Commit**

```bash
git add worlds/gatefall/240_RESOURCES.md worlds/gatefall/260_SEED_EVENTS.md system/ID_REGISTRY.md
git commit -m "Gatefall: resources ledger and five seed events"
```

---

### Task 10: World README, index finalization, and full spec audit

**Files:**
- Modify: `worlds/gatefall/README.md` (replace stub), `system/WORLDS_AND_CAMPAIGNS.md` (version cell)

**Interfaces:**
- Consumes: everything authored in Tasks 2–9; spec success criteria 1–6.

- [ ] **Step 1: Author the full README** modeled on `worlds/reikon/README.md`: what Gatefall is, core file map with one-line description each, how play works here (System, `/system` and its panels, daily quest, Gates, lethality — with the profile as governing source), campaign-creation pointers (Chicago or Prague start; protagonist is created at campaign creation as the pre-System weakest E-rank). Update the index row version cell to `0.1 (World Rule Profile 1.0)`.

- [ ] **Step 2: Full validation** — `.\tools\validate_repository.ps1` then `.\tools\test_checkpoint_contract.ps1` → both exit 0.

- [ ] **Step 3: Spec success-criteria audit** — check each criterion and record the result in the commit message body:
1. Index lists gatefall; reikon campaign note says dormant.
2. Grep the profile: population formula, loot d100, XP formula, shop price list, penalty zone, timers all present (no unauthored magnitude among A1–A8).
3. First-session readiness: both cities have places + 4 institutions + figures + seeds.
4. Depth-law counts from Task 8 Step 3 all = 12.
5. Section 5b question classes each answered: money (profile §12), procedure (bible §4–6 + profile §9), law (profile §12–13, §17, §19), Gates (profile §9–10), System voice (profile §14–15), common knowledge (bible §7).
6. Bible §9 answers all five hidden-truth questions.

- [ ] **Step 4: Commit**

```bash
git add worlds/gatefall/README.md system/WORLDS_AND_CAMPAIGNS.md
git commit -m "Gatefall: world README and Profile 1.0 registration; spec audit complete"
```

---

## Self-Review Notes

- **Spec coverage:** premise/hunter scale/global/guilds → Task 2; full System incl. mana/health/parties → Tasks 3–4; anti-Reikon laws → Tasks 4 (§9) and 5 (§20); loot → Task 4; `/system` → Task 5 (§15); classes → Task 5 (§18); exposure → Task 5 (§19); archetypes → Task 4 (§10); hidden truth + succession → Task 2 (§9); character depth law → Tasks 7 (factions) and 8; two cities at parity → Tasks 6–9 symmetric; index/dormant/validation → Tasks 1, 10; no-OOC bar → audited Task 10 Step 3.
- **Deliberately out of scope** (per spec): campaign creation; regions beyond the two cities; `230_KNOWLEDGE_SUBJECTS.md` (not in the spec's file list); engine changes.
- **ID hygiene:** four tasks touch `system/ID_REGISTRY.md`; each allocates in its own commit so ranges stay attributable.
