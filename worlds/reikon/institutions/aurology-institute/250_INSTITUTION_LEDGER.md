# Institution Ledger — the Aurology Institute

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** Active — instantiated as canonical world content (2026-07-13).

---

## Record

```yaml
id: REC-000032
canonical_record: REC-000032
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000021
  event_time: "Year 12 AR"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000043
```

---

## The Aurology Institute

```yaml
id: ENT-000043
canonical_record: REC-000032
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000021
  event_time: "Year 12 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "the Aurology Institute"
    quality: current
relationships:
  - REL-000031
  - REL-000034
canonical_state:
  governance_structure: "A research body under lead researcher Dr. Vane (ENT-000036), with a fellowship of scholars."
  doctrine_goals: "Study the Ledger and the Rifts empirically; publish carefully; treat the System as a phenomenon to be understood, not worshipped."
  role: "The validator. Its findings about the true nature of the Rupture (ENT-000045, REL-000034) collide with Vigil doctrine and threaten interests that prefer the question closed."
  knowledge_stance: "Holds the deep-Rift core (ENT-000050) and an unpublished finding validated only to its own evidentiary standard — not proven, and dangerous to release."
  condition: "Cautious and exposed; the Vigil suspects what it has found, and it is not sure whom in Verholt it can trust."
```
