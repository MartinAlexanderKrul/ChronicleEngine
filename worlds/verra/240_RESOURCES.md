# Resources — Verra

**Ledger:** Canonical Record (`011` Section 8) holding the world's individually-tracked Resource entities (`011` Section 11). Generic goods are not tracked here.

Each resource is a Knowledge Asset or artifact tied to a Knowledge Subject: the treatise records the fever finding, the pane exemplifies the tempering method, and the fragment is a surviving trace of the mortar. Custody of a record is not custody of truth (Rules Section 8.8).

---

## Record

```yaml
id: REC-000004
canonical_record: REC-000004
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000015
  - ENT-000016
  - ENT-000017
```

---

## Corvane's Fever Treatise

```yaml
id: ENT-000015
canonical_record: REC-000004
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000005
  event_time: "Year 311 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Resource
subtype: manuscript
scope: regional
lifecycle: active
aliases:
  - name: "Corvane's fever treatise"
    quality: current
canonical_state:
  category: "Manuscript; a Knowledge Asset (§7.2) recording the marsh-fever finding (ENT-000013)."
  condition: Good
  ownership: "ENT-000007 (legal)"
  possession: "ENT-000007"
  location: ENT-000003
  provenance_chain: "Authored by Corvane during the Athenaeum's validation of the finding (EVT-000005)."
```

---

## The Guild Tempered-Pane Exemplar

```yaml
id: ENT-000016
canonical_record: REC-000004
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Resource
subtype: crafted good
scope: local
lifecycle: active
aliases:
  - name: "the Guild tempered-pane exemplar"
    quality: current
canonical_state:
  category: "Crafted good; a demonstration pane exemplifying the tempering method (ENT-000012)."
  condition: Excellent
  ownership: "ENT-000005 (legal)"
  possession: "ENT-000005"
  location: ENT-000002
  provenance_chain: "Produced by the Guild as a demonstration of the tempering method; held in the guildhall."
```

---

## A Rivermason Mortar Fragment

```yaml
id: ENT-000017
canonical_record: REC-000004
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000001
  event_time: "Year 40 RR"
  record_time: "2026-07-11T00:00:00Z"
  uncertainty: "Ancient; a surviving trace rather than a documented sample."
type: Resource
subtype: material sample
scope: local
lifecycle: active
aliases:
  - name: "a rivermason mortar fragment"
    quality: current
canonical_state:
  category: "Material sample; a surviving trace of the rivermason's mortar (ENT-000014)."
  condition: Worn
  ownership: "ENT-000011 (practical)"
  possession: "ENT-000011"
  location: ENT-000002
  provenance_chain: "Cut from an original rivermason wall in Halden's old works; kept by Berrec."
```
