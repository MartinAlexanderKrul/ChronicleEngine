# Save Manifest — Reikon Awakening 001 — Checkpoint 0006

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0006` — Session 2 cross-ledger staleness repair and kill-count ruling
**Kind:** Canonical repair checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000050
canonical_record: REC-000050
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000032
  event_time: "Year 31 AR, first expedition, post-combat exploration and exit"
  record_time: "2026-07-14T21:15:00Z"
  uncertainty: "Whether any creature remains inside the Rift is unestablished; the basement chamber is located but unentered."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: repair
  created: "2026-07-14T21:15:00Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.3 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000049
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
  warnings: "No baseline checkpoint exists; /restart remains unavailable. Checkpoint 0005 (REC-000049) is restorable but captured stale record state; prefer this checkpoint."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

The same Session 2 fiction as Checkpoint 0005, with the record layer corrected to match it. **No fiction changed.** Every repair aligns records to events that were already played and already attested; nothing was added to or removed from the story.

At capture, Daedalus (`ENT-000051`) is at Hunters' Association headquarters in Verholt, resting after treatment. Health is 60/100 (treated, active recovery from a moderate left shoulder/collarbone wound). Mana is 7/13 (active recovery). XP is 55/100. He carries 61 cores (`ENT-000060`) and a natural scale plate (`ENT-000065`) harvested from the pack leader. Warehouse 7 is uncleared and unattended: six creature kills are confirmed dead and harvested, and the basement core chamber is located but unentered, with roughly six days of the stability window remaining.

## Why This Checkpoint Exists

An audit of the Session 2 checkpoint commit (`4039de3`) found Checkpoint 0005's snapshot byte-faithful to its live ledgers and its manifest conforming. The defect was upstream of the snapshot: the promotion barrier had been applied only to the five ledgers the interpreter judged the session to have touched, so three ledgers whose state the session's own events had changed were never opened, and their stale content was captured into an immutable snapshot.

Repaired in the live ledgers now captured here:

- **`110_WORLD_LEDGER.md` (`REC-000039`)** — `ENT-000064` listed Daedalus as an occupant of a Rift he had left, and described a core chamber "not yet reached" and Broodlings "retreating" after both facts had changed. Now records the located basement chamber, the harvested kills, and no identified occupant, with the remaining-population uncertainty preserved in the provenance envelope.
- **`120_INVENTORY_AND_OWNERSHIP.md` (`REC-000040`)** — seven carried items were located in Warehouse 7 (`ENT-000064`) while their possessor was across the city, and `ENT-000065` was absent from the record's `subjects`. All eight holdings now carry one consistent region descriptor and the subject list is complete.
- **`140_OBJECTIVES.md` (`REC-000042`)** — the MAIN objective recorded neither the basement discovery nor the suspension of the expedition for treatment.
- **`180_CURRENT_STATE.md` (`REC-000045`)** — the restoration entry point contradicted itself in four places: it placed Daedalus at the Association while "Immediate environment" still described the warehouse floor; "What Is Active" said Broodlings "remain inside the Rift" against its own Unresolved 2; "Next Session Must Know" reported 5/13 Mana against its own 7/13; and "Restore Point" still named Checkpoint 0004 as latest.
- **`160_CAMPAIGN_CHRONICLE.md` (`REC-000043`)** — ruling `EVT-000032` added; Chronicle Position composition corrected.

## Ruling Captured — `EVT-000032`

`EVT-000031` records "seven cores from six earlier kills"; the earlier kills are five. Classified under Runtime Section 8.1 as a transcription error rather than a canon conflict, on four independent corroborating sources (`EVT-000026`/`ENT-000052`: two Broodlings; `EVT-000028`/`ENT-000053`: three Swarmers; the changelog's "five creatures defeated"; the objectives ledger's "Five earlier creatures and the pack leader"), with the Session 1 transcript audit confirming 2 + 3.

Correct canon: six kills total — two Broodlings, three Swarmers, and the pack leader — five preceding the pack-leader combat. **Core counts are unaffected and stand as recorded:** 4 + 7 = 11, corroborated by the purse quantity of 61.

`EVT-000031` is immutable (`011_ENGINE_DATA_MODEL.md` Section 2.4). Its bytes are unchanged in both Checkpoint 0005 and live canon; it is retained as historical evidence of how the error was recorded, and `EVT-000032` governs where the two disagree.

## Known Limitation Carried, Not Fixed

Inventory location is recorded as a region descriptor (`"Hunters' Association HQ, Verholt"`) rather than a Place identifier. This is permitted by `011_ENGINE_DATA_MODEL.md` Section 9 (`Location → place Entity ID, or a region descriptor`), but it is not the referential form the resource template shows, and it is a symptom of the deferred limitation recorded as **PA-002 — Location Granularity**: the Association HQ has no Place entity, and carried inventory has no structural "on person" representation because a Character is neither a Place nor a container. The repair makes all eight holdings *consistent* and *not stale*; it does not resolve PA-002, which is Data Model work and therefore foundational under Decision 069. It is recorded against Version 0.3 planning in the roadmap's Technical Debt.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000050`) and the ruling event (`EVT-000032`); repository-level identity state is never copied into or rolled back with a checkpoint.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.3 and resume from `180_CURRENT_STATE.md` (`REC-000045`).

## Validation

- Repository Validation Gate (`tools/validate_repository.ps1`) run against live state **before** this snapshot was created, per Decision 054: **PASSED** — 56 live Markdown files, 183 persistent-object blocks, 183 unique identifiers referenced, high-water marks `ENT-000065`, `REC-000050`, `EVT-000032`, `REL-000044`.
- All eight snapshot copies hash-verified byte-identical to their live counterparts at capture.
- Gate re-run after snapshot creation: PASSED.

---

**Checkpoint Created:** 2026-07-14T21:15:00Z
**Status:** READY FOR RESTORATION
