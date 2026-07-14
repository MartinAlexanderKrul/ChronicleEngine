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
  - ENT-000066
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
  # occupants is standing state — controllers, residents, or contained entities
  # (templates/objects/place.md). Nobody resides in or controls a Rift, so this
  # is empty and stays empty whoever is inside it. Daedalus was once listed here
  # because the field was read as presence; that is the reading the template now
  # forbids. A hunter standing in a Rift is not its occupant.
  occupants: []
```

---

## Daedalus's Rented Room

```yaml
id: ENT-000066
canonical_record: REC-000039
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, predating the first expedition"
  record_time: "2026-07-14T00:00:00Z"
  uncertainty: "The landlord is unnamed and the tenancy's remaining term is unestablished."
type: Place
subtype: "rented lodging"
scope: local
lifecycle: active
aliases:
  - name: "Daedalus's room"
    quality: current
canonical_state:
  region: "Verholt (ENT-000031), working quarter"
  features: "A modest single rented room in Verholt's working quarter, held since before the Awakening on a research assistant's pay. Independent of both the Aurology Institute (ENT-000043) and the Hunters' Association: neither houses him, and neither can evict him."
  tenancy: "Rented for coin, not cores, at the posted rate for a modest room in the working quarter (206 Section 12.5: 25 vells/month — 17% of E-Rank base pay). Paid from Institute wages before the Awakening; his first hunter salary advance is the first core income the rent has ever drawn on. He rents the cheapest tier the world prices: a room with shared facilities, below a studio."
  significance: "Daedalus is a Verholt local and has been for years. He does not travel to the city — he lives in it. The room is the only fixed place in the campaign that is his, and it is the reason his standing at the Institute and his standing with the Association are separable from his shelter."
  # occupants is standing state — the resident, not who is present (templates/objects/place.md).
  # Daedalus remains this room's occupant while he is across the city; where he
  # actually is at any moment is owned solely by 180_CURRENT_STATE.md.
  occupants:
    - ENT-000051
```
