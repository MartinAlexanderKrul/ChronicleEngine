# Character Sheet — Daedalus

## Record

```yaml
id: REC-000038
canonical_record: REC-000038
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000048
  event_time: "Year 31 AR, Warehouse 7 resonance extraction and tannery E-Rift clear"
  record_time: "2026-07-22T00:00:00Z"
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
  source: EVT-000048
  event_time: "Year 31 AR, Warehouse 7 resonance extraction and tannery E-Rift clear"
  record_time: "2026-07-22T00:00:00Z"
  uncertainty: "Residence established by ruling (ENT-000066), not by played event; the landlord and the tenancy's remaining term are unestablished. Allocation of the 2 points granted by the Level 3 Ascension (EVT-000044) is an open player decision, not yet made. Captain Thorne's in-fiction claim of an automatic per-assignment cash bonus, separate from core-sale value, is NOT backed by any established Reikon economy mechanic (Section 12 covers cores, vells conversion, and periodic salary only) — flagged, not treated as settled, see EVT-000048. No such bonus has been added to Daedalus's holdings."
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
  situation: "Standing at the tannery-district E-Rift site, just outside the now-collapsed fissure. Warehouse 7 is fully and permanently resolved: independent contractor Wren Ashcombe, brought in through proper channels with Thorne's and the Institute's approval, successfully loosened and extracted the bonded core via a matched resonance pulse after three careful attempts (one near-miss, caught before it went anywhere). No injuries, no casualties, full clear. The tannery E-Rift turned out to hold no guardians at all — an unopposed core extraction, no XP awarded, no danger. Daedalus is unhurt, full Mana after a night's rest and a day without spellcasting, carrying both the tannery core and the Ashgate sale proceeds, with a formal Association request still pending on any Warehouse 7 completion bonus, and 2 unspent Ascension points from his Level 3 rise still unallocated."
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
  xp: 95                         # 25 carried + 70 milestone (EVT-000044's formula: x10 E-grade baseline of 7, applies to any Rift clear via core extraction/collapse, not just guarded ones -- EVT-000047); T(3)=170 not crossed
  unspent_points: 2              # granted by this Ascension (206 S4.1); allocation is Daedalus's player decision and is deliberately left open, not spent by this ruling
  awakening_pool: 13
  awakening_health: 100
  awakening_endurance: 9
  current_mana: 15              # max_mana(3) = 15 per EVT-000044's recomputation; full recovery overnight plus a full day of no spellcasting; no magic used since the Ashgate Fireball
  mana_recovery_mode: resting
  mana_recovery_remainder_seconds: 0
  current_health: 110
  health_recovery_mode: resting
  health_recovery_care: treated
  health_recovery_injury_severity: none
  health_recovery_remainder_units: 0
  intervention_silent_checks: 1  # first safe exchange of the new day (9.6 trigger #1): d100 20, Silence (EVT-000045)
  active_intervention: none      # Emberbrand spent: critical-force Fireball landed on the Ashgate cluster (EVT-000041); fully consumed, not merely expired; still none after the milestone-XP Ascension (EVT-000044) and the new day's silent check (EVT-000045)
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
Level 3 with two Ascension points still **unallocated** (player decision, not yet made). Prior allocations: Mana Affinity 14 and Fireball Strength 1. `max_mana` = 15 (per `EVT-000044`'s recomputation; pending further allocation from the 2 unspent points); `max_health` = 110. Every ability remains Lv 1; Fireball costs 12 at 1.10× magnitude, Flame Shield costs 2/second, Combustion Touch 6, Endurance Surge 10, Reinforced Body 0. Effective band **E** (pool 15). Next threshold `T(3)` = 170. Current state: 95/170 XP, 15/15 Mana (full recovery, no spellcasting since the Ashgate Fireball), 110/110 HP. The morning's recurrent intervention check (9.6, trigger #1: first safe exchange of a new day) rolled d100 20 — Silence — incrementing `intervention_silent_checks` to 1. Warehouse 7's MAIN objective is now **complete**: independent contractor Wren Ashcombe successfully extracted the bonded core via a matched resonance pulse, approved by Thorne, observed by Kalens and Daedalus at range — this is a core-severance event, not an extraction Daedalus performed himself, so no Rift-clear milestone accrues to him from it (Section 8.2's milestone rewards the hunter who clears the Rift; the clearing act here was Wren's, under Association-brokered specialist terms, not Daedalus's own). The tannery E-Rift, by contrast, **was** cleared by Daedalus himself: core extracted (d100 92 effective) and Rift collapsed (d100 100 effective) with his own hand, no guardians present. Per `EVT-000044`'s own terms — the milestone rewards "clearing a Rift's core, the act that collapses it, not merely killing what guards it" — this qualifies for the full 70 XP E-grade milestone even with no kills involved, moving XP from 25 to 95. **A second flagged gap, not invented past:** Captain Thorne's in-fiction claim that Association assignments pay an automatic completion bonus separate from core-sale value has no backing anywhere in Section 12's economy rules. No such bonus is added to Daedalus's holdings; the 24 vells from the Ashgate core's appraisal sale (previously omitted from inventory in error) are correctly recorded instead. Trained non-System skills: foundational Swordsmanship (two recorded sessions), practiced aerobic conditioning (three recorded 10 km runs), and practiced bodyweight conditioning (two recorded 100-pushup sessions).
