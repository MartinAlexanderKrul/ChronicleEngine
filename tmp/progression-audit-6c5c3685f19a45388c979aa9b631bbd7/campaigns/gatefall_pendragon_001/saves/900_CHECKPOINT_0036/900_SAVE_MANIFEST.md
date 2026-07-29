# Save Manifest — Gatefall: Pendragon — Checkpoint 0036

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0036` — player-requested checkpoint, mid-afternoon of 2026-08-06, inside a sealed instant dungeon
**Kind:** Player-requested checkpoint (`/save`)

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-28"
  source: EVT-000181
  game_date: "2026-08-06T14:52:00-05:00; inside the sealed Overgrown Temple instant dungeon, opened from Owen Callahan's kitchen, Rogers Park, Chicago"
  label: "flinch forward"
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
  parent_save: 900_CHECKPOINT_0035
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
  warnings: "None. Captured under frozen Profile 1.30 and Data Model 0.1.5 — the same pair the live campaign already runs — and requires no migration on restore. Note the scene state rather than the schema: this checkpoint captures an OPEN DANGEROUS SCENE. Restoring it resumes mid-clear inside a sealed instance with a boss (160 Health) and a second elite (80 Health) alive at the shrine, a hard 15:55 instance close, and a 16:00 obligation for Owen Callahan outside."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From the 11:15 anchor (Checkpoint 0035) through 14:52 the same afternoon, spanning `EVT-000176`–`EVT-000181`. No injury and no damage to the protagonist; Alexander took **no offensive action at any point** in this span.

- **`EVT-000176`** — The lakefront reckoning. The note-versus-coordinate argument and the poured-out coffee, resolved in both directions; Owen volunteering, unasked, that he errs toward leaving Alexander alone because he cannot read an invitation from a man who does not issue them; the rule that he be woken regardless. A play-fight ended by Owen's escape on a **natural 96**.
- **`EVT-000177`** — Nikitas. Voula (`ENT-000169`) and the diner (`ENT-000170`) established; the guard table cleared after twelve years; the memorial notice volunteered before it could be asked about; and **Owen's account of the one-to-three-second pause on the rocks** — the largest disclosure he has made in this campaign.
- **`EVT-000178`** — The training contract, its four observable intervention tells, and **the Stone Skin rune given to Owen and consumed**, giving him **Stone Skin [D-Rank] Novice** — the first recorded instance in Gatefall of an awakened acquiring a second ability. Opens **OBJ-18**.
- **`EVT-000179`** — An **Instant-Dungeon Key [E-Rank]** bought for 500 g and opened from Owen's kitchen. Archetype **Overgrown Temple**; population 11 common / 2 elites / 1 boss; an unextracted 11-crystal deposit. A **partial** Keen Sense read that greyed out at the shrine, and a **legendary** deliberate tactical read establishing two Patterns.
- **`EVT-000180`** — **Owen cleared eleven commons and an elite alone.** Field Command's first material use in the campaign. +120 XP to Alexander by Section 3.8 setup credit. All 112 crystals sold to buy the Standard Mana Potion that **restored an awakened non-Bearer's expended capacity in full** — a campaign discovery.
- **`EVT-000181`** — The promotion barrier. Skill-formation batch settlement `none`; the open dangerous scene's audit explicitly deferred to instance close; the unsettled Daily Premium rotation flagged rather than papered over.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — Level 10, System Rank D-Rank, **XP 740/1000**, Health **144/144**, Mana **72/72 (full)**, 5 unspent stat points; base Stats unchanged at 33/32/32/38/36, equipped-effective 43/57/36/38/36. Seventeen skills, **no Rank or mastery change**; three use counters advanced (Keen Sense 8→9, Exploit Pattern 5→6, **Field Command 0→3**). Pending rewards unchanged: **Ability Points +3 ×1 · Status Recovery ×8 · Daily Random Box ×1**.
- **Temporal anchor** — `2026-08-06T14:52:00-05:00`. Mana mode `active`, remainder 0; Health mode `light`, remainder 0. Trace 72 → 70 (one Keen Sense activation) → 72 (capped), reconciled at `EVT-000181`.
- **Location** — inside the sealed Overgrown Temple instance (`ENT-000087`, Chicago; the mouth stands in Owen's Rogers Park kitchen). **Instance closes 15:55 or on the boss kill.**
- **Holdings** — gold **1,052** (507 → 7 key → 1,127 crystal sale → 1,052 potion), cash **$20,806.50** untouched, **0 E-Rank crystals** (all 112 sold), 12 E-Rank cores, one unconsumed unbound-awakened Flash Step [D-Rank] rune, unchanged nine-slot loadout equipped.
- **New canon this checkpoint** — `ENT-000169` (Voula), `ENT-000170` (Nikitas). No new Relationships; the afternoon's relational movement is recorded as texture on `REL-000066` and `ENT-000139`.
- **Owen Callahan (`ENT-000139`)** — uninjured, capacity restored to full, **Stone Skin [D-Rank] Novice known and once used**, inside the instance, due at Edgewater 16:00.
- **Objectives** — **OBJ-18 opened** (make Owen's well bigger; promised, no mechanism).
- **Progression audit** — batch settlement `none` at `EVT-000181`. **`EVT-000180`'s dangerous-scene audit is deferred** — the scene is open. `dimensional_weapon_control` `tracking` 2/3; `nonvisual_combat_mapping`, `formation_instruction`, `reactive_pattern_anticipation` all `tracking` 1/3. **No `pending-ratification` candidate — the readiness gate is clear.**
- **Quests** — non-daily slots **0/2**, no pending offer. No Urgent condition and no Hidden pointer attached this span. **Daily Premium rotation for 2026-08-06 06:00 is UNSETTLED and recorded as such**; no offer was invented to cover it.
- **Trigger telemetry** — `hidden_pointers_attached: 0`, `urgent_offers_issued: 0`, both dry counts **15**; `concealed_records_available: 15`, `tracked_postings: 4` — unchanged supply, healthy zero. Noted: this is the first instance Alexander has opened with another person inside since Profile 1.29, so Urgent eligibility is structurally possible in a private instance for the first time. It did not fire, and should not have.

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — XP, gold, temporal anchor and settlement note, condition, three tracked counters, crystal and rune holdings, and the unsettled Daily Premium flag.
- `110_WORLD_LEDGER.md` (`REC-000075`) — the two world facts established by test: an awakened acquiring a second ability, and a System Mana potion restoring a non-Bearer's capacity.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — the crystal liquidation, the rune and potion transfers to Owen, the key spent, the unextracted deposit.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Owen's second ability and restored capacity, his location; `ENT-000169` and `ENT-000170` defined.
- `140_OBJECTIVES.md` (`REC-000078`) — **OBJ-18** opened.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000176`–`EVT-000181` recorded.
- `170_CHANGELOG.md` (`REC-000080`) — six change entries.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, situation, open threads, promotion status, trigger telemetry, trigger audit, and the deferred-audit obligation.
- `system/ID_REGISTRY.md` — high-water marks advanced to `ENT-000170` and `EVT-000181`, with allocation-log coverage for each.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint and per-campaign note for Checkpoint 0036.
