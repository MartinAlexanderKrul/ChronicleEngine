# Institution Ledger — the Hunters' Authority (Draft)

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** DRAFT — non-canonical. Identifiers are draft-local tokens (prefixed `D-`) to be replaced by registry-allocated IDs on instantiation.

---

## Record

```yaml
id: D-REC-05
canonical_record: D-REC-05
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-02
  event_time: "Year 3 AR"
  record_time: "2026-07-12T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - D-ENT-21
```

---

## The Hunters' Authority

```yaml
id: D-ENT-21
canonical_record: D-REC-05
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-02
  event_time: "Year 3 AR"
  record_time: "2026-07-12T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Hunters' Authority"
    quality: current
relationships:
  - D-REL-01
  - D-REL-05
  - D-REL-12
  - D-REL-14
canonical_state:
  governance_structure: "A state bureau under Director Kest (D-ENT-11) in Verholt."
  doctrine_goals: "License and grade the Awakened; assign Rift-clearance; keep the cities from another collapse."
  role: "The credentialing and regulatory power. It assigns Grades from assessed deeds (Rules Section 2.2) — a recorded claim, not the Ledger's private truth, and therefore forgeable and contestable."
  knowledge_stance: "Pragmatic and agnostic about what the Ledger is (D-REL-12); custodian of the outlawed Warden Class as suppressed knowledge (D-REL-14)."
  condition: "Legitimacy strained since the Danesmoor collapse (D-EVT-06); under-resourced against rising Rift activity."
```
