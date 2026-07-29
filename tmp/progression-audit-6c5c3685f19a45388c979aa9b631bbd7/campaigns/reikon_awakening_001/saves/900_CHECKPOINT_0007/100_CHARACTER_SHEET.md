# Character Sheet — Daedalus

## Record

```yaml
id: REC-000038
canonical_record: REC-000038
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, Warehouse 7 return, basement combat"
  record_time: "2026-07-15T09:15:00Z"
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
  source: EVT-000033
  event_time: "Year 31 AR, Warehouse 7 return, basement combat"
  record_time: "2026-07-15T09:15:00Z"
  uncertainty: "Residence established by ruling (ENT-000066), not by played event; the landlord and the tenancy's remaining term are unestablished."
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
  - REL-000045
  - REL-000046
  - REL-000047
canonical_state:
  location: ENT-000064
  condition: "Wounded but stable: treated moderate rake injury across left shoulder and collarbone; range of motion substantially improved; no new combat wound at the current anchor"
  capabilities:
    magical: "E-Rank fire scholar; Aurology-trained. System Ability mechanics are carried in the system extension below."
    trained_skills:
      - name: Swordsmanship
        proficiency: foundational
        training: "Two recorded 30-minute sessions of stances, cuts, defensive sequences, and sword forms"
        demonstrated: "Used a basic sword under lethal pressure to incapacitate and finish the Warehouse 7 pack leader"
        sources: [EVT-000029, EVT-000030, EVT-000033]
      - name: Aerobic conditioning
        proficiency: practiced
        training: "Three recorded 10 km runs; two were completed during the recovery-and-return sequence"
        sources: [EVT-000029, EVT-000033]
      - name: Bodyweight conditioning
        proficiency: practiced
        training: "Two recorded 100-pushup sessions"
        sources: [EVT-000029, EVT-000033]
  personality: "Ambitious prodigy; confident, observant, eager to prove himself"
  knowledge: "Aurology training; observed Broodling and Swarmer behavior and a correlation between Rift glow and creature movement; mapped the Warehouse 7 route; observed an entered basement core chamber containing a suspended deep-red core and four D-grade Breakers in a deliberate guard pattern; one Breaker is confirmed dead and three remain active. Core bonding, mutation, and stability explanations remain hypotheses, not established facts."
  residence: "A rented room in Verholt's working quarter (ENT-000066). A Verholt local of years' standing, not a newcomer: he lived and worked here as an Aurology Institute research assistant before the Awakening, and the room is held on his own coin, independent of Institute and Association alike."
  situation: "Inside the Warehouse 7 basement core chamber on a four-metre ledge. One Breaker sentinel is dead; three Breakers are active below. Daedalus has just spent 12 mana on a failed area Fireball that burned two targets without resolving them. The next attempted Fireball was not promotable because only 11 mana was available; resume before that attempt."
  training_commitment: "Repeat daily: 10 km run, 30 minutes of sword technique, 100 pushups, and one controlled round of each spell"
  world_rule_profile: "Reikon 0.4"
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
  xp: 74                        # against T(1) = 100; +19 for the ledge Breaker
  unspent_points: 0
  awakening_pool: 13
  awakening_health: 100
  awakening_endurance: 9
  current_mana: 1
  mana_recovery_mode: active
  mana_recovery_remainder_seconds: 0
  current_health: 90
  health_recovery_mode: paused
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
Level 1, so no Ascension has occurred and nothing is allocated. `max_mana` = 13, `max_health` = 100, every ability at Lv 1 (`1 + floor(0/5)`), Fireball 12 / Flame Shield 2-per-second / Combustion Touch 6 / Endurance Surge 10 / Reinforced Body 0. Effective band **E** (pool 13). Next threshold `T(1)` = 100. Current state: 74/100 XP, 1/13 Mana, 90/100 HP, active mana recovery with zero carried seconds, and a treated moderate left-shoulder/collarbone wound. Health recovery is paused during active combat with zero carried recovery units. Trained non-System skills: foundational Swordsmanship (two recorded sessions), practiced aerobic conditioning (three recorded 10 km runs), and practiced bodyweight conditioning (two recorded 100-pushup sessions).
