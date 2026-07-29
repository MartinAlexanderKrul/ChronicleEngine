# Inventory and Ownership — Reikon Awakening 001

## Record

```yaml
id: REC-000040
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000041
  event_time: "Year 31 AR, Ashgate E-Rift solo assignment"
  record_time: "2026-07-21T00:00:00Z"
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
  - ENT-000074
  - ENT-000075
  - ENT-000076
  - ENT-000077
  - ENT-000078
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
  location: "Ashgate district E-Rift interior (carried)"
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
  location: "Ashgate district E-Rift interior (carried)"
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
  location: "Ashgate district E-Rift interior (carried)"
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
  category: "Mana consumables; one sealed 20-mana vial and one open half-vial holding 10 mana"
  condition: "One sealed; one open and half-full"
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Ashgate district E-Rift interior (carried)"
  quantity: 2
  total_mana_remaining: 30
  history: "One vial consumed in two half-doses during the Breaker engagement; half of a second vial consumed before the jump"
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
  location: "Ashgate district E-Rift interior (carried)"
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
  location: "Ashgate district E-Rift interior (carried)"
  uses_remaining: 1
```

## Starting Core Purse

```yaml
id: ENT-000060
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000041
  event_time: "Year 31 AR, Ashgate E-Rift solo assignment"
  record_time: "2026-07-21T00:00:00Z"
type: Resource
subtype: currency-holding
scope: personal
lifecycle: active
aliases:
  - name: "Daedalus's starting core purse"
    quality: current
canonical_state:
  category: "Currency; 61 E-cores before the recovery purchase, minus 15 spent on four healing potions, two energy tonics, and wound dressing salve; plus 2 E-cores harvested from two Ashgate Broodlings"
  condition: Excellent
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Ashgate district E-Rift interior (carried)"
  quantity: 48
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
  location: "Ashgate district E-Rift interior (carried)"
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
  location: "Ashgate district E-Rift interior (carried)"
  quantity: 1
  history: "Four purchased for 8 E-cores; one consumed during recovery training and two consumed during the Breaker engagement"
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
  location: "Ashgate district E-Rift interior (carried)"
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
  location: "Ashgate district E-Rift interior (carried)"
  uses_remaining: 4
  history: "Four applications used in total: three during recovery and one after the shoulder wound reopened in the Breaker engagement"
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
  location: "Ashgate district E-Rift interior (carried)"
  contents: "Route sketch and Institute consultation notes; Breaker formation and behavior; burgundy core dimensions, three-second pulse, thermal emission, crystalline framework, eight-metre floor pattern, failed direct extraction, and the need for specialist severance. Hypotheses are marked unverified. The Institute notes record, per researcher: Kalens's observation checklist and his Vigil caution (ENT-000079), Soren's fracture-pattern theory across fifteen core grades and his request for a deep-core sample, and Marta's core-depth collapse correlation (ENT-000080) — closing with Daedalus's own reflection that he is gathering data now, not only clearing a Rift for pay."
```

## Kalens's Consultation Note

```yaml
id: ENT-000078
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000035
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T16:44:48Z"
  uncertainty: "Only the quarter and the time window are canonical; Kalens's street and house number are unnarrated. The separate earlier slip naming the Institute's runner was set aside after this one was written, and whether Daedalus kept it is unestablished."
type: Resource
subtype: written-note
scope: personal
lifecycle: active
aliases:
  - name: "Kalens's address slip"
    quality: current
relationships:
  - REL-000045
canonical_state:
  category: "Personal document; a torn slip of paper in Dr. Kalens's hand"
  condition: Good
  ownership: "ENT-000051 (legal)"
  possession: ENT-000051
  location: "Ashgate district E-Rift interior (carried)"
  contents: "Dr. Kalens's personal residence in Verholt's scholar's quarter, and a standing time window for calling on him there: early evenings, after the Institute closes."
  significance: "The physical token of REL-000045. Kalens wrote it only because Daedalus asked to consult him directly rather than through the Institute's runner, which makes it the artifact of a private channel deliberately chosen over the institutional one — and the means of honouring the same-day condition on an anomalous finding without going through Institute channels the Vigil could observe (ENT-000079)."
```

## Breaker D-Core — Ledge Sentinel

```yaml
id: ENT-000074
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000038
  event_time: "Year 31 AR, evening consultation, the same day as the basement clear"
  record_time: "2026-07-20T06:30:00Z"
  uncertainty: "Which of the four D-cores was handed over was not individually specified in play; this ledger records the ledge sentinel's as the one given by convention. Soren's actual findings from studying it are not yet established."
type: Resource
subtype: monster-core
scope: personal
lifecycle: active
aliases:
  - name: "Midnight D-core from the ledge sentinel"
    quality: current
canonical_state:
  category: "Appraised D-grade Rift-creature core; 5 E-core units"
  condition: Intact
  appearance: "Dark blue-black, angular, and warm with residual energy"
  ownership: "ENT-000051 (legal harvest; loaned for Institute analysis)"
  possession: ENT-000072
  location: "Aurology Institute, with Dr. Soren, for structural analysis (given the same evening as EVT-000038)"
  quantity: 1
```

## Breaker D-Core — Flank Guardian

```yaml
id: ENT-000075
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000034
  event_time: "Year 31 AR, Warehouse 7 basement harvest"
  record_time: "2026-07-15T09:27:58Z"
type: Resource
subtype: monster-core
scope: personal
lifecycle: active
aliases:
  - name: "Indigo D-core from the flank guardian"
    quality: current
canonical_state:
  category: "Appraised D-grade Rift-creature core; 5 E-core units"
  condition: Intact
  appearance: "Deep indigo and slightly smaller than the ledge sentinel's core"
  ownership: "ENT-000051 (legal harvest)"
  possession: ENT-000051
  location: "Ashgate district E-Rift interior (carried)"
  quantity: 1
```

## Breaker D-Core — Climbing Guardian

```yaml
id: ENT-000076
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000034
  event_time: "Year 31 AR, Warehouse 7 basement harvest"
  record_time: "2026-07-15T09:27:58Z"
type: Resource
subtype: monster-core
scope: personal
lifecycle: active
aliases:
  - name: "Violet-black D-core from the climbing guardian"
    quality: current
canonical_state:
  category: "Appraised D-grade Rift-creature core; 5 E-core units"
  condition: Intact
  appearance: "Nearly black with faint violet undertones"
  ownership: "ENT-000051 (legal harvest)"
  possession: ENT-000051
  location: "Ashgate district E-Rift interior (carried)"
  quantity: 1
```

## Breaker D-Core — Core Guardian

```yaml
id: ENT-000077
canonical_record: REC-000040
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000034
  event_time: "Year 31 AR, Warehouse 7 basement harvest"
  record_time: "2026-07-15T09:27:58Z"
type: Resource
subtype: monster-core
scope: personal
lifecycle: active
aliases:
  - name: "Red-black D-core from the core guardian"
    quality: current
canonical_state:
  category: "Appraised D-grade Rift-creature core; 5 E-core units"
  condition: Intact
  appearance: "Largest of the four; near-black with deep red undertones and a distinct residual hum"
  ownership: "ENT-000051 (legal harvest)"
  possession: ENT-000051
  location: "Ashgate district E-Rift interior (carried)"
  quantity: 1
```
