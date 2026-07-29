# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000044
  event_time: "Year 31 AR, milestone-XP ruling applied retroactively to the Ashgate clear"
  record_time: "2026-07-21T02:00:00Z"
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

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0015/` — the Rift-clear milestone XP formula ruling (World Rule Profile 0.7), its retroactive application to the Ashgate clear, and the resulting Ascension to Level 3 (`EVT-000044`).
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0014/` — Ashgate chamber mop-up (all nine Broodlings confirmed dead), core extraction, and Rift closure, plus a ruling flagging the unauthored Rift-clear milestone XP magnitude and awarding only the confirmed per-kill XP (`EVT-000042`, `EVT-000043`).
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0013/` — morning training, Warehouse 7 observation-only re-examination (new framework-asymmetry detail), Institute follow-up, declined D-core sale, and a new solo Ashgate E-Rift assignment left mid-encounter: two Broodlings confirmed killed, a larger cluster struck by an Emberbrand-empowered critical Fireball but not yet confirmed clear (`EVT-000041`).
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
**Location:** Ashgate district, just outside the collapsed E-Rift.
**Condition:** Full 110/110 Health; 2/14 Mana (Fireball spent, not yet recovered); Level 3, 25/170 XP; 2 unspent allocation points. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Standing at the surface, having just cleared the entrance fissure with room to spare as the Rift collapsed behind him.

**Immediate environment:**

- All nine Broodlings from the Ashgate engagement are confirmed dead and harvested (two in melee, seven in the core chamber). Nine E-cores added to the core purse (46 to 55).
- The small pale-green Ashgate core was extracted cleanly and is carried separately, unappraised (`ENT-000082`).
- The Ashgate E-Rift itself is fully collapsed and closed (`ENT-000081`, archived); the silo above is just an abandoned building again.
- A perimeter watchman is nearby, mildly surprised at how quick the clear was.
- Three D-grade Breaker cores from Warehouse 7 are still carried with him (declined for sale); the fourth (`ENT-000074`) remains with Dr. Soren at the Institute for analysis.
- Warehouse 7's basement is unoccupied and untouched. The bonded core remains suspended, unextracted. Daedalus holds solo *observation-only* clearance there — extraction is not authorized.
- Emberbrand is fully spent (`active_intervention: none`).
- **The Rift-clear milestone XP gap is resolved.** Section 8.2 now specifies a flat ×10 grade-baseline multiplier (World Rule Profile 0.7). Applied retroactively to the Ashgate clear at owner discretion: 70 XP, crossing the threshold into Ascension to Level 3. Checkpoint 0014 is unaffected and remains sealed at its own settled 85 XP.

## What Is Active

- **The Warehouse 7 clear is logged and at its final core stage, on hold pending Association authorization.** Solo observation-only clearance is granted; extraction is not authorized until a specialist signs off. Direct extraction already failed once; safe severance, sealing, or specialist recovery remains the clear condition. A new structural detail was found this session (framework thins at the core's contact point) and forwarded to Kalens by letter.
- **The Institute is actively investigating the severance problem.** Kalens, Soren, and Marta all hold Daedalus's data (and one D-core); none has reported a breakthrough yet. Kalens has reached out to the Verholt Athenaeum for outside expertise.
- **The Ashgate E-Rift is closed.** All nine Broodlings confirmed dead; the core extracted; the Rift collapsed. This objective is complete.
- **Health is full; Mana is low.** 110/110 Health; 2/14 Mana, unspent since the Fireball cast.
- **Ascension is settled, twice over.** Level 3, 25/170 XP, Mana Affinity 14, Fireball Strength 1, maximum Mana 15, maximum Health 110. **2 allocation points are unspent** — granted by the milestone-XP Ascension and deliberately left for Daedalus's own allocation decision, not spent by the ruling that granted them.
- **Training and research state are durable.** Physical-training totals and the three Institute relationships remain canonical. Kalens's same-day condition on `REL-000045` remains met **and honoured**.
- **Emberbrand has been spent, not merely expired.** It was used on the Ashgate Fireball; `active_intervention` is now `none`. The next recurrent intervention check follows Profile 0.6 Section 9.6's normal triggers.

## Unresolved

1. **Warehouse 7 core unextracted, and now access-gated too.** Direct force failed at effective 22. The Institute is working the severance problem with real data, but no method has been returned yet, and Thorne will not authorize a second solo extraction attempt without specialist sign-off.
2. **D-grade anomaly unexplained.** Four Breakers guarded an E-grade Rift. Soren now has one D-core and the framework observations (plus the new contact-point asymmetry) to study; no findings yet.
3. **Rift stability window: approximately five days from documentation, clock still running.** Marta warned that deeper cores may collapse their Rifts faster once removed (`ENT-000080`) — a hypothesis, not an engine rule. She now has Daedalus's stability data directly and is cross-referencing the pulse interval against one other historical dataset.
4. **The evacuation stone is unused, one use only.** The sole emergency exit from a losing fight.
5. **Three D-grade cores remain in Daedalus's possession, unsold.** He declined the Association's appraisal offer (15 units total) on advice the Institute may want first look; not yet decided which way he'll go.
6. **The extracted Ashgate core is unappraised.** No decision made yet on whether to sell, study, or report it beyond the routine clear.
7. **2 allocation points from the milestone-XP Ascension are unspent.** Points come only from levelling (Section 4.1) and allocation is irreversible (Section 4.5); the choice belongs to Daedalus's player and has not been made.
8. **What Daedalus told the Association versus what he told Kalens is not identical in audience, only in content.** Both now know about the anomalous core; how each institution acts on that knowledge going forward is unresolved and may diverge.

## Next Session Must Know

Resume just outside the collapsed Ashgate E-Rift. Health is full (110/110); Mana is low (2/14, unspent since the Fireball); Emberbrand is spent. All nine Ashgate Broodlings are confirmed dead, harvested for nine E-cores (core purse 55); the extracted Ashgate core is carried separately, unappraised. XP stands at 25/170 at Level 3 — the Rift-clear milestone gap is resolved (×10 grade baseline, World Rule Profile 0.7) and was applied retroactively to Ashgate, firing this Ascension. **2 allocation points are unspent and await Daedalus's player's decision** on Stats versus Abilities before the next uncertain action that would benefit from them.

Separately: Warehouse 7's bonded core is untouched, still with the Institute investigating severance; Daedalus holds observation-only clearance there, no extraction authorized. He carries three unsold D-cores and sent Kalens a follow-up letter about a new framework asymmetry found on a second inspection. Profile 0.6 recurrent interventions remain live under Section 9.6; the next eligible trigger is a fresh check, since Emberbrand's grant is already resolved and spent.
