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

---

## EVT-000012 — Ilse's Commitment Decision: Double-Agent Strategy

```yaml
id: EVT-000012
canonical_record: REC-000014
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000012-session-play
  event_time: "Year 312 RR, late spring (evening, day 8)"
  record_time: "2026-07-13T00:00:00Z"
kind: decision
importance: current
participants:
  - ENT-000018
  - ENT-000007
description: "Ilse, recovered and mentally clear, commits to Corvane's investigation and adopts a double-agent strategy: she will accept the Order's recruitment offer as cover for continued intelligence-gathering and research. She conducts independent field investigation to verify Corvane's evidence before making this commitment. She concludes: tainted water is the fever vector. She will present acceptance to the Order and position herself as their agent while maintaining secret collaboration with Corvane and the Athenaeum."
```

**Evening, Day 8 — Infirmary, Athenaeum.**

Corvane enters the infirmary and asks directly: "Are you still committed to this work?"

Ilse presents the Order's letter and proposes a strategy: accept their recruitment offer, position herself as their agent gathering intelligence, while maintaining secret collaboration with Corvane. She states this will provide access to Order knowledge, timeline, and enforcement methods that would otherwise be unavailable.

Corvane expresses caution but recognizes the tactical advantage. He agrees.

Before finalizing her decision, Ilse demands access to Corvane's complete evidence. She examines his case notes, maps, and the *Observations* manuscript with a scholar's eye, searching for cherry-picked data, sampling bias, or contradictions. She finds the evidence is methodologically sound within its limits but not absolutely certain—it is suggestive and compelling, not proof.

Unsatisfied with records alone, Ilse insists on field investigation. She takes a borrowed satchel and spends the evening in the river ward, moving through fever-afflicted households, tracing water sources, asking patients where they draw, examining for exceptions to the pattern.

She finds no exceptions.

She locates one case that crosses the line (Thera from the merchant quarter), but traces the source: a sister who worked in the lower ward. Mixed exposure, not a true exception.

She returns to Corvane's study near midnight, certain: **tainted water is the fever vector.**

With this personal conclusion grounded in her own investigation, she commits fully to the double-agent strategy. Corvane formalizes the plan: Ilse will answer the Order's letter affirmatively, will move into their structure, will learn their concerns and methods, and will report back through Maelis as intermediary. The collaboration will appear abandoned but will continue in secret.

Ilse's knowledge state on the marsh-fever advances from "witnessed but undecided" to **"accepted and decided"** through independent verification.

The commitment is made. The strategy is set. The risk is substantial.

---

## EVT-000013 — Ilse's Final Spiral: Assault, Detention, Trial, Execution

```yaml
id: EVT-000013
canonical_record: REC-000014
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000013-session-play
  event_time: "Year 312 RR, late spring (days 13-17)"
  record_time: "2026-07-13T00:00:00Z"
kind: sequence
importance: terminal
participants:
  - ENT-000018
  - ENT-000008
  - ENT-000006
description: "Ilse's double-agent position at the Order's hospice unraveled within hours. She assaulted a guard in the anteroom, lied about authorization, threatened the guard's position, and attacked Solenne. She refused recovery options and legal clemency. She was convicted and executed publicly."
```

**Day 13, Midday — Hospice Anteroom, Assault**

Ilse, waiting for a Prelate's summons, attacked a guard and claimed the Prelate had authorized a security test. The bluff failed. She was detained and escorted to Solenne. When confronted, she stated she disliked the guard and would kill her.

Solenne called for her arrest.

**Days 13-16 — Detention and Trial**

Ilse resisted arrest, struck guards, fought restraint. Her fingers were broken as enforcement. She spent four days in the hospice detention cells, weakened and isolated. When offered continued service with confinement, she refused. Solenne delivered her to the city guard.

The magistrate's hearing lasted minutes. Conviction was immediate. Sentence: execution by hanging. Public square, three days hence.

**Day 17 — Public Square, Execution**

Ilse was led to the gallows. Hundreds witnessed. She made no defense, no plea, no final words. She disengaged from the process entirely. The rope took her life at midday.

**Campaign Status: CLOSED**

This instantiation of Prototype Alpha—the baseline campaign with Ilse Varn as protagonist—has concluded with the protagonist's death. The double-agent strategy lasted less than one day before exposure. Escape and legal options were available but refused. All subsequent events cascaded from her choice to assault Solenne rather than manage the situation through deception or negotiation.

The fever finding remains unresolved in Halden. The Athenaeum-Order conflict continues. Corvane's research is suppressed. The campaign's opening pressures (fever outbreak, institutional conflict, political tension) persist without the player character's agency to affect them.
