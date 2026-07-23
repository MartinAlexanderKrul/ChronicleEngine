# NPCs and Factions — Reikon Awakening 001

## Record

```yaml
id: REC-000041
canonical_record: REC-000041
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000050
  event_time: "Year 31 AR, Warehouse 7 resonance extraction and tannery E-Rift clear"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000061
  - ENT-000062
  - ENT-000063
  - ENT-000071
  - ENT-000072
  - ENT-000073
  - ENT-000083
  - REL-000040
  - REL-000041
  - REL-000042
  - REL-000043
  - REL-000044
  - REL-000045
  - REL-000046
  - REL-000047
  - REL-000048
```

The Hunters' Association is the Hunters' Authority (`ENT-000041`); both names are canonical aliases. The Aurology Institute is `ENT-000043`.

## Campaign-Local Figures

```yaml
id: ENT-000061
canonical_record: REC-000041
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
  situation: "Received Daedalus in person at his home on the same day as the basement clear, honoring the same-day condition on REL-000045. Copied Daedalus's complete notebook findings by lamplight — chamber measurements, the guardian formation, and the bonded core's behavior — and committed to a proper Institute research effort rather than silence. His Athenaeum contact's resonance theory, combined with Marta's pulse data and Soren's fracture analysis, led to a successful joint effort: independent contractor Wren Ashcombe extracted the bonded core intact (EVT-000048), with Kalens observing at range alongside Daedalus. The core is now his to study at length — 'this is going to keep us busy for months,' by his own words."
  knowledge: "Disclosed the Vigil's claimed jurisdiction over deep phenomena and the pressure on Institute deep-Rift study (ENT-000079). Now also holds Daedalus's full basement chamber data and is investigating a real severance method. What he knows beyond what he told Daedalus is unestablished."
```

```yaml
id: ENT-000072
canonical_record: REC-000041
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
  situation: "Her hypothesis about the three-second pulse interval was confirmed useful: it matched the Verholt Athenaeum's resonance-bonding pattern from an older case, and became the actual frequency Wren Ashcombe used to loosen and extract Warehouse 7's bonded core (EVT-000048). The core is now safely extracted; her analytical contribution was central to the successful method."
```

---

## Wren Ashcombe

```yaml
id: ENT-000083
canonical_record: REC-000041
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000047
  event_time: "Year 31 AR, Institute joint session"
  record_time: "2026-07-22T00:00:00Z"
  uncertainty: "Her broader reputation, other clients, and standing rate for resonance work beyond this one job are unestablished."
type: Character
subtype: independent contractor, resonance and calibration specialist
scope: local
lifecycle: active
aliases:
  - name: "Wren Ashcombe"
    quality: current
relationships:
  - REL-000048
canonical_state:
  location: ENT-000031
  condition: "No adverse condition established; some visible exhaustion after the resonance extraction, resolved with no lasting effect noted"
  capabilities: "Independent contractor specializing in resonance and mana-pulse calibration work; carries her own instruments. Used previously by the Association for delicate extraction jobs. Not a combat specialist."
  personality: "Careful and unwilling to overstate confidence; wants to see data and the site itself before committing to a plan; direct about risk without being alarmist; visibly relieved and pleased once a difficult job lands clean."
  situation: "Brought in by Daedalus on the Association's referral to assess Warehouse 7's bonded core. Reviewed the Institute's full data set (Marta's pulse correlation, Soren's fracture analysis, Kalens's Athenaeum resonance lead) in person, confirmed the framework's thin point as the bond's anchor, and judged the resonance approach viable but narrow-margin. Cleared to attempt it by Captain Thorne after a direct risk briefing. Successfully extracted the core after three attempts (one near-miss, corrected safely) with no discharge or instability. Job complete; Thorne noted the Association would compensate her separately from any Institute research arrangement."
```

## Relationships

```yaml
id: REL-000040
canonical_record: REC-000041
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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
state: "Active. The same-day obligation was MET AND HONOURED early on: Daedalus called on Kalens at his home the same evening, within the standing window, and gave him the complete basement findings — the four D-grade Breakers, the bonded core's measurements, and the failed extraction attempt. The research collaboration that followed succeeded fully: Kalens's Athenaeum contact, Marta's pulse-interval data, Soren's fracture analysis, and Daedalus's own follow-up finding (the framework's contact-point asymmetry) together supported a working resonance extraction, carried out successfully by Wren Ashcombe with Kalens observing. The core is now safely in Institute hands for long-term study."
history: "Formed during the recovery-day consultation (EVT-000033) out of a pre-existing supervisor relationship from Daedalus's years as an Institute research assistant (REL-000041). Upgraded from the Institute's ordinary runner channel to a direct private one at Daedalus's request within the same conversation. Recorded in full by EVT-000035. The standing same-day obligation was honoured the same evening by EVT-000038."
```

```yaml
id: REL-000046
canonical_record: REC-000041
schema_version: "0.1.2"
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
schema_version: "0.1.2"
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

```yaml
id: REL-000048
canonical_record: REC-000041
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000047
  event_time: "Year 31 AR, Institute joint session"
  record_time: "2026-07-22T00:00:00Z"
endpoints:
  - ENT-000051
  - ENT-000083
type: professional-contact
qualities: "First contact through an Association referral for a single specialist job. Professional and cordial; no standing obligation established beyond the completed Warehouse 7 job. Wren was careful to insist on seeing the Institute's actual data and the site itself before committing, and Daedalus arranged both promptly."
state: "Job complete, successful. Whether this becomes a standing contact for future jobs is unestablished."
history: "Formed when Daedalus sought her out directly on the Association dispatch clerk's referral (EVT-000047) after the Institute's Athenaeum lead identified resonance work as the needed approach for Warehouse 7's bonded core. She insisted on reviewing the Institute's data and the chamber in person before committing, then successfully extracted the core after Thorne's approval and a direct risk briefing (EVT-000048)."
```
