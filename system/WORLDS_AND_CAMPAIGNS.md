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
| `worlds/gatefall/` | 0.1 (World Rule Profile 1.8, frozen) | Active | 1 | `/system` |
| `worlds/reikon/` | 0.1 (World Rule Profile 0.11, frozen) | Active | 1 | `/system` |
| `worlds/verra/` | 0.1 (Prototype) | Active | 2 | none |

A world's diegetic commands are shown to the player only once a campaign in that world is loaded, never on the welcome page (Command Availability at Session Start).

---

# Campaigns

| Campaign | World | Protagonist | Status | Latest checkpoint | Captured |
|----------|-------|-------------|--------|-------------------|----------|
| `campaigns/prototype_alpha/` | `worlds/verra/` | Ilse Varn | Closed — terminal | `900_CHECKPOINT_0001` | 2026-07-23 |
| `campaigns/prototype_beta/` | `worlds/verra/` | Kael Travis | In progress | `900_CHECKPOINT_0001` | 2026-07-13 |
| `campaigns/reikon_awakening_001/` | `worlds/reikon/` | Daedalus | In progress | `900_CHECKPOINT_0017` | 2026-07-22 |
| `campaigns/gatefall_pendragon_001/` | `worlds/gatefall/` | Alexander Pendragon | In progress | `900_CHECKPOINT_0016` | 2026-07-30 |

Status vocabulary is the welcome page's: **not started**, **in progress**, **closed or terminal**. `Captured` is the latest checkpoint's `record_time`/`created` from its save manifest — the same timestamp `/continue` uses to resolve "most recently played" (Rules Section 13.3), never filesystem modification time.

## Per-campaign notes

These are the caveats a player needs **before** choosing, not campaign state. Each names the file that governs it.

- **`campaigns/prototype_alpha/`** — Closed: the campaign reached a terminal outcome and this instantiation will not continue (`180_CURRENT_STATE.md`). Its only checkpoint is the **pre-play baseline**; no session-close checkpoint was ever written, so the latest checkpoint does not reflect the campaign's ending. Continuing in Verra requires `/new` or a branch, not a restore. Its `090_CAMPAIGN_STARTUP.md` still declares `initialization_state: initialized-no-save`, which the ledgers contradict.
- **`campaigns/prototype_beta/`** — Resumable from `900_CHECKPOINT_0001`. Its `090_CAMPAIGN_STARTUP.md` also still declares `initialization_state: initialized-no-save` against a written checkpoint; the ledgers govern.
- **`campaigns/reikon_awakening_001/`** — Resumable from `900_CHECKPOINT_0017`, a clean stopping point at the tannery-district E-Rank Rift site with both of the day's assignments closed: **Warehouse 7 permanently resolved** (independent contractor Wren Ashcombe's matched-resonance extraction of the bonded core, zero casualties — no milestone XP to Daedalus, as the clearing act was hers) and a second, **unguarded tannery E-Rank Rift** cleared by Daedalus's own hand for the full 70 XP Rift-clear milestone (Level 3, 95/170 XP). Stats are uncapped and Ascensions grant 5 points (World Rule Profile 0.8), with all 8 allocation points now spent; Mana Affinity's die contribution still ceilings at +1 (Law VII), and the points banked into Power and Perception have no authored payoff under 0.8 — a recorded gap, addressed by the separate Profile 0.9 authoring adopted at the next readiness gate. Two flagged corrections stand: Captain Thorne's unauthored assignment-bonus claim (Association request pending) and the now-recorded 24 vells from the earlier Ashgate core sale. This campaign keeps a **save index** at `saves/README.md` recording each checkpoint's status and restorability; read it as part of restoration and honor it (Destructive-Command Guards). `900_CHECKPOINT_001` is a superseded nonconforming original — restore its point at Checkpoint 0002, not the original folder. The campaign has **no baseline checkpoint**, so `/restart` is unavailable and must not be attempted.

