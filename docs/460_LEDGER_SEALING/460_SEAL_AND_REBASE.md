# Chronicle Engine

## Sealing Settled History, and Rebasing Live State to What Is True Now

**Status:** Accepted as Decision 094 (2026-09-24), owned by Version 0.4 milestone 0.4.6. The first seal pass has been applied to `campaigns/gatefall_pendragon_001/` on top of Checkpoint 0173, and Checkpoint 0174 captures its volumes.
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
- **Every ledger's Record block** carried a comment note per save, 297 by Checkpoint 0173, each a summary of what `170_CHANGELOG.md` already records.

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

# What the first pass did (2026-09-24, applied on top of Checkpoint 0173)

The pass was first run against Checkpoint 0172. When the owner played Checkpoint 0173, its live ledgers were taken exactly as played and the pass was run again on them. The first run's volumes had never been captured, so they were regenerated, not merged. Every field and objective rewritten below was first confirmed unchanged by 0173's play.

| Ledger | Before (0173) | After | Moved to `sealed/` |
|---|---:|---:|---|
| `100_CHARACTER_SHEET.md` | 228,760 | 195,347 | 69 Record notes (396 Events kept as index); 7 asides |
| `110_WORLD_LEDGER.md` | 275,580 | 262,339 | 40 Record notes; 3 asides |
| `120_INVENTORY_AND_OWNERSHIP.md` | 158,347 | 146,772 | 47 Record notes; 1 aside |
| `130_NPCS_AND_FACTIONS.md` | 1,100,192 | 932,783 | 44 notes; **25 fields on 20 records rebased**; 22 asides |
| `140_OBJECTIVES.md` | 334,935 | 216,090 | 37 notes; **29 closed objectives**; `OBJ-16`, `OBJ-21`, `OBJ-26` rebased; 6 asides |
| `160_CAMPAIGN_CHRONICLE.md` | 3,154,909 | 497,432 | 54 notes; **`EVT-000056`-`EVT-001000`** (941 Events) |
| `170_CHANGELOG.md` | 889,335 | 130,463 | 42 entries through `EVT-000998` / Checkpoint 0131 |
| `180_CURRENT_STATE.md` | 15,399 | 11,558 | 5 settled provisional mechanics, 2 closed owner questions; 2 asides |

(Figures in bytes, taken after the corrections listed below.)

**The live campaign ledgers went from 6.26 MB to 2.5 MB.** Every object block is still defined exactly once, and core repository validation passes. The NPC ledger's largest object went from `REL-000066` at 73,293 bytes to `ENT-000139` at about 39,400, and that budget is re-recorded downward.

**Records rebased.** Relationships: `REL-000066` (`state`, `state_updates`), `REL-000065`, `REL-000068`, `REL-000069`, `REL-000094`, `REL-000096`, `REL-000101` and `REL-000107` (`state`). Characters: `ENT-000139` (`location`, `condition`, `situation`) and the `situation` of `ENT-000130`, `ENT-000134`, `ENT-000135`, `ENT-000136`, `ENT-000146`, `ENT-000147`, `ENT-000182`, `ENT-000187`, `ENT-000198`, `ENT-000203` and `ENT-000206`. Fields under about 4 KB whose history is also characterisation (`ENT-000137`, `ENT-000138`) were left alone.

**Why it matters in play, from 0173 itself.** At `EVT-001176` the narration twice placed Alexander at the Rogers Park apartment with Owen as his partner at home. It was reading the stale `ENT-000139.location` and `REL-000066.state` this pass rewrites. The player caught it and had it withdrawn.

## Metadata stripped, at the owner's direction

The owner's rule: notes and data are never trimmed; metadata such as "ratified at Event X" or "per the owner's ruling" is. `seal_campaign.py strip-metadata` removes ruling-provenance asides from live text by eight narrow patterns: ruling asides, "(Decision 0NN)" tags, "Characterization first:" labels, "Authored … under Decision 092" preambles, "*Corrected …*" notes, transcription asides and caught-by-player asides. Comment lines (Record notes, citation indexes) are skipped. Any Event an aside cited stays cited in place. Each removal is logged verbatim in the ledger's volume. 41 asides in all. Three were restored by hand because they carried data: Orenne's Mana loss on Earth, four "see Closed Channels" pointers inside `knowledge`, and the Detroit/Denver fact in `OBJ-60`.

## `180_CURRENT_STATE.md`, which readiness loads whole

It was mostly current: its time, obligations, open threads and telemetry all matched the chronicle. What was stale:

- Its five provisional mechanics, all settled: one revoked, four ratified.
- Two owner questions marked "Closed".
- Two lines carried in two places each.
- `OBJ-80` listed as open with no note that its window had passed unattended.

The settled material went to its volume, the rest was corrected, and **readiness fell 39,844 -> 38,986 tokens** and is recorded there.

## Canon repaired so the regression suite reads true

The suite had eight red suites before any of this. Four were fixture legs pinned to live values, and one was a Linux-only directory listing; those were fixed in the suites. Three were real canon drift, repaired from the chronicle:

- **Ability points.** Six Events narrated allocations with no counter deltas: `EVT-000840`, `EVT-000866`, `EVT-000883`, `EVT-001004`, `EVT-001080` and `EVT-001082`. The base Stats carried them; the counters lagged by Strength +45, Vitality +148 and Intelligence +228, and the earned pool by +489. The missing deltas are declared once at the `EVT-001179` barrier; no earlier Event was edited. `titles.points_granted` 57 -> 119 prices Section 16.4's Ascendant and Absolute grades, which the suite also learned to read.
- **Conduit's render** read Intelligence 3223 against a live 3260 (`EVT-001123`).
- **The Section 9.10 board.** Telemetry said 8 postings where the Events give 12. Its arithmetic had skipped `GB-56`/`GB-57`, and `GB-58`-`GB-62` had never been itemised.

**`ENT-000136` is Priya Menon** throughout live canon and the registry. Okafor collided with Director Naomi Okafor (`ENT-000107`) and survives only as her former alias.

# What is left open

- **`agenda` accretion.** `ENT-000233`, `ENT-000147`, `ENT-000146`, `ENT-000130` and others carry "Prior:" chains, 3-6 KB each. They are protected by `never_trim`, and a ruling is needed.
- **`REL-000066.texture`** (about 27 KB) describes the register of a relationship that has ended. It is protected in the same way.
- **The remaining large objectives**, `OBJ-60` (24 KB) and `OBJ-65` (23 KB), are current enough that rebasing them is a play-time judgment. Several open objectives are past their own due dates (`OBJ-78`, `OBJ-80`). `OBJ-2` (tuition) is plainly moot against present cash, and `OBJ-3`, `OBJ-11`, `OBJ-12` and `OBJ-22` read settled but carry no terminal status. Each is a play-time close, not a seal-pass decision.
- **Two pre-existing parse defects**: `110_WORLD_LEDGER.md`'s `ending_routes` block and `120_INVENTORY_AND_OWNERSHIP.md`'s `current_funds` block do not parse as YAML, and both were already broken on main. `seal_campaign.py` reports it and never blames the seal for it.
- **The board's two gaps**, owed to the next tick and not guessed here: `GB-42`'s deadline passed at the `EVT-001145` tick with nothing recorded, and that tick's other within-reach postings never got board identifiers.
- **Nothing yet keeps the next accretion from happening.** Milestone 0.6.3's *"the ledger-ownership rule that keeps it retired"* is still the owed half. This pass is the cure applied once, with a tool that makes the next pass cheap.
