# Save Manifest — Prototype Alpha — Checkpoint 0000 (Baseline)

**Campaign:** Prototype Alpha · **World:** Verra (`worlds/verra/`)
**Checkpoint:** `900_CHECKPOINT_0000` — Campaign baseline (pre-play)
**Kind:** Baseline / initialization snapshot
**Purpose:** First-class restore point for restarting the campaign from the beginning (Decision 053)

---

```yaml
checkpoint_manifest:
  checkpoint_id: "900_CHECKPOINT_0000"
  label: "baseline"
  campaign: "Prototype Alpha"
  world: "Verra"
  kind: baseline
  captured_from_commit: "390e4d7"
  event_time: "Year 312 RR, late spring (arrival day, before play)"
  provenance_event: "EVT-000008 (Ilse arrives in Halden; campaign start)"
  record_time: "2026-07-13T00:00:00Z"
```

## What This Checkpoint Is

This is the **baseline** of Prototype Alpha: the complete canonical ledger state as it
stood after campaign initialization and player onboarding, and **before any gameplay was
resolved** (before `EVT-000009`). It is a self-contained snapshot — restoring it does not
require git archaeology.

Per Decision 053 (Campaign Restart and World-Line Forking), a **redo** of the campaign
restores this baseline: the protagonist keeps her identity (`ENT-000018`), and new play
allocates fresh identifiers from the registry high-water mark — the retired session-1
identifiers (`EVT-000009`–`EVT-000011`, `REL-000019`) are never reissued.

## Baseline State

- **Protagonist:** Ilse Varn (`ENT-000018`) — recently licensed physician-scholar, outsider, no local standing.
- **Location:** Halden (`ENT-000002`), arriving at the Athenaeum.
- **Inventory:** instrument case (`ENT-000019`), letter of introduction (`ENT-000020`), modest purse, travel effects.
- **Knowledge States:** marsh-fever provisional (`REL-000017`); tempered glass awareness-only (`REL-000018`); no mortar state.
- **Relationships:** introduction to Corvane by letter (`REL-000016`). No other relationships formed.
- **Objectives:** OBJ-1 secure footing at the Athenaeum; OBJ-2 investigate the fever finding; OBJ-3 avoid provoking the Order — all at their initial state.
- **Events:** `EVT-000008` (arrival) only. No gameplay events resolved.

## Contents

Full copies of the canonical campaign ledgers at baseline:

- `100_CHARACTER_SHEET.md`
- `110_WORLD_LEDGER.md`
- `120_INVENTORY_AND_OWNERSHIP.md`
- `130_NPCS_AND_FACTIONS.md`
- `140_OBJECTIVES.md`
- `160_CAMPAIGN_CHRONICLE.md`
- `170_CHANGELOG.md`
- `180_CURRENT_STATE.md`

Non-canonical operational artifacts (`090_CAMPAIGN_STARTUP.md`, `095_PLAYER_BRIEFING.md`)
are not snapshotted here; they are startup configuration and a disposable briefing, not
canonical state, and are unchanged by play.

## Restore Procedure

To restart Prototype Alpha from the beginning (redo; Decision 053):

1. Copy every ledger in this directory back over its live counterpart in
   `campaigns/prototype_alpha/`.
2. Do **not** reset the registry (`system/ID_REGISTRY.md`). Retired identifiers remain
   retired; the high-water mark is not rolled back. New play continues from the current
   high-water mark (first new event is `EVT-000012`).
3. Ilse's identity is preserved; only the play history is reset.

To instead fork a **parallel** world-line (keep run 1, explore an alternative), do not
restore over this campaign — create a new campaign instance, in which the protagonist is a
distinct persistent entity sharing this baseline definition (Decision 053).
