# Reikon World — Usage Guide

**World Status:** Complete and playable  
**Version:** 0.1 (Solo Leveling-inspired gate-and-hunter world)  
**Engine Compatibility:** Chronicle Engine 0.2.0; Data Model 0.1.1; Reikon World Rule Profile 0.3
**Created:** 2026-07-13

---

## Quick Start

1. **Read the World Bible first:** `200_WORLD_BIBLE.md`
   - Overview of Reikon (setting, institutions, current crisis)
   - Rift mechanics, Ranks, Awakening, hunter casualties
   - Newly Awakened social position, core economy, underground hunting

2. **Read the World Rule Profile:** `206_WORLD_RULE_PROFILE.md` — authoritative for every mechanic, and required in the working set before resolving affected state (Rules 14.4)
3. **Read the System Lore:** `205_THE_LEDGER.md`
   - What the System is, who has it, what it means in the world
   - Monster archetypes and taxonomy
   - Rift loot system (cores, artifacts, equipment)
   - Core crafting and enhancement
   - Rank certification process
   - Team bonds and synergy

4. **Create your character or use provided:** See `campaigns/reikon_awakening_001/100_CHARACTER_SHEET.md` (`ENT-000051`, Daedalus) for the canonical example
   - Use `/system` to view the Bearer's fixed canonical interface
   - Progression is narrative-driven but tracked mechanically, and computed — never estimated
   - XP, stats, skills, and leveling happen through play

5. **Start playing:** Narrative text RPG (like Verra world campaigns)
   - Describe your actions in plain text
   - I respond with consequences and story development
   - No predefined options — you choose what to do

---

## File Structure

**Core World Files:**
- `200_WORLD_BIBLE.md` — Setting, institutions, mechanics, current situation
- `206_WORLD_RULE_PROFILE.md` — **World Rule Profile 0.3 (authoritative).** Declared overrides and every mechanic: pool, allocation, costs, resolution, damage, deterministic Health recovery, XP, per-exchange settlement, compact notifications, and the `/system` template
- `205_THE_LEDGER.md` — System lore, abilities, monsters, loot, rank system. Describes; the profile governs
- `210_PLACES.md` — Geography (Aldish Republic, Verholt, specific locations)
- `220_NOTABLE_FIGURES.md` — NPCs (Association leaders, Guild heads, Institute director, etc.)
- `230_KNOWLEDGE_SUBJECTS.md` — Disputed knowledge (Awakening nature, System mystery, forged ranks)
- `240_RESOURCES.md` — Specific items and artifacts in the world
- `260_SEED_EVENTS.md` — Historical events and canon happenings

**Institution Ledgers:**
- `institutions/hunters-authority/250_INSTITUTION_LEDGER.md` — Hunters' Association
- `institutions/meridian-guild/250_INSTITUTION_LEDGER.md` — Meridian Guild (largest corporation)
- `institutions/aurology-institute/250_INSTITUTION_LEDGER.md` — Aurology Institute (research)
- `institutions/vigil-of-the-rupture/250_INSTITUTION_LEDGER.md` — Vigil of the Rupture (ideological)

**Campaign/Session Files:**
- `campaigns/reikon_awakening_001/100_CHARACTER_DAEDALUS.md` — Example character (Daedalus, Fire Scholar)
- `campaigns/reikon_awakening_001/050_CAMPAIGN_LOG.md` — Session progress tracking
- `campaigns/reikon_awakening_001/CHECKPOINT_000.md` — Character state snapshot (beginning of session)

---

## How the System Works

### In-Play Mechanics

**Narrative First:**
- Everything unfolds as story text (like Verra campaigns)
- Only the compact notifications and fixed `/system` window declared by `206_WORLD_RULE_PROFILE.md` interrupt prose
- Progression is described naturally, followed by the one-time canonical state notification when its trigger fires

**Check Status Anytime:**
- Use `/system` command to view your diegetic System interface
- Shows: Rank, XP progress, Health, Mana, all Stats, Skills, Inventory, Quests
- Displays only the fixed Section 10 template; “The Ledger” is lore, not an alternate window style
- Only you can see your System; others cannot

### Progression Model

**XP & Leveling:**
- Gain XP by defeating monsters, clearing Rifts, facing real danger
- When XP reaches the current threshold (Level 1→2 is 100 XP), an **Ascension** occurs and causes its declared grants
- Leveling unlocks new skills, paths, and grants Skill Points

**Skill Points:**
- Earned on each Ascension (level up)
- Allocate to improve Stats (Power, Endurance, Speed, Mana Affinity, Perception)
- Allocate to upgrade Skills (increase damage, reduce cost, add effects)
- Unlock new Skills and Paths

**Mechanics:**
- Action resolution: Intent + Circumstance + d100 (Rules Section 4)
- Stats are Modifiers, not overrides
- The impossible stays impossible (Rules Section 4.2)
- Growth is earned through genuine resolved challenge and granted causally by `RKO-OVR-001`

---

## Key World Facts

**Setting:** Verholt, a city of ~900,000 in the Aldish Republic, Year 31 After Rupture

