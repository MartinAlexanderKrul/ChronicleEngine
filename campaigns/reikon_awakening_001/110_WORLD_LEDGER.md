# World Ledger — Reikon Awakening 001

## Record

```yaml
id: REC-000039
canonical_record: REC-000039
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000050
  event_time: "Year 31 AR, Warehouse 7 resonance extraction and tannery E-Rift clear"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000052
  - ENT-000053
  - ENT-000064
  - ENT-000066
  - ENT-000079
  - ENT-000080
  - ENT-000081
  - ENT-000084
```

## Observed Broodling Archetype

```yaml
id: ENT-000052
canonical_record: REC-000039
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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

## Institute–Vigil Tension Over Deep-Rift Study

```yaml
id: ENT-000079
canonical_record: REC-000039
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000035
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T16:44:48Z"
  uncertainty: "Reported to Daedalus by one interested party and unverified by him. What the Vigil's claimed jurisdiction rests on, what the Institute has actually found, and whether the pressure has any teeth are all unestablished in campaign canon. Daedalus dismissed the Vigil to Kalens's face as a 'mayfly cult' while agreeing to be careful."
type: Discovery/Knowledge
subtype: "political circumstance"
scope: personal
lifecycle: emerging
aliases:
  - name: "the Vigil's interest in deep phenomena"
    quality: current
canonical_state:
  domain: "Institutional politics of Rift research"
  lifecycle_stage: observation
  validation_status: "Disclosed privately by Dr. Kalens (ENT-000071) behind a closed office door; not corroborated by any second source available to Daedalus"
  holders: ENT-000051
  restriction: privately-held
  claim: "The Vigil of the Rupture (ENT-000044) claims jurisdiction over 'deep phenomena' and has taken a strong interest in what happens in basement chambers. The Aurology Institute's (ENT-000043) freedom to study deep-Rift cores is under pressure, and Kalens warned that observations or samples from a basement core must be given out carefully. He tied urgency to it: the Institute needs to know of an unusual finding fast, before the Vigil comes asking."
  bearing: "Daedalus holds four D-cores and detailed notes on an anomalous basement core, which is the exact category of material this warning covers."
```

## Core Depth and Post-Extraction Collapse

```yaml
id: ENT-000080
canonical_record: REC-000039
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000035
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T16:44:48Z"
  uncertainty: "Preliminary and explicitly unproven. Marta described it as early data from pattern analysis she had only recently got results from. Neither the magnitude of the effect nor its applicability to Warehouse 7 is established, and no rule in Reikon World Rule Profile 0.6 implements it."
type: Discovery/Knowledge
subtype: "stability theory"
scope: personal
lifecycle: emerging
aliases:
  - name: "Marta's core-depth collapse correlation"
    quality: current
canonical_state:
  domain: "Rift stability and core depth"
  lifecycle_stage: hypothesis
  validation_status: "Marta's (ENT-000073) preliminary pattern-analysis results, shown to Daedalus directly and characterised by her as early; unpublished and unvalidated"
  holders:
    - ENT-000051
    - ENT-000073
  restriction: privately-held
  claim: "The deeper a core sits, the more aggressively its Rift decays once the core is removed. If correct, deep-Rift expeditions are working against a shorter clock after extraction than the posted stability window implies."
  bearing: "Warehouse 7's core is a basement core with roughly five days of stability window remaining (180_CURRENT_STATE.md). Marta closed with a direct warning to be careful going deep. This is a hypothesis Daedalus was told, not a rule the engine applies; the window is unchanged until canon says otherwise."
```

## Warehouse 7 E-Rift

```yaml
id: ENT-000064
canonical_record: REC-000039
schema_version: "0.1.2"
status: archived
provenance:
  source: EVT-000048
  event_time: "Year 31 AR, Warehouse 7 resonance extraction"
  record_time: "2026-07-22T00:00:00Z"
  uncertainty: "Why D-grade Breakers guarded an E-grade Rift, and whether their red-black cores indicate a broader pattern, remain unestablished. The severance mechanism worked as the Athenaeum's resonance theory predicted; whether this generalizes to other bonded cores is unestablished."
