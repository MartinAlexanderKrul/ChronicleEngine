# Save Manifest — Gatefall: Pendragon — Checkpoint 0003

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0003` — Session 1, captured after the Red Line Corridor Gate exit, loot split, the System's first daily quest, and the Coalition board review (E-card contract-tier cap corrected before capture)
**Kind:** Canonical session checkpoint

This manifest is metadata only. It does not duplicate ledger content (Rules Section 13.3) and conforms to `templates/ledgers/900_SAVE_MANIFEST.md`. Per Decision 072 it mints no registry identifier: it carries no `id` and no `canonical_record`, and is referenced by its ordinal, label, and capture time. It records no validation verdict of its own — the Repository Validation Barrier is external and mechanical (Decision 054).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: manual
  created: "2026-07-25T13:00:00Z"
  source: EVT-000062
  event_time: "2026-07-25 — Windy City Hunters Coalition, Chicago"
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
    freeze_status: workshop-draft
  campaign_schema: "0.1.2"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0002
  canonical_continuation: true
  branch: "session-1-main"
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
  warnings: "Captured under Gatefall World Rule Profile 1.0, a workshop draft (unfrozen). Under Rules Section 14.6 (Decision 074) an unfrozen profile is NOT save-trustworthy: restoring this checkpoint surfaces the 'unfrozen — not save-trustworthy' warning, because the profile may be revised beneath it before it is frozen. This campaign has no baseline checkpoint, so /restart is unavailable; /continue restores this checkpoint."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

The Gate exit, loot split, the System's first full day, and a Coalition board review — with a same-session correction folded in before capture. Three story events were promoted since Checkpoint 0002.

**`EVT-000060` — Session 1 continued: Gate Exit, Loot Split, and the System's First Day (2026-07-24 to 2026-07-25).** Alexander mined five E-crystals himself under Tanya Voss's field instruction (safe target, vein left partly unworked); combined with nine beast-drop E-crystals, two E-cores, and an E-grade armored greave off the boss (split undecided), the crew declared the full haul and exited. Contract closed: standard split on a $10,000 D-posted contract plus ≈$2,850 in crystal/core value (≈$12,850 pool), Alexander's equal-fifth share ≈$2,313, filed 2026-07-25 and pending 1-2 business days. The crew dispersed 2026-07-24 evening. At the next 06:00 local (2026-07-25) the System issued its first daily quest (100 push-ups, 100 sit-ups, 10 km run); Alexander completed it that morning and accepted the grant (+10 XP → 50/200, +3 unspent points → 6, streak → 1/7). He explored `/system`'s full window, focused views, and the shop on his own initiative, then visited the Windy City Hunters Coalition, where Kesha Morrison confirmed the payout timeline and reviewed the live board.

**`EVT-000061` — The Rail-Yard D-Grade Contract, Posted (2026-07-25).** A confirmed D-grade Gate contract with one open harvest-element slot, filed for 2026-07-26 07:00, named to Alexander by Kesha Morrison. Not yet accepted or declined.

**`EVT-000062` — Ruling: Correcting the E-Card Contract-Tier Cap (2026-07-25).** Kesha's dialogue in `EVT-000060` initially overstated the E-card cap as barring all C-grade work. Checked against the repository's own commit history (`d53114b`, already live before this session but misapplied during play): support crew (miners, harvesters, porters) may be **any rank** — the legal minimum and the Section 19.4 card cap are a combat/strike-contract requirement only. Corrected before this checkpoint was sealed: Alexander's E-card caps him out of strike/combat contracts at C-grade and above and their pay, but **not** harvest/support work, which is legally open to him at any grade right now. No fiction, XP, item, or relationship state changed beyond the corrected statement.

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

`system/ID_REGISTRY.md` was advanced atomically in the same change for this session's identifiers: events `EVT-000060`, `EVT-000061`, and `EVT-000062`. No new entities, records, or relationships were minted. `system/WORLDS_AND_CAMPAIGNS.md` was updated in the same change to name this checkpoint as the campaign's latest.

**Expected divergence in `170_CHANGELOG.md`.** Live canon may carry one entry this snapshot does not: the entry recording this checkpoint's own creation, which cannot exist at capture time. A diff against live is expected to show at most that entry.

## Restore Procedure

1. Copy every ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load Gatefall World Rule Profile 1.0 (heed the unfrozen / not-save-trustworthy warning above) and resume from `180_CURRENT_STATE.md` (`REC-000081`).
4. Resume with Alexander at the Windy City Hunters Coalition on 2026-07-25, deciding between the rail-yard harvest slot (2026-07-26 07:00), an E-D crew slot, or waiting for Tanya's crew — correctly aware that C-grade (or higher) harvest work is legally open to him — and still without a mining tool.

## Validation

The Repository Validation Gate (`tools/validate_repository.ps1`) and the checkpoint-contract test (`tools/test_checkpoint_contract.ps1`) are run externally against live state before this immutable snapshot is sealed; the barrier is external and mechanical (Decision 054), and this manifest records no verdict of its own.

---

**Checkpoint Created:** 2026-07-25T13:00:00Z
**Status:** Restore point for Session 1 — Alexander at the Windy City Hunters Coalition, deciding his next job with a corrected understanding of what his E-card actually restricts, mining tool not yet bought.
