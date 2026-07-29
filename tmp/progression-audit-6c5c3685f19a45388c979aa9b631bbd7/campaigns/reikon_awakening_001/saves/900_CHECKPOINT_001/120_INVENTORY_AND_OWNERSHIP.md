# Inventory and Ownership — Reikon Awakening

**Campaign:** Reikon Awakening (Session 001)  
**Player Character:** Daedalus  
**Ledger:** Canonical Record (REC-000025) tracking inventory and possession.

Ownership (rights) and possession (physical holding) are tracked separately per Rules Section 7.2. This ledger records Daedalus's current possessions and their provenance.

---

## Record

```yaml
id: REC-000031
canonical_record: REC-000031
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, afternoon"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000051  # Daedalus (possessor)
  - ENT-000054  # Association License
  - ENT-000055  # Basic Sword
  - ENT-000056  # Repair Kit
  - ENT-000057  # Mana Potions (3x)
  - ENT-000058  # Climbing Rope
  - ENT-000059  # Evacuation Stone
  - ENT-000060  # Cores (50x currency)
```

---

## Current Inventory (8/10 slots)

All items listed below are in Daedalus's possession as of Checkpoint 001.

### 1. Association License (E-Rank)

```yaml
id: ENT-000054
canonical_record: REC-000031
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, morning"
  record_time: "2026-07-13T00:00:00Z"
type: Equipment
subtype: credential
scope: personal
lifecycle: active
aliases:
  - name: "E-Rank Hunter License"
    quality: current
possession_chain:
  - entity: ENT-000051  # Daedalus
    role: bearer
    since: "Year 31 AR, morning (licensing ceremony)"
ownership:
  owner: ENT-000034  # Hunters' Association
  relationship: issued-credential
  transfer_restrictions: "Non-transferable; revoked upon rank change or license revocation"
canonical_state:
  description: "Official Association credential certifying Daedalus as licensed E-Rank hunter"
  issued_by: "Captain Marissa Thorne (Association)"
  validity: "Unlimited (until revoked)"
  usage: "Grants legal right to enter E-Rifts; access to Association services; claim on expedition rewards"
  value: "Immense (required for all licensed hunting work)"
```

### 2. Basic Sword

```yaml
id: ENT-000055
canonical_record: REC-000031
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, pre-licensing"
  record_time: "2026-07-13T00:00:00Z"
type: Equipment
subtype: weapon
scope: personal
lifecycle: active
aliases:
  - name: "standard iron sword"
    quality: current
  - name: "basic blade"
    quality: colloquial
possession_chain:
  - entity: ENT-000051  # Daedalus
    role: bearer
    since: "before licensing"
ownership:
  owner: ENT-000051  # Daedalus (owned)
  relationship: personal-property
  transfer_restrictions: "None; Daedalus may sell, trade, gift"
canonical_state:
  description: "Standard-issue iron sword, functional, well-maintained"
  properties:
    material: "steel"
    length: "~3 feet"
    weight: "normal"
    condition: "untouched (no combat use in actual Rift yet)"
  value: "~50-100 cores (baseline equipment)"
  tactical_note: "Backup weapon; fire magic primary; not yet tested in melee"
```

### 3. Repair Kit

```yaml
id: ENT-000056
canonical_record: REC-000031
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, pre-licensing"
  record_time: "2026-07-13T00:00:00Z"
type: Equipment
subtype: utility
scope: personal
lifecycle: active
aliases:
  - name: "basic repair kit"
    quality: current
possession_chain:
  - entity: ENT-000051  # Daedalus
    role: bearer
    since: "before licensing"
ownership:
  owner: ENT-000051  # Daedalus (owned)
  relationship: personal-property
  transfer_restrictions: "None"
canonical_state:
  description: "Standard tool kit for field repairs (weapons, armor, equipment)"
  contents: "Small wrenches, files, replacement strings/hinges, sharpening stone, oil cloth"
  condition: "untouched (no repairs needed yet)"
  value: "~20-30 cores"
  usage: "Sword maintenance, equipment upkeep, rift environmental hazard mitigation"
```

### 4. Mana Potions (3x)

```yaml
id: ENT-000057
canonical_record: REC-000031
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, pre-licensing"
  record_time: "2026-07-13T00:00:00Z"
type: Consumable
subtype: potion
scope: personal
lifecycle: active
aliases:
  - name: "mana potion (3x)"
    quality: current
possession_chain:
  - entity: ENT-000051  # Daedalus
    role: bearer
    since: "before licensing"
    quantity: 3
ownership:
  owner: ENT-000051  # Daedalus (owned)
  relationship: personal-property
  transfer_restrictions: "May be consumed, traded, or gifted"
canonical_state:
  description: "Three identical mana restoration potions"
  effect_per_dose: "Restores 20 mana per potion (up to max 13/13, overflow caps at max)"
  usage_limit: "3 total (consumable; destroyed upon use)"
  condition: "intact, unused"
  value: "~30-40 cores each (~100 total)"
  usage_priority: "Emergency mana reserve; not yet needed (natural recovery sufficient)"
  current_status: "Unused x3 (session 1)"
```