type: Place
subtype: "collapsed E-grade Rift interior"
scope: local
lifecycle: closed
aliases:
  - name: "Warehouse 7 E-Rift"
    quality: current
canonical_state:
  region: "Verholt Industrial District (ENT-000031)"
  features: "Warehouse pocket interior with collapsed shelving, cracked concrete seeping Rift mana, and blue-green Rift glow. Six harvested creature corpses were removed long ago (the pack leader, two Broodlings, three Swarmers, EVT-000032). A downward-sloping corridor reaches a basement chamber roughly thirty metres across and fifteen metres high. All four D-grade Breakers that guarded it were killed and harvested (EVT-000033, EVT-000034). The bonded burgundy core, previously suspended in an organic crystalline framework with a structural thin point at its contact zone, has now been extracted intact: independent contractor Wren Ashcombe, working from an Athenaeum resonance theory matched to the core's three-second pulse interval, successfully loosened and freed the bond after three careful attempts (one near-miss, corrected before it progressed) with no discharge or instability (EVT-000048). Approved and observed at range by Captain Thorne and Dr. Kalens. The core is now in the Institute's hands for study; the framework itself remains, inert, structure only, no bond left to hold. Official Association status: **closed, full clear, no casualties.**"
  occupants: []
```

---

## Daedalus's Rented Room

```yaml
id: ENT-000066
canonical_record: REC-000039
schema_version: "0.1.2"
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

---

## Ashgate E-Rift

```yaml
id: ENT-000081
canonical_record: REC-000039
schema_version: "0.1.2"
status: archived
provenance:
  source: EVT-000042
  event_time: "Year 31 AR, Ashgate E-Rift closure"
  record_time: "2026-07-21T01:00:00Z"
  uncertainty: "Whether the Ashgate core was bonded, anomalous, or an ordinary E-grade core is now moot — it was extracted cleanly with no resistance, unlike Warehouse 7's core, which weakly suggests it was ordinary, but no formal appraisal has been done."
type: Place
subtype: "collapsed E-grade Rift interior"
scope: local
lifecycle: closed
aliases:
  - name: "Ashgate E-Rift"
    quality: current
canonical_state:
  region: "Ashgate district, an outlying area past Verholt's farmland edge"
  features: "Collapsed. All nine Broodlings that guarded it are confirmed dead and harvested (two in the entrance-chamber melee, seven in the core chamber, the latter following an Emberbrand-empowered critical Fireball and a subsequent mop-up pass). The small pale-green core was extracted cleanly (d100 88, success) with no bonding or resistance, and the Rift folded in on itself immediately after, collapsing fully before Daedalus cleared the entrance fissure (d100 99, legendary success). The silo above is now just an abandoned building; the fissure is gone. Association records list the clear as complete."
  occupants: []
```

---

## Tannery E-Rift

```yaml
id: ENT-000084
canonical_record: REC-000039
schema_version: "0.1.2"
status: archived
provenance:
  source: EVT-000049
  event_time: "Year 31 AR, tannery-district E-Rift clear"
  record_time: "2026-07-22T00:00:00Z"
  uncertainty: "Why this Rift held no guardians at all is unestablished. No Reikon rule requires a Rift to be guarded, so an empty Rift is not a contradiction of canon, but no in-fiction cause has been given either — flagged as an open worldbuilding question, not resolved by assumption."
type: Place
subtype: "collapsed E-grade Rift interior"
scope: local
lifecycle: closed
aliases:
  - name: "Tannery E-Rift"
    quality: current
canonical_state:
  region: "Verholt's tannery district"
  features: "Collapsed. A fissure in a disused tannery building led to a modest pocket interior: an entrance chamber and a single curving passage reaching a small core chamber, roughly Warehouse-7-entrance-hall scale. No guardians of any kind were encountered anywhere in the Rift. The pale amber-yellow core sat suspended in open space with no framework or bonding structure and was extracted without resistance (d100 92, legendary success), collapsing the Rift immediately; Daedalus cleared the entrance fissure with room to spare (d100 100, legendary success). Association records list the assignment as an unconfirmed-grade solo clear, resolved as an ordinary, unguarded E-grade Rift."
  occupants: []
```
