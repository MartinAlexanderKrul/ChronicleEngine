# Save Manifest — Gatefall: Pendragon — Checkpoint 0009

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0009` — Session 2, captured mid-morning after Alexander's rest day
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-27T09:00:00Z"
  source: EVT-000069
  event_time: "2026-07-27 — Alexander's apartment and a nearby park, Chicago, morning"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.0"
    freeze_status: frozen
    frozen_date: "2026-07-24"
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0008
  canonical_continuation: true
  branch: "session-2-main"
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
  warnings: "Captured under Gatefall World Rule Profile 1.0, frozen 2026-07-24 (Rules Section 14.6, Decision 074). This checkpoint is captured entirely after the freeze and is save-trustworthy without qualification. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Alexander's declared rest day, since Checkpoint 0008.

**`EVT-000069` — A Rest Day: Shop Purchases, Private Practice, the Third Daily Quest, and Priya Okafor's Crew (2026-07-26 evening to 2026-07-27 morning).** Alexander called the Coalition's after-hours line about E-grade striker/combat contracts; Kesha Morrison confirmed two open waiver-tier crew slots and offered a morning callback. He bought a C-grade dagger (2,000 g) and an instant-dungeon key at his own E-band (500 g) through the System shop — gold 25,020 → 22,520 — and privately drilled two techniques: confirming the pocket-dimension summon/store exchange is truly instantaneous, and rehearsing an unnoticeable mid-flourish grip switch from his old E-grade dagger to the new C-grade one, neither witnessed by anyone. A third daily quest (issued 06:00) was completed at home and at a nearby park; per Section 3.9's split, its XP and streak applied automatically (+10 XP → 70/200, streak 2/7 → 3/7) while its stat/full-restore grant was deliberately deferred and banked. Separately, his 3 already-held unspent points were allocated entirely into Strength (13 → 16; unspent 3 → 0). Mid-run, Kesha called back as promised and Alexander committed (pending her confirmation) to a fifth crew slot with striker Priya Okafor (`ENT-000136`, newly named) for a distinct unconfirmed E-D Gate contract (timer breaking 2026-07-29 midnight), requesting a 9 AM staging time for the tentative 2026-07-28 start (`REL-000065`). No combat, no injury, no Health/Mana change beyond the ordinary daily-quest XP tick.

## Contents

Full copies of all eight canonical campaign ledgers as they stood at capture:

- `100_CHARACTER_SHEET.md` (`REC-000074`)
- `110_WORLD_LEDGER.md` (`REC-000075`)
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`)
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`)
- `140_OBJECTIVES.md` (`REC-000078`)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`)
- `170_CHANGELOG.md` (`REC-000080`)
- `180_CURRENT_STATE.md` (`REC-000081`)

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers: entity `ENT-000136` (Priya Okafor), relationship `REL-000065` (pending crew slot), event `EVT-000069`, and record `REC-000086` (this manifest's position in the record sequence; the manifest itself mints no identifier per Decision 072). `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (frozen, save-trustworthy without qualification) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander at his apartment in Chicago, morning of 2026-07-27, rest day taken, third daily quest complete (grant deferred), 0 unspent stat points, gold 22,520, and a crew slot with Priya Okafor pending confirmation for a tentative 2026-07-28 ~9 AM start.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-27T09:00:00Z
**Status:** Restore point for Session 2 — Alexander's rest day complete, third daily quest done, a pending crew slot with Priya Okafor awaiting confirmation.
