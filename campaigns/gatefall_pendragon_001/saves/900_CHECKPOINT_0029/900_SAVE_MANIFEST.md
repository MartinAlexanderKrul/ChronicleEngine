# Save Manifest — Gatefall: Pendragon — Checkpoint 0029

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0029` — player-requested checkpoint at Owen Callahan's apartment, morning of 2026-08-04
**Kind:** Player-requested session checkpoint

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-27T11:30:00+02:00"
  source: EVT-000126
  game_date: "2026-08-04T06:00:00-05:00; morning, at Owen Callahan's apartment"
scope:
  world: worlds/gatefall
  campaign: campaigns/gatefall_pendragon_001
  character: ENT-000125
versions:
  engine: "0.2.0"
  world: "0.1"
  world_rule_profile:
    world: Gatefall
    version: "1.16"
    freeze_status: frozen
  campaign_schema: "0.1.4"
  save_format: "0.1.0"
lineage:
  parent_save: 900_CHECKPOINT_0028
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
  warnings: "None. Captured under frozen Profile 1.16 and Data Model 0.1.4; requires no migration on restore."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

Roughly fourteen hours, 2026-08-03 ~16:15 through 2026-08-04 06:00, spanning `EVT-000122`–`EVT-000126`.

- **`EVT-000122`** — arrival at Owen's apartment. Asked whether he was good, Alexander volunteered for the first time that his parents died in the Damen Avenue Break (established world canon, `worlds/gatefall/200_WORLD_BIBLE.md`) when he was fifteen — his mother a university professor, his father an FBI Task Force detective who died beside her with no BGM protocol yet chartered to help him. His birthdate is fixed: September 17, 2000. Owen received it without pressing; they kissed at the threshold.
- **`EVT-000123`** — dinner (steak and potatoes) and the pocket-gate promise. Banter about turning Gate clears into "dates"; a serious commitment to show Owen a private instant-dungeon clear from the inside; Alexander discovers mid-sentence that he already has the Runic Key [E-Rank] banked for it.
- **`EVT-000124`** — the night's rest and the 06:00 notifications. Eleventh daily quest issued (streak 10, unresolved); Daily Premium stock rotated (Tier-1 line only at this point); Mana settled deterministically from 21/60 to full 60/60. Owen slept through it undisturbed.
- **`EVT-000125`** — Profile 1.16 adopted (external readiness correction, reconciled this session): Daily Premium rotations now resolve from each category's compact stored bag state alone, without replaying prior rotations. No fictional time or resolved outcome changed.
- **`EVT-000126`** — the 2026-08-04 Daily Premium cycle, deferred at `EVT-000124`, resolved in full under Profile 1.16 using the compact `model_bags` state already on record: fabrication series Cobalt, five Rank rolls, five model-bag draws, one rune-skill roll (Silent Step, unknown). Six offers priced, 0/6 purchased.

## Contents

Full copies of all eight canonical campaign ledgers:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — Mana 60/60 (full), condition/location refreshed to the new anchor, `personal_history` gains the Damen Avenue Break connection and birthdate, `system_state.daily_quest` (eleventh issued) and `daily_premium`/`model_bags` (2026-08-04 cycle resolved) updated
- `110_WORLD_LEDGER.md` (`REC-000075`) — opened and unchanged this checkpoint
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — opened and unchanged this checkpoint
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's (`ENT-000139`) `location`/`condition`/`situation` updated; `REL-000066` `state` and `texture` gain the Damen Avenue disclosure, dinner, and pocket-gate commitment
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-13 gains a continuation note (the pocket-gate demonstration, open and live)
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000122`–`EVT-000126` defined and linked
- `170_CHANGELOG.md` (`REC-000080`) — full session entries for all five events plus the checkpoint line
- `180_CURRENT_STATE.md` (`REC-000081`) — full refresh, new anchor, checkpoint pointer, trigger-audit record, note on the reconciled concurrent Profile 1.16 edit

`system/ID_REGISTRY.md` carries allocation-log coverage for `EVT-000122`–`EVT-000126`; the Event high-water mark stands at `EVT-000126`. No Entity or Relationship identifier was minted this checkpoint. `REC-000095` was minted for this manifest. `system/WORLDS_AND_CAMPAIGNS.md` names Checkpoint 0029 as the latest checkpoint.

**Concurrency note.** Mid-session, `system/ID_REGISTRY.md`, `180_CURRENT_STATE.md`, and `100_CHARACTER_SHEET.md` were found already modified on disk with a legitimate, well-formed addition (`EVT-000125`, Profile 1.16's adoption) not authored by this session. Its content was read back and built upon — this checkpoint's `EVT-000126` sequences after it, and no identifier collision or overwrite occurred. Flagged here per the Runtime's one-exclusive-writer expectation, since a second writer was active during part of this session.

## Restore Procedure

1. Copy every canonical ledger in this directory over its live counterpart in `campaigns/gatefall_pendragon_001/`.
2. Do not reset `system/ID_REGISTRY.md`.
3. Load frozen Gatefall World Rule Profile 1.16 and Data Model 0.1.4. **No migration is required.**
4. Resume at 2026-08-04, 06:00, at Owen Callahan's apartment in Rogers Park — Owen asleep, Alexander awake, the eleventh daily quest live and unstarted (deadline 00:00 that night).

State at capture: **Level 8, XP 570/800**, Health **116/116**, Mana **60/60**, no injury, base Stats **31/30/25/31/30**, equipped-effective **41/55/29/31/30**, 0 unspent points, ten skills, daily streak **10** (eleventh quest issued, unstarted), gold **12**, cash **$9,831**, nine unsellable E-Rank cores, one unused Runic Key [E-Rank].

---

**Checkpoint Created:** 2026-07-27T11:30:00+02:00
**Status:** Restorable canonical continuation at Profile 1.16 / Data Model 0.1.4; no migration required on restore.
