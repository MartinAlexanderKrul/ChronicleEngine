# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: where the protagonist is now, what is active, and what remains unresolved. Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000035
  event_time: "Year 31 AR, recovery and Institute consultation"
  record_time: "2026-07-15T16:44:48Z"
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

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0010/` — the `EVT-000035` omission repair and the `EVT-000036` identity disambiguation over the Profile 0.6 state; records only, no fictional time elapsed.
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0009/` — Profile 0.6 migration over the complete owner-approved continuation; recurrent interventions and succession are active with no fictional time elapsed. Restoring it loses the Institute consultation's artifacts and conditions (`ENT-000078`–`ENT-000080`) and reopens the Venn/Vane ambiguity, but no played fiction differs.
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0008/` — the same post-combat fiction under Profile 0.5, before recurrent intervention checks and succession were declared.
- **Pre-Session-2 fork point:** `saves/900_CHECKPOINT_0004/` — migrates the recovered post-pack-leader state to Reikon World Rule Profile 0.3 with canonical Health-recovery state.
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
**Location:** Warehouse 7 E-Rift basement core chamber, beside the suspended core.
**Condition:** 88/105 Health; treated moderate shoulder, rib, and burn injuries; 7/14 Mana under active recovery; Level 2, 31/130 XP. Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Standing post-combat with sword bloodied, notebook, Kalens's address slip, and harvested D-cores secured.

**Immediate environment:**

- All four D-grade Breakers are dead and harvested; their four D-cores are carried by Daedalus.
- The metre-tall burgundy core remains suspended in an organic crystalline framework. Direct extraction failed because the connection is energetic, not merely physical.
- The core pulses every three seconds, radiates heat, and resonates with an approximately eight-metre geometric floor pattern. Detailed measurements and behavioral notes are in Daedalus's notebook.
- The one-combat life-burn anomaly ended with the core guardian's death. Ordinary Mana gates apply again without exception.

## What Is Active

- **The Warehouse 7 clear is at its final core stage.** The basement threat is eliminated; the core still requires safe severance, sealing, or specialist extraction.
- **Recovery is active.** Mana recovers at the active rate; Health is in light treated recovery. New exertion can interrupt Health recovery.
- **Ascension is settled.** Level 2, 31/130 XP, Mana Affinity 14, Fireball Strength 1, maximum Mana 14, maximum Health 105.
- **Training and research state are durable.** Physical-training totals, the three Institute relationships, and detailed chamber notes remain canonical. The Kalens alliance carries a live same-day reporting condition and a private channel to his home (`REL-000045`, `ENT-000078`); see Unresolved 7.
- **The System may intervene again, but the life-burn effect may not.** At declared Profile-0.6 triggers it can issue directives, grant a different finite technique, or create a trial Rift. No active intervention is currently held; the silence counter is zero.

## Unresolved

1. **Core unextracted.** Direct force failed at effective 22. Specialist energetic severance or sealing instructions are needed; damaging the framework may destabilize the Rift or core.
2. **D-grade anomaly unexplained.** Four Breakers guarded an E-grade Rift. Their core coloration and possible bond to the chamber require Institute analysis.
3. **Injury recovery in progress.** Daedalus is at 88/105 Health with treated moderate shoulder, rib, and burn injuries. Health recovery is `light`; renewed exertion pauses it.
4. **Mana economy remains binding.** Active recovery is 1 per 30 seconds and Fireball costs 12. Current Mana is 7/14. Inventory contains one full mana vial and one half-vial, 30 Mana total.
5. **Rift stability window: approximately five days remaining.** The chamber is safe enough to document, but final core handling remains time-bound. Marta warned Daedalus that deeper cores may collapse their Rifts faster once removed (`ENT-000080`) — a preliminary hypothesis, not an engine rule, and the window is unchanged until canon says otherwise. Daedalus has been told the post-extraction clock on a basement core like this one may be shorter than the posted window suggests.
6. **The evacuation stone is unused, one use only.** The sole emergency exit from a losing fight.
7. **Kalens's same-day condition is met and unhonoured.** He asked to hear about anything anomalous the same day, ahead of a full report (`REL-000045`); four D-grade Breakers on an E-grade Rift and a bonded core qualify. Daedalus carries his home address and early-evening window (`ENT-000078`) and has not yet sent word. Kalens also warned that basement-core findings must be shared carefully because of the Vigil's interest in deep phenomena (`ENT-000079`), so reporting through Association channels is not equivalent to reporting to him.

## Next Session Must Know

Resume after Daedalus's failed direct extraction attempt and subsequent framework study. He is Level 2 at 31/130 XP, 88/105 Health, and 7/14 Mana. All four Breakers are dead and harvested; the core is documented but still energetically bonded. The life-burn anomaly was a single owner-authored System intervention for that combat and has expired permanently—do not offer or infer overcasting. The next decision is whether to leave and report, contact specialists, attempt sealing, rest further, or pursue another properly resolved method.

Reporting is not one undifferentiated option. Daedalus owes Kalens same-day word on exactly this kind of anomaly and can reach him privately at home (Unresolved 7), while Kalens has warned that basement-core findings are what the Vigil is watching for. Who Daedalus tells, and in what order, is a live choice with consequences — not a formality.

Profile 0.6 recurrent interventions are now live. The next eligible trigger is checked only under Section 9.6; any resulting temporary skill or trial must be fully specified and promoted. The System seeks growth, not Daedalus's safety, and a lethal outcome is not suppressed merely because he is the current Bearer.
