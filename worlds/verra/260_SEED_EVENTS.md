# Seed Events — Verra

**Ledger:** Canonical Record (`011` Section 8) holding the world's seed Events.

This is a multi-object ledger of immutable Events (`EVT-`). They are the provenance sources that other Verra records point at. Each Event was authored as part of the prototype world seed; its `provenance.source` is therefore `ruling` (the authoring decision that established Verra), while its `event_time` is the in-world time the event occurred.

---

## Record

```yaml
id: REC-000008
canonical_record: REC-000008
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - EVT-000001
  - EVT-000002
  - EVT-000003
  - EVT-000004
  - EVT-000005
  - EVT-000006
  - EVT-000007
```

---

## EVT-000001 — Founding of Halden

```yaml
id: EVT-000001
canonical_record: REC-000008
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 40 RR"
  record_time: "2026-07-11T00:00:00Z"
kind: founding
importance: historical
participants:
  - ENT-000002
description: "Halden was established at the Verran ford. Its earliest river works were raised with the rivermasons' durable mortar."
```

---

## EVT-000002 — Founding of the Order of the Ember

```yaml
id: EVT-000002
canonical_record: REC-000008
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 20 RR"
  record_time: "2026-07-11T00:00:00Z"
kind: founding
importance: historical
participants:
  - ENT-000004
description: "The Order of the Ember was established. Over generations it gained recognized civic-religious authority in Halden."
```

---

## EVT-000003 — Founding of the Halden Athenaeum

```yaml
id: EVT-000003
canonical_record: REC-000008
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 180 RR"
  record_time: "2026-07-11T00:00:00Z"
kind: founding
importance: historical
participants:
  - ENT-000003
description: "The Athenaeum was chartered as a college of natural philosophy, validating findings under its own standard of evidence."
```

---

## EVT-000004 — Chartering of the Glaziers' Guild and Tempering Monopoly

```yaml
id: EVT-000004
canonical_record: REC-000008
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
kind: founding
importance: historical
participants:
  - ENT-000005
  - ENT-000012
description: "The Glaziers' Guild was chartered with a monopoly on Halden glasswork. Its tempering method has been held since as a guarded craft, taught only by apprenticeship and never published."
```

---

## EVT-000005 — Athenaeum Validation of the Marsh-Fever Finding

```yaml
id: EVT-000005
canonical_record: REC-000008
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 311 RR"
  record_time: "2026-07-11T00:00:00Z"
kind: validation
importance: historical
participants:
  - ENT-000003
  - ENT-000007
  - ENT-000013
description: "Fellow Corvane's finding that the marsh-fever spreads through tainted water was validated by the Athenaeum under its evidentiary standard, and recorded in a treatise. Validation is the Athenaeum's, not objective truth."
```

---

## EVT-000006 — The Order's Condemnation of the Fever Finding

```yaml
id: EVT-000006
canonical_record: REC-000008
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 311 RR"
  record_time: "2026-07-11T00:00:00Z"
kind: ruling
importance: historical
participants:
  - ENT-000004
  - ENT-000013
description: "The Order of the Ember condemned the marsh-fever finding as heresy against its doctrine of affliction-as-trial, and forbade its teaching within Halden. Restriction does not establish that the finding is false."
```

---

## EVT-000007 — Decline of the Rivermason Line

```yaml
id: EVT-000007
canonical_record: REC-000008
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 300–312 RR (ongoing)"
  record_time: "2026-07-11T00:00:00Z"
kind: decline
importance: historical
participants:
  - ENT-000011
  - ENT-000014
description: "The rivermason line dwindled to a single aging holder, Berrec, without apprentices. The mortar method faces passive extinction; only a masons' festival custom preserves a degraded fragment of the practice."
```
