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
  - ENT-000023
  - ENT-000024
  - ENT-000025
  - ENT-000026
  - ENT-000027
  - ENT-000028
  - ENT-000029
  - REL-000024
  - REL-000025
  - REL-000026
  - REL-000027
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

---

## Campaign-Local Figures

```yaml
id: ENT-000023
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000015
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: campaign-local
lifecycle: active
aliases:
  - name: "Tollen Var"
    quality: current
canonical_state:
  role: "Market-exchange job contact connected to a merchant escort notice."
  kael_contact: "Rejected Kael after Kael declared himself 'the man who kills riots,' then had his account books pushed/scattered by Kael during the altercation."
  attitude_to_kael: "Angry and alarmed."
```

```yaml
id: ENT-000024
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000016
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: campaign-local
lifecycle: active
aliases:
  - name: "Sister Avel"
    quality: current
canonical_state:
  role: "Order sister overseeing lower-passage hospice security and contamination discipline."
  kael_contact: "Hired/received Kael for his first night watch, gave instructions, corrected his assumptions, directed washing after fever contact, and is currently responding to the wrong-stair intruder alert."
```

```yaml
id: ENT-000025
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000016
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: campaign-local
lifecycle: active
aliases:
  - name: "Brant"
    quality: current
canonical_state:
  role: "Senior lower-passage door man for the Order hospice."
  description: "Older, thick-armed, scar across one cheek, cudgel at belt; dry manner."
  kael_contact: "First-watch partner. Approved Kael's ugly but correct line-holding during the Vale family appeal; currently returned to the line after checking the wrong-stair report."
```

```yaml
id: ENT-000026
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000017
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: campaign-local
lifecycle: active
aliases:
  - name: "Edrin Vale"
    quality: current
canonical_state:
  role: "Fever patient behind the marked lower-passage door."
  condition: "Coughing, glassy-eyed, urgent to reach his wife Lysa."
  kael_contact: "Tried to leave the fever room after hearing Lysa. Grabbed Kael's sleeve and coughed near/against him before being forced back by intimidation and the door being secured."
```

```yaml
id: ENT-000027
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000017
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: campaign-local
lifecycle: active
aliases:
  - name: "Lysa Vale"
    quality: current
canonical_state:
  role: "Edrin Vale's wife; came to the receiving line with a shivering boy."
  kael_contact: "Appealed to Kael to see Edrin; Kael repeated Brant's line and refused passage. She remains in the receiving hall, distressed but behind the line."
```

```yaml
id: ENT-000028
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000017
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: campaign-local
lifecycle: active
aliases:
  - name: "Unidentified wrong-stair man"
    quality: descriptive
canonical_state:
  role: "Hooded man in a dark cloak who came down the wrong stair during Kael's first watch."
  kael_contact: "Claimed he was looking for Sister Avel, looked toward the marked fever door, and withdrew when Brant and Kael ordered him up."
  status: "Not found leaving by the main front hall; Avel believes he may still be inside the house."
```

```yaml
id: ENT-000029
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000017
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
type: Character
scope: campaign-local
lifecycle: active
aliases:
  - name: "Caldus"
    quality: current
canonical_state:
  role: "Order man or attendant sent to check the wrong-stair report."
  kael_contact: "Indirect; reported no hooded man found on the upper stair and no main-door exit seen."
```

```yaml
id: REL-000024
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000016
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000021
  - ENT-000004
type: employment-duty
qualities: "Day-hire night security for the Order hospice/lower passage. Pay by day; better rate for nights/lower passage. Sword peace-bound; no steel unless ordered or life plainly at risk; obey clergy; hold family/patient line; no forbidden fever doctrine talk."
state: "Active first watch."
```

```yaml
id: REL-000025
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000016
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000021
  - ENT-000024
type: working-contact
qualities: "Sister Avel supervises Kael's lower-passage conduct and contamination response."
state: "Tense but functional; Avel has seen Kael hold the door and follow washing orders."
```

```yaml
id: REL-000026
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000016
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000021
  - ENT-000025
type: working-contact
qualities: "Brant is Kael's senior door man on first watch."
state: "Cautious respect after Kael held the family line; Brant remains dry and watchful."
```

```yaml
id: REL-000027
canonical_record: REC-000021
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000017
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000026
  - ENT-000027
type: family
qualities: "Spouses separated by the hospice fever-room line."
state: "Edrin heard Lysa and tried to reach her; Lysa remains outside the line with a shivering boy."
```
