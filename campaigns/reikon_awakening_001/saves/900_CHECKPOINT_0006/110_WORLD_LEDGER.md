# World Ledger — Reikon Awakening 001

## Record

```yaml
id: REC-000039
canonical_record: REC-000039
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, first expedition"
  record_time: "2026-07-14T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000052
  - ENT-000053
  - ENT-000064
```

## Observed Broodling Archetype

```yaml
id: ENT-000052
canonical_record: REC-000039
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000026
  event_time: "Year 31 AR, first expedition"
  record_time: "2026-07-14T00:00:00Z"
type: Discovery/Knowledge
subtype: "creature archetype"
scope: personal
lifecycle: emerging
aliases:
  - name: "Broodling"
    quality: current
canonical_state:
  domain: "Rift creature behavior and vulnerability"
  lifecycle_stage: observation
  validation_status: "Two stationary specimens observed and destroyed by one successful Fireball"
  holders: ENT-000051
  restriction: privately-held
```

## Observed Swarmer Archetype

```yaml
id: ENT-000053
canonical_record: REC-000039
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000028
  event_time: "Year 31 AR, first expedition"
  record_time: "2026-07-14T00:00:00Z"
type: Discovery/Knowledge
subtype: "creature archetype"
scope: personal
lifecycle: emerging
aliases:
  - name: "Swarmer"
    quality: current
canonical_state:
  domain: "Rift creature behavior and vulnerability"
  lifecycle_stage: observation
  validation_status: "Three coordinated charging specimens observed and destroyed by one led Fireball"
  holders: ENT-000051
  restriction: privately-held
```

## Warehouse 7 E-Rift

```yaml
id: ENT-000064
canonical_record: REC-000039
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000031
  event_time: "Year 31 AR, first expedition, post-combat exploration and exit"
  record_time: "2026-07-14T21:15:00Z"
  uncertainty: "Whether any creature remains inside the Rift is unestablished; the basement chamber has been located but not entered."
type: Place
subtype: "active E-grade Rift interior"
scope: local
lifecycle: active
aliases:
  - name: "Warehouse 7 E-Rift"
    quality: current
canonical_state:
  region: "Verholt Industrial District (ENT-000031)"
  features: "Warehouse pocket interior with diminishing fire damage, collapsed shelving, cracked concrete seeping Rift mana, and blue-green Rift glow. Six harvested creature corpses lie on the upper floor — the pack leader, two Broodlings, and three Swarmers (EVT-000032) — all looted of cores. A downward-sloping concrete corridor leads from the deep storage zone to a vast basement core chamber, located but not entered; the Rift core remains there, uncleared."
  occupants: []
```
