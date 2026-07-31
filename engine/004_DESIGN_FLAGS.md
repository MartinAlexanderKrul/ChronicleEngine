# Chronicle Engine

## Design Flags

**File:** `004_DESIGN_FLAGS.md`
**Status:** Active
**Engine Version:** 0.2.0
**Layer:** Engine (000–099)
**Authority:** Non-canonical intake log; campaign ledgers remain canonical over any world/campaign fact mentioned here

---

# Purpose

This is the **intake queue** for design friction surfaced during ordinary play, in any world or campaign, before it becomes anything else.

- `002_ENGINE_ROADMAP.md` records *planned* work — something already scoped for a version.
- `001_ENGINE_DECISIONS.md` records *accepted* architectural choices — something already ruled on.
- `004_DESIGN_FLAGS.md` (this document) records *raised, undecided* concerns — something a player or the Runtime noticed during play that nobody has yet decided what to do with.

A flag is not a Decision and not a Roadmap commitment. It becomes one of those only when an owner actually rules on it — through the normal Decision or Roadmap process — at which point this entry is marked **Actioned** with a pointer to where it landed. A flag the owner rules against is marked **Dismissed** with the reason. Neither disposition edits campaign canon; this file governs no gameplay fact.

---

# Format

Each flag gets a stable ID (`F-001`, `F-002`, ...), never reused. New flags append at the end; existing entries are only ever amended for a status change, never deleted.

```text
## F-NNN — <short title>

**Raised:** <real date> · **Source:** <campaign/session it came from, or "cross-campaign">
**Status:** Open | Actioned (→ Decision/Roadmap ref) | Dismissed (reason)

<what was observed during play, and what about it felt like an engine-level gap
rather than a one-off narration choice — enough context for someone with no
memory of the session to evaluate it.>
```

---

# Flags

## F-001 — Openings from established NPC contacts default to uniform decline

**Raised:** 2026-07-31 · **Source:** `campaigns/gatefall_pendragon_001/`, 2026-08-10 in-fiction session

During live play, the player had the protagonist text four NPCs he already has real established rapport with, asking after open work. All four came back "nothing right now," each individually grounded in that NPC's own prior state — but the player pushed back that a real, multi-contact proactive action drawing on established relationships should have a real chance of surfacing a genuine opening, not fabricated from nothing, rather than the Runtime defaulting every contact to uniform decline and then treating it as the player's job to manufacture an opening some other way.

**The open design question:** does `docs/AI_GAMEPLAY_RESIDENT_CORE.md` or `docs/AI_GAMEPLAY_RUNTIME_PROFILE.md` need explicit guidance for handling a player's proactive outreach to multiple established contacts at once — e.g., a principle that such an action should weight toward surfacing at least one previously-seeded opportunity rather than uniform decline, while still never inventing something that contradicts established state. Worth reviewing the Resident Core's Narrative Momentum and Profile-Declared Proactive Trigger sections, and the Runtime Profile's Returning/Takeover and Derived Operation Plans sections, to see where (or whether) this belongs, and whether it is resident-core-level (all worlds) or per-world-authored.

**Status:** **Actioned (2026-07-31)** → Decision 082 (Pending World-Side Commitments), Decision 083 (Opportunity Supply Advances on the World's Clock), and Resident Core 1.13 (*A Canvass Is N Resolutions, and Standing Is Read, Not Recalled*). Full analysis and evidence: `docs/430_RUNTIME_PERSISTENCE_VALIDATION/438_F001_MULTI_CONTACT_OUTREACH_ANALYSIS.md`.

The flag's own proposed remedy — weighting a canvass toward surfacing a seeded opportunity — is **rejected as written**, and the reasoning behind it is **accepted and implemented proactively instead**. Reactive weighting fails Rules Section 1 and Law VIII and makes canvassing farmable; supply advancing on the world's clock delivers the same intent without raising any probability in the player's favour. The distinction is recorded in Decision 083's Alternatives Considered so it outlives this entry.

**Dispatch deltas delivered 2026-07-31 as Decision 084 and Gatefall Profile 1.44** (`EVT-000268`), completing disposition item 4. Authoring them exposed that the trigger manifest's settlement vocabulary had no member a world-side settlement could declare, so R4 needed a foundational enabler rather than ordinary world authoring. Two findings remain *not* covered by this disposition: the Gatefall backfill of live commitments and supply sources is campaign-canon work for a play session, and the unsettled tracked board is raised separately as F-002.

## F-002 — Gatefall's tracked board stopped counting

**Raised:** 2026-07-31 · **Source:** `campaigns/gatefall_pendragon_001/`, found while analysing F-001

`110_WORLD_LEDGER.md` carries four tracked Gate postings under Profile Section 9.10, snapshotted at the 2026-08-05 12:15 anchor. At the campaign's current anchor of 2026-08-10 07:38, **three of the four derived deadlines have passed** — `GB-01` at midnight 2026-08-08, `GB-02` and `GB-03` at midnight 2026-08-09 — and none appears to have been settled. `180_CURRENT_STATE.md` still reports `tracked_postings: 4`, annotated "unchanged from Checkpoint 0043".

Section 9.10 makes deadline resolution deterministic and discretion-free: `staffed` or `held` clears off-screen, `withdrawn` leaves the board, and `posted` **breaks** under Section 9.8. `GB-01` and `GB-02` were both `posted` and under floor at the snapshot, so absent an intervening staffing change both settle to breaks — and Section 9.10 is explicit that institutions avert breaks by changing staffing status, which is itself something that had to be settled across those five days. `GB-04` remains inside its window (deadline midnight 2026-08-12) with staffing unsettled.

This is distinct from F-001. F-001 concerned how a question was answered; this is a clock that stopped in a mechanism authored specifically to stop postings evaporating when nobody is looking. It owes no roll and no discretion — only settlement.

**The open question is not what the rule says but why it did not fire**, and whether Section 9.10 needs a declared audit boundary the way Decisions 082 and 083 gave commitments and supply one, or whether this is purely a settlement lapse in play. Resolving the board itself is campaign canon and belongs in a session under normal save discipline; it is not an engine change.

**Status:** Open.
