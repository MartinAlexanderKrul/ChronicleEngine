# Campaign Startup - Gatefall: Pendragon

**Authority:** Operational campaign configuration; non-canonical
**Gameplay Profile:** `docs/AI_GAMEPLAY_RESIDENT_CORE.md` (resident, held every turn) + `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (fetched)

---

```yaml
startup_version: "1.0"
campaign: campaigns/gatefall_pendragon_001
world: worlds/gatefall
world_rule_profile: "Gatefall World Rule Profile 1.26"
protagonist_policy: custom
default_protagonist: ENT-000125
initialization_state: resumable
latest_restorable_checkpoint: campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0029
canonical_entry_point: campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md
player_briefing: campaigns/gatefall_pendragon_001/095_PLAYER_BRIEFING.md
customization:
  name_change: new-instance-only
  background_change: new-instance-only
  different_protagonist: new-instance-only
  preserve_baseline: true
source_loading:
  required_sources:
    semantics: "Authoritative and available; not an instruction to preload every source in full."
    restoration_entry: "Read the manifest, canonical entry point, current state, and situation-relevant objects/events."
    large_ledger_policy: "Search identifiers or headings first; read bounded, non-overlapping blocks. Historical chronicle and changelog content is fetched only when relevant."
    failure_policy: "A single-call size limit is not a source-read failure while the required bounded blocks remain readable."
  world_rule_profile:
    path: worlds/gatefall/206_WORLD_RULE_PROFILE.md
    mode: section-addressed
    required_source_semantics: "Authoritative and available; not a whole-file preload."
    restoration_reads:
      - "Profile metadata and the compatibility/migration chain applicable to the restored checkpoint."
      - "Sections governing temporal settlement before either pool is read or time advances."
      - "Sections 7.1, 7.4, 8.4, and 14.3 before readiness completes; keep their skill-counter, progression-candidate, ratification-gate, and quest-trigger contracts in the resident working set. Quest triggers use their declared exchange boundaries. Skill formation audits danger once at scene close; work/practice seals compact notes for one promotion-barrier batch, which also re-counts known combat-skill uses/mastery and reconciles combat formation audits since the prior barrier. Fully authored formation results ratify automatically; unauthored pending candidates form one mandatory adjudication queue before the next scene."
      - "Any section governing the next affected operation, fetched before that operation resolves."
    range_policy: "Search headings first; use separate, bounded, non-overlapping reads and continue from the first unread line."
    failure_policy: "A single-call size limit is not a source-read failure; startup stops only if an applicable bounded section cannot be read."
required_sources:
  - worlds/gatefall/200_WORLD_BIBLE.md
  - worlds/gatefall/206_WORLD_RULE_PROFILE.md
  - worlds/gatefall/210_PLACES.md
  - worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md
  - worlds/gatefall/institutions/bgm-region-v/250_INSTITUTION_LEDGER.md
  - worlds/gatefall/260_SEED_EVENTS.md
  - campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md
  - campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md
  - campaigns/gatefall_pendragon_001/120_INVENTORY_AND_OWNERSHIP.md
  - campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md
  - campaigns/gatefall_pendragon_001/140_OBJECTIVES.md
  - campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md
  - campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md
validation:
  require_confirmation_before_mutation: true
  require_confirmation_before_scene: true
  block_on_contradiction: true
  first_session_requires_save: false
  require_temporal_settlement: true
  require_profile_trigger_audit: true
```

---

# Campaign Policy

Gatefall: Pendragon is the first campaign instance in the Gatefall world (`worlds/gatefall/`, start city Chicago). It is a **pre-System start**: the protagonist is an ordinary licensed E-Rank hunter at campaign creation. The System (`GTF-OVR-001`, `GTF-OVR-002`) has not attached to him and grants nothing at creation — no level, no XP bar, no stat window, no Mana pool, no `/system` access. His five-stat creation array (Profile Section 4.1) is recorded as **latent**: it is civilian-range baseline, not yet read by any System, and describes only his ordinary capability under Chronicle Engine's d100 resolution and Gatefall's E-Rank (40) health.

Alexander Pendragon is the confirmed custom protagonist for this instance. His background, stats, funds, debt, and starting affiliation are derived from the confirmed custom-character proposal and Profile Sections 4.1, 9.4, and 12.6.

**The System's onset is not scheduled, foreshadowed, or announced by this configuration.** It arises from play under Profile Section 14.7 (the Onset Sequence); the profile's onset-timing ruling bounds it — **no later than the resolution of the protagonist's first genuine fight** — and within that bound, the Runtime determines the precipitating moment causally from play.

**No posted E-Rank/D-Rank Gate contract may ever be offered to the protagonist as a solo bid.** Profile Section 9.4 sets a five-hunter posting floor on every board (BGM auction, co-op desk, guild dispatch) for E-Rank/D-Rank contracts, with no exception for an unconfirmed Gate or anything assessed D or above; insurance is void solo. Any contract the Runtime offers arrives as a crew slot.

No gameplay scene begins until the player receives the spoiler-safe briefing and confirms readiness.
