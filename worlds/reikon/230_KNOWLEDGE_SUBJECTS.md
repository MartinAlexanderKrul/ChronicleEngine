# Knowledge Subjects — Reikon

**Ledger:** Canonical Record (`011` Section 8) holding Reikon's Knowledge Subjects and the holder Knowledge States about them (Rules Section 8).
**Status:** Active — instantiated as canonical world content (2026-07-13).

A Knowledge Subject persists as one subject; different holders keep divergent Knowledge States about it. These three carry Reikon's tensions — and, per Decision 051, the System's own workings are themselves a contested Knowledge Subject, not settled fact.

---

## Record

```yaml
id: REC-000028
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000045
  - ENT-000046
  - ENT-000047
  - REL-000034
  - REL-000035
  - REL-000036
  - REL-000037
  - REL-000038
  - REL-000039
```

---

## The Nature of the Ledger and the Rupture

```yaml
id: ENT-000045
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Discovery/Knowledge
scope: world
lifecycle: active
aliases:
  - name: "the nature of the Ledger and the Rupture"
    quality: current
canonical_state:
  claim: "What the Ledger is, where it came from, and whether the Rupture was authored or accidental."
  objective_truth: "NOT established. The world does not know, and this ledger does not record, the true origin. Divergent holder states below are beliefs and findings, not proven fact (Rules Section 2.2)."
  note: "Per Decision 051, the Ledger is a diegetic interface over emergent capability; its metaphysical origin is deliberately left unresolved as a live mystery."
```

---

## The Warden Class (a forbidden path)

```yaml
id: ENT-000046
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Discovery/Knowledge
scope: regional
lifecycle: active
aliases:
  - name: "the Warden Class"
    quality: current
canonical_state:
  claim: "A progression path that lets a bearer bind and command Rift-monsters rather than only kill them."
  status: "Outlawed by the Authority and condemned as profane by the Vigil; its practitioners are hunted. Whether it is truly dangerous or merely feared is disputed."
  note: "A generic 'forbidden class' hook; its powers are to be developed in play and remain bounded by Rules Sections 4–5 — no auto-win capability is assumed."
```

---

## The Forging of Grades

```yaml
id: ENT-000047
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Discovery/Knowledge
scope: local
lifecycle: active
aliases:
  - name: "the forging of Grades"
    quality: current
canonical_state:
  claim: "Techniques for falsifying a hunter's official Grade and license without the underlying capability."
  status: "Illegal; practiced by fixers such as Tallow (ENT-000039). Because a Grade is a recorded claim, not objective capability (Rules Section 2.2), a forged Grade can pass — until a Rift tests it."
```

---

## Holder Knowledge States

```yaml
id: REL-000034
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000043, ENT-000045]
type: knowledge-state
qualities: "Holder: the Aurology Institute (validator). State: empirical and partial. Its recovered deep-Rift core (ENT-000050) implies the Rupture was not a judgment but a physical event with an origin that can be studied. Unpublished; validated only to the Institute's own standard, not proven."
```

```yaml
id: REL-000035
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000044, ENT-000045]
type: knowledge-state
qualities: "Holder: the Vigil of the Rupture (restrictor). State: doctrinal. The Rupture was a judgment and the Ledger a covenant; empirical inquiry into it is profane and must be suppressed."
```

```yaml
id: REL-000036
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000041, ENT-000045]
type: knowledge-state
qualities: "Holder: the Hunters' Authority (pragmatist). State: agnostic-by-policy. It uses the Ledger and grades hunters; it does not ask what the Ledger is, and prefers the question unasked."
```

```yaml
id: REL-000037
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000031, ENT-000045]
type: knowledge-state
qualities: "Holder: the Verholt public (myth). State: mixed folklore — the Rupture as punishment, as accident, as opportunity; belief tracks fear and the news of the last collapse more than evidence."
```

```yaml
id: REL-000038
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000041, ENT-000046]
type: knowledge-state
qualities: "Holder: the Hunters' Authority. State: restriction/custody. Holds the Warden Class as outlawed knowledge; documents it only to suppress and prosecute it."
```

```yaml
id: REL-000039
canonical_record: REC-000028
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000039, ENT-000047]
type: knowledge-state
qualities: "Holder: Tallow (practitioner). State: applied and monopolized. Can forge a Grade in practice; keeps the method close as leverage."
```
