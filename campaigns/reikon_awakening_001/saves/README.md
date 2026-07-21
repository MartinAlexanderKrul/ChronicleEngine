# Save Index — Reikon Awakening 001

**Authority:** Non-canonical operational index. It records the **status** of each checkpoint; it does not hold canonical state and does not modify any checkpoint. Checkpoint contents are immutable (Rules Section 13.2) and are never edited, annotated, or deleted — including when they are found invalid. Status is recorded here, outside the immutable bytes.

A durable, Canonical-Record form of this index is proposed engine work (Save Layer Unification, Decision 072). This file is the interim operational record for one campaign.

---

# Checkpoints

| Checkpoint | Captured | Status | Restorable |
|------------|----------|--------|------------|
| `900_CHECKPOINT_001/` | 2026-07-13 | **Superseded by 0002 — nonconforming original, kept as evidence** | Its point restores at **0002** |
| `900_CHECKPOINT_0002/` | 2026-07-14 | Conforming; verified against Session 1 transcript | Yes — prior restore point |
| `900_CHECKPOINT_0003/` | 2026-07-14 | Conforming; recovered from owner-supplied raw Session 2 chat | Yes — prior Profile 0.2 restore point |
| `900_CHECKPOINT_0004/` | 2026-07-14 | Conforming; deterministic Health-recovery migration | Yes — pre-Session-2 fork point |
| `900_CHECKPOINT_0005/` | 2026-07-14 | Conforming but **superseded** — captured stale record state; see below | Yes — not preferred |
| `900_CHECKPOINT_0006/` | 2026-07-14 | Conforming; Session 2 cross-ledger staleness repair and `EVT-000032` ruling | Yes — prior restore point |
| `900_CHECKPOINT_0007/` | 2026-07-15 | Conforming; Profile 0.4 mid-combat fork before the owner-authored anomaly | Yes — prior fork point |
| `900_CHECKPOINT_0008/` | 2026-07-15 | Conforming; complete owner-approved continuation under Profile 0.5 | Yes — prior restore point |
| `900_CHECKPOINT_0009/` | 2026-07-15 | Conforming; Profile 0.6 recurrent-intervention and succession migration | Yes — superseded |
| `900_CHECKPOINT_0010/` | 2026-07-15 | Conforming; omission repair and identity disambiguation | Yes — superseded |
| `900_CHECKPOINT_0011/` | 2026-07-15 | Conforming; Institute director name correction | Yes — superseded |
| `900_CHECKPOINT_0012/` | 2026-07-20 | Conforming; Institute data handoff, Association report, night recovery, Emberbrand grant | **Yes — current restore point** |

There is **no baseline checkpoint** for this campaign. See below.

The conforming lineage records the profile active at each capture: Checkpoint 0002 uses Reikon 0.1, 0003 uses 0.2, 0004–0006 use 0.3, 0007 uses 0.4, 0008 uses 0.5, and live canon plus Checkpoint 0009 use 0.6. Any older-profile mismatch is surfaced on restore under Rules Section 13.5 and migrated in sequence. Profile 0.5 does not retroactively enable life-burning in an older checkpoint; Profile 0.6 likewise begins recurrent checks only after its migration.

---

## `900_CHECKPOINT_0005/` — conforming, superseded by 0006

Created at the Session 2 checkpoint (commit `4039de3`). It is **restorable and its fiction is sound**; it is not quarantined and it is not a regressive snapshot. It is superseded because it captured a record layer that had drifted out of agreement with the fiction it recorded.

**What is right about it:** all eight snapshot copies are byte-identical to the live ledgers as they stood at capture; the manifest (`REC-000049`) conforms to the Rules Section 13.3 contract with no placeholders; lineage, the included-ledger identifiers, and the restoration entry point are all correct; identifiers were allocated atomically; the repository validation gate passed.

**Why it is superseded:** the promotion barrier reached only the five ledgers the interpreter judged the session to have touched. Three ledgers whose state the session's own events had changed were never opened, and their stale content was captured:

