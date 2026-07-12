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
| Fellow Corvane | `ENT-000007` | Introduced by letter (REL-000016); not yet met in person |
| Rector Maelis | `ENT-000006` | Not yet met |
| Prelate Solenne | `ENT-000008` | Not yet met |
| Guildmaster Torv | `ENT-000009` | Not yet met |
| Master glazier Della | `ENT-000010` | Not yet met |
| Old mason Berrec | `ENT-000011` | Unknown to Ilse |
| The Athenaeum / Order / Guild | `ENT-000003` / `ENT-000004` / `ENT-000005` | Known publicly |

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
endpoints:
  - ENT-000018
  - ENT-000007
type: personal
qualities: "Direct introduction by letter. Corvane has shared his evidence (maps, fever case correlations) with Ilse. Trust: initial, conditional on shared commitment to evidence."
state: "Met in person. Ilse has committed to investigation; Corvane has warned of Order opposition."
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
endpoints:
  - ENT-000018
  - ENT-000006
type: personal
qualities: "Initial contact, professional. Maelis tested Ilse's presence and intentions; recognized her connection to Corvane. Ilse responded directly. Maelis respected the directness."
state: "Newly established. Neutral to cautiously collaborative. Maelis is institutional authority; his support for Ilse's investigation is conditional."
```
