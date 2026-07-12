# Places — Reikon (Draft)

**Ledger:** Canonical Record (`011` Section 8) holding Reikon's Place and Settlement entities.
**Status:** DRAFT — non-canonical. Identifiers are draft-local tokens (prefixed `D-`) to be replaced by registry-allocated IDs on instantiation.

---

## Record

```yaml
id: D-REC-01
canonical_record: D-REC-01
schema_version: "0.1.1"
status: draft
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-12T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - D-ENT-01
  - D-ENT-02
  - D-ENT-03
  - D-ENT-04
  - D-REL-05
```

---

## The Aldish Republic

```yaml
id: D-ENT-01
canonical_record: D-REC-01
schema_version: "0.1.1"
status: draft
type: Place
subtype: nation
scope: regional
lifecycle: active
aliases:
  - name: "the Aldish Republic"
    quality: current
canonical_state:
  region: "A mid-sized industrial republic; one of the dozen polities struck by the first Rifts at the Rupture."
  features: "Dense river-basin cities; a standing Rift-clearance duty that shapes law, labor, and class."
  occupants:
    - D-ENT-02
```

---

## Verholt

```yaml
id: D-ENT-02
canonical_record: D-REC-01
schema_version: "0.1.1"
status: draft
type: Settlement/Kingdom
subtype: city
scope: local
lifecycle: active
aliases:
  - name: "Verholt"
    quality: current
relationships:
  - D-REL-05
canonical_state:
  territory: "A river-basin city of the Aldish Republic; the seat of play."
  population: "~900,000."
  conditions: "Prosperous but tense; a year of rising Rift activity and two recent collapses have shaken confidence in the Authority."
  governance: "Civil municipal government for ordinary matters; Rift and hunter matters fall under the Hunters' Authority's jurisdiction (D-REL-05)."
```

---

## The Kessler Rift (Rift KB-09)

```yaml
id: D-ENT-03
canonical_record: D-REC-01
schema_version: "0.1.1"
status: draft
type: Place
subtype: rift
scope: local
lifecycle: active
aliases:
  - name: "Rift KB-09"
    quality: current
  - name: "the Kessler Rift"
    quality: current
canonical_state:
  location: "The Kessler industrial district on Verholt's south bank."
  grade_estimate: "Assessed by the Authority as clearable at Grade III; contested — its depth has grown."
  conditions: "Stable but slowly deepening; a candidate for the next collapse if clearance is delayed. A Rift is a transient Place: it exists until cleared or until it collapses."
```

---

## The Danesmoor Collapse

```yaml
id: D-ENT-04
canonical_record: D-REC-01
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-06
  event_time: "Year 31 AR, early in the year"
  record_time: "2026-07-12T00:00:00Z"
type: Place
subtype: collapse-site
scope: local
lifecycle: declining
aliases:
  - name: "the Danesmoor collapse"
    quality: current
canonical_state:
  location: "The Danesmoor ward, north Verholt."
  conditions: "A residential ward overrun when a Rift collapsed before clearance; cordoned, partly reclaimed, its dead uncounted. The proximate cause of the Authority's current legitimacy crisis (D-EVT-06)."
```

---

## D-REL-05 — Jurisdiction: the Hunters' Authority over Verholt (Rift and hunter matters)

```yaml
id: D-REL-05
canonical_record: D-REC-01
schema_version: "0.1.1"
status: draft
provenance:
  source: D-EVT-02
  event_time: "Year 3 AR"
  record_time: "2026-07-12T00:00:00Z"
endpoints:
  - D-ENT-21
  - D-ENT-02
type: governance
qualities: "Regulatory jurisdiction over Rifts, the Awakened, and Grade licensing within Verholt; legitimacy band: Strained. Civil municipal government retains ordinary matters."
state: "Strained since the Danesmoor collapse (D-EVT-06); the Authority's writ over hunters is resented by the Meridian Guild and doubted by the public."
history: "Held since the Authority's charter (D-EVT-02)."
```