**Dormant by owner ruling (2026-07-22):** play is paused indefinitely in favor of `worlds/gatefall/`; the campaign remains fully resumable from `900_CHECKPOINT_0017` as described above.
- **`campaigns/gatefall_pendragon_001/`** — Gatefall's first campaign. Session 2 is in progress under **Profile 1.8**; **latest restorable checkpoint `900_CHECKPOINT_0015` is an immutable Profile 1.6 / Data Model 0.1.3 capture and requires the 1.6→1.7 Rank migration followed by the additive 1.7→1.8 `/system` layout adoption at readiness** (a diner in Rogers Park, ~08:15 on 2026-07-30; restoring resumes at a quiet interval mid-conversation, no pressure). The preceding `900_CHECKPOINT_0014` sits at Owen's apartment earlier the same morning and, being a 0.1.2 capture, requires the additive 0.1.2→0.1.3 Relationship Texture migration at readiness. Protagonist Alexander Pendragon cleared his first Gate as a striker (Red Line Corridor, true E-Rank), pivoted to harvest/support work (`EVT-000062`), completed two C-Rank harvest jobs (Cicero Scar, Frozen Gallery), and cleared a mismatched true-C-Rank Gate (Ashfield, posted E-Rank–D-Rank) with Priya Okafor's crew on 2026-07-28, taking him from Level 3 to **Level 7** and costing him a Severe rib injury Owen cleared outright — the first exercise of the Profile 1.5 mender rule.\n\n  **2026-07-29 afternoon to 2026-07-30 morning (`EVT-000083`):** rewards claimed, all 18 unspent stat points allocated, and the unviewed Daily Premium cycle rolled and partially bought (Ascendant Hunter's Band, a Premium Rune teaching Stone Skin, the Adaptive Bastion Torso). A resonance-chisel errand at a new outfitter, Vanguard Trade & Gear, completed the fifth daily quest (streak 4→5). At the Coalition, a payout-processing discrepancy with Kesha Morrison resolved into all three of Alexander's long-pending payouts landing at once — cash **$1,705 → $34,381**. At the case table he briefed Julian and Renata on the agreed \"no hero\" account (both accepted it), the Ashfield loot split under standard terms ($52,500 crystal/core pool; Longshot [C-Rank] to sell and split once appraised), and — after a negotiation over Priya's leader's share — **Priya ceded him future tactical and strategic field command outright**, keeping the contractual lead and 10% share. A crew dinner surfaced real backgrounds for Julian, Renata, Priya, and Owen, and set a recurring training schedule (first session in 2–3 days). That night, Alexander and Owen (`REL-000066`) spent their first night together, both naming the relationship plainly for the first time — Owen stating outright that not knowing what Alexander is doesn't change what he wants.\n\n  **2026-07-30 morning (`EVT-000084`):** he woke beside Owen and stayed; the 06:00 rotation and the sixth daily quest fired mid-embrace. He ran the quest as a **coached two-person training session**, dragging Owen out to Loyola Park at dawn and completing 10 km and 100/100/100 by 07:40 (streak 5→6) while teaching Owen form — Owen finishing a scaled 30 of each rather than take the offered exit. Over breakfast Owen noted the crew dinner had produced a biography for everyone but Alexander, and got the first one he has ever volunteered: the teaching post was a queue, not a preference, because he wanted to be a research scientist, and krav maga was lifelong. **Alexander then stated his motive for the first time — he will keep hunting and get better at fighting because capability is the price of access to the phenomenon he wants to study** — took Owen's three terms for how to use a mender properly, and **asked him to be his boyfriend.** Owen said yes.\n\n  Current state: **Level 7, XP 40/700**, base Stats 29/23/20/30/20, equipped-effective 33/23/20/30/20 (only the Hunter's Band accessory is equipped — weapons, torso, gauntlets, and shin guards all stored), Health 80/80, Mana 40/40, **0 stat points unallocated**, one skill known (Stone Skin [D-Rank], Novice), System Rank: E-Rank. Pending rewards, as separate entries: **Ability Points +3 ×2, Status Recovery ×2, four unopened Daily Random Boxes.** Daily streak 6. Gold 20,255, cash $34,381. Two undamaged resonance chisels on hand.\n\n  **Remaining open, none urgent:** Alexander's ≈$9,450 Ashfield split share and the Longshot's eventual sale, both pending Priya's filing this morning; an unviewed Daily Premium cycle holding a Strength +5 Hunter's Band, a Rupture rune, and a Crystal Key until the 2026-07-31 06:00 rotation; whether the crew hears about the relationship from them or deduces it; and the exposure thread with the one person who knows there's something to know about him — who watched him run this morning and said nothing.\n\n  Earlier checkpoints remain immutable and reflect earlier points: `0013` sits in Alexander's apartment the afternoon before the crew meeting (requires the 1.5→1.6 migration on restore); `0012` sits at the bar right after the clear; `0011` predates the boss fight and the 1.5 migration; `0010` is a 1.1 capture requiring the full migration chain. `0014` sits at Owen's apartment earlier on 2026-07-30 and needs the 0.1.2→0.1.3 schema migration. The campaign has **no baseline checkpoint**, so `/restart` is unavailable.

  **`900_CHECKPOINT_0016` (2026-07-30, early evening, `EVT-000087`) is now the latest restorable checkpoint** — captured under frozen Profile **1.8** and Data Model **0.1.3**, the first checkpoint of this campaign requiring **no migration at all** on restore. Alexander and Owen resolved the command-versus-relationship collision Owen raised (crew members, not partners, in a Gate — provisional, both admitted it's untested) and spent a full day off together: apartments, an afternoon on Owen's boat on the lake, a first kiss, no Gates or crew business. State at capture: walking toward a noodle restaurant near Owen's apartment in Rogers Park for dinner, evening still open. Level 7, XP 40/700, Health 80/80, Mana 40/40, 0 unspent points, no injury, gold 20,255, cash $34,381, daily streak 6, no active quest until 2026-07-31 06:00. `/continue` targets `900_CHECKPOINT_0016`.

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
