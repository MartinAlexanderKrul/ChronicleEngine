# Knowledge Subjects — Verra

**Ledger:** Canonical Record (`011` Section 8) holding the world's Knowledge Subjects (`Discovery/Knowledge` entities) and the holder-specific Knowledge States (relationships) about them.

The normative principle (Rules Section 8.1): **Knowledge Subjects persist; Knowledge States change.** Each subject below is one persistent entity. Each Knowledge State is a relationship between a holder and a subject, carrying the qualitative dimensions of Rules Section 8.2. Objective reality is not any holder's state and is not stored as one.

---

## Record

```yaml
id: REC-000003
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000012
  - ENT-000013
  - ENT-000014
  - REL-000001
  - REL-000002
  - REL-000003
  - REL-000004
  - REL-000005
  - REL-000006
  - REL-000007
  - REL-000008
  - REL-000009
```

---

## Subject — the Halden Tempering Method

```yaml
id: ENT-000012
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
  uncertainty: "The method's first devising predates the Guild's charter; its origin is not precisely recorded."
type: Discovery/Knowledge
subtype: technique
scope: local
lifecycle: active
aliases:
  - name: "the Halden tempering method"
    quality: current
relationships:
  - REL-000001
  - REL-000002
  - REL-000003
canonical_state:
  domain: "Glassmaking; a technique for unusually durable glass."
  lifecycle_stage: adoption
  validation_status: "Practically proven within the Guild; its theory is unpublished, so it is neither publicly validated nor disproven."
  holders:
    - ENT-000005
    - ENT-000010
  restriction: "privately taught"
```

---

## Subject — Marsh-Fever Waterborne Transmission

```yaml
id: ENT-000013
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000005
  event_time: "Year 311 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Discovery/Knowledge
subtype: theory
scope: regional
lifecycle: active
aliases:
  - name: "marsh-fever waterborne transmission"
    quality: current
relationships:
  - REL-000004
  - REL-000005
  - REL-000006
  - REL-000007
canonical_state:
  domain: "Medicine; the transmission of the marsh-fever through tainted water."
  lifecycle_stage: validation
  validation_status: "Validated by the Athenaeum under its own standard; condemned by the Order as heresy; publicly disputed. Validation is holder-specific, not objective proof."
  holders:
    - ENT-000003
    - ENT-000007
    - ENT-000004
  restriction: "censored"
```

---

## Subject — the Rivermason's Mortar

```yaml
id: ENT-000014
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000001
  event_time: "Year 40 RR"
  record_time: "2026-07-11T00:00:00Z"
  uncertainty: "Ancient; the making is now only partly known and held by a single aging mason."
type: Discovery/Knowledge
subtype: technique
scope: local
lifecycle: declining
aliases:
  - name: "the rivermason's mortar"
    quality: current
relationships:
  - REL-000008
  - REL-000009
canonical_state:
  domain: "Masonry; a durable hydraulic mortar used in Halden's oldest river works."
  lifecycle_stage: loss
  validation_status: "Demonstrated in surviving structures, but no longer fully reproducible."
  holders:
    - ENT-000011
  restriction: "privately taught"
```

---

## Knowledge States

```yaml
id: REL-000001
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000005
  - ENT-000012
type: knowledge-state
qualities: "Possession: full. Understanding: high (in practice). Validation: practically proven internally. Application: high. Transmission reach: within-guild, by apprenticeship only. Restriction: theory unrecorded and secret. Claimed intellectual ownership: monopoly."
state: "The Guild holds and works the method while keeping its theory unpublished."
```

```yaml
id: REL-000002
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000010
  - ENT-000012
type: knowledge-state
qualities: "Understanding: high, in practice. Application: high. Transmission: bound by guild secrecy."
state: "Della can work the method but is bound not to teach it outside the Guild."
```

```yaml
id: REL-000003
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000002
  - ENT-000012
type: knowledge-state
qualities: "Access: none. Possession: none. Understanding: none. Awareness: the public knows the panes exist and are superior."
state: "Halden sees the product but not the method."
```

```yaml
id: REL-000004
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000005
  event_time: "Year 311 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000003
  - ENT-000013
type: knowledge-state
qualities: "Validation: institutionally accepted. Understanding: high. Application: taught within the Athenaeum. Restriction: none internally."
state: "The Athenaeum treats the finding as validated under its own standard."
```

```yaml
id: REL-000005
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000005
  event_time: "Year 311 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000007
  - ENT-000013
type: knowledge-state
qualities: "Understanding: high. Validation: personally confirmed. Application: advocates publication."
state: "Corvane holds the finding in detail and presses to publish it."
```

```yaml
id: REL-000006
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000006
  event_time: "Year 311 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000004
  - ENT-000013
type: knowledge-state
qualities: "Validation: rejected. Acceptance: condemned as heresy. Restriction: teaching prohibited in Halden."
state: "The Order holds a rejecting state and restricts the finding; this is custody and authority, not a change to what is true."
```

```yaml
id: REL-000007
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000006
  event_time: "Year 311 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000002
  - ENT-000013
type: knowledge-state
qualities: "Acceptance: disputed. Understanding: partial and rumor-borne. The public is swayed between the Athenaeum and the Order."
state: "Halden is divided over the finding."
```

```yaml
id: REL-000008
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000007
  event_time: "Year 300–312 RR (ongoing)"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000011
  - ENT-000014
type: knowledge-state
qualities: "Understanding: partial and fading. Application: limited. Transmission: none (no apprentice). Preservation quality: degrading."
state: "Berrec is the last holder, and even his knowledge is now imperfect; passive extinction is imminent."
```

```yaml
id: REL-000009
canonical_record: REC-000003
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000007
  event_time: "Year 300–312 RR (ongoing)"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000002
  - ENT-000014
type: knowledge-state
qualities: "Application: partial, via a masons' festival custom. Understanding: absent. Preservation: mythologized."
state: "The public keeps a fragment of the practice as custom without understanding why it works."
```
