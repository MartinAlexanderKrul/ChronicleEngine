# Campaign Chronicle — Reikon Awakening

**Campaign:** Reikon Awakening · **World:** Reikon  
**Ledger:** Canonical Record (REC-000025) indexing campaign events.  
**Schema Version:** 0.1.1

---

## Record

```yaml
id: REC-000025
canonical_record: REC-000025
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, afternoon"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - EVT-000025
  - EVT-000026
  - EVT-000027
  - EVT-000028
```

---

## Events

### EVT-000025 — Session 1 Begins: Daedalus Enters Warehouse 7

```yaml
id: EVT-000025
canonical_record: REC-000025
schema_version: "0.1.1"
status: resolved
provenance:
  source: gameplay
  event_time: "Year 31 AR, afternoon"
  record_time: "2026-07-13T00:00:00Z"
type: Event
subtype: expedition-begin
scope: campaign
subjects:
  - ENT-000051  # Daedalus
  - ENT-000032  # Warehouse 7 Rift
lifecycle: closed
canonical_state:
  narrative: "Daedalus, newly licensed E-Rank hunter, enters Warehouse 7 E-Rift solo. No supervision. Morning training completed (10km run, 100 pushups, spell drills, sword forms). Captain Thorne approved solo entry. Daedalus receives evacuation stone (1 use). Hunter determination: solo expedition is chosen path."
  location: "Warehouse 7, Industrial District, Verholt"
  decision_point: "Supervision vs. solo — solo chosen"
  consequence: "No safety net; full responsibility on Daedalus for survival and core clearing"
  date: "Year 31 AR, afternoon"
```

---

### EVT-000026 — First Encounter: Broodlings Killed

```yaml
id: EVT-000026
canonical_record: REC-000025
schema_version: "0.1.1"
status: resolved
provenance:
  source: gameplay
  event_time: "Year 31 AR, afternoon"
  record_time: "2026-07-13T00:00:00Z"
type: Event
subtype: combat-victory
scope: campaign
subjects:
  - ENT-000051  # Daedalus
  - ENT-000052  # 2x Broodlings (creatures)
lifecycle: closed
canonical_state:
  narrative: "Daedalus encounters 2 Broodlings perched on storage crate stack, ~15 meters ahead in warehouse. Creatures screech and prepare attack. Daedalus casts Fireball (d100: 43 — success). Spell erupts directly on target. Both Broodlings killed outright. XP awarded: 12."
  combat_action: "Fireball (12 mana, 2-sec cast)"
  roll_result: "d100: 43 — success (high Mana Affinity bonus applied; stationary targets, easy hit)"
  damage: "Both creatures incinerated; carapaces blackened, limbs convulsed"
  xp_awarded: 12
  health_damage_taken: 0
  mana_spent: 12
```

---

### EVT-000027 — Mana Recovery & Pack Encounter Begins

```yaml
id: EVT-000027
canonical_record: REC-000025
schema_version: "0.1.1"
status: resolved
provenance:
  source: gameplay
  event_time: "Year 31 AR, afternoon"
  record_time: "2026-07-13T00:00:00Z"
type: Event
subtype: pause-and-react
scope: campaign
subjects:
  - ENT-000051  # Daedalus
  - ENT-000052  # Warehouse 7 Rift (environmental)
lifecycle: closed
canonical_state:
  narrative: "Daedalus rests approximately 120 seconds for mana recovery (full: 13/13). During rest, roaring sound echoes from deeper warehouse. Large creature movement detected ~50 meters away. Daedalus observes: creature is methodical, tracked via scent/mana/vibration, Rift luminescence pulses with creature movement (mana connection inferred). Multiple Broodlings clustered around larger presence. Tactical assessment: pack leader entity ahead, waiting/stalking."
  decision: "Daedalus elects to wait for full mana recovery rather than advance weakened"
  duration: 120 seconds
  mana_recovered: 12 mana (from 1 to 13)
  observation_quality: "High Perception (14) notices environmental details: tremor patterns, Rift glow correlation, creature behavior coordination"
```

---

### EVT-000028 — Second Combat: Swarmers Killed

```yaml
id: EVT-000028
canonical_record: REC-000025
schema_version: "0.1.1"
status: resolved
provenance:
  source: gameplay
  event_time: "Year 31 AR, afternoon"
  record_time: "2026-07-13T00:00:00Z"
type: Event
subtype: combat-victory
scope: campaign
subjects:
  - ENT-000051  # Daedalus
  - ENT-000053  # 3x Swarmers (creatures)
lifecycle: closed
canonical_state:
  narrative: "After mana recovery, pack of 3 Swarmers (coordinated, larger than Broodlings) rounds warehouse shelf corner and charges Daedalus directly. Daedalus casts Fireball, leading the spell to intercept charging pack trajectory. Spell detonates in center of charge formation (d100: 61 — success). All three Swarmers caught in blast radius. Kills: 3/3. XP awarded: 24. Warehouse shelf collapses from impact force; one Swarmer buried under metal framework."
  combat_action: "Fireball (12 mana, 2-sec cast, leading trajectory)"
  roll_result: "d100: 61 — success (high Mana Affinity, good trajectory prediction; coordinated formation vulnerability)"
  damage: "All three creatures incinerated; carapaces cracked and blackened; one buried under collapsed shelving"
  xp_awarded: 24
  health_damage_taken: 0
  mana_spent: 12
  tactical_note: "Swarmers appeared to be pack-coordinated; killed before reaching melee range"
```

---

## Session 1 Summary

**Expedition Status:** IN PROGRESS  
**Location:** Warehouse 7 E-Rift interior, ~40 meters from pack leader creature  
**Kills:** 5 monsters (2 Broodlings, 3 Swarmers)  
**XP Earned:** 36/100 (36% toward Level 2)  
**Health:** 100/100 (untouched)  
**Mana:** 13/13 (full, after recovery)  
**Pressures Unresolved:**
- Pack leader encounter pending
- Core location not yet reached (deep chamber)
- Remaining monster population unknown (~10-15 estimated)

**Notable Observations:**
- Fire magic extremely effective (all kills were fire-based)
- Large creature exhibits intelligence and coordination
- Rift luminescence correlates with large creature presence (possible mana link)
- Daedalus's tactical decisions favor mana economy (rest for recovery vs. push forward)

---

## Versions

- **Engine Version:** 0.1.5
- **World Version:** 0.1
- **Campaign Schema:** 0.1.1
- **Chronicle Schema:** 0.1.1
