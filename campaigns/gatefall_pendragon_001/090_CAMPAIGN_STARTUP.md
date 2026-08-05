# Campaign Startup - Gatefall: Pendragon

**Authority:** Operational campaign configuration; non-canonical
**Gameplay Profile:** `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (resident, held every turn) + `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (fetched)

---

```yaml
startup_version: "1.0"
campaign: campaigns/gatefall_pendragon_001
world: worlds/gatefall
world_rule_profile: "Gatefall World Rule Profile 1.57"
protagonist_policy: custom
default_protagonist: ENT-000125
initialization_state: resumable
latest_restorable_checkpoint: campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0075
canonical_entry_point: campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md
player_briefing: campaigns/gatefall_pendragon_001/095_PLAYER_BRIEFING.md
selection_caveat: "Active campaign; resumable from its latest checkpoint."
customization:
  name_change: new-instance-only
  background_change: new-instance-only
  different_protagonist: new-instance-only
  preserve_baseline: true
source_loading:
  protagonist_readiness_fields:
    - canonical_state.age
    - canonical_state.location
    - canonical_state.appearance
    - canonical_state.personality
    - canonical_state.aspiration
    - canonical_state.system_state.profile_version
    - canonical_state.system_state.onset_event
    - canonical_state.system_state.class
    - canonical_state.system_state.title
    - canonical_state.system_state.titles
    - canonical_state.system_state.level
    - canonical_state.system_state.xp
    - canonical_state.system_state.health
    - canonical_state.system_state.mana
    - canonical_state.system_state.temporal_state
    - canonical_state.system_state.unspent_points
    - canonical_state.system_state.pending_rewards
    - canonical_state.system_state.system_rank
    - canonical_state.system_state.progression_candidates
    - canonical_state.system_state.non_daily_quests
    - canonical_state.system_state.daily_quest
  protagonist_deferred_field_groups:
    action_resolution:
      - canonical_state.system_state.stats
      - canonical_state.system_state.effective_stats
      - canonical_state.system_state.equipment
      - canonical_state.system_state.skills_known
    progression_settlement:
      - canonical_state.system_state.tracked_counters
      - canonical_state.system_state.progression_audit_baselines
    system_shop:
      - canonical_state.system_state.gold
      - canonical_state.system_state.inventory
  entity_deferred_groups:
    npc_present:
      file: campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md
      object_source: campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY.md
      entity_fields:
        - canonical_state.location
        - canonical_state.condition
        - canonical_state.personality
        - canonical_state.situation
      relationship_fields:
        - qualities
        - state
        - texture
      reason: "fetch when a recorded NPC enters a scene, before its first line (Resident Core, Load a Recorded NPC Before Playing It)"
  entity_authoring_check:
    tool: tools/check_name_collision.ps1
    object_source: campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY.md
    ledger: campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md
    world_ledger: worlds/gatefall/220_NOTABLE_FIGURES.md
    reason: "run before a freshly authored NPC's name is spoken, not after the save (F-009). BLOCKED is what the Repository Validation Barrier will reject; REVIEW is the author's own call in the turn."
  campaign_readiness_headings:
    - file: campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md
      heading: "Closed Channels"
      reason: "player-ruled NPC knowledge closures, which the resident channel check reads before an NPC speaks"
    - file: campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY.md
      heading: "Cast"
      reason: "who exists and where; the records themselves stay on demand"
  required_sources:
    semantics: "Authoritative and available; not an instruction to preload every source in full."
    restoration_entry: "Read the manifest, canonical entry point, current state, and situation-relevant objects/events."
    large_ledger_policy: "Search identifiers or headings first; read bounded, non-overlapping blocks. Historical chronicle and changelog content is fetched only when relevant."
    failure_policy: "A single-call size limit is not a source-read failure while the required bounded blocks remain readable."
  world_rule_profile:
    path: worlds/gatefall/206_WORLD_RULE_PROFILE.md
    mode: section-addressed
    required_source_semantics: "Authoritative and available; not a whole-file preload."
    migration_index: worlds/gatefall/migrations/INDEX.md
    migration_policy: "The active profile carries current law only. When a restored checkpoint's captured profile is older than the active version, read the index and then only the records from the captured version forward, in order. A current rule lookup reads none of them."
    readiness_headings:
      - "5.2 Recovery"
      - "6.1.1 Natural Health Recovery"
      - "8.4.2 Urgent Quests"
      - "8.4.3 Hidden Quests"
      - "14.3 Trigger Tiers — What It Says Unprompted, and What Only on Request"
    operation_policy: "Fetch any additional affected section before its operation resolves."
    range_policy: "Search headings first; use separate, bounded, non-overlapping reads and continue from the first unread line."
    failure_policy: "A single-call size limit is not a source-read failure; startup stops only if an applicable bounded section cannot be read."
required_sources:
  - worlds/gatefall/200_WORLD_BIBLE.md
  - worlds/gatefall/206_WORLD_RULE_PROFILE.md
  - worlds/gatefall/210_PLACES.md
  - worlds/gatefall/220_NOTABLE_FIGURES.md
  - worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md
  - worlds/gatefall/institutions/bgm-region-v/250_INSTITUTION_LEDGER.md
  - worlds/gatefall/260_SEED_EVENTS.md
  - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
  - campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md
  - campaigns/gatefall_pendragon_001/120_INVENTORY_AND_OWNERSHIP.md
  - campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md
  - campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY.md
  - campaigns/gatefall_pendragon_001/140_OBJECTIVES.md
  - campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md
  - campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md
diegetic_commands:
  # Every panel's `dispatch` opens with Section 15.1. That section is the render
  # grammar — fixed 78-cell width, the mandatory blank interior rows, the status
  # gutter, bracketed Rank everywhere, `—` for a value canonical state does not
  # hold, an empty group still rendering its header and `none`, and the standing
  # prohibition on truncating — and Section 15.1 declares itself normative for
  # every panel identically. A command that dispatched only its own template
  # loaded every value it renders and none of the layout it renders them into,
  # which is how a panel comes back narrower than the template it claims to obey.
  /system:
    dispatch:
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#151-render-grammar
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#152-system-the-console
    required_live_reads:
      - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
      - campaigns/gatefall_pendragon_001/120_INVENTORY_AND_OWNERSHIP.md
    protagonist_fields:
      - canonical_state.system_state.class
      - canonical_state.system_state.title
      - canonical_state.system_state.titles
      - canonical_state.system_state.level
      - canonical_state.system_state.xp
      - canonical_state.system_state.health
      - canonical_state.system_state.mana
      - canonical_state.system_state.system_rank
      - canonical_state.system_state.temporal_state
      - canonical_state.system_state.unspent_points
      - canonical_state.system_state.pending_rewards
      - canonical_state.system_state.stats
      - canonical_state.system_state.effective_stats
      - canonical_state.system_state.equipment
      - canonical_state.system_state.skills_known
      - canonical_state.system_state.daily_quest
      - canonical_state.system_state.non_daily_quests
      - canonical_state.system_state.gold
      - canonical_state.system_state.daily_premium
    render_policy: exact-template-only
  /system skills:
    dispatch:
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#151-render-grammar
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1531-system-skills
    required_live_reads:
      - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
    protagonist_fields:
      - canonical_state.system_state.skills_known
      - canonical_state.system_state.stats
      - canonical_state.system_state.effective_stats
      - canonical_state.system_state.equipment
      - canonical_state.system_state.mana
      - canonical_state.system_state.system_rank
    render_policy: exact-template-only
  /system shop:
    dispatch:
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#151-render-grammar
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1535-system-shop
    required_live_reads:
      - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
    protagonist_fields:
      - canonical_state.system_state.gold
      - canonical_state.system_state.inventory
      - canonical_state.system_state.daily_premium
      - canonical_state.system_state.system_rank
      - canonical_state.system_state.skills_known
    render_policy: exact-template-only
  /system quests:
    dispatch:
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#151-render-grammar
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1533-system-quests
    required_live_reads:
      - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
    protagonist_fields:
      - canonical_state.system_state.daily_quest
      - canonical_state.system_state.non_daily_quests
      - canonical_state.system_state.pending_rewards
    render_policy: exact-template-only
  /system gear:
    aliases:
      - /system equipment
      - /system inventory
    dispatch:
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#151-render-grammar
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1532-system-gear
    required_live_reads:
      - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
      - campaigns/gatefall_pendragon_001/120_INVENTORY_AND_OWNERSHIP.md
    protagonist_fields:
      - canonical_state.system_state.equipment
      - canonical_state.system_state.inventory
      - canonical_state.system_state.stats
      - canonical_state.system_state.effective_stats
      - canonical_state.system_state.skills_known
      - canonical_state.system_state.gold
    render_policy: exact-template-only
  /system titles:
    dispatch:
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#151-render-grammar
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1534-system-titles
    required_live_reads:
      - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
    protagonist_fields:
      - canonical_state.system_state.title
      - canonical_state.system_state.titles
    render_policy: exact-template-only
  /system log:
    dispatch:
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#151-render-grammar
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1536-system-log
    required_live_reads:
      - campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md
    protagonist_fields:
      - canonical_state.system_state.daily_quest
      - canonical_state.system_state.non_daily_quests
    render_policy: exact-template-only
  # `/system all` composes every panel, so it dispatches every panel's template.
  # Section 15.4 is four sentences that name the sections it renders and author
  # no layout of their own; dispatching it alone produced a plan carrying the
  # whole Bearer's state and 116 tokens of render procedure. Section 15.5 is here
  # because it governs what `/system all` renders when no class panel exists.
  /system all:
    dispatch:
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#151-render-grammar
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#152-system-the-console
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1531-system-skills
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1532-system-gear
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1533-system-quests
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1534-system-titles
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1535-system-shop
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#1536-system-log
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#154-system-all
      - worlds/gatefall/206_WORLD_RULE_PROFILE.md#155-class-panels-attach-post-class-quest
    required_live_reads:
      - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
      - campaigns/gatefall_pendragon_001/120_INVENTORY_AND_OWNERSHIP.md
      - campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md
    protagonist_fields:
      - canonical_state.system_state
    render_policy: exact-template-only
validation:
  require_confirmation_before_mutation: true
  require_confirmation_before_scene: true
  block_on_contradiction: true
  first_session_requires_save: false
  require_temporal_settlement: true
  require_profile_trigger_audit: true
```

