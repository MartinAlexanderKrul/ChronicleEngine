# Save Manifest — Reikon Awakening 001 — Checkpoint 0016

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0016` — Stat cap removed and the Ascension point rate raised from 2 to 5, applied retroactively
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000060
canonical_record: REC-000060
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000045
  event_time: "Year 31 AR, Stat-cap removal and Ascension-rate ruling"
  record_time: "2026-07-21T03:00:00Z"
  uncertainty: "Power, Speed, and Perception have no authored uncapped formula; their indefinite-growth payoff is an open gap, not invented. Allocation of the resulting 8 unspent points is an open player decision, not made by this ruling."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: ruling
  created: "2026-07-21T03:00:00Z"
scope:
  world: worlds/reikon
  campaign: campaigns/reikon_awakening_001
  character: ENT-000051
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile: "Reikon 0.8 (RKO-OVR-001, RKO-OVR-002)"
  campaign_schema: "0.1.1"
  save_format: "0.1.0"
lineage:
  parent_save: REC-000059
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
  warnings: "No fiction was played between Checkpoint 0015 and this checkpoint; this is a rules/records checkpoint, not a session-close. 8 allocation points are unspent and deliberately left open pending Daedalus's player's decision (Runtime Section 1.6) — do not assume an allocation on restore. Mana Affinity's die contribution is still capped at +1 regardless of raw stat value (Section 6.3, protected by Law VII). Power, Speed, and Perception have no uncapped formula yet — a recorded gap, not an oversight. Emberbrand remains fully spent; Mana is low (2/14). Warehouse 7's bonded core remains unextracted, observation-only clearance only."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

One ruling event promoted since Checkpoint 0015, with no fiction played.

**`EVT-000045` — Ruling: the 20-point Stat cap is removed and the Ascension point rate is raised from 2 to 5, retroactively.** Two coupled rulings on `worlds/reikon/206_WORLD_RULE_PROFILE.md` (0.7 → 0.8). **Stat cap:** all five Stats now grow with no upper bound (Section 4.2), the same "never a dead level" philosophy already governing the Mana pool curve (Section 3.2). This does not uncap what the number *does* — Mana Affinity's contribution to modifier steps stays fixed at +1 forever (Section 6.3), protected by Law VII (Fairness), an Engine Law no World Rule Profile can move. Endurance already has a real uncapped payoff via `max_health` (Section 7.1); Power, Speed, and Perception have no formula at all today, and that gap is deliberately recorded, not invented, under the same discipline Section 12.7 applies to unpriced goods. **Ascension rate:** raised from 2 to 5 points (Section 4.1), grounded in observed pace — Level 1→2 took roughly the design's own stated floor of ~11 kills, and Level 2→3 needed the full milestone-XP assist to close within a single Rift-clear arc; each Ascension has read as one major arc paying out only 2 points, thin against the weight of clearing an entire Rift, and no longer calibrated against anything now that the stat cap is gone. Applied retroactively to both of Daedalus's completed Ascensions: +3 points each, +6 total, on top of the 2 already unspent — `unspent_points` moves 2 → 8. Checkpoint 0015 is not rewritten and remains sealed at its own settled state (2 unspent points); this ruling adds new canon on top of it, the same terms as `EVT-000044`.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000060`) and for `EVT-000045`. No new Entity was allocated by this ruling. Repository-level identity state is never copied into or rolled back with a checkpoint.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. Checkpoints 0008 through 0015 have the same property. A diff against live is expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.8 and resume from `180_CURRENT_STATE.md` (`REC-000045`).
4. This is a clean stopping point with no fiction pending. Resume with Daedalus standing just outside the collapsed Ashgate Rift, 8 allocation points unspent, deciding his next move.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) was run directly against live state before this immutable snapshot was created. Result: 56 live Markdown files, 216 persistent-object blocks, 216 unique identifiers referenced, all resolved — zero failures. Registry high-water marks: ENT-000082, REC-000060, EVT-000045, REL-000047. Snapshot copies were diff-verified byte-identical to their live sources after capture, save for the expected changelog divergence above.

---

**Checkpoint Created:** 2026-07-21T03:00:00Z
**Status:** READY FOR RESTORATION — a clean stopping point; 8 allocation points remain unspent pending player decision.
