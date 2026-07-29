# Save Manifest — Gatefall: Pendragon — Checkpoint 0040

**Campaign:** Gatefall: Pendragon (`campaigns/gatefall_pendragon_001/`) · **World:** Gatefall (`worlds/gatefall/`)
**Checkpoint:** `900_CHECKPOINT_0040` — player-requested checkpoint, 00:25 of 2026-08-08, Alexander's own apartment
**Kind:** Player-requested checkpoint (`/save`), closing the deliberately-triggered Penalty Zone session

This manifest is checkpoint-local metadata only. It mints no registry identifier and does not duplicate ledger content (Rules Section 13.3; Decision 072).

---

## Manifest

```yaml
save_identity:
  checkpoint_type: player-requested
  real_date: "2026-07-29"
  source: EVT-000199
  game_date: "2026-08-08T00:25:00-05:00; Alexander's own apartment, Chicago"
  label: "the corrected number"
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
  parent_save: 900_CHECKPOINT_0039
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
  warnings: "None. Captured under frozen Profile 1.30 and Data Model 0.1.5 — the same pair the live campaign already runs — and requires no migration on restore. Alexander is alone in his own apartment with the instance just collapsed; no roll pending, no threat present. This checkpoint's repository branch remains session/gatefall-pendragon-checkpoint-0038, isolated from main at the player's explicit request; it has not been merged."
restoration_entry_point: REC-000081
```

---

## What This Checkpoint Captures

From the 19:15 anchor (Checkpoint 0039) through 00:25 the following night, spanning `EVT-000193`-`EVT-000199`. The overdue Ferro payout and Wade/Dale check-ins, a deliberately-triggered Penalty Zone clear, a Level-Up, two skill-mastery advances, and a mid-session combat-math correction disclosed transparently to the player.

- **`EVT-000193`** — "Overdue": the Ferro Reclamation harvest payout, more than two days late, finally lands. Wade Bishop confirms a D-Rank trial Saturday 09:00 at 4110 W Fullerton with an already-carded four-person crew. Dale Pruitt replies by text: the B-Rank lead is real, 5-7 days out.
- **`EVT-000194`** — "The Refusal": at the 06:00 daily-quest rotation, Alexander deliberately withholds the last push-up, breaking a 13-day streak on purpose specifically to trigger transfer into the Section 8.3 Penalty Zone — a sealed, four-hour, System-Rank-scaled survival instance with no material loot and genuine permadeath. Population rolled: 3d6 common, 1d2 elite (×2 Health), 1 boss (×4 Health). Keen Sense opens the instance with a read on the nearest cluster.
- **`EVT-000195`** — "The Ambush": Exploit Pattern identifies a blind spot; the first two common kills fall to a Rupture/Twin Fang/Sprint opening combination.
- **`EVT-000196`** — "The Sweep and the Level": a delegated seven-kill batch mop-up of the remaining common population, crossing **Level 10 → 11** mid-sweep (all five Stats +1, +5 unspent points, maxima restored to full).
- **`EVT-000197`** — "Two Elites": a Keen Sense fumble costs nothing but time; Exploit Pattern finds the first elite's weak point and it falls to Sprint + Rupture + dagger. A lesser healing potion is drunk mid-fight (flat 30 restore, capped). A legendary Keen Sense read locates the second elite, which falls the same way.
- **`EVT-000198`** — "The Boss": Exploit Pattern reads a legendary molt-seam weakness. Sprint + Flash Step opens the alpha strike; a Rupture fumble is followed by a corrected partial retaliation taken; a Flash Step reposition kills an add; the boss falls to a final Twin Fang/Rupture double-strike exchanged against a corrected dying retaliation. The instance collapses.
- **`EVT-000199`** — "The Checkpoint 0040 Promotion Barrier": the Section 7.1 danger-settlement pass for the whole sealed scene (one qualifying credit per skill materially used inside it: Keen Sense, Exploit Pattern, Rupture, Sprint, Dagger Mastery), the two mastery-tier crossings (Twin Fang Practiced → Adept, Flash Step Expert → Master), the Flash Step breakthrough-offer authoring-gap flag, and the full combat-math correction record.

