# Institution Ledger — the Halden Athenaeum

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.

---

## Record

```yaml
id: REC-000005
canonical_record: REC-000005
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000003
  event_time: "Year 180 RR"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000003
```

---

## The Halden Athenaeum

```yaml
id: ENT-000003
canonical_record: REC-000005
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000003
  event_time: "Year 180 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Halden Athenaeum"
    quality: current
relationships:
  - REL-000011
  - REL-000012
  - REL-000004
canonical_state:
  governance_structure: "Rectorship under Rector Maelis (ENT-000006), with a fellowship of senior scholars."
  doctrine_goals: "Advance and validate natural knowledge through observation and evidence; publish openly."
  knowledge_stance: "Validates findings under its own evidentiary standard. It has validated the marsh-fever finding (ENT-000013) through EVT-000005 and holds that validation as the Athenaeum's own, not as objective proof."
```
