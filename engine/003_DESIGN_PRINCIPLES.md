# Chronicle Engine

## Design Principles

**File:** `003_DESIGN_PRINCIPLES.md`  
**Status:** Active  
**Engine Version:** 0.1.5  
**Layer:** Engine (000–099)

---

# Purpose

This document articulates the design philosophy that guides Chronicle Engine development.

It is not a duplicate of the Engine Rules, Engine Decisions, or Engine Manifest.

- `010_ENGINE_RULES.md` defines *how the engine behaves*.
- `001_ENGINE_DECISIONS.md` records *why architectural choices were made*.
- `003_DESIGN_PRINCIPLES.md` (this document) defines *the foundational values that shape the engine's design*.

This document establishes the design constraints against which all future work is evaluated. When faced with a choice between competing implementations, these principles determine which approach is preferred.

---

# The Engine Laws

These principles are non-negotiable. Every rule, decision, and architectural choice must remain consistent with them.

## Law I — Consistency

Established canon may never be silently contradicted.

Contradictions must be identified, resolved explicitly, and propagated to all affected canonical records.

**Implication:** The engine values historical integrity over narrative convenience. If a story emerges from simulation, it is the story that emerges. The world is not rewritten to improve the narrative.

## Law II — Causality

Every meaningful event should have a traceable cause.

Coincidence may begin stories. Causality sustains them.

**Implication:** The engine simulates a coherent world, not a sequence of unrelated scenes. Events are connected to prior state through deliberate mechanical resolution, not accident or whim.

## Law III — Agency

The player may attempt any action that is physically and logically possible.

The engine evaluates consequences rather than restricting creativity.

**Implication:** The engine does not gatekeep player actions through narrative judgment. What the player attempts is resolved through the rules and the die, not through editorial decision.

## Law IV — World Independence

The world continues evolving regardless of player attention.

Characters do not cause the world to exist. They participate within it.

**Implication:** The engine is not a stage built for the player. The world has its own history, momentum, and internal logic independent of campaign focus.

## Law V — Persistence

Consequences remain part of the simulation until altered through later events.

Nothing important is forgotten without reason.

**Implication:** The engine preserves state. Past choices matter. The world remembers what happened and why.

## Law VI — Discovery

Unknown information is revealed through interaction, investigation, experimentation, or historical research.

The engine should avoid exposition that bypasses discovery.

**Implication:** Knowledge is earned through play. The player learns what the character learns, when the character learns it. The engine does not summarize or explain the world in neutral third-person.

## Law VII — Fairness

Equivalent situations should be resolved using equivalent rules.

Player characters, NPCs, institutions, kingdoms, and civilizations operate under the same simulation principles whenever reasonably possible.

**Implication:** The engine does not privilege the player through special rules or hidden mechanics. What happens to the protagonist happens to others under the same conditions.

## Law VIII — Historical Integrity

The purpose of the engine is to simulate history rather than construct a narrative.

Stories emerge from historical development. History is never rewritten to improve a story.

**Implication:** The engine is optimized for emergence, not storytelling. When historical simulation and narrative convenience conflict, simulation wins.

---

# Core Design Principles

These principles define what Chronicle Engine is and is not.

## World-First Design

The world is the primary persistent entity.

Characters, kingdoms, institutions, discoveries, religions, technologies, and civilizations are transient participants within that world.

Campaigns end. Characters die. Institutions rise and fall. History continues.

**Consequence:** The engine prioritizes world-state coherence over protagonist focus. A character is one participant among many. The world simulation continues whether a character is present or absent, focused or ignored.

## Simulation Over Narrative

Chronicle Engine is a persistent historical simulation engine, not an adventure generator or an AI dungeon master.

Its purpose is not to tell stories. Its purpose is to simulate worlds from which stories naturally emerge.

This is a foundational choice, not a limitation. A well-designed simulation produces richer emergent narratives than a story engine ever could.

**Consequence:** Architectural decisions favor simulation depth over narrative convenience. When a rule makes the world more internally consistent at the cost of requiring more explanation, that rule is preferred.

## Emergent Progression

Characters advance through demonstrated capability and historical consequence, not through predefined levels or experience economies.

Progression is an emergent property of play, not a mechanical subsystem.

**Consequence:** The engine does not require a progression currency (experience points, advancement pools, etc.). Growth emerges from successful action, learning through failure, and the accumulation of skills and relationships. A derived progression view may surface this growth for reference, but it does not govern advancement.

## Reusable Architecture

The engine is world-agnostic and genre-agnostic.

It does not embed assumptions about setting, culture, technology level, or cosmology.

