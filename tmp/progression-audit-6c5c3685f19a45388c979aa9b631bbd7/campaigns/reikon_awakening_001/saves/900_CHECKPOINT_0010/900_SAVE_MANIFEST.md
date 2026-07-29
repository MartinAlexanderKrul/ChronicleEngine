# Save Manifest — Reikon Awakening 001 — Checkpoint 0010

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0010` — Institute-consultation omission repair and Venn/Vane disambiguation
**Kind:** Canonical record-repair checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000054
canonical_record: REC-000054
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000035
  event_time: "Year 31 AR, recovery and Institute consultation; no fictional time elapsed"
  record_time: "2026-07-15T16:44:48Z"
  uncertainty: "Kalens's street and house number are unnarrated, and the fate of the earlier slip naming the Institute's runner is unestablished. Marta's collapse correlation is an unvalidated hypothesis and is not implemented by any Profile 0.6 rule."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: record-repair
  created: "2026-07-15T16:44:48Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.6 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000053
  canonical_continuation: true
  branch: "session-1-main"
included_ledgers:
  - REC-000038
  - REC-000039
  - REC-000040
  - REC-000041
  - REC-000042
  - REC-000043
  - REC-000044
  - REC-000045
compatibility:
  status: compatible
  warnings: "No active System intervention exists at capture; the silence counter is zero and the Warehouse 7 life-burn anomaly remains expired. No baseline checkpoint exists; /restart remains unavailable. Kalens's same-day reporting obligation (REL-000045) is MET and unhonoured at capture."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

The Checkpoint 0009 fiction exactly, with the record defects that survived it repaired. **No fictional time elapses across this checkpoint and no value is recalculated.** Daedalus remains Level 2 at 31/130 XP, 88/105 Health, and 7/14 Mana in the cleared Warehouse 7 basement chamber; all four D-cores are harvested and the suspended Rift core remains energetically bonded and unextracted.

What differs from Checkpoint 0009 is what canon *records*, not what happened:

- **`EVT-000035`** repairs an under-promotion in `EVT-000033`, which had promoted the Institute consultation as relationships while dropping the artifacts and conditions the same scene established. It adds `ENT-000078` (Kalens's address slip, carried since the visit and previously in no ledger), `ENT-000079` (the Institute–Vigil tension over deep-Rift study, previously held only as an adjective on `ENT-000071`), and `ENT-000080` (Marta's core-depth collapse correlation). It restores the standing same-day reporting obligation to `REL-000045`, where it is recorded as **met and unhonoured**, and repairs a stale `situation` on `ENT-000062`.
- **`EVT-000036`** rules campaign-local Dr. Kael Venn (`ENT-000061`) and world-layer Dr. Sable Vane (`ENT-000036`) distinct figures, closing a latent ambiguity that invited a forbidden silent collapse of two identifiers.

Marta's correlation is captured as a hypothesis Daedalus was told. It is **not** an engine rule; the Rift's stability window is unchanged at approximately five days.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000038`)
- `110_WORLD_LEDGER.md` (`REC-000039`)
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000040`)
- `130_NPCS_AND_FACTIONS.md` (`REC-000041`)
- `140_OBJECTIVES.md` (`REC-000042`)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000043`)
- `170_CHANGELOG.md` (`REC-000044`)
- `180_CURRENT_STATE.md` (`REC-000045`)

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000054`) and for the identifiers `EVT-000035`, `EVT-000036`, and `ENT-000078`–`ENT-000080`. Repository-level identity state is never copied into or rolled back with a checkpoint.

The `EVT-000036` correction to `worlds/reikon/230_KNOWLEDGE_SUBJECTS.md` (three blocks whose `type` read `Knowledge/Discovery`, inverted from the Data Model's closed set) is world-layer and is deliberately **not** captured here. Checkpoints snapshot campaign ledgers only.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. Checkpoints 0008 and 0009 have the same property. A diff against live is therefore expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.6 and resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

The Repository Validation Gate passed against live state before this immutable snapshot was created: 205 persistent-object blocks across 56 live Markdown files, every referenced identifier resolved, and all five repository test suites green. Snapshot copies were hash-verified against their live sources after capture; this manifest does not self-adjudicate that result.

---

**Checkpoint Created:** 2026-07-15T16:44:48Z
**Status:** READY FOR RESTORATION
