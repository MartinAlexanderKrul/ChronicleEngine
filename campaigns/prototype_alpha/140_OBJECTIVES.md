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
Status: **progressing** — Ilse has presented the letter to Corvane and accessed the Athenaeum's collection directly. Formal status (admission, credentials) not yet established.

**OBJ-2 — Investigate the marsh-fever finding.**
Examine Corvane's evidence (the treatise and maps, `ENT-000015`) and form an independent view of the finding (`ENT-000013`). The finding's truth is not assumed; Ilse's own conclusion is unformed but informed.
Status: **actively underway** — Ilse has witnessed Corvane's maps, studied the *Observations* manuscript, and has committed to investigation.

**OBJ-3 — Avoid provoking the Order.**
Work without violating the Order's ban on teaching the finding (`EVT-000006`) or its civic authority in Halden (`REL-000010`).
Status: **tension rising** — Ilse is now visibly associated with Corvane and the forbidden research. The Order will learn of her presence within 1-2 days (per Maelis's warning, EVT-000009). This objective will require active strategy.
