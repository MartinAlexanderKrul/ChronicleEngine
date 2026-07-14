# Inventory and Ownership — Reikon Awakening 001

## Record

```yaml
id: REC-000040
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, first expedition"
  record_time: "2026-07-14T00:00:00Z"
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
```

All holdings are possessed by Daedalus (`ENT-000051`) inside Warehouse 7 (`ENT-000064`).

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
  location: ENT-000064
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
  condition: "Good; bloodied after pack-leader combat"
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: ENT-000064
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
  location: ENT-000064
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
  location: ENT-000064
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
  location: ENT-000064
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
  location: ENT-000064
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
  category: "Currency; salary advance of 50 cores"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: ENT-000064
  quantity: 50
```
