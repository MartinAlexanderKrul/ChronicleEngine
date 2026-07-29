# Save Manifest — Reikon Awakening 001 — Checkpoint 0017

**Campaign:** Reikon Awakening (`campaigns/reikon_awakening_001/`) · **World:** Reikon (`worlds/reikon/`)
**Checkpoint:** `900_CHECKPOINT_0017` — Warehouse 7 permanently resolved (Wren Ashcombe's resonance extraction) and a second, unguarded tannery E-Rift cleared
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3). It conforms to `templates/ledgers/900_SAVE_MANIFEST.md`.

---

## Record

```yaml
id: REC-000061
canonical_record: REC-000061
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000050
  event_time: "Year 31 AR, Warehouse 7 resonance extraction and tannery E-Rift clear"
  record_time: "2026-07-22T12:00:00Z"
  uncertainty: "Captain Thorne's asserted automatic Association completion bonus is unauthored under 206 Section 12 — flagged, not settled; a formal Association request is pending. Why the tannery E-Rift held no guardians is unexplained (an open worldbuilding question, PT-002). Power, Speed, and Perception have no authored uncapped payoff under Profile 0.8 (addressed by the separate Profile 0.9 authoring, adopted at the next readiness gate)."
role: machine-readable save
scope: campaign
```

---

## Manifest

```yaml
save_identity:
  checkpoint_type: session
  created: "2026-07-22T12:00:00Z"
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
  parent_save: REC-000060
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
  warnings: "Branch reconciliation (Data Model Invariant 4): this checkpoint's four story events were captured on the checkpoint-0013-ashgate world-line as EVT-000045–EVT-000048 and renumbered +2 to EVT-000047–EVT-000050 to sequence after main's Stat-cap ruling (EVT-000045) and allocation (EVT-000046). Warehouse 7 is permanently resolved — its bonded core was extracted by contractor Wren Ashcombe, no milestone XP to Daedalus. The tannery E-Rift held no guardians at all (unexplained, PT-002). Thorne's asserted assignment bonus is unauthored (no vells added); an Association request is pending. Full Health (121/121) and Mana (15/15), Level 3, 95/170 XP, all 8 allocation points spent. Mana Affinity's die contribution stays capped at +1 (Law VII); Power/Perception's banked points have no authored payoff under Profile 0.8. Emberbrand remains fully spent; intervention_silent_checks is 1."
restoration_entry_point: REC-000045
```

---

## What This Checkpoint Captures

Four events promoted since Checkpoint 0016, played on the day following the Stat-cap ruling.

**`EVT-000047` — New day, Institute joint session, and two new assignments.** The Profile 0.6 recurrent-intervention check fired at the first safe exchange of the new day (Section 9.6, trigger #1): d100 20, Silence, `intervention_silent_checks` → 1. Kalens's Verholt Athenaeum contact supplied a resonance-based severance approach for the bonded Warehouse 7 core; a joint session with Kalens, Soren, and Marta confirmed it fit the data, though none could perform the precise mana-pulse work. Daedalus obtained an Association referral to independent contractor Wren Ashcombe (`ENT-000083`), filed a formal team-required request in parallel, took a second solo assignment (an unconfirmed-grade tannery-district E-Rift), and brought Wren and Kalens to inspect the chamber under Thorne's observe-only clearance.

**`EVT-000048` — Warehouse 7 resonance extraction.** With Thorne's approval and under his standby conditions, Wren extracted the bonded core by a matched resonance pulse — a first pass loosened it partially, a second significantly, a third wavered and was aborted safely, and a fourth steady pass fully loosened it for a clean extraction with no discharge. Zero casualties across the entire multi-day assignment. Because the clearing act was Wren's, no Rift-clear milestone XP (206 S8.2) accrues to Daedalus.

**`EVT-000049` — Tannery-district E-Rift: unguarded clear.** The unconfirmed-grade tannery E-Rift held no guardians at all. Daedalus read the structure, confirmed the chamber empty, extracted the core (d100 91, legendary success), collapsed the Rift, and withdrew cleanly. No per-kill XP, but the clearing act was entirely his, so the full 70 XP E-grade Rift-clear milestone applies; XP moves 25 → 95.

**`EVT-000050` — Ruling: an asserted assignment bonus is unauthored; a prior omission corrected.** Captain Thorne's claim of an automatic Association completion bonus is not backed by 206 Section 12 (Economy) — flagged, no bonus vells added. Separately, 24 vells from the earlier Ashgate core sale, an omission from a prior checkpoint, are now recorded as `ENT-000086`.

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

`system/ID_REGISTRY.md` was updated atomically for this manifest (`REC-000061`), the four events (`EVT-000047`–`EVT-000050`), four entities (`ENT-000083`–`ENT-000086`), and one relationship (`REL-000048`). Repository-level identity state is never copied into or rolled back with a checkpoint.

**Expected divergence in `170_CHANGELOG.md`.** Live canon carries one entry this snapshot does not: the one recording this checkpoint's own creation, which cannot exist at capture time. A diff against live is expected to show exactly that entry and nothing else; anything further indicates drift.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/reikon_awakening_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Reikon World Rule Profile 0.8 and resume from `180_CURRENT_STATE.md` (`REC-000045`).
4. Resume with Daedalus at the tannery-district E-Rift site, both of the day's assignments closed, Health and Mana full, deciding his next move.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) was run directly against live state before this immutable snapshot was created. Result: 57 live Markdown files, 226 persistent-object blocks, 226 unique identifiers referenced, all resolved — zero failures. Registry high-water marks: ENT-000086, REC-000061, EVT-000050, REL-000048. Snapshot copies were diff-verified byte-identical to their live sources after capture, save for the expected changelog divergence above.

---

**Checkpoint Created:** 2026-07-22T12:00:00Z
**Status:** READY FOR RESTORATION — a clean stopping point at the tannery E-Rift site, both of the day's assignments closed.
