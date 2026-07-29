# World Ledger - Prototype Beta

**Campaign:** Prototype Beta - **World:** Verra (`worlds/verra/`)
**Ledger:** Canonical Record (`011` Section 8) holding the protagonist's Knowledge States and the campaign's view of world state.

This ledger records what is visible and accessible to the campaign. It references authoritative Verra records; it does not duplicate objective world canon. Objective reality is owned by the world-layer records cited below and is never restated here as a campaign fact.

---

## Record

```yaml
id: REC-000019
canonical_record: REC-000019
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - REL-000020
  - REL-000021
  - REL-000022
  - REL-000028
```

```yaml
id: REL-000028
canonical_record: REC-000019
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000017
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000021
  - ENT-000013
type: exposure-state
qualities: "Possible fever-contact exposure during lower-passage security work. Edrin Vale touched Kael's sleeve and coughed near/against his front. Kael removed the contaminated shirt carefully without new neck/jaw exposure and washed repeatedly with vinegar under Sister Avel's direction."
state: "Possible exposure; no symptoms observed at checkpoint. Objective transmission remains unestablished by campaign canon."
```

---

## Protagonist-Accessible World Facts

References into authoritative Verra records. These are pointers, not copies; the cited record remains the sole owner of each fact.

| Fact visible to Kael | Authoritative record | Kael's access |
|----------------------|----------------------|---------------|
| The town of Halden | `ENT-000002` (`worlds/verra/210_PLACES.md`) | Present; direct |
| The Order of the Ember, and its civic authority | `ENT-000004`, `REL-000010` | Public; immediately relevant |
| The public execution of Ilse Varn | `ENT-000018`, `REC-000017` | Public recent history |
| The Halden Athenaeum | `ENT-000003` | Public |
| The Glaziers' Guild and its famed glass | `ENT-000005`, `ENT-000012` | Public (products only) |
| That the fever finding was validated by the Athenaeum | `EVT-000005` | Public rumor of the dispute |
| That the Order condemned the finding as heresy | `EVT-000006` | Public rumor of the dispute |
| The current marsh-fever outbreak in the lower quarters | `REC-000017` | Public observable condition |

Not visible to Kael at start: the Guild's tempering method itself, Corvane's evidentiary detail, the private events of Prototype Alpha, the true cause of the fever, Berrec's mortar knowledge, and the contents of Corvane's treatise.

**Objective reality of marsh-fever transmission (`ENT-000013`) is not asserted here.** The subject's authoritative record is `worlds/verra/230_KNOWLEDGE_SUBJECTS.md`. This campaign holds only Kael's Knowledge State about it, below.

---

## Kael's Knowledge States

```yaml
id: REL-000020
canonical_record: REC-000019
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000021
  - ENT-000013
type: knowledge-state
qualities: "Access: rumor and public dispute only. Possession: none. Understanding: low. Acceptance: undecided. Awareness: knows fever is active and that the Athenaeum's tainted-water claim is banned by the Order."
state: "Kael knows the fever dispute exists and that speaking on the forbidden claim is politically dangerous. He does not know whether the claim is true."
```

```yaml
id: REL-000021
canonical_record: REC-000019
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000021
  - ENT-000012
type: knowledge-state
qualities: "Access: public product reputation only. Possession: none. Understanding: none. Awareness: knows Halden glass is unusually durable and guild-controlled."
state: "Aware of the product, not the method."
```

```yaml
id: REL-000022
canonical_record: REC-000019
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
endpoints:
  - ENT-000021
  - ENT-000014
type: knowledge-state
qualities: "Access: none. Possession: none. Understanding: none. Awareness: none at campaign start."
state: "Kael has no starting knowledge of the rivermason's mortar or Berrec's fading craft."
```
