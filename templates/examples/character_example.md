# Example — Instantiated Character (NON-CANONICAL)

**This file is a non-canonical fixture.** It exists only to validate the Object Block format end to end. It is not part of any world or campaign, its identifiers are illustrative, and nothing here is canon.

It demonstrates a filled `100_CHARACTER_SHEET.md`: every placeholder resolved, unused optional fields removed, no placeholder tokens remaining.

---

## Record

```yaml
id: REC-000001
canonical_record: REC-000001
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000001
  event_time: "Year 812, Month of Frost, Day 3"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: personal
subjects:
  - ENT-000001
```

---

## Character

```yaml
id: ENT-000001
canonical_record: REC-000001
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000001
  event_time: "Year 812, Month of Frost, Day 3"
  record_time: "2026-07-11T00:00:00Z"
type: Character
scope: personal
lifecycle: active
aliases:
  - name: "Corin Vale"
    quality: current
  - name: "The Grey Warden of Ashmere"
    quality: mythic
relationships:
  - REL-000001
identity_links:
  - link: succeeds
    entity: ENT-000002
    certainty: disputed
    source: EVT-000002
canonical_state:
  location: ENT-000010
  condition: "Sound, aside from a poorly healed left shoulder that stiffens in cold weather."
  capabilities: "Skilled tracker and archer; competent field medic; reads three regional scripts."
  personality: "Cautious and loyal; grown quieter and more guarded since the siege."
  situation: "Escorting a wounded envoy north, avoiding the coast road."
```
