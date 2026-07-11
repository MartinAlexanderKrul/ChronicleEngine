# Places — Verra

**Ledger:** Canonical Record (`011` Section 8) holding the world's Place and Settlement entities, and Halden's governance relationship.

---

## Record

```yaml
id: REC-000001
canonical_record: REC-000001
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000001
  - ENT-000002
  - REL-000010
```

---

## The Verran Reach

```yaml
id: ENT-000001
canonical_record: REC-000001
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
  uncertainty: "The Reach is far older than Halden; no founding date is claimed for the valley itself."
type: Place
subtype: region
scope: regional
lifecycle: active
aliases:
  - name: "the Verran Reach"
    quality: current
canonical_state:
  region: "A river valley along the Verran."
  features: "Marshy lowlands prone to a seasonal marsh-fever; sandbanks worked for glass-sand; old river works raised with a durable mortar now nearly lost."
  occupants:
    - ENT-000002
```

---

## Halden

```yaml
id: ENT-000002
canonical_record: REC-000001
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000001
  event_time: "Year 40 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Settlement/Kingdom
subtype: city
scope: local
lifecycle: active
aliases:
  - name: "Halden"
    quality: current
relationships:
  - REL-000010
canonical_state:
  territory: "The town of Halden and its riverside wards, at the Verran ford within the Verran Reach (ENT-000001)."
  population: "~6,000."
  conditions: "Modestly prosperous; presently uneasy, divided over the marsh-fever dispute."
  governance: REL-000010
```

---

## REL-000010 — Governance: the Order of the Ember over Halden

```yaml
id: REL-000010
canonical_record: REC-000001
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000002
  event_time: "Year 20 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000004
  - ENT-000002
type: governance
qualities: "Recognized civic-religious authority in civic and moral matters; legitimacy band: Accepted. This authority is why the Order's condemnation of the fever finding carries civic weight."
state: "Accepted, but strained on the marsh-fever question, where the Athenaeum's validation runs against the Order's ruling."
history: "Grown over generations since the Order's founding (EVT-000002)."
```
