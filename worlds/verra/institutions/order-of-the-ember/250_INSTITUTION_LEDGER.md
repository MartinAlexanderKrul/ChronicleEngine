# Institution Ledger — the Order of the Ember

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.

---

## Record

```yaml
id: REC-000006
canonical_record: REC-000006
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000002
  event_time: "Year 20 RR"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000004
```

---

## The Order of the Ember

```yaml
id: ENT-000004
canonical_record: REC-000006
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000002
  event_time: "Year 20 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Order of the Ember"
    quality: current
relationships:
  - REL-000013
  - REL-000006
  - REL-000010
canonical_state:
  governance_structure: "Prelacy under Prelate Solenne (ENT-000008), leading an ordained clergy."
  doctrine_goals: "Tend the sacred Ember; interpret affliction as divine trial; guard and preserve doctrine."
  knowledge_stance: "Restricts teachings that contradict doctrine. It condemned the marsh-fever finding (ENT-000013) as heresy through EVT-000006 and forbade its teaching in Halden. Its authority to restrict does not make the finding false."
```
