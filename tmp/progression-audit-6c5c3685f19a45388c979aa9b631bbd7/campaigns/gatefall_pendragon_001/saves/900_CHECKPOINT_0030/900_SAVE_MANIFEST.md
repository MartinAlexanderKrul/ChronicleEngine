# Save Manifest — Gatefall: Pendragon — Checkpoint 0030

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0030` — player-requested checkpoint, mid-morning of 2026-08-04, outside a warehouse-district pawn shop
**Kind:** Player-requested session checkpoint

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-27"
  source: EVT-000139
  game_date: "2026-08-04T10:15:00-05:00; mid-morning, sidewalk outside a warehouse-district pawn shop"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.24"
    freeze_status: frozen
  campaign_schema: "0.1.5"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0029
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
  warnings: "None. Captured under frozen Profile 1.24 and Data Model 0.1.5; requires no migration on restore."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Roughly four hours and fifteen minutes, 2026-08-04 06:00 through 10:15, spanning `EVT-000136`–`EVT-000139`. (`EVT-000125`–`EVT-000135`, the Profile 1.16→1.24 adoption chain, were already live on disk at session start — found already advanced by a concurrent writer, read back and built upon rather than overwritten; see the Concurrency Note below.)

- **`EVT-000136`** — the morning at Owen's apartment: a follow-up text to Dale Pruitt about mining work (a real answer promised by Wednesday); the pet name "Owwiiiie" established over two good-morning kisses; the eleventh daily quest completed under a spontaneous "one km per complaint" house rule (Owen: 13 km against his usual scaled effort; Alexander: his full regimen clean), streak 10→11; and Alexander proactively telling Owen he didn't want to ask him to lie again, referencing the Cicero core declaration — the first time he has volunteered discomfort about something he asked of Owen rather than waiting to be asked about it.
- **`EVT-000137`** — two calls: Ada Reyes had no open harvest work but logged Alexander's name; Kesha Morrison booked a new confirmed C-Rank harvest slot (unnamed contractor, staging 14:00 today) and relayed that word from Ada and Dale Pruitt has reached a Horizon Guild harvest-liaison contact who asked after Alexander by name.
- **`EVT-000138`** — Ironline Guild recruiter Wade Bishop (`ENT-000146`, new) approached Alexander at the Red Line Corridor, pitching steady strike-contract flow and guild structure, candid that it doesn't lift the E-Rank card's contract ceiling. Alexander asked for proof — a D-Rank strike trial with a properly-Ranked crew, and a B-Rank harvest trial — before deciding; Wade agreed to both. New relationship `REL-000068` (pending, unaccepted).
- **`EVT-000139`** — at a warehouse-district pawn shop, the pawnbroker (`ENT-000147`, new) showed Alexander **Cicero's Quiet [C-Rank]**, a named artifact (Section 11.6) quoted at $35,000 with murky provenance; confirmed genuine via a covert dimensional-inventory read during a deliberate misdirection (the pawnbroker caught an unexplained hitch but chose not to press). Not purchased. Alexander then sold the pawnbroker one private E-Rank core for $220 cash — the first real outlet for the unsellable core stash. Private core stash 9→8; cash $9,831→$10,051. New relationship `REL-000069` (informal fence contact).

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — `system_state.daily_quest` (streak 11, eleventh complete), `pending_rewards` (Ability Points +3 ×2, Status Recovery ×6, Daily Random Box ×2), `shop_holdings` (E-Rank core count 9→8), `condition`, `temporal_state.campaign_time` (10:15 anchor), and `situation`/`personal_history` gain this session's narrative
- `110_WORLD_LEDGER.md` (`REC-000075`) — opened and unchanged this checkpoint
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — cash $9,831→$10,051, new dated entry for the core sale
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — new `ENT-000146` (Wade Bishop) and `ENT-000147` (the pawnbroker) blocks; new `REL-000068` and `REL-000069`; `REL-000066` texture and state gain the nickname and the no-more-lying conversation; Ada Reyes and Kesha Morrison `situation` fields updated
- `140_OBJECTIVES.md` (`REC-000078`) — new OBJ-14 (Ironline recruitment); OBJ-2 gains the core-outlet note and Cicero's Quiet; OBJ-3 gains Kesha's reputation update
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000136`–`EVT-000139` defined and linked
- `170_CHANGELOG.md` (`REC-000080`) — full session entries for all four events plus this checkpoint line
- `180_CURRENT_STATE.md` (`REC-000081`) — full refresh, new anchor, checkpoint pointer, trigger-audit record, concurrency note

`system/ID_REGISTRY.md` carries allocation-log coverage for `ENT-000146`–`ENT-000147`, `EVT-000136`–`EVT-000139`, and `REL-000068`–`REL-000069`; high-water marks stand at `ENT-000147` / `REC-000096` / `EVT-000139` / `REL-000069`. `REC-000096` was minted for this manifest. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0030 as the latest checkpoint.

**Concurrency note.** At session start, `system/ID_REGISTRY.md`, `180_CURRENT_STATE.md`, and `100_CHARACTER_SHEET.md` were already found advanced through `EVT-000135` (Profile 1.23 and 1.24 adoptions) — legitimate, well-formed, additive administrative migrations not authored by this session. Their content was read back and built upon: this checkpoint's new allocations (`EVT-000136` onward) sequence cleanly after `EVT-000135` with no identifier collision or overwrite. Flagged here per the Runtime's one-exclusive-writer expectation, consistent with the same pattern already recorded at Checkpoint 0029.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.24 and Data Model 0.1.5. **No migration is required.**
4. Resume at 2026-08-04, 10:15, on the sidewalk outside a warehouse-district pawn shop — Alexander alone, ~3h45m ahead of the 14:00 harvest staging, no fixed plan for the interval.

State at capture: **Level 8, XP 570/800**, Health **116/116**, Mana **60/60**, no injury, base Stats **31/30/25/31/30**, equipped-effective **41/55/29/31/30**, 0 unspent points, fourteen skills, daily streak **11** (no daily active), gold **12**, cash **$10,051**, eight unsellable E-Rank cores, one unused Runic Key [E-Rank].

---

**Checkpoint Created:** 2026-07-27
**Status:** Restorable canonical continuation at Profile 1.24 / Data Model 0.1.5; no migration required on restore.
