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
world_rule_profile: <optional: profile name and version when the world declares overrides>
protagonist_policy: <required: pre-authored | custom | either | emergent>
default_protagonist: <optional: character identifier for pre-authored or either>
initialization_state: <required: uninitialized | initialized-no-save | resumable | terminal>
latest_restorable_checkpoint: <required for resumable or terminal: checkpoint directory path>
canonical_entry_point: <required: path to 180_CURRENT_STATE.md or initialization workspace>
player_briefing: <optional: path to derived 095_PLAYER_BRIEFING.md>
selection_caveat: <required: spoiler-safe pre-selection caveat, maximum 240 characters>
customization:
  name_change: <required: allowed | new-instance-only | prohibited>
  background_change: <required: allowed | new-instance-only | prohibited>
  different_protagonist: <required: allowed | new-instance-only | prohibited>
  preserve_baseline: <required: true | false>
source_loading:
  protagonist_readiness_fields:
    - <optional: exact dotted field path required before the readiness question>
  protagonist_deferred_field_groups:
    <dispatch-name>:
      - <optional: exact dotted field path fetched immediately before this operation>
  world_rule_profile:
    path: <optional: active profile path>
    mode: section-addressed
    readiness_headings:
      - <optional: exact heading required before the readiness question>
required_sources:
  - <required: canonical ledger path>
validation:
  require_confirmation_before_mutation: true
  require_confirmation_before_scene: true
  block_on_contradiction: true
  first_session_requires_save: false
  require_temporal_settlement: <true when the active world declares deterministic time-based rules | false>
```

---

# Authoring Rules

- Use `pre-authored` when the campaign requires its established protagonist.
- Use `custom` when the opening is prepared but the protagonist must be created.
- Use `either` when the player may accept the prepared protagonist or initialize a separate compatible protagonist.
- Use `emergent` when protagonist, world intersection, and opening situation are established through onboarding.
- Set `preserve_baseline: true` when customization must create another campaign instance rather than rewrite the prepared campaign.
- Use `terminal` when the campaign has ended and its latest checkpoint is available for reading or forking but is not a continuation point.
- Keep `selection_caveat` spoiler-safe and at most 240 characters. It is generated into the Engine Welcome Page index; detailed state and checkpoint history do not belong there.
- A `resumable` or `terminal` campaign must name its latest restorable checkpoint. `initialized-no-save` is valid only while no conforming checkpoint exists.
- When the world declares a World Rule Profile, record its exact name and version and include the profile source in `required_sources`.
- Set `require_temporal_settlement: true` when the profile declares deterministic elapsed-time rules; startup must then load and validate the world's exact campaign-time anchor and recovery carry before play.
- When a large protagonist record would exceed the readiness budget, list only the exact pre-scene fields under `protagonist_readiness_fields`. Put action-, progression-, shop-, or command-specific fields in named `protagonist_deferred_field_groups`; the Runtime fetches a group before its dispatch and may never resolve from the reduced readiness view alone.
- Keep `world_rule_profile.readiness_headings` to sections required before the readiness question. Trigger- or action-specific sections remain available from the required profile and are fetched when their declared boundary dispatches.
- List only source ledgers needed to derive startup. The Runtime may load additional scope-responsible records when validation or clarification requires them.

---

# Validation

Reject startup when the policy is invalid, a required source is missing, the declared protagonist conflicts with the Character Sheet, initialization state conflicts with save availability, or canonical sources contradict one another.

A missing or stale player briefing does not block startup when canonical sources are coherent; regenerate it safely instead.
