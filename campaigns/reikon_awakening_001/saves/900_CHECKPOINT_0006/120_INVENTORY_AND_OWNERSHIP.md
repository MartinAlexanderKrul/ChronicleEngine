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
  - ENT-000065
```

All holdings are possessed by Daedalus (`ENT-000051`) and are carried on his person at Hunters' Association headquarters in Verholt.

Location is recorded as a region descriptor rather than a Place identifier (`011_ENGINE_DATA_MODEL.md` Section 9). The Association HQ has no Place entity, and carried inventory has no structural "on person" representation — the known limitation recorded as PA-002 in `docs/420_PROTOTYPE_ALPHA/423_ENGINE_IMPROVEMENT_BACKLOG.md`. Possession by `ENT-000051` is the authoritative fact; the descriptor follows the possessor.

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
  location: "Hunters' Association HQ, Verholt"
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
  location: "Hunters' Association HQ, Verholt"
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
  location: "Hunters' Association HQ, Verholt"
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
  location: "Hunters' Association HQ, Verholt"
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
  location: "Hunters' Association HQ, Verholt"
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
  location: "Hunters' Association HQ, Verholt"
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
  category: "Currency; salary advance of 50 cores, plus 11 cores from Warehouse 7 kills"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Hunters' Association HQ, Verholt"
  quantity: 61
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
  location: "Hunters' Association HQ, Verholt"
  quantity: 1
```
