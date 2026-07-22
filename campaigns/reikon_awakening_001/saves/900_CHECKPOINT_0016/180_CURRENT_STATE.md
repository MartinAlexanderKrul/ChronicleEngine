# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000048
  event_time: "Year 31 AR, Warehouse 7 resonance extraction and tannery E-Rift clear"
  record_time: "2026-07-22T01:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Bindings and Compatibility

- Engine: 0.2.0; Data Model: 0.1.1
- World: Reikon 0.1
- World Rule Profile: Reikon 0.7 (`RKO-OVR-001`, `RKO-OVR-002`) — recurrent intervention and succession contract active; the Warehouse 7 life-burn event remains expired; Emberbrand (the first recurrent-intervention grant) is now spent, not merely expired; Section 8.2's Rift-clear milestone formula is now authored
- Compatibility: compatible; no version mismatch outstanding

## Restore Point

**Live canon in this directory is authoritative.** Resume from this ledger.

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0016/` — Warehouse 7 fully resolved via successful resonance extraction (MAIN objective complete, no milestone XP to Daedalus), a second solo E-Rift cleared unguarded by Daedalus's own hand (earning the full milestone XP), and two flagged corrections (`EVT-000045`–`EVT-000048`).
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0015/` — the Rift-clear milestone XP formula ruling (World Rule Profile 0.7), its retroactive application to the Ashgate clear, and the resulting Ascension to Level 3 (`EVT-000044`).
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0014/` — Ashgate chamber mop-up (all nine Broodlings confirmed dead), core extraction, and Rift closure, plus a ruling flagging the unauthored Rift-clear milestone XP magnitude and awarding only the confirmed per-kill XP (`EVT-000042`, `EVT-000043`).
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0012/` — wound treatment, the Institute data handoff and Association clear report (`EVT-000038`), a full night's deterministic recovery (`EVT-000039`), and the Profile 0.6 recurrent-intervention grant of Emberbrand (`EVT-000040`).
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0011/` — the `EVT-000037` correction naming the Institute's director Dr. Ambrose Teague; records only, no fictional time elapsed.
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0010/` — the `EVT-000035` omission repair and the `EVT-000036` identity disambiguation over the Profile 0.6 state. Restoring it reinstates the director's superseded name, "Dr. Kael Venn", and `EVT-000036`'s unsupported claim that Daedalus had met him; no played fiction differs.
- **Still-earlier restorable checkpoint:** `saves/900_CHECKPOINT_0009/` — Profile 0.6 migration over the complete owner-approved continuation; recurrent interventions and succession are active with no fictional time elapsed. Restoring it additionally loses the Institute consultation's artifacts and conditions (`ENT-000078`–`ENT-000080`) and reopens the director/Vane identity ambiguity, but no played fiction differs.
- **Pre-Profile-0.6 checkpoint:** `saves/900_CHECKPOINT_0008/` — the same post-combat fiction under Profile 0.5, before recurrent intervention checks and succession were declared.
- **Pre-Session-2 fork point:** `saves/900_CHECKPOINT_0004/` — migrates the recovered post-pack-leader state to Reikon World Rule Profile 0.3 with canonical Health-recovery state.
- **`saves/900_CHECKPOINT_001/` is a superseded nonconforming original — not itself a restore target, but no save-point is lost.** Its Session-1 state was re-issued as conforming Checkpoint 0002 (verified against the Session 1 transcript), and continuing from that point is done there. The original folder must not be `/load`-ed: it snapshots a superseded pre-migration ledger set, omits three required ledgers, and self-reports a validator PASS that never ran, so restoring it would overwrite conforming canon with the nonconforming shape the 2026-07-14 migration removed. Status and reasoning: `saves/README.md`. The checkpoint's own contents are untouched (Rules Section 13.2).
- **No baseline checkpoint exists for this campaign.** Decision 053 requires one; it was never captured, and Session 1 is already played, so it cannot be captured honestly now. **`/restart` (Redo) is therefore unavailable** and must not be attempted until a baseline question is resolved. `/branch` (Fork) and `/load` are unaffected.

## Where the Ledgers Are

| State | Owning record |
|-------|---------------|
| Character, stats, abilities, System state | `100_CHARACTER_SHEET.md` (`REC-000038`) |
| World and Rift context | `110_WORLD_LEDGER.md` (`REC-000039`) |
| Inventory and ownership | `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000040`) |
| NPCs, factions, relationships | `130_NPCS_AND_FACTIONS.md` (`REC-000041`) |
| Objectives | `140_OBJECTIVES.md` (`REC-000042`) |
| Events and chronicle | `160_CAMPAIGN_CHRONICLE.md` (`REC-000043`) |
| Campaign changelog | `170_CHANGELOG.md` (`REC-000044`) |

---

## Where Daedalus Is

**Protagonist:** Daedalus (`ENT-000051`)
**Location:** Tannery district, just outside the collapsed E-Rift.
**Condition:** Full 110/110 Health; full 15/15 Mana; Level 3, 95/170 XP; 2 unspent allocation points. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Standing at the surface, having just cleared an unguarded Rift with no resistance at all.

**Immediate environment:**

