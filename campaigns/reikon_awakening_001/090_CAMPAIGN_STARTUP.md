# Campaign Startup — Reikon Awakening 001

**Authority:** Operational campaign configuration; not canon.

```yaml
startup_version: "1.1"
campaign: campaigns/reikon_awakening_001
world: worlds/reikon
world_rule_profile: "Reikon 0.6"
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
diegetic_commands:
  /system:
    dispatch: worlds/reikon/206_WORLD_RULE_PROFILE.md#10-canonical-system-render-template-normative
    required_live_reads:
      - campaigns/reikon_awakening_001/100_CHARACTER_SHEET.md
      - campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md
      - campaigns/reikon_awakening_001/140_OBJECTIVES.md
    render_policy: exact-template-only
    require_complete_inventory: true
validation:
  require_confirmation_before_mutation: true
  require_confirmation_before_scene: true
  block_on_contradiction: true
  first_session_requires_save: false
```

## `/system` Pre-Render Gate

This gate is resident after campaign load and fires whenever the player's complete command is `/system`, before free-form response composition:

1. Read Section 10 of `worlds/reikon/206_WORLD_RULE_PROFILE.md` and the three `required_live_reads` above from disk. Do not answer from conversation memory, the character sheet alone, `180_CURRENT_STATE.md`, or `205_THE_LEDGER.md`.
2. Bind current values into the Section 10 template without renaming, reordering, combining, adding, or dropping sections. The first title is `<NAME> — SYSTEM INTERFACE`; `THE LEDGER — <NAME>` is not an allowed title.
3. Populate `INVENTORY` from every active object in `120_INVENTORY_AND_OWNERSHIP.md` possessed by the protagonist. Render each carried object exactly once in ledger order, stack quantities as `x<n>`, and cores last. `QUESTS` and every other fixed template section render even when empty.
4. Before sending, verify the response contains `STATS`, `SKILLS & ABILITIES`, `INVENTORY`, `QUESTS`, and `PATHS & MARKS`, and that every carried inventory object is represented. If any check fails, discard the draft and render again from the template. Never send a partial status panel.
5. The headings `ASCENSION`, `VITALITY`, `MANA`, `PASSIVE`, `TRAINING RECORD`, and `KNOWLEDGE` belong to no alternate `/system` layout. Their information may appear only where the canonical template places it; they never replace the required sections.

If a required source cannot be read, report that read failure out of character and do not fabricate a partial `/system` response.
