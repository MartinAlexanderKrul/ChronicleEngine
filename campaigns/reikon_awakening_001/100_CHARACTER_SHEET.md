# Character Sheet — Daedalus

## Record

```yaml
id: REC-000038
canonical_record: REC-000038
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000045
  event_time: "Year 31 AR, Stat-cap removal and Ascension-rate ruling"
  record_time: "2026-07-21T03:00:00Z"
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
  source: EVT-000045
  event_time: "Year 31 AR, Stat-cap removal and Ascension-rate ruling"
  record_time: "2026-07-21T03:00:00Z"
  uncertainty: "Residence established by ruling (ENT-000066), not by played event; the landlord and the tenancy's remaining term are unestablished. Allocation of the 8 unspent points is an open player decision, not yet made. Power, Speed, and Perception have no authored uncapped formula (206 S4.2) — an open gap, not invented."
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
  world_rule_profile: "Reikon 0.8"
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
  unspent_points: 0              # EVT-000046: player-authored allocation of all 8 points (2 original + 6 retroactive from EVT-000045) — Power +3, Endurance +2, Mana Affinity +1, Perception +1, Fireball Efficiency +1
  awakening_pool: 13
  awakening_health: 100
  awakening_endurance: 9
  current_mana: 2               # 14 - 12 Fireball cost (EVT-000041); unaffected by this Ascension
  mana_recovery_mode: resting
  mana_recovery_remainder_seconds: 0
  current_health: 121            # max_health(3,11) = round(100 x 1.05^2 x (1+0.05x(11-9))) = round(100x1.1025x1.10) = 121 (206 S7.1); was full at old max 110, missing=0, so full at new max per the Maximum-Health-Changes rule (EVT-000046)
  health_recovery_mode: resting
  health_recovery_care: treated
  health_recovery_injury_severity: none
  health_recovery_remainder_units: 0
  intervention_silent_checks: 0
  active_intervention: none      # Emberbrand spent: critical-force Fireball landed on the Ashgate cluster (EVT-000041); fully consumed, not merely expired; still none after the Ashgate closure (EVT-000042)
  stats:
    power: 11                    # EVT-000046: +3
    endurance: 11                # EVT-000046: +2
    speed: 10
    mana_affinity: 15            # EVT-000046: +1
    perception: 15               # EVT-000046: +1
  abilities:
    - name: Fireball
      efficiency: 1              # EVT-000046: +1
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

**Derived readout at this state** (computed from the block above; recorded here for review only, never as canon; supersedes the stale Level-2 readout previously left here after EVT-000044/EVT-000045 — corrected under EVT-000046):
Level 3, all 8 unspent points allocated (`EVT-000046`): Power 8→11, Endurance 9→11, Mana Affinity 14→15, Perception 14→15, Fireball Efficiency 0→1 (Strength unchanged at 1). `max_mana` = 15 (unaffected — 206 S3.2 keys off `awakening_pool` and level, not the Mana Affinity stat); `max_health` = 121 (206 S7.1, current Endurance 11 vs. `awakening_endurance` 9). Fireball stays Lv 1 (`floor((1+1)/5)=0`) but its cost drops 12→11; Flame Shield costs 2/second, Combustion Touch 6, Endurance Surge 10, Reinforced Body 0. Effective band **E** (max_mana 15, still within 5–15). Next threshold `T(3)` = 170. Current state: 25/170 XP, 2/15 Mana, 121/121 HP (set to full at the new maximum — was full at the old maximum, per the Maximum-Health-Changes rule). The Ashgate encounter is fully resolved: nine Broodlings confirmed dead across the engagement, awarding 6 XP each (54 XP) plus a 70 XP Rift-clear milestone (`EVT-000044`, 206 S8.2), moving XP from 31 to 155 and crossing `T(2)`=130 into Ascension to Level 3. The Ashgate core was extracted cleanly (d100 88) and the Rift closed as Daedalus withdrew (d100 99). Emberbrand remains fully spent (`active_intervention: none`). Trained non-System skills: foundational Swordsmanship (two recorded sessions), practiced aerobic conditioning (three recorded 10 km runs), and practiced bodyweight conditioning (two recorded 100-pushup sessions).
