# Campaign Startup - Prototype Alpha

**Authority:** Operational campaign configuration; non-canonical
**Gameplay Profile:** `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`

---

```yaml
startup_version: "1.0"
campaign: campaigns/prototype_alpha
world: worlds/verra
protagonist_policy: either
default_protagonist: ENT-000018
initialization_state: initialized-no-save
canonical_entry_point: campaigns/prototype_alpha/180_CURRENT_STATE.md
player_briefing: campaigns/prototype_alpha/095_PLAYER_BRIEFING.md
customization:
  name_change: new-instance-only
  background_change: new-instance-only
  different_protagonist: new-instance-only
  preserve_baseline: true
required_sources:
  - campaigns/prototype_alpha/100_CHARACTER_SHEET.md
  - campaigns/prototype_alpha/110_WORLD_LEDGER.md
  - campaigns/prototype_alpha/120_INVENTORY_AND_OWNERSHIP.md
  - campaigns/prototype_alpha/130_NPCS_AND_FACTIONS.md
  - campaigns/prototype_alpha/140_OBJECTIVES.md
  - campaigns/prototype_alpha/160_CAMPAIGN_CHRONICLE.md
  - campaigns/prototype_alpha/180_CURRENT_STATE.md
validation:
  require_confirmation_before_mutation: true
  require_confirmation_before_scene: true
  block_on_contradiction: true
  first_session_requires_save: false
```

---

# Campaign Policy

Ilse Varn is the default pre-authored protagonist for the canonical Prototype Alpha baseline. A player may instead create a custom protagonist for the same prepared Verra opening, but customization creates a separate campaign instance. It must not alter this approved baseline, its identifiers, or Verra canon.

The custom protagonist must enter Halden through a plausible route supported by their background. Their knowledge, inventory, credentials, relationships, objectives, social position, and entry pressure are derived afresh and validated before the new instance is written.

No gameplay begins until the player accepts Ilse or confirms a custom-character proposal, receives the appropriate spoiler-safe briefing, and confirms readiness.