1. `110_WORLD_LEDGER.md` — `ENT-000064` listed Daedalus as an occupant of the Rift he had left, and described the core chamber as "not yet reached" and Broodlings as "retreating" after both had changed.
2. `120_INVENTORY_AND_OWNERSHIP.md` — seven carried items located in Warehouse 7 while their possessor was across the city; `ENT-000065` missing from the record's `subjects`.
3. `140_OBJECTIVES.md` — no record of the basement discovery or the expedition's suspension.
4. `180_CURRENT_STATE.md` — the restoration entry point contradicted itself in four places (warehouse "Immediate environment" against an Association location; Broodlings "remain inside the Rift" against its own Unresolved 2; 5/13 Mana against its own 7/13; Restore Point still naming Checkpoint 0004).
5. `160_CAMPAIGN_CHRONICLE.md` — `EVT-000031` records "seven cores from six earlier kills" against four corroborating sources establishing five; the Chronicle Position claimed "five Broodlings, one pack leader" for a 2 Broodling / 3 Swarmer / 1 pack leader roster.

**Its bytes are unchanged** per Rules Section 13.2, including the erroneous `EVT-000031` description. Ruling `EVT-000032` corrects the kill count in live canon and governs where the two disagree; `EVT-000031` is retained as evidence of how the error was recorded. Restoring 0005 restores the defects listed above along with the correct fiction. Prefer `900_CHECKPOINT_0006/`.

**Note on the validator:** the gate passed on this state and was right to. Every defect above is staleness or semantic contradiction between ledgers, not structural malformation — the class of error the mechanical barrier does not look for. Recorded against Version 0.3 planning in the roadmap's Technical Debt.

---

## `900_CHECKPOINT_001/` — nonconforming original; restore its point at Checkpoint 0002

Created during Session 1. The Session-1 state it was meant to preserve is reconstructed, verified against the Session 1 transcript, and restorable as conforming Checkpoint 0002 — continuing from that point is done there, so **no save-point is lost**. This original folder is kept intact as evidence and is not itself a restore target: it must not be `/load`-ed or treated as a source of canon, because its bytes are a broken pre-migration copy, for the reasons below.

**Why it is not restorable:**

