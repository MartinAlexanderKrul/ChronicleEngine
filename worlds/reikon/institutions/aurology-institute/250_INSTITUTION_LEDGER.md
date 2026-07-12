# Institution Ledger — the Aurology Institute (Draft)

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** DRAFT — non-canonical. Identifiers are draft-local tokens (prefixed `D-`) to be replaced by registry-allocated IDs on instantiation.

---

## Record

```yaml
id: D-REC-07
canonical_record: D-REC-07
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-04
  event_time: "Year 12 AR"
  record_time: "2026-07-12T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - D-ENT-23
```

---

## The Aurology Institute

```yaml
id: D-ENT-23
canonical_record: D-REC-07
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-04
  event_time: "Year 12 AR"
  record_time: "2026-07-12T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Aurology Institute"
    quality: current
relationships:
  - D-REL-03
  - D-REL-10
canonical_state:
  governance_structure: "A research body under lead researcher Dr. Vane (D-ENT-13), with a fellowship of scholars."
  doctrine_goals: "Study the Ledger and the Rifts empirically; publish carefully; treat the System as a phenomenon to be understood, not worshipped."
  role: "The validator. Its findings about the true nature of the Rupture (D-ENT-31, D-REL-10) collide with Vigil doctrine and threaten interests that prefer the question closed."
  knowledge_stance: "Holds the deep-Rift core (D-ENT-43) and an unpublished finding validated only to its own evidentiary standard — not proven, and dangerous to release."
  condition: "Cautious and exposed; the Vigil suspects what it has found, and it is not sure whom in Verholt it can trust."
```
