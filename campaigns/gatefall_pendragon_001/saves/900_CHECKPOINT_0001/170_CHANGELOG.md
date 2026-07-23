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
- **Repository allocation (2026-07-24):** Allocated new campaign-local NPC/location identifiers: `ENT-000126` (Tanya Voss), `ENT-000127` (Marcus), `ENT-000128` (Elias Voss), `ENT-000129` (Dr. Sarah Chen), `ENT-000130` (Kesha Morrison, Coalition coordinator), `ENT-000131` (Diane, Ironbound gear shop owner), `ENT-000132` (Cutting Edge gear shop, warehouse district), `ENT-000133` (Horizon's outfitter on Michigan Avenue). Allocated event identifier `EVT-000058` (Session 1 narrative). Allocated new relationship identifier `REL-000063` (crew membership).
