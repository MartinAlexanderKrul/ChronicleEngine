# Notable Figures — Verra

**Ledger:** Canonical Record (`011` Section 8) holding the world's notable Character entities and their institutional membership relationships.

Membership relationships (`REL-000011`–`REL-000015`) are owned here. Knowledge-State relationships that these figures participate in are referenced here but owned by `230_KNOWLEDGE_SUBJECTS.md`.

---

## Record

```yaml
id: REC-000002
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000006
  - ENT-000007
  - ENT-000008
  - ENT-000009
  - ENT-000010
  - ENT-000011
  - REL-000011
  - REL-000012
  - REL-000013
  - REL-000014
  - REL-000015
```

---

## Rector Maelis

```yaml
id: ENT-000006
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Rector Maelis"
    quality: current
relationships:
  - REL-000011
canonical_state:
  location: ENT-000002
  condition: "Elderly but sound."
  capabilities: "Administration; natural philosophy; cautious institutional politics."
  personality: "Institutionalist; protective of the Athenaeum's standing."
  knowledge: "Aware of the validated fever finding and the Order's condemnation; wary of open conflict."
  situation: "Balancing the Athenaeum's validation against the Order's civic authority."
```

---

## Fellow Corvane

```yaml
id: ENT-000007
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Fellow Corvane"
    quality: current
relationships:
  - REL-000012
  - REL-000005
canonical_state:
  location: ENT-000002
  condition: "Sound."
  capabilities: "Medicine; empirical investigation; recordkeeping."
  personality: "Rigorous and stubborn."
  knowledge: "Holds the validated marsh-fever finding (ENT-000013) in detail; authored the treatise (ENT-000015)."
  situation: "Defending the finding and seeking to publish it despite the Order's ban."
```

---

## Prelate Solenne

```yaml
id: ENT-000008
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Prelate Solenne"
    quality: current
relationships:
  - REL-000013
canonical_state:
  location: ENT-000002
  condition: "Sound."
  capabilities: "Doctrine; preaching; governance."
  personality: "Devout; regards the fever claim as impious."
  knowledge: "Knows the finding exists and what it claims; rejects it on doctrine."
  situation: "Enforcing the ban on teaching the finding; guiding the faithful."
```

---

## Guildmaster Torv

```yaml
id: ENT-000009
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Guildmaster Torv"
    quality: current
relationships:
  - REL-000014
canonical_state:
  location: ENT-000002
  condition: "Sound."
  capabilities: "Glasswork; guild politics; trade."
  personality: "Guarded; protective of the monopoly."
  knowledge: "Knows the tempering method and the terms of its secrecy."
  situation: "Keeping the method secret; managing apprentices and rival interest."
```

---

## Master Glazier Della

```yaml
id: ENT-000010
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Della"
    quality: current
relationships:
  - REL-000015
  - REL-000002
canonical_state:
  location: ENT-000002
  condition: "Sound."
  capabilities: "Master-level glass tempering."
  personality: "Proud of the craft; conflicted about its secrecy."
  knowledge: "Understands the tempering method (ENT-000012) in practice."
  situation: "Works the method under guild secrecy."
```

---

## Old Mason Berrec

```yaml
id: ENT-000011
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000007
  event_time: "Year 312 RR"
  record_time: "2026-07-11T00:00:00Z"
type: Character
scope: local
lifecycle: declining
aliases:
  - name: "Berrec"
    quality: current
relationships:
  - REL-000008
canonical_state:
  location: ENT-000002
  condition: "Aged and failing."
  capabilities: "Failing mastery of the old rivermason mortar; general masonry."
  personality: "Proud and taciturn."
  knowledge: "Last living holder of the rivermason's mortar (ENT-000014), and even his knowledge is now imperfect."
  situation: "Aging without an apprentice; the method fading with him."
```

---

## Memberships

```yaml
id: REL-000011
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000003
  event_time: "Year 180 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000006
  - ENT-000003
type: membership
qualities: "Rank: Rector (leadership of the Athenaeum)."
```

```yaml
id: REL-000012
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000003
  event_time: "Year 180 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000007
  - ENT-000003
type: membership
qualities: "Rank: Fellow of the Athenaeum."
```

```yaml
id: REL-000013
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000002
  event_time: "Year 20 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000008
  - ENT-000004
type: membership
qualities: "Rank: Prelate (leadership of the Order)."
```

```yaml
id: REL-000014
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000009
  - ENT-000005
type: membership
qualities: "Rank: Guildmaster (leadership of the Guild)."
```

```yaml
id: REL-000015
canonical_record: REC-000002
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000004
  event_time: "Year 250 RR"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000010
  - ENT-000005
type: membership
qualities: "Rank: Master of the Guild."
```

---

## Historical / Deceased Figures

This ledger owns the living notable figures above. Figures who have passed into Halden's history are recorded in the Historical Layer, not duplicated here as canonical entities.

- **Ilse Varn** (`ENT-000018`) — an outsider physician publicly executed in Halden in the early summer of Year 312 RR after assaulting Prelate Solenne. Her canonical record is the closed Prototype Alpha campaign; the world's memory of her is held as an in-world historical record in `worlds/verra/300_HALDEN_RECENT_HISTORY.md` (REC-000017). Deceased.
