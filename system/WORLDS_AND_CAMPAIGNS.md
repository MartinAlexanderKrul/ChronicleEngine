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
| `worlds/gatefall/` | 0.1 (World Rule Profile 1.6) | Active | 1 | `/system` |
| `worlds/reikon/` | 0.1 (World Rule Profile 0.10, frozen) | Active | 1 | `/system` |
| `worlds/verra/` | 0.1 (Prototype) | Active | 2 | none |

A world's diegetic commands are shown to the player only once a campaign in that world is loaded, never on the welcome page (Command Availability at Session Start).

---

# Campaigns

| Campaign | World | Protagonist | Status | Latest checkpoint | Captured |
|----------|-------|-------------|--------|-------------------|----------|
| `campaigns/prototype_alpha/` | `worlds/verra/` | Ilse Varn | Closed — terminal | `900_CHECKPOINT_0001` | 2026-07-23 |
| `campaigns/prototype_beta/` | `worlds/verra/` | Kael Travis | In progress | `900_CHECKPOINT_0001` | 2026-07-13 |
| `campaigns/reikon_awakening_001/` | `worlds/reikon/` | Daedalus | In progress | `900_CHECKPOINT_0017` | 2026-07-22 |
| `campaigns/gatefall_pendragon_001/` | `worlds/gatefall/` | Alexander Pendragon | In progress | `900_CHECKPOINT_0013` | 2026-07-29 |

Status vocabulary is the welcome page's: **not started**, **in progress**, **closed or terminal**. `Captured` is the latest checkpoint's `record_time`/`created` from its save manifest — the same timestamp `/continue` uses to resolve "most recently played" (Rules Section 13.3), never filesystem modification time.

## Per-campaign notes

These are the caveats a player needs **before** choosing, not campaign state. Each names the file that governs it.

- **`campaigns/prototype_alpha/`** — Closed: the campaign reached a terminal outcome and this instantiation will not continue (`180_CURRENT_STATE.md`). Its only checkpoint is the **pre-play baseline**; no session-close checkpoint was ever written, so the latest checkpoint does not reflect the campaign's ending. Continuing in Verra requires `/new` or a branch, not a restore. Its `090_CAMPAIGN_STARTUP.md` still declares `initialization_state: initialized-no-save`, which the ledgers contradict.
- **`campaigns/prototype_beta/`** — Resumable from `900_CHECKPOINT_0001`. Its `090_CAMPAIGN_STARTUP.md` also still declares `initialization_state: initialized-no-save` against a written checkpoint; the ledgers govern.
- **`campaigns/reikon_awakening_001/`** — Resumable from `900_CHECKPOINT_0017`, a clean stopping point at the tannery-district E-Rift site with both of the day's assignments closed: **Warehouse 7 permanently resolved** (independent contractor Wren Ashcombe's matched-resonance extraction of the bonded core, zero casualties — no milestone XP to Daedalus, as the clearing act was hers) and a second, **unguarded tannery E-Rift** cleared by Daedalus's own hand for the full 70 XP Rift-clear milestone (Level 3, 95/170 XP). Stats are uncapped and Ascensions grant 5 points (World Rule Profile 0.8), with all 8 allocation points now spent; Mana Affinity's die contribution still ceilings at +1 (Law VII), and the points banked into Power and Perception have no authored payoff under 0.8 — a recorded gap, addressed by the separate Profile 0.9 authoring adopted at the next readiness gate. Two flagged corrections stand: Captain Thorne's unauthored assignment-bonus claim (Association request pending) and the now-recorded 24 vells from the earlier Ashgate core sale. This campaign keeps a **save index** at `saves/README.md` recording each checkpoint's status and restorability; read it as part of restoration and honor it (Destructive-Command Guards). `900_CHECKPOINT_001` is a superseded nonconforming original — restore its point at Checkpoint 0002, not the original folder. The campaign has **no baseline checkpoint**, so `/restart` is unavailable and must not be attempted.

