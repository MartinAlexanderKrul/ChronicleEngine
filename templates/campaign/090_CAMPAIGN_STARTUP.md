# Campaign Startup

**Template Type:** Operational campaign configuration
**Authority:** Campaign setup policy; not a Persistent Object and not world or campaign canon

---

# Purpose

This artifact tells the active Gameplay Runtime Profile how a campaign may begin. It selects a startup path and points to canonical sources without duplicating their facts.

It carries no persistent-object identifier. It must not establish world truth, character knowledge, inventory, relationships, objectives, or historical events. Those belong in canonical ledgers.

---

# Configuration

```yaml
startup_version: "1.0"
campaign: <required: repository campaign path>
world: <required: repository world path>
protagonist_policy: <required: pre-authored | custom | either | emergent>
default_protagonist: <optional: character identifier for pre-authored or either>
initialization_state: <required: uninitialized | initialized-no-save | resumable>
canonical_entry_point: <required: path to 180_CURRENT_STATE.md or initialization workspace>
player_briefing: <optional: path to derived 095_PLAYER_BRIEFING.md>
customization:
  name_change: <required: allowed | new-instance-only | prohibited>
  background_change: <required: allowed | new-instance-only | prohibited>
  different_protagonist: <required: allowed | new-instance-only | prohibited>
  preserve_baseline: <required: true | false>
required_sources:
  - <required: canonical ledger path>
validation:
  require_confirmation_before_mutation: true
  require_confirmation_before_scene: true
  block_on_contradiction: true
  first_session_requires_save: false
```

---

# Authoring Rules

- Use `pre-authored` when the campaign requires its established protagonist.
- Use `custom` when the opening is prepared but the protagonist must be created.
- Use `either` when the player may accept the prepared protagonist or initialize a separate compatible protagonist.
- Use `emergent` when protagonist, world intersection, and opening situation are established through onboarding.
- Set `preserve_baseline: true` when customization must create another campaign instance rather than rewrite the prepared campaign.
- List only source ledgers needed to derive startup. The Runtime may load additional scope-responsible records when validation or clarification requires them.

---

# Validation

Reject startup when the policy is invalid, a required source is missing, the declared protagonist conflicts with the Character Sheet, initialization state conflicts with save availability, or canonical sources contradict one another.

A missing or stale player briefing does not block startup when canonical sources are coherent; regenerate it safely instead.
