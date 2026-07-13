# Notable Figures — Reikon

**Ledger:** Canonical Record (`011` Section 8) holding Reikon's notable Character entities and their institutional memberships.
**Status:** Active — instantiated as canonical world content (2026-07-13).

All figures are original to Reikon.

---

## Record

```yaml
id: REC-000027
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000034
  - ENT-000035
  - ENT-000036
  - ENT-000037
  - ENT-000038
  - ENT-000039
  - ENT-000040
  - REL-000029
  - REL-000030
  - REL-000031
  - REL-000032
```

---

## Director Kest

```yaml
id: ENT-000034
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Director Halvard Kest"
    quality: current
relationships:
  - REL-000029
canonical_state:
  role: "Director of the Hunters' Authority, Verholt bureau."
  capabilities: "Administration; hunter logistics; political survival. A former Grade II hunter, now largely deskbound."
  personality: "Institutionalist; protective of the Authority's mandate after Danesmoor."
  knowledge: "Knows the Kessler Rift is under-graded and under-resourced; fears another collapse and what it would cost the Authority."
```

---

## Chair Renn

```yaml
id: ENT-000035
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Ivo Renn"
    quality: current
  - name: "Chair Renn"
    quality: current
relationships:
  - REL-000030
canonical_state:
  role: "Chair of the Meridian Guild, Verholt's dominant hunting company."
  capabilities: "Commerce; core-market control; talent acquisition; leverage."
  personality: "Charming, acquisitive; treats Grades and licenses as assets."
  knowledge: "Knows which licenses are for sale and which hunters are quietly over- or under-graded; buys silence."
```

---

## Dr. Vane

```yaml
id: ENT-000036
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Dr. Sable Vane"
    quality: current
relationships:
  - REL-000031
canonical_state:
  role: "Lead researcher of the Aurology Institute."
  capabilities: "Empirical study of the Ledger and Rifts; recordkeeping; careful publication."
  personality: "Rigorous; increasingly alarmed by her own findings."
  knowledge: "Holds the Institute's recovered deep-Rift core (ENT-000050) and the finding it implies about the Rupture (ENT-000045); has not published, and knows the Vigil suspects."
```

---

## Hierophant Moren

```yaml
id: ENT-000037
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Hierophant Moren"
    quality: current
relationships:
  - REL-000032
canonical_state:
  role: "Verholt voice of the Vigil of the Rupture."
  capabilities: "Preaching; crowd movement; moral pressure on officials."
  personality: "Devout; certain the Rupture was a judgment; regards empirical study of the Ledger as profane."
  knowledge: "Knows the Institute has found something; means to see it suppressed before it spreads."
```

---

## Corin Vask

```yaml
id: ENT-000038
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Corin Vask"
    quality: current
canonical_state:
  role: "A celebrated Grade II hunter contracted to the Meridian Guild; a rival to the protagonist."
  capabilities: "High-Grade combat; publicity; a carefully managed reputation."
  personality: "Proud; image-conscious; not as secure in his Grade as the public believes."
  knowledge: "Aware his last two clears were quietly assisted; resents anyone who might expose it."
```

---

## Tallow

```yaml
id: ENT-000039
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Tallow"
    quality: cover
canonical_state:
  role: "A black-market fixer dealing in unlicensed tutelage, illicit Marks, and forged Grades (ENT-000047, ENT-000048)."
  capabilities: "Smuggling; document forgery; knowing who owes whom."
  personality: "Genial, amoral, useful."
  knowledge: "Can get a hunter graded up on paper — for a price and a debt."
```

---

## Sergeant Roan

```yaml
id: ENT-000040
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: local
lifecycle: active
aliases:
  - name: "Edda Roan"
    quality: current
  - name: "Sergeant Roan"
    quality: former
canonical_state:
  role: "A veteran Grade III hunter and the protagonist's first mentor; runs low-Grade clearance crews for the Authority."
  capabilities: "Practical hunting; teaching; reading a Rift's danger; keeping green hunters alive."
  personality: "Blunt, protective, unimpressed by Grades and publicity."
  knowledge: "Has survived long enough to distrust the Ledger's numbers and to notice when a hunter's page does not match their deeds."
```

---

## Memberships

```yaml
id: REL-000029
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000034, ENT-000041]
type: membership
qualities: "Rank: Director (leadership of the Authority's Verholt bureau)."
```

```yaml
id: REL-000030
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000035, ENT-000042]
type: membership
qualities: "Rank: Chair (leadership of the Meridian Guild)."
```

```yaml
id: REL-000031
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000036, ENT-000043]
type: membership
qualities: "Rank: Lead researcher of the Aurology Institute."
```

```yaml
id: REL-000032
canonical_record: REC-000027
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 31 AR"
  record_time: "2026-07-13T00:00:00Z"
endpoints: [ENT-000037, ENT-000044]
type: membership
qualities: "Rank: Hierophant (Verholt leadership of the Vigil)."
```
