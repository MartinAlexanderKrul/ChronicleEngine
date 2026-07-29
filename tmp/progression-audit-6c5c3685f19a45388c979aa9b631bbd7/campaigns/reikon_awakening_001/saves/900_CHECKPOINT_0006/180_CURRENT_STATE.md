# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000032
  event_time: "Year 31 AR, first expedition, post-combat exploration and exit"
  record_time: "2026-07-14T21:15:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Bindings and Compatibility

- Engine: 0.2.0; Data Model: 0.1.1
- World: Reikon 0.1
- World Rule Profile: Reikon 0.3 (`RKO-OVR-001`, `RKO-OVR-002`)
- Compatibility: compatible; no version mismatch outstanding

## Restore Point

**Live canon in this directory is authoritative.** Resume from this ledger.

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0006/` — Session 2 state after the cross-ledger staleness repair and the `EVT-000032` kill-count ruling.
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0005/` — the same Session 2 fiction, but it captured stale world, inventory, objective, and current-state content and the uncorrected kill count. It is restorable and its fiction is sound; restoring it reintroduces the record defects that `saves/900_CHECKPOINT_0006/` repairs. Prefer 0006. Status: `saves/README.md`.
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
**Location:** Hunters' Association headquarters, Verholt, evening.
**Condition:** 60/100 Health; moderate rake injury across the left shoulder and collarbone, now treated by Association healer; 7/13 Mana under active recovery; 55/100 XP. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Standing, treated and resting, wound properly bandaged; cores and scale plate secured.

**Immediate environment:**

- Association headquarters, interior, evening. Daedalus is out of the Rift and off the expedition clock, resting after treatment.
- The Association healer has cleaned, closed, and bandaged the shoulder and collarbone wound.
- His cores (61, `ENT-000060`) and the harvested scale plate (`ENT-000065`) are secured on his person; the bloodied sword (`ENT-000055`) is still uncleaned.
- Warehouse 7 itself stands unattended and uncleared across the city; its state is recorded in `110_WORLD_LEDGER.md` (`ENT-000064`), not here.

## What Is Active

- **Surviving Broodlings have withdrawn.** Their coordinated pressure collapsed when the pack leader died. Whether they left the Rift or fell back into the basement chamber is unestablished — see Unresolved 2.
- **The Warehouse 7 clear is in progress and currently suspended** — six creature kills are confirmed dead and harvested (two Broodlings, three Swarmers, and the pack leader, per `EVT-000032`); additional blast casualties are uncertain; the basement core chamber is located but not entered, and the core has not been reached.
- **The Rift is unattended while Daedalus recovers.** He left it uncleared to seek treatment; the six-day stability window continues to run — see Unresolved 5.
- **Daedalus's physical training is live capability state.** The morning run, sword forms, and pushups are recorded in `100_CHARACTER_SHEET.md`; his swordsmanship is foundational and was demonstrated under lethal pressure. Exertion is medically restricted for one day — see Unresolved 3.

## Unresolved

1. **Core location discovered but not reached.** Basement chamber located beneath the deep storage zone, accessed via downward-sloping concrete corridor. Broodling fled into the darkness. The chamber is vast and extends deeper than the surface warehouse structure suggests. Expedition must resume to locate and clear the core itself.
2. **Remaining population unquantified.** Pack leader confirmed dead; six creature kills confirmed and harvested (`EVT-000032`). Surviving Broodlings broke off and withdrew from the engagement, but where they went is unestablished — whether they hold in the basement chamber or left the Rift is unknown, and earlier blast casualties were never reliably counted. The basement is therefore unscouted and possibly defended.
3. **Injury recovery in progress.** Daedalus is at 60/100 Health with a treated moderate shoulder/collarbone wound. Health recovery is now `active` under light/rest conditions; care is `treated`. Recovery is deterministic under Profile 0.3. Physical exertion should be minimized for one day.
4. **Mana economy remains binding.** Active recovery is 1 per 30 seconds and resting recovery 1 per 10 seconds; Fireball costs 12 of a 13 maximum. Current Mana is 7/13. Three mana potions remain unconsumed.
5. **Rift stability window: six days remaining.** Not yet pressing, but basement chamber exploration must complete within the window.
6. **The evacuation stone is unused, one use only.** The sole emergency exit from a losing fight.

## Next Session Must Know

Daedalus is at 60/100 Health with a treated, actively recovering wound; 7/13 Mana under active recovery; 55/100 XP. He is resting at Hunters' Association headquarters, not in the Rift — the expedition is suspended, not finished. Warehouse 7 is uncleared: six creatures are dead and harvested, the basement core chamber is located but unentered, and roughly six days of the stability window remain to return and clear the core. He carries 61 cores and an unappraised scale plate. His recorded foundational swordsmanship may inform future physical-action modifiers; it is not a System Ability and does not level through XP.
