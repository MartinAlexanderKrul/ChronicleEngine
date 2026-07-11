# Chronicle Engine

## Engine Specification

**Engine Version:** 0.1.0  
**Status:** Workshop Draft  
**Engine Type:** Persistent Historical Simulation  
**Simulation Model:** World-First  
**Resolution System:** d100  
**Progression Model:** Emergent; no levels or experience points  
**Canonical Storage:** Versioned ledgers

---

# Introduction

## Purpose

This document defines the core rules governing the Chronicle Engine.

Its purpose is to establish a consistent simulation framework that remains stable across all campaigns. Rather than telling a predetermined story, the engine simulates a living world that evolves through the interactions of individuals, institutions, cultures, economies, natural forces, and chance.

Campaign-specific content—including characters, inventories, kingdoms, historical events, tracked objectives, and discoveries—is stored separately in the canonical ledgers.

Unless explicitly revised through a new engine version, the rules defined in this document remain immutable throughout gameplay.

---

## Scope

This specification governs:

- World simulation
- Action resolution
- Canonical truth
- Knowledge systems
- Character progression
- Combat and injuries
- Economy and trade
- Reputation
- Institutions and factions
- Research and discovery
- Magic framework
- Historical persistence
- Session state updates

It does **not** define any specific setting, campaign, character, or storyline.

Because this document is still a workshop draft, not every scoped domain has been fully specified yet.

Institutions and governance, research lifecycle, historical record generation, magic extension boundaries, and save/session architecture remain core engine domains that must eventually be formalized here or in explicitly subordinate engine documents.

World or campaign files may extend these areas only in ways that do not silently redefine accepted engine behavior.

---

# 0. Engine Laws

These laws define non-negotiable behavior of the simulation.

Every other rule in this specification must remain consistent with these principles.

---

## Law I — Consistency

Established canon may never be silently contradicted.

Contradictions must be identified, resolved explicitly, and propagated to all affected canonical records.

---

## Law II — Causality

Every meaningful event should have a traceable cause.

Coincidence may begin stories.

Causality sustains them.

---

## Law III — Agency

The player may attempt any action that is physically and logically possible.

The engine evaluates consequences rather than restricting creativity.

---

## Law IV — World Independence

The world continues evolving regardless of player attention.

Characters do not cause the world to exist.

They participate within it.

---

## Law V — Persistence

Consequences remain part of the simulation until altered through later events.

Nothing important is forgotten without reason.

---

## Law VI — Discovery

Unknown information is revealed through interaction, investigation, experimentation, or historical research.

The engine should avoid exposition that bypasses discovery.

---

## Law VII — Fairness

Equivalent situations should be resolved using equivalent rules.

Player characters, NPCs, institutions, kingdoms, and civilizations operate under the same simulation principles whenever reasonably possible.

---

## Law VIII — Historical Integrity

The purpose of the engine is to simulate history rather than construct a narrative.

Stories emerge from historical development.

History is never rewritten to improve a story.


# 1. Design Philosophy

## Purpose

Chronicle Engine is a persistent historical simulation rather than a scripted narrative.

The engine does not attempt to tell a predetermined story or guide the player toward predefined outcomes. Instead, it simulates a living world that continues to evolve through the interactions of individuals, institutions, cultures, economies, natural forces, and chance.

The player's character exists within this world but is never treated as its predetermined center.

A character may become forgotten, influential, legendary, or world-changing depending entirely on their actions and the world's response.

---

## Core Principles

### 1.1 The World Comes First

The world is the primary persistent entity.

Characters, kingdoms, institutions, discoveries, technologies, religions, and historical narratives are transient expressions of the world's ongoing development.

The simulation must remain internally consistent even if no player character exists.

---

### 1.2 History Emerges

History is never planned in advance.

Major events emerge naturally from:

- Player decisions
- NPC decisions
- Institutional goals
- Political pressures
- Economic forces
- Scientific discoveries
- Magical developments
- Environmental changes
- Chance

No event exists solely because it would create a dramatic story.

---

### 1.3 Consistency Before Drama

When dramatic storytelling conflicts with established rules, established rules take precedence.

Unexpected outcomes are preferable to inconsistent outcomes.

Long-term trust in the simulation is more valuable than short-term excitement.

---

### 1.4 Discovery Before Explanation

The world is not fully known.

Characters begin with limited knowledge.

Unknown places, forgotten civilizations, magical principles, historical truths, and natural phenomena should be discovered through exploration rather than explained in advance.

The engine should avoid creating unnecessary detail until it becomes relevant through simulation or discovery.

---

### 1.5 Institutions Outlive Individuals

Most lasting change is carried through institutions rather than people.

Universities preserve knowledge.

Guilds preserve craft.

Churches preserve doctrine.

Governments preserve law.

Merchant houses preserve commerce.

Characters may found, reform, corrupt, or destroy institutions, but institutions possess identities and histories independent of their founders.

---

### 1.6 Consequences Persist

Actions have lasting effects whenever reasonable.

Political decisions influence future diplomacy.

Research changes available knowledge.

Wars alter borders.

Discoveries reshape institutions.

Economic choices affect future prosperity.

Reputation influences future interactions.

The world remembers.

---

### 1.7 Canon Evolves Through Simulation

Once established, canonical facts are not rewritten for narrative convenience.

Future changes occur through historical development rather than retroactive modification.

Discovery reveals unknown truth.

History records past events.

Simulation creates future events.

These are separate processes.

---

### 1.8 The World Evolves Independently

The world continues to develop regardless of the player's current location or activities.

Kingdoms wage wars.

Institutions conduct research.

Merchants establish new trade routes.

Religious movements spread or fracture.

Technologies advance.

Leaders die and successors emerge.

Natural disasters occur.

Economic conditions fluctuate.

Most of these developments occur at an appropriate level of simulation rather than exhaustive detail. Events are expanded into historical records only when they become significant or intersect with gameplay.

The player experiences the world as a participant, not as the force that causes it to exist.

---

## World Simulation Levels

The engine simulates the world at three levels of detail.

### Active Simulation

The player's current location and directly connected people, places, and events.

Simulated in full detail.

Examples include:

- Conversations
- Combat
- Local economy
- Nearby politics
- Exploration
- Investigations

---

### Regional Simulation

Neighboring regions and institutions that may reasonably affect the player in the near future.

Simulated at moderate detail.

Examples include:

- Border conflicts
- Merchant activity
- University research
- Political appointments
- Local famines
- Military movements

---

### Global Simulation

The remainder of the known world.

Simulated abstractly.

Only significant developments become historical events.

Examples include:

- Dynastic changes
- Major wars
- Discoveries
- Religious schisms
- Technological breakthroughs
- Continental trade shifts

Events outside the player's awareness remain unknown until discovered through travel, communication, diplomacy, scholarship, or rumor.

---

## Player Agency

The engine assumes the player always retains meaningful agency.

Problems should emerge from the world's natural development rather than scripted inevitability.

Likewise, opportunities should emerge naturally rather than being created solely to reward the player.

The simulation never forces a particular moral path, political ideology, or narrative outcome.

Every major consequence should be traceable to previous events, established mechanics, or believable decisions made by individuals or institutions.

---

## Design Goal

The engine should produce a world that feels as though it would continue existing even if no player were present.

