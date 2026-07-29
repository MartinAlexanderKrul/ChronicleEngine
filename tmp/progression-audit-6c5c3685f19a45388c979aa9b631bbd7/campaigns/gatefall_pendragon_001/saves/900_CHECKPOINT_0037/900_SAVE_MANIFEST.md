# Save Manifest — Gatefall: Pendragon — Checkpoint 0037

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0037` — player-requested checkpoint, mid-afternoon of 2026-08-06, Owen Callahan's kitchen
**Kind:** Player-requested checkpoint (`/save`)

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-29"
  source: EVT-000185
  game_date: "2026-08-06T15:10:00-05:00; Owen Callahan's kitchen, Rogers Park, Chicago"
  label: "he never struck it once"
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
  parent_save: 900_CHECKPOINT_0036
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
  warnings: "None. Captured under frozen Profile 1.30 and Data Model 0.1.5 — the same pair the live campaign already runs — and requires no migration on restore. Unlike its parent, this checkpoint captures a CLOSED scene: the instance is gone, no enemy is alive, and restoration resumes in an ordinary domestic room with nothing owed until 06:00 the following day."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From the 14:52 anchor (Checkpoint 0036) through 15:10, spanning `EVT-000182`–`EVT-000185`. It finishes the clear that Checkpoint 0036 caught mid-fight. **Alexander was never struck and struck nothing; Owen personally killed thirteen of the fourteen creatures in the instance.**

- **`EVT-000182`** — The economics of the potion supply stated plainly, and the constraint that comes with it: **Owen may not give one to anyone, not even another mender.** A Keen Sense read finding the garrison **anchored** to a twelve-metre radius, and Owen's **legendary** kill on the second elite off the back of its arc — after which **the shrine reacted to that death and to none of the previous fourteen.**
- **`EVT-000183`** — Two boss exchanges fought alone (160 → 15), its one landed answer **a shoulder rather than a strike, with the earned follow-up declined**. The shrine revealed as **a lid**. A **natural-99** Flash Step displacing the boss off it, and an exceptional footwork hold using Milo's drilled method **without a single strike**. The lid: three lesser healing potions.
- **`EVT-000184`** — **Gate cleared.** XP 760 → 870/1000. The **dangerous-scene settlement** discharging the audit deferred at `EVT-000181`.
- **`EVT-000185`** — The promotion barrier: batch settlement `none`, reconciliation clean, the Daily Premium gap carried forward.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — Level 10, System Rank D-Rank, **XP 870/1000**, Health **144/144**, Mana **66/72**, 5 unspent stat points; base Stats unchanged at 33/32/32/38/36, equipped-effective 43/57/36/38/36. Pending rewards unchanged: **Ability Points +3 ×1 · Status Recovery ×8 · Daily Random Box ×1**.
- **Mastery advances at the scene close** — **Keen Sense Adept → Expert** (Mana cost 2 → 1; read extends to himself plus 3 allies) and **Exploit Pattern Practiced → Adept** (3 concurrent Patterns). **Field Command took its first qualifying scene in the campaign's life.** Flash Step reached 2/3 toward Master.
- **Temporal anchor** — `2026-08-06T15:10:00-05:00`. Mana mode `active`, remainder **316,800**; Health mode `light`, remainder 0. Scene trace 72 → 70 → 71 → 66, reconciling exactly against two Keen Sense activations and one Flash Step.
- **Location** — Owen Callahan's kitchen, Rogers Park (`ENT-000087`, Chicago). The instance is gone and the key is spent.
- **Holdings** — gold **1,052** and cash **$20,806.50**, neither touched in the instance. **14 E-Rank crystals** (0 → 14), **15 E-Rank cores** (12 → 15), **10 lesser healing potions** (6 → 10), **2 lesser mana potions** (0 → 2), a duplicate **Titan Boots [E-Rank]** banked unequipped, the unconsumed unbound-awakened **Flash Step [D-Rank] rune** still eligible to teach Owen.
- **Lost** — **eleven unmined deposit crystals**, destroyed with the instance under Section 17. The last minutes went to the lid instead.
- **New canon this checkpoint** — no new Entities or Relationships.
- **Owen Callahan (`ENT-000139`)** — uninjured (250 → 238 from one landed hit), Stone Skin used sustained through the boss fight for the first time, thirteen kills, due at Edgewater at 16:00.
- **Progression audit** — `EVT-000184` is the dangerous-scene settlement; `EVT-000185` the batch `none`. **`reactive_pattern_anticipation` and `formation_instruction` both advanced to 2/3**, and **neither has an authored result**, so a third qualifying scene for either opens the mandatory Section 7.1 adjudication queue. `dimensional_weapon_control` `tracking` 2/3; `nonvisual_combat_mapping` `tracking` 1/3. **No `pending-ratification` candidate — the readiness gate is clear.**
- **Quests** — non-daily slots **0/2**, no pending offer, no Urgent condition, no Hidden pointer. **Urgent eligibility was structurally live** (Owen sealed inside with him, Profile 1.29) **and correctly produced nothing** — he was never at threat of death. **The 2026-08-06 06:00 Daily Premium rotation remains UNSETTLED for a second checkpoint**, with no offer invented to cover it.
- **Trigger telemetry** — `hidden_pointers_attached: 0`, `urgent_offers_issued: 0`, dry counts **15**; `concealed_records_available: 15`, `tracked_postings: 4`. Unchanged supply, healthy zero.
- **Unresolved in fiction** — Owen has set one lid potion aside on his counter for a mender colleague at Edgewater and **asked outright whether that crosses the line he was given.** The potion has not moved and is still counted in Alexander's ten. The question stands.

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — XP, Mana, temporal anchor and settlement, condition, holdings, **four skills' counters plus their prose renderings**, two mastery-level advances and Keen Sense's recomputed Mana cost, and two progression candidates advanced to 2/3.
- `110_WORLD_LEDGER.md` (`REC-000075`) — provenance advanced; the two world facts recorded at Checkpoint 0036 stand unchanged.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — the clear's full loot, the lost deposit, and the one potion with unresolved intent.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's location, his thirteen kills, Stone Skin's first combat use, and the potion he set aside.
- `140_OBJECTIVES.md` (`REC-000078`) — opened and confirmed no target this span; OBJ-18 stands as written.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000182`–`EVT-000185` recorded.
- `170_CHANGELOG.md` (`REC-000080`) — four change entries.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, the clear, scene anchor, open threads, promotion status, trigger telemetry, trigger audit.
- `system/ID_REGISTRY.md` — high-water mark advanced to `EVT-000185`, with allocation-log coverage for each new event.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint, `Captured` date, and per-campaign note for Checkpoint 0037.
