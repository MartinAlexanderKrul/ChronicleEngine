# Chronicle Engine Repository Index

## Read in this order

Every new session should begin by reading the files below before proposing changes.

**Two of them cannot be read in one pass, and asking for them whole gets you a truncated view with no error.** `system/RUNTIME_CONTEXT_BUDGETS.yaml` sets a **25,000-token read cap**; `engine/001_ENGINE_DECISIONS.md` is about 3× it and `engine/030_ENGINE_CHANGELOG.md` about 2.7×. Read both by heading — `## Decision NNN`, or the newest dated entry under the current version — never end to end. Enforced by `tools/test_read_cap.ps1`, which also fails if this list ever again names a file it cannot read.

**Before proposing an engine change, run `git fetch` and compare against `origin/main` first.** A local checkout can sit many commits behind with nothing in the working tree hinting at it, and in this repository the divergence is measured in accepted Decisions and profile versions rather than lines. The ADR log being over the read cap is exactly why: the one document that records what has already been decided is the one a session is least likely to have read in full.

### Development

1. docs/PROJECT_CONTEXT.md
2. docs/DEVELOPMENT_WORKFLOW.md
3. docs/AI_SESSION_TEMPLATE.md
4. docs/CONTRIBUTING.md

### Gameplay

Use `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (the resident layer, held every turn) with `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (fetched reference) to start or resume a campaign. Players do not need to read repository files before play.

Setup manual and AI Project prompts: `docs/GAMEPLAY_START_GUIDE.md`.

Repository inventory: `system/WORLDS_AND_CAMPAIGNS.md` (Decision 071) — the generated minimal table of every world and campaign, with status and latest checkpoint. It is the rendered source for the Engine Welcome Page listing; `tools/generate_runtime_index.ps1 -Check` enforces byte-for-byte synchronization.

Campaign cast rosters: `campaigns/<campaign>/135_CAST_IN_PLAY.md` — the generated one-row-per-entity index of who exists in a campaign, derived from its `130_NPCS_AND_FACTIONS.md`. It is a readiness read, so a session knows the cast without preloading a ledger many times the readiness budget; the records themselves stay on demand and are loaded at the encounter (Resident Core, *Load a Recorded NPC Before Playing It*). `tools/generate_campaign_cast.ps1 -Check` enforces byte-for-byte synchronization.

Formal validation gates, tiered (Recommendation R9): **Tier 1** `tools/validate_live.ps1` — repository structure (Decision 054) plus runtime configuration, the single named live gate. **Tier 2** `tools/validate_checkpoint.ps1` — Tier 1 plus the checkpoint form, lineage, and index-synchronization contract. **Tier 3** `tools/test_all.ps1` — the development regression suite, never a save gate. The underlying `tools/validate_repository.ps1` also enforces index coverage: a live campaign or world with no row fails the build (Decision 071).

Transactional checkpoint writer: `tools/new_checkpoint.ps1` (Recommendation R8). It consumes the Runtime Profile's hash-bound live-mutation receipt and mechanically owns locking, complete snapshot copying, manifest generation, restore-pointer/index synchronization, rollback, final gates, and the machine result.

Governance gate: `tools/test_decision_roadmap_sync.ps1` (Decision 069) — every accepted decision must be claimed by a roadmap milestone. Change classification is defined in `docs/DEVELOPMENT_WORKFLOW.md`.

### Architecture

5. engine/000_ENGINE_MANIFEST.md
6. engine/001_ENGINE_DECISIONS.md — **over the read cap (~3×); read by `## Decision NNN` heading, never whole**
7. engine/002_ENGINE_ROADMAP.md
8. engine/003_DESIGN_PRINCIPLES.md
9. engine/010_ENGINE_RULES.md
10. engine/011_ENGINE_DATA_MODEL.md
11. engine/012_ENGINE_RUNTIME.md

### Reference

12. engine/020_ENGINE_GLOSSARY.md
13. engine/030_ENGINE_CHANGELOG.md — **over the read cap (~2.7×); read the newest dated entry under the current version heading**

### Templates

14. templates/000_TEMPLATE_CONVENTIONS.md

Campaign startup and player-briefing templates are under `templates/campaign/` and `templates/derived/`.

### Worlds

For the current inventory of worlds and campaigns, read `system/WORLDS_AND_CAMPAIGNS.md` rather than inferring it from the lists in this file.

15. worlds/asterra/200_WORLD_BIBLE.md
16. worlds/verra/200_WORLD_BIBLE.md
17. worlds/reikon/README.md

### Case Studies

18. docs/400_CASE_STUDIES/401_MICTIAN_CAMPAIGN.md
19. docs/420_PROTOTYPE_ALPHA/425_ENGINE_POSTMORTEM.md

### Version 0.3 Validation

20. docs/430_RUNTIME_PERSISTENCE_VALIDATION/430_VALIDATION_OVERVIEW.md
21. docs/430_RUNTIME_PERSISTENCE_VALIDATION/431_CAPABILITY_MATRIX.md
22. docs/430_RUNTIME_PERSISTENCE_VALIDATION/432_GATEFALL_PROTOTYPE_LOG.md
23. docs/430_RUNTIME_PERSISTENCE_VALIDATION/437_AI_RUNTIME_LOAD_AND_VALIDATION_RECOMMENDATIONS.md
24. docs/430_RUNTIME_PERSISTENCE_VALIDATION/438_F001_MULTI_CONTACT_OUTREACH_ANALYSIS.md
25. docs/430_RUNTIME_PERSISTENCE_VALIDATION/439_NPC_GROUNDING_ANALYSIS.md
26. docs/430_RUNTIME_PERSISTENCE_VALIDATION/440_ENGINE_POSTMORTEM.md
27. docs/430_RUNTIME_PERSISTENCE_VALIDATION/441_F020_F021_NPC_CHANNEL_ANALYSIS.md

### Version 0.4 Validation

28. docs/440_ECONOMY_VALIDATION/440_VALIDATION_OVERVIEW.md
29. docs/440_ECONOMY_VALIDATION/441_CAPABILITY_MATRIX.md
