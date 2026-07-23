# Seed Events — Reikon

**Ledger:** Canonical Record (`011` Section 8) holding the founding Events that serve as provenance sources for Reikon's canon (Rules Sections 3.5, 12).
**Status:** Active — instantiated as canonical world content (2026-07-13).

Events are immutable once instantiated; other records cite them as `source`.

---

## Record

```yaml
id: REC-000034
canonical_record: REC-000034
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - EVT-000018
  - EVT-000019
  - EVT-000020
  - EVT-000021
  - EVT-000022
  - EVT-000023
  - EVT-000024
```

---

## The Rupture

```yaml
id: EVT-000018
canonical_record: REC-000034
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 0 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Event
importance: mythic
event_time: "Year 0 AR"
summary: "The first Rifts opened over a dozen cities at once and the first people Awakened. Origin unknown and disputed (ENT-000045). The founding event of the age; the calendar counts from it."
```

---

## Founding of the Hunters' Authority

```yaml
id: EVT-000019
canonical_record: REC-000034
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 3 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Event
importance: historical
event_time: "Year 3 AR"
summary: "The Aldish Republic charters the Hunters' Authority to license, grade, and direct the Awakened after the chaotic early years."
```

---

## Founding of the Meridian Guild

```yaml
id: EVT-000020
canonical_record: REC-000034
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 9 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Event
importance: historical
event_time: "Year 9 AR"
summary: "Private hunters incorporate as the Meridian Guild, turning Rift-clearance and the core trade into a business and, in time, a near-monopoly in Verholt."
```

---

## Founding of the Aurology Institute

```yaml
id: EVT-000021
canonical_record: REC-000034
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 12 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Event
importance: historical
event_time: "Year 12 AR"
summary: "Scholars establish the Aurology Institute to study the Ledger and the Rifts empirically, over early objections that some things were not meant to be examined."
```

---

## The Rise of the Vigil

```yaml
id: EVT-000022
canonical_record: REC-000034
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 18 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Event
importance: historical
event_time: "Year 18 AR"
summary: "After a devastating collapse, the Vigil of the Rupture coalesces into a mass movement holding the Rupture a judgment and empirical inquiry into it a profanity."
```

---

## The Danesmoor Collapse

```yaml
id: EVT-000023
canonical_record: REC-000034
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR, early"
  record_time: "2026-07-13T00:00:00Z"
type: Event
importance: historical
event_time: "Year 31 AR, early"
summary: "A Rift in the Danesmoor ward collapsed before clearance, overrunning a residential district (ENT-000033). The Authority's legitimacy crisis, and the pressure on the Kessler Rift, both date from here."
```

---

## The Institute's Deep-Rift Discovery

```yaml
id: EVT-000024
canonical_record: REC-000034
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Event
importance: archived
event_time: "Year 31 AR"
summary: "An Institute team recovers a core from an unusually deep Rift (ENT-000050). Its properties give Dr. Vane a finding about the Rupture (ENT-000045) that the Vigil means to bury — the spark of the present crisis. Currently known to few."
```
