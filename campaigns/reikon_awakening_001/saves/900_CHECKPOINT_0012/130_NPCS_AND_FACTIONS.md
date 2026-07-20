# NPCs and Factions — Reikon Awakening 001

## Record

```yaml
id: REC-000041
canonical_record: REC-000041
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000038
  event_time: "Year 31 AR, evening consultation, the same day as the basement clear"
  record_time: "2026-07-20T06:30:00Z"
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
  source: EVT-000037
  event_time: "Year 31 AR, before expedition"
  record_time: "2026-07-15T17:31:04Z"
  uncertainty: "Whether Teague knows Vane, and how the directorship relates to the Institute's lead-researcher post, are unestablished. Teague has never appeared in a played scene; he exists as authored backstory."
type: Character
subtype: academic director
scope: local
lifecycle: active
aliases:
  - name: "Dr. Ambrose Teague"
    quality: current
relationships:
  - REL-000042
canonical_state:
  location: ENT-000031
  condition: "No adverse condition established"
  capabilities: "Aurology Institute director; Rift-research leadership"
  personality: "Supportive of Daedalus's potential"
  situation: "Recommended Daedalus to the Hunters' Authority. Backstory only — Daedalus did not visit him before the expedition and has not met him on screen."
  disambiguation: "NOT Dr. Sable Vane (ENT-000036), the world-layer lead researcher of the same Institute. Ruled distinct figures by EVT-000036. Teague directs the Institute; Vane leads its research. Do not merge, alias, or conflate them. Daedalus has met neither on screen. This entity was recorded as 'Dr. Kael Venn' until EVT-000037 corrected the name, which had collided with Vane here and with Kael Travis (ENT-000021) in Prototype Beta; that string is a superseded record, not a former name, and no former alias exists."
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
  situation: "Received Daedalus in person at his home on the same day as the basement clear, honoring the same-day condition on REL-000045. Copied Daedalus's complete notebook findings by lamplight — chamber measurements, the guardian formation, and the bonded core's behavior — and committed to a proper Institute research effort rather than silence: he is personally taking the severance problem, while routing a D-core sample to Dr. Soren and the stability data to Marta. Daedalus went on to log the clear with the Association the same night, including that the bonded core and its Institute study; Kalens does not yet know exactly what Daedalus told the Association."
  knowledge: "Disclosed the Vigil's claimed jurisdiction over deep phenomena and the pressure on Institute deep-Rift study (ENT-000079). Now also holds Daedalus's full basement chamber data and is investigating a real severance method. What he knows beyond what he told Daedalus is unestablished."
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
  situation: "Shared progress across fifteen core grades and requested safe deep-core observations or samples. Now has one of the four harvested Breaker D-cores and Daedalus's chamber notes, routed to him by Kalens the same evening; his analysis has not yet been reported back to Daedalus."
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
  situation: "Shared preliminary evidence that deeper cores may correlate with faster post-extraction collapse. Now has Daedalus's pulse, heat, and floor-pattern data on the Warehouse 7 core, routed to her by Kalens the same evening; her analysis has not yet been reported back to Daedalus."
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
  source: EVT-000037
  event_time: "Year 31 AR, before expedition"
  record_time: "2026-07-15T17:31:04Z"
endpoints:
  - ENT-000051
  - ENT-000061
type: mentorship
qualities: "Supportive; Teague recommended Daedalus to the Authority"
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
state: "Active. The same-day obligation is now MET AND HONOURED: Daedalus called on Kalens at his home the same evening, within the standing window, and gave him the complete basement findings — the four D-grade Breakers, the bonded core's measurements, and the failed extraction attempt. Kalens is now personally investigating a safe severance method and has routed data to Soren and Marta."
history: "Formed during the recovery-day consultation (EVT-000033) out of a pre-existing supervisor relationship from Daedalus's years as an Institute research assistant (REL-000041). Upgraded from the Institute's ordinary runner channel to a direct private one at Daedalus's request within the same conversation. Recorded in full by EVT-000035. The standing same-day obligation was honoured the same evening by EVT-000038."
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