### 5. Climbing Rope

```yaml
id: ENT-000058
canonical_record: REC-000031
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, pre-licensing"
  record_time: "2026-07-13T00:00:00Z"
type: Equipment
subtype: utility
scope: personal
lifecycle: active
aliases:
  - name: "climbing rope"
    quality: current
possession_chain:
  - entity: ENT-000051  # Daedalus
    role: bearer
    since: "before licensing"
ownership:
  owner: ENT-000051  # Daedalus (owned)
  relationship: personal-property
  transfer_restrictions: "None"
canonical_state:
  description: "Standard hemp/synthetic climbing rope, ~50 feet, coiled"
  properties:
    length: "50 feet"
    strength: "sufficient for human weight + equipment"
    condition: "untouched"
  value: "~25-35 cores"
  usage: "Rift environmental navigation (climbing, descent, rescue)"
  current_status: "Not yet used"
```

### 6. Evacuation Stone

```yaml
id: ENT-000059
canonical_record: REC-000031
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, morning"
  record_time: "2026-07-13T00:00:00Z"
type: Equipment
subtype: emergency-artifact
scope: personal
lifecycle: active
aliases:
  - name: "evacuation stone"
    quality: current
  - name: "emergency extraction stone"
    quality: technical
possession_chain:
  - entity: ENT-000051  # Daedalus
    role: bearer
    since: "Year 31 AR morning (from Captain Thorne)"
ownership:
  owner: ENT-000051  # Daedalus (held; owned by Association)
  relationship: issued-equipment (revocable)
  transfer_restrictions: "Must not be traded; must be returned or consumed for intended purpose"
canonical_state:
  description: "Mana-attuned artifact that breaks Rift seal from inside, emergency extraction"
  properties:
    uses_remaining: 1
    effect: "When activated inside Rift, breaks dimensional seal and pulls bearer outside instantly"
    cost: "Consumes the stone (one-use only)"
  condition: "pristine"
  value: "Immense (cannot be purchased; only Association-issued)"
  restrictions: "Intended only for life-threatening emergencies; misuse results in severe Association penalty"
  current_status: "Unused (held in reserve for emergency)"
```

### 7. Cores (50x)

```yaml
id: ENT-000060
canonical_record: REC-000031
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, morning"
  record_time: "2026-07-13T00:00:00Z"
type: Currency/Resource
subtype: cores
scope: personal
lifecycle: active
aliases:
  - name: "cores (50)"
    quality: current
  - name: "starting salary advance"
    quality: colloquial
possession_chain:
  - entity: ENT-000051  # Daedalus
    role: bearer
    since: "Year 31 AR morning (starting advance)"
ownership:
  owner: ENT-000051  # Daedalus (owned)
  relationship: personal-property
  transfer_restrictions: "Free to spend, trade, or transfer"
canonical_state:
  description: "50 crystalline cores, standard currency and resource in Reikon"
  properties:
    quantity: 50
    type: "mixed grade (no specific grade tracked)"
    origin: "Association starting advance for licensed hunter"
    value: "~50 cores equivalent (obvious)"
  usage: "Currency for merchants, supplies, services; crafting material; personal assets"
  current_status: "Unspent (held for post-expedition use)"
```

---

## Inventory Summary

**Current Occupation:** 8 / 10 slots

**Items by Category:**

| Category | Item | Status | Slot Use |
|----------|------|--------|----------|
| Credential | Association License | Active | 1 |
| Weapon | Basic Sword | Ready | 1 |
| Utility | Repair Kit | Stored | 1 |
| Consumable | Mana Potions (3x) | Stored | 1 |
| Utility | Climbing Rope | Stored | 1 |
| Emergency | Evacuation Stone | Stored | 1 |
| Currency | Cores (50x) | Stored | 1 |
| *Free* | — | — | 2 |

**Equipment in Use:** Sword (equipped)

**Consumables Available:** 3 potions (unused)

**Emergency Reserves:** 1 evacuation stone (unused)

---

## Possession Status — Session 1 Mid-Expedition

**All items accounted for and in possession.**  
**No items lost, stolen, damaged, or exchanged.**  
**Inventory capacity:** 2 slots free (may acquire loot if pack leader or core monsters drop cores/artifacts)

---

## Versions

- **Engine Version:** 0.1.5
- **World Version:** 0.1
- **Campaign Schema:** 0.1.1
- **Inventory Schema:** 0.1.1 (Rules Section 7.2)
