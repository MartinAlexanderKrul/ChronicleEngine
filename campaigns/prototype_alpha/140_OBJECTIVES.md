# Objectives — Prototype Alpha

**Campaign:** Prototype Alpha · **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) tracking Ilse's objectives.

Objectives are tracked concerns, not a quest system (Decision 030). They are campaign content, not persistent entities, so this ledger owns no entities of its own; it references world and campaign records.

---

## Record

```yaml
id: REC-000013
canonical_record: REC-000013
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Active Objectives

**OBJ-1 — Secure a footing at the Athenaeum.**
Present the letter of introduction (`ENT-000020`) at the Athenaeum (`ENT-000003`); obtain permission to study.
Status: **progressing** — Ilse has presented the letter to Corvane and accessed the Athenaeum's collection directly. She was moved to infirmary during extended session and has been there one week under Athenaeum care. Formal status (credentials, admission) not yet established. Dependent on continued relationship with Corvane and outcome of EVT-000012 (commitment decision).

**OBJ-2 — Investigate the marsh-fever finding.**
Examine Corvane's evidence (the treatise and maps, `ENT-000015`) and form an independent view of the finding (`ENT-000013`). The finding's truth is not assumed; Ilse's own conclusion is unformed but informed.
Status: **actively underway** — Ilse has witnessed Corvane's maps, studied the *Observations* manuscript, and has had one week (days 2-8) to process the evidence. Her personal medical analysis NOT YET PERFORMED. Conclusion remains undecided (by design — player has not yet concluded). Next step depends on EVT-000012 outcome.

**OBJ-3 — Avoid provoking the Order.**
Work without violating the Order's ban on teaching the finding (`EVT-000006`) or its civic authority in Halden (`REL-000010`).
Status: **tension rising / now explicitly threatened** — The Order is aware of Ilse's presence (sent recruitment letter on day 6 of interlude). Order has offered incentives (lodging, stipend) but with clear contingency: abandonment of Athenaeum collaboration. Ilse is now at a decision point where OBJ-3 and OBJ-2 are in direct conflict. This objective can no longer be achieved without choosing which loyalty to prioritize.
