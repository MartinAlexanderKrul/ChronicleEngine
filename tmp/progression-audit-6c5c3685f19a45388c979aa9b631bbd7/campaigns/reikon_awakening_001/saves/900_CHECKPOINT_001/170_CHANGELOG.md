# Campaign Changelog — Reikon Awakening

**Campaign:** Reikon Awakening · **World:** Reikon  
**Ledger:** Canonical Record (REC-000025) tracking game-system events.

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
subjects: []
```

---

## Changes

**Session 1 Start**
Daedalus enters Warehouse 7 E-Rift solo. Initial state: Level 1, XP 0/100, Mana 13/13, Health 100/100.

**First Combat — Broodling Encounter (EVT-000026)**
Fireball spell cast against 2 stationary Broodlings. d100: 43 (success). Both creatures killed.
- XP progression: 0/100 → 12/100
- Mana cost: 12 mana spent (13 → 1)
- Health: 100/100 (unchanged)

**Mana Recovery Checkpoint**
Daedalus rests ~120 seconds. Mana recovery (1 per 10 sec): 1 → 13/13 full.
Observation: Large creature detected deeper in warehouse, methodical stalking behavior, coordinated Broodling cluster. Tactical decision to hold position and recover mana before advancing.

**Second Combat — Swarmer Encounter (EVT-000028)**
Fireball spell cast, leading arc to intercept charging 3-creature Swarmer pack. d100: 61 (success). All three creatures killed. Warehouse shelf collapses from blast impact.
- XP progression: 12/100 → 36/100
- Mana cost: 12 mana spent (13 → 1)
- Health: 100/100 (unchanged)
- Tactical: Pack coordinated; all defeated before melee contact

**Session 1 Summary**
Total XP earned: 36/100 (36% toward Level 2 at 100 XP threshold).
Total mana expended and recovered: 2× Fireball (24 mana), both times recovered to full (13/13) via 120-second rest periods.
Aggregate health damage: 0 (no injuries sustained).
Remaining threats: 1 large pack leader creature (~40 meters ahead) + estimated 10-15 monsters undefeated.

---

## System Mechanics Validated

**d100 Resolution:** Both combats resolved via d100 roll before outcome narration.
- Roll 1: d100: 43 — success (stationary targets, high Mana Affinity modifier)
- Roll 2: d100: 61 — success (charging targets, leading prediction, high Mana Affinity modifier)

**XP Award Scale:**
- Broodlings (weak, stationary): 6 XP each (2× = 12 total)
- Swarmers (coordinated, mobile, higher threat): 8 XP each (3× = 24 total)

**Mana Economy:**
- Fireball: 12 mana per cast (primary damage spell)
- Recovery rate: 1 mana per 10 seconds resting (13 mana = ~130 seconds full recovery)
- Potion availability: 3× potions (20 mana each) not yet used

**Combat Outcomes:**
- Fire magic highly effective (both enemy types killed outright)
- Damage taken: 0 (tactical positioning, spell timing, no melee)
- Environmental interaction: Warehouse fire (crate stack) and structural collapse (shelf from blast force)

---

## No Major Mechanics Gaps Identified

All d100 rolls executed correctly. XP awarded proportional to threat level. Mana economy sustainable with potions as reserve. Health tracking precise. Spell costs as specified. No contradictions between declared action, roll result, and narrated outcome.

---

## Versions

- **Engine Version:** 0.1.5
- **World Version:** 0.1
- **Campaign Schema:** 0.1.1
- **Changelog Schema:** 0.1.1
