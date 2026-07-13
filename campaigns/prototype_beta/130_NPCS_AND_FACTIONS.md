# NPCs and Factions - Prototype Beta

**Campaign:** Prototype Beta - **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) holding the campaign's relationships with world figures and factions.

The figures and institutions themselves are world canon (`worlds/verra/220_NOTABLE_FIGURES.md`, `worlds/verra/institutions/`); this ledger references them by identifier and owns only campaign-specific relationships Kael has formed or is immediately subject to.

---

## Record

```yaml
id: REC-000021
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - REL-000023
```

---

## Known Figures and Factions (references to world canon)

| Figure / Faction | Record | Kael's contact | Status |
|------------------|--------|----------------|--------|
| Prelate Solenne | `ENT-000008` | No personal contact | Publicly known as the Prelate who survived Ilse Varn's assault |
| The Order of the Ember | `ENT-000004` | No personal contact; subject to civic-religious authority | Authority strengthened by the Varn affair |
| The Halden Athenaeum | `ENT-000003` | No personal contact | Under pressure after association with Ilse Varn and the fever dispute |
| Fellow Corvane | `ENT-000007` | No personal contact | Publicly associated with the forbidden fever finding |
| Rector Maelis | `ENT-000006` | No personal contact | Publicly known as Athenaeum leadership |
| The Halden Glaziers' Guild | `ENT-000005` | No personal contact | Potential employer or obstacle with money and guarded craft |
| Guildmaster Torv | `ENT-000009` | No personal contact | Guild leadership |
| Master Glazier Della | `ENT-000010` | No personal contact | Guild master |
| Old Mason Berrec | `ENT-000011` | Unknown to Kael at start | No campaign contact |

---

## Relationships

```yaml
id: REL-000023
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000021
  - ENT-000004
type: social-authority-exposure
qualities: "No personal contact. Kael is an armed outsider entering a town where the Order's civic-religious authority is accepted and recently reinforced by Ilse Varn's public execution."
state: "Potential friction: Kael's choleric temperament and armed trade make Order authority immediately relevant even before direct contact."
```
