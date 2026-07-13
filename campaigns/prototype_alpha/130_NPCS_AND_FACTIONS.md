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
```

---

## Known Figures (references to world canon)

| Figure / Faction | Record | Ilse's contact |
|------------------|--------|----------------|
| Fellow Corvane | `ENT-000007` | Met in person (EVT-000009); has shared maps and evidence; currently awaiting her commitment decision |
| Rector Maelis | `ENT-000006` | Met in person (EVT-000009); has protected Ilse during crisis; collaborative but cautious |
| Prelate Solenne | `ENT-000008` | Not met in person; sent formal recruitment letter (EVT-000011, day 6) |
| Guildmaster Torv | `ENT-000009` | Not yet met |
| Master glazier Della | `ENT-000010` | Not yet met |
| Old mason Berrec | `ENT-000011` | Unknown to Ilse |
| The Athenaeum / Order / Guild | `ENT-000003` / `ENT-000004` / `ENT-000005` | Known publicly; Order's position on fever research now understood through letter |

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
endpoints:
  - ENT-000018
  - ENT-000007
type: personal
qualities: "Direct introduction by letter. Corvane has shared his evidence (maps, fever case correlations) with Ilse. Trust: initial, conditional on shared commitment to evidence. Corvane is exhausted but relieved to have an ally. He is aware of institutional risk and Order opposition."
state: "Met in person (EVT-000009). Ilse experienced crisis cascade (EVT-000010); Corvane did not demand immediate answer but granted one week for rest and reflection. During interlude (EVT-000011), Ilse recovered while Corvane waited. Ilse read Order's recruitment letter. Corvane now asks final commitment question (EVT-000012 pending). Relationship is collaborative but dependent on Ilse's choice."
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
endpoints:
  - ENT-000018
  - ENT-000006
type: personal
qualities: "Initial contact, professional. Maelis tested Ilse's presence and intentions; recognized her connection to Corvane. Ilse responded directly. Maelis respected the directness. During crisis (EVT-000010), Ilse attacked Maelis three times; he did not strike back. He chose infirmary over cells, showing compassion despite injury. He has borne visible bruises from her violence. He is Rector of Athenaeum; his choice to protect Ilse creates institutional risk for him."
state: "Established. Neutral to cautiously collaborative becoming protective. Maelis is institutional authority; his support for Ilse's investigation is conditional but genuine. He is aware that his position depends partly on outcome of Ilse's commitment decision (EVT-000012)."
```
