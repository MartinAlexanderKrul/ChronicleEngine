# Save Manifest — Reikon Awakening 001 — Checkpoint 0012

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0012` — Institute data handoff, Association clear report, night recovery, and the Emberbrand intervention
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000056
canonical_record: REC-000056
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000040
  event_time: "Year 31 AR, dawn following the Institute consultation"
  record_time: "2026-07-20T07:00:00Z"
  uncertainty: "The System gave no reason for granting Emberbrand. Whether or how Daedalus will spend it, and what the Institute's severance investigation will find, are undetermined."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: session-close
  created: "2026-07-20T07:00:00Z"
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
  parent_save: REC-000055
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
  warnings: "Emberbrand (active_intervention) is a live, expiring one-use resource — gone at the next sunrise whether spent or not. Kalens's same-day obligation (REL-000045) is now MET AND HONOURED. The Warehouse 7 core remains unextracted; the Institute holds Daedalus's data and one D-core (ENT-000074, with Dr. Soren) and has not yet reported findings back."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

Three events promoted since Checkpoint 0011, all played the same evening and the following dawn, with no combat and no XP award.

**`EVT-000038` — Institute data handoff and Association clear report.** Daedalus treated his wounds (salve and clean bandages, then a proper wash and redressing), changed into ordinary clothes, and called on Dr. Kalens at his home in the scholar's quarter within the standing early-evening window (`ENT-000078`). He gave Kalens the complete basement findings — the four D-grade Breakers, their coordinated guard formation, the bonded core's full measurements, and the failed direct-extraction attempt — fulfilling the same-day condition on `REL-000045`, now **met and honoured** rather than merely met. Kalens committed the Institute to genuine investigation: he is personally taking the severance problem, and routed one harvested D-core (`ENT-000074`, now recorded in Dr. Soren's possession) and the stability data (to Marta) onward. Daedalus separately logged the clear with the Hunters' Authority the same night, including the anomalous core and the Institute's involvement; the Rift's official status is now `contained, core pending specialist recovery`.

**`EVT-000039` — Night recovery, settled deterministically.** A light bodyweight workout tested the healing shoulder, ribs, and burns before sleep — an uncertain action resolved by the die (d100 78, no modifier steps, success; nothing reopened). A full night's rest then settled Health from 88/105 to full 105/105 and Mana from 7/14 to full 14/14 under Reikon's exact recovery formulas (206 Sections 3.3, 7.3); both remainders reset to zero at maximum, and no injury condition remains recorded.

**`EVT-000040` — Profile 0.6 recurrent intervention check; Emberbrand granted.** The first-safe-exchange-of-a-new-day trigger (Section 9.6) fired for the first time since Profile 0.6 activated. Roll d100 82, in the 76–88 band (finite technique or one-use skill); `intervention_silent_checks` was 0 and remains 0. Granted: **Emberbrand**, one use, no cost beyond the Ability's own Mana — Daedalus's next successful Fireball or Combustion Touch strikes at the critical-success (2.0×) damage band regardless of the natural roll, provided the cast succeeds; it does not touch the die. Expires at the next sunrise if unused. The System gave no reason, consistent with Section 9.2.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000056`) and for `EVT-000038`–`EVT-000040`. Repository-level identity state is never copied into or rolled back with a checkpoint.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. Checkpoints 0008 through 0011 have the same property. A diff against live is expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.6 and resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

The Repository Validation Gate passed against live state before this immutable snapshot was created: 209 persistent-object blocks across 56 live Markdown files, every referenced identifier resolved, registry high-water marks ENT-000080/REC-000056/EVT-000040/REL-000047. Snapshot copies were diff-verified byte-identical to their live sources after capture, save for the expected changelog divergence above; this manifest does not self-adjudicate that result.

---

**Checkpoint Created:** 2026-07-20T07:00:00Z
**Status:** READY FOR RESTORATION
