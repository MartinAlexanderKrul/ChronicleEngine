# NPCs and Factions — Reikon Awakening 001

## Record

```yaml
id: REC-000041
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000061
  - ENT-000062
  - ENT-000063
  - REL-000040
  - REL-000041
  - REL-000042
  - REL-000043
  - REL-000044
```

The Hunters' Association is the Hunters' Authority (`ENT-000041`); both names are canonical aliases. The Aurology Institute is `ENT-000043`.

## Campaign-Local Figures

```yaml
id: ENT-000061
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, before expedition"
  record_time: "2026-07-14T00:00:00Z"
type: Character
subtype: academic director
scope: local
lifecycle: active
aliases:
  - name: "Dr. Kael Venn"
    quality: current
relationships:
  - REL-000042
canonical_state:
  location: ENT-000031
  condition: "No adverse condition established"
  capabilities: "Aurology Institute director; Rift-research leadership"
  personality: "Supportive of Daedalus's potential"
  situation: "Recommended Daedalus to the Hunters' Authority"
```

```yaml
id: ENT-000062
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
type: Character
subtype: Authority captain
scope: local
lifecycle: active
aliases:
  - name: "Captain Marissa Thorne"
    quality: current
relationships:
  - REL-000043
canonical_state:
  location: ENT-000031
  condition: "No adverse condition established"
  capabilities: "Hunter licensing and expedition dispatch authority"
  personality: "Professional and neutral toward Daedalus"
  situation: "Approved and briefed Daedalus's solo Warehouse 7 assignment"
```

```yaml
id: ENT-000063
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, before expedition"
  record_time: "2026-07-14T00:00:00Z"
type: Character
subtype: scholar
scope: local
lifecycle: active
aliases:
  - name: "Lysander"
    quality: current
relationships:
  - REL-000044
canonical_state:
  location: ENT-000031
  condition: "No adverse condition established"
  capabilities: "Aurology scholar and former research partner"
  personality: "Respects Daedalus's intellect and is somewhat jealous of his Awakening"
  situation: "Remains at the Institute during the expedition"
```

## Relationships

```yaml
id: REL-000040
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
endpoints:
  - ENT-000051
  - ENT-000041
type: membership
qualities: "Licensed E-Rank hunter; first solo assignment active"
state: active
```

```yaml
id: REL-000041
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, before expedition"
  record_time: "2026-07-14T00:00:00Z"
endpoints:
  - ENT-000051
  - ENT-000043
type: affiliation
qualities: "Research assistant and scholar before Awakening"
state: active
```

```yaml
id: REL-000042
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, before expedition"
  record_time: "2026-07-14T00:00:00Z"
endpoints:
  - ENT-000051
  - ENT-000061
type: mentorship
qualities: "Supportive; Venn recommended Daedalus to the Authority"
state: active
```

```yaml
id: REL-000043
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, expedition departure"
  record_time: "2026-07-14T00:00:00Z"
endpoints:
  - ENT-000051
  - ENT-000062
type: professional
qualities: "Neutral licensing and dispatch relationship"
state: active
```

```yaml
id: REL-000044
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, before expedition"
  record_time: "2026-07-14T00:00:00Z"
endpoints:
  - ENT-000051
  - ENT-000063
type: colleague-rivalry
qualities: "Former research partners; intellectual respect with jealousy after Daedalus's Awakening"
state: active
```
