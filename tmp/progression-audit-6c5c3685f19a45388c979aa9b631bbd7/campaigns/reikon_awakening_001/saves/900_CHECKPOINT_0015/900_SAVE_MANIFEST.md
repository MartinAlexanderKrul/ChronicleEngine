# Save Manifest — Reikon Awakening 001 — Checkpoint 0015

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0015` — Rift-clear milestone XP formula authored (World Rule Profile 0.7), applied retroactively to the Ashgate clear, and the resulting Ascension to Level 3
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000059
canonical_record: REC-000059
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000044
  event_time: "Year 31 AR, milestone-XP ruling applied retroactively to the Ashgate clear"
  record_time: "2026-07-21T02:00:00Z"
  uncertainty: "Allocation of the 2 points this Ascension grants is an open player decision, not made by this ruling."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: ruling
  created: "2026-07-21T02:00:00Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.7 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000058
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
  warnings: "No fiction was played between Checkpoint 0014 and this checkpoint; this is a rules/records checkpoint, not a session-close. 2 allocation points from the Ascension are unspent and deliberately left open pending Daedalus's player's decision (Runtime Section 1.6) — do not assume an allocation on restore. Emberbrand remains fully spent; Mana is low (2/14) and has not yet recovered through rest. Warehouse 7's bonded core remains unextracted, with Daedalus holding observation-only (not extraction) clearance there."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

One ruling event promoted since Checkpoint 0014, settling the gap that checkpoint deliberately left open.

**`EVT-000044` — Ruling: the Rift-clear milestone XP formula is authored and applied retroactively to the Ashgate clear; Ascension to Level 3.** The owner settled the gap `EVT-000043` flagged rather than invented. `worlds/reikon/206_WORLD_RULE_PROFILE.md` Section 8.2 now specifies the milestone as a flat ×10 multiplier on the clearing Rift's grade baseline (World Rule Profile 0.6 → 0.7), awarded once per Rift clear alongside per-kill XP. For an E-grade Rift the milestone is 70 XP (10 × 7). Applied retroactively to the Ashgate clear at owner discretion, exactly as `EVT-000043` anticipated: **Checkpoint 0014 is not rewritten and remains sealed at its own settled 85 XP, Level 2** — this ruling adds new canon on top of it rather than recalculating it. Live XP moved 85 → 155, crossing T(2)=130 and firing Ascension to Level 3, 25/170 carried forward. The Ascension grants 2 allocatable points (Section 4.1); they are recorded as unspent and deliberately not allocated by this ruling — that choice belongs to Daedalus's player, not the Runtime. Recomputed closed-form maxima: max_mana 14 → 15, max_health 105 → 110; Health was already full and is set to full at the new maximum (no missing Health to preserve). A second, unrelated transcription error was found and corrected while editing `100_CHARACTER_SHEET.md`: its `situation` field read "ten Broodlings" / "Ten E-cores," contradicting the established count of nine everywhere else in canon (both checkpoint manifests, the changelog, and the XP arithmetic itself, 9 × 6 = 54). Classified under Runtime Section 8.1 as a transcription error, not a canon conflict, and corrected to nine.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000059`) and for `EVT-000044`. No new Entity was allocated by this ruling. Repository-level identity state is never copied into or rolled back with a checkpoint.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. Checkpoints 0008 through 0014 have the same property. A diff against live is expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.7 and resume from `180_CURRENT_STATE.md` (`REC-000045`).
4. This is a clean stopping point with no fiction pending — the Ashgate assignment is fully resolved and the milestone-XP gap is settled. Resume with Daedalus standing just outside the collapsed Rift, 2 allocation points unspent, deciding his next move.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) was run directly against live state before this immutable snapshot was created. Result: 56 live Markdown files, 215 persistent-object blocks, 215 unique identifiers referenced, all resolved — zero failures. Registry high-water marks: ENT-000082, REC-000059, EVT-000044, REL-000047. Snapshot copies were diff-verified byte-identical to their live sources after capture, save for the expected changelog divergence above.

---

**Checkpoint Created:** 2026-07-21T02:00:00Z
**Status:** READY FOR RESTORATION — a clean stopping point; 2 allocation points remain unspent pending player decision.
