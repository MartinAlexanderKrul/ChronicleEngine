# Inventory and Ownership — Reikon Awakening 001

## Record

```yaml
id: REC-000040
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, Warehouse 7 return, basement combat"
  record_time: "2026-07-15T09:15:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000054
  - ENT-000055
  - ENT-000056
  - ENT-000057
  - ENT-000058
  - ENT-000059
  - ENT-000060
  - ENT-000065
  - ENT-000067
  - ENT-000068
  - ENT-000069
  - ENT-000070
```

All holdings are possessed by Daedalus (`ENT-000051`) and are carried on his person in the Warehouse 7 E-Rift basement core chamber.

Location is recorded as a region descriptor because carried inventory has no structural "on person" representation — the known limitation recorded as PA-002 in `docs/420_PROTOTYPE_ALPHA/423_ENGINE_IMPROVEMENT_BACKLOG.md`. Possession by `ENT-000051` is the authoritative fact; the descriptor follows the possessor.

## Association License

```yaml
id: ENT-000054
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
type: Resource
subtype: license
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's E-Rank license"
    quality: legal
canonical_state:
  category: "Official hunter credential"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
```

## Basic Sword

```yaml
id: ENT-000055
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000030
  event_time: "Year 31 AR, first expedition, pack-leader combat"
  record_time: "2026-07-14T18:00:00Z"
type: Resource
subtype: weapon
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's basic sword"
    quality: current
canonical_state:
  category: "Personal equipment; weapon"
  condition: "Good; cleaned at the Association, then bloodied by the ledge Breaker"
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
```

## Repair Kit

```yaml
id: ENT-000056
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
type: Resource
subtype: tool-kit
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's repair kit"
    quality: current
canonical_state:
  category: "Personal equipment; maintenance tools"
  condition: Good
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
```

## Mana Potion Stack

```yaml
id: ENT-000057
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
type: Resource
subtype: consumable-stack
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's mana potions"
    quality: current
canonical_state:
  category: "Consumables; three potions restoring 20 mana each"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
  quantity: 3
```

## Climbing Rope

```yaml
id: ENT-000058
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
type: Resource
subtype: equipment
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's climbing rope"
    quality: current
canonical_state:
  category: "Personal equipment"
  condition: Good
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
```

## Evacuation Stone

```yaml
id: ENT-000059
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
type: Resource
subtype: magical-consumable
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's evacuation stone"
    quality: current
canonical_state:
  category: "Emergency extraction artifact; one use"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
  uses_remaining: 1
```

## Starting Core Purse

```yaml
id: ENT-000060
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
type: Resource
subtype: currency-holding
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's starting core purse"
    quality: current
canonical_state:
  category: "Currency; 61 E-cores before the recovery purchase, minus 15 spent on four healing potions, two energy tonics, and wound dressing salve"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
  quantity: 46
```

## Natural Scale Plate

```yaml
id: ENT-000065
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000031
  event_time: "Year 31 AR, first expedition, pack-leader harvest"
  record_time: "2026-07-14T20:30:00Z"
type: Resource
subtype: material-component
scope: personal
lifecycle: active
aliases:
  - name: "Natural scale plate from pack leader"
    quality: current
canonical_state:
  category: "Crafting material; iridescent hard scale harvested from pack leader carapace"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
  quantity: 1
```

## Healing Potion Stack

```yaml
id: ENT-000067
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery purchase and training"
  record_time: "2026-07-15T09:15:00Z"
type: Resource
subtype: consumable-stack
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's standard healing potions"
    quality: current
canonical_state:
  category: "Consumables; standard healing potions restoring 25% maximum Health each"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
  quantity: 3
  history: "Four purchased for 8 E-cores; one consumed during recovery training"
```

## Energy Tonic Stack

```yaml
id: ENT-000068
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery purchase and basement entry"
  record_time: "2026-07-15T09:15:00Z"
type: Resource
subtype: consumable-stack
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's energy tonics"
    quality: current
canonical_state:
  category: "Consumables; clarity and focus aid"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
  quantity: 1
  history: "Two purchased for 6 E-cores; one consumed before observing the Breaker formation"
```

## Wound Dressing Salve

```yaml
id: ENT-000069
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery purchase"
  record_time: "2026-07-15T09:15:00Z"
type: Resource
subtype: medical-consumable
scope: personal
lifecycle: active
aliases:
  - name: "Amber wound dressing salve"
    quality: current
canonical_state:
  category: "Medical dressing; supports clean treated recovery but restores no immediate HP"
  condition: Opened
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
  uses_remaining: 5
```

## Research Notebook

```yaml
id: ENT-000070
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery and Warehouse 7 return"
  record_time: "2026-07-15T09:15:00Z"
type: Resource
subtype: research-notebook
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's Aurology notebook"
    quality: current
canonical_state:
  category: "Research notes and route map"
  condition: Good
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Warehouse 7 E-Rift basement core chamber (carried)"
  contents: "Route sketch, Institute consultation notes, and observations of the entered basement core chamber; hypotheses are marked as unverified"
```
