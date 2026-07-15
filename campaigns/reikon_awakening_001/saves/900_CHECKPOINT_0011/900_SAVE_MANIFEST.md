# Save Manifest — Reikon Awakening 001 — Checkpoint 0011

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0011` — Institute director's name corrected to Dr. Ambrose Teague
**Kind:** Canonical record-repair checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000055
canonical_record: REC-000055
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000037
  event_time: "Year 31 AR, predating the first expedition; no fictional time elapsed"
  record_time: "2026-07-15T17:31:04Z"
  uncertainty: "Whether Teague and Vane know each other, and how the Institute's directorship relates to its lead-researcher post, remain unestablished. Teague has never appeared in a played scene."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: record-repair
  created: "2026-07-15T17:31:04Z"
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
  parent_save: REC-000054
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

The Checkpoint 0010 fiction exactly, with one name corrected. **No fictional time elapses and no value is recalculated.** Daedalus remains Level 2 at 31/130 XP, 88/105 Health, and 7/14 Mana in the cleared Warehouse 7 basement chamber; the suspended core remains energetically bonded and unextracted, and Kalens's same-day obligation remains met and unhonoured.

`EVT-000037` corrects `ENT-000061`, the Aurology Institute's director, from "Dr. Kael Venn" to **Dr. Ambrose Teague**, under Runtime Section 8.1 as a recording error. The name entered canon through the 2026-07-14 Data Model migration and was never spoken, written, or referenced in any played scene; "Venn" appears in no transcript in `exports/`, and the legacy sheet records his last interaction as "Pre-expedition (didn't visit before expedition)".

**No former alias is recorded.** Data Model Section 5.1's rename procedure models an in-world rename — a person who changed their name — which never happened here. The director has always been Teague and the record was wrong, so `ENT-000061` carries exactly one `current` alias. The identifier is unchanged: identity is the `ENT-` number, never the name.

The ruling also corrects `EVT-000036`, whose uncertainty envelope claimed Daedalus had met the director. He has met neither him nor Vane. `EVT-000036`'s substantive finding — that the two are distinct figures — stands, and its bytes are unchanged.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000055`) and for `EVT-000037`. Repository-level identity state is never copied into or rolled back with a checkpoint.

The legacy non-canonical files `050_CAMPAIGN_LOG.md` and `100_CHARACTER_DAEDALUS.md` still read "Dr. Kael Venn" and are not captured here; checkpoints snapshot the eight canonical ledgers only. Both declare themselves historical presentation that must not be updated as a second source of truth, and they now stand as evidence of the superseded name.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. Checkpoints 0008, 0009, and 0010 have the same property. A diff against live is expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.6 and resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

The Repository Validation Gate passed against live state before this immutable snapshot was created: 206 persistent-object blocks across 56 live Markdown files, every referenced identifier resolved, and all five repository test suites green. Snapshot copies were hash-verified against their live sources after capture; this manifest does not self-adjudicate that result.

---

**Checkpoint Created:** 2026-07-15T17:31:04Z
**Status:** READY FOR RESTORATION
