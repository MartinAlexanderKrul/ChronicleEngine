# Current State - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8). This is the live operational ledger - read first at session start.

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile 1.0)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.2
- Start city: Chicago
- Campaign date: **2026-07-24** (inside the Red Line Corridor Gate, post-boss window)
- Campaign state: session-1 in progress; Gate cleared, crew looting/treating wounds before exit
- World Rule Profile: Gatefall 1.0 — **workshop draft (unfrozen); not save-trustworthy** (Rules Section 14.6, Decision 074). A restore of this checkpoint surfaces the unfrozen-profile warning.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0002/`

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~1 week).
- Status: Active, **Bearer** (System attached 2026-07-24, `EVT-000059`) — Level 2, XP 40/200, Health 40/40, Mana 20/20, 3 unspent stat points. Full detail: `100_CHARACTER_SHEET.md` `system_state`. Perceptible to him alone; unknown to his crew.
- Location: Inside the Red Line Corridor Gate (`worlds/gatefall/`, unconfirmed-D-posted/true-E interior), boss chamber, post-boss two-hour clear window. Not yet exited to Chicago (`ENT-000087`).
- Condition: Health whole via the Level 2 grant, after two Severe wounds this session (a common beast's hit, the boss's opening leap) that Sarah Chen's field-touches (2 of 3 spent) and the level-up restore both addressed. No lasting injury tier recorded.
- Equipment: four E-grade items bought 2026-07-23 (reinforced leather jacket, E-grade dagger, reinforced gauntlets, shin guards); $2,000 cash remaining; active BGM E-rank license. Loot from the clear (crystals, cores, boss drop) not yet collected. Full detail: `120_INVENTORY_AND_OWNERSHIP.md`.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); crew member on Tanya Voss's Red Line Corridor contract (`REL-000063`), his standing with the crew markedly strengthened by the clear.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.

## Current Situation

Alexander's crew has **cleared the Red Line Corridor Gate** (true grade E, one below the unconfirmed D assessment; archetype Shattered City). Full population killed with no casualties: nine common beasts, one elite, and the boss — Alexander's own reads materially opened both the elite kill and the boss kill. The boss's death collapsed the Gate and opened its two-hour post-boss window (Section 9.7): the interior holds stable, but everyone must loot, treat wounds, and walk out before it ends.

The System attached to Alexander mid-fight, following his first genuine wound — unknown to the rest of the crew, who see only a hunter who fought well above what his file said he could. Loot has not yet been rolled or collected, and the crew has not yet exited the Gate.

## Current Scene Anchor

Session 1 in progress. The boss is dead in the shattered plaza at the top of the Gate's broken tiers; the crew (Tanya Voss, Marcus, Elias Voss, Dr. Sarah Chen, Alexander) is regrouped there, inside the two-hour clear window, about to loot before walking out. Timer pressure from the original break clock is moot — the Gate is already collapsing on its own terms.

## Promotion Status

Session 1 in progress — **checkpoint `900_CHECKPOINT_0002` written** after the Red Line Corridor clear, capturing all eight ledgers with a save manifest. This is the restore point if the loot/exit phase goes wrong.

Ledgers promoted this session (`EVT-000059`): `100` (`system_state` added; `latent_stat_array` superseded; condition/situation updated), `110` (Bearer-knowledge note added), `130` (Tanya's and Sarah's situations updated; `REL-000063` state/history updated), `140` (OBJ-3 tested-and-held; OBJ-5 boss killed/Gate cleared, not yet exited), `160` (chronicle `EVT-000059`), `170` (changelog), `180` (this file). `120` unchanged — loot not yet collected. Registry advanced: `EVT-000059` only; no new entities, records, or relationships (the System lives in `ENT-000125`'s `canonical_state`, not as a separate object). Index (`system/WORLDS_AND_CAMPAIGNS.md`) updated to name the new latest checkpoint.
