# Save Manifest — Reikon Awakening 001 — Checkpoint 0014

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0014` — Ashgate chamber mop-up, core extraction, Rift closure, and a ruling flagging the unauthored Rift-clear milestone XP magnitude
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000058
canonical_record: REC-000058
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000043
  event_time: "Year 31 AR, Ashgate E-Rift closure"
  record_time: "2026-07-21T01:00:00Z"
  uncertainty: "The Rift-clear milestone XP magnitude remains an open ruling gap, deliberately unfilled rather than invented. Whether the extracted Ashgate core has any value beyond an ordinary E-grade Rift core is unappraised."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: session-close
  created: "2026-07-21T01:00:00Z"
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
  parent_save: REC-000057
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
  warnings: "This is a clean stopping point, unlike Checkpoint 0013 — the Ashgate encounter is fully resolved and the Rift is closed. An open ruling gap is recorded, not resolved: Section 8.2's Rift-clear milestone XP bonus has no established magnitude anywhere in canon, so only confirmed per-kill XP was awarded (54 XP for nine Broodlings). A future owner ruling on the milestone formula may apply prospectively but does not recalculate this checkpoint's already-settled XP. Emberbrand remains fully spent; Mana is low (2/14) and has not yet recovered through rest. Warehouse 7's bonded core remains unextracted, with Daedalus holding observation-only (not extraction) clearance there."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

Two events promoted since Checkpoint 0013, both played in immediate continuation of the Ashgate engagement left unresolved there.

**`EVT-000042` — Ashgate chamber mop-up, core extraction, and Rift closure.** Daedalus moved through the blast-struck core chamber, finishing three still-stirring Broodling survivors with clean sword strokes (d100 61, +2 modifier, effective 71, success). The full chamber count resolved to seven confirmed dead, bringing the whole Ashgate engagement to **nine Broodlings killed total** (two in the earlier melee, seven in the chamber). Seven more E-cores were harvested, bringing the core purse from 48 to 55. Daedalus then extracted the small pale-green Ashgate core cleanly (d100 68, +2 modifier, effective 88, success) — no bonding, no resistance, unlike Warehouse 7's anomalous core — which triggered immediate Rift collapse. He withdrew through the passage and out the entrance fissure with room to spare (d100 79, +2 modifier, effective 99, legendary success), clearing the seam just before it sealed. The Ashgate E-Rift (`ENT-000081`) is now archived/closed. The extracted core is recorded as a new Persistent Entity, `ENT-000082`, distinct from ordinary monster-loot E-cores and as yet unappraised.

**`EVT-000043` — Ruling: the Rift-clear milestone XP magnitude is unauthored.** `worlds/reikon/206_WORLD_RULE_PROFILE.md` Section 8.2 states that clearing a Rift core awards "a larger milestone sum" beyond ordinary per-kill XP, but specifies no formula or numeric value anywhere in Reikon's world content or the engine layer. Classified under the same discipline Section 12 (Economy) already applies to unpriced goods: an unauthored magnitude is ruled and recorded, never improvised. Only the confirmed per-kill XP was awarded for the Ashgate clear — 54 XP from nine E-grade Broodling kills at the established baseline of 6 each (Section 8.2) — moving Daedalus's XP from 31 (Checkpoint 0012's value, carried through 43 at Checkpoint 0013) to **85**. No milestone bonus is added. The gap is left open for a future owner decision on the Rift-clear milestone formula, which may be applied prospectively but does not retroactively recalculate this checkpoint's settled state.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000058`), for the new entity `ENT-000082` (the extracted Ashgate core), and for `EVT-000042`–`EVT-000043`. Repository-level identity state is never copied into or rolled back with a checkpoint.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. Checkpoints 0008 through 0013 have the same property. A diff against live is expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.6 and resume from `180_CURRENT_STATE.md` (`REC-000045`).
4. This is a clean stopping point — the Ashgate assignment is fully resolved. Resume with Daedalus standing just outside the collapsed Rift, deciding his next move.

## Validation

The Repository Validation Gate was run manually against live state before this immutable snapshot was created, replicating every check in `tools/validate_repository.ps1` (PowerShell unavailable in this environment): registry high-water-mark uniqueness and prefix correctness, allocation-log coverage with no gaps or duplicates up to each mark, required-ledger presence with valid Canonical Records for every live campaign, and full identifier definition/reference resolution across all canonical files. Result: 56 live Markdown files, 214 persistent-object blocks, 214 unique identifiers referenced, all resolved — zero failures. Registry high-water marks: ENT-000082, REC-000058, EVT-000043, REL-000047. Snapshot copies were diff-verified byte-identical to their live sources after capture, save for the expected changelog divergence above; this manifest does not self-adjudicate that result.

---

**Checkpoint Created:** 2026-07-21T01:00:00Z
**Status:** READY FOR RESTORATION — a clean stopping point.
