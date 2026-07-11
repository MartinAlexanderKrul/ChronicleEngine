# Chronicle Engine

# Project Context

**Document Version:** 1.1
**Status:** Active  
**Audience:** Human contributors and AI collaborators

---

# Purpose

This document defines how Chronicle Engine is developed.

It is **not** part of the engine specification.

It exists to preserve the architectural mindset behind the project and to ensure that future work remains consistent with its long-term vision.

Unlike the Engine Rules, this document may evolve as the development process improves.

---

# Project Vision

Chronicle Engine is a reusable historical simulation engine.

It is **not** intended to be a traditional tabletop RPG system, adventure generator, or AI dungeon master prompt.

Its purpose is to simulate persistent worlds whose history emerges naturally from the interaction of:

- individuals,
- institutions,
- cultures,
- economies,
- environments,
- discoveries,
- and chance.

Narrative is an emergent consequence of simulation.

---

# Core Philosophy

The repository is the single source of truth.

Conversation history is temporary.

Documentation is permanent.

Whenever architectural knowledge becomes important enough to influence future work, it should be recorded in the repository rather than relying on conversational memory.

---

# Development Principles

During development:

- Favor consistency over convenience.
- Favor architecture over features.
- Favor simulation over narrative.
- Favor general solutions over campaign-specific mechanics.
- Avoid premature complexity.
- Keep Engine, World, Campaign, and Historical documents clearly separated.
- Every important concept should have a single authoritative definition.

---

# AI Collaboration

AI should behave as a senior software architect rather than a content generator.

When reviewing or proposing changes:

1. Review existing documentation before suggesting modifications.
2. Respect accepted architectural decisions.
3. Identify potential duplication.
4. Explain architectural consequences.
5. Prefer extending existing abstractions over creating new ones.
6. Challenge ideas that reduce long-term maintainability.
7. Explicitly identify assumptions.
8. Distinguish facts from recommendations.

AI should not silently introduce new mechanics or alter established rules.

---

# Repository Authority

Priority of documentation:

1. Engine Rules - behavioral truth
2. Engine Data Model - structural contract
3. Engine Runtime - execution obligations
4. Engine Decisions - accepted architectural reasoning
5. Engine Manifest - repository architecture and version overview
6. Engine Roadmap - planned work and milestone state
7. Engine Glossary - terminology normalization
8. Templates - non-canonical structural instantiation
9. Engine Changelog - historical index of architectural work
10. World Documentation
11. Campaign Documentation
12. Historical Documents
13. Project Documentation

If inconsistencies are discovered, they should be resolved explicitly rather than ignored.

Concern ownership is more important than a single linear order. Rules own behavior. The Data Model owns structure. The Runtime owns execution obligations. Templates instantiate structure but do not define canon.

---

# Development Workflow

Every significant feature should follow this sequence:

1. Review Roadmap
2. Review Existing Architecture
3. Identify Dependencies
4. Discuss Design
5. Update Decisions (if necessary)
6. Update Rules
7. Update Supporting Documents
8. Architecture Review
9. Git Commit

---

# Code Review Philosophy

Every major change should answer the following questions:

- Does this duplicate an existing concept?
- Does it belong in the correct layer?
- Does it violate an accepted decision?
- Is the abstraction reusable?
- Does it increase long-term maintainability?
- Can another developer understand it without additional explanation?

---

# Inspiration

Chronicle Engine was inspired by the long-form Mictian campaign.

The engine does **not** attempt to recreate that campaign.

Instead, it attempts to reproduce the simulation qualities that allowed such a campaign to emerge naturally.

See:

- Case Study 001 – The Mictian Campaign

---

# Long-Term Goal

Create a reusable historical simulation engine capable of supporting multiple worlds, multiple campaigns, and multiple genres while preserving historical continuity.

The engine should continue to evolve without depending on any individual conversation.

---

*"The repository remembers what the conversation forgets."*
