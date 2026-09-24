# Chronicle Engine

## Sealing Settled History, and Rebasing Live State to What Is True Now

**Status:** Accepted as Decision 094 (2026-09-24), owned by Version 0.4 milestone 0.4.6. The first seal pass has been applied to `campaigns/gatefall_pendragon_001/`.
**Date:** 2026-09-24
**Evidence:** Gatefall: Pendragon, Checkpoint 0172 (`EVT-001168`), measured before and after the pass.
**Related:** `engine/001_ENGINE_DECISIONS.md` Decision 094; `010_ENGINE_RULES.md` Sections 13.1, 13.4; `011_ENGINE_DATA_MODEL.md` Sections 7.1, 7.2; Decision 085; `system/RUNTIME_CONTEXT_BUDGETS.yaml` (`trim_policy`, `resident_surface_policy`, `read_cap`); `tools/seal_campaign.py`; `tools/lib/SealedVolumes.ps1`

---

# The question

The owner asked whether, with so many generated files and so many records of what happened, it would be better to take everything together into one proper export, so the engine stops reading records that are no longer true, and to seal the rest.

**The answer was yes to sealing, and no to one export.** The engine reads in bounded pieces: by `EVT-`, `ENT-` and `OBJ-` identifier, by heading, and by field selector, under a 25,000-token read cap per file. A single multi-megabyte export would be the worst case for both. What the question was really after is a live layer that holds only what is true now, with everything else still kept but moved out of the way.

---

# What the campaign held (Checkpoint 0172)

| Area | Size | Read in play? |
|---|---|---|
| 13 live ledgers (`090`-`180`) | 6.2 MB | Yes. They are canon. |
| `160_CAMPAIGN_CHRONICLE.md` | 3.1 MB, 1,109 Events | By Event id only |
| `170_CHANGELOG.md` | 885 KB | Rarely, and only the head |
| `saves/` (172 full-copy checkpoints) | 457 MB | No. Only `/load`, `/restart` and `/branch` |
| `assets/` | 405 MB | No (images) |

**The checkpoints were not the staleness problem.** They take up space, but play reads only the latest manifest and then the live files. The owner ruled that they stay, and none was touched.

**The staleness was inside the live records**, because they are written by appending rather than by rewriting a value:

- **`ENT-000139` (Owen)**: `location` still placed him *"asleep beside Alexander"* on 2026-08-23, when the relationship had ended on 2026-09-15 (`EVT-000999`). His `situation` stopped on 2026-08-19.
- **`REL-000066`** was 73 KB, the largest object in the ledger. Its 17 KB `state` described a live relationship, and its 27 KB `state_updates` held the dated log of a relationship that had ended.
- **`ENT-000147` (Walt)**: `situation` was 16 KB and stopped on 2026-08-19. Everything since, including the $3.58M partnership sale and the 18-day check, lived only in `agenda`.
- **`140_OBJECTIVES.md`**: the *Active Objectives* section still held objectives marked Met, Complete, Closed, Cleared and Superseded, and `OBJ-26` carried eleven superseded `Status:` lines.
- **Every ledger's Record block** carried a comment note per save, 291 in all, each a summary of what `170_CHANGELOG.md` already records.

This is the same disease `system/RUNTIME_CONTEXT_BUDGETS.yaml` already names twice. `ENT-000125.temporal_state` was *"stale in place and passed every gate"*. `ENT-000139` was once 51.6% `situation`, *"a private second copy of the chronicle"*. Both had been cured one record at a time. This pass applies the same cure to the whole campaign, and adds the one thing the earlier cures lacked: a place to put the old text that is not a deletion.

---

# The design

## A sealed volume

`campaigns/<campaign>/sealed/<ledger-stem>.volNN.md`: settled history moved out of its parent ledger **verbatim**. It is a canonical ledger the campaign owns (Rules 13.1). Four kinds of material go there, each by one subcommand of `tools/seal_campaign.py`:

| Subcommand | Moves | Leaves behind |
|---|---|---|
| `volume` | a contiguous run of `## ` sections of an append-only ledger (chronicle, changelog) | a one-line pointer naming the first and last section |
| `notes` | a Record block's per-save comment notes, all but the newest | the newest note, a pointer, and a **citation index** of every Event the notes cited that the block does not otherwise cite |
| `sections` | named prose sections, such as closed objectives | a one-line index row per section |
| `retire` / `rewrite` | a record field's or prose section's superseded value | the current-truth value, with every Event the old value cited added to `moved_by_events` |

**It is byte-frozen from the first checkpoint that captures it.** No checksum is needed, and Rules 13.6 defers checksums anyway. Checkpoints are already immutable (13.2) and already capture every canonical ledger (13.1), so the live volume is compared byte for byte against every checkpoint's copy (`tools/lib/SealedVolumes.ps1`, run by `validate_repository.ps1`). Before the first capture a volume is **open**, and the seal pass may still write it. After capture the next pass opens the next number, which `seal_campaign.py` does by itself.

**Objects keep every obligation.** An Event moved into a chronicle volume is still the only definition of its identifier, still names `REC-000079` as its record, and is still listed in the live chronicle's Record `subjects`. Its `participation_audits` and `progression_audits` are still validated wherever they point, because `validate_repository.ps1` scans every Markdown file outside `saves/` and `exports/`. Retired record fields are held in `text` fences, never `yaml`, so they define nothing and cannot collide with the live record.

## The rebase