- The tannery E-Rift is fully collapsed and closed (`ENT-000084`, archived); the building above is just an ordinary disused tannery again. It held no guardians at all — an open, flagged worldbuilding question, not a canon contradiction. Daedalus performed the clearing act (core extraction, Rift collapse) entirely himself, earning the full 70 XP E-grade Rift-clear milestone (25 to 95).
- The extracted, unappraised tannery core (`ENT-000085`) is carried.
- **Warehouse 7 is fully and permanently resolved.** Independent contractor Wren Ashcombe successfully extracted the bonded core intact via a matched resonance pulse, approved by Thorne, observed by Kalens and Daedalus at range. Zero casualties across the entire multi-day assignment. The MAIN objective is complete; Warehouse 7 (`ENT-000064`) is archived/closed. **No milestone XP accrues to Daedalus from Warehouse 7** — the clearing act was Wren's, under Association-brokered specialist terms, not his own.
- Three D-grade Breaker cores from Warehouse 7 are still carried, unsold; the fourth (`ENT-000074`) remains with Dr. Soren at the Institute.
- The extracted Ashgate core has been sold (24 vells, `ENT-000086`); no longer in Daedalus's possession.
- Emberbrand remains fully spent (`active_intervention: none`); `intervention_silent_checks` stands at 1 after this morning's silent check.
- **2 allocation points from the Level 3 Ascension remain unspent** — a player decision, not yet made.
- **A flagged gap, not silently resolved:** Captain Thorne's in-fiction claim of an automatic Association assignment-completion bonus has no backing in Section 12's economy rules; no bonus vells were added on its account. Warehouse 7's own discretionary bonus, separately mentioned by Thorne, remains genuinely pending Association processing with no amount assigned yet.

## What Is Active

- **Warehouse 7 is closed. The MAIN objective is complete.** No further action needed there; the core is in the Institute's hands for long-term study.
- **The tannery E-Rift is closed, unguarded, and earned Daedalus the full Rift-clear milestone XP.** Its emptiness is flagged as an open worldbuilding question — not a rule violation, but not explained either.
- **Health and Mana are both full.** 110/110 Health; 15/15 Mana.
- **Ascension is settled at Level 3.** 95/170 XP, Mana Affinity 14, Fireball Strength 1, maximum Mana 15, maximum Health 110. **2 allocation points remain unspent** — a player decision, not yet made; allocation is irreversible once spent (Section 4.5).
- **A new professional contact exists.** Wren Ashcombe (`ENT-000083`, `REL-000048`) — independent resonance/calibration contractor, job complete, standing status for future work unestablished.
- **Training and research state are durable.** Physical-training totals remain canonical. Kalens's same-day condition on `REL-000045` remains met and honoured; the entire research thread it fed into is now resolved.
- **Emberbrand remains fully spent.** `active_intervention: none`; `intervention_silent_checks` is 1 after this morning's silent recurrent-intervention check (9.6).
- **Two gaps are flagged, not filled with invented numbers.** Captain Thorne's claim of an automatic Association assignment-completion bonus has no backing in Section 12's economy rules; no such bonus was added. A genuine prior omission — 24 vells from the Ashgate core's sale — is now correctly recorded (`ENT-000086`), and Warehouse 7's own discretionary bonus remains pending Association processing with no amount yet assigned.

## Unresolved

1. **D-grade anomaly still unexplained.** Four Breakers guarded an E-grade Rift at Warehouse 7. The core itself is safely extracted and in Institute hands, but *why* it was there, bonded, in the first place is unresolved and now a pure research question rather than an active-play concern.
2. **The evacuation stone is unused, one use only.** The sole emergency exit from a losing fight.
3. **Three D-grade cores remain in Daedalus's possession, unsold.** Not yet decided which way he'll go — sale, further study, or something else.
4. **The extracted tannery core is unappraised.** No decision made yet on whether to sell, study, or report it.
5. **2 allocation points from the Level 3 Ascension are unspent.** Allocation is irreversible once made (Section 4.5); the choice belongs to Daedalus's player and has not been made.
6. **Whether Association assignments pay a completion bonus at all is now an open question, not settled fact.** Thorne asserted one exists; no Reikon economy rule backs that claim. Left genuinely undecided rather than assumed either way.
7. **Warehouse 7's discretionary bonus is explicitly pending Association processing**, per Thorne's own account — no amount assigned, no timeline beyond "a day or two."
8. **Why the tannery Rift held no guardians at all is unestablished.** Not a rule violation — no canon rule requires guardians — but also not explained in fiction. Open worldbuilding question.
9. **What Daedalus told the Association versus what he told Kalens is not identical in audience, only in content**, though this thread is now largely moot with Warehouse 7 fully resolved.

## Next Session Must Know

Resume just outside the collapsed tannery-district E-Rift. Health and Mana are both full (110/110, 15/15); XP stands at 95/170 at Level 3. **2 allocation points are unspent and await Daedalus's player's decision** on Stats versus Abilities before the next uncertain action that would benefit from them. `intervention_silent_checks` is 1.

**Warehouse 7 is closed for good.** The bonded core was extracted successfully via resonance work by Wren Ashcombe; Kalens has it now for long-term Institute study. This objective needs no further play attention unless new developments arise from the research side. No milestone XP came to Daedalus from it, since he did not perform the clearing act himself.

Daedalus carries the unappraised tannery core, three unsold D-cores, 55 E-cores, and 24 vells. Two flagged gaps remain genuinely open rather than resolved by assumption: whether Association assignments carry any completion bonus at all beyond core-sale value — Thorne's claim of one is unauthored — and Warehouse 7's own mentioned discretionary bonus, still pending Association processing with no figure attached. Profile 0.7 recurrent interventions remain live under Section 9.6; the next silent check, if it occurs, would be the second consecutive one, after which the following trigger cannot be silent.
