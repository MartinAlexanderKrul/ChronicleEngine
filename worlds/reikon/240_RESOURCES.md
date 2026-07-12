# Resources — Reikon (Draft)

**Ledger:** Canonical Record (`011` Section 8) holding Reikon's notable Individual Resources and Knowledge Assets (Rules Sections 7.2, 7.12).
**Status:** DRAFT — non-canonical. Identifiers are draft-local tokens (prefixed `D-`) to be replaced by registry-allocated IDs on instantiation.

---

## Record

```yaml
id: D-REC-04
canonical_record: D-REC-04
schema_version: "0.1.1"
status: draft
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-12T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - D-ENT-41
  - D-ENT-42
  - D-ENT-43
```

---

## A Forged Hunter License

```yaml
id: D-ENT-41
canonical_record: D-REC-04
schema_version: "0.1.1"
status: draft
type: Resource
subtype: individual
scope: local
lifecycle: active
aliases:
  - name: "a forged Grade II license"
    quality: current
canonical_state:
  description: "An Authority hunter license reading Grade II, forged by Tallow (D-ENT-16); the bearer's true capability is lower."
  provenance: "Forged; instance of the forging-of-Grades technique (D-ENT-33)."
  significance: "A recorded claim, not objective capability (Rules Section 2.2). It opens doors and contracts — and fails catastrophically the first time a Rift demands the capability it asserts."
```

---

## A Marked Relic

```yaml
id: D-ENT-42
canonical_record: D-REC-04
schema_version: "0.1.1"
status: draft
type: Resource
subtype: individual
scope: local
lifecycle: active
aliases:
  - name: "the Kessler token"
    quality: current
canonical_state:
  description: "A small object recovered from a Rift that carries a usable Mark — a supernatural asset a bearer can invoke."
  cost_and_limits: "Invoking it exacts a real cost and carries risk proportional to the effect (Rules Section 11.2); it is not a free power. Its Mark is a Knowledge Asset governed by Rules Section 8."
  significance: "Coveted by the Meridian Guild and the Institute alike."
```

---

## The Institute's Deep-Rift Core

```yaml
id: D-ENT-43
canonical_record: D-REC-04
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-07
  event_time: "Year 31 AR"
  record_time: "2026-07-12T00:00:00Z"
type: Resource
subtype: individual
scope: regional
lifecycle: active
aliases:
  - name: "the deep-Rift core"
    quality: current
canonical_state:
  description: "A core drawn from an unusually deep Rift, recovered by the Aurology Institute (D-EVT-07). Its properties underpin the Institute's contested finding about the Rupture (D-ENT-31, D-REL-10)."
  custody: "Held by Dr. Vane (D-ENT-13) at the Institute; unpublished; sought by the Vigil, which wants it destroyed, and by the Meridian Guild, which wants it sold."
  significance: "The object around which the world's central conflict currently turns."
```
