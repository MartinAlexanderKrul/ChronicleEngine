# Discovery / Knowledge — Object Block Template

A Persistent Entity of type Discovery/Knowledge: a body of knowledge, discovery, or technique with continuing identity. Structure: `011_ENGINE_DATA_MODEL.md` Section 4. Behavior: `010_ENGINE_RULES.md` Section 8.

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
type: Discovery/Knowledge
subtype: <optional: e.g. technique, theory, law, invention>
scope: <required: personal | local | institutional | regional | world | historical>
lifecycle: <required: emerging | active | transforming | declining | forgotten | archived | mythologized>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>
identity_links:
  - link: <optional: succeeds | splits-from | merges-from | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  domain: <required: field or subject of the knowledge>
  lifecycle_stage: <required: observation | hypothesis | investigation | validation | recording | publication | adoption | loss — §8.2>
  validation_status: <required: contextual reliability — §8.5, §8.6>
  holders: <optional: ENT-XXXXXX of characters or institutions that hold it — §8.8, §8.10>
  restriction: <optional: open | privately taught | archived | censored | lost — §8.9>
```
