# Character Sheet — Daedalus

## Record

```yaml
id: REC-000038
canonical_record: REC-000038
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000044
  event_time: "Year 31 AR, milestone-XP ruling applied retroactively to the Ashgate clear"
  record_time: "2026-07-21T02:00:00Z"
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
  source: EVT-000044
  event_time: "Year 31 AR, milestone-XP ruling applied retroactively to the Ashgate clear"
  record_time: "2026-07-21T02:00:00Z"
  uncertainty: "Residence established by ruling (ENT-000066), not by played event; the landlord and the tenancy's remaining term are unestablished. Allocation of the 2 points granted by this Ascension is an open player decision, not yet made."
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
  location: ENT-000066
  condition: "Fully recovered. A night of proper rest, preceded by clean redressing and a tested light workout (d100 78, no reopening), closed the shoulder, rib, and burn injuries to full Health with no active pain or impairment recorded."
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
  situation: "Standing just outside the Ashgate silo, the E-Rift fully closed behind him. All nine Broodlings guarding it are confirmed dead and harvested; the small Ashgate core was extracted cleanly and the Rift collapsed as he withdrew, with room to spare. Nine E-cores from the encounter are in his purse alongside the extracted Ashgate core itself, unappraised. Warehouse 7's bonded core remains in Institute hands, still bonded and unextracted, with no severance method reported back yet; Daedalus holds observation-only clearance there, not extraction authorization."
  training_commitment: "Repeat daily: 10 km run, 30 minutes of sword technique, 100 pushups, and one controlled round of each spell"
  world_rule_profile: "Reikon 0.7"
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
  level: 3
  xp: 25                         # 85 + 70 milestone (EVT-000044: 206 S8.2 Rift-clear milestone, x10 the E-grade baseline of 7, applied retroactively to the Ashgate clear) = 155; T(2)=130 crossed, Ascension to Level 3, remainder 25 carried against T(3)=170
  unspent_points: 2              # granted by this Ascension (206 S4.1); allocation is Daedalus's player decision and is deliberately left open, not spent by this ruling
  awakening_pool: 13
  awakening_health: 100
  awakening_endurance: 9
  current_mana: 2               # 14 - 12 Fireball cost (EVT-000041); unaffected by this Ascension
  mana_recovery_mode: resting
  mana_recovery_remainder_seconds: 0
  current_health: 110            # max_health(3,9) = round(100 x 1.05^2) = 110 (206 S7.1); was full at old max 105, missing=0, so full at new max per the Maximum-Health-Changes rule (EVT-000044)
  health_recovery_mode: resting
  health_recovery_care: treated
  health_recovery_injury_severity: none
  health_recovery_remainder_units: 0
  intervention_silent_checks: 0
  active_intervention: none      # Emberbrand spent: critical-force Fireball landed on the Ashgate cluster (EVT-000041); fully consumed, not merely expired; still none after the Ashgate closure (EVT-000042)
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
Level 2 with both Ascension points allocated: Mana Affinity 14 and Fireball Strength 1. `max_mana` = 14; `max_health` = 105. Every ability remains Lv 1; Fireball costs 12 at 1.10× magnitude, Flame Shield costs 2/second, Combustion Touch 6, Endurance Surge 10, Reinforced Body 0. Effective band **E** (pool 14). Next threshold `T(2)` = 130. Current state: 85/130 XP, 2/14 Mana, 105/105 HP. The Ashgate encounter is now fully resolved: all ten Broodlings confirmed dead across the engagement (two in melee, seven mopped up post-blast, one already counted among the seven — corrected count below), awarding 6 XP each per Section 8.2's E-grade baseline (54 XP total across the melee-plus-mop-up kills, moving 31 to 85 in total across both confirmed batches). The Ashgate core was extracted cleanly (d100 88) and the Rift closed as Daedalus withdrew (d100 99). Section 8.2 states clearing a Rift core "awards a larger milestone sum" but specifies no exact magnitude anywhere in canon; **that bonus is deliberately not awarded** rather than invented — flagged as an unauthored-magnitude gap pending an owner ruling (`EVT-000043`), the same discipline the Economy section already applies to unpriced goods. Emberbrand remains fully spent (`active_intervention: none`). Trained non-System skills: foundational Swordsmanship (two recorded sessions), practiced aerobic conditioning (three recorded 10 km runs), and practiced bodyweight conditioning (two recorded 100-pushup sessions).
