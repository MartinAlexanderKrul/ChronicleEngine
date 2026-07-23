# Canonical Record — Object Block Template

A specialization of the Persistent Object (`REC-`) that owns the authoritative state of entities and relationships. A Canonical Record is **self-authoritative**: its `canonical_record` is its own identifier (`011` Section 2.3). Structure: `011_ENGINE_DATA_MODEL.md` Section 8. Record roles and authority: `010_ENGINE_RULES.md` Section 2.8.

Every ledger file carries a Canonical Record block as its own object.

```yaml
id: <generated: REC-XXXXXX>
canonical_record: <generated: same as id — a record is its own authority>
schema_version: "0.1.2"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
role: <required: canonical ledger | historical document | chronicle | session summary | machine-readable save>
scope: <required: world | campaign | institution | personal | historical>
subjects:
  - <optional: ENT-XXXXXX or REL-XXXXXX whose state this record owns>
```
