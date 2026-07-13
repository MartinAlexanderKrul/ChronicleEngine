# Campaign Changelog — Prototype Alpha

**Campaign:** Prototype Alpha · **World:** Verra
**Ledger:** Canonical Record (`011` Section 8) indexing campaign state changes.

---

## Record

```yaml
id: REC-000015
canonical_record: REC-000015
schema_version: "0.1.1"
status: active
provenance:
  source: EVT-000008
  event_time: "Year 312 RR, late spring"
  record_time: "2026-07-11T00:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Changes

**Year 312 RR, late spring — Campaign initialized.**
Prototype Alpha campaign created in the Verra world. Protagonist Ilse Varn (`ENT-000018`) established with instrument case (`ENT-000019`) and letter of introduction (`ENT-000020`). Starting Knowledge States recorded: marsh-fever, provisional (`REL-000017`); tempered glass, awareness-only (`REL-000018`). No mortar Knowledge State. Introduction to Corvane recorded (`REL-000016`). Arrival event `EVT-000008`. No gameplay resolved yet; no checkpoint taken.

**Year 312 RR, late spring (evening) — Session One Checkpoint (EVT-000009).**
Ilse entered the Athenaeum, studied the forbidden *Observations* manuscript, met Rector Maelis and Fellow Corvane. Knowledge State `REL-000017` (marsh-fever) advanced from "provisional and unformed" to "witnessed but unconfirmed"—Ilse now possesses direct access to Corvane's evidentiary maps and the full manuscript. Relationships established: `REL-000016` (Corvane) upgraded from "introduced by letter" to "met in person, actively collaborating"; `REL-000019` (Maelis) created, neutral to cautiously collaborative. Objective `OBJ-1` progressing (accessed Athenaeum); `OBJ-2` actively underway (studying evidence); `OBJ-3` now under tension (visibly associated with forbidden research). Current location: Corvane's study, Athenaeum. Fever cases confirmed (at least 2) in river ward. Maelis warned that Order will know of Ilse's presence within 1-2 days.

**Year 312 RR, late spring (days 2-8) — Extended Session Checkpoint (EVT-000010 and EVT-000011).**
Session continued beyond checkpoint 1. Ilse experienced emotional crisis cascade on Day 2 (self-harm, attempted violence toward Maelis three times, psychological break). All violence failed; she was subdued by guards and moved to infirmary for care rather than punishment. Maelis granted one week for rest and reflection before demanding final commitment answer.

During the week (Days 2-8): Fever cases escalated from 2 to 7+ confirmed. Athenaeum faced increasing Order pressure. Order sent formal recruitment letter (Day 6) offering Ilse safety, income, lodging—contingent on abandoning research and Corvane. Ilse read the letter (Day 8) without yet answering.

Current state: Ilse physically recovered, mentally clear. At genuine decision point: Order safety vs. Athenaeum principle. No decision yet made. Corvane awaits her answer. Location: Athenaeum infirmary. Condition: Ready to decide. EVT-000012 (Ilse's commitment decision) pending.

**Ledgers Updated for Extended Checkpoint:**
- 120_INVENTORY_AND_OWNERSHIP.md: Letter now archived on Corvane's desk
- 140_OBJECTIVES.md: OBJ-1, OBJ-2, OBJ-3 all updated with extended session status
- 130_NPCS_AND_FACTIONS.md: REL-000016 (Corvane) and REL-000019 (Maelis) updated with crisis and interlude events
- 110_WORLD_LEDGER.md: REL-000017 (fever knowledge state) updated with escalation and time to process
- 160_CAMPAIGN_CHRONICLE.md: EVT-000010 and EVT-000011 added to narrative
- 180_CURRENT_STATE.md: Protagonist location and condition updated

**2026-07-13 — Post-checkpoint integrity reconciliation (out-of-band, not gameplay).**
A repository-integrity pass reconciled identifiers left unregistered by the session-1 checkpoints. Registered `EVT-000009`, `EVT-000010`, `EVT-000011`, and `REL-000019` in `system/ID_REGISTRY.md` (Event high-water advanced to EVT-000011, Relationship to REL-000019) — these gameplay-generated identifiers had been used across ledgers but never allocated (Decision 044). Promoted `EVT-000010` (crisis cascade) and `EVT-000011` (infirmary interlude) from prose-only mentions to structured Event blocks in `160_CAMPAIGN_CHRONICLE.md`, matching EVT-000008/009 (Decision 043). Documented `EVT-000012` (Ilse's pending commitment decision) as a reserved forward marker in the registry. No campaign state was advanced; this only records what already occurred. Later checkpoints run under the resident checkpoint-completeness gate, which now requires new-ID registration as part of the target set.
