# Campaign Changelog — Reikon Awakening 001

## Record

```yaml
id: REC-000044
canonical_record: REC-000044
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000025
  event_time: "Year 31 AR, first expedition"
  record_time: "2026-07-14T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Changes

- **2026-07-13 — Campaign initialized and first expedition begun.** Daedalus licensed and dispatched to Warehouse 7.
- **2026-07-13 — Session 1 mid-expedition state saved.** Events `EVT-000025` through `EVT-000028`; five creatures defeated; XP 36/100; Health 100/100; Mana recovered to 13/13.
- **2026-07-14 — Data Model conformance migration.** Reconstructed the live campaign into standard Canonical Records `REC-000038` through `REC-000045`; correctly defined existing campaign identifiers; added campaign-local figures and relationships; retained the immutable legacy checkpoint unchanged.
- **2026-07-14 — Reikon World Rule Profile activated.** Campaign state is governed by Reikon 0.1, including causal System progression and numeric System vitality.
- **2026-07-14 — Session 1 transcript committed; reconstruction verified.** The Session 1 gameplay transcript was added at `exports/play_export_0001.md`, giving the campaign tier-2 evidence for the first time. The 2026-07-14 conformance reconstruction was audited against it and confirmed faithful on every material fact: XP, kill counts, both resolution rolls, health, mana, location, inventory, and stats. Three discrepancies were logged without correction in `exports/README.md`. No canon changed.
- **2026-07-14 — `180_CURRENT_STATE.md` corrected and scoped.** Removed a false claim that the campaign was "resumable from immutable Checkpoint 001" — that checkpoint is not restorable. Trimmed the duplicated character, inventory, objective, relationship, and combat-history blocks, which are owned by `REC-000038`–`REC-000044`, leaving this ledger the Rules Section 13.2 role it is assigned: location, what is active, and what is unresolved. No state was lost; every trimmed fact has an owning record.
- **2026-07-14 — Checkpoint 0002 created; Checkpoint 001 quarantined.** `saves/900_CHECKPOINT_0002/` is the first conforming checkpoint for this campaign and its current restore point: full copies of all eight canonical ledgers, hash-verified read-back, conforming to the Rules Section 13.3 manifest contract. Its manifest's identifier is deliberately not cited here: identifiers defined only inside an immutable snapshot are invisible to the validator, which excludes `saves/`, so referencing one from live canon produces a dangling reference. Checkpoints are referenced by path until checkpoint scanning exists. `saves/900_CHECKPOINT_001/` is recorded as quarantined and non-restorable in `saves/README.md`; its contents are unchanged per Rules Section 13.2. **`/restart` (Redo) remains unavailable** — this campaign has no baseline checkpoint (Decision 053), and that gap is not closed by this work.