**Core Loop:**
1. Rifts emerge randomly (mostly in industrial zones)
2. Hunters enter and fight monsters
3. Clear the core to collapse the Rift safely
4. Harvest cores as loot and currency
5. Gain XP and grow stronger

**Rift Lifecycle:** 2-7 days to clear before catastrophic collapse  
**Rift Frequency:** Multiple E-D per day, several C per week, one A per month, one S per year  
**Annual Casualty Rate:** 20-30% (dangerous profession)  
**Monster Types:** Broodlings (weak), Swarmers (coordinated), Bruisers (tanky), Slingers (ranged), Hunters (intelligent), Siege Beasts, Warlords, Anomalies, Apex Predators, Architects  
**Hunter Ranks:** E, D, C, B, A, S, Anomalous (immutable, determined by mana pool at Awakening)

**Power Centers:**
- Government (civilian administration)
- Hunters' Association (licensing, ranking, scouts)
- Meridian Guild (corporate hunter teams)
- Aurology Institute (research)
- Vigil of the Rupture (ideological movement)

**Current Crisis:**
- Kessler Rift (A-Rank) is deepening — catastrophe approaching
- Danesmoor collapse (recent) damaged public confidence
- Aurology Institute discovered System architect evidence — institutional tension rising
- Rift activity in Verholt climbing for past year

---

## Creating a Character

**Basic Choices:**
1. **Age & Background** (Scholar, Soldier, Laborer, Merchant, Refugee, etc.)
2. **Initial Abilities** (1-3 powers: Fire, Strength, Speed, Healing, Binding, Rift-Sensing, etc.)
3. **Starting Rank** (E-Rank recommended for fresh Awakened; D or C-Rank if special)
4. **Allegiance** (Hunters' Association, Guild, Independent, Underground)
5. **Personality** (Ambitious, Desperate, Curious, etc.)

**Example Character:** Daedalus (provided in `campaigns/reikon_awakening_001/100_CHARACTER_DAEDALUS.md`)
- 20-year-old scholar from Aurology Institute
- Fire mage + Durability boost
- E-Rank, Hunters' Association
- Ambitious Prodigy personality
- First assignment: Clear Warehouse 7 E-Rift

---

## Running a Campaign

**Session Structure:**
1. Set a scene (narrative text, no options)
2. Player describes action
3. Resolve via d100 (intent + circumstance)
4. Narrate consequences and new scene
5. Player can use `/system` anytime to check status
6. Progress through leveling, skill growth, Rift expeditions, relationships

**Example Commands During Play:**
- `/system` — View your diegetic System interface (an in-world, Reikon-specific command)
- Describe your action freely — no predefined options
- Ask questions about the world
- Suggest plans or roleplay dialogue

**Diegetic vs. runtime commands:** `/system` is *diegetic* — it belongs to Reikon's fiction and shows the character's in-world System. It is different from the engine's **runtime commands** (`/save`, `/continue`, `/new`, `/end`, `/status`, and the rest), which are out-of-character controls for the session and work the same in every world. See `docs/GAMEPLAY_START_GUIDE.md` for the full list. Note that `/status` (the out-of-character progress view) and `/system` (the in-world interface) are deliberately separate; if a name ever collided, the runtime command would take precedence.

`/system` is Reikon's **declared diegetic command**: when a campaign is set in Reikon, the Runtime includes `/system` in the available-commands menu it shows at the start of every session (alongside the generic runtime commands), so players know it is available.

**Checkpointing:**
- Create CHECKPOINT_XXX.md files to save character state at key moments
- Reference campaign log to track progress and decisions
- All XP, stats, inventory, quest progress saved in System (use `/system` to verify)

---

## Technical Notes

**Engine Compliance:**
- All mechanics follow Chronicle Engine Rules Sections 4-5
- System interface is *diegetic* (in-world information), not a second resolution system
- Ranks, abilities, and stats are Modifiers, never overrides
- No power overrules the d100 resolution
- Threshold crossing causes Ascension and its grants (`RKO-OVR-001`, Decision 059)

**Progression:**
- Solo Leveling mechanics (XP, stat progression, skill trees)
- Delivered as a narrative text RPG, but with a **diegetically-real, tracked System** (Decision 057): mana and XP are canonical state, surfaced **inline** in-world as they change (`Mana: 13 → 1/13`, `XP: 12 → 36/100`), and viewable in full via `/system`
- `/system` renders the **Canonical `/system` Template** in `206_WORLD_RULE_PROFILE.md` — a fixed window every Runtime shows identically from canonical state
- XP is accrued per challenge, scaled by threat, and causally grants progression; **the d100 still decides every uncertain action** — stats and level establish modifier steps and available methods, never the rolled outcome

---

## Ready to Play

The world is complete and self-contained. A new player can:
1. Read the World Bible and System Reference
2. Create a character (or use Daedalus)
3. Start a campaign
4. Use `/system` to check stats anytime
5. Play narrative text RPG with full mechanical depth

No external dependencies. All world content is in this directory.

