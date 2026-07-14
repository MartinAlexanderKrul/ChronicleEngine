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
  source: EVT-000028
  event_time: "Year 31 AR, first expedition, mid-clear"
  record_time: "2026-07-14T00:00:00Z"
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
  condition: "No wounds or active conditions"
  capabilities: "E-Rank fire scholar; Aurology-trained. Mechanical capability is carried in the system extension below."
  personality: "Ambitious prodigy; confident, observant, eager to prove himself"
  knowledge: "Aurology training; observed Broodling and Swarmer behavior and a correlation between Rift glow and creature movement"
  situation: "Solo inside Warehouse 7 E-Rift, approximately 40–50 metres from a pack leader and clustered Broodlings"
  world_rule_profile: "Reikon 0.1"
  active_overrides: "RKO-OVR-001, RKO-OVR-002"

# Domain extension -- Subtype "System-bearing Awakened hunter".
# Mechanism: 011_ENGINE_DATA_MODEL.md Section 4.3 (typed, additive, Subtype-keyed).
# Content owned by worlds/reikon/206_WORLD_RULE_PROFILE.md Section 11.
# Allocations and Awakening basis values only: everything else is DERIVED and
# never stored, because a stored copy can drift from the source that produces it.
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
  xp: 36                        # against T(1) = 100
  unspent_points: 0
  awakening_pool: 13
  awakening_health: 100
  awakening_endurance: 9
  current_mana: 13
  current_health: 100
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
Level 1, so no Ascension has occurred and nothing is allocated. `max_mana` = 13, `max_health` = 100, every ability at Lv 1 (`1 + floor(0/5)`), Fireball 12 / Flame Shield 2-per-second / Combustion Touch 6 / Endurance Surge 10 / Reinforced Body 0. Effective band **E** (pool 13). Next threshold `T(1)` = 100.
