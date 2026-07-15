# NPCs and Factions — Reikon Awakening 001

## Record

```yaml
id: REC-000041
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000035
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T16:44:48Z"
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
  source: EVT-000036
  event_time: "Year 31 AR, before expedition"
  record_time: "2026-07-15T16:44:48Z"
  uncertainty: "Whether Venn knows Vane, and how the directorship relates to the Institute's lead-researcher post, are unestablished."
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
  disambiguation: "NOT Dr. Sable Vane (ENT-000036), the world-layer lead researcher of the same Institute. Ruled distinct figures by EVT-000036: Venn directs the Institute, Vane leads its research, and the resemblance of the names is coincidental. Do not merge, alias, or conflate them. Daedalus has met Venn and has never met Vane."
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
  capabilities: "Hunter licensing and expedition dispatch authority; grants access to the Association's warded training grounds"
  personality: "Professional and neutral toward Daedalus; approves of hunters who test their limits before trusting them"
  situation: "Approved and briefed Daedalus's solo Warehouse 7 assignment. Met him again during recovery (EVT-000033): cleared him for the south-wing training grounds, warned him not to push the shoulder faster than it allowed, and reported that Warehouse 7 remained uncleared and unattended with a solid stability window and no activity outside it."
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
  personality: "Careful, intellectually supportive, and wary of the Vigil of the Rupture. Closed his office door before discussing it and glanced at it twice more; treats the subject as unsafe to be overheard on, even inside the Institute."
  situation: "Asked Daedalus for direct, detailed basement observations and offered continued research consultation. Gave him his home address and early-evening window (ENT-000078) rather than route the exchange through the Institute's runner, and attached a same-day condition on anything anomalous (REL-000045). Awaiting word; does not yet know the basement produced four D-grade Breakers and a bonded core."
  knowledge: "Disclosed the Vigil's claimed jurisdiction over deep phenomena and the pressure on Institute deep-Rift study (ENT-000079). What he knows beyond what he told Daedalus is unestablished."
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
  source: EVT-000035
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T16:44:48Z"
endpoints:
  - ENT-000051
  - ENT-000071
type: research-alliance
qualities: "Former supervisor and field researcher. Trust is high and mutual, and the obligation runs both ways: Daedalus owes detailed basement observations, and Kalens undertook to keep him in the research loop. Channel: private by both parties' choice — Daedalus asked to consult Kalens directly rather than through the Institute's runner, and Kalens agreed and preferred it, giving his home address and a standing time window (ENT-000078) to call at the scholar's quarter on early evenings after the Institute closes. Standing obligation on Daedalus: anything that does not fit the standard pattern goes to Kalens the same day, ahead of any full report, his stated reason being that the Institute must know before the Vigil comes asking (ENT-000079)."
state: "Active. The same-day obligation is currently MET and unhonoured: the four D-grade Breakers on an E-grade Rift and the energetically bonded core are the anomaly it describes, and Daedalus has sent no word. Kalens does not yet know the basement produced either."
history: "Formed during the recovery-day consultation (EVT-000033) out of a pre-existing supervisor relationship from Daedalus's years as an Institute research assistant (REL-000041). Upgraded from the Institute's ordinary runner channel to a direct private one at Daedalus's request within the same conversation. Recorded in full by EVT-000035."
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