---

# `/system` Pre-Render Gate

This gate is resident after campaign load and fires whenever the player's complete message is `/system`, a `/system <panel>`, a declared alias, or `/system all` — before any response is composed.

1. **Read, this turn, from disk.** Generate the operation plan for the exact command issued (`tools/resolve_operation_plan.ps1 -Campaign gatefall_pendragon_001 -Operation "<command>"`) and perform every selector it names: the render sections, the live ledgers, and the protagonist fields. An alias resolves to the panel it renders and reports it as `alias_of`.
2. **A panel rendered from memory is not a panel.** Do not answer from an earlier render in this session, from the conversation's recollection of Bearer state, from `180_CURRENT_STATE.md` alone, or from a summary. The Console defers detail to a panel and says where it went; it never defers because the detail was not loaded. Nothing carries forward from a previous render (Profile Section 15.1).
3. **Bind values into the template; change nothing else.** The `<…>` slots take canonical values and the rest of the template is fixed. Do not rename, reorder, merge, add, or drop a section, and do not invent a value to fill a row — where canonical state does not hold one, the row renders `—`.
4. **Before sending, verify the draft against the template you just read.** Every section present and in the template's order; the frame closed at its fixed width with the required blank interior rows; every Rank bracketed; every empty group rendering its header and `none`; no row truncated, and any over-long value wrapped onto an indented continuation row. `/system all` additionally renders the Console and every focused panel, each in its own frame, in one reply.
5. **A draft that fails step 4 is discarded and rendered again from the template** — never patched, never sent with an apology, never replaced by a prose summary of what the panel would have said. Sending a partial window is the failure this gate exists to prevent, and it is invisible to the player, who has no copy of the template to check it against.

