# Save Manifest — Gatefall: Pendragon — Checkpoint 0039

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0039` — automatic context-preservation checkpoint, 19:15 of 2026-08-06, Alexander's own apartment
**Kind:** Automatic context-preservation checkpoint (scene boundary reached at well past 12 resolved player exchanges since Checkpoint 0038)

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: automatic-context-preservation
  real_date: "2026-07-29"
  source: EVT-000192
  game_date: "2026-08-06T19:15:00-05:00; Alexander's own apartment, Chicago"
  label: "a number now burned"
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
  parent_save: 900_CHECKPOINT_0038
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
  warnings: "None. Captured under frozen Profile 1.30 and Data Model 0.1.5 — the same pair the live campaign already runs — and requires no migration on restore. An ordinary, non-dangerous closing scene: Alexander alone at home, no threat, no roll pending. This checkpoint's repository branch remains session/gatefall-pendragon-checkpoint-0038, isolated from main at the player's explicit request; it has not been merged."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From the 16:00 anchor (Checkpoint 0038) through 19:15, spanning `EVT-000188`-`EVT-000192`. A self-directed evening's investigation, resolved entirely through resolution rolls and roleplay — no combat, no danger.

- **`EVT-000188`** — First warehouse stakeout: exceptional Keen Sense success catches a real delivery, satisfying `ENT-000167`'s clue_condition. The campaign's **first Hidden quest pointer** attaches automatically (all four Section 8.4.3 criteria held). A closer pass under phone-call cover spots the keypad servicer's decal; a reconstructed partial number reaches **Titan Secure** (`ENT-000171`), whose employee **Marsh** (`ENT-000172`) confirms the servicing relationship but holds client confidentiality.
- **`EVT-000189`** — Ada Reyes offers a new C-Rank harvest slot (pending). A second stakeout observes a badge-carrying visitor (face, partial plate, unidentified lanyard logo). Canvassing the block and an online business-registry search name the warehouse's registered operator: **Meridian Cold Storage LLC**, a shell entity filed through a formation mill sharing a downtown office suite with six other LLCs.
- **`EVT-000190`** — Travel downtown; a Keen Sense fumble draws a building guard's suspicion. A bluffed cover story ("Vence") holds under the guard's own direct verification attempt, yielding a raw contact number for Suite 14 with no name attached.
- **`EVT-000191`** — Calling the number reaches an actively monitored voicemail. A disguised-voice message baits an immediate callback; holding the ruse live under direct questioning fails catastrophically — the party who answers identifies Alexander as illegitimate and confirms he now holds Alexander's real phone number. New `OBJ-21` tracks the thread and its cost.
- **`EVT-000192`** — The promotion barrier: a new skill-formation candidate, `pretext_and_cover`, opens at `tracking` 2/3 from two qualifying non-combat scenes; Keen Sense counters reconciled (one success, one failed activation correctly earning nothing); the Hidden quest's attached-not-revealed state formally recorded.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — Level 10, System Rank D-Rank, XP 870/1000, Health **144/144**, Mana **72/72 (full)**, 5 unspent stat points; base Stats and equipped-effective unchanged. Pending rewards unchanged: Ability Points +3 ×1 · Status Recovery ×8 · Daily Random Box ×1.
- **Temporal anchor** — `2026-08-06T19:15:00-05:00`. Mana mode `active`, remainder **0** (capped at full both times it was spent). Health mode `light`, remainder 0.
- **Location** — Alexander's own apartment, Chicago (`ENT-000087`).
- **Holdings** — gold **1,052** and cash **$20,806.50**, untouched. **14 E-Rank crystals**, **15 E-Rank cores**, **9 lesser healing potions**, **2 lesser mana potions**, unchanged.
- **New canon this checkpoint** — two new Entities: `ENT-000171` (Titan Secure), `ENT-000172` (Marsh). No new Relationships. New Objective **OBJ-21**, open.
- **Non-daily quests** — **1/2 slots used.** The campaign's first Hidden quest pointer, `warehouse-meridian-ownership`, attached and unrevealed.
- **Progression audit** — new `tracking` candidate `pretext_and_cover`, 2/3. Keen Sense `mastery_progress` 0→1 toward Master. `reactive_pattern_anticipation` and `formation_instruction` untouched, still 2/3 each. No `pending-ratification` candidate — the readiness gate is clear.
- **Trigger telemetry** — `hidden_pointers_attached: 0→1`, `hidden_dry_days` reset to 0, `concealed_records_available: 15→14`. `urgent_offers_issued: 0`, dry count 15, unchanged. `tracked_postings: 4`, unchanged.
- **Unresolved in fiction** — Alexander's real phone number is now known to whoever answers Meridian's contact line; no name traded either direction. The warehouse's true owner and true purpose remain unknown (`resolution_depth: surface`, an owner ruling).

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — Mana, temporal anchor and settlement, condition/location, Keen Sense counters, new `pretext_and_cover` candidate, Hidden quest pointer in `non_daily_quests.active`.
- `110_WORLD_LEDGER.md` (`REC-000075`) — `ENT-000166`/`ENT-000167` updated with the shell-LLC name and structure; new `ENT-000171` (Titan Secure).
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — no change this span; copied unchanged for checkpoint completeness.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — new `ENT-000172` (Marsh); Ada Reyes's new job note.
- `140_OBJECTIVES.md` (`REC-000078`) — new `OBJ-21`; `OBJ-20` updated with Ada Reyes's lead.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000188`-`EVT-000192` recorded.
- `170_CHANGELOG.md` (`REC-000080`) — one change entry.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, new narrative section, scene anchor, open threads, promotion status, trigger telemetry, trigger audit.
- `system/ID_REGISTRY.md` — high-water marks advanced to `ENT-000172`, `EVT-000192`, with allocation-log coverage.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint, `Captured` date, and per-campaign note for Checkpoint 0039.
