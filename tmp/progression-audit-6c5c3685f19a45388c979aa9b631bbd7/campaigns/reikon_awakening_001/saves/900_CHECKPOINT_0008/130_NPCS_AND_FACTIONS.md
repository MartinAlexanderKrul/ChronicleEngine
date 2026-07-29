# NPCs and Factions — Reikon Awakening 001

## Record

```yaml
id: REC-000041
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T09:15:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000061
  - ENT-000062
  - ENT-000063
  - ENT-000071
  - ENT-000072
  - ENT-000073
  - REL-000040
  - REL-000041
  - REL-000042
  - REL-000043
  - REL-000044
  - REL-000045
  - REL-000046
  - REL-000047
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

```yaml
id: ENT-000071
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T09:15:00Z"
type: Character
subtype: aurology researcher
scope: local
lifecycle: active
aliases:
  - name: "Dr. Kalens"
    quality: current
relationships:
  - REL-000045
canonical_state:
  location: ENT-000031
  condition: "No adverse condition established"
  capabilities: "Deep-Rift and core-chamber research; Daedalus's former supervisor"
  personality: "Careful, intellectually supportive, and wary of the Vigil of the Rupture"
  situation: "Asked Daedalus for direct, detailed basement observations and offered continued research consultation"
```

```yaml
id: ENT-000072
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T09:15:00Z"
type: Character
subtype: core-analysis researcher
scope: local
lifecycle: active
aliases:
  - name: "Dr. Soren"
    quality: current
relationships:
  - REL-000046
canonical_state:
  location: ENT-000031
  condition: "No adverse condition established"
  capabilities: "Core fracture-pattern and structural-orientation research"
  personality: "Warm toward Daedalus and enthusiastic about field samples"
  situation: "Shared progress across fifteen core grades and requested safe deep-core observations or samples"
```

```yaml
id: ENT-000073
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T09:15:00Z"
type: Character
subtype: environmental researcher
scope: local
lifecycle: active
aliases:
  - name: "Marta"
    quality: current
relationships:
  - REL-000047
canonical_state:
  location: ENT-000031
  condition: "No adverse condition established"
  capabilities: "Rift-stability pattern analysis and core-depth correlation research"
  personality: "Collaborative, excited by new data, and direct about field risk"
  situation: "Shared preliminary evidence that deeper cores may correlate with faster post-extraction collapse"
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

```yaml
id: REL-000045
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T09:15:00Z"
endpoints:
  - ENT-000051
  - ENT-000071
type: research-alliance
qualities: "Former supervisor and field researcher; direct consultation agreed for basement observations and unusual findings"
state: active
```

```yaml
id: REL-000046
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T09:15:00Z"
endpoints:
  - ENT-000051
  - ENT-000072
type: research-collaboration
qualities: "Prior core-analysis colleagues; Soren seeks safe deep-core observations or samples"
state: active
```

```yaml
id: REL-000047
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T09:15:00Z"
endpoints:
  - ENT-000051
  - ENT-000073
type: research-collaboration
qualities: "Prior environmental-research colleagues; shared interest in core depth and Rift stability"
state: active
```
