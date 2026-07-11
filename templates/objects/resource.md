# Resource — Object Block Template

A Persistent Entity of type Resource: an **individual** resource with persistent identity. Generic and aggregated resources are counted as quantities in a holding record and have no identifier (`011` Section 11). Structure: `011_ENGINE_DATA_MODEL.md` Section 4. Behavior: `010_ENGINE_RULES.md` Section 7.

```yaml
id: <generated: ENT-XXXXXX>
canonical_record: <required: REC-XXXXXX>
schema_version: "0.1.0"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
type: Resource
subtype: <optional: e.g. weapon, manuscript, artifact, property>
scope: <required: personal | local | regional | world | historical>
lifecycle: <required: active | transforming | destroyed | archived | mythologized>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>
identity_links:
  - link: <optional: transforms-from | emerges-from | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  category: <required: resource category — §7.2>
  condition: <required: Excellent | Good | Worn | Damaged | Broken | Destroyed — §7.4>
  ownership: <required: owner ENT-XXXXXX, with quality legal|social|magical|practical — §7.1>
  possession: <required: possessor ENT-XXXXXX — §7.1>
  location: <required: place ENT-XXXXXX or container ENT-XXXXXX — §7.8>
  containment: <optional: container ENT-XXXXXX if held inside another object>
  provenance_chain: <optional: creator, prior owners, notable events — §7.5>
```