**Dormant by owner ruling (2026-07-22):** play is paused indefinitely in favor of `worlds/gatefall/`; the campaign remains fully resumable from `900_CHECKPOINT_0017` as described above.
- **`campaigns/gatefall_pendragon_001/`** — Gatefall's first campaign. Session 2 is in progress; **latest restorable checkpoint `900_CHECKPOINT_0013`, captured under frozen Profile 1.5 and needing no migration on restore** (2026-07-29 afternoon, Alexander's apartment between the Gate's clear and the crew's filing meeting — restoring resumes at a quiet interval, not a fight). Protagonist Alexander Pendragon cleared his first Gate as a striker (Red Line Corridor, true grade E), pivoted to harvest/support work (`EVT-000062`), completed two C-grade harvest jobs (Cicero Scar, Frozen Gallery — ≈$24,663 harvest share, his largest payout, alongside ≈$2,313 and ≈$5,700), and privately accumulated 25,330 gold across seven undeclared System-shop sales, unknown to anyone. On his 2026-07-27 rest day he bought a C-grade dagger and an instant-dungeon key (gold 22,520), and arranged a fifth crew slot with striker Priya Okafor.\n\n  On **2026-07-28** he entered Okafor's posted Gate — assessed low-confidence D, resolved on entry to **true grade C**, a real mismatch for the 5-hunter waiver-tier crew (Julian, Renata, Owen newly met; archetype Ashfield, population 12 common/1 elite/1 boss). He killed a common beast solo above his own System tier after a near-lethal hit, then the elite, then — under a plan he built and the crew adopted, having been handed the tactical call outright by Priya — **the boss itself**, clearing the Gate in four hours eleven minutes and rising from Level 3 to **Level 7**. The boss inflicted a Severe rib injury that **Owen cleared outright** with a C-rank mender touch, the first exercise of the mender rule authored minutes earlier as Profile 1.5. Seven of the twelve common beasts were left alive and contained by the standing barrier (nothing leaves a cleared Gate) and lost with the instance.\n\n  Current state: **Level 7, XP 40/700**, base Stats 25/23/17/20/19, effective 25/32/20/20/19, Health 80/80, Mana 38/38, **15 stat points unallocated**, System tier still E. Pending rewards are Ability Points +3 and three unopened Daily Random Boxes (a fourth was opened, yielding an unequipped E Channeling Focus); the Status Recovery was spent mid-fight. Daily streak 4. Gold 22,520, unchanged. His resonance chisel broke on an exhausted seam. Crew loot pending the split: **16 C-crystals, 2 C-cores, and a Longshot [C] boss drop**.\n\n  **Two live threads, both moved.** The Gate was posted E–D and was truly C. Alexander established the legal position — everyone signed a legal contract and the true grade resolved only on entry, so no rank cap was breached — leaving the real exposure as *how a D/E/E/E/C crew survived at all*. The crew adopted a **"no hero"** filing (Owen's proposal, after refusing Alexander's offer to let Owen claim the boss kill): the report leads with the crew and the board's mis-posting, and Alexander is the support striker who was hurt and treated. Priya accepted with stated limits — she will not write that he was absent or didn't fight, and she will answer any direct Region V question honestly — and requires Julian and Renata briefed in person first. Kesha relayed that Region V's monitoring already registered the closure. **The filing meeting is 2026-07-29 18:00 at the Coalition**; nothing sold or split before it.\n\n  Separately, Owen laid out all four unexplainable things he has watched Alexander do and said he is not confused and will not invent an explanation. **Alexander answered in part** — something happened to him and he does not understand it either — and Owen released him from any promise to explain. That thread now runs inside a **personal relationship (`REL-000066`)**, formed the night of the clear. No NPC knows what the System is; exactly one knows there is something to know.\n\n  Earlier checkpoints remain immutable and reflect earlier points: `0012` sits at the bar right after the clear; `0011` predates the boss fight and the 1.5 migration; `0010` is a 1.1 capture requiring the full migration chain. The campaign has **no baseline checkpoint**, so `/restart` is unavailable; `/continue` targets `900_CHECKPOINT_0013`.

**Gatefall Profile 1.6 compatibility update (`EVT-000082`):** the live campaign has adopted Profile 1.6. Its latest immutable checkpoint, `900_CHECKPOINT_0013`, remains a valid Profile 1.5 capture but now requires the explicit 1.5→1.6 readiness migration on restore. The active fifth daily retains its completed calisthenics and outstanding 10 km run; its deadline is now 2026-07-30 00:00 America/Chicago rather than 06:00.

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
