# Save Manifest — Reikon Awakening 001 — Checkpoint 0016

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0016` — Warehouse 7 fully resolved via resonance extraction, a second solo E-Rift closed unguarded, and two flagged corrections
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
  source: EVT-000048
  event_time: "Year 31 AR, Warehouse 7 resonance extraction and tannery E-Rift clear"
  record_time: "2026-07-22T01:00:00Z"
  uncertainty: "Two gaps remain genuinely open: whether any Association assignment-completion bonus mechanic exists at all beyond core-sale value, and how Warehouse 7's own separately-mentioned discretionary bonus resolves. Neither is settled by this checkpoint. The allocation of 2 unspent Ascension points is also an open player decision."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: session-close
  created: "2026-07-22T01:00:00Z"
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
  warnings: "This is a clean stopping point. Warehouse 7's MAIN objective is fully and permanently complete — the bonded core is safely extracted and in Institute hands via Wren Ashcombe's resonance work; no milestone XP accrued to Daedalus from it, since the clearing act was hers under specialist terms, not his own. The tannery E-Rift closed unguarded, but Daedalus performed the clearing act himself, earning the full 70 XP E-grade Rift-clear milestone under the World Rule Profile 0.7 formula authored at Checkpoint 0015 (EVT-000044) -- this checkpoint is the formula's first live application to an original clear, distinct from that checkpoint's retroactive application to the already-sealed Ashgate clear. Two gaps are recorded as genuinely open, not resolved by assumption: whether Association assignments carry any completion-bonus mechanic beyond core-sale value (an NPC's in-fiction claim asserted one exists; no Reikon economy rule backs it), and Warehouse 7's own separately-mentioned discretionary bonus, still pending Association processing with no figure attached. A real prior omission was also corrected here: 24 vells from an earlier core sale, received in play but never written to canon, are now properly recorded. 2 Ascension allocation points remain unspent, a player decision not made by this checkpoint."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

Four events promoted since Checkpoint 0015, covering a full in-fiction day.

**`EVT-000045` — New day, Institute joint session, and two new assignments.** A new-day recurrent intervention check (Section 9.6, trigger #1) rolled d100 20, Silence, incrementing `intervention_silent_checks` to 1. An Institute joint session with Kalens, Soren, and Marta confirmed an Athenaeum resonance theory matched the bonded core's pulse data and thin-point structure. Daedalus recruited independent contractor Wren Ashcombe through an Association referral (new entity `ENT-000083`, new relationship `REL-000048`), filed a parallel formal escalation request for Warehouse 7 as a paper-trail safeguard, and took a second solo-eligible assignment (an unconfirmed-grade tannery-district E-Rift). Daedalus proactively asked Captain Thorne whether his solo-observation clearance covered bringing Wren and Kalens to Warehouse 7, rather than assuming — she approved, with the same extraction restriction.

**`EVT-000046` — Warehouse 7 resonance extraction.** Wren's in-person assessment confirmed a stable but narrow-margin resonance opportunity at the framework's thin point. Daedalus fetched Thorne personally for a direct risk briefing before proceeding; she approved the attempt with standby positioning (Wren alone in the chamber, Daedalus at the doorway, Kalens observing from the entrance). Four resonance passes followed — partial loosening, significant loosening, a mid-tone waver safely aborted before any reaction, then a fully steady pass — and the bonded core came free intact, no discharge, no instability. Zero casualties across the entire multi-day Warehouse 7 assignment. **The MAIN objective is complete**; `ENT-000064` (Warehouse 7 E-Rift) is now archived/closed. **No Rift-clear milestone XP accrues to Daedalus from this event** — the clearing act was performed by Wren under Association-brokered specialist terms, not by Daedalus himself; Section 8.2's milestone formula (`EVT-000044`) rewards the hunter who performs the clearing act.

**`EVT-000047` — Tannery-district E-Rift: unguarded clear.** Daedalus entered alone, read the mana-density gradient successfully (d100 72 effective), found the core chamber genuinely empty on inspection (d100 69 effective), extracted the unguarded core (d100 92 effective, legendary), and withdrew as the Rift collapsed (d100 100 effective, legendary). No per-kill XP was awarded (no creatures to fight), but because Daedalus performed the clearing act himself, the full 70 XP E-grade Rift-clear milestone applies under `EVT-000044`'s formula — the milestone rewards "clearing a Rift's core... not merely killing what guards it." XP moves from 25 to 95. Why this Rift held no guardians at all remains flagged as an open worldbuilding question — not a contradiction of any rule, but also not explained in fiction.

**`EVT-000048` — Ruling: an asserted assignment bonus is unauthored; a prior omission corrected.** Captain Thorne's in-fiction claim that Association assignments pay an automatic completion bonus, separate from core-sale value, was checked against Section 12 (Economy) and found unsupported — that section covers core-value scaling, the universal 1-core-to-3-vells rate, and periodic salary, but no distinct assignment-bonus mechanic. Flagged as an open, unauthored claim; no bonus vells were added on its account. Separately, a real omission from an earlier session is fixed: the 24 vells Daedalus received for the Ashgate core's sale, established in play but never written to canon, are now correctly recorded as new entity `ENT-000086`. Warehouse 7's own discretionary bonus, which Thorne separately said would take a day or two to process, remains genuinely pending with no figure assigned.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000060`), for the four new entities (`ENT-000083`–`ENT-000086`), the new relationship (`REL-000048`), and the four new events (`EVT-000045`–`EVT-000048`). Repository-level identity state is never copied into or rolled back with a checkpoint.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. Checkpoints 0008 through 0015 have the same property. A diff against live is expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.7 and resume from `180_CURRENT_STATE.md` (`REC-000045`).
4. This is a clean stopping point — both the Warehouse 7 MAIN objective and the tannery side assignment are fully resolved. Resume with Daedalus standing just outside the collapsed tannery E-Rift, 2 Ascension points still unallocated, deciding his next move, with two flagged gaps left genuinely open rather than resolved by assumption.

## Validation

The Repository Validation Gate was run manually against live state before this immutable snapshot was created, replicating every check in `tools/validate_repository.ps1` (PowerShell unavailable in this environment): registry high-water-mark uniqueness and prefix correctness, allocation-log coverage with no gaps or duplicates up to each mark, required-ledger presence with valid Canonical Records for every live campaign, and full identifier definition/reference resolution across all canonical files. Result: 56 live Markdown files, 224 persistent-object blocks, 224 unique identifiers referenced, all resolved — zero failures. Registry high-water marks: ENT-000086, REC-000060, EVT-000048, REL-000048. Snapshot copies were diff-verified byte-identical to their live sources after capture, save for the expected changelog divergence above; this manifest does not self-adjudicate that result.

---

**Checkpoint Created:** 2026-07-22T01:00:00Z
**Status:** READY FOR RESTORATION — a clean stopping point.
