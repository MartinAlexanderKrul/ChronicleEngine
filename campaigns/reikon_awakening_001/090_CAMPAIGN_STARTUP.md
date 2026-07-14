# Campaign Startup — Reikon Awakening 001

**Authority:** Operational campaign configuration; not canon.

```yaml
startup_version: "1.0"
campaign: campaigns/reikon_awakening_001
world: worlds/reikon
world_rule_profile: "Reikon 0.1"
protagonist_policy: pre-authored
default_protagonist: ENT-000051
initialization_state: resumable
canonical_entry_point: campaigns/reikon_awakening_001/180_CURRENT_STATE.md
customization:
  name_change: new-instance-only
  background_change: new-instance-only
  different_protagonist: new-instance-only
  preserve_baseline: true
required_sources:
  - campaigns/reikon_awakening_001/100_CHARACTER_SHEET.md
  - campaigns/reikon_awakening_001/110_WORLD_LEDGER.md
  - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md
  - campaigns/reikon_awakening_001/130_NPCS_AND_FACTIONS.md
  - campaigns/reikon_awakening_001/140_OBJECTIVES.md
  - campaigns/reikon_awakening_001/160_CAMPAIGN_CHRONICLE.md
  - campaigns/reikon_awakening_001/180_CURRENT_STATE.md
  - worlds/reikon/206_WORLD_RULE_PROFILE.md   # active World Rule Profile (Rules 14.4) -- load before resolving affected state
  - worlds/reikon/205_THE_LEDGER.md           # System lore; the profile above governs every mechanic
validation:
  require_confirmation_before_mutation: true
  require_confirmation_before_scene: true
  block_on_contradiction: true
  first_session_requires_save: false
```
