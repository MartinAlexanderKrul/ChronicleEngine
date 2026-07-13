# Resources — Reikon

**Ledger:** Canonical Record (`011` Section 8) holding Reikon's notable Individual Resources and Knowledge Assets (Rules Sections 7.2, 7.12).
**Status:** Active — instantiated as canonical world content (2026-07-13).

---

## Record

```yaml
id: REC-000029
canonical_record: REC-000029
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000048
  - ENT-000049
  - ENT-000050
```

---

## A Forged Hunter License

```yaml
id: ENT-000048
canonical_record: REC-000029
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Resource
subtype: individual
scope: local
lifecycle: active
aliases:
  - name: "a forged Grade II license"
    quality: current
canonical_state:
  description: "An Authority hunter license reading Grade II, forged by Tallow (ENT-000039); the bearer's true capability is lower."
  provenance: "Forged; instance of the forging-of-Grades technique (ENT-000047)."
  significance: "A recorded claim, not objective capability (Rules Section 2.2). It opens doors and contracts — and fails catastrophically the first time a Rift demands the capability it asserts."
```

---

## A Marked Relic

```yaml
id: ENT-000049
canonical_record: REC-000029
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
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
id: ENT-000050
canonical_record: REC-000029
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000024
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Resource
subtype: individual
scope: regional
lifecycle: active
aliases:
  - name: "the deep-Rift core"
    quality: current
canonical_state:
  description: "A core drawn from an unusually deep Rift, recovered by the Aurology Institute (EVT-000024). Its properties underpin the Institute's contested finding about the Rupture (ENT-000045, REL-000034)."
  custody: "Held by Dr. Vane (ENT-000036) at the Institute; unpublished; sought by the Vigil, which wants it destroyed, and by the Meridian Guild, which wants it sold."
  significance: "The object around which the world's central conflict currently turns."
```
