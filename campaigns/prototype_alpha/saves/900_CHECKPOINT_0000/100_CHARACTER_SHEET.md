# Character Sheet — Ilse Varn

**Campaign:** Prototype Alpha · **World:** Verra (`worlds/verra/`)
**Ledger:** single-object Canonical Record (`011` Section 8) holding the protagonist.

---

## Record

```yaml
id: REC-000009
canonical_record: REC-000009
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000018
```

---

## Ilse Varn

```yaml
id: ENT-000018
canonical_record: REC-000009
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
type: Character
scope: personal
lifecycle: active
aliases:
  - name: "Ilse Varn"
    quality: current
relationships:
  - REL-000016
  - REL-000017
  - REL-000018
canonical_state:
  location: ENT-000002
  condition: "Sound; travel-worn."
  capabilities: "Medicine (recently licensed); empirical observation; scholarship; literate."
  credentials: "Licensed physician, trained at a distant college; no standing in Halden."
  personality: "Curious and principled; cautious as an outsider."
  knowledge: "Trained physician. Knows of the marsh-fever finding and the public dispute around it, but has not examined the evidence and holds no settled view. Unaware of the rivermason's mortar."
  situation: "Newly arrived in Halden; presenting her letter of introduction (ENT-000020) at the Athenaeum (ENT-000003) as the fever season begins."
```
