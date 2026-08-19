# Event — Object Block Template

A specialization of the Persistent Object (`EVT-`): a timed, immutable fact. Provenance across the engine points at Event identifiers. Once created, an Event does not change. Structure: `011_ENGINE_DATA_MODEL.md` Section 2.4. Importance tiers: `010_ENGINE_RULES.md` Section 3.5.

```yaml
id: <generated: EVT-XXXXXX>
canonical_record: <required: REC-XXXXXX>   # the record that first recorded this event
schema_version: "0.1.7"
status: active                              # events are immutable; status does not change
provenance:
  source: <required: ruling | transcript | EVT-XXXXXX>
  game_date: <required: in-world time the event occurred>
  real_date: <generated: time this event was recorded>
  uncertainty: <optional: unresolved uncertainty>
kind: <required: e.g. transfer | transformation | promotion | ruling | founding | death>
importance: <required: immediate | archived | historical | mythic — §3.5>
participants:
  - <optional: ENT-XXXXXX involved in the event>
counter_deltas:
  - subject: <optional: ENT-XXXXXX whose declared counter changed>
    counter: <optional: non-empty world-owned counter path>
    delta: <optional: non-zero integer>
progression_audits:
  - subject: <optional: ENT-XXXXXX covered by a profile-declared audit>
    domain: <optional: non-empty profile-owned domain>
    result: <optional: none | evidence-recorded | pending-classification>
    candidate: <optional unless result is not none: stable profile-owned key>
    scene: <optional unless result is not none: stable event-local scene key>
    disposition: <optional unless result is not none: qualifying | ambiguous>
description: <required: what happened>
```
