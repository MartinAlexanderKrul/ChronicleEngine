# NPCs and Factions — Prototype Alpha

**Campaign:** Prototype Alpha · **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) holding the campaign's relationships with world figures and factions.

The figures and institutions themselves are **world canon** (`worlds/verra/220_NOTABLE_FIGURES.md`, `worlds/verra/institutions/`); this ledger references them by identifier and owns only the campaign-specific **relationships** Ilse forms with them.

---

## Record

```yaml
id: REC-000012
canonical_record: REC-000012
schema_version: "0.1.1"
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

| Figure / Faction | Record | Ilse's contact |
|------------------|--------|----------------|
| Fellow Corvane | `ENT-000007` | Met in person (EVT-000009); shared evidence; collaborated through crisis and recovery; now partners in double-agent strategy (EVT-000012) |
| Rector Maelis | `ENT-000006` | Met in person (EVT-000009); protected Ilse during crisis; visiting during infirmary stay; knows commitment is being made but not details; remains cautiously collaborative |
| Prelate Solenne | `ENT-000008` | Not met in person; sent formal recruitment letter (EVT-000011, day 6); Ilse has read letter and will respond affirmatively (EVT-000012); position and recruitment expected to be formalized imminently |
| Guildmaster Torv | `ENT-000009` | Not yet met |
| Master glazier Della | `ENT-000010` | Not yet met |
| Old mason Berrec | `ENT-000011` | Unknown to Ilse |
| The Athenaeum / Order / Guild | `ENT-000003` / `ENT-000004` / `ENT-000005` | Known publicly; Order's position on fever research now understood through letter; Ilse positioning herself to join Order while maintaining Athenaeum collaboration |

---

## Relationships

```yaml
id: REL-000016
canonical_record: REC-000012
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000009
  event_time: "Year 312 RR, late spring (evening)"
  record_time: "2026-07-12T00:00:00Z"
  extended_provenance:
    - EVT-000010
    - EVT-000011
    - EVT-000012
endpoints:
  - ENT-000018
  - ENT-000007
type: personal
qualities: "Direct introduction by letter. Corvane has shared his evidence (maps, fever case correlations) with Ilse. Trust: foundational and operational. Corvane is exhausted but relieved to have an ally. Both understand institutional risk and Order opposition. Ilse has conducted independent investigation and reached same conclusion: tainted water is fever vector. Both now committed to double-agent strategy."
state: "Intimate collaboration. Corvane has entrusted Ilse with intelligence-gathering from inside the Order. Ilse has committed to investigation despite danger. Maelis will serve as intermediary anchor at Athenaeum. Relationship is now based on shared conviction (fever finding) and shared operational risk (double-agent positioning). EVT-000012: commitment decision made; strategy formalized."
```

```yaml
id: REL-000019
canonical_record: REC-000012
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000009
  event_time: "Year 312 RR, late spring (evening)"
  record_time: "2026-07-12T00:00:00Z"
  extended_provenance:
    - EVT-000010
    - EVT-000011
    - EVT-000012
endpoints:
  - ENT-000018
  - ENT-000006
type: personal
qualities: "Initial contact, professional. Maelis encountered Ilse studying forbidden manuscript; direct accountability exchange followed. Maelis recognized connection to Corvane and escorted her to his study. Later protected Ilse during crisis (did not punish, moved her to infirmary care). Has visited during recovery with gifts and no reproach. Knows Ilse is making a commitment decision; does not ask for specifics."
state: "Collaborative but carefully bounded. Maelis has positioned himself as institutional protector rather than investigator. He suspects Ilse and Corvane are coordinating but maintains professional distance. During EVT-000012: Ilse answered Corvane's commitment question (yes) while Maelis was not present; Maelis will be told only that Ilse is considering Order's offer seriously. Relationship: trust grounded in his demonstrated protection, but strategic distance maintained by mutual consent."
```