A successful campaign is not one in which the protagonist becomes powerful.

A successful campaign is one in which the world has been meaningfully changed, whether that change is remembered, forgotten, celebrated, or feared.

## Revision Policy

This document defines engine-level behavior.

Changes to this specification require a new engine version.

Campaigns should not modify these rules during play unless all participants explicitly agree to migrate to a newer engine version.

Engine updates should preserve backward compatibility whenever reasonably possible.

The absence of a full section for a scoped domain does not grant permission to improvise conflicting engine behavior elsewhere.

When a domain is still underspecified, unresolved questions should remain explicit until the corresponding engine architecture is added.

# 2. Canon, Knowledge & Truth

Chronicle Engine distinguishes between objective reality, recorded information, individual knowledge, and cultural belief.

These layers must never be treated as interchangeable.

The engine should preserve uncertainty whenever reasonable. A character's understanding of the world may be incomplete, biased, outdated, or incorrect without changing objective reality.

---

## 2.1 Canon Hierarchy

When two sources of information conflict, canonical truth is determined using the following priority order:

1. Explicit rulings agreed upon during gameplay.
2. Events that occurred in the gameplay transcript.
3. Canonical ledger files.
4. Session summaries.
5. Reasonable inference based on established canon.
6. Newly generated information.

Higher-priority sources always override lower-priority sources.

The engine must never silently replace established canon with newly generated content.

When a contradiction is discovered, it should be resolved explicitly before gameplay continues.

---

## 2.2 Layers of Truth

The engine recognizes five distinct layers of information.

### Objective Reality

The actual state of the world.

Objective Reality exists independently of any observer.

It includes:

- physical events,
- locations,
- identities,
- political situations,
- magical phenomena,
- historical events,
- hidden information.

Objective Reality is the highest source of truth, even when nobody currently knows it.

---

### Character Knowledge

Everything a specific character genuinely knows through:

- personal experience,
- education,
- observation,
- research,
- testimony they trust.

Characters may possess incomplete or incorrect knowledge.

Different characters rarely know exactly the same things.

---

### Institutional Knowledge

Knowledge preserved by organizations.

Examples include:

- universities,
- churches,
- guilds,
- governments,
- military archives,
- libraries,
- merchant houses.

Institutional knowledge is often more reliable than individual memory but may still be incomplete, censored, politically motivated, or based on outdated research.

---

### Public Knowledge

Information generally accepted by society.

This includes:

- common history,
- geography,
- famous individuals,
- major political events,
- well-known religions,
- everyday technology.

Public knowledge may be inaccurate.

A widely believed statement is not automatically true.

---

### Myth & Belief

Legends.

Religious traditions.

Folklore.

Rumors.

Propaganda.

Songs.

Cultural memory.

These influence behavior regardless of their factual accuracy.

Myths may contain partial truths, symbolic truths, or complete falsehoods.

---

## 2.3 Information Access

Knowledge must always have a source.

Characters do not automatically know:

- world history,
- hidden identities,
- political conspiracies,
- magical theory,
- distant events,
- secret organizations.

Knowledge is acquired through:

- observation,
- education,
- experimentation,
- investigation,
- conversation,
- documents,
- institutions,
- exploration.

The engine must never grant information solely because it would help the story progress.

---

## 2.4 NPC Knowledge

Every significant NPC possesses an independent knowledge state.

NPC decisions are based only on information they could reasonably possess.

NPCs must never act upon:

- hidden player intentions,
- unseen actions,
- future events,
- secret identities,
- information available only to other characters,
- engine metadata.

When uncertainty exists, NPCs should make decisions using their own beliefs rather than objective truth.

---

## 2.5 Discovery

Unknown information becomes known only through discovery.

Discovery may occur through:

- exploration,
- experimentation,
- diplomacy,
- espionage,
- archaeological investigation,
- magical research,
- witness testimony,
- institutional records.

Discovery changes Character Knowledge.

It does not change Objective Reality.

---

## 2.6 Historical Interpretation

Historical records represent interpretations rather than perfect reconstructions.

Different historians may legitimately disagree.

Conflicting historical accounts may simultaneously exist without either becoming objective truth.

The engine should preserve historical uncertainty whenever appropriate.

---

## 2.7 Rumors

Rumors are information of uncertain reliability.

A rumor may be:

- true,
- partially true,
- outdated,
- misunderstood,
- intentionally fabricated.

Rumors influence decisions before their accuracy is verified.

Verification requires evidence.

---

## 2.8 Canonical Record Architecture

Chronicle Engine separates record types by role, scope, authority, and provenance.

Records are not interchangeable.

A record may preserve information without becoming the highest authority for that information.

The engine recognizes the following core record roles.

### Explicit Gameplay Rulings

Explicit rulings are agreed corrections, clarifications, or resolutions made during play.

They have the highest canon priority because they represent conscious agreement about how an ambiguity or contradiction is resolved.

Rulings should be propagated into affected canonical ledgers when practical.

---

### Gameplay Transcript

The gameplay transcript records what actually occurred during play.

It protects lived events from being overwritten by later summaries, ledgers, or interpretation.

When a transcript and a later summary conflict, the transcript controls unless an explicit ruling changes it.

---

### Canonical Ledgers

Canonical ledgers are structured state records.

They preserve durable facts such as:

- location,
- possession,
- ownership,
- relationships,
- obligations,
- injuries,
- institutional state,
- world state,
- campaign state.

Ledgers may exist at world, campaign, institution, or other scoped levels.

Ledger scope determines which facts a ledger is responsible for preserving.

All canonical ledgers occupy the ledger tier of the canon hierarchy.

If two ledgers conflict, the engine should first determine whether they describe different scopes.

If they describe the same fact, the contradiction must be resolved explicitly rather than hidden by document location.

---

### Historical Documents and Sources

Historical documents and sources are in-world evidence.

They may include:

- chronicles,
- biographies,
- memoirs,
- treatises,
- legal records,
- religious texts,
- propaganda,
- rumors,
- archives.

The existence, contents, authorship, and provenance of a historical source may be canon.

The claims inside that source are not automatically objective truth.

Historical sources may be accurate, incomplete, biased, forged, censored, misunderstood, or contradictory.

---

### Campaign Chronicles

Campaign chronicles preserve important campaign events in durable narrative form.

They are useful for continuity, memory, and later historical interpretation.

They do not outrank explicit rulings, gameplay transcripts, or canonical ledgers when resolving canon.

A campaign chronicle may become an in-world historical source if the simulation establishes who wrote it, when it was preserved, and how later people can access it.

---

### Session Summaries

Session summaries are reference artifacts.

They help participants remember what happened, but they are lower authority than rulings, transcripts, and canonical ledgers.

Session summaries should not introduce new canon unless the new information is also accepted through the canon hierarchy.

---

### Machine-Readable Saves

Machine-readable saves preserve restorable simulation state.

They are implementation artifacts, not narrative or historical documents.

Until Save State Architecture is fully defined, saves must not silently override explicit rulings, gameplay transcripts, or canonical ledgers.

Save restoration should preserve canon rather than create a competing canon source.

---

### Record Updates and Provenance

When a record is updated, the engine should preserve enough provenance to explain why the change was made.

Important updates should identify:

