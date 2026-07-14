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

- **2026-07-14 — Session 2: Warehouse exploration, looting, and medical treatment.** Daedalus followed retreating Broodling to discover the basement core chamber; looted all six creature kills for 11 cores total (inventory now 61); harvested natural scale plate from pack leader; exited Warehouse 7 and sought treatment at Hunters' Association; healer transitioned wound to treated/active recovery state; now resting at Association. EVT-000031 recorded. Mana recovered from 5 to 7; health recovery mode changed from paused to active; health recovery care changed from untreated to treated. Inventory updated with scale plate (ENT-000065) and adjusted core quantity.
- **2026-07-13 — Campaign initialized and first expedition begun.** Daedalus licensed and dispatched to Warehouse 7.
- **2026-07-13 — Session 1 mid-expedition state saved.** Events `EVT-000025` through `EVT-000028`; five creatures defeated; XP 36/100; Health 100/100; Mana recovered to 13/13.
- **2026-07-14 — Data Model conformance migration.** Reconstructed the live campaign into standard Canonical Records `REC-000038` through `REC-000045`; correctly defined existing campaign identifiers; added campaign-local figures and relationships; retained the immutable legacy checkpoint unchanged.
- **2026-07-14 — Reikon World Rule Profile activated.** Campaign state is governed by Reikon 0.1, including causal System progression and numeric System vitality.
- **2026-07-14 — Session 1 transcript committed; reconstruction verified.** The Session 1 gameplay transcript was added at `exports/play_export_0001.md`, giving the campaign tier-2 evidence for the first time. The 2026-07-14 conformance reconstruction was audited against it and confirmed faithful on every material fact: XP, kill counts, both resolution rolls, health, mana, location, inventory, and stats. Three discrepancies were logged without correction in `exports/README.md`. No canon changed.
- **2026-07-14 — `180_CURRENT_STATE.md` corrected and scoped.** Removed a false claim that the campaign was "resumable from immutable Checkpoint 001" — that checkpoint is not restorable. Trimmed the duplicated character, inventory, objective, relationship, and combat-history blocks, which are owned by `REC-000038`–`REC-000044`, leaving this ledger the Rules Section 13.2 role it is assigned: location, what is active, and what is unresolved. No state was lost; every trimmed fact has an owning record.
- **2026-07-14 — Checkpoint 0002 created; Checkpoint 001 quarantined.** `saves/900_CHECKPOINT_0002/` is the first conforming checkpoint for this campaign and its current restore point: full copies of all eight canonical ledgers, hash-verified read-back, conforming to the Rules Section 13.3 manifest contract. Its manifest's identifier is deliberately not cited here: identifiers defined only inside an immutable snapshot are invisible to the validator, which excludes `saves/`, so referencing one from live canon produces a dangling reference. Checkpoints are referenced by path until checkpoint scanning exists. `saves/900_CHECKPOINT_001/` is recorded as quarantined and non-restorable in `saves/README.md`; its contents are unchanged per Rules Section 13.2. **`/restart` (Redo) remains unavailable** — this campaign has no baseline checkpoint (Decision 053), and that gap is not closed by this work.
- **2026-07-14 — Session 2 state recovered from owner-supplied raw chat and training omission repaired; Checkpoint 0003 created.** Re-promoted the attested pack-leader combat as `EVT-000030`: pack leader dead, surviving Broodlings retreating, Daedalus at Health 60/100, Mana 5/13, XP 55/100, with a moderate left shoulder/collarbone wound and bloodied sword. Promoted the previously omitted Session 1 morning regimen as `EVT-000029` and structured Daedalus's physical capabilities: foundational Swordsmanship demonstrated in combat, plus practiced aerobic and bodyweight conditioning. Reikon World Rule Profile 0.2 now governs mandatory per-exchange resource/XP settlement, compact one-time notifications, and inventory-complete `/system` rendering. `saves/900_CHECKPOINT_0003/` is the current conforming restore point; Checkpoint 0002 remains restorable as the prior branch point.
- **2026-07-14 — Deterministic Health recovery activated; Checkpoint 0004 created.** Reikon World Rule Profile 0.3 defines natural recovery rates by injury severity and care, exact per-exchange integer settlement, treatment and healing-potion effects, wound/HP separation, interruption behavior, and maximum-Health changes. Daedalus remains at 60/100 Health in unchanged fiction; his moderate self-stabilized wound begins with Health recovery paused and zero fractional carry while the Rift remains threatening. `saves/900_CHECKPOINT_0004/` is the current restore point; Checkpoint 0003 remains the immutable pre-migration restore point.
