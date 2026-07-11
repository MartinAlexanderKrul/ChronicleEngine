# Relationship — Object Block Template

A specialization of the Persistent Object (`REL-`): a first-class link between exactly two entities, with its own state and history. Membership, governance, legitimacy, and diplomacy are modelled as relationships. Structure: `011_ENGINE_DATA_MODEL.md` Section 10. Meaning of each type: the relevant `010_ENGINE_RULES.md` domain section (§5.6, §9.4, §10.2, §10.3, §10.5).

```yaml
id: <generated: REL-XXXXXX>
canonical_record: <required: REC-XXXXXX>
schema_version: "0.1.1"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
endpoints:
  - <required: ENT-XXXXXX>
  - <required: ENT-XXXXXX>
type: <required: e.g. membership | governance | diplomacy | personal | rivalry>
qualities: <required: e.g. trust, obligation (§5.6); governance quality and legitimacy band (§10.2, §10.3); diplomatic quality (§10.5); membership rank (§9.4)>
state: <optional: current state of the relationship>
history: <optional: how the relationship has evolved>
```