- affected record,
- source of the change,
- scope of the change,
- time of the represented event,
- time of the record update,
- unresolved uncertainty where applicable.

This prevents later reconstruction from confusing objective events, recordkeeping, interpretation, and implementation state.

---

## 2.9 Contradictions

When contradictions are discovered:

1. Pause affected resolution if necessary.
2. Identify the conflicting information.
3. Determine the highest-priority canonical source.
4. Update all affected ledgers.
5. Continue gameplay using the corrected state.

Contradictions should never be ignored or silently overwritten.

---

## 2.10 Canon Preservation

The engine should preserve established facts whenever possible.

Unknown information may be expanded.

Known information may evolve through historical development.

Established facts should never be rewritten solely to create drama or simplify future gameplay.

Consistency is a core feature of the simulation.

# 3. Time & World Simulation

Time within the Chronicle Engine is continuous rather than turn-based.

A gameplay turn represents a single player decision and the world's response to that decision. The amount of in-world time represented by a turn varies depending on the nature of the action.

Some turns may represent only a few seconds, while others may advance weeks, months, or even years.

The engine advances the simulation according to elapsed in-world time rather than the number of player turns.

---

## 3.1 Time Resolution

The engine should estimate how much time naturally passes during each completed action.

Examples:

| Action | Typical Time |
|---------|--------------|
| Speak a sentence | Seconds |
| Search a room | Minutes |
| Travel across a city | Hours |
| Ride between villages | Days |
| Cross a kingdom | Weeks |
| Conduct laboratory research | Weeks or Months |
| Build a fortress | Months or Years |
| Rule a kingdom | Variable |

Time should never advance by arbitrary fixed increments.

---

## 3.2 Simulation Cycle

Each player action produces a complete simulation cycle.

Every cycle follows the same sequence.

1. Player declares intent.

2. Engine determines whether uncertainty exists.

3. Resolve action.

4. Advance world time.

5. Simulate affected systems.

6. Update canonical state.

7. Present the new situation.

This sequence should remain consistent throughout every campaign.

---

## 3.3 World Simulation Layers

The world operates simultaneously at three levels of detail.

### Active Simulation

The player's immediate surroundings.

Simulated in full detail.

Examples include:

- dialogue,
- combat,
- investigations,
- local markets,
- exploration,
- negotiations.

---

### Regional Simulation

Areas capable of affecting the player within the foreseeable future.

Simulated using summarized events.

Examples include:

- political appointments,
- merchant caravans,
- military movements,
- local famines,
- university projects,
- diplomatic negotiations.

---

### Global Simulation

The remainder of the known world.

Simulated abstractly.

Only developments with lasting significance become historical events.

Examples include:

- wars,
- dynastic succession,
- technological breakthroughs,
- major discoveries,
- religious reforms,
- institutional collapse,
- climate events.

---

## 3.4 Independent World Progression

The world continues developing regardless of the player's activities.

Examples include:

- rulers age,
- children become adults,
- institutions conduct research,
- crops grow,
- economies fluctuate,
- wars begin or end,
- diseases spread,
- trade routes shift,
- cities expand,
- forests recover,
- rivers change course.

The player does not cause the world to exist.

The player participates within it.

---

## 3.5 Event Importance

Not every simulated event deserves permanent historical significance.

The engine classifies events into four categories.

### Immediate

Short-term gameplay information.

Examples:

- conversations,
- purchases,
- minor injuries,
- local rumors.

These naturally expire from active memory.

---

### Archived

Events preserved through records.

Examples:

- contracts,
- court cases,
- research notes,
- military orders,
- trade ledgers,
- correspondence.

These remain recoverable.

---

### Historical

Events remembered by later generations.

Examples:

- coronations,
- wars,
- major discoveries,
- institutional foundations,
- revolutions.

Historical events become part of the world's shared memory.

---

### Mythic

Historical events transformed by culture.

Examples:

- heroic epics,
- religious traditions,
- legends,
- political propaganda,
- folk tales.

Mythic events may differ substantially from objective reality while remaining culturally important.

---

## 3.6 Long-Term Activities

Activities requiring extended time occur continuously rather than resolving instantly.

Examples include:

- research,
- construction,
- education,
- diplomatic missions,
- military campaigns,
- exploration,
- recovery from injuries,
- magical rituals.

These activities may be interrupted by new events before completion.

Progress should be preserved whenever reasonable.

---

## 3.7 Seasonal Simulation

The engine tracks seasonal change.

Seasonal effects may influence:

- agriculture,
- travel,
- warfare,
- trade,
- disease,
- wildlife,
- weather,
- navigation,
- festivals,
- resource production.

Seasonal effects should emerge naturally rather than appearing only when convenient.

---

## 3.8 Aging

Living beings age continuously.

Age may influence:

- physical ability,
- experience,
- reputation,
- political succession,
- fertility,
- health,
- lifespan.

The exact effects depend on species, culture, magical influences, and individual circumstances.

---

## 3.9 World State Update

After every completed simulation cycle, the engine updates all affected systems.

Potential updates include:

- characters,
- inventories,
- finances,
- relationships,
- tracked objectives,
- institutions,
- factions,
- armies,
- settlements,
- research,
- historical records.

Only systems affected by the current cycle require modification.

Unchanged systems remain unchanged.

---

## 3.10 Persistence

The world has no predefined ending.

Campaigns may conclude.

Characters may die.

Kingdoms may collapse.

Institutions may disappear.

Civilizations may rise and fall.

The world itself continues until explicitly replaced by a new world version.

---

## 3.11 Simulation Priority

The engine allocates simulation detail according to relevance rather than equality.

The world is not simulated uniformly. Instead, simulation effort is concentrated where it will produce the greatest impact while maintaining the illusion of a continuously evolving world.

Simulation priority changes dynamically throughout a campaign.

### Primary Priority

The player's immediate environment.

Examples include:

- current location,
- nearby NPCs,
- ongoing conversations,
- combat,
- investigations,
- local economy,
- active objectives,
- immediate travel.

These systems are simulated with maximum detail.

## 3.12 Causality

Every meaningful event should have a traceable cause.

Major developments should emerge from one or more of the following:

- decisions made by individuals,
- institutional objectives,
- political tensions,
- economic pressures,
- discoveries,
- environmental conditions,
- military conflict,
- cultural change,
- chance.

Important historical events should, whenever practical, be explainable through an identifiable chain of preceding events.

The simulation favors causality over coincidence.

Coincidence may begin stories.

Causality sustains them.

---

### Secondary Priority

People, places, and institutions capable of influencing the player within the foreseeable future.

Examples include:

- neighboring kingdoms,
- nearby armies,
- regional governments,
- universities,
- guilds,
- merchant companies,
- diplomatic negotiations,
- frontier settlements.

These systems are updated regularly using summarized simulation.

---

### Background Priority

The remainder of the known world.

Examples include:

- distant civilizations,
- unexplored regions,
- foreign dynasties,
- long-distance trade,
- remote expeditions,
- cultural movements,
- scientific progress,
- religious developments.

These systems evolve continuously at an abstract level.

Only developments with meaningful historical or gameplay significance are expanded into detailed simulation.

---

### Dynamic Priority

Simulation priority is not fixed.

As the player's influence grows, the engine automatically expands detailed simulation to include newly relevant systems.

Examples:

A village hunter primarily influences a single valley.

A university scholar may influence several institutions.

A duke influences an entire province.

A king influences multiple kingdoms.

The founder of a continental religion may influence civilizations across the world.

The player's expanding sphere of influence naturally increases the scope of detailed simulation.

---

### Efficiency Principle

The engine should never expend equal effort simulating every individual, settlement, or institution.

Instead, simulation depth should be proportional to historical relevance and the likelihood of meaningful interaction.

This preserves computational efficiency while maintaining the illusion of a living world.

Events may occur anywhere.

Detail is generated where it matters.

# 4. Action Resolution

Every meaningful action follows a consistent resolution process.

The purpose of action resolution is not to determine whether the player is allowed to attempt an action.

The player may attempt any action that is physically and logically possible within the established world.

Instead, action resolution determines how successfully reality responds to that attempt.

---

## 4.0 Intent Before Method

The engine resolves **intent**, not merely the physical action chosen by the player.

Every declared action contains two components:

- **Intent** — what the player is ultimately trying to accomplish.
- **Method** — how the player attempts to accomplish it.

The same intent may be approached through many different methods.

Examples:

| Intent | Possible Methods |
|---------|------------------|
| Escape | Climb a wall, bribe a guard, create a distraction, disguise oneself, teleport |
| Gather Information | Question witnesses, search archives, spy on a meeting, examine evidence |
| Eliminate an Enemy | Duel, poison, sabotage, political exile, assassination |
| Gain Influence | Diplomacy, gifts, blackmail, public speeches, demonstrations of power |

The engine should first determine the player's intent before resolving the chosen method.

---

### Intent Determines Success

Success is measured against the player's intended objective rather than the literal execution of the chosen method.

A method may fail while the intent partially succeeds.

Likewise, a method may succeed while failing to achieve the intended goal.

Example:

Player:

> "I throw a chair through the tavern window."

Method:

Throwing the chair.

Intent:

Escape.

Possible outcome:

The chair breaks the window successfully, but nearby guards hear the noise and converge on the building.

The method succeeds.

The intent only partially succeeds.

---

### Creative Problem Solving

The engine should encourage unconventional solutions.

Whenever a proposed method is physically and logically possible, the engine should evaluate it fairly using established mechanics.

The engine must never reject a creative solution solely because it differs from an anticipated approach.

Preparation, reasoning, and understanding of the world should influence outcomes more strongly than familiarity with traditional RPG solutions.

---

### Alternative Outcomes

A failed roll should rarely invalidate the player's intent completely.

Instead, failure should create new situations.

Examples include:

- progress at unexpected cost,
- success with complications,
- incomplete success,
- delayed success,
- unintended consequences,
- new opportunities,
- new obstacles.

Only when objective reality makes the intended goal impossible should the engine resolve complete failure.

The simulation should continue naturally regardless of outcome.

---

### Engine Principle

The engine evaluates **why** the player acts before evaluating **how** they act.

This allows multiple valid solutions to the same problem and rewards creativity, preparation, and strategic thinking over memorizing expected actions.

## 4.1 Resolution Sequence

Every uncertain action follows this sequence.

1. Player declares intent.

2. Engine evaluates whether uncertainty exists.

3. If no uncertainty exists:

   Resolve automatically.

4. If uncertainty exists:

   Determine difficulty.

5. Apply relevant modifiers.

6. Roll d100.

7. Interpret the result.

8. Apply consequences.

9. Update world state.

10. Continue simulation.

The same sequence applies to every campaign.

---

## 4.2 Automatic Resolution

Not every action requires a roll.

Automatic Success occurs when:

- failure is impossible,
- sufficient time guarantees success,
- the action has no meaningful consequence,
- the character has already demonstrated reliable competence.

Examples:

- opening an unlocked door,
- reading a familiar language,
- buying common goods,
- walking across a room.

---

Automatic Failure occurs only when the action violates established reality.

Examples:

- lifting a mountain,
- breathing underwater without assistance,
- speaking a language never encountered,
- persuading someone to believe information they know is objectively false without extraordinary evidence.

Automatic failure should be rare.

Whenever possible, impossible actions should instead become alternative outcomes.

---

## 4.3 Difficulty

Difficulty represents resistance presented by reality.

Difficulty should consider:

- complexity,
- preparation,
- environment,
- available tools,
- available knowledge,
- physical condition,
- magical effects,
- opposing individuals,
- available time,
- previous actions.

Difficulty is never assigned simply to maintain tension.

---

## 4.4 Modifiers

Modifiers represent established advantages or disadvantages.

Examples include:

Positive:

- preparation,
- high-quality equipment,
- assistance,
- favorable terrain,
- relevant education,
- previous research,
- institutional support.

Negative:

- injuries,
- fatigue,
- damaged equipment,
- poor visibility,
- distractions,
- time pressure,
- hostile conditions.

Modifiers should arise from the world rather than arbitrary balancing.

---

## 4.5 Rolling

The engine uses a d100 resolution system.

The roll represents uncertainty rather than luck alone.

It combines:

- execution,
- timing,
- opportunity,
- resistance,
- unpredictable external factors.

The same roll should never determine unrelated outcomes.

---

## 4.6 Result Bands

Suggested interpretation:

01–05

Catastrophic failure.

A serious setback occurs.

---

06–20

Major failure.

The intended goal is not achieved.

Additional consequences are likely.

---

21–40

Failure.

Little or no meaningful progress.

New information may still be obtained.

---

41–60

Partial success.

The objective is achieved only partially or at significant cost.

---

61–80

Success.

The intended objective is achieved.

Minor complications remain possible.

---

81–95

Strong success.

The objective is achieved efficiently or with additional benefits.

---

96–99

Exceptional success.

The result exceeds normal expectations while remaining believable.

---

100

Legendary success.

Reality aligns almost perfectly with preparation, ability, and circumstance.

Legendary success never violates established physical or magical rules.

---

## 4.7 Degrees of Success

The engine should prefer degrees of success rather than binary outcomes.

Possible outcomes include:

- success,
- success with cost,
- success with complication,
- success with opportunity,
- failure with progress,
- failure with information,
- failure with consequence.

The simulation should continue naturally regardless of outcome.

---

## 4.8 Multiple Attempts

Repeated attempts should change the situation.

Examples:

- guards become suspicious,
- tools wear down,
- opportunities disappear,
- new information is discovered,
- fatigue increases.

Repeated identical rolls should never represent resetting reality.

---

## 4.9 Opposed Actions

When two parties actively oppose one another:

Both sides resolve the conflict using their established abilities and circumstances.

The engine should compare outcomes rather than simply choosing a winner.

Examples include:

- negotiations,
- duels,
- pursuits,
- investigations,
- political influence,
- magical contests.

---

## 4.10 Consequences

Every meaningful action changes the world.

Consequences may include:

- physical changes,
- reputation,
- relationships,
- economy,
- politics,
- institutional responses,
- new opportunities,
- unintended problems.

No meaningful action should leave the world completely unchanged.

---

## 4.11 Resolution Principles

The engine follows these principles:

Player creativity should influence outcomes more strongly than random chance.

Preparation should consistently outperform improvisation.

Established advantages should matter.

Failures should generate new situations rather than ending the story.

Success should feel earned.

Chance introduces uncertainty.

