# Reikon — Playtest Backlog

**File:** `worlds/reikon/270_PLAYTEST_BACKLOG.md`
**Class:** Non-canonical world-authoring backlog. Records open gaps observed during Reikon Awakening play. It holds no canonical state, owns no Persistent Object, and carries no identifier — like the Prototype Alpha issue log under `docs/420_PROTOTYPE_ALPHA/`, scoped to one world.
**Status:** Active

Findings are recorded here so they survive the conversation that produced them — the repository is the single source of truth. Each names the observation, its class (engine-general vs Reikon world authoring), the design question it poses, and the constraint any fix must respect. **A finding is not a decision:** nothing here is authored into the profile until an owner ruling adopts it.

---

## PT-001 — Encounter density / pacing has no governor

**Observed (Reikon Awakening, ~Checkpoints 0013–0016).** A long stretch played as almost pure logistics — dispatch desks, permits, waiting on NPCs, filing reports — with thin combat or exploration between (an empty Rift, a few unopposed rolls). Against Warehouse 7's basement, which had real threat, discovery, and consequence, the contrast was stark. **The system resolved everything correctly the whole time; correct is not the same as engaging.**

**Class: engine-general** (Runtime cadence / Simulation Priority). Cross-listed in the roadmap Technical Debt. Nothing in the resident cadence layer (Decision 050; `docs/AI_GAMEPLAY_RESIDENT_CORE.md`) or Simulation Priority (Rules Section 3.12) governs how much low-stakes administrative scene-time may accumulate at full detail before the play compresses it or the world's standing pressures surface.

**Design question.** *Not* "how often must a stakes action be forced" — that framing is a trap (see the constraint). It is: (a) when should the Runtime **compress** low-stakes logistics into montage rather than play it beat-by-beat — it already holds montage authority under Decision 050 — and (b) how does it notice that many exchanges have passed with no uncertain or opposed action, and treat that as a signal to *surface* the world's standing stakes rather than to *invent* new ones?

**Constraint — the fix must not be a drama timer.** "Force a real-stakes encounter every N logistics exchanges" directly violates Consistency Before Drama (Decision 003; Rules 1.3) and "no event exists solely because it would be dramatic" (Rules 1.2). Danger must still arise causally from the established world, never on a pacing clock. The legitimate levers are **compression** (skip the boring; do not dilate it) and **richer standing world stakes** (PT-002, PT-003) that the simulation can surface honestly — not injected threat.

---

## PT-002 — Rift population / threat density is unauthored

**Observed.** A Rift was assigned and cleared with no guardians and no real threat. Nothing in the profile or world docs says a Rift **must** have a population, a difficulty, or any threat proportional to its grade. So an "empty Rift" is indistinguishable from "the simulation did not author one" — the same failure shape as an unpriced good (Profile Section 12.7) or an unauthored ability cost: an unauthored magnitude gets improvised, here as "empty / fine."

**Class: Reikon world authoring** (Decision 062). The engine already supplies the pieces — `band_health` per grade and grade-baselined damage (Profile Section 6.4) mean a threat needs only a grade. What is missing is a rule that a Rift of grade G **is populated** by threats scaled to G by default, so emptiness is a deliberate authored exception rather than a default.

**Design question.** What determines a Rift's threat density — grade alone, or grade + age + anomaly + assignment source? Author a **Rift threat model** in the profile the way Section 6.4 authored monster damage and Section 12 authored the economy: minimal and grade-anchored, no bestiary and no tactical or map subsystem (Decision 020). A Rift names a grade (and optionally age/anomaly); its population follows by formula, as monster damage already does.

**Constraint.** Reuse `band_health` and grade baselining. Add no creature stat-blocks and no encounter/map subsystem.

---

## PT-003 — "Unconfirmed grade" always resolves to "fine"

**Observed.** Daedalus has had a long run of clean, low-risk wins — Ashgate closed with no real danger, the tannery Rift entirely empty. His `+2` favorable modifiers earned their keep mechanically, but the *fiction* has not put him in real danger in a while, because an unconfirmed-grade assignment keeps resolving to "turned out fine."

**Class: mixed.** The interpreter-discipline half is **engine-general** and sits next to PA-006 / Decision 060: an uncertain world-fact — here a Rift's true difficulty — should be arbitrated by canon, ruling, or the die, **not defaulted to the favorable outcome.** Systematically resolving "unconfirmed" to "safe" is the free-favorable-default that decision guards against, one level up. The calibration half is **Reikon world authoring**: tie assignment difficulty to something real (grade confidence, Rift age) so "unconfirmed" carries genuine variance — sometimes worse than hoped.

**Design question.** Should an unconfirmed grade roll its true grade on the die, so an assessment can be wrong in the *dangerous* direction, and should grade-confidence be a stated property of an assignment rather than an implicit "probably fine"? Entangled with PT-002 (a populated-Rift model gives this its teeth) and with Perception's new self-appraisal unlock (Profile 0.9, Section 12.3 — a high-Perception Bearer *reads* the grade himself, removing the uncertainty legitimately rather than defaulting it).

**Constraint.** Variance must come from the die and established world facts, never from an interpreter making a scene harder for drama (Decision 003 again). The point is that "unconfirmed" should be genuinely uncertain, not reliably benign.

---

# How these relate

PT-001 is the symptom — flat pacing. PT-002 and PT-003 are two of its causes: the world carries thin standing stakes, and uncertainty resolves benign. Authoring PT-002 and PT-003 gives PT-001 its honest lever — real stakes for the simulation to surface — without a drama timer. All three await an owner ruling; none is in the profile yet.
