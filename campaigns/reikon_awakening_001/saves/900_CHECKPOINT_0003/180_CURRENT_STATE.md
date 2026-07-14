# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000030
  event_time: "Year 31 AR, first expedition, pack-leader combat"
  record_time: "2026-07-14T18:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Bindings and Compatibility

- Engine: 0.2.0; Data Model: 0.1.1
- World: Reikon 0.1
- World Rule Profile: Reikon 0.2 (`RKO-OVR-001`, `RKO-OVR-002`)
- Compatibility: compatible; no version mismatch outstanding

## Restore Point

**Live canon in this directory is authoritative.** Resume from this ledger.

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0003/` — captures the recovered post-pack-leader state and repaired training record under Reikon World Rule Profile 0.2.
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0002/` — captures the earlier pack-leader standoff and remains valid for an explicit fork/load.
- **`saves/900_CHECKPOINT_001/` is NOT restorable.** It is quarantined. It snapshots a superseded pre-migration ledger set, omits three required ledgers, and self-reports a validator PASS that never ran. Restoring it would overwrite conforming canon with the nonconforming shape the 2026-07-14 migration removed. Status and reasoning: `saves/README.md`. The checkpoint's own contents are untouched (Rules Section 13.2).
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
**Location:** Warehouse 7 E-Rift interior (`ENT-000064`), deep storage zone, beside the dead pack leader with the Rift core still ahead.
**Condition:** 60/100 Health; moderate rake injury across the left shoulder and collarbone, bleeding controlled; 5/13 Mana under active recovery; 55/100 XP. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Solo, wounded but standing, basic sword bloodied and in hand; surviving Broodlings are retreating.

**Immediate environment:**

- Fire zones are diminishing; smoke, ash, broken shelving, and cracked concrete obstruct the warehouse floor.
- The pack leader lies dead where Daedalus finished it with his sword.
- The Rift's blue-green luminescence pulses with the pack leader's movement — a correlation Daedalus has observed and which is recorded as his Knowledge State (`100_CHARACTER_SHEET.md`).
- Concrete is cracked, with Rift mana visibly seeping through.

## What Is Active

- **Surviving Broodlings are retreating.** Their coordinated pressure collapsed when the pack leader died; they are not an immediate threat but remain inside the Rift unless they fully withdraw.
- **The Warehouse 7 clear is in progress** — five earlier creatures and the pack leader are confirmed dead; additional blast casualties are uncertain; the core lies deeper and has not been reached.
- **Daedalus's physical training is live capability state.** The morning run, sword forms, and pushups are recorded in `100_CHARACTER_SHEET.md`; his swordsmanship is foundational and was demonstrated under lethal pressure.

## Unresolved

1. **Core location unknown.** The deep chamber has not been reached; the clear cannot complete without it.
2. **Remaining population unquantified.** The pack leader is dead and survivors are retreating, but the original estimate and blast casualties do not establish an exact remaining count.
3. **Injury management.** Daedalus is at 60/100 Health with a painful shoulder/collarbone wound that can hinder physical action until treated or healed.
4. **Mana economy remains binding.** Active recovery is 1 per 30 seconds and resting recovery 1 per 10 seconds; Fireball costs 12 of a 13 maximum. Current Mana is 5/13. Three potions remain the only fast reserve.
5. **Rift stability window: six days remaining.** Not yet pressing.
6. **The evacuation stone is unused, one use only.** The sole exit from a losing fight.

## Next Session Must Know

Daedalus is wounded at 60/100 Health, recovering from 5/13 Mana, and has 55/100 XP. The pack leader is dead and surviving Broodlings are retreating. The Rift core remains ahead. His recorded foundational swordsmanship may inform future physical-action modifiers; it is not a System Ability and does not level through XP.