It never replaces causality.

# 5. Living Characters

Living characters are persistent entities capable of learning, changing, aging, forming relationships, creating institutions, and influencing history.

Every character exists independently of the player and follows the same underlying rules.

Player characters are not mechanically privileged.

They simply receive direct player control.

---

## 5.1 Character Identity

Every character possesses multiple layers of identity.

### Objective Identity

The factual description of who the character currently is.

Examples include:

- species,
- age,
- profession,
- birthplace,
- education,
- affiliations,
- physical condition.

---

### Self Identity

How the character understands themselves.

This may include:

- ambitions,
- beliefs,
- fears,
- ideals,
- personal goals,
- perceived strengths,
- perceived weaknesses.

Self Identity may differ from Objective Identity.

---

### Social Identity

How the world perceives the character.

This includes:

- reputation,
- titles,
- rumors,
- legal status,
- public achievements,
- political standing.

Different societies may hold different opinions of the same individual.

---

## 5.2 Character State

Every living character maintains an evolving state.

This includes:

- physical condition,
- mental condition,
- emotional condition,
- available resources,
- ongoing obligations,
- injuries,
- diseases,
- active magical effects,
- current location.

Character state changes continuously through simulation.

---

## 5.3 Capabilities

Characters are defined by demonstrated capabilities rather than numerical levels.

Capabilities represent practical competence gained through education, experience, practice, and repeated application.

Examples include:

- swordsmanship,
- diplomacy,
- architecture,
- alchemy,
- navigation,
- medicine,
- engineering,
- leadership,
- magical disciplines.

Capabilities improve through meaningful use rather than accumulated experience points.

Unused capabilities may stagnate.

Long periods without practice may gradually reduce proficiency where appropriate.

---

## 5.4 Personality

Personality influences decision-making without removing agency.

Each character possesses:

- core traits,
- values,
- flaws,
- motivations,
- habits.

Core traits remain relatively stable throughout life.

Their expression may evolve as the character gains experience.

Example:

Core Trait:

Curious

Possible expressions:

Child → Explorer → Scholar → Researcher → Obsessive Academic

The underlying trait remains recognizable while behavior changes.

---

## 5.5 Knowledge

Knowledge is acquired through:

- education,
- observation,
- experimentation,
- travel,
- conversation,
- research,
- institutional membership.

Knowledge is never granted automatically through progression.

Learning requires opportunity.

Understanding requires effort.

Mastery requires application.

---

## 5.6 Relationships

Relationships are dynamic.

Each significant relationship may contain:

- trust,
- respect,
- fear,
- affection,
- obligation,
- rivalry,
- shared history,
- political interest.

Relationships evolve through repeated interaction.

No relationship is permanently fixed.

---

## 5.7 Growth

Characters do not gain levels.

Growth emerges naturally through lived experience.

Long-term development may include:

- improved capabilities,
- new knowledge,
- changing beliefs,
- expanded influence,
- stronger relationships,
- institutional authority,
- material wealth,
- political legitimacy.

Growth is measured by demonstrated change rather than numerical milestones.

---

## 5.8 Permanent Change

Characters may experience permanent transformation.

Examples include:

Physical:

- scars,
- disabilities,
- mutations,
- aging,
- chronic illness.

Social:

- titles,
- exile,
- criminal status,
- fame,
- nobility.

Psychological:

- trauma,
- faith,
- obsession,
- confidence,
- ideological change.

Magical:

- blessings,
- curses,
- soul alterations,
- magical affinity,
- permanent enchantments.

Permanent changes become part of the character's identity and continue influencing future simulation.

---

## 5.9 Aging

Time affects all living beings.

Aging influences:

- physical ability,
- health,
- experience,
- reputation,
- succession,
- family,
- long-term goals.

Different species and magical effects may alter the rate or consequences of aging.

---

## 5.10 Death

Death is a natural outcome of the simulation.

Death permanently ends a character's direct participation unless established world mechanics explicitly allow otherwise.

The consequences of death may continue through:

- descendants,
- institutions,
- writings,
- discoveries,
- cultural memory,
- historical records,
- political succession,
- myths.

The end of a character is not the end of their influence.

## 5.11 Memory

Characters remember significant experiences.

Memory influences:

- future decisions,
- relationships,
- emotional responses,
- confidence,
- prejudice,
- expertise.

Memories may fade, become distorted, or be reinterpreted over time.

Traumatic or life-defining events are generally remembered more strongly than routine experiences.

Magical effects may alter memory only through established mechanics.

# 6. Conflict, Combat, Injury & Death

Conflict is resolved through the same intent-based rules used for every other action.

Combat is not a separate minigame. It is a dangerous form of interaction governed by positioning, capability, preparation, equipment, morale, injury, environment, and intent.

The objective of a conflict may be broader than killing an opponent.

Possible objectives include:

- Escape
- Capture
- Delay
- Intimidate
- Defend a location
- Protect another person
- Break enemy morale
- Obtain an item
- Force a surrender
- Survive until reinforcements arrive

The engine should resolve the actual objective rather than assuming every fight continues until one side dies.

---

## 6.1 Conflict Principles

Combat follows these principles:

1. Violence has persistent consequences.
2. Positioning and preparation matter.
3. Equipment provides capabilities rather than abstract bonuses alone.
4. Injuries affect future actions.
5. Morale matters independently of physical condition.
6. Intelligent opponents act according to their knowledge and objectives.
7. Retreat, surrender, capture, negotiation, and intimidation remain valid outcomes.
8. No combatant possesses plot armor.
9. A single successful attack may be decisive when circumstances justify it.
10. Combat does not automatically scale to the player’s strength.

The engine must not create stronger enemies merely because the player has become more powerful.

Threats arise from the established world.

## 6.1.1 Conflict Scale

The same principles govern every conflict regardless of size.

Conflict differs only in scope, participants, and abstraction.

### Personal Conflict

Examples:

- duel,
- assassination,
- tavern brawl,
- monster attack.

Simulated in full detail.

---

### Group Conflict

Examples:

- squad combat,
- caravan defense,
- bandit ambush,
- small military engagements.

Individual actions remain important while leadership and coordination gain significance.

---

### Strategic Conflict

Examples:

- sieges,
- field battles,
- naval engagements,
- city defense,
- rebellions.

Individual combat is abstracted unless the player directly participates in a critical moment.

Leadership, logistics, morale, terrain, and preparation become the dominant factors.

---

### Civilizational Conflict

Examples:

- continental wars,
- religious conflicts,
- economic warfare,
- magical catastrophes,
- societal collapse.

The engine primarily simulates institutions, populations, governments, economies, and long-term consequences.

Conflict abstraction alone does not define the persistent structure of armies, governments, or other large organizations.

Those entities require their own engine architecture.

Individual battles become historical events rather than minute-by-minute encounters.

The same simulation rules apply at every scale.

Only the level of abstraction changes.

---

## 6.2 Conflict State

During an active conflict, track only information that meaningfully affects resolution.

### Participants

For each relevant participant:

- identity,
- location,
- objective,
- physical condition,
- mental condition,
- known capabilities,
- equipment,
- active effects,
- morale,
- available escape routes.

### Environment

Track factors such as:

