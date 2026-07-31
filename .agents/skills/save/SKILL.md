---
name: save
description: Use when the player types /save or asks in any words to save, checkpoint, or record campaign progress, when a session is closing, or when context is running low in a Chronicle Engine campaign session.
---

# /save — Checkpoint a Campaign

**A save is a set of verified files on disk — never a claim.** The word "saved" may appear only after every artifact below exists, read-back confirms it, and the transactional helper returns `"status":"created"` after showing its real validator output.

## Canon lives in the conversation until /save — not in the files

**Do not write to any campaign or world file mid-scene.** Rolls, damage, HP/Mana changes, inventory movement, quest progress, NPC reactions, shop transactions, skill-formation evidence — everything that happens during ordinary play stays tracked in the conversation (and, when `/debug` is on, the OOC block) as pending state. Ledger files (`100`–`180`, world records, everything under `saves/`) are not touched until the player runs `/save`, at which point the full Save Algorithm above writes the session's entire derived target set in one pass.

This reverses the campaign's earlier practice of writing `100_CHARACTER_SHEET.md`/`180_CURRENT_STATE.md` continuously through a session (visible in this campaign's history as repeated "live, unpromoted-to-checkpoint" edits) — that pattern is retired. A shop roll, a combat exchange, or an NPC-knowledge ruling is now held as a pending delta and narrated from memory of the conversation, never confirmed by re-reading a file you just wrote. Only `/save` derives the target set from the session's events and commits it to disk.

## Procedure

1. **Open and follow the authoritative Save Algorithm** — `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md`, section "Save Algorithm" (8 steps, in order). Execute it from the document, not from memory. Do not invent checkpoint structure: the canonical form is `saves/900_CHECKPOINT_NNNN/` (zero-padded, next number) containing copies of **all eight canonical campaign ledgers (100, 110, 120, 130, 140, 160, 170, 180), changed or not** (a checkpoint is a complete restorable state, not a diff) — plus `900_SAVE_MANIFEST.md`. `090`/`095` are operational and derived artifacts, not canon: they stay out of the snapshot. The manifest mints no registry identifier (Decision 072).
2. **Completion contract.** A checkpoint exists only when ALL of these are true on disk:
   - Every identifier referenced anywhere has a live fenced-YAML Object Block. A registry row or prose mention is a reference, not a definition.
   - Live ledgers updated from the session's **derived** target set (from its events — not from recollection of what changed).
   - `saves/900_CHECKPOINT_NNNN/` snapshot + manifest, the manifest listing only files actually written and read back.
   - `system/ID_REGISTRY.md` high-water marks and allocation log cover every identifier minted this session.
   - `system/WORLDS_AND_CAMPAIGNS.md` campaign row: latest checkpoint and Captured updated.
   - `180_CURRENT_STATE.md` declares the latest restorable checkpoint.
3. **Hand mechanical checkpointing to the transaction helper.** After live read-back and the live Repository Validation Gate, write the Version 1.0 hash-bound mutation receipt specified under the Runtime Profile's Save Algorithm. Then invoke:
   ```
   powershell -NoProfile -ExecutionPolicy Bypass -File tools\new_checkpoint.ps1 -Campaign <campaign-path> -CheckpointType <type> -Label "<label>" -ExpectedParent <checkpoint-or-none> -MutationReceipt <receipt.json>
   ```
   Do not manually allocate the ordinal, create the snapshot directory or manifest, edit the generated index, or substitute narrated gate results. The helper owns those steps, rollback, final read-back, and exact validator output.
4. **Write the player's message only now.** Success requires the final `CHECKPOINT_RECEIPT_JSON` to say `"status":"created"` and names its verified checkpoint path. Any failure, staging path, or unwritten target → report a **partial checkpoint** per the algorithm's step 8. Never draft the success message before the helper finishes.
5. **Commit to `main` — every green checkpoint, no separate request needed.** Once the helper returns `"status":"created"`:
   - Check `git branch --show-current`. If it's already `main`, commit there. Otherwise `main` is checked out in a separate worktree — find it with `git worktree list` (the path moves; don't reuse a cached one) and commit there instead, re-running the repository and checkpoint-contract gates in that worktree first.
   - Stage only this session's checkpoint files: the changed campaign ledgers (`100`–`180`), `system/ID_REGISTRY.md`, `system/WORLDS_AND_CAMPAIGNS.md`, and the new `saves/900_CHECKPOINT_NNNN/` directory. Check `git status --short` first — never `git add -A`, since unrelated in-progress edits from other sessions are routinely sitting in this working tree.
   - **The commit is the Chronicle Engine's own record — no AI attribution anywhere in it.** No `Co-Authored-By` trailer, no "Generated with", no model or assistant name, no tool or vendor reference, in the subject, the body, or the trailers. Author and committer stay the repository's configured git identity; do not override them. The message describes what happened in the campaign, and nothing about what produced it.
   - Commit only; do not push to `origin/main` unless the player separately asks for that.
   - A checkpoint is not finished until this lands on `main`. Report the commit alongside the checkpoint result, not as a separate follow-up.
   - **The player may waive this per save** — "don't commit", "keep it local", "I'll commit myself". Only an explicit instruction to that effect skips the commit; silence is consent, and a low-context or hurried session is not a waiver.

## Rationalizations — all observed in real failed sessions

| Claim | Reality |
|---|---|
| "All ledgers updated" | Ledger writes are one step of eight. No snapshot + manifest + index + gates = no save. |
| "Next session can resume from [scene]" | Resume needs a restorable checkpoint folder. If `saves/` lacks one, this promise is false. |
| "The NPCs are recorded" | Recorded = Object Block exists. Prose + registry rows alone fail validation. |
| "Changes were small, validation is a formality" | A "small" session produced 9 validation errors. Run the gates. |
| "The player is in a hurry / context is low" | Speed pressure is when checkpoints break. The algorithm IS the fast path: a false save costs a future session. |
| "I'll checkpoint properly at session end" | /save IS the checkpoint request. Deferring is refusing. |
| "The player didn't ask me to commit" | Committing a green checkpoint to `main` needs no request. Only an explicit "don't commit" stops it. |
| "The trailer is just standard practice / it's honest attribution" | Not in this repository. The checkpoint commit carries no AI attribution of any kind, in any field. |

## Red flags — STOP

- The word "saved" in a draft with no validator output in the same message
- A checkpoint folder name you made up instead of `900_CHECKPOINT_NNNN/`
- An ID minted whose Object Block you haven't written
- Describing what you will write instead of reading back what you wrote
- A green checkpoint reported as finished with no commit on `main` and no explicit waiver from the player
- Any AI, assistant, model, or tool name anywhere in a checkpoint commit message
