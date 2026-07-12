# Institution Ledger — the Meridian Guild (Draft)

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** DRAFT — non-canonical. Identifiers are draft-local tokens (prefixed `D-`) to be replaced by registry-allocated IDs on instantiation.

---

## Record

```yaml
id: D-REC-06
canonical_record: D-REC-06
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-03
  event_time: "Year 9 AR"
  record_time: "2026-07-12T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - D-ENT-22
```

---

## The Meridian Guild

```yaml
id: D-ENT-22
canonical_record: D-REC-06
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-03
  event_time: "Year 9 AR"
  record_time: "2026-07-12T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Meridian Guild"
    quality: current
relationships:
  - D-REL-02
canonical_state:
  governance_structure: "A chartered company under Chair Renn (D-ENT-12), with a fellowship of contracted hunters."
  doctrine_goals: "Field hunting teams for profit; corner the core market; acquire and retain high-Grade talent."
  role: "The commercial monopoly interest. Turns Grades, licenses, and cores into assets; buys silence where a hunter's page and deeds diverge."
  knowledge_stance: "Indifferent to what the Ledger is; deeply interested in what it is worth. Would sell the Institute's deep-Rift core (D-ENT-43) rather than study or destroy it."
  condition: "Dominant in Verholt; quietly assisting its star hunter Corin Vask (D-ENT-15) to protect his marketable Grade."
```