- distance,
- elevation,
- visibility,
- cover,
- obstacles,
- weather,
- lighting,
- terrain,
- civilians,
- structural hazards,
- fire,
- water,
- confined spaces.

### Situation

Track:

- who has initiative,
- who is surprised,
- current positions,
- immediate threats,
- reinforcements that could plausibly arrive,
- time pressure,
- changes created by earlier actions.

The engine should not introduce reinforcements, alarms, immunities, or environmental hazards solely to negate a successful plan.

Such elements must already exist or arise logically from established conditions.

---

## 6.3 Combat Time

Combat is resolved through meaningful exchanges rather than rigid rounds.

An exchange represents enough time for participants to perform one coherent action or respond to an immediate threat.

Examples include:

- closing distance and striking,
- firing a weapon,
- seeking cover,
- casting a prepared spell,
- dragging an injured ally away,
- issuing an order,
- attempting surrender,
- creating a distraction.

Several minor movements may occur within one exchange when they form a single coherent method.

The engine should avoid breaking combat into unnecessary micro-actions.

---

## 6.4 Initiative

Initiative represents who is able to act meaningfully first.

It depends on:

- surprise,
- awareness,
- preparation,
- positioning,
- speed,
- intent,
- hesitation,
- command structure.

Initiative is situational and may change during a conflict.

It is not a permanent character statistic.

A prepared weaker opponent may act before a stronger but unaware one.

---

## 6.5 Attacks

An attack is resolved according to its intended effect.

Possible attack intents include:

- kill,
- incapacitate,
- wound,
- disarm,
- restrain,
- frighten,
- force movement,
- damage equipment,
- create an opening.

Resolution considers:

- attacker capability,
- target defense,
- distance,
- weapon properties,
- armor,
- movement,
- cover,
- injuries,
- visibility,
- preparation,
- environment.

A successful attack does not automatically cause maximum harm.

The result must remain consistent with the weapon, target, and circumstances.

---

## 6.6 Defense

Defense may involve:

- evasion,
- blocking,
- armor,
- cover,
- counterattack,
- magical protection,
- distance,
- concealment,
- surrender,
- negotiation,
- using another object or person as protection.

Defense is not limited to avoiding damage.

A defensive action may instead reduce severity, protect an ally, preserve position, or create an escape opportunity.

---

## 6.7 Weapons and Armor

Weapons and armor are defined by practical properties.

### Weapon Properties

Examples include:

- reach,
- speed,
- penetration,
- impact,
- concealability,
- ammunition,
- reliability,
- required training,
- effectiveness in confined spaces.

### Armor Properties

Examples include:

- protected areas,
- material,
- resistance,
- mobility,
- weight,
- visibility,
- heat,
- maintenance,
- vulnerability to specific attacks.

Equipment does not make a character invulnerable.

Armor changes the likely type and severity of injury.

Weapons create opportunities consistent with their physical design.

---

## 6.8 Injury Model

The engine does not use a single universal health-point pool.

Instead, injuries are tracked according to:

- location,
- type,
- severity,
- immediate effect,
- ongoing effect,
- treatment,
- recovery time,
- permanent consequences.

### Injury Types

Examples include:

- cuts,
- punctures,
- fractures,
- burns,
- internal trauma,
- blood loss,
- poisoning,
- exhaustion,
- magical corruption,
- psychological trauma.

### Injury Severity

#### Minor

Painful but usually manageable.

May impose limited penalties.

Examples:

- bruises,
- shallow cuts,
- minor burns,
- mild sprains.

#### Moderate

Meaningfully restricts capability.

Requires treatment and recovery.

Examples:

- deep wounds,
- fractures,
- serious burns,
- significant blood loss.

#### Severe

Immediately dangerous or disabling.

May become fatal without urgent treatment.

Examples:

- organ damage,
- major fractures,
- extensive burns,
- severe poisoning,
- major blood loss.

#### Critical

Life-threatening.

Immediate intervention is required.

Possible outcomes include:

- death,
- permanent disability,
- loss of consciousness,
- organ failure,
- irreversible magical damage.

---

## 6.9 Injury Consequences

Injuries alter future action resolution.

Examples:

- an injured leg reduces mobility,
- a damaged hand affects weapon use and fine work,
- blood loss causes weakness and confusion,
- burns reduce endurance and increase infection risk,
- concussion affects judgment and perception,
- magical injuries may interfere with spellcasting.

Consequences remain active until treated or naturally recovered.

The engine must never describe a serious injury and then ignore it during later actions.

---

## 6.10 Pain, Shock, and Exhaustion

Physical capability is influenced by more than structural injury.

The engine also tracks:

- pain,
- shock,
- fear,
- exhaustion,
- hunger,
- dehydration,
- sleep deprivation,
- magical depletion.

These conditions may impair performance before a character becomes physically incapacitated.

Adrenaline may temporarily suppress pain, but it does not remove injury.

---

## 6.11 Morale

Combatants do not automatically fight to the death.

Morale depends on:

- perceived chance of survival,
- leadership,
- discipline,
- loyalty,
- fear,
- casualties,
- objectives,
- retreat options,
- reputation of the opponent,
- cultural expectations.

Morale is normally expressed qualitatively:

- Resolute
- Steady
- Uneasy
- Shaken
- Breaking
- Routed

Morale may collapse even when most combatants remain physically capable.

Likewise, disciplined or fanatical forces may continue despite devastating losses.

---

## 6.12 Surrender, Capture, and Retreat

Surrender, capture, and retreat are ordinary conflict outcomes.

A defeated character does not automatically die.

The outcome depends on:

- opponent objectives,
- local customs,
- legal systems,
- personal relationships,
- reputation,
- strategic value,
- ability to escape.

Retreat may preserve lives while sacrificing:

- territory,
- equipment,
- reputation,
- time,
- allies,
- strategic position.

A successful retreat is not automatically a failure.

---

## 6.13 Healing and Treatment

Healing depends on:

- injury type,
- severity,
- available knowledge,
- equipment,
- medicine,
- magical assistance,
- time,
- hygiene,
- nutrition,
- environment.

Treatment may:

- stop deterioration,
- reduce pain,
- prevent infection,
- restore function,
- shorten recovery,
- prevent permanent damage.

Treatment does not necessarily erase consequences immediately.

Even magical healing must follow established limits and costs.

---

## 6.14 Recovery

Recovery occurs over time.

It may require:

- rest,
- medical treatment,
- rehabilitation,
- magical intervention,
- replacement equipment,
- psychological support.

Recovery progress may be interrupted by:

- renewed injury,
- infection,
- inadequate food,
- continued exertion,
- environmental exposure,
- magical complications.

Some injuries leave permanent effects.

---

## 6.15 Permanent Injury

Permanent consequences may include:

- scars,
- chronic pain,
- reduced mobility,
- loss of a limb,
- sensory impairment,
- magical instability,
- trauma,
- altered identity,
- social stigma.

Permanent injury should create new capabilities, limitations, decisions, or relationships rather than functioning only as punishment.

Adaptation is possible through:

- training,
- prosthetics,
- medicine,
- magic,
- social support,
- changed methods.

---

## 6.16 Death

Death occurs when established injuries, conditions, or circumstances make survival impossible.

Death must follow logically from the simulation.

It should never occur solely to create drama.

Likewise, death should not be prevented solely because a character is important.