If a required source cannot be read, say so out of character, name the file, and render nothing. A partial `/system` is worse than a reported read failure: the player cannot tell one from a complete one.

---

# Campaign Policy

Gatefall: Pendragon is the first campaign instance in the Gatefall world (`worlds/gatefall/`, start city Chicago). It is a **pre-System start**: the protagonist is an ordinary licensed E-Rank hunter at campaign creation. The System (`GTF-OVR-001`, `GTF-OVR-002`) has not attached to him and grants nothing at creation — no level, no XP bar, no stat window, no Mana pool, no `/system` access. His five-stat creation array (Profile Section 4.1) is recorded as **latent**: it is civilian-range baseline, not yet read by any System, and describes only his ordinary capability under Chronicle Engine's d100 resolution and Gatefall's E-Rank (40) health.

Alexander Pendragon is the confirmed custom protagonist for this instance. His background, stats, funds, debt, and starting affiliation are derived from the confirmed custom-character proposal and Profile Sections 4.1, 9.4, and 12.6.

**The System's onset is not scheduled, foreshadowed, or announced by this configuration.** It arises from play under Profile Section 14.7 (the Onset Sequence); the profile's onset-timing ruling bounds it — **no later than the resolution of the protagonist's first genuine fight** — and within that bound, the Runtime determines the precipitating moment causally from play.

**No posted E-Rank/D-Rank Gate contract may ever be offered to the protagonist as a solo bid.** Profile Section 9.4 sets a five-hunter posting floor on every board (BGM auction, co-op desk, guild dispatch) for E-Rank/D-Rank contracts, with no exception for an unconfirmed Gate or anything assessed D or above; insurance is void solo. Any contract the Runtime offers arrives as a crew slot.

No gameplay scene begins until the player receives the spoiler-safe briefing and confirms readiness.
