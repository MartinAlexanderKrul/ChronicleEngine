# Settlement / Kingdom — Object Block Template

A Persistent Entity of type Settlement/Kingdom. Structure: `011_ENGINE_DATA_MODEL.md` Section 4. Behavior: `010_ENGINE_RULES.md` Section 10.

```yaml
id: <generated: ENT-XXXXXX>
canonical_record: <required: REC-XXXXXX>
schema_version: "0.1.1"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
type: Settlement/Kingdom
subtype: <optional: e.g. village, city, kingdom, empire>
scope: <required: local | regional | world>
lifecycle: <required: emerging | active | transforming | declining | dissolved | destroyed | absorbed | abandoned | archived>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>       # governance relationships to institutions — §10.2
identity_links:
  - link: <optional: succeeds | splits-from | merges-from | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  territory: <required: territorial extent and notable features — §10.1>
  population: <required: aggregate figure — §10.1>
  conditions: <required: prosperity, unrest, or crisis — qualitative, Decision 026>
  governance: <optional: REL-XXXXXX of the ruling/contesting relationship — §10.2, §10.3>
```
