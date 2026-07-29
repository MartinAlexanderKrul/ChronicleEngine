# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000040
  event_time: "Year 31 AR, dawn following the Institute consultation"
  record_time: "2026-07-20T07:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Bindings and Compatibility

- Engine: 0.2.0; Data Model: 0.1.1
- World: Reikon 0.1
- World Rule Profile: Reikon 0.6 (`RKO-OVR-001`, `RKO-OVR-002`) — recurrent intervention and succession contract active; the Warehouse 7 life-burn event remains expired
- Compatibility: compatible; no version mismatch outstanding

## Restore Point

**Live canon in this directory is authoritative.** Resume from this ledger.

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0012/` — wound treatment, the Institute data handoff and Association clear report (`EVT-000038`), a full night's deterministic recovery (`EVT-000039`), and the Profile 0.6 recurrent-intervention grant of Emberbrand (`EVT-000040`).
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
**Location:** His own rented room, Verholt working quarter (`ENT-000066`).
**Condition:** Full 105/105 Health, no active injury; 14/14 Mana; Level 2, 31/130 XP. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Just woken at dawn, still in his own room, having reported the clear and consulted the Institute the evening before.

**Immediate environment:**

- Three of the four harvested D-grade Breaker cores are in his room; the fourth (`ENT-000074`) is with Dr. Soren at the Institute for analysis.
- Warehouse 7's basement is unoccupied and untouched since Daedalus left it. The bonded core remains suspended, unextracted, in the same state as when he left.
- A System notification just resolved: Emberbrand, a one-use technique, active and unspent.

## What Is Active

- **The Warehouse 7 clear is logged and at its final core stage.** The Hunters' Authority has recorded the basement as contained, core pending specialist recovery. Direct extraction already failed once; safe severance, sealing, or specialist recovery is the remaining condition.
- **The Institute is actively investigating the severance problem.** Kalens, Soren, and Marta all hold Daedalus's data (and one D-core) as of the same evening; none has reported findings back yet.
- **Recovery is complete.** Health and Mana are both full after a night's rest; no lingering injury or condition is recorded.
- **Ascension is settled.** Level 2, 31/130 XP, Mana Affinity 14, Fireball Strength 1, maximum Mana 14, maximum Health 105.
- **Training and research state are durable.** Physical-training totals and the three Institute relationships remain canonical. Kalens's same-day condition on `REL-000045` is now met **and honoured**.
- **The System has intervened: Emberbrand is live.** One-use, no cost beyond the Ability's own Mana — the next successful Fireball or Combustion Touch strikes at critical-success force. Expires at the next sunrise if unused. The silence counter is at zero (this check was not silent).

## Unresolved

1. **Core unextracted.** Direct force failed at effective 22. The Institute is now working the severance problem with real data, but no method has been returned yet.
2. **D-grade anomaly unexplained.** Four Breakers guarded an E-grade Rift. Soren now has one D-core and the framework observations to study; no findings yet.
3. **Rift stability window: approximately five days remaining, and the clock has been running since it was first assessed.** Marta warned that deeper cores may collapse their Rifts faster once removed (`ENT-000080`) — a hypothesis, not an engine rule, and the window is unchanged until canon says otherwise. She now has Daedalus's stability data directly.
4. **The evacuation stone is unused, one use only.** The sole emergency exit from a losing fight.
5. **Emberbrand is a live, expiring resource.** One use, tied to Fireball or Combustion Touch landing successfully, gone at the next sunrise whether spent or not — and the System offered no explanation for granting it.
6. **What Daedalus told the Association versus what he told Kalens is not identical in audience, only in content.** Both now know about the anomalous core; how each institution acts on that knowledge going forward is unresolved and may diverge.

## Next Session Must Know

Resume at dawn in Daedalus's own rented room, Level 2, 31/130 XP, full Health and Mana. The prior evening he treated his wounds, gave Dr. Kalens the complete basement findings in person (honoring the same-day condition), and logged the clear with the Hunters' Authority including the anomalous core. The Institute — Kalens, Soren, and Marta — now holds his data and one D-core and is investigating a real severance method; nothing has come back yet. The bonded core itself is untouched, still in Warehouse 7, still on its stability clock.

A System intervention just fired unprompted: Emberbrand, one use, forcing critical-success force on the next successful Fireball or Combustion Touch, gone at the next sunrise whether used or not. The System gave no reason. Profile 0.6 recurrent interventions remain live; the next eligible trigger is checked only under Section 9.6, and any result must be fully specified and promoted. The System seeks growth, not Daedalus's safety, and a lethal outcome is not suppressed merely because he is the current Bearer.
