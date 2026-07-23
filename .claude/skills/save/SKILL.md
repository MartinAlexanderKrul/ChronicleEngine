---
name: save
description: Use when the player types /save or asks in any words to save, checkpoint, or record campaign progress, when a session is closing, or when context is running low in a Chronicle Engine campaign session.
---

# /save — Checkpoint a Campaign

**A save is a set of verified files on disk — never a claim.** The word "saved" may appear only after every artifact below exists, read-back confirms it, and both validators have passed **with their output shown to the player**.

## Procedure

1. **Open and follow the authoritative Save Algorithm** — `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section "Save Algorithm" (8 steps, in order). Execute it from the document, not from memory. Do not invent checkpoint structure: the canonical form is `saves/900_CHECKPOINT_NNNN/` (zero-padded, next number) containing copies of **all eight canonical campaign ledgers (100, 110, 120, 130, 140, 160, 170, 180), changed or not** (a checkpoint is a complete restorable state, not a diff) — plus `900_SAVE_MANIFEST.md`. `090`/`095` are operational and derived artifacts, not canon: they stay out of the snapshot. The manifest mints no registry identifier (Decision 072).
2. **Completion contract.** A checkpoint exists only when ALL of these are true on disk:
   - Every identifier referenced anywhere has a live fenced-YAML Object Block. A registry row or prose mention is a reference, not a definition.
   - Live ledgers updated from the session's **derived** target set (from its events — not from recollection of what changed).
   - `saves/900_CHECKPOINT_NNNN/` snapshot + manifest, the manifest listing only files actually written and read back.
   - `system/ID_REGISTRY.md` high-water marks and allocation log cover every identifier minted this session.
   - `system/WORLDS_AND_CAMPAIGNS.md` campaign row: latest checkpoint and Captured updated.
   - `180_CURRENT_STATE.md` declares the latest restorable checkpoint.
3. **Run both gates after the writes and paste their real output:**
   ```
   powershell -ExecutionPolicy Bypass -File tools\validate_repository.ps1
   powershell -ExecutionPolicy Bypass -File tools\test_checkpoint_contract.ps1
   ```
4. **Write the player's message only now.** Success names the verified checkpoint path. Any failure or unwritten target → report a **partial checkpoint** per the algorithm's step 8. Never draft the success message before the gates have run.

## Rationalizations — all observed in real failed sessions

| Claim | Reality |
|---|---|
| "All ledgers updated" | Ledger writes are one step of eight. No snapshot + manifest + index + gates = no save. |
| "Next session can resume from [scene]" | Resume needs a restorable checkpoint folder. If `saves/` lacks one, this promise is false. |
| "The NPCs are recorded" | Recorded = Object Block exists. Prose + registry rows alone fail validation. |
| "Changes were small, validation is a formality" | A "small" session produced 9 validation errors. Run the gates. |
| "The player is in a hurry / context is low" | Speed pressure is when checkpoints break. The algorithm IS the fast path: a false save costs a future session. |
| "I'll checkpoint properly at session end" | /save IS the checkpoint request. Deferring is refusing. |

## Red flags — STOP

- The word "saved" in a draft with no validator output in the same message
- A checkpoint folder name you made up instead of `900_CHECKPOINT_NNNN/`
- An ID minted whose Object Block you haven't written
- Describing what you will write instead of reading back what you wrote
