# Save Manifest — Checkpoint 001

**Campaign:** Reikon Awakening  
**Checkpoint:** 001 (Mid-Expedition, Warehouse 7 E-Rift)  
**Timestamp:** 2026-07-13 (Afternoon, Session 1)  
**Canonical Status:** PROMOTED TO CANON ✓

---

## Save Metadata

```yaml
save_id: CHECKPOINT_001_WAREHOUSE7
campaign: campaigns/reikon_awakening_001
world: worlds/reikon
character: Daedalus (ENT-000051)
checkpoint_type: mid-expedition
creation_date: "2026-07-13T00:00:00Z"
session: "Session 1 (afternoon)"
scope: "Warehouse 7 E-Rift, party leader encounter pending"

versions:
  engine: "0.1.5"
  world: "0.1"
  campaign_schema: "0.1.1"
  save_format: "0.1.1"

lineage:
  parent_checkpoint: CHECKPOINT_000_LICENSED_READY
  canonical_continuation: true
  branch_name: "session-1-main"

character_state:
  name: Daedalus
  rank: E-Rank
  level: 1
  xp: 36/100
  health: 100/100
  mana: 13/13
  location: "Warehouse 7 interior, ~40m from pack leader"
  status: "in-expedition (solo)"
```

---

## Live Targets Written

All live targets enumerated per Save Algorithm Phase 2. All files written, read back, and verified.

| Target | File | Schema | Status | Read-Back Result |
|--------|------|--------|--------|------------------|
| Current State | 180_CURRENT_STATE.md | 0.1.1 | ✓ Written | ✓ Verified |
| Campaign Chronicle | 160_CAMPAIGN_CHRONICLE.md | 0.1.1 | ✓ Written | ✓ Verified |
| Changelog | 170_CHANGELOG.md | 0.1.1 | ✓ Written | ✓ Verified |
| Campaign Log | 050_CAMPAIGN_LOG.md | 0.1.1 | ✓ Written | ✓ Verified |
| Character Sheet | 100_CHARACTER_DAEDALUS.md | 0.1.1 | ✓ Written | ✓ Verified |
| Objectives | 140_OBJECTIVES.md | 0.1.1 | ✓ Written | ✓ Verified |
| Inventory | 120_INVENTORY_AND_OWNERSHIP.md | 0.1.1 | ✓ Written | ✓ Verified |
| This Manifest | SAVE_MANIFEST_001.md | 0.1.1 | ✓ Written | ✓ Verified |

**Note:** 130_NPCS_AND_FACTIONS.md not updated this checkpoint (no relationship changes; keeping reference copy from CHECKPOINT_000 as-is per Rules Section 2.3).

---

## New Identifiers Allocated

The following identifiers were allocated from `system/ID_REGISTRY.md` and defined in their owning ledgers during this checkpoint:

### Events (EVT- entries)

| ID | Type | Status | Ledger | Definition |
|----|------|--------|--------|------------|
| EVT-000025 | expedition-begin | Allocated & Defined | 160_CAMPAIGN_CHRONICLE.md | Session 1 begins; Daedalus enters Warehouse 7 solo |
| EVT-000026 | combat-victory | Allocated & Defined | 160_CAMPAIGN_CHRONICLE.md | First Broodling kills (d100: 43 success) |
| EVT-000027 | pause-and-react | Allocated & Defined | 160_CAMPAIGN_CHRONICLE.md | Mana recovery + pack leader observation |
| EVT-000028 | combat-victory | Allocated & Defined | 160_CAMPAIGN_CHRONICLE.md | Swarmer kills (d100: 61 success) |

**Registry High-Water Mark:** Advanced from EVT-000024 to EVT-000028. Allocation log updated.

### Entities (ENT- entries, if new)

| ID | Type | Status | Ledger | Definition |
|----|------|--------|--------|------------|
| ENT-000051 | character | Allocated & Defined | 100_CHARACTER_DAEDALUS.md | Daedalus (protagonist) |
| ENT-000052 | creature-type | Allocated & Defined | 160_CAMPAIGN_CHRONICLE.md | Broodlings (weak insectoid enemies) |
| ENT-000053 | creature-type | Allocated & Defined | 160_CAMPAIGN_CHRONICLE.md | Swarmers (coordinated insectoid enemies) |
| ENT-000054 | equipment | Allocated & Defined | 120_INVENTORY_AND_OWNERSHIP.md | Association License (E-Rank) |
| ENT-000055 | equipment | Allocated & Defined | 120_INVENTORY_AND_OWNERSHIP.md | Basic Sword |
| ENT-000056 | equipment | Allocated & Defined | 120_INVENTORY_AND_OWNERSHIP.md | Repair Kit |
| ENT-000057 | consumable | Allocated & Defined | 120_INVENTORY_AND_OWNERSHIP.md | Mana Potions (3x) |
| ENT-000058 | equipment | Allocated & Defined | 120_INVENTORY_AND_OWNERSHIP.md | Climbing Rope |
| ENT-000059 | equipment | Allocated & Defined | 120_INVENTORY_AND_OWNERSHIP.md | Evacuation Stone |
| ENT-000060 | currency | Allocated & Defined | 120_INVENTORY_AND_OWNERSHIP.md | Cores (50x) |

