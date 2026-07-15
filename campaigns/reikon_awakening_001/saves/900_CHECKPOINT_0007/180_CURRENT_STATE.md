# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000033
  event_time: "Year 31 AR, Warehouse 7 basement engagement"
  record_time: "2026-07-15T09:15:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Bindings and Compatibility

- Engine: 0.2.0; Data Model: 0.1.1
- World: Reikon 0.1
- World Rule Profile: Reikon 0.4 (`RKO-OVR-001`, `RKO-OVR-002`) — 0.4 adds Section 12 (Economy); no 0.3 rule changed and no ledger value recalculated
- Compatibility: compatible; no version mismatch outstanding

## Restore Point

**Live canon in this directory is authoritative.** Resume from this ledger.

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0007/` — the recovered shared-chat continuation through the last rules-valid exchange, closing mid-combat before the rejected low-Mana Fireball.
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0006/` — the post-treatment state before the recovered continuation and the preferred earlier fork point.
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0004/` — migrates the recovered post-pack-leader state to Reikon World Rule Profile 0.3 with canonical Health-recovery state; the pre-Session-2 fork point.
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
**Location:** Four-metre ledge inside the Warehouse 7 E-Rift basement core chamber.
**Condition:** 90/100 Health; treated moderate rake injury across the left shoulder and collarbone; 1/13 Mana under active recovery; Level 1, 74/100 XP. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Armed on the ledge in active combat; one Breaker is climbing toward him.

**Immediate environment:**

- The deep-red Rift core hangs in a crystalline framework below and remains unextracted.
- One D-grade Breaker lies dead on the ledge. Three remain active: a burned climber approaching Daedalus, a critically burned flank creature, and an unharmed guardian near the core.
- Daedalus's sword is bloodied by the ledge sentinel. An energy tonic is active; one tonic remains in inventory.
- His failed area Fireball has just spent 12 Mana. No quantified interval sufficient for another recovery tick has completed.

## What Is Active

- **Active combat.** One Breaker is climbing toward the ledge, another is critically burned on the flank, and the core guardian is unharmed.
- **The Warehouse 7 clear is in progress.** Seven kills are confirmed across the expedition. The core chamber has been entered and the core is visible, but neither the remaining guardians nor the core have been cleared.
- **Mana recovery is active; Health recovery is paused by combat.** Fireball costs 12 Mana and is unavailable at the current 1/13.
- **Training and research state are durable.** Recorded physical-training totals and the three Institute research relationships are owned by their canonical ledgers.

## Unresolved

1. **Core reached but not extracted.** Its suspended deep-red form and crystalline framework are observed; safe extraction requirements and effects are unknown.
2. **Three D-grade Breakers remain active.** Their exact remaining Health is not authored; only the narrated condition states above are canonical.
3. **Injury recovery interrupted by combat.** Daedalus is at 90/100 Health with a treated moderate shoulder/collarbone wound. Health recovery is `paused`; care remains `treated`.
4. **Mana economy is immediately binding.** Active recovery is 1 per 30 seconds and Fireball costs 12. Current Mana is 1/13; three mana potions remain unconsumed.
5. **Rift stability window: six days remaining.** Not yet pressing, but basement chamber exploration must complete within the window.
6. **The evacuation stone is unused, one use only.** The sole emergency exit from a losing fight.

## Next Session Must Know

Resume immediately after the failed basement Fireball and before the next player action. Daedalus is at 90/100 Health, 1/13 Mana, Level 1, and 74/100 XP on the chamber ledge. Three Breakers remain active and the core is unextracted. A Fireball costs 12 Mana and **cannot** be attempted at the current pool; do not restore the rejected Health-overcast branch. Legal play must begin from a resource-valid choice such as defending, repositioning, using an available item, or allowing enough authored time for recovery.
