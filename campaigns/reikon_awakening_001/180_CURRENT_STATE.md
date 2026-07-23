# Current State — Reikon Awakening 001

**Canonical entry point.** This ledger holds only what Rules Section 13.2 assigns it: what is active and what remains unresolved, presenting — without owning — the protagonist's location of record (`100_CHARACTER_SHEET.md` `canonical_state.location`; Decision 073). Character, inventory, relationship, objective, and event state are owned by the standard live ledgers alongside this file and are **not** duplicated here.

## Record

```yaml
id: REC-000045
canonical_record: REC-000045
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000050
  event_time: "Year 31 AR, Warehouse 7 resonance extraction and tannery E-Rift clear"
  record_time: "2026-07-22T12:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

## Bindings and Compatibility

- Engine: 0.2.0; Data Model: 0.1.2
- World: Reikon 0.1
- World Rule Profile: Reikon 0.8 (`RKO-OVR-001`, `RKO-OVR-002`) — recurrent intervention and succession contract active; the Warehouse 7 life-burn event remains expired; Emberbrand (the first recurrent-intervention grant) is spent, not merely expired; Section 8.2's Rift-clear milestone formula is authored; Stats are uncapped (Section 4.2) and Ascension grants 5 points (Section 4.1). *(Profile 0.9/0.10 authoring — Stat payoffs and the Rift threat model — is a separate world-content change adopted at the next readiness gate, Section 14.4.)*
- Compatibility: compatible; no version mismatch outstanding

## Restore Point

**Live canon in this directory is authoritative.** Resume from this ledger.

- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0017/` — Warehouse 7's permanent resolution (Wren Ashcombe's resonance extraction, `EVT-000048`) and the unguarded tannery E-Rift clear (+70 milestone XP, `EVT-000049`), sequenced after the Stat-cap removal. Two flagged corrections: Thorne's unauthored assignment-bonus claim (`EVT-000050`) and the recorded 24-vell Ashgate sale proceeds (`ENT-000086`).
- **Prior restorable checkpoint:** `saves/900_CHECKPOINT_0016/` — the Stat-cap removal and Ascension-rate ruling (World Rule Profile 0.8, `EVT-000045`) and the allocation of all 8 points (`EVT-000046`), applied retroactively.
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0015/` — the Rift-clear milestone XP formula ruling (World Rule Profile 0.7), its retroactive application to the Ashgate clear, and the resulting Ascension to Level 3 (`EVT-000044`).
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0014/` — Ashgate chamber mop-up (all nine Broodlings confirmed dead), core extraction, and Rift closure, plus a ruling flagging the unauthored Rift-clear milestone XP magnitude and awarding only the confirmed per-kill XP (`EVT-000042`, `EVT-000043`).
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0013/` — morning training, Warehouse 7 observation-only re-examination, Institute follow-up, declined D-core sale, and a new solo Ashgate E-Rift assignment left mid-encounter (`EVT-000041`).
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0012/` — wound treatment, the Institute data handoff and Association clear report (`EVT-000038`), a full night's deterministic recovery (`EVT-000039`), and the Profile 0.6 recurrent-intervention grant of Emberbrand (`EVT-000040`).
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0011/` — the `EVT-000037` correction naming the Institute's director Dr. Ambrose Teague; records only, no fictional time elapsed.
- **Earlier restorable checkpoint:** `saves/900_CHECKPOINT_0010/` — the `EVT-000035` omission repair and the `EVT-000036` identity disambiguation over the Profile 0.6 state; no played fiction differs.
- **Still-earlier restorable checkpoint:** `saves/900_CHECKPOINT_0009/` — Profile 0.6 migration over the complete owner-approved continuation; no played fiction differs.
- **Pre-Profile-0.6 checkpoint:** `saves/900_CHECKPOINT_0008/` — the same post-combat fiction under Profile 0.5.
- **Pre-Session-2 fork point:** `saves/900_CHECKPOINT_0004/` — the recovered post-pack-leader state under Reikon World Rule Profile 0.3.
- **`saves/900_CHECKPOINT_001/` is a superseded nonconforming original — not itself a restore target, but no save-point is lost.** Its Session-1 state was re-issued as conforming Checkpoint 0002 (verified against the Session 1 transcript); continue from there. The original folder must not be `/load`-ed. Status and reasoning: `saves/README.md`. Its bytes are untouched (Rules Section 13.2).
- **No baseline checkpoint exists for this campaign.** Decision 053 requires one; it was never captured, and Session 1 is already played, so it cannot be captured honestly now. **`/restart` (Redo) is therefore unavailable.** `/branch` (Fork) and `/load` are unaffected.

*Note — branch reconciliation: Checkpoint 0017 is the Warehouse 7 / tannery world-line, whose events were captured on the `checkpoint-0013-ashgate` branch as `EVT-000045`–`EVT-000048` and renumbered +2 to `EVT-000047`–`EVT-000050` (Data Model Invariant 4) to sequence cleanly after main's Stat-cap ruling (`EVT-000045`) and allocation (`EVT-000046`).* 

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
**Location (of record — `100_CHARACTER_SHEET.md` `canonical_state.location`; this ledger presents, does not own, presence — Decision 073):** Verholt's tannery district, just outside the now-collapsed E-Rift.
**Condition:** Full 121/121 Health; full 15/15 Mana; Level 3, 95/170 XP; all 8 allocation points spent (`EVT-000046`). Authoritative values in `100_CHARACTER_SHEET.md`.
**Posture:** Standing at the surface after an unopposed tannery clear — the day's two assignments both closed. Warehouse 7 was resolved earlier by Wren Ashcombe; the tannery E-Rift by his own hand.

**Immediate environment:**

- The tannery-district E-Rift is fully collapsed and closed (`ENT-000084`, archived). It held **no guardians at all** — an unopposed clear. Its extracted core (`ENT-000085`) is carried, unappraised.
- Warehouse 7 is **fully and permanently resolved**: Wren Ashcombe (`ENT-000083`) extracted the bonded core via a matched resonance pulse on a fourth steady pass, zero casualties (`EVT-000048`). Because the clearing act was Wren's, no milestone XP accrued to Daedalus. Warehouse 7 (`ENT-000064`) is archived/closed.
- Daedalus carries the tannery core (`ENT-000085`), nine E-cores from the Ashgate clear, and three unsold D-grade Breaker cores; the fourth D-core (`ENT-000074`) remains with Dr. Soren at the Institute. *(The Ashgate Rift core itself was appraised and sold for the recorded 24 vells — `ENT-000082`, archived; `EVT-000050`.)*
- The 24 vells from the earlier Ashgate core sale, an omission from a prior checkpoint, are now recorded (`ENT-000086`).
- Emberbrand is fully spent (`active_intervention: none`). The new day's recurrent-intervention check rolled Silence (d100 20); `intervention_silent_checks` is at 1.

## What Is Active

- **Warehouse 7 is resolved and closed.** The core is out, Thorne has confirmed the clear officially closed, and the Association will compensate Wren separately. No further action pends on the clear itself.
- **The Institute retains the research thread.** Kalens, Soren, and Marta still hold Daedalus's data and one D-core; the resonance-severance method they and the Athenaeum surfaced is now proven in practice. The D-grade anomaly's cause remains under study.
- **Health and Mana are full.** 121/121 Health; 15/15 Mana after a night's rest and a day without spellcasting.
- **Ascension and allocation are fully settled.** Level 3, 95/170 XP. All 8 allocation points spent (`EVT-000046`): Power 11, Endurance 11, Speed 10, Mana Affinity 15, Perception 15, Fireball Efficiency 1 / Strength 1. Maximum Mana 15, maximum Health 121. Fireball stays Lv 1, cost 11.
- **Training and research state are durable.** Physical-training totals and the Institute relationships remain canonical.
- **Recurrent interventions remain live** under Profile 0.6 Section 9.6. The new-day check rolled Silence; the next eligible trigger is a fresh check.

## Unresolved

1. **Association completion bonus — unauthored, request pending.** Captain Thorne claimed Association assignments pay an automatic completion bonus; checked against 206 Section 12, no such mechanic is authored (`EVT-000050`). No bonus vells were added. A formal Association request on the Warehouse 7 assignment's discretionary bonus remains pending, with no amount assigned.
2. **D-grade anomaly unexplained.** Four Breakers guarded an E-grade Warehouse 7 Rift. Soren has one D-core and the framework observations to study; no findings yet.
3. **Rift stability window: approximately five days from documentation, clock still running.** Marta's hypothesis that deeper cores may collapse their Rifts faster once removed (`ENT-000080`) is not an engine rule; she now has Daedalus's stability data.
4. **The evacuation stone is unused, one use only.**
5. **Cores to sell or study.** Three D-grade cores remain unsold (declined the Association's 15-unit appraisal offer); the tannery core (`ENT-000085`) is unappraised. *(The Ashgate Rift core is already appraised and sold — `ENT-000082`.)* No decisions made.
6. **Power, Speed, and Perception have no authored uncapped growth formula under Profile 0.8.** `EVT-000046` banked 3 points into Power and 1 into Perception past their old die-relevant range; under 0.8 those points do nothing mechanical — a real gap, flagged not invented. *(Addressed by the separate Profile 0.9 authoring, adopted at the next readiness gate.)*
7. **Why the tannery Rift held no guardians is unestablished** (`EVT-000049`). No Reikon rule requires a Rift to be guarded, so this is not a contradiction — but it is unexplained. Flagged as an open worldbuilding question (`worlds/reikon/270_PLAYTEST_BACKLOG.md` PT-002).

## Next Session Must Know

Resume at the tannery-district E-Rift site, both of the day's assignments closed. Health and Mana are full (121/121, 15/15); Level 3, 95/170 XP; all 8 Ascension points allocated (Power 11, Endurance 11, Speed 10, Mana Affinity 15, Perception 15, Fireball Efficiency 1) — Mana Affinity still only ever buys +1 on the die, and under Profile 0.8 the points banked into Power and Perception have no authored payoff. Emberbrand is spent; the new-day intervention check rolled Silence (`intervention_silent_checks` 1).

Warehouse 7 is permanently resolved: Wren Ashcombe extracted the bonded core by matched resonance, zero casualties, no milestone XP to Daedalus. The tannery E-Rift was an unopposed solo clear that earned the full 70 XP milestone. Open threads: Thorne's unauthored completion-bonus claim with a formal Association request pending (`EVT-000050`); the unexplained D-grade anomaly the Institute is still studying; the five-day Rift-stability window; and several unsold/unappraised cores. Profile 0.6 recurrent interventions remain live under Section 9.6.