When death is uncertain but possible, resolve it using the normal action-resolution system while accounting for:

- injury severity,
- treatment,
- time,
- environment,
- resilience,
- available assistance.

---

## 6.17 Death and Continuity

A character’s death ends their direct participation unless established world mechanics allow another outcome.

Their influence may continue through:

- descendants,
- institutions,
- laws,
- writings,
- inventions,
- debts,
- enemies,
- monuments,
- political succession,
- historical interpretation,
- myth.

The world continues after the character dies.

A new campaign may begin in the same world without resetting history.

---

## 6.18 Resurrection and Survival Beyond Death

Resurrection, undeath, soul survival, reincarnation, or similar phenomena are not assumed to exist.

They may exist only if established through the world’s discoverable mechanics.

If such phenomena are possible, they must have:

- consistent rules,
- costs,
- limitations,
- risks,
- social consequences,
- institutional responses.

Death must not become trivial merely because supernatural restoration exists.

---

## 6.19 Conflict Resolution Summary

When resolving conflict, determine:

1. Each participant’s objective.
2. Current knowledge and awareness.
3. Position and environment.
4. Relevant capabilities and equipment.
5. Physical and mental condition.
6. Likely consequences.
7. Whether uncertainty requires a roll.
8. The resulting change to the world.

Combat ends when objectives are achieved, abandoned, or made impossible.

It does not require the death of every opponent.

# 7. Resources & Ownership

Resources represent any tangible or intangible asset that may be possessed, owned, consumed, transferred, created, destroyed, or inherited.

Ownership and possession are distinct concepts.

Resources persist through simulation until their state changes.

---

## 7.1 Ownership

Ownership represents legal, social, magical, or practical rights over a resource.

Possession represents who currently controls or carries that resource.

These are not necessarily the same.

Examples:

A merchant owns a wagon.

A hired driver possesses it.

A university owns a manuscript.

A scholar possesses it while conducting research.

A noble owns a castle.

Its steward manages day-to-day possession.

Ownership may be transferred through:

- trade,
- inheritance,
- conquest,
- theft,
- legal judgment,
- diplomacy,
- gifting,
- magical binding,
- institutional reassignment.

The engine should distinguish ownership disputes from possession disputes whenever relevant.

---

## 7.2 Resource Categories

Resources may belong to one or more categories.

### Personal Equipment

Examples:

- weapons,
- armor,
- clothing,
- tools,
- instruments,
- books.

---

### Consumables

Examples:

- food,
- water,
- medicine,
- ammunition,
- alchemical ingredients,
- fuel.

Consumables are depleted through use.

---

### Currency and Wealth

Examples:

- coins,
- gemstones,
- trade goods,
- letters of credit,
- investments,
- debts.

Currency is one form of wealth.

It is not the only form.

---

### Property

Examples:

- homes,
- farms,
- workshops,
- warehouses,
- mines,
- ships,
- towers.

Property exists independently of its owner.

---

### Knowledge Assets

Examples:

- maps,
- journals,
- blueprints,
- spellbooks,
- research,
- treaties,
- legal records,
- historical manuscripts.

Knowledge may possess value independent of any physical medium.

---

### Organizational Assets

Examples:

- guild charters,
- trade contracts,
- institutional archives,
- military logistics,
- production facilities.

Organizations may own resources independently of their members.

---

## 7.3 Inventory

Inventory represents resources immediately available to a character.

Inventory should track:

- item,
- quantity,
- condition,
- location,
- owner,
- holder.

Large possessions are not part of personal inventory.

Examples include:

- buildings,
- ships,
- businesses,
- armies,
- institutions.

---

## 7.4 Condition

Physical resources possess condition.

Examples include:

- Excellent
- Good
- Worn
- Damaged
- Broken
- Destroyed

Condition affects usefulness.

It does not necessarily affect ownership.

Condition changes through:

- use,
- maintenance,
- neglect,
- weather,
- accidents,
- combat,
- magical effects.

---

## 7.5 Provenance

Important resources possess history.

Examples include:

- creator,
- date of creation,
- previous owners,
- notable events,
- modifications,
- restoration,
- cultural significance.

Provenance may influence:

- value,
- legality,
- reputation,
- political importance,
- historical interest,
- magical properties.

Ordinary objects need not maintain extensive provenance.

Objects become historically significant through simulation.

---

## 7.6 Trade

Trade transfers ownership through voluntary exchange.

Trade considers:

- supply,
- demand,
- rarity,
- condition,
- location,
- reputation,
- urgency,
- transportation,
- political restrictions.

Prices emerge from the world's economy.

The engine should avoid fixed universal prices whenever practical.

---

## 7.7 Consumption

Resources consumed during use leave the simulation unless recoverable.

Examples include:

- food,
- fuel,
- medicine,
- ammunition,
- ritual components.

Consumption must be explicitly tracked.

---

## 7.8 Storage

Resources exist somewhere.

Possible locations include:

- personal inventory,
- residences,
- warehouses,
- vaults,
- institutions,
- ships,
- caravans,
- hidden caches.

Storage location determines accessibility.

Resources cannot normally be used if they are not physically or logically accessible.

---

## 7.9 Transfer

Resources may change possession or ownership through:

- trade,
- gifts,
- theft,
- inheritance,
- confiscation,
- conquest,
- contracts,
- magical transfer.

Transfers should update every affected canonical ledger.

---

## 7.10 Loss and Destruction

Resources may leave the simulation through:

- consumption,
- destruction,
- decay,
- permanent transformation,
- irretrievable loss.

Loss should never occur silently.

The engine should always identify:

- what changed,
- why,
- when,
- resulting ownership state.

---

## 7.11 Resource Principles

The engine follows these principles:

Resources do not appear without origin.

Resources do not disappear without cause.

Ownership is independent of possession.

Every significant resource possesses a history.

Economic value emerges from the simulation rather than fixed game balance.

Resources influence history, and history influences the value of resources.

## 7.12 Resource Identity

Resources exist at different levels of historical significance.

### Generic Resources

Interchangeable resources tracked primarily by quantity.

Examples include:

- grain,
- common arrows,
- firewood,
- ordinary tools.

### Individual Resources

Unique resources with persistent identity.

Examples include:

- heirloom weapons,
- royal seals,
- prototype inventions,
- famous manuscripts,
- magical artifacts.

Individual resources maintain:

- identity,
- condition,
- location,
- ownership,
- possession,
- provenance,
- history.

A generic resource may become an individual resource through historically significant use or association.

# 8. Research & Knowledge

Research and knowledge are part of the same persistent historical simulation as politics, trade, institutions, and conflict.

Knowledge does not appear instantly or spread universally without cause.

New understanding emerges through observation, interpretation, experiment, instruction, recordkeeping, institutional support, and time.

Research may advance the world, fail, stall, mislead, be suppressed, or be rediscovered generations later.

---

## 8.1 Research Principles

Research follows these principles:

1. Knowledge must have an origin.
2. Claims are not automatically true because they are written, taught, or widely believed.
3. Discovery and validation are separate processes.
4. Publication and adoption are separate processes.
5. Institutions strongly influence what knowledge survives, spreads, or disappears.
6. Research consumes time, resources, and opportunity.
7. Failure may still produce evidence, method improvement, or new questions.
8. Lost knowledge may return through rediscovery rather than retroactive invention.

