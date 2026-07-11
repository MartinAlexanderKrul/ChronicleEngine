# Institution — Object Block Template

A Persistent Entity of type Institution. Structure: `011_ENGINE_DATA_MODEL.md` Section 4. Behavior: `010_ENGINE_RULES.md` Section 9.

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
type: Institution
subtype: <optional: e.g. Military Institution — §9.7, Decision 034>
scope: <required: local | regional | world>
lifecycle: <required: emerging | active | transforming | declining | dissolved | destroyed | absorbed | mythologized | archived>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>       # membership, governance, diplomacy — §9.4, §10.2, §10.5
identity_links:
  - link: <optional: succeeds | splits-from | merges-from | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  governance_structure: <required: how authority is held — §9.3>
  doctrine_goals: <required: purpose and core doctrine — §9.5>
  assets: <optional: REC-XXXXXX or resource ENT-XXXXXX references — §9.6, §7>
  military_arm: <optional: asset, or ENT-XXXXXX of a promoted Military Institution — §9.7>
  knowledge_stance: <optional: stance toward knowledge domains — §9.8>
```
