# Save Manifest — Reikon Awakening 001 — Checkpoint 0013

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0013` — Morning training, Warehouse 7 observation-only re-examination, Institute follow-up, declined D-core sale, and the Ashgate E-Rift engagement (left unresolved mid-encounter)
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000057
canonical_record: REC-000057
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000041
  event_time: "Year 31 AR, Ashgate E-Rift solo assignment"
  record_time: "2026-07-21T00:00:00Z"
  uncertainty: "The Ashgate core chamber's Broodling cluster is not fully confirmed dead — several are killed, a few remain visibly moving at the blast's edge. The chamber is not confirmed clear. Whether the Ashgate core itself is bonded or anomalous is unestablished."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: session-close
  created: "2026-07-21T00:00:00Z"
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
  parent_save: REC-000056
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
  warnings: "This checkpoint captures play mid-encounter, not at a clean stopping point: the Ashgate Broodling cluster's kill status is unresolved. Resuming must pick up from the Fireball's immediate aftermath, not narrate it as a completed clear. Emberbrand is fully spent (active_intervention: none). Mana is low (2/14). Warehouse 7's bonded core remains unextracted; Daedalus holds observation-only clearance there, not extraction authorization."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

One event promoted since Checkpoint 0012, spanning a full in-fiction day: morning training, a Warehouse 7 re-examination, an Institute follow-up round, a declined core sale, and a new solo Rift assignment carried through to an unresolved combat state.

**`EVT-000041` — Morning training, Warehouse 7 re-examination, Institute follow-up, and the Ashgate E-Rift engagement.** Daedalus ran his full training regimen at dawn, deliberately omitting spellwork to preserve the unused Emberbrand intervention. At Hunters' Authority headquarters, Captain Thorne declined to authorize solo re-entry to Warehouse 7 for extraction but granted solo *observation-only* clearance after Daedalus argued the stability window showed no instability signs. He used it to re-examine the Warehouse 7 core (d100 87, strong success), finding a previously unrecorded structural asymmetry: the crystalline framework thins and darkens at its point of contact with the core, growing denser outward. He then consulted Kalens (no severance breakthrough yet; Institute has reached out to the Verholt Athenaeum), Soren (the D-core's fracture lines radiate from a single point, structurally closer to a C-grade guardian core than natural D-grade formation), and Marta (still correlating the pulse interval against one other historical dataset). At the Association core desk, an appraiser priced his three remaining D-cores at 5 units each (d100 64, success) but Daedalus declined the sale on her advice that the Institute wanted first look, sending Kalens a follow-up letter with the new framework detail instead.

He then took a second, solo-eligible assignment from the dispatch board: a low-priority Ashgate district E-Rift, three days unclaimed, reported quiet. Solo entry; a Perception-driven structural read (d100 91, strong success) tracked the Rift's mana-density gradient to its core. Three Broodlings were guarding it. A surprise sweeping sword strike (d100 58, partial success) killed one outright and wounded a second while a third fled; Daedalus finished the wounded one (d100 100, legendary success) and harvested both cores (2 E-cores; core purse 46 → 48). He tracked the fleeing Broodling by stealth (d100 76, success) to a core chamber holding a small pale-green core guarded by six or seven more Broodlings. A Fireball cast at the stationary cluster (d100 74, +2 favorable-setup modifier, effective 100, legendary success) spent Emberbrand: the cast landed at critical-success (2.0×) force, catching the fleeing Broodling and the full cluster in one blast. Mana dropped from 14 to 2 (Fireball's ordinary 12-Mana cost). Two confirmed Broodling kills awarded 12 XP immediately (6 each, Section 8.2), moving 31 to 43. **The larger cluster's kill status is not resolved** — several are dead, a few remain visibly moving at the blast's edge — and this checkpoint deliberately captures that as an open encounter rather than force-closing it.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000057`), for the new entity `ENT-000081` (Ashgate E-Rift), and for `EVT-000041`. Repository-level identity state is never copied into or rolled back with a checkpoint.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. Checkpoints 0008 through 0012 have the same property. A diff against live is expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.6 and resume from `180_CURRENT_STATE.md` (`REC-000045`).
4. **Resume inside the Ashgate core chamber, immediately after the Fireball.** Do not narrate the encounter as already concluded — the cluster's survival status must be resolved through play, not assumed at restore time.

## Validation

The Repository Validation Gate was run manually against live state before this immutable snapshot was created, replicating every check in `tools/validate_repository.ps1` (PowerShell unavailable in this environment): registry high-water-mark uniqueness and prefix correctness, allocation-log coverage with no gaps or duplicates up to each mark, required-ledger presence with valid Canonical Records for every live campaign, `system/WORLDS_AND_CAMPAIGNS.md` index consistency, and full identifier definition/reference resolution across all canonical files. Result: 56 live Markdown files, 211 persistent-object blocks, 211 unique identifiers referenced, all resolved — zero failures. Registry high-water marks: ENT-000081, REC-000057, EVT-000041, REL-000047. Snapshot copies were diff-verified byte-identical to their live sources after capture, save for the expected changelog divergence above; this manifest does not self-adjudicate that result.

---

**Checkpoint Created:** 2026-07-21T00:00:00Z
**Status:** READY FOR RESTORATION — with the caveat above that restoration resumes an unresolved encounter, not a clean stopping point.
