# NPCs and Factions — Prototype Alpha

**Campaign:** Prototype Alpha · **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) holding the campaign's relationships with world figures and factions.

The figures and institutions themselves are **world canon** (`worlds/verra/220_NOTABLE_FIGURES.md`, `worlds/verra/institutions/`); this ledger references them by identifier and owns only the campaign-specific **relationships** Ilse formed with them.

**CAMPAIGN STATUS: CLOSED** — Protagonist deceased. All relationships terminated.

---

## Record

```yaml
id: REC-000012
canonical_record: REC-000012
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - REL-000016
  - REL-000019
```

---

## Known Figures (references to world canon)

| Figure / Faction | Record | Ilse's contact | Status |
|------------------|--------|----------------|--------|
| Fellow Corvane | `ENT-000007` | Met in person (EVT-000009); shared evidence; double-agent strategy planned (EVT-000012) | No further contact after Day 8; unaware of Ilse's execution (presumed) |
| Rector Maelis | `ENT-000006` | Met in person (EVT-000009); protected during crisis; positioned as intermediary | No further contact after Day 8; unaware of Ilse's execution (presumed) |
| Prelate Solenne | `ENT-000008` | Met in person (Day 9); positioned Ilse at hospice; assaulted by Ilse (Day 13); ordered her arrest; testified at trial | Alive; marks from attempted strangulation (faded). Solenne's future relationship with Athenaeum unaffected; Ilse's death closed that incident. |
| Guildmaster Torv | `ENT-000009` | Never met |  |
| Master glazier Della | `ENT-000010` | Never met |  |
| Old mason Berrec | `ENT-000011` | Unknown to Ilse |  |
| The Athenaeum / Order / Guild | `ENT-000003` / `ENT-000004` / `ENT-000005` | Athenaeum: accessed library, met leadership; Order: briefly employed then executed; Guild: never contacted | Athenaeum-Order conflict continues unaffected by Ilse's death; institutional pressures persist. |

---

## Relationships (CLOSED)

```yaml
id: REL-000016
canonical_record: REC-000012
schema_version: "0.1.2"
status: terminated
provenance:
  source: EVT-000009
  event_time: "Year 312 RR, late spring (evening)"
  record_time: "2026-07-12T00:00:00Z"
  extended_provenance:
    - EVT-000010
    - EVT-000011
    - EVT-000012
    - EVT-000013
endpoints:
  - ENT-000018
  - ENT-000007
type: personal
qualities: "Collaboration based on shared conviction about fever transmission. Double-agent strategy formalized (EVT-000012). Ilse's double-agent position failed within hours (EVT-000013). No further contact after Day 8 (Ilse entered Order custody). Corvane unaware of Ilse's execution; presumed to believe her still positioned at Order hospice or lost to institutional pressure."
state: "TERMINATED BY PROTAGONIST DEATH — Day 17, Year 312 RR. Final state: intimate operational partnership severed by Ilse's assault on Solenne and subsequent detention/execution. No final communication between Corvane and Ilse. Corvane's reaction to Ilse's death: unknown."
```

```yaml
id: REL-000019
canonical_record: REC-000012
schema_version: "0.1.2"
status: terminated
provenance:
  source: EVT-000009
  event_time: "Year 312 RR, late spring (evening)"
  record_time: "2026-07-12T00:00:00Z"
  extended_provenance:
    - EVT-000010
    - EVT-000011
    - EVT-000012
    - EVT-000013
endpoints:
  - ENT-000018
  - ENT-000006
type: personal
qualities: "Protective institutional mediator. Maelis positioned as anchor at Athenaeum for double-agent strategy (EVT-000012). Relationship maintained through care and professional distance. No judgment, no questions."
state: "TERMINATED BY PROTAGONIST DEATH — Day 17, Year 312 RR. Final state: protective relationship severed when Ilse was arrested on Day 13. Maelis's role in Ilse's detention or execution: unknown (presumed Maelis was not consulted). Maelis's reaction to Ilse's death: unknown."
```
