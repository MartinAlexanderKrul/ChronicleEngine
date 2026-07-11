# Event — Object Block Template

A specialization of the Persistent Object (`EVT-`): a timed, immutable fact. Provenance across the engine points at Event identifiers. Once created, an Event does not change. Structure: `011_ENGINE_DATA_MODEL.md` Section 2.4. Importance tiers: `010_ENGINE_RULES.md` Section 3.5.

```yaml
id: <generated: EVT-XXXXXX>
canonical_record: <required: REC-XXXXXX>   # the record that first recorded this event
schema_version: "0.1.0"
status: active                              # events are immutable; status does not change
provenance:
  source: <required: ruling | transcript | EVT-XXXXXX>
  event_time: <required: in-world time the event occurred>
  record_time: <generated: time this event was recorded>
  uncertainty: <optional: unresolved uncertainty>
kind: <required: e.g. transfer | transformation | promotion | ruling | founding | death>
importance: <required: immediate | archived | historical | mythic — §3.5>
participants:
  - <optional: ENT-XXXXXX involved in the event>
description: <required: what happened>
```
