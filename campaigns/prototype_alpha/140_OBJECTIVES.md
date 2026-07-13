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
Status: **progressing but complicated** — Ilse has presented the letter to Corvane and accessed the Athenaeum's collection directly. She was moved to infirmary during extended session and has been there one week under Athenaeum care. Formal status (credentials, admission) not yet established. Dependent on continued relationship with Corvane. EVT-000012 decision: Ilse has committed to Corvane's investigation, but now pursuing double-agent cover (accepting Order recruitment). This will complicate her standing at the Athenaeum if discovered. Objective remains active but now bifurcated: she must maintain both positions.

**OBJ-2 — Investigate the marsh-fever finding.**
Examine Corvane's evidence (the treatise and maps, `ENT-000015`) and form an independent view of the finding (`ENT-000013`).
Status: **advanced to personal conclusion** — Ilse has witnessed Corvane's maps, studied the *Observations* manuscript, and conducted independent field investigation in the river ward. She has traced water sources for 13+ fever cases and found no exceptions to the pattern. **Ilse concludes: tainted water is the fever vector.** Her personal medical conclusion is formed and certain. She has not yet applied this knowledge medically (has not advised against the wells, has not publicly endorsed the finding). Next step: investigate while positioned as Order agent.

**OBJ-3 — Manage the Order relationship and institutional pressure.**
Work without violating the Order's ban on teaching the finding (`EVT-000006`) or its civic authority in Halden (`REL-000010`); or navigate the conflict if direct violation becomes unavoidable.
Status: **transformed by EVT-000012 decision** — The Order is aware of Ilse's presence and has offered recruitment. Ilse has decided to accept the offer as cover for continued investigation. This objective is no longer "avoid provoking the Order" but "position herself as Order agent to gather intelligence and learn their concerns." This is a higher-risk strategy but may provide access to Order knowledge that would otherwise be unavailable. Objective remains active: she must maintain this cover credibly.

---

## Objective Tension Resolution

OBJ-2 and OBJ-3 are now integrated through the double-agent strategy rather than in conflict. OBJ-1 remains at risk if the double position is discovered.
