# Save Index — Prototype Alpha

**Authority:** Non-canonical operational index (Decision 072). It records the **status** of each checkpoint and of the retired pre-unification save artifacts; it does not hold canonical state and does not modify any checkpoint. Checkpoint contents are immutable (Rules Section 13.2).

The campaign is **closed — terminal** (protagonist Ilse Varn executed, Year 312 RR, Day 17). Its terminal canon is fully promoted into the live ledgers and into world history.

---

# Checkpoints

| Checkpoint | Captured | Status | Restorable |
|------------|----------|--------|------------|
| `900_CHECKPOINT_0000/` | 2026-07-13 | Conforming baseline (Decision 053) | Yes — pre-play baseline; `/restart` target |
| `900_CHECKPOINT_0001/` | 2026-07-23 | Conforming terminal re-issue (Decision 072) | **Yes — terminal state; current restore point** |

## `900_CHECKPOINT_0000/` — baseline

The pre-play baseline required by Decision 053. Restoring it resets the campaign to its unplayed starting state; it is the `/restart` target. `/continue` on a closed campaign does not resume play.

## `900_CHECKPOINT_0001/` — terminal re-issue

The campaign's terminal state in the one canonical checkpoint form, re-issued on 2026-07-23 under Decision 072 by copying the live terminal ledgers (unchanged since campaign close except the Decision 073 schema migration). Restoring it restores the terminal record — for reading or for world-line forking (Decision 053), not for continuation: the campaign is closed and its own manifest history records "no continuation of this baseline."

---

# Retired pre-unification artifacts — `.saves/*.yaml`

Four manifest-only YAML files written during Session 1 under Engine 0.1.5, before the save architecture existed in its documented form:

| File | Records |
|------|---------|
| `SAVE_MANIFEST_2026-07-12_S1.yaml` | Session 1 mid-session state |
| `SAVE_MANIFEST_2026-07-12_S1EXT.yaml` | Extended-session mid-session state |
| `SAVE_MANIFEST_2026-07-13_S1EXT_CP3.yaml` | Extended-session mid-session state |
| `SAVE_MANIFEST_2026-07-13_S1EXT_CP4.yaml` | Terminal state at campaign close |

**These are not checkpoints and never were** (Rules Section 13.1, Decision 072): they hold no ledger copies and could never restore state on their own. They are retained immutably as historical evidence of the pre-unification form and must not be treated as restore targets.

**No save-point is abandoned by retiring them.** CP4's terminal state is exactly the state the live ledgers preserve and `900_CHECKPOINT_0001/` now restores. The three mid-session records are progress markers inside a single played session of a campaign that closed at CP4; the canon they attest is contained in the terminal ledgers and the campaign chronicle, and the session transcript remains the reconstruction evidence should a mid-session fork ever be wanted (Decision 061). The form they used is prohibited going forward: a conforming Runtime writes only the `saves/900_CHECKPOINT_<NNNN>/` directory form.
