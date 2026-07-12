# Institution Ledger — the Vigil of the Rupture (Draft)

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** DRAFT — non-canonical. Identifiers are draft-local tokens (prefixed `D-`) to be replaced by registry-allocated IDs on instantiation.

---

## Record

```yaml
id: D-REC-08
canonical_record: D-REC-08
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-05
  event_time: "Year 18 AR"
  record_time: "2026-07-12T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - D-ENT-24
```

---

## The Vigil of the Rupture

```yaml
id: D-ENT-24
canonical_record: D-REC-08
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-05
  event_time: "Year 18 AR"
  record_time: "2026-07-12T00:00:00Z"
type: Institution
scope: regional
lifecycle: active
aliases:
  - name: "the Vigil of the Rupture"
    quality: current
relationships:
  - D-REL-04
  - D-REL-11
canonical_state:
  governance_structure: "A mass movement led in Verholt by Hierophant Moren (D-ENT-14); loosely organized, broadly followed."
  doctrine_goals: "Hold the Rupture a judgment and the Ledger a covenant; keep faith with its meaning; oppose profane inquiry into it."
  role: "The restrictor. Presses officials, publishers, and scholars to suppress research into the Ledger's nature (D-REL-11), and marks the outlawed Warden Class as the clearest proof of that profanity."
  knowledge_stance: "Doctrinal certainty about the origin (Rules Section 2.2 — belief, not proven truth); it knows the Institute has found something and means to see it destroyed before it spreads."
  condition: "Ascendant since the Danesmoor collapse, which it preaches as vindication."
```