**A live field holds what is true now** (Data Model 7.1). Its history is evidence (7.2), and the chronicle already narrates it in full. The rebase writes each stale field as a current statement with its own Event citations, and seals the old value. `seal_campaign.py retire` makes Decision 085's reference obligation hold **by construction**: every Event the old value cited that the new block does not is appended to `moved_by_events`. The tool refuses to write if a citation would be lost or a block that parsed before would stop parsing.

**What the rebase does not touch** is `trim_policy.never_trim`: disposition (`want`, `fear`, `secret`, `voice`, `beliefs`, `agenda`), relationship `texture`, standing terms, `knowledge`, and channel constraints. `agenda` in particular has accreted "Prior:" chains on several records. Rebasing those needs a separate owner ruling, because the budget file puts them beyond any budget remedy.

**The rewriting itself is authoring, not a script.** Each of the 25 fields was read against the chronicle Events after its last citation, and rewritten from them. The tool does only the mechanical part: moving text, keeping citations, and refusing a break.

---

# What the first pass did (2026-09-24)

| Ledger | Before | After | Moved to `sealed/` |
|---|---:|---:|---|
| `100_CHARACTER_SHEET.md` | 229,764 | 195,384 | 68 Record notes (389 Events kept as index) |
| `110_WORLD_LEDGER.md` | 272,948 | 258,514 | 39 Record notes |
| `120_INVENTORY_AND_OWNERSHIP.md` | 157,298 | 145,485 | 46 Record notes |
| `130_NPCS_AND_FACTIONS.md` | 1,080,093 | 913,099 | 43 notes; **25 fields on 20 records rebased** |
| `140_OBJECTIVES.md` | 333,198 | 214,596 | 36 notes; **29 closed objectives**; `OBJ-16`, `OBJ-21`, `OBJ-26` rebased |
| `160_CAMPAIGN_CHRONICLE.md` | 3,126,558 | 468,549 | 53 notes; **`EVT-000056`-`EVT-001000`** (941 Events) |
| `170_CHANGELOG.md` | 885,236 | 126,366 | 42 entries through `EVT-000998` / Checkpoint 0131 |

(Figures in bytes. The two ledgers that later took a one-line seal-pass note in their Record block are a few hundred bytes larger than shown.)

**The thirteen live ledgers went from 6.2 MB to about 2.4 MB.** The 1,696 persistent-object blocks are unchanged in number, and core repository validation passes before and after. The NPC ledger's largest object went from `REL-000066` at 73,293 bytes to `ENT-000139` at 39,460, and that budget is re-recorded downward. `170_CHANGELOG.md` fell under the read cap and left the bounded-read list. Four volumes are over the cap and are declared with the same lookup their parent used.

**Records rebased.** Relationships: `REL-000066` (`state`, `state_updates`), `REL-000065`, `REL-000068`, `REL-000069`, `REL-000094`, `REL-000096`, `REL-000101` and `REL-000107` (`state`). Characters: `ENT-000139` (`location`, `condition`, `situation`) and the `situation` of `ENT-000130`, `ENT-000134`, `ENT-000135`, `ENT-000136`, `ENT-000146`, `ENT-000147`, `ENT-000182`, `ENT-000187`, `ENT-000198`, `ENT-000203` and `ENT-000206`. Fields under about 4 KB whose history is also characterisation (`ENT-000137`, `ENT-000138`) were left alone.

**Three stale facts corrected**, each to what its own Events establish:

- `REL-000066` now reads **Ended, 2026-09-15 (`EVT-000999`)**.
- `ENT-000139.location` now gives his own flat, with no scene since `EVT-001102`.
- `OBJ-26` reads **met in substance and superseded by `OBJ-60`** (`EVT-001073`). Closing it formally is the owner's call.

**Readiness is unchanged** at 39,807 tokens against the 40,000 ceiling. Readiness loads `180_CURRENT_STATE.md`, `090_CAMPAIGN_STARTUP.md` and `ENT-000125`'s typed state, not the records this pass touched. That surface is R14's, as it was before.

---

# What is left open

- **`agenda` accretion.** `ENT-000233`, `ENT-000147`, `ENT-000146`, `ENT-000130` and others carry "Prior:" chains, 3-6 KB each. They are protected by `never_trim`, and a ruling is needed.
- **`REL-000066.texture`** (about 27 KB) describes the register of a relationship that has ended. It is protected in the same way.
- **The remaining large objectives**, `OBJ-60` (24 KB) and `OBJ-65` (23 KB), are current enough that rebasing them is a play-time judgment. Several open objectives are past their own due dates (`OBJ-78`, `OBJ-80`). `OBJ-2` (tuition) is plainly moot against present cash, and `OBJ-3`, `OBJ-11`, `OBJ-12` and `OBJ-22` read settled but carry no terminal status. Each is a play-time close, not a seal-pass decision.
- **A pre-existing parse defect** in `110_WORLD_LEDGER.md`: the `standing_world_reactions` block does not parse as YAML, which was already true at HEAD. `seal_campaign.py` reports it and never blames the seal for it.
- **A pre-existing name split**: `ENT-000136` is *Priya Menon* in the cast roster and record heading but *Priya Okafor* throughout the chronicle.
- **Nothing yet keeps the next accretion from happening.** Milestone 0.6.3's *"the ledger-ownership rule that keeps it retired"* is still the owed half. This pass is the cure applied once, with a tool that makes the next pass cheap.