---

## 8.2 Research Lifecycle

Research and knowledge normally move through a lifecycle.

Not every case follows every step cleanly, but the engine should distinguish them conceptually.

### Observation

A phenomenon, anomaly, pattern, testimony, artifact, or result is noticed.

Observation may be:

- accurate,
- incomplete,
- biased,
- fabricated,
- misunderstood.

---

### Hypothesis

An explanation, theory, suspicion, or working model is proposed.

Different observers may produce competing hypotheses from the same evidence.

---

### Investigation and Experiment

The claim is examined through:

- testing,
- repetition,
- comparison,
- field research,
- archival study,
- witness examination,
- magical inquiry,
- practical application.

The method used must remain consistent with available tools, conditions, and prior knowledge.

---

### Validation

Evidence may support, weaken, complicate, or overturn a claim.

Validation is contextual rather than absolute.

A conclusion may be:

- locally validated,
- institutionally accepted,
- publicly disputed,
- later disproven,
- impossible to confirm with current means.

---

### Recording

If preserved, research enters records such as:

- notes,
- ledgers,
- diagrams,
- letters,
- reports,
- archives,
- instructional texts,
- restricted repositories.

Unrecorded knowledge remains vulnerable to loss through death, secrecy, or memory failure.

---

### Publication or Restriction

Knowledge may be:

- openly published,
- privately taught,
- institutionally archived,
- legally restricted,
- ritually guarded,
- censored,
- deliberately destroyed.

The engine should not assume that every validated discovery becomes public.

---

### Adoption, Rejection, or Suppression

After publication or retention, knowledge may be:

- adopted in practice,
- resisted,
- ignored,
- politicized,
- monopolized,
- suppressed,
- fragmented into local traditions.

Adoption depends on more than truth alone.

It may be shaped by:

- institutional authority,
- cost,
- danger,
- doctrine,
- prestige,
- material incentives,
- legal systems,
- cultural resistance.

---

### Loss and Rediscovery

Knowledge may disappear through:

- death,
- war,
- disaster,
- censorship,
- institutional collapse,
- language drift,
- material decay,
- deliberate concealment.

Lost knowledge may later be rediscovered through surviving evidence, ruins, archives, oral tradition, or repeated observation.

---

## 8.3 Research Inputs

Research depends on established circumstances.

Important inputs may include:

- prior knowledge,
- relevant capability,
- time,
- tools,
- materials,
- evidence,
- environment,
- collaborators,
- institutional support,
- funding,
- access to archives,
- political permission,
- secrecy,
- risk tolerance.

Research quality should emerge from these conditions rather than arbitrary progression rewards.

---

## 8.4 Research Time

Research is normally a long-term activity rather than an instant action.

It may require:

- hours for review or simple testing,
- days for investigation,
- weeks or months for sustained experimentation,
- years for major theoretical or technical advances.

Research may be interrupted by:

- war,
- injury,
- loss of materials,
- political intervention,
- institutional reassignment,
- conflicting obligations,
- failed results,
- dangerous side effects.

Partial progress should persist whenever reasonable.

---

## 8.5 Uncertainty and Resolution

Not every research step requires a roll.

Automatic progress may occur when:

- the task is routine for the researcher,
- the evidence already clearly supports the conclusion,
- sufficient time guarantees the result,
- the work is primarily transcription, preservation, or repetition.

Uncertain research should use the normal action-resolution system when outcomes depend on contested interpretation, unreliable evidence, risky testing, scarce time, or difficult conditions.

Failure should rarely mean "nothing happens."

Failure may instead produce:

- incorrect conclusions,
- ambiguous evidence,
- procedural improvement,
- wasted resources,
- dangerous consequences,
- new questions,
- partial progress,
- information about why the method failed.

---

## 8.6 Evidence and Reliability

Evidence varies in quality.

Examples include:

- direct observation,
- repeated experiment,
- surviving documents,
- witness testimony,
- material remains,
- institutional records,
- magical traces,
- rumor,
- propaganda.

Evidence may be:

- strong,
- weak,
- forged,
- partial,
- contaminated,
- outdated,
- politically filtered.

The engine should distinguish between having evidence and having certainty.

---

## 8.7 Research and Knowledge Layers

Research interacts with the existing layers of truth.

### Objective Reality

What is actually true remains unchanged by mistaken conclusions.

---

### Character Knowledge

Researchers and witnesses may know more, less, or something different from what is objectively true.

---

### Institutional Knowledge

Organizations may preserve, standardize, censor, monopolize, or distort knowledge.

---

### Public Knowledge

Widely repeated conclusions may spread before they are well validated.

---

### Myth and Belief

Research may challenge myth, reinforce it, reinterpret it, or itself become mythologized.

---

## 8.8 Institutions and Research

Institutions strongly affect research outcomes.

They may provide:

- archives,
- laboratories,
- funding,
- apprentices,
- peer review,
- legitimacy,
- distribution networks,
- legal protection.

They may also create obstacles through:

- censorship,
- dogma,
- secrecy,
- monopoly,
- political pressure,
- bureaucratic inertia,
- fear of consequences.

Research should therefore be shaped not only by individual brilliance but also by institutional context.

---

## 8.9 Dangerous and Restricted Knowledge

Some knowledge may be dangerous because of:

- physical harm,
- social destabilization,
- legal prohibition,
- military value,
- religious taboo,
- magical corruption,
- existential risk.

Dangerous knowledge may prompt:

- secrecy,
- state control,
- institutional restriction,
- factional conflict,
- selective teaching,
- destruction of evidence,
- covert research.

Restriction does not prove falsehood.

Openness does not prove safety.

---

## 8.10 Knowledge Transmission

Knowledge spreads through transmission rather than instant global availability.

Transmission may occur through:

- direct teaching,
- apprenticeship,
- copied texts,
- lectures,
- rumors,
- diplomacy,
- trade,
- espionage,
- migration,
- conquest,
- religious missions,
- recovered archives.

Transmission may alter the content being transmitted through simplification, mistranslation, ideology, secrecy, or deliberate revision.

---

## 8.11 Research Outcomes

Meaningful research may produce outcomes such as:

- new practical methods,
- revised theories,
- false but influential conclusions,
- improved tools,
- institutional reform,
- restricted archives,
- political conflict,
- technological diffusion,
- cultural controversy,
- historical reinterpretation.

Not all important research produces immediate practical benefit.

Some discoveries matter primarily because they reshape what later generations believe is possible or true.

---

## 8.12 Rediscovery and Historical Recovery

Rediscovery is a normal part of historical simulation.

Knowledge may return through:

- excavation,
- translation,
- comparison of fragmented records,
- reconstruction from practice,
- repeated natural observation,
- inherited oral traditions,
- recovery of restricted archives.

Rediscovery should preserve continuity with the earlier existence of that knowledge.

It is not the same as inventing the same idea in a historical vacuum.

---

## 8.13 Research Summary

When resolving research, determine:

1. What is being investigated.
2. What evidence already exists.
3. Who has access to the work.
4. What tools, capability, and time are available.
5. What institutions help or obstruct the work.
6. Whether uncertainty requires action resolution.
7. What result is recorded, transmitted, restricted, or lost.
8. How the outcome changes later knowledge, practice, or history.
