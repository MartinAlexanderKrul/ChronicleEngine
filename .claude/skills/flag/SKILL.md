---
name: flag
description: Use when the player types /flag or /flag <summary>, or says in any words that something about how the Runtime or engine itself behaved should be raised as a design issue rather than fixed in the fiction. Out-of-character, no campaign-canon change, no campaign required.
---

# /flag — Raise an Engine Design Issue

`/flag` is for **engine-level** friction — something about how the Runtime, Resident Core, Runtime Profile, or a World Rule Profile behaved that felt like a gap in the engine's own design, not a one-off in-fiction ruling. It is never used to change campaign canon, and it is never optional to skip the repo write in favor of an ephemeral suggestion — **a flag that isn't in the repo didn't happen.**

If the player is instead reporting a mistake in *this session's* fiction (an inaccurate roll, a wrong item, an NPC acting on information it shouldn't have), that's a correction to make now, not a flag — see the `rules` and `npc-knowledge` skills. `/flag` is for "the engine should behave differently in general," not "you got this scene wrong."

## What always happens, every time

1. **Write the flag to `engine/004_DESIGN_FLAGS.md` immediately.** Not deferred to `/save`, not held as conversation state — this file is non-canonical engine documentation, not a campaign ledger, so the `save` skill's "don't write mid-session" rule does not apply to it. Read the file, find the highest existing `F-NNN`, and append a new entry one number above it, following the format defined in that file's own `# Format` section exactly: raised date (use the real-world date), source (the campaign/session it came from, or "cross-campaign" if it isn't tied to one), a description with enough context for someone with no memory of this conversation to evaluate it, the actual open design question it raises, and `**Status:** Open.`
2. **Never silently skip step 1.** A chip, a spoken acknowledgment, or a promise to "remember this" is not sufficient — the player has explicitly required the repo write every time, not just when convenient.
3. **Optionally, also raise a spawn-task chip** (if that tool is available) so the flag can be spun into its own working session with one click. This is a convenience layered on top of the repo write, never a substitute for it — if only one can happen, the file write is the one that must.
4. **Tell the player which flag ID landed and where** (`F-00N` in `engine/004_DESIGN_FLAGS.md`), so they can find it later without asking.

## Mid-campaign-session behavior

If `/flag` is invoked while a campaign session is open, the write to `engine/004_DESIGN_FLAGS.md` still happens immediately — it is engine documentation, not the campaign's own canon, so it is not held for that campaign's next `/save`. It will naturally ride along uncommitted in the working tree until the next commit (either that campaign's `/save`, which commits everything staged including this file, or a commit requested directly). Do not let campaign save discipline become a reason to delay writing the flag itself.

## What this skill does not do

- It does not evaluate, implement, or resolve the flag — that's a separate, explicitly-requested piece of work (via the spawned task or a direct ask), never bundled into `/flag` itself.
- It does not touch any campaign ledger, world file, or checkpoint.
- It does not require a loaded campaign; it can be raised from the Engine Welcome Page, mid-session, or anywhere else.
