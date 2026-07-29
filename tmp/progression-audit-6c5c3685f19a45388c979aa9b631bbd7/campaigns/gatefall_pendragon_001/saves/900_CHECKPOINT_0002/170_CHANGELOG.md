# Campaign Changelog - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) indexing campaign state changes.

---

## Record

```yaml
id: REC-000080
canonical_record: REC-000080
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

## Changes

**2026-07-22 - Campaign initialized.**
Gatefall: Pendragon campaign created in the Gatefall world (`worlds/gatefall/`), start city Chicago, as the world's first live campaign. Protagonist Alexander Pendragon (`ENT-000125`) established: pre-System licensed E-rank, creation stat array Strength 11 / Agility 12 / Vitality 8 / Perception 11 / Intelligence 8 (latent, no mechanical effect until System onset), $4,000 starting funds (stable background, Profile Section 12.6), $30,000 tuition debt at $400/month recorded as a standing liability per Section 20.3. Freelancer affiliation with the Windy City Hunters Coalition recorded (`REL-000062`). Campaign-start event `EVT-000056`. No gameplay resolved yet; no checkpoint taken.

**Repository allocation (2026-07-22).**
Allocated campaign identifiers in `system/ID_REGISTRY.md` in the same initialization change: `ENT-000125`, `REC-000074` through `REC-000081`, `EVT-000056`, and `REL-000062`. Updated `system/WORLDS_AND_CAMPAIGNS.md`: Gatefall world status to Active with 1 live campaign, and added this campaign's row.

**2026-07-23 to 2026-07-24 - Session 1: Crew Assembly (EVT-000058).**

- **2026-07-23, Coalition desk:** Alexander accepted position on Tanya Voss's Red Line Corridor crew (unconfirmed D-grade Gate, timer 2026-07-24 midnight). Signed crew contract with BGM Region V.
- **2026-07-23, Ironbound gear shop:** Purchased E-grade hunter gear for $2,000: reinforced leather jacket ($800), E-grade dagger ($500), reinforced gauntlets ($600), shin guards ($100). Cash remaining: $2,000.
- **2026-07-23 evening, Coalition headquarters:** Briefing by Tanya Voss and Marcus (sensor). Strategy confirmed; crew roles assigned.
- **2026-07-24, 8:00 AM, Red Line Corridor Gate entrance:** Crew assembled and prepared to enter Gate. Participants: Alexander Pendragon (ENT-000125, striker), Tanya Voss (ENT-000126, crew lead/striker), Marcus (ENT-000127, sensor), Elias Voss (ENT-000128, striker), Dr. Sarah Chen (ENT-000129, mender).
- **Ledger updates:** Inventory updated (E-grade gear added, cash $2,000). NPCs and Factions updated (crew members promoted to campaign-local figures). Current State updated (location at Gate, situation, date). Chronicle updated (EVT-000057 recorded).
- **Repository allocation (2026-07-24):** Allocated new campaign-local NPC/location identifiers: `ENT-000126` (Tanya Voss), `ENT-000127` (Marcus), `ENT-000128` (Elias Voss), `ENT-000129` (Dr. Sarah Chen), `ENT-000130` (Kesha Morrison, Coalition coordinator), `ENT-000131` (Diane, Ironbound gear shop owner), `ENT-000132` (Cutting Edge gear shop, warehouse district), `ENT-000133` (Horizon's outfitter on Michigan Avenue). Allocated event identifier `EVT-000058` (Session 1 narrative). Allocated new relationship identifier `REL-000063` (crew membership). Each now carries a full YAML Object Block in its owning ledger (`130`, plus `REL-000063`); `ENT-000132`/`ENT-000133` are authored as minimal Institution (gear-vendor) blocks rather than retired.
- **Objectives:** OBJ-1 (get onto a crew) marked **met**; OBJ-5 (clear the Red Line Corridor with Voss's crew) opened as the live objective. OBJ-2 cushion corrected to $2,000.
- **Checkpoint `900_CHECKPOINT_0001` written (2026-07-24T09:00Z)** at the Red Line Corridor Gate entrance: full copies of all eight canonical ledgers plus `900_SAVE_MANIFEST.md` (new form per Decision 072; captured under the workshop-draft Gatefall Profile 1.0, flagged not save-trustworthy). Declared the latest restorable checkpoint in `180_CURRENT_STATE.md` and named it in `system/WORLDS_AND_CAMPAIGNS.md` in the same change. `tools/validate_repository.ps1` and `tools/test_checkpoint_contract.ps1` both run clean against the resulting state.

**2026-07-24 - Session 1 continued: The Red Line Corridor Clear and System Onset (`EVT-000059`).**

- Entered the Gate at 08:00. True grade resolved E (one below the unconfirmed D assessment); archetype Shattered City. Population rolled: 9 common E beasts, 1 E elite, 1 E boss.
- Full population cleared with no crew casualties: ambush (3 common beasts), open engagement (6 common beasts + elite), boss kill. Full roll-by-roll detail recorded in `EVT-000059`.
- **System onset.** The System attached to Alexander (`ENT-000125`) mid-fight, per World Rule Profile Section 14.7 (first genuine, lethal, uncertain fight). Perceptible to him alone. `100_CHARACTER_SHEET.md` gained a `system_state` block; the prior `latent_stat_array` is marked superseded and retained for provenance.
- Alexander ended the session at **Level 2, XP 40/200, Health 40/40, Mana 20/20, 3 unspent stat points** — via setup-credit kill XP (Section 3.8) for the elite kill, a common-beast kill, and the boss kill, plus the E-Gate clear milestone.
- Sustained two Severe wounds during the fight (beast/elite exchange, boss's opening leap); both resolved through Sarah Chen's field-touches (2 of her 3 per-clear touches spent) and the Level 2 grant's full restore. No lasting injury tier recorded — Health is whole, though the fight is fresh in memory.
- **Ledger updates:** `100` (system_state added, condition/situation updated), `110` (Bearer knowledge note added), `130` (Tanya's and Sarah's situations updated; `REL-000063` state/history updated to reflect the clear), `140` (OBJ-3 tested-and-held, OBJ-5 boss killed/Gate cleared but not yet exited), `160` (`EVT-000059` recorded), `180` (protagonist state, current situation, scene anchor, promotion status).
- **Repository allocation (2026-07-24):** Allocated event identifier `EVT-000059` in `system/ID_REGISTRY.md`. No new entities, records, or relationships were minted this session — the System is not a Persistent Entity (World Rule Profile Section 14.1) and lives entirely in `ENT-000125`'s `canonical_state`; no new NPCs, items, or places were introduced.
- Loot has not yet been collected and the crew has not yet exited the Gate; both remain open for the next session.
- **Checkpoint `900_CHECKPOINT_0002` written**, superseding `900_CHECKPOINT_0001` as the latest restorable checkpoint.
