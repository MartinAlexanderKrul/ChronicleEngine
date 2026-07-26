# Save Manifest — Gatefall: Pendragon — Checkpoint 0026

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0026` — automatic context-preservation checkpoint at Owen Callahan's apartment, the night of the crew's first training session
**Kind:** Automatic context-preservation checkpoint

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: automatic-context-preservation
  real_date: "2026-07-26T19:05:32+02:00"
  source: EVT-000116
  game_date: "2026-08-02T21:50:00-05:00; night, Owen Callahan's apartment in Rogers Park, Chicago"
  trigger: "Resident Context-Preservation Watch — 28 resolved player exchanges since Checkpoint 0025, past the 20-exchange fallback cadence with no host context telemetry"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.14"
    freeze_status: frozen
  campaign_schema: "0.1.4"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0025
  canonical_continuation: true
  branch: session-3-main
included_ledgers:
  - REC-000074
  - REC-000075
  - REC-000076
  - REC-000077
  - REC-000078
  - REC-000079
  - REC-000080
  - REC-000081
compatibility:
  status: compatible
  warnings: "None. Captured under frozen Profile 1.14 and Data Model 0.1.4; requires no migration on restore, as does Checkpoint 0025 immediately before it. Checkpoint 0024 and all earlier captures remain immutable and run their own recorded readiness chains (0024 requires the 1.12 → 1.13 → 1.14 chain)."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

One in-fiction evening, 2026-08-02 16:20 through 21:50, spanning the single event `EVT-000116`.

- **`EVT-000116`** — the crew's first training session at the Coalition trading field, and the evening around it. The formation briefed from memory and then walked for two hours with the *who, what, where* call form drilled and Renata's deliberate-sabotage passes folding it twice. Light unarmed sparring with each crew member in order of combat experience, each receiving an individual diagnosis: Priya Okafor's weight travelling past her third beat (exposed by a controlled pin that is **Overpower's first demonstrated material application**, against a D-Rank); Julian Boyd's total absence of a second answer once his first idea fails; Renata Marchetti's forty untouched seconds and her wiring to stop a threat rather than end one. Owen Callahan was taught rather than sparred, stopped four inches short on his first attempt by mender's reflex, and on the second **landed a real punch for 24 damage (Health 116 → 92/116)** before clearing it with his own treatment touch (**92 → 116/116**). Next session fixed for **2026-08-09**; standing order that no Gate precedes at least one further session, with Priya watching the board. At the close, Owen disclosed the relationship to Priya, Julian, and Renata; Priya asked in the open whether the field commander's spend-call survives either of them bleeding; and Renata's earlier direct question — *who are you, exactly?* — was deferred rather than answered.

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — condition, pools, temporal anchor, Overpower's first application, session narrative
- `110_WORLD_LEDGER.md` (`REC-000075`) — unchanged this checkpoint; opened and required no change
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — unchanged this checkpoint; no item, currency, or equipment movement occurred
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Priya, Julian, Renata, and Owen updated; `REL-000065` training delivered and standing orders; `REL-000066` state and texture
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-10 (disclosure and Renata's question), OBJ-11 (delivered, recurring), OBJ-12 (both positions stated, undecided)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000116` defined and linked
- `170_CHANGELOG.md` (`REC-000080`) — the session entry, including all five resolved rolls and the damage derivation
- `180_CURRENT_STATE.md` (`REC-000081`) — full state refresh, new anchor, latest checkpoint pointer, trigger-audit record

`system/ID_REGISTRY.md` carries allocation-log coverage for `EVT-000116` and the Event high-water mark stands at `EVT-000116`. No Entity, Record, or Relationship identifier was minted this session. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0026 as the latest checkpoint.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.14 and Data Model 0.1.4. **No migration is required.**
4. Resume at 2026-08-02, roughly 21:50, at Owen Callahan's apartment in Rogers Park — just in from the training session, nothing owed until the daily quest issues at 06:00 on 2026-08-03.

State at capture: **Level 8, XP 400/800**, Health **116/116**, Mana **60/60**, no injury, base Stats **31/30/25/31/30**, equipped-effective **41/55/29/31/30**, **0 unspent points**, nine skills, daily streak **9**, gold **920**, cash **$18,881**, pending rewards **Status Recovery ×4** only, eleven unsellable E-Rank cores, no instant-dungeon key, full nine-slot loadout equipped, non-daily System quest slots **0/2** with no pending offer.

---

**Checkpoint Created:** 2026-07-26T19:05:32+02:00
**Status:** Restorable canonical continuation at Profile 1.14 / Data Model 0.1.4; no migration required on restore.
