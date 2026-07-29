# World Ledger — Prototype Alpha

**Campaign:** Prototype Alpha · **World:** Verra (`worlds/verra/`)
**Ledger:** Canonical Record (`011` Section 8) holding the protagonist's Knowledge States and the campaign's view of world state.

This ledger records **what is visible and accessible to the campaign** — the world facts Ilse can presently see, and her holder-specific Knowledge States. It **references authoritative Verra records; it does not duplicate objective world canon.** Objective reality is owned by the world-layer records cited below and is never restated here as a campaign fact.

---

## Record

```yaml
id: REC-000010
canonical_record: REC-000010
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - REL-000017
  - REL-000018
```

---

## Protagonist-Accessible World Facts

References into authoritative Verra records. These are pointers, not copies; the cited record remains the sole owner of each fact.

| Fact visible to Ilse | Authoritative record | Ilse's access |
|----------------------|----------------------|---------------|
| The town of Halden | `ENT-000002` (`worlds/verra/210_PLACES.md`) | Present; direct |
| The Halden Athenaeum | `ENT-000003` | Public; her destination |
| The Order of the Ember, and its civic authority | `ENT-000004`, `REL-000010` | Public |
| The Glaziers' Guild and its famed glass | `ENT-000005`, `ENT-000012` | Public (products only) |
| That the fever finding was validated by the Athenaeum | `EVT-000005` | Public rumor of the dispute |
| That the Order condemned the finding as heresy | `EVT-000006` | Public rumor of the dispute |
| Fellow Corvane, author of the finding | `ENT-000007` | Known by reputation; letter of introduction |

Not visible to Ilse at start: the Guild's tempering method itself (`ENT-000012` is known only as a product), the rivermason's mortar and Berrec (`ENT-000014`, `ENT-000011`), and the evidentiary detail of the fever finding.

**Objective reality of the marsh-fever transmission (`ENT-000013`) is not asserted here.** The subject's authoritative record is `worlds/verra/230_KNOWLEDGE_SUBJECTS.md`. This campaign holds only Ilse's Knowledge State about it, below.

---

## Ilse's Knowledge States

```yaml
id: REL-000017
canonical_record: REC-000010
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000018
  - ENT-000013
type: knowledge-state
qualities: "Access: public and second-hand. Understanding: partial. Validation: none (unformed). Acceptance: undecided. Application: none yet. Ilse knows the claim and the public dispute, not the evidence."
state: "An outsider's provisional awareness; her own view is not yet formed."
```

```yaml
id: REL-000018
canonical_record: REC-000010
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
endpoints:
  - ENT-000018
  - ENT-000012
type: knowledge-state
qualities: "Access: none. Possession: none. Understanding: none. Awareness: knows Halden glass is superior and guild-controlled."
state: "Aware of the product, not the method."
```