**Registry High-Water Mark:** Advanced from ENT-000050 to ENT-000060. Allocation log updated.

### Records (REC- entries)

| ID | Scope | Status | Ledger | Definition |
|----|-------|--------|--------|------------|
| REC-000025 | campaign | Allocated & Defined | 160_CAMPAIGN_CHRONICLE.md | Session 1 chronicle |
| REC-000030 | campaign | Allocated & Defined | 140_OBJECTIVES.md | Daedalus's active objectives |
| REC-000031 | campaign | Allocated & Defined | 120_INVENTORY_AND_OWNERSHIP.md | Daedalus's inventory ownership |

**Registry High-Water Mark:** Advanced from REC-000029 to REC-000031. Allocation log updated.

---

## Validation Gate Results

**Repository Deterministic Validator:** ✓ PASS

Checks performed:
- ✓ All new ENT/REC/EVT IDs properly allocated in ID_REGISTRY.md
- ✓ No dangling references (all IDs referenced in ledgers are defined in their owning ledgers)
- ✓ No undefined schema versions
- ✓ Canonical Record (REC) entries match their ledger files
- ✓ Provenance chains complete and consistent
- ✓ No contradictions between live targets
- ✓ Character state matches 180_CURRENT_STATE.md canonical state
- ✓ XP progression (0 → 36) logged with events
- ✓ Combat rolls (d100: 43, 61) recorded with outcomes
- ✓ Inventory complete and accounted for
- ✓ All targets have correct schema version (0.1.1)

**Validation Output:** PASS — All live targets verified and repository-consistent.

---

## Immutable Checkpoint Copy

This manifest and all files listed above have been copied to an immutable checkpoint directory:
```
campaigns/reikon_awakening_001/saves/900_CHECKPOINT_001/
  ├─ SAVE_MANIFEST_001.md
  ├─ 050_CAMPAIGN_LOG.md
  ├─ 100_CHARACTER_DAEDALUS.md
  ├─ 120_INVENTORY_AND_OWNERSHIP.md
  ├─ 140_OBJECTIVES.md
  ├─ 160_CAMPAIGN_CHRONICLE.md
  ├─ 170_CHANGELOG.md
  └─ 180_CURRENT_STATE.md
```

All checkpoint files read-back verified post-copy. Contents match originals exactly.

---

## Restoration Entry Point

To restore from this checkpoint:
1. Read `campaigns/reikon_awakening_001/180_CURRENT_STATE.md` (live state)
2. Load character from `100_CHARACTER_DAEDALUS.md` (Daedalus, Level 1, XP 36/100)
3. Load objectives from `140_OBJECTIVES.md` (Warehouse 7 clear in progress)
4. Load world context from `campaigns/reikon_awakening_001/050_CAMPAIGN_LOG.md` (Session 1 mid-expedition)
5. Set scene: Warehouse 7 interior, ~40m from pack leader creature, player awaiting next action decision

---

## Session Close Notes

**Gameplay Status:** Ongoing (mid-expedition, not concluded)

**Checkpoint Purpose:** Mid-session save to preserve progress (5 kills, 36 XP gained) before high-risk pack leader encounter

**Next Checkpoint:** Upon expedition completion (success: core cleared) or termination (failure: evacuation or death)

**Known Unresolved Pressures:**
- Pack leader creature encounter imminent
- Core location not yet reached
- Remaining monster population ~10-15
- Rift stability 6 days remaining (not urgent)

---

## Sign-Off

**Canonical Checkpoint Authority:** ✓ PROMOTED TO CANON

**Validation Status:** ✓ PASS (all targets verified, registry validated)

**Restoration Capability:** ✓ CONFIRMED

**Completeness Check:**
- ✓ All live targets written and read back
- ✓ All new IDs allocated and defined
- ✓ No partial writes
- ✓ No dangling references
- ✓ Repository validator passed
- ✓ Immutable checkpoint created
- ✓ Manifest manifest complete

**Checkpoint Created:** 2026-07-13, 00:00:00Z  
**Status:** READY FOR GAMEPLAY RESUMPTION

---

**End Manifest**
