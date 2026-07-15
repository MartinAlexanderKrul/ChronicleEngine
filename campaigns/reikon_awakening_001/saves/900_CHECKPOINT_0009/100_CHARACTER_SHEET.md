# Character Sheet — Daedalus

## Record

```yaml
id: REC-000038
canonical_record: REC-000038
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Profile 0.6 migration; no fictional time elapsed"
  record_time: "2026-07-15T10:20:48Z"
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
  source: ruling
  event_time: "Profile 0.6 migration; no fictional time elapsed"
  record_time: "2026-07-15T10:20:48Z"
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
  condition: "Wounded but stable after a healing potion: shoulder wound reopened and redressed; healing burns across chest and forearms; treated rib and shoulder rakes; pain active but bleeding controlled"
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
  knowledge: "Aurology training; observed Broodling, Swarmer, pack-leader, and Breaker behavior; mapped Warehouse 7 and fully documented its basement core chamber. Four D-grade Breakers used a coordinated guard formation and are now dead. The metre-tall burgundy core pulses every three seconds, radiates heat, and is energetically integrated with an organic crystalline framework and eight-metre floor pattern. Direct extraction failed. Safe severance methodology, the D-grade anomaly's cause, and the core's relation to Rift stability remain unestablished."
  residence: "A rented room in Verholt's working quarter (ENT-000066). A Verholt local of years' standing, not a newcomer: he lived and worked here as an Aurology Institute research assistant before the Awakening, and the room is held on his own coin, independent of Institute and Association alike."
  situation: "Inside the cleared Warehouse 7 basement core chamber after harvesting four D-cores. The one-combat life-burn anomaly has expired. The core remains suspended and unextracted after a failed physical attempt; Daedalus has completed detailed notes and is considering safe specialist extraction protocol."
  training_commitment: "Repeat daily: 10 km run, 30 minutes of sword technique, 100 pushups, and one controlled round of each spell"
  world_rule_profile: "Reikon 0.6"
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
  level: 2
  xp: 31                        # 131 total session-progress XP crossed T(1)=100; 31 carries against T(2)=130
  unspent_points: 0
  awakening_pool: 13
  awakening_health: 100
  awakening_endurance: 9
  current_mana: 7
  mana_recovery_mode: active
  mana_recovery_remainder_seconds: 0
  current_health: 88
  health_recovery_mode: light
  health_recovery_care: treated
  health_recovery_injury_severity: moderate
  health_recovery_remainder_units: 0
  intervention_silent_checks: 0
  active_intervention: none
  stats:
    power: 8
    endurance: 9
    speed: 10
    mana_affinity: 14
    perception: 14
  abilities:
    - name: Fireball
      efficiency: 0
      strength: 1
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
Level 2 with both Ascension points allocated: Mana Affinity 14 and Fireball Strength 1. `max_mana` = 14; `max_health` = 105. The Ascension preserved the then-current 10-HP deficit (90/100 → 95/105); later damage and a 27-Health potion settle the current value at 88/105. Every ability remains Lv 1; Fireball costs 12 at 1.10× magnitude, Flame Shield costs 2/second, Combustion Touch 6, Endurance Surge 10, Reinforced Body 0. Effective band **E** (pool 14). Next threshold `T(2)` = 130. Current state: 31/130 XP, 7/14 Mana, 88/105 HP, active mana recovery with zero carried seconds, and light Health recovery for treated moderate wounds. The owner-authored life-burn anomaly expired when the fourth Breaker died and is not an available Ability. Trained non-System skills: foundational Swordsmanship (two recorded sessions), practiced aerobic conditioning (three recorded 10 km runs), and practiced bodyweight conditioning (two recorded 100-pushup sessions).
