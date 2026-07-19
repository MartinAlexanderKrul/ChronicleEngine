# Chronicle Engine

## Worlds and Campaigns

**File:** `system/WORLDS_AND_CAMPAIGNS.md`
**Status:** Active
**Governed by:** `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` (Engine Welcome Page)
**Authority:** Non-canonical operational index. It records **what exists and where**, so the Engine Welcome Page can be rendered from a file rather than recalled. It holds no canonical state, and it never overrides the source it points at.

---

# Purpose

This is the **rendered source** for the worlds-and-campaigns listing on the Engine Welcome Page, and for `/worlds`, `/campaigns`, and the `/continue` most-recently-played resolution.

It exists because that listing had no source. The Command Table is duplicated into `README.md` precisely so `/help` cannot be answered from memory ("The Command Table Is Rendered, Not Recalled"); the campaign listing carried no equivalent, so a Runtime that skipped the directory read fell back on the example paths in the bootstrap prose — which name Prototype Alpha and Verra throughout. The observed failure was a welcome page listing Prototype Alpha and Beta under Verra, with `campaigns/reikon_awakening_001/` — complete, committed, and six checkpoints deep — absent. Nothing was wrong with the campaign. Nothing had looked for it.

**Render every row below. Do not filter, summarize, or supplement the listing from memory.** A world or campaign absent here is absent from the welcome page; that is what makes the index worth keeping true, and why `tools/validate_repository.ps1` fails when it drifts.

The index carries only what a player needs in order to **choose**. Everything else — canonical state, checkpoint status, restorability — stays in the campaign's own files, which govern.

---

# Worlds

| World | Version | Status | Live campaigns | Diegetic commands |
|-------|---------|--------|----------------|-------------------|
| `worlds/asterra/` | 0.9 | Pre-campaign foundation | 0 | none |
| `worlds/reikon/` | 0.1 (World Rule Profile 0.6) | Active | 1 | `/system` |
| `worlds/verra/` | 0.1 (Prototype) | Active | 2 | none |

A world's diegetic commands are shown to the player only once a campaign in that world is loaded, never on the welcome page (Command Availability at Session Start).

---

# Campaigns

| Campaign | World | Protagonist | Status | Latest checkpoint | Captured |
|----------|-------|-------------|--------|-------------------|----------|
| `campaigns/prototype_alpha/` | `worlds/verra/` | Ilse Varn | Closed — terminal | `900_CHECKPOINT_0000` | 2026-07-13 |
| `campaigns/prototype_beta/` | `worlds/verra/` | Kael Travis | In progress | `900_CHECKPOINT_0001` | 2026-07-13 |
| `campaigns/reikon_awakening_001/` | `worlds/reikon/` | Daedalus | In progress | `900_CHECKPOINT_0011` | 2026-07-15 |

Status vocabulary is the welcome page's: **not started**, **in progress**, **closed or terminal**. `Captured` is the latest checkpoint's `record_time`/`created` from its save manifest — the same timestamp `/continue` uses to resolve "most recently played" (Rules Section 13.3), never filesystem modification time.

## Per-campaign notes

These are the caveats a player needs **before** choosing, not campaign state. Each names the file that governs it.

- **`campaigns/prototype_alpha/`** — Closed: the campaign reached a terminal outcome and this instantiation will not continue (`180_CURRENT_STATE.md`). Its only checkpoint is the **pre-play baseline**; no session-close checkpoint was ever written, so the latest checkpoint does not reflect the campaign's ending. Continuing in Verra requires `/new` or a branch, not a restore. Its `090_CAMPAIGN_STARTUP.md` still declares `initialization_state: initialized-no-save`, which the ledgers contradict.
- **`campaigns/prototype_beta/`** — Resumable from `900_CHECKPOINT_0001`. Its `090_CAMPAIGN_STARTUP.md` also still declares `initialization_state: initialized-no-save` against a written checkpoint; the ledgers govern.
- **`campaigns/reikon_awakening_001/`** — Resumable from `900_CHECKPOINT_0011` after the Warehouse 7 basement clear, with Profile 0.6 recurrent System interventions active and the Rift core still unextracted. This campaign keeps a **save index** at `saves/README.md` recording each checkpoint's status and restorability; read it as part of restoration and honor it (Destructive-Command Guards). `900_CHECKPOINT_001` is quarantined and must not be restored. The campaign has **no baseline checkpoint**, so `/restart` is unavailable and must not be attempted.

---

# Maintenance

Update this index in the **same change** that adds, forks, closes, or checkpoints a campaign, or that adds a world. It is part of the checkpoint's live target set whenever the latest checkpoint changes.

`tools/validate_repository.ps1` enforces the coverage this index exists to provide, and fails when:

- a live campaign directory (one holding `180_CURRENT_STATE.md`) has no row, or a campaign row names a directory that does not exist;
- a world directory has no row, or a world row names a directory that does not exist;
- a campaign row's world names a directory that does not exist;
- a campaign row's latest checkpoint names a directory absent from that campaign's `saves/`, and is not `none`.

The gate is mechanical and deliberately narrow. It proves every world and campaign is **listed** and that each row **resolves** — it cannot know whether a row's status, protagonist, or timestamp is still true, and it does not look. Those remain the writer's obligation at the promotion barrier, and the campaign's own ledgers govern wherever this index disagrees.

`tools/test_checkpoint_contract.ps1` closes the one part of that gap which is mechanically checkable: **a row's latest checkpoint must equal the "Latest restorable checkpoint" its campaign's `180_CURRENT_STATE.md` declares.** The two are independent statements of one fact, so drift between them is decidable without knowing which is right — and the test reports both. It also fails when a row points at a superseded nonconforming original — a snapshot kept as evidence that is not a restore target.

This was not hypothetical. Checkpoints 0010 and 0011 were both captured while this index still named 0009, in breach of the Maintenance rule above, and `validate_repository.ps1` passed each time because 0009 still existed. Existence was never the question; currency was.
