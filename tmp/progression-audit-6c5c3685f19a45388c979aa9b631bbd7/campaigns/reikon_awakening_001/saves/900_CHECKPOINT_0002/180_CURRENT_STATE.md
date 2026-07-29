# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000028
  event_time: "Year 31 AR, first expedition, mid-clear"
  record_time: "2026-07-14T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Bindings and Compatibility

- Engine: 0.2.0; Data Model: 0.1.1
- World: Reikon 0.1
- World Rule Profile: Reikon 0.1 (`RKO-OVR-001`, `RKO-OVR-002`)
- Compatibility: compatible; no version mismatch outstanding

## Restore Point

**Live canon in this directory is authoritative.** Resume from this ledger.

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0002/` — captures this state; verified against the Session 1 transcript (`exports/README.md`).
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
**Location:** Warehouse 7 E-Rift interior (`ENT-000064`), deep storage zone — approximately 40–50 metres from a pack leader creature.
**Condition:** Undamaged and at full mana. No wounds, no active conditions, no consumables spent. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Solo, no backup and no supervisor. Standing, mana recovered, having just resolved a second combat.

**Immediate environment:**

- A crate stack burns down behind him; smoke is diminishing.
- Shelving is damaged or collapsed across several zones; one Swarmer lies buried under a collapsed frame.
- The Rift's blue-green luminescence pulses with the pack leader's movement — a correlation Daedalus has observed and which is recorded as his Knowledge State (`100_CHARACTER_SHEET.md`).
- Concrete is cracked, with Rift mana visibly seeping through.

## What Is Active

- **The pack leader has stopped moving and is waiting.** It growled, chose its ground roughly 40 metres ahead, and did not close. It tracks by scent, mana, or vibration rather than sight. Broodlings are clustered around it.
- **The Warehouse 7 clear is in progress** — five of an estimated 15–20 creatures defeated; the core lies deeper and has not been reached.

## Unresolved

1. **Pack leader encounter, imminent.** Engage or evade must be decided. It is larger and more coordinated than anything met so far, and no roll has yet been made against it.
2. **Core location unknown.** The deep chamber has not been reached; the clear cannot complete without it.
3. **Remaining population unquantified.** Briefing estimated 15–20; five are dead; 10–15 remain, including the pack leader and its cluster.
4. **Mana economy is the binding constraint.** Natural recovery is 1 per 10 seconds; Fireball costs 12 of a 13 maximum. Each cast empties him for roughly two minutes. Three potions are the only fast reserve.
5. **Rift stability window: six days remaining.** Not yet pressing.
6. **The evacuation stone is unused, one use only.** The sole exit from a losing fight.

## Next Session Must Know

Daedalus is at full strength but one Fireball from empty, alone, with an intelligent creature that has deliberately chosen to wait for him. The next declared intent resolves against the pack leader.
