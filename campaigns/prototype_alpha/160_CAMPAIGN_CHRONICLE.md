# Campaign Chronicle — Prototype Alpha

**Campaign:** Prototype Alpha · **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) preserving campaign events in durable narrative form. It holds the campaign's Events and their narrative record.

---

## Record

```yaml
id: REC-000014
canonical_record: REC-000014
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - EVT-000008
  - EVT-000009
  - EVT-000010
  - EVT-000011
```

---

## EVT-000008 — Ilse Arrives in Halden

```yaml
id: EVT-000008
canonical_record: REC-000014
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
kind: arrival
importance: archived
participants:
  - ENT-000018
  - ENT-000002
description: "Ilse Varn, a newly licensed physician-scholar and outsider, arrives in Halden as the marsh-fever season begins, carrying a letter of introduction to the Athenaeum."
```

---

## EVT-000009 — Ilse Enters the Athenaeum and Meets Corvane

```yaml
id: EVT-000009
canonical_record: REC-000014
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000009-session-play
  event_time: "Year 312 RR, late spring (evening)"
  record_time: "2026-07-12T00:00:00Z"
kind: meeting
importance: current
participants:
  - ENT-000018
  - ENT-000006
  - ENT-000007
description: "Ilse presents her letter to Corvane at the Athenaeum after a direct encounter with Rector Maelis. She witnesses Corvane's evidentiary maps showing fever cases clustered around lower-ward water sources. She commits to investigation despite the Order's ban."
```

---

## EVT-000010 — Crisis Cascade

```yaml
id: EVT-000010
canonical_record: REC-000014
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000010-session-play
  event_time: "Year 312 RR, late spring (day 2, morning)"
  record_time: "2026-07-13T00:00:00Z"
kind: crisis
importance: archived
participants:
  - ENT-000018
  - ENT-000006
description: "Waking to the weight of her commitment, Ilse suffers an emotional crisis: she strikes her own head, then attacks Rector Maelis three times, all failing. Guards subdue her and she breaks into laughter. Maelis declines to punish her and orders her moved to the Athenaeum infirmary for rest and care rather than detention."
```

---

## EVT-000011 — Infirmary Interlude and the Order's Offer

```yaml
id: EVT-000011
canonical_record: REC-000014
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000011-session-play
  event_time: "Year 312 RR, late spring (days 2–8)"
  record_time: "2026-07-13T00:00:00Z"
kind: interlude
importance: current
participants:
  - ENT-000018
  - ENT-000006
  - ENT-000007
  - ENT-000008
description: "Over a week in the infirmary Ilse recovers as fever cases in the river ward escalate from two to seven or more. The Order of the Ember, under Prelate Solenne, sends a formal recruitment letter offering lodging, income, and protection contingent on abandoning Corvane and the Athenaeum. Maelis visits without reproach; Corvane waits. At week's end Corvane asks whether she remains committed; Ilse has read the Order's letter but has not yet answered (the pending answer is reserved as EVT-000012)."
```

---

## Chronicle

**Year 312 RR, late spring — Arrival.**
Ilse Varn reaches Halden on the river road as the first warmth stirs the marsh. She carries a physician's license, a case of instruments, and a letter of introduction to the Athenaeum, drawn to the town by word of a contested finding: that the marsh-fever spreads through tainted water. The Athenaeum is said to have validated the claim; the Order of the Ember has condemned it as heresy. Whether the claim is *true* is not known to her, nor recorded as settled — only that it is claimed, validated by one authority, condemned by another, and disputed in the streets.

**Evening, same day — The Athenaeum.**
Ilse enters the Athenaeum and moves directly to the library, drawn by the collection of medical works. She discovers and begins studying *Observations on Marsh-Fever*, a manuscript documenting the correlation between lower-ward water sources and fever cases. Rector Maelis encounters her studying the forbidden text and initially questions her presence; a direct exchange of accountability follows, and Maelis recognizes her connection to Corvane.

Maelis escorts Ilse to Corvane's study. There, Ilse presents her letter of introduction. Corvane shares his maps and the evidentiary pattern directly: cases cluster in a specific quarter-mile, all drawing from lower wells. He warns her that the Order's authority is real and that working against their ban carries costs. Ilse accepts these terms and commits to the investigation.

Two fever cases confirmed in the river ward as of afternoon. More are expected.

**Morning (Day 2) — Crisis Cascade (EVT-000010).**
After a night's rest, Ilse wakes to the full weight of commitment and experiences an emotional crisis. She strikes her head repeatedly, then makes three separate violent attacks on Rector Maelis. All fail. Guards subdue her. She experiences a psychological break (laughter). Maelis does not punish her; instead, he orders her moved to the Athenaeum infirmary for rest and care rather than detention.

**Days 2–8 — Interlude (EVT-000011).**
Ilse recovers in the infirmary. Fever cases escalate from 2 to 7+. The Order sends a formal recruitment letter offering lodging, income, and protection—contingent on abandoning Corvane and the Athenaeum. Theron leaves fresh *Observations* manuscript. Maelis visits with gifts and no reproach. Corvane waits.

At the end of the week, Corvane asks: "Are you still committed to this work?" Ilse has read the Order's letter. She has not yet answered.

Extended session checkpoint saved.
