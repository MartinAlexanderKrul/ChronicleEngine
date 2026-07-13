# Campaign Changelog - Prototype Beta

**Campaign:** Prototype Beta - **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) indexing campaign state changes.

---

## Record

```yaml
id: REC-000024
canonical_record: REC-000024
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000014
  event_time: "Year 312 RR, early summer"
  record_time: "2026-07-13T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Changes

**Year 312 RR, early summer - Campaign initialized.**
Prototype Beta campaign created in the Verra world as a new campaign instance after the closed Prototype Alpha campaign. Protagonist Kael Travis (`ENT-000021`) established with serviceable sword (`ENT-000022`). Starting Knowledge States recorded: marsh-fever dispute, rumor-only and undecided (`REL-000020`); tempered glass, awareness-only (`REL-000021`); rivermason's mortar, no awareness (`REL-000022`). Starting Order exposure relationship recorded (`REL-000023`). Arrival event `EVT-000014`. No gameplay resolved yet; no checkpoint taken.

**Repository allocation.**
Allocated campaign identifiers in `system/ID_REGISTRY.md` in the same initialization change: `ENT-000021` through `ENT-000022`, `REC-000018` through `REC-000025`, `EVT-000014`, and `REL-000020` through `REL-000023`.

**Checkpoint 0001 - First watch saved.**
Promoted live play from arrival through the lower-passage first-watch crisis. Added campaign-local figures `ENT-000023` through `ENT-000029`, events `EVT-000015` through `EVT-000017`, relationships `REL-000024` through `REL-000028`, updated Kael's condition/equipment/objectives/current state, and created `campaigns/prototype_beta/saves/900_CHECKPOINT_0001/`.

**Repository allocation.**
Advanced `system/ID_REGISTRY.md` in the same persistence change for checkpoint 0001: `ENT-000023` through `ENT-000029`, `EVT-000015` through `EVT-000017`, and `REL-000024` through `REL-000028`.
