# Place — Object Block Template

A Persistent Entity of type Place: a location with continuing identity. Structure: `011_ENGINE_DATA_MODEL.md` Section 4. Behavior is governed by the World and simulation rules (`010_ENGINE_RULES.md` Section 3); a Place is distinct from a Settlement/Kingdom, which carries population and governance.

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
type: Place
subtype: <optional: e.g. region, landmark, ruin, structure, wilderness>
scope: <required: local | regional | world | historical>
lifecycle: <required: active | transforming | destroyed | abandoned | archived | mythologized>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>
identity_links:
  - link: <optional: transforms-from | succeeds | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  region: <required: where the place is, or containing place ENT-XXXXXX>
  features: <required: notable features and present condition>
  occupants: <optional: ENT-XXXXXX references to controlling or resident entities>
```
