# Contributing to Chronicle Engine

Thank you for contributing to Chronicle Engine.

This project is developed as a software architecture specification rather than a traditional RPG ruleset.

Please read the following documents before making significant changes:

1. README.md
2. docs/INDEX.md
3. docs/PROJECT_CONTEXT.md
4. docs/AI_SESSION_TEMPLATE.md
5. engine/000_ENGINE_MANIFEST.md
6. engine/001_ENGINE_DECISIONS.md
7. engine/002_ENGINE_ROADMAP.md
8. engine/010_ENGINE_RULES.md
9. engine/011_ENGINE_DATA_MODEL.md
10. engine/012_ENGINE_RUNTIME.md
11. engine/020_ENGINE_GLOSSARY.md
12. engine/030_ENGINE_CHANGELOG.md
13. templates/000_TEMPLATE_CONVENTIONS.md

---

# Development Philosophy

Chronicle Engine values:

- consistency,
- causality,
- historical simulation,
- long-term maintainability,
- reusable abstractions.

New mechanics should solve architectural problems rather than add isolated features.

---

# Before Making Changes

Before editing any document:

- Review related sections.
- Check whether the concept already exists.
- Determine which document owns the concept.
- Consider architectural consequences.

Do not introduce duplicate definitions.

---

# Single Source of Truth

Every concept should have one authoritative definition.

Examples:

- Rules belong in Engine Rules.
- Structure belongs in the Data Model.
- Execution obligations belong in the Runtime.
- Rationale belongs in Engine Decisions.
- Future work belongs in the Roadmap.
- Terminology belongs in the Glossary.
- Template shape belongs in Template Conventions.
- Historical indexing of completed architectural work belongs in the Changelog.
- Repository structure belongs in the Manifest.

Other documents should reference these definitions instead of repeating them.

---

# Change Process

Major features should follow this order:

1. Architecture discussion.
2. Decision (if needed).
3. Engine Rules update.
4. Supporting document updates.
5. Repository review.
6. Git commit.

---

# Architecture Checklist

Before considering a feature complete:

## Consistency

- Does it agree with existing rules?

## Reusability

- Can it support multiple worlds?

## Separation

- Does it belong in the correct layer?

## Extensibility

- Will future systems naturally build upon it?

## Simplicity

- Is there a simpler abstraction?

## Documentation

- Are all affected documents updated?

---

# Commit Guidelines

Prefer descriptive commits.

Examples:

```
Add institution lifecycle framework

Refactor resource ownership

Introduce research lifecycle

Remove duplicated simulation definitions

Clarify canon hierarchy
```

Avoid generic commit messages such as:

```
Update

Fix

Changes

Misc
```

---

# Pull Request Checklist

Before merging significant changes:

- [ ] Roadmap reviewed
- [ ] No duplicated concepts introduced
- [ ] Related ADRs updated (if necessary)
- [ ] Rules remain internally consistent
- [ ] Terminology remains consistent
- [ ] Documentation updated
- [ ] Backward compatibility considered

---

# AI Collaboration

AI contributors should:

- act as software architects,
- explain reasoning,
- challenge weak designs,
- identify inconsistencies,
- avoid silent assumptions.

AI should not optimize for producing the largest amount of text.

It should optimize for producing the strongest architecture.

---

# Project Goal

Chronicle Engine is not intended to become the largest RPG rules document.

It is intended to become one of the most coherent historical simulation engine specifications.

Quality takes precedence over quantity.