1. **It snapshots a superseded campaign shape.** It captured the pre-migration ledger set (`100_CHARACTER_DAEDALUS.md`, `050_CAMPAIGN_LOG.md`), which the 2026-07-14 Data Model conformance migration replaced with standard Canonical Records (`REC-000038`–`REC-000045`). Restoring it would overwrite conforming live canon with the exact nonconforming shape the migration existed to remove, and would fail repository validation. It is not a stale restore point; it is a regressive one.
2. **It is not a full copy.** Rules Section 13.1 requires a full copy of the campaign's canonical ledgers. Three required ledgers are absent: `100_CHARACTER_SHEET.md`, `110_WORLD_LEDGER.md`, and `130_NPCS_AND_FACTIONS.md`. The manifest justifies omitting `130` by citing "Rules Section 2.3" — which is *Information Access* and authorizes no such thing. `110` is absent with no mention at all.
3. **Its object blocks are malformed.** `ENT-000051` and `ENT-000052`/`ENT-000053` are referenced but never defined; inventory and event objects point `canonical_record` at records belonging to other scopes (`REC-000025` is Prototype Beta's; `REC-000030`/`REC-000031` are Reikon world records).
4. **Its manifest self-reports a validation that never ran.** `SAVE_MANIFEST_001.md` asserts "Repository Deterministic Validator: ✓ PASS" over eleven specific checks. The validator was never executed against it, and the material checks were false. A manifest may record that the gate ran; it may never adjudicate its own result. The gate is external and mechanical (Decision 054).
5. **Its manifest lineage points at a non-checkpoint.** `lineage.parent_checkpoint: CHECKPOINT_000_LICENSED_READY` names `campaigns/reikon_awakening_001/CHECKPOINT_000.md`, a root-level prose file self-labelled "Legacy derived baseline, not live canon."

**Its canon is not lost.** Everything Session 1 established was reconstructed into the live ledgers on 2026-07-14 and has since been verified against the Session 1 transcript (`../exports/README.md`). The checkpoint holds no canon that live state lacks.

**Why it is kept.** It is the primary evidence that the save layer has no mechanical gate — `tools/validate_repository.ps1` excludes `saves/` entirely — and it is the exhibit for the proposed Save Layer Unification work (Decision 072). Deleting it would destroy that evidence while changing nothing: the bytes remain in git history regardless. Nonconforming records are kept as evidence and explained, not erased (Decision 038; Data Model Section 7.2, which names *forged* as a category of historical evidence).

## `900_CHECKPOINT_0002/` — prior restore point

The first conforming checkpoint for this campaign. Captures verified live state at the pack-leader standoff: Daedalus at Level 1, 36/100 XP, full health and mana, roughly 40–50 metres from the pack leader, with the Warehouse 7 clear in progress.

Manifest `REC-000046`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md` and the Rules Section 13.3 minimum. Contains full copies of all eight canonical ledgers. Records no self-assessed validation result.

It remains restorable but is no longer current; continuing from it creates a fork from before the pack-leader combat.

## `900_CHECKPOINT_0003/` — prior Profile 0.2 restore point

Captures the recovered post-pack-leader state under Reikon World Rule Profile 0.2: pack leader dead, surviving Broodlings retreating, Daedalus at Health 60/100, Mana 5/13, and XP 55/100, with his omitted morning physical training recorded as qualitative capability state.

Manifest `REC-000047`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md` and the Rules Section 13.3 minimum. Contains full copies of all eight canonical campaign ledgers and records no self-assessed validation result.

It remains immutable and restorable under the World Rule Profile version recorded in its manifest. Continuing from it requires an explicit migration to Profile 0.3 before deterministic Health recovery can settle.

## `900_CHECKPOINT_0004/` — prior restore point, pre-Session-2 fork point

Captures the same post-pack-leader fiction migrated to Reikon World Rule Profile 0.3. Daedalus remains at Health 60/100; his moderate self-stabilized shoulder/collarbone wound has recovery mode `paused`, care `untreated`, and zero fractional recovery units while the active Rift threat continues.

Manifest `REC-000048`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md` and the Rules Section 13.3 minimum. Contains full copies of all eight canonical campaign ledgers and records no self-assessed validation result.

It remains restorable but is no longer current: it predates Session 2. Continuing from it forks the campaign from before the warehouse exploration, the basement discovery, and the medical treatment. Prefer `900_CHECKPOINT_0006/`.

## `900_CHECKPOINT_0006/` — prior restore point

Captures the Session 2 cross-ledger staleness repair and the `EVT-000032` kill-count ruling: the located-but-unentered basement chamber, the harvested kills, eight holdings carrying one consistent region descriptor, the expedition's suspension for treatment, and a restoration entry point that no longer contradicts itself on location, Mana, remaining creatures, or which checkpoint is latest.

Manifest `REC-000050`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md` and the Rules Section 13.3 minimum. Contains full copies of all eight canonical campaign ledgers and records no self-assessed validation result.

This remains restorable as the post-treatment fork point. Checkpoint 0007 supersedes it as the checkpoint `/continue` restores.

## `900_CHECKPOINT_0007/` — prior Profile 0.4 fork

Captures the complete shared-chat continuation only through its last rules-valid exchange. Daedalus is in active combat on the Warehouse 7 basement ledge at Health 90/100, Mana 1/13, Level 1, and XP 74/100. One D-grade Breaker has been killed, three remain active, and the suspended core is visible but unextracted.

Manifest `REC-000051`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md`. Contains full copies of all eight canonical campaign ledgers. At capture, the next transcript action was deliberately absent because Profile 0.4 had no life-burn exception. The later owner ruling does not alter this immutable snapshot; restoring it returns to the decision point before `EVT-000034`.

This remains a restorable fork point. Checkpoint 0008 supersedes it as the checkpoint `/continue` restores.

## `900_CHECKPOINT_0008/` — prior Profile 0.5 restore point

Captures the complete owner-approved continuation under Reikon Profile 0.5. The finite life-burn anomaly is fully specified in `EVT-000034`, permitted Fireball and Flame Shield to consume missing Mana at 1 Health each for the remainder of that engagement, and expired permanently when the fourth Breaker died.

Daedalus is Level 2 at 31/130 XP, 88/105 Health, and 7/14 Mana. All four Breakers are dead and harvested as four D-cores. His Ascension allocations are Mana Affinity 14 and Fireball Strength 1. The basement core is measured and documented but remains energetically bonded after a failed direct extraction attempt.

Manifest `REC-000052`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md`. Contains byte-identical copies of all eight canonical campaign ledgers. Checkpoint 0009 supersedes it as the checkpoint `/continue` restores.

## `900_CHECKPOINT_0009/` — restorable; superseded

Captures the same complete post-combat fiction as Checkpoint 0008 with Reikon Profile 0.6 declared. Daedalus still stands in the cleared basement chamber at Level 2, 31/130 XP, 88/105 Health, and 7/14 Mana; no fictional time elapsed and no inventory or objective changed.

Profile 0.6 initializes `intervention_silent_checks: 0` and `active_intervention: none`. Future eligible triggers may produce directives, finite techniques, trial-Rift offers, or rare compulsory displacement. The expired Warehouse 7 life-burn anomaly remains unavailable. Bearer death remains terminal for Daedalus and eventually begins a fresh successor campaign rather than resurrection.

Manifest `REC-000053`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md`. Contains byte-identical copies of all eight canonical campaign ledgers.

Checkpoint 0010 supersedes it as the checkpoint `/continue` restores. **The fiction is identical; only the records differ.** Restoring 0009 loses the Institute consultation's artifacts and conditions (`ENT-000078`–`ENT-000080`, and the same-day obligation on `REL-000045`) and reopens the Venn/Vane identity ambiguity. It remains restorable as the pre-repair branch point.

## `900_CHECKPOINT_0010/` — current restore point

Captures the Checkpoint 0009 fiction exactly, with the record defects that survived it repaired. **No fictional time elapsed and no value was recalculated.** Daedalus stands in the cleared basement chamber at Level 2, 31/130 XP, 88/105 Health, and 7/14 Mana; the core remains energetically bonded and unextracted.

`EVT-000035` repairs an under-promotion in `EVT-000033`, which had promoted the Institute consultation as relationships while dropping the artifacts and conditions the same scene established: Kalens's carried address slip (`ENT-000078`), the Institute–Vigil tension over deep-Rift study (`ENT-000079`), Marta's core-depth collapse correlation (`ENT-000080`), the standing same-day reporting obligation now recorded on `REL-000045` as **met and unhonoured**, and a stale `situation` on `ENT-000062`. `EVT-000036` rules Dr. Kael Venn (`ENT-000061`) and Dr. Sable Vane (`ENT-000036`) distinct figures, closing a latent ambiguity that invited a forbidden silent collapse of two identifiers.

Marta's correlation is recorded as a hypothesis Daedalus was told, not an engine rule; the stability window is unchanged at approximately five days.

Manifest `REC-000054`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md`. Contains byte-identical copies of all eight canonical campaign ledgers, hash-verified after capture.

Checkpoint 0011 supersedes it as the checkpoint `/continue` restores. Restoring 0010 reinstates the Institute director's superseded name, "Dr. Kael Venn", and `EVT-000036`'s unsupported claim that Daedalus had met him. No played fiction differs.

## `900_CHECKPOINT_0011/` — superseded

Captures the Checkpoint 0010 fiction exactly with one name corrected. **No fictional time elapsed and no value was recalculated.** Daedalus stands in the cleared basement chamber at Level 2, 31/130 XP, 88/105 Health, and 7/14 Mana; the core remains energetically bonded, and Kalens's same-day obligation remains met and unhonoured.

`EVT-000037` corrects `ENT-000061`, the Aurology Institute's director, from "Dr. Kael Venn" to **Dr. Ambrose Teague**, as a recording error under Runtime Section 8.1. The name was authored by the 2026-07-14 Data Model migration and never appeared in a played scene. **No former alias is recorded** — Section 5.1's rename procedure models an in-world rename, which never happened; the director has always been Teague and the record was wrong. The identifier is unchanged. The old string had collided with Dr. Sable Vane (`ENT-000036`) at the same institution and with Kael Travis (`ENT-000021`) in Prototype Beta.

The ruling also corrects `EVT-000036`'s claim that Daedalus had met the director; he has met neither him nor Vane. That event's distinctness finding stands and its bytes are unchanged.

Manifest `REC-000055`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md`. Contains byte-identical copies of all eight canonical campaign ledgers, hash-verified after capture.

Checkpoint 0012 supersedes it as the checkpoint `/continue` restores. Restoring 0011 reinstates the same-day obligation on `REL-000045` as **met and unhonoured** (rather than honoured), reverts Health/Mana to 88/105 and 7/14, loses the Institute's active severance investigation and the Association clear report, and forfeits the Emberbrand intervention. No played fiction from Checkpoint 0011 itself differs — the reversion is entirely about what happened afterward.

## `900_CHECKPOINT_0012/`

Captures the following evening's and next dawn's play in full: Daedalus treats his wounds, gives Dr. Kalens the complete basement findings at his home within the standing same-day window, and logs the clear with the Hunters' Authority (`EVT-000038`). A tested light workout (d100 78, success) and a full night's rest settle Health and Mana to maximum under Reikon's deterministic recovery formulas (`EVT-000039`). At dawn, the Profile 0.6 recurrent-intervention check (Section 9.6) fires for the first time since migration — d100 82 — granting the one-use technique **Emberbrand** (`EVT-000040`): the next successful Fireball or Combustion Touch strikes at critical-success force, expiring at the next sunrise if unused.

Daedalus stands at Level 2, 31/130 XP, full 105/105 Health, and full 14/14 Mana in his own rented room. Kalens's same-day obligation on `REL-000045` is now **met and honoured**. One harvested D-core (`ENT-000074`) has passed to Dr. Soren for analysis; the other three remain with Daedalus. The Warehouse 7 core itself is untouched — still bonded, still unextracted, still on its stability clock — and the Institute has not yet reported findings back.

Manifest `REC-000056`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md`. Contains byte-identical copies of all eight canonical campaign ledgers (save for the expected changelog divergence noted in the manifest), diff-verified after capture.

Checkpoint 0013 supersedes it as the checkpoint `/continue` restores. Restoring 0012 reverts to full Health/Mana at dawn with Emberbrand unspent, loses the Warehouse 7 observation-only clearance and its new framework-asymmetry finding, loses the declined D-core sale and the follow-up letter to Kalens, and forfeits the entire Ashgate E-Rift assignment (including its two confirmed Broodling kills and 12 XP). No played fiction from Checkpoint 0012 itself differs — the reversion is entirely about what happened afterward.

## `900_CHECKPOINT_0013/` — current restore point

Captures one full in-fiction day (`EVT-000041`): morning training with spellwork deliberately skipped to preserve Emberbrand; Captain Thorne granting Warehouse 7 solo *observation-only* clearance (not extraction) after Daedalus argued the stability window showed no instability signs; a re-examination of the Warehouse 7 core (d100 87, strong success) revealing a new structural asymmetry in the framework at its point of contact with the core; consultations with Kalens, Soren, and Marta (no severance breakthrough yet); a declined D-core sale at the Association appraisal desk (d100 64, success — 15 units offered) followed by a letter to Kalens with the new finding instead; and a second, solo-eligible Ashgate district E-Rift assignment. Inside it: a successful structural read to the core (d100 91), a partial-success surprise sword sweep killing one Broodling and wounding a second while a third fled (d100 58), a legendary finishing blow on the wounded one (d100 100), a successful stealth follow of the fleeing Broodling (d100 76), and a Fireball at critical force via Emberbrand against the assembled cluster (d100 74, +2, effective 100).

Daedalus stands at Level 2, 43/130 XP (two confirmed Broodling kills, 6 XP each), full 105/105 Health, and low 2/14 Mana, inside the Ashgate E-Rift's core chamber. Emberbrand is fully spent (`active_intervention: none`). **The larger Broodling cluster's kill status is not resolved** — several are dead, a few remain visibly moving at the blast's edge — and this checkpoint deliberately captures that as an open encounter rather than a completed clear. The Warehouse 7 core remains untouched, still bonded and unextracted; Daedalus carries three unsold D-cores and holds observation-only clearance there, not extraction authorization.

Manifest `REC-000057`, conforming to `templates/ledgers/900_SAVE_MANIFEST.md`. Contains byte-identical copies of all eight canonical campaign ledgers (save for the expected changelog divergence noted in the manifest), diff-verified after capture. This is the checkpoint `/continue` restores.

---

# No baseline checkpoint

Decision 053 requires every campaign to carry a baseline checkpoint (`900_CHECKPOINT_0000/`) so that restart-from-beginning is a restore operation rather than git archaeology. **This campaign has none.** It was never captured, and Session 1 has already been played, so a true pre-play baseline can no longer be captured from live state.

**Consequence: `/restart` (Redo, Decision 053) is unavailable for this campaign** and must not be attempted. It has nothing to restore to.

This is sharpened by a defect observed in `../exports/play_export_0002.md`, where the Runtime's improvised `/help` described `/restart` as "Restart from latest checkpoint." The Gameplay Runtime Profile defines it as the opposite — reset the campaign to its baseline. A player trusting that help text on this campaign would invoke an undefined destructive reset.

`/branch` (Fork) and `/load` are unaffected and operate normally against the restorable checkpoints.

Two options remain open and neither has been chosen: reconstruct a baseline from `CHECKPOINT_000.md` plus git history and label it a derived reconstruction, or record that Redo is permanently unavailable for this campaign. Pending owner decision.
