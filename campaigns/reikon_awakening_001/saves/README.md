# Save Index — Reikon Awakening 001

**Authority:** Non-canonical operational index. It records the **status** of each checkpoint; it does not hold canonical state and does not modify any checkpoint. Checkpoint contents are immutable (Rules Section 13.2) and are never edited, annotated, or deleted — including when they are found invalid. Status is recorded here, outside the immutable bytes.

A durable, Canonical-Record form of this index is proposed engine work (Nonconforming Checkpoint Quarantine). This file is the interim operational record for one campaign.

---

# Checkpoints

| Checkpoint | Captured | Status | Restorable |
|------------|----------|--------|------------|
| `900_CHECKPOINT_001/` | 2026-07-13 | **Quarantined — nonconforming** | **No** |
| `900_CHECKPOINT_0002/` | 2026-07-14 | Conforming; verified against Session 1 transcript | Yes — prior restore point |
| `900_CHECKPOINT_0003/` | 2026-07-14 | Conforming; recovered from owner-supplied raw Session 2 chat | **Yes — current restore point** |

There is **no baseline checkpoint** for this campaign. See below.

---

## `900_CHECKPOINT_001/` — quarantined, do not restore

Created during Session 1. It is preserved intact as evidence and must not be restored, loaded, or treated as a source of canon.

**Why it is not restorable:**

1. **It snapshots a superseded campaign shape.** It captured the pre-migration ledger set (`100_CHARACTER_DAEDALUS.md`, `050_CAMPAIGN_LOG.md`), which the 2026-07-14 Data Model conformance migration replaced with standard Canonical Records (`REC-000038`–`REC-000045`). Restoring it would overwrite conforming live canon with the exact nonconforming shape the migration existed to remove, and would fail repository validation. It is not a stale restore point; it is a regressive one.
2. **It is not a full copy.** Rules Section 13.1 requires a full copy of the campaign's canonical ledgers. Three required ledgers are absent: `100_CHARACTER_SHEET.md`, `110_WORLD_LEDGER.md`, and `130_NPCS_AND_FACTIONS.md`. The manifest justifies omitting `130` by citing "Rules Section 2.3" — which is *Information Access* and authorizes no such thing. `110` is absent with no mention at all.
3. **Its object blocks are malformed.** `ENT-000051` and `ENT-000052`/`ENT-000053` are referenced but never defined; inventory and event objects point `canonical_record` at records belonging to other scopes (`REC-000025` is Prototype Beta's; `REC-000030`/`REC-000031` are Reikon world records).
4. **Its manifest self-reports a validation that never ran.** `SAVE_MANIFEST_001.md` asserts "Repository Deterministic Validator: ✓ PASS" over eleven specific checks. The validator was never executed against it, and the material checks were false. A manifest may record that the gate ran; it may never adjudicate its own result. The gate is external and mechanical (Decision 054).
5. **Its manifest lineage points at a non-checkpoint.** `lineage.parent_checkpoint: CHECKPOINT_000_LICENSED_READY` names `campaigns/reikon_awakening_001/CHECKPOINT_000.md`, a root-level prose file self-labelled "Legacy derived baseline, not live canon."

**Its canon is not lost.** Everything Session 1 established was reconstructed into the live ledgers on 2026-07-14 and has since been verified against the Session 1 transcript (`../exports/README.md`). The checkpoint holds no canon that live state lacks.

**Why it is kept.** It is the primary evidence that the save layer has no mechanical gate — `tools/validate_repository.ps1` excludes `saves/` entirely — and it is the exhibit for the proposed checkpoint-validation and quarantine work. Deleting it would destroy that evidence while changing nothing: the bytes remain in git history regardless. Nonconforming records are quarantined and explained, not erased (Decision 038; Data Model Section 7.2, which names *forged* as a category of historical evidence).

## `900_CHECKPOINT_0002/` — prior restore point

The first conforming checkpoint for this campaign. Captures verified live state at the pack-leader standoff: Daedalus at Level 1, 36/100 XP, full health and mana, roughly 40–50 metres from the pack leader, with the Warehouse 7 clear in progress.

Manifest `REC-000046`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md` and the Rules Section 13.3 minimum. Contains full copies of all eight canonical ledgers. Records no self-assessed validation result.

It remains restorable but is no longer current; continuing from it creates a fork from before the pack-leader combat.

## `900_CHECKPOINT_0003/` — current restore point

Captures the recovered post-pack-leader state under Reikon World Rule Profile 0.2: pack leader dead, surviving Broodlings retreating, Daedalus at Health 60/100, Mana 5/13, and XP 55/100, with his omitted morning physical training recorded as qualitative capability state.

Manifest `REC-000047`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md` and the Rules Section 13.3 minimum. Contains full copies of all eight canonical campaign ledgers and records no self-assessed validation result.

---

# No baseline checkpoint

Decision 053 requires every campaign to carry a baseline checkpoint (`900_CHECKPOINT_0000/`) so that restart-from-beginning is a restore operation rather than git archaeology. **This campaign has none.** It was never captured, and Session 1 has already been played, so a true pre-play baseline can no longer be captured from live state.

**Consequence: `/restart` (Redo, Decision 053) is unavailable for this campaign** and must not be attempted. It has nothing to restore to.

This is sharpened by a defect observed in `../exports/play_export_0002.md`, where the Runtime's improvised `/help` described `/restart` as "Restart from latest checkpoint." The Gameplay Runtime Profile defines it as the opposite — reset the campaign to its baseline. A player trusting that help text on this campaign would invoke an undefined destructive reset.

`/branch` (Fork) and `/load` are unaffected and operate normally against the restorable checkpoints.

Two options remain open and neither has been chosen: reconstruct a baseline from `CHECKPOINT_000.md` plus git history and label it a derived reconstruction, or record that Redo is permanently unavailable for this campaign. Pending owner decision.
