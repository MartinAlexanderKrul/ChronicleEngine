# Institution Ledger — the Hunters' Authority

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** Active — instantiated as canonical world content (2026-07-13).

---

## Record

```yaml
id: REC-000030
canonical_record: REC-000030
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000019
  event_time: "Year 3 AR"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000041
```

---

## The Hunters' Authority

```yaml
id: ENT-000041
canonical_record: REC-000030
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000019
  event_time: "Year 3 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Hunters' Authority"
    quality: current
relationships:
  - REL-000029
  - REL-000033
  - REL-000036
  - REL-000038
canonical_state:
  governance_structure: "A state bureau under Director Kest (ENT-000034) in Verholt."
  doctrine_goals: "License and grade the Awakened; assign Rift-clearance; keep the cities from another collapse."
  role: "The credentialing and regulatory power. It assigns Grades from assessed deeds (Rules Section 2.2) — a recorded claim, not the Ledger's private truth, and therefore forgeable and contestable."
  knowledge_stance: "Pragmatic and agnostic about what the Ledger is (REL-000036); custodian of the outlawed Warden Class as suppressed knowledge (REL-000038)."
  condition: "Legitimacy strained since the Danesmoor collapse (EVT-000023); under-resourced against rising Rift activity."
```
