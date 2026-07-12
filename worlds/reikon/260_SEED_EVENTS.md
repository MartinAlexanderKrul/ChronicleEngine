# Seed Events — Reikon (Draft)

**Ledger:** Canonical Record (`011` Section 8) holding the founding Events that serve as provenance sources for Reikon's canon (Rules Sections 3.5, 12).
**Status:** DRAFT — non-canonical. Identifiers are draft-local tokens (prefixed `D-`) to be replaced by registry-allocated IDs on instantiation.

Events are immutable once instantiated; other records cite them as `source`.

---

## Record

```yaml
id: D-REC-09
canonical_record: D-REC-09
schema_version: "0.1.1"
status: draft
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-12T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - D-EVT-01
  - D-EVT-02
  - D-EVT-03
  - D-EVT-04
  - D-EVT-05
  - D-EVT-06
  - D-EVT-07
```

---

## The Rupture

```yaml
id: D-EVT-01
canonical_record: D-REC-09
schema_version: "0.1.1"
status: draft
type: Event
importance: mythic
event_time: "Year 0 AR"
summary: "The first Rifts opened over a dozen cities at once and the first people Awakened. Origin unknown and disputed (D-ENT-31). The founding event of the age; the calendar counts from it."
```

---

## Founding of the Hunters' Authority

```yaml
id: D-EVT-02
canonical_record: D-REC-09
schema_version: "0.1.1"
status: draft
type: Event
importance: historical
event_time: "Year 3 AR"
summary: "The Aldish Republic charters the Hunters' Authority to license, grade, and direct the Awakened after the chaotic early years."
```

---

## Founding of the Meridian Guild

```yaml
id: D-EVT-03
canonical_record: D-REC-09
schema_version: "0.1.1"
status: draft
type: Event
importance: historical
event_time: "Year 9 AR"
summary: "Private hunters incorporate as the Meridian Guild, turning Rift-clearance and the core trade into a business and, in time, a near-monopoly in Verholt."
```

---

## Founding of the Aurology Institute

```yaml
id: D-EVT-04
canonical_record: D-REC-09
schema_version: "0.1.1"
status: draft
type: Event
importance: historical
event_time: "Year 12 AR"
summary: "Scholars establish the Aurology Institute to study the Ledger and the Rifts empirically, over early objections that some things were not meant to be examined."
```

---

## The Rise of the Vigil

```yaml
id: D-EVT-05
canonical_record: D-REC-09
schema_version: "0.1.1"
status: draft
type: Event
importance: historical
event_time: "Year 18 AR"
summary: "After a devastating collapse, the Vigil of the Rupture coalesces into a mass movement holding the Rupture a judgment and empirical inquiry into it a profanity."
```

---

## The Danesmoor Collapse

```yaml
id: D-EVT-06
canonical_record: D-REC-09
schema_version: "0.1.1"
status: draft
type: Event
importance: historical
event_time: "Year 31 AR, early"
summary: "A Rift in the Danesmoor ward collapsed before clearance, overrunning a residential district (D-ENT-04). The Authority's legitimacy crisis, and the pressure on the Kessler Rift, both date from here."
```

---

## The Institute's Deep-Rift Discovery

```yaml
id: D-EVT-07
canonical_record: D-REC-09
schema_version: "0.1.1"
status: draft
type: Event
importance: archived
event_time: "Year 31 AR"
summary: "An Institute team recovers a core from an unusually deep Rift (D-ENT-43). Its properties give Dr. Vane a finding about the Rupture (D-ENT-31) that the Vigil means to bury — the spark of the present crisis. Currently known to few."
```
