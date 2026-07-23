# Institution Ledger — the Meridian Guild

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** Active — instantiated as canonical world content (2026-07-13).

---

## Record

```yaml
id: REC-000031
canonical_record: REC-000031
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000020
  event_time: "Year 9 AR"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000042
```

---

## The Meridian Guild

```yaml
id: ENT-000042
canonical_record: REC-000031
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000020
  event_time: "Year 9 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Meridian Guild"
    quality: current
relationships:
  - REL-000030
canonical_state:
  governance_structure: "A chartered company under Chair Renn (ENT-000035), with a fellowship of contracted hunters."
  doctrine_goals: "Field hunting teams for profit; corner the core market; acquire and retain high-Grade talent."
  role: "The commercial monopoly interest. Turns Grades, licenses, and cores into assets; buys silence where a hunter's page and deeds diverge."
  knowledge_stance: "Indifferent to what the Ledger is; deeply interested in what it is worth. Would sell the Institute's deep-Rift core (ENT-000050) rather than study or destroy it."
  condition: "Dominant in Verholt; quietly assisting its star hunter Corin Vask (ENT-000038) to protect his marketable Grade."
```
