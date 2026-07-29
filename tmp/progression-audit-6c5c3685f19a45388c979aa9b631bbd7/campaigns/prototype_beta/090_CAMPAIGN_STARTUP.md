# Campaign Startup - Prototype Beta

**Authority:** Operational campaign configuration; non-canonical
**Gameplay Profile:** `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (resident, held every turn) + `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (fetched)

---

```yaml
startup_version: "1.0"
campaign: campaigns/prototype_beta
world: worlds/verra
protagonist_policy: custom
default_protagonist: ENT-000021
initialization_state: initialized-no-save
canonical_entry_point: campaigns/prototype_beta/180_CURRENT_STATE.md
player_briefing: campaigns/prototype_beta/095_PLAYER_BRIEFING.md
customization:
  name_change: new-instance-only
  background_change: new-instance-only
  different_protagonist: new-instance-only
  preserve_baseline: true
required_sources:
  - campaigns/prototype_beta/100_CHARACTER_SHEET.md
  - campaigns/prototype_beta/110_WORLD_LEDGER.md
  - campaigns/prototype_beta/120_INVENTORY_AND_OWNERSHIP.md
  - campaigns/prototype_beta/130_NPCS_AND_FACTIONS.md
  - campaigns/prototype_beta/140_OBJECTIVES.md
  - campaigns/prototype_beta/160_CAMPAIGN_CHRONICLE.md
  - campaigns/prototype_beta/180_CURRENT_STATE.md
validation:
  require_confirmation_before_mutation: true
  require_confirmation_before_scene: true
  block_on_contradiction: true
  first_session_requires_save: false
```

---

# Campaign Policy

Prototype Beta is a new campaign instance in the existing Verra world. It inherits the current world layer, including the public aftermath of the closed Prototype Alpha campaign, but does not continue or modify Prototype Alpha.

Kael Travis is the confirmed custom protagonist for this instance. His knowledge, inventory, credentials, relationships, objectives, social position, and entry pressure are derived from current Verra canon and the confirmed custom-character proposal.

No gameplay scene begins until the player receives the spoiler-safe briefing and confirms readiness.
