# Inventory and Ownership — Prototype Alpha

**Campaign:** Prototype Alpha · **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) holding Ilse's individually-tracked resources. Generic goods are noted as quantities without identifiers (`011` Section 11).

---

## Record

```yaml
id: REC-000011
canonical_record: REC-000011
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000019
  - ENT-000020
```

---

## Physician's Instrument Case

```yaml
id: ENT-000019
canonical_record: REC-000011
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Resource
subtype: instruments
scope: personal
lifecycle: active
aliases:
  - name: "Ilse's physician's instrument case"
    quality: current
canonical_state:
  category: "Physician's instruments; tools of her practice."
  condition: Good
  ownership: "ENT-000018 (legal)"
  possession: "ENT-000018"
  location: ENT-000002
  provenance_chain: "Ilse's own instruments, acquired during her training."
```

---

## Letter of Introduction

```yaml
id: ENT-000020
canonical_record: REC-000011
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR, early spring"
  record_time: "2026-07-11T00:00:00Z"
type: Resource
subtype: letter
scope: personal
lifecycle: active
aliases:
  - name: "Ilse's letter of introduction"
    quality: current
canonical_state:
  category: "Document; a letter introducing Ilse to the Halden Athenaeum."
  condition: Good (seal broken, letter read)
  ownership: "ENT-000018 (legal)"
  possession: "ENT-000007 (Corvane, archiving)"
  location: "ENT-000003 (Athenaeum, Corvane's study, desk)"
  event_archived: "EVT-000009 (presented by Ilse to Corvane)"
  provenance_chain: "Letter written by Ilse's mentor at Valdis; delivered to Corvane on day 1 evening; now formally archived in Corvane's records"
  provenance_chain: "Written by Ilse's college mentor to introduce her to the Athenaeum (ENT-000003)."
```

---

## Generic Holdings

- A modest purse of coin (quantity; not individually tracked).
- Travel clothing and personal effects (quantity; not individually tracked).
