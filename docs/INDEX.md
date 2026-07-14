# Chronicle Engine Repository Index

## Read in this order

Every new session should begin by reading the files below before proposing changes.

### Development

1. docs/PROJECT_CONTEXT.md
2. docs/DEVELOPMENT_WORKFLOW.md
3. docs/AI_SESSION_TEMPLATE.md
4. docs/CONTRIBUTING.md

### Gameplay

Use `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (the resident layer, held every turn) with `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (fetched reference) to start or resume a campaign. Players do not need to read repository files before play.

Setup manual and AI Project prompts: `docs/GAMEPLAY_START_GUIDE.md`.

Formal repository validation gate: `tools/validate_repository.ps1` (Decision 054).

Governance gate: `tools/test_decision_roadmap_sync.ps1` (Decision 069) — every accepted decision must be claimed by a roadmap milestone. Change classification is defined in `docs/DEVELOPMENT_WORKFLOW.md`.

### Architecture

5. engine/000_ENGINE_MANIFEST.md
6. engine/001_ENGINE_DECISIONS.md
7. engine/002_ENGINE_ROADMAP.md
8. engine/003_DESIGN_PRINCIPLES.md
9. engine/010_ENGINE_RULES.md
10. engine/011_ENGINE_DATA_MODEL.md
11. engine/012_ENGINE_RUNTIME.md

### Reference

12. engine/020_ENGINE_GLOSSARY.md
13. engine/030_ENGINE_CHANGELOG.md

### Templates

14. templates/000_TEMPLATE_CONVENTIONS.md

Campaign startup and player-briefing templates are under `templates/campaign/` and `templates/derived/`.

### Worlds

15. worlds/asterra/200_WORLD_BIBLE.md
16. worlds/verra/200_WORLD_BIBLE.md
17. worlds/reikon/README.md

### Case Studies

18. docs/400_CASE_STUDIES/401_MICTIAN_CAMPAIGN.md
19. docs/420_PROTOTYPE_ALPHA/425_ENGINE_POSTMORTEM.md
