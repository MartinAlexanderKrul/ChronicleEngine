# Save Manifest — Gatefall: Pendragon — Checkpoint 0038

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0038` — automatic context-preservation checkpoint, 16:00 of 2026-08-06, outside Edgewater Hospital
**Kind:** Automatic context-preservation checkpoint (scene boundary reached at 12+ resolved player exchanges since Checkpoint 0037)

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: automatic-context-preservation
  real_date: "2026-07-29"
  source: EVT-000187
  game_date: "2026-08-06T16:00:00-05:00; outside Edgewater Hospital, Chicago"
  label: "go be a mender"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.30"
    freeze_status: frozen
  campaign_schema: "0.1.5"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0037
  canonical_continuation: true
  branch: session/gatefall-pendragon-checkpoint-0038
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
  warnings: "None. Captured under frozen Profile 1.30 and Data Model 0.1.5 — the same pair the live campaign already runs — and requires no migration on restore. An ordinary, non-dangerous closing scene: Owen already inside his shift, no threat, no roll. Note for restoration: this checkpoint's repository branch is session/gatefall-pendragon-checkpoint-0038, not main — the player explicitly requested an isolated worktree for this session because main carries unrelated in-progress work. Merge to main is a separate, explicit action, not implied by this checkpoint."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From the 15:10 anchor (Checkpoint 0037) through 16:00, spanning `EVT-000186`-`EVT-000187`. A single relationship-and-logistics scene plus its promotion barrier: no die was rolled, no danger occurred.

- **`EVT-000186`** — Potion-use terms settled with Owen (anyone he chooses, never a mana potion, dosed quietly); one lesser healing potion transferred to him. A goodbye kiss, then a hand-in-hand walk to Edgewater covering Owen's reasons for staying at his hospital rather than leading or opening a clinic, tied back to the rocks. A Character First: Owen accepted direct reassurance about his combat performance without his usual joke-deflection. A new open proposal (**OBJ-19**) to book Owen's next fight through his own C-Rank license rather than a private instance — Owen asked to think about it, no commitment made. Mana settled to full (66 → 72/72) over the elapsed 3,000 seconds in `active` mode.
- **Owen's (`ENT-000139`) `capabilities` framing corrected** in `130_NPCS_AND_FACTIONS.md`, mid-checkpoint at the player's request — he resolves mechanically at his real fixed C-Rank per Profile Section 13.1 regardless of the "mender" label, and today's near-solo clear demonstrates it. No mechanical value changed; narration-only correction, applied before this checkpoint so it governs from here forward.
- **`EVT-000187`** — the promotion barrier itself, Profile Section 7.1: batch settlement `none` (no skill activation in `EVT-000186` to classify), no Section 7.4 reconciliation required.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — Level 10, System Rank D-Rank, XP 870/1000, Health **144/144**, Mana **72/72 (full)**, 5 unspent stat points; base Stats and equipped-effective unchanged at 33/32/32/38/36 and 43/57/36/38/36. Pending rewards unchanged: Ability Points +3 ×1 · Status Recovery ×8 · Daily Random Box ×1.
- **Temporal anchor** — `2026-08-06T16:00:00-05:00`. Mana mode `active`, remainder **0** (capped at full). Health mode `light`, remainder 0.
- **Location** — Outside Edgewater Hospital, Chicago (`ENT-000087`). Field kit and gear stowed in the dimensional inventory; civilian clothes worn.
- **Holdings** — gold **1,052** and cash **$20,806.50**, untouched. **14 E-Rank crystals**, **15 E-Rank cores**, **9 lesser healing potions** (10 → 9, one transferred to Owen), **2 lesser mana potions**, unchanged otherwise.
- **New canon this checkpoint** — no new Entities or Relationships. One new Objective, **OBJ-19**, open and undecided.
- **Owen Callahan (`ENT-000139`)** — on shift at Edgewater as of 16:00, carrying one lesser healing potion under explicit terms. Capabilities framing corrected (narration-only).
- **Progression audit** — no dangerous scene, no skill activation; `EVT-000184`'s settled state (Keen Sense Expert, Exploit Pattern Adept, two formation candidates at 2/3) is unchanged. No `pending-ratification` candidate — the readiness gate is clear.
- **Quests** — non-daily slots **0/2**, no pending offer, no Urgent condition, no Hidden pointer. The 2026-08-06 06:00 Daily Premium rotation **remains UNSETTLED**, now carried a third checkpoint, with no offer invented to cover it.
- **Trigger telemetry** — unchanged from Checkpoint 0037: `hidden_pointers_attached: 0`, `urgent_offers_issued: 0`, dry counts **15**; `concealed_records_available: 15`, `tracked_postings: 4`. `as_of` advanced to 16:00.

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — Mana, temporal anchor and settlement, condition/location, one potion's holdings count.
- `110_WORLD_LEDGER.md` (`REC-000075`) — no change this span; copied unchanged for checkpoint completeness.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — the potion transfer to Owen, recorded and closed.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's location, the settled potion terms, the capabilities-framing correction, and new relationship texture in `REL-000066`.
- `140_OBJECTIVES.md` (`REC-000078`) — new `OBJ-19`, open.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000186` recorded.
- `170_CHANGELOG.md` (`REC-000080`) — one change entry.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, scene anchor, open threads, promotion status, trigger telemetry, trigger audit.
- `system/ID_REGISTRY.md` — high-water mark advanced to `EVT-000186`, with allocation-log coverage.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint, `Captured` date, and per-campaign note for Checkpoint 0038.
