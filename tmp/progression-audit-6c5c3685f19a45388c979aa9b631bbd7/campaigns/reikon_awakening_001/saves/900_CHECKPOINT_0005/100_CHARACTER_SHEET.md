# Character Sheet — Daedalus

## Record

```yaml
id: REC-000038
canonical_record: REC-000038
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, first expedition"
  record_time: "2026-07-14T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000051
```

## Daedalus

```yaml
id: ENT-000051
canonical_record: REC-000038
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000030
  event_time: "Year 31 AR, first expedition, pack-leader combat"
  record_time: "2026-07-14T18:00:00Z"
type: Character
subtype: "System-bearing Awakened hunter"
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus"
    quality: current
relationships:
  - REL-000040
  - REL-000041
  - REL-000042
  - REL-000043
  - REL-000044
canonical_state:
  location: ENT-000064
  condition: "Wounded: moderate rake injury across left shoulder and collarbone; bleeding controlled; pain and strain remain"
  capabilities:
    magical: "E-Rank fire scholar; Aurology-trained. System Ability mechanics are carried in the system extension below."
    trained_skills:
      - name: Swordsmanship
        proficiency: foundational
        training: "One recorded 30-minute session of stances, cuts, defensive sequences, and sword forms"
        demonstrated: "Used a basic sword under lethal pressure to incapacitate and finish the Warehouse 7 pack leader"
        sources: [EVT-000029, EVT-000030]
      - name: Aerobic conditioning
        proficiency: practiced
        training: "One recorded 10 km run"
        sources: [EVT-000029]
      - name: Bodyweight conditioning
        proficiency: practiced
        training: "One recorded 100-pushup session"
        sources: [EVT-000029]
  personality: "Ambitious prodigy; confident, observant, eager to prove himself"
  knowledge: "Aurology training; observed Broodling and Swarmer behavior and a correlation between Rift glow and creature movement"
  situation: "Solo inside Warehouse 7 E-Rift; pack leader defeated, surviving Broodlings retreating, Rift core still ahead"
  training_commitment: "Repeat daily: 10 km run, 30 minutes of sword technique, 100 pushups, and one controlled round of each spell"
  world_rule_profile: "Reikon 0.3"
  active_overrides: "RKO-OVR-001, RKO-OVR-002"

# Domain extension -- Subtype "System-bearing Awakened hunter".
# Mechanism: 011_ENGINE_DATA_MODEL.md Section 4.3 (typed, additive, Subtype-keyed).
# Content owned by worlds/reikon/206_WORLD_RULE_PROFILE.md Section 11.
# Allocations, Awakening basis values, current pools, and recovery carry are
# stored; derived maxima, costs, levels, and bands are never stored.
#   max_mana        <- 206 S3.2 from awakening_pool + level
#   max_health      <- 206 S7.1 from awakening_health, level, endurance
#   ability cost    <- 206 S4.3 from base cost + efficiency
#   ability level   <- 206 S4.4 = 1 + floor((efficiency + strength) / 5)
#   next threshold  <- 206 S8.1 T(level)
#   effective band  <- 206 S3.1 from max_mana
#   20% phys. reduction <- 206 S5, Reinforced Body
system:
  official_rank: E              # certified at Awakening; not what he is
  level: 1
  xp: 55                        # against T(1) = 100
  unspent_points: 0
  awakening_pool: 13
  awakening_health: 100
  awakening_endurance: 9
  current_mana: 7
  mana_recovery_mode: active
  mana_recovery_remainder_seconds: 0
  current_health: 60
  health_recovery_mode: active
  health_recovery_care: treated
  health_recovery_injury_severity: moderate
  health_recovery_remainder_units: 0
  stats:
    power: 8
    endurance: 9
    speed: 10
    mana_affinity: 13
    perception: 14
  abilities:
    - name: Fireball
      efficiency: 0
      strength: 0
    - name: Flame Shield
      efficiency: 0
      strength: 0
    - name: Combustion Touch
      efficiency: 0
      strength: 0
    - name: Endurance Surge
      efficiency: 0
      strength: 0
    - name: Reinforced Body
      efficiency: 0             # passive, 0-cost: ineligible for efficiency (206 S4.3)
      strength: 0
```

**Derived readout at this state** (computed from the block above; recorded here for review only, never as canon):
Level 1, so no Ascension has occurred and nothing is allocated. `max_mana` = 13, `max_health` = 100, every ability at Lv 1 (`1 + floor(0/5)`), Fireball 12 / Flame Shield 2-per-second / Combustion Touch 6 / Endurance Surge 10 / Reinforced Body 0. Effective band **E** (pool 13). Next threshold `T(1)` = 100. Current state: 55/100 XP, 5/13 Mana, 60/100 HP, active mana recovery with zero carried seconds, and a moderate left-shoulder/collarbone wound. Health recovery is paused during the active threat; the wound is untreated/self-stabilized and has zero carried recovery units. Trained non-System skills: foundational Swordsmanship, practiced aerobic conditioning, and practiced bodyweight conditioning.
