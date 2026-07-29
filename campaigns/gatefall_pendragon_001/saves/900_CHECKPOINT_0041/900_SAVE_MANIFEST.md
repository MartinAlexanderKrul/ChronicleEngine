# Save Manifest — Gatefall: Pendragon — Checkpoint 0041

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0041` — player-requested checkpoint, 13:15 of 2026-08-08, location unspecified ("around somewhere")
**Kind:** Player-requested checkpoint (`/save`), closing Wade Bishop's D-Rank trial and the call with Owen

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-29"
  source: EVT-000209
  game_date: "2026-08-08T13:15:00-05:00; location unspecified"
  label: "one more chance"
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
  parent_save: 900_CHECKPOINT_0040
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
  warnings: "None. Captured under frozen Profile 1.30 and Data Model 0.1.5 — the same pair the live campaign already runs — and requires no migration on restore. Alexander is alone, just off a phone call, no roll pending, no threat present. This checkpoint's repository branch remains session/gatefall-pendragon-checkpoint-0038, isolated from main at the player's explicit request; it has not been merged."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From the 00:25 anchor (Checkpoint 0040) through 13:15 the same day, spanning `EVT-000200`-`EVT-000209`. The fifteenth daily quest, Wade Bishop's D-Rank trial (crew, an ambush, a leadership dispute, a compressed clear, a solo boss ambush, private mining, and unresolved terms), and a reconciling phone call with Owen.

- **`EVT-000200`** — the fifteenth daily quest, doubled solo, streak 0→1.
- **`EVT-000201`** — the trial crew introduced; the first cluster's isolated beast ambushes Reggie; Alexander kills it with an Exploit-Pattern-read Twin Fang.
- **`EVT-000202`** — a split dual strike and a second Twin Fang finish clear the rest of the first cluster.
- **`EVT-000203`** — the leadership dispute: Wade concedes he has no command experience, Alexander takes field lead, demands 50% and full command.
- **`EVT-000204`** — Keen Sense and Exploit Pattern reads map the remaining population; the crew clears the second cluster and both elites with Alexander's genuine participation.
- **`EVT-000205`** — the Checkpoint 0041 dangerous-scene settlement: the boss killed alone in a two-strike ambush; Keen Sense advances to Master, Dagger Mastery to Expert (new multiplier flagged as an authoring gap under frozen 1.30).
- **`EVT-000206`** — loot collected; Alexander mines two veins solo for 24 crystals; Resonance Extraction's deferred non-combat classification settled.
- **`EVT-000207`** — terms set with Wade Bishop: Ironline's second chance conditioned on payment landing and the B-Rank harvest trial moving.
- **`EVT-000208`** — the phone call with Owen, closing a near two-day silence; recorded as a Character First in `REL-000066`.
- **`EVT-000209`** — the Checkpoint 0041 promotion barrier: Resonance Extraction's mining classification settled in place; no skill-formation candidate evidence in the remaining span, explicit `none`.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — **Level 11**, System Rank D-Rank, XP **1095/1100**, Health **128/148**, Mana **24/74**, 10 unspent stat points; Stats unchanged (34/33/33/39/37), equipped-effective unchanged (44/58/37/39/37). Pending rewards: Ability Points +3 ×2 · Status Recovery ×9 · Daily Random Box ×2.
- **Temporal anchor** — `2026-08-08T13:15:00-05:00`.
- **Location** — unspecified, just off a phone call with Owen.
- **Holdings** — gold **1,532** (1,052 + 480 from a private crystal sale), cash **$60,806.50, unchanged**. **14 E-Rank crystals**, **15 E-Rank cores**, **8 lesser healing potions**, **2 lesser mana potions**, and **4 private D-Rank crystals** new this checkpoint.
- **Skill mastery** — Keen Sense advances **Expert → Master** (Mana holds at 1). Dagger Mastery advances **Adept → Expert** (new multiplier unauthored under frozen Profile 1.30 — flagged as an authoring gap, prior +0.20 retained). Exploit Pattern, Twin Fang, and Resonance Extraction each gain one qualifying-scene credit toward their next tier without crossing.
- **Daily quest** — streak **0 → 1**, fifteenth completed doubled.
- **New canon this checkpoint** — four new Characters: `ENT-000173`-`ENT-000176` (Reggie Calloway, Bhavna Iyer, Foster Nakashima, Callie Dunmore), no standing relationships formed. New Objective **OBJ-23** ("Ironline's second chance"), open.
- **Non-daily quests** — **1/2 slots used**, unchanged: the Hidden quest `warehouse-meridian-ownership` remains attached and unrevealed.
- **Trigger telemetry** — no Hidden or Urgent activity this span; Reggie's ambush hit did not qualify as Urgent (contract exclusion, not life-threatening). Audited and confirmed clean for `EVT-000200`-`EVT-000209`.
- **Unresolved in fiction** — the 2026-08-06 06:00 Daily Premium rotation remains unsettled, now a sixth checkpoint running. Flash Step's Rank-C breakthrough offer and Dagger Mastery's new Expert-tier multiplier both stand as flagged authoring gaps. The crew's declared loot split (19 crystals, 3 cores) is calculated but not filed. `OBJ-23`'s two conditions are unmet.

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — XP, Health, Mana, pending rewards, skill entries and counters (Keen Sense, Exploit Pattern, Twin Fang, Dagger Mastery, Resonance Extraction), gold, shop holdings, condition summary.
- `110_WORLD_LEDGER.md` (`REC-000075`) — no change this span; copied unchanged for checkpoint completeness.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — the D-Rank trial haul, private mining disposition, and the declared pool.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — four new crew NPCs; Wade Bishop's situation updated; `REL-000066` (Owen) texture updated with the reconciliation call.
- `140_OBJECTIVES.md` (`REC-000078`) — new `OBJ-23`.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000200`-`EVT-000209` recorded, including full `counter_deltas` and `progression_audits`.
- `170_CHANGELOG.md` (`REC-000080`) — one change entry covering the full session.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, new sections, scene anchor, open threads, promotion status, trigger telemetry.
- `system/ID_REGISTRY.md` — high-water marks advanced to `ENT-000176`/`EVT-000209`, with allocation-log coverage for `ENT-000173`-`ENT-000176` and `EVT-000200`-`EVT-000209`.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint, `Captured` date, and per-campaign note for Checkpoint 0041.