**Consequence:** Abstractions must remain reusable across fantasy, science fiction, historical, and entirely original settings. World-specific content lives in the World layer, not in the Engine layer. If an abstraction only works for one setting, it belongs in that world's documentation, not in the core engine.

## Consistency Over Convenience

Long-term maintainability is prioritized over short-term feature ease.

An awkward rule that preserves architectural coherence is preferred to an elegant rule that introduces duplication or breaks abstraction boundaries.

**Consequence:** The engine may require more explanation or have less convenient syntax than other systems. The reward is a codebase that remains coherent across many additions and many years.

## Architecture Over Features

Architectural strength is prioritized over feature breadth.

The engine develops one capability at a time, through design, implementation, validation, and postmortem, before the next capability is planned.

**Consequence:** The engine advances more slowly than a feature-first approach but remains coherent and stable. Rushing features leads to duplication and incompatible abstractions.

## Single Source of Truth

The repository is the canonical authority. Conversation history is temporary.

Architectural knowledge belongs in documentation, not in prior sessions.

**Consequence:** Important design decisions are recorded explicitly. Contributors can reason about the engine from the repository alone, without access to conversation history or meeting notes.

---

# Development Philosophy

These principles guide how the engine is built and maintained.

## Respect Accepted Decisions

Architectural decisions are immutable once accepted, even when superseded.

The decision record is a history of design evolution, not a mutable document. Supersession is recorded explicitly, not silently.

**Consequence:** The project can trace why past choices were made. Overturning a decision requires explicit architectural work and a new decision, not a quiet edit to the old one.

## Avoid Duplication

Every important concept should have a single authoritative definition.

If multiple documents define the same behavior or concept, they should cross-reference the canonical source rather than restating it.

**Consequence:** The repository is lean and maintainable. When a rule changes, it changes once, and all references point to that one place.

## Maintain Terminology

Terms used across the engine have single, consistent meanings.

Terminology changes are formal and propagated everywhere at once.

**Consequence:** The glossary is not merely helpful; it is essential. Terms mean what they mean, and that meaning is the same everywhere.

## Distinguish Layers

Engine rules (behavior) are separate from engine data model (structure) are separate from runtime (execution).

World documentation is separate from engine documentation. Campaign documentation is separate from world documentation. Historical documents are separate from all others.

**Consequence:** Each layer has clear ownership and can evolve somewhat independently. An engine change does not automatically cascade through all worlds. A world addition does not require an engine revision.

## Seek Reusable Abstractions

New mechanics should be expressed through existing abstractions whenever possible.

If a desired capability can be achieved by extending an existing abstraction, that approach is preferred over introducing a new concept.

**Consequence:** The engine remains coherent and small. New work integrates naturally with what exists rather than adding isolated systems.

---

# Design Tradeoffs

When these principles conflict, they are resolved using this priority order.

1. **Historical Simulation** — Does it make the world more coherent and historically believable?
2. **Architectural Consistency** — Does it maintain clear abstraction boundaries and avoid duplication?
3. **Long-Term Maintainability** — Does it make the engine easier to understand, extend, and debug in the future?
4. **Reusable Abstractions** — Does it generalize across settings and genres, or is it special-cased?
5. **Simulation Depth** — Does it add meaningful simulation capability?
6. **Ease of Implementation** — Does it reduce the work required to build or use it?
7. **Narrative Convenience** — Does it make stories easier to tell or more exciting to play?

This order is not a checklist. It is a tiebreaker: when two valid approaches conflict, the one that scores higher on this scale is preferred, even if it costs implementation time or narrative convenience.

**Narrative convenience is the lowest priority.** If a feature improves immediate gameplay but weakens the architecture, redesign the feature instead of compromising the engine.

---

# Relationship to Other Documents

- **Engine Rules** (`010_ENGINE_RULES.md`) implement these principles through behavioral rules.
- **Engine Decisions** (`001_ENGINE_DECISIONS.md`) record the reasoning behind specific design choices, grounded in these principles.
- **Engine Data Model** (`011_ENGINE_DATA_MODEL.md`) provides the structural foundation these principles operate on.
- **Engine Runtime** (`012_ENGINE_RUNTIME.md`) executes these principles through mechanical procedure.
- **Engine Manifest** (`000_ENGINE_MANIFEST.md`) describes the repository structure through which these principles are expressed.

If any of those documents conflict with these principles, the discrepancy should be resolved through the formal revision process (Engine Decisions, not silent edits).

---

# License

**Status:** Private Development Project

Chronicle Engine is currently under active development.

---

> **"The purpose of the engine is to simulate history rather than construct a narrative. Stories emerge from historical development. History is never rewritten to improve a story."**
