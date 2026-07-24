# Chronicle Engine

## Gatefall: Pendragon — Version 0.3 Prototype Log

**Status:** Active  
**Campaign:** `campaigns/gatefall_pendragon_001/`  
**World:** `worlds/gatefall/`  
**Authority:** Non-canonical validation record; campaign ledgers remain canonical

---

# Designation

By owner approval on 2026-07-24, the already-active Gatefall: Pendragon campaign is the Version 0.3 Runtime & Persistence Hardening prototype.

This designation does not change campaign canon, allocate identifiers, or authorize development edits during gameplay. It records that ordinary play supplies prototype evidence for roadmap milestone 0.3.5.

---

# Evidence Baseline

At designation, the campaign had:

- four canonical-form checkpoints (`900_CHECKPOINT_0001`–`0004`);
- a latest restore point at `900_CHECKPOINT_0004`;
- all eight campaign ledgers captured at each checkpoint;
- Data Model 0.1.2 live state;
- structured Gatefall World Rule Profile 1.0 metadata;
- profile status `workshop-draft`, making Checkpoint 0004 a prepared unfrozen-profile restoration case;
- repeated identifier allocation and same-change worlds/campaigns index updates;
- no baseline checkpoint, so `/restart` is correctly unavailable on the live campaign.

The live campaign is the positive-path subject. Its absence of a baseline is not repaired retroactively.

---

# Protection Boundary

The following operations are forbidden on Gatefall main solely for validation:

- inserting contradictory locations,
- corrupting or editing an immutable checkpoint,
- changing the active World Rule Profile to manufacture a mismatch,
- restarting the canonical continuation,
- or restoring older state over newer live canon without an explicit player decision.

Branch and restart validation uses a disposable fork. Negative structure and compatibility cases use non-canonical fixtures.

---

# Recorded Evidence

## Evidence 001 — Canonical checkpoint sequence

**Result:** Observed pass.

Checkpoints 0001–0004 use the canonical four-digit directory form. Checkpoint 0004 contains all eight campaign ledgers and one manifest without a live registry identifier. The manifest records structured profile metadata and an explicit workshop-draft warning.

**Matrix:** V03-01, V03-09.

## Evidence 002 — Promotion target completeness

**Result:** Observed pass.

Checkpoint 0004 records the complete eight-ledger target set. Live `180_CURRENT_STATE.md` identifies the promoted Events, ledger effects, registry advances, and same-change index update.

**Matrix:** V03-02.

## Evidence 003 — Presence gate on live play

**Result:** Observed pass at rest.

The campaign advanced Alexander through several locations while the live repository continued to pass the Data Model 0.1.2 presence checks. This proves the positive shape is accepted; the negative fixture remains separate.

**Matrix:** V03-06.

---

# Future Session Evidence Template

Append one entry per validation-relevant operation:

```text
## Evidence NNN — <operation>

Date / checkpoint:
Command or barrier:
Starting state:
Expected result:
Observed result:
Repository evidence:
Gate output:
Matrix cases:
Verdict: pass | gap | inconclusive
Follow-up:
```

Normal story events need no entry unless they exercise a Version 0.3 persistence contract.