**Mid-session correction, recorded transparently.** Three landed hits against Alexander were originally computed using each creature's own inflated elite (×2) or boss (×4) Health pool in the damage formula's `rank_health ÷ 4` term, rather than the base D-Rank table value (100) that term actually names per Section 9's population formula wording — a multiple *of* the base term, not a redefinition of it. Corrected: elite's hit **39 → 19**, boss's partial retaliation **39 → 10**, boss's dying blow **77 → 19**. Final Health raised from the originally reported 23/148 to the corrected **119/148**. No kill, XP award, or narrative outcome changed — only the damage arithmetic.

---

## State at Capture

- **Alexander Pendragon (`ENT-000125`)** — **Level 11**, System Rank D-Rank, XP **445/1100**, Health **119/148**, Mana **21/74**, **10 unspent stat points**; Stats 34/33/33/39/37 (Strength/Agility/Vitality/Perception/Intelligence), equipped-effective 44/58/37/39/37. Pending rewards unchanged: Ability Points +3 ×1 · Status Recovery ×8 · Daily Random Box ×1.
- **Temporal anchor** — `2026-08-08T00:25:00-05:00`.
- **Location** — Alexander's own apartment, Chicago (`ENT-000087`).
- **Holdings** — gold **1,052** and cash **$20,806.50**, untouched. **14 E-Rank crystals**, **15 E-Rank cores**, **8 lesser healing potions** (one drunk this session), **2 lesser mana potions**.
- **Skill mastery** — Twin Fang advances **Practiced → Adept** (×1.15 → ×1.30 multiplier, Mana 5 → 4). Flash Step advances **Expert → Master** (Mana 5 → 4), ascension-ready under Section 7.5 with its authoring gap flagged and the offer left open. Keen Sense, Exploit Pattern, Rupture, Sprint, and Dagger Mastery each gain one qualifying-scene credit toward their next tier without crossing.
- **Daily quest** — streak reset **13 → 0**, last failed 2026-08-07 by deliberate choice.
- **New canon this checkpoint** — no new Entities or Relationships. New Objective **OBJ-22** ("The penalty zone, seen once, on purpose"), opened and closed the same session as resolved-by-experience.
- **Non-daily quests** — **1/2 slots used**, unchanged: the Hidden quest `warehouse-meridian-ownership` remains attached and unrevealed.
- **Trigger telemetry** — no Hidden or Urgent activity this span; the Penalty Zone is solo-sealed and permanently Urgent-ineligible by construction (Profile 1.29). Audited and confirmed clean for `EVT-000193`-`EVT-000198`.
- **Unresolved in fiction** — the 2026-08-06 06:00 Daily Premium rotation remains unsettled, now a fifth checkpoint running, no offer invented to cover it. The warehouse's true owner and purpose remain unknown (`resolution_depth: surface`, an owner ruling). Wade Bishop's Saturday 09:00 D-Rank trial is the most immediate open thread.

---

## Updated Ledgers

Written to live canon and read back before this checkpoint was created:

- `100_CHARACTER_SHEET.md` (`REC-000074`) — Level, XP, Health, Mana, unspent points, all five skill counters and their prose entries, daily quest streak/note, shop holdings, condition summary.
- `110_WORLD_LEDGER.md` (`REC-000075`) — no change this span; copied unchanged for checkpoint completeness.
- `120_INVENTORY_AND_OWNERSHIP.md` (`REC-000076`) — no change this span; copied unchanged for checkpoint completeness.
- `130_NPCS_AND_FACTIONS.md` (`REC-000077`) — Wade Bishop and Dale Pruitt `situation` fields updated.
- `140_OBJECTIVES.md` (`REC-000078`) — OBJ-14 status upgraded; new `OBJ-22`, closed.
- `160_CAMPAIGN_CHRONICLE.md` (`REC-000079`) — `EVT-000193`-`EVT-000199` recorded, including the full `counter_deltas` reconciliation for the Section 7.1 settlement and both mastery-tier crossings.
- `170_CHANGELOG.md` (`REC-000080`) — one change entry covering the full session.
- `180_CURRENT_STATE.md` (`REC-000081`) — anchor, condition, holdings, new Penalty Zone narrative section, scene anchor, open threads, promotion status, trigger telemetry.
- `system/ID_REGISTRY.md` — high-water marks advanced to `EVT-000199`, with allocation-log coverage for `EVT-000193`-`EVT-000199`.
- `system/WORLDS_AND_CAMPAIGNS.md` — campaign row's latest checkpoint, `Captured` date, and per-campaign note for Checkpoint 0040.
