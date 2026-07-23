# Character — Object Block Template

A Persistent Entity of type Character. Structure: `011_ENGINE_DATA_MODEL.md` Section 4. Behavior: `010_ENGINE_RULES.md` Section 5.

```yaml
id: <generated: ENT-XXXXXX>
canonical_record: <required: REC-XXXXXX>
schema_version: "0.1.2"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
type: Character
subtype: <optional: domain- or world-defined>
scope: <required: personal | local | regional | world | historical>
lifecycle: <required: emerging | active | transforming | declining | dissolved | destroyed | mythologized | archived>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>
identity_links:
  - link: <optional: transforms-from | succeeds | succeeded-by | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  location: <required: ENT-XXXXXX or region descriptor>       # sole owner of presence — 011 §7.1, §9.2 (Decision 073)
  condition: <required: injuries, pain, exhaustion — §6.8, §6.10>
  capabilities: <required: demonstrated competences — §5.3>
  personality: <optional: core traits and current expression — §5.4>
  knowledge: <optional: what this character knows — §5.5>
  situation: <optional: current objective or circumstance — narrative only, never the location of record (Decision 073)>
```
