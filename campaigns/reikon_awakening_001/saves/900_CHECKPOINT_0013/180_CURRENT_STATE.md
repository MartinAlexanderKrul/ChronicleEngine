# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000041
  event_time: "Year 31 AR, Ashgate E-Rift solo assignment"
  record_time: "2026-07-21T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Bindings and Compatibility

- Engine: 0.2.0; Data Model: 0.1.1
- World: Reikon 0.1
- World Rule Profile: Reikon 0.6 (`RKO-OVR-001`, `RKO-OVR-002`) — recurrent intervention and succession contract active; the Warehouse 7 life-burn event remains expired; Emberbrand (the first recurrent-intervention grant) is now spent, not merely expired
- Compatibility: compatible; no version mismatch outstanding

## Restore Point

**Live canon in this directory is authoritative.** Resume from this ledger.

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0013/` — morning training, Warehouse 7 observation-only re-examination (new framework-asymmetry detail), Institute follow-up, declined D-core sale, and a new solo Ashgate E-Rift assignment left mid-encounter: two Broodlings confirmed killed, a larger cluster struck by an Emberbrand-empowered critical Fireball but not yet confirmed clear (`EVT-000041`).
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0012/` — wound treatment, the Institute data handoff and Association clear report (`EVT-000038`), a full night's deterministic recovery (`EVT-000039`), and the Profile 0.6 recurrent-intervention grant of Emberbrand (`EVT-000040`).
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
**Location:** Ashgate district E-Rift interior (`ENT-000081`), at the edge of its core chamber.
**Condition:** Full 105/105 Health; 2/14 Mana (Fireball just cast); Level 2, 43/130 XP. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Standing at the core-chamber threshold, sword and satchel in hand, immediately after a critical-force Fireball struck a cluster of Broodlings guarding the chamber's small pale-green core.

**Immediate environment:**

- Two Broodlings are confirmed dead nearby, harvested for two E-cores (core purse now 48).
- The larger cluster hit by the Fireball (roughly seven Broodlings including the one that fled to them) is **not yet confirmed clear** — several are dead, a few still move at the blast's edge. This encounter is unresolved.
- The small pale-green Ashgate core sits undisturbed in its alcove, unextracted, guardians largely down.
- Three D-grade Breaker cores from Warehouse 7 are carried with him (declined for sale); the fourth (`ENT-000074`) remains with Dr. Soren at the Institute for analysis.
- Warehouse 7's basement is unoccupied and untouched. The bonded core remains suspended, unextracted. Daedalus holds solo *observation-only* clearance there — extraction is not authorized — and used it to find a new structural detail: the crystalline framework thins and darkens right at its point of contact with the core.
- Emberbrand is fully spent (`active_intervention: none`).

## What Is Active

- **The Warehouse 7 clear is logged and at its final core stage, on hold pending Association authorization.** Solo observation-only clearance is granted; extraction is not authorized until a specialist signs off. Direct extraction already failed once; safe severance, sealing, or specialist recovery remains the clear condition. A new structural detail was found this session (framework thins at the core's contact point) and forwarded to Kalens by letter.
- **The Institute is actively investigating the severance problem.** Kalens, Soren, and Marta all hold Daedalus's data (and one D-core); none has reported a breakthrough yet. Kalens has reached out to the Verholt Athenaeum for outside expertise.
- **A second, unrelated assignment is now open and unresolved: the Ashgate E-Rift.** Solo-eligible, taken from the dispatch board. Two Broodlings confirmed dead and harvested; a larger cluster (six or seven, plus the one that fled to join them) was struck by a critical-force Fireball but is **not yet confirmed clear** — this is genuinely mid-encounter, not a completed clear.
- **Health is full; Mana is low.** 105/105 Health; 2/14 Mana after the Fireball cast.
- **Ascension is settled.** Level 2, 43/130 XP, Mana Affinity 14, Fireball Strength 1, maximum Mana 14, maximum Health 105.
- **Training and research state are durable.** Physical-training totals and the three Institute relationships remain canonical. Kalens's same-day condition on `REL-000045` remains met **and honoured**.
- **Emberbrand has been spent, not merely expired.** It was used on the Ashgate Fireball; `active_intervention` is now `none`. The next recurrent intervention check follows Profile 0.6 Section 9.6's normal triggers.

## Unresolved

1. **Warehouse 7 core unextracted, and now access-gated too.** Direct force failed at effective 22. The Institute is working the severance problem with real data, but no method has been returned yet, and Thorne will not authorize a second solo extraction attempt without specialist sign-off.
2. **D-grade anomaly unexplained.** Four Breakers guarded an E-grade Rift. Soren now has one D-core and the framework observations (plus the new contact-point asymmetry) to study; no findings yet.
3. **Rift stability window: approximately five days from documentation, clock still running.** Marta warned that deeper cores may collapse their Rifts faster once removed (`ENT-000080`) — a hypothesis, not an engine rule. She now has Daedalus's stability data directly and is cross-referencing the pulse interval against one other historical dataset.
4. **The evacuation stone is unused, one use only.** The sole emergency exit from a losing fight.
5. **The Ashgate encounter is mid-resolution.** A critical-force Fireball struck a cluster of roughly seven Broodlings near the Ashgate core; several are dead, a few are still visibly moving at the blast's edge. The chamber is not confirmed clear, and Daedalus is standing at 2/14 Mana with Emberbrand already spent.
6. **Three D-grade cores remain in Daedalus's possession, unsold.** He declined the Association's appraisal offer (15 units total) on advice the Institute may want first look; not yet decided which way he'll go.
7. **What Daedalus told the Association versus what he told Kalens is not identical in audience, only in content.** Both now know about the anomalous core; how each institution acts on that knowledge going forward is unresolved and may diverge.

## Next Session Must Know

Resume inside the Ashgate E-Rift's core chamber, immediately after Daedalus's Fireball struck the Broodling cluster at critical force. Health is full (105/105); Mana is low (2/14); Emberbrand is spent. Two Broodlings are confirmed dead and harvested (43/130 XP); the larger cluster's survival status is **not resolved** — this is where play must pick back up, not a completed clear. The small pale-green Ashgate core sits in its alcove, unextracted.

Separately: Warehouse 7's bonded core is untouched, still with the Institute investigating severance; Daedalus holds observation-only clearance there, no extraction authorized. He carries three unsold D-cores and sent Kalens a follow-up letter about a new framework asymmetry found on a second inspection. Profile 0.6 recurrent interventions remain live under Section 9.6; the next eligible trigger is a fresh check, since Emberbrand's grant is already resolved and spent.
