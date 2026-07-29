# Flux Sight, Passive Unification, and the Rank Dominance Repair

**Date:** 2026-07-29
**World:** Gatefall
**Target profile versions:** 1.31, 1.32 and 1.33 (from 1.30) — see §9
**Status:** approved design, pending implementation plan

---

## 1. Why

Profile 1.26 closed the skill-Rank-progression gap correctly, but audit of the shipped
result found two defects and the player found a third design problem in play.

**Defect A — the Rank Dominance Law is false on the scope axis.** §7.2 promises that
"a skill at Novice one Rank higher is stronger than the same skill at Master one Rank
lower." Rank buys **+1 subject** per Rank above native (§7.2 modifier-step row); mastery
buys **+1 subject per level, 1/2/3/4/5** (§7.3, §7.4, and the three earned passives in
§7.2). They add. So an E-Rank Master Keen Sense reaches five subjects while a D-Rank
Novice reaches two — Master one Rank lower wins outright, on every scope skill in the
profile.

The contradiction is also textual: §7.2 asserts "an E-Rank Master covers the whole scene
on one," which flatly disagrees with §7.3's authored 1/2/3/4/5 ladder. Two sections of
one profile state different numbers for the same skill.

This is live. Keen Sense stands at E-Rank Expert — four beneficiaries. A D-Rank Keen
Sense rune would return it at Novice: **two.** A strict downgrade, offered by a System
that §7.5 promises "is not a trap warning but a disclosure."

**Defect B — a mastery rate referenced but never authored.** §7.2 cites "mastery's +0.20"
on the passive-multiplier axis. §7.4's closed-form list authors only three categories:
damage/healing, reduction, and modifier-step/utility. No rule anywhere grants a passive
multiplier anything per mastery level. The character sheet nevertheless renders Dagger
Mastery at Adept as +0.20 (0.10 native + two levels), so play has been running on an
unwritten rule.

**Problem C — stat-milestone passives are outside the skill economy.** Rank-Sight,
Overpower, Pre-empt, Multitask and Shrug Off render `Uses <n> · Progress —` with no Rank
and no stars. That is faithful to the current design (§7.2, §7.4), not a rendering bug —
but it leaves five skills that can never grow, and the set is internally inconsistent
about whether growth exists at all: Rank-Sight and Overpower are written relative to
System Rank and therefore widen on their own, while Pre-empt, Multitask and Shrug Off are
flat for the life of the campaign.

**Problem D — Rank-Sight earns nothing.** Reading whether a Gate is at or below the
Bearer's System Rank is information that rarely changes a decision, and Keen Sense
already does more. Its zero recorded material applications across the whole campaign are
the evidence.

---

## 2. What we are building

Four changes, which interlock:

1. **§7.2** — repair the Rank Dominance Law on the scope axis: Rank grants *one further
   subject and one category* per Rank while mastery grants *subjects*, both adding to the
   count with the law carried by the category, and a **scope ratchet** guarantees ascension
   never reduces reach.
2. **§4.4** — declare **Stat Passives** as a separate skill class with **no mastery track
   at all**, growing on Rank alone via base-Stat thresholds (30/36/44/54/66/80 → E–S). The
   Stat-50 milestones stop being separate skills and become each partner's D rung.
   Rank-Sight is renamed **Flux Sight** and given the owner's tiered read ladder.
3. **§5, §6.1, new §6.1.2, §13.1** — monsters and NPC hunters gain a **Rank Mana pool**
   they actually spend, plus **individual variance** on pools for named and elite entities.
4. **§7.4** — author the missing passive-multiplier mastery rate.

---

## 3. §7.2 — the scope axis repaired

### 3.1 The division of labour

For any skill whose effect is expressed as scope (subjects, allies, concurrent instances)
or as a stated capability:

- **Mastery grants subjects.** The 1/2/3/4/5 ladder, Novice through Master, is unchanged.
  Nothing in live canon is nerfed.
- **Rank grants a subject and a category.** Each Rank above native grants **one further
  affected subject** and one authored *kind* of thing the skill can reach that no mastery
  level ever grants. The first Rank above native additionally saturates duration to
  whole-scene, as §7.2 already provides.
- **Both contribute to the count, and the count is not what carries the law** — the
  category does, because no quantity of mastery ever reaches a kind. Stating this as an
  exclusive division of axes ("Rank buys category, mastery buys count") is the original
  defect and reintroduces it; the formula in §3.2 adds a Rank term to the same number
  mastery contributes to, and §7.2 has said since 1.12 that gains on a shared axis add.
  Owner ruling, 2026-07-29, after the phrasing shipped twice and was caught twice in
  review during the Phase 1 build.

### 3.2 The scope ratchet

Category alone does not rescue ascension: E-Rank Expert Keen Sense (four beneficiaries)
ascending to D-Rank Novice would still drop to two. So scope carries a floor:

```text
scope = max( 1 + ranks_above_native + (mastery_level − 1),  scope_floor )

scope_floor := the skill's scope count immediately before its last ascension
               (0 for a skill that has never ascended)
```

Worked, on Keen Sense:

| State | Formula | Scope |
|---|---|---:|
| E-Rank Expert (today) | 1 + 0 + 3 | 4 |
| E-Rank Master | 1 + 0 + 4 | 5 |
| → Breakthrough, D-Rank Adept | max(1+1+2, 5) | **5** + D category |
| D-Rank Master | max(1+1+4, 5) | **6** |
| → Rune instead, D-Rank Novice | max(1+1+0, 5) | **5** + D category |
| D-Rank Master | max(1+1+4, 5) | **6** |

Both roads never drop and both converge; the earned road arrives in six qualifying scenes
rather than twelve, preserving §7.5's intended ordering.

`scope_floor` is a `tracked_counters` entry written as a `counter_deltas` change on the
ascension Event, like every other counter.

**Inert until scope exists.** A skill whose authored effect carries no scope count at its
current Rank has no scope value and its `scope_floor` is inert. It begins tracking at the
first Rank whose category grant is scope-valued, with the ladder's Novice value of 1 as its
starting point.

**Stat Passives are excluded.** Having no mastery track (§4), they have no count axis, so
neither the ratchet nor `scope_floor` applies to them. The ratchet governs exactly the five
mastery-tracked scope skills in §3.4.

### 3.3 The Law, restated

The current wording compares counts and is false. It becomes:

> **The Rank Dominance Law.** A skill at Novice one Rank higher can do something the same
> skill at Master one Rank lower cannot do at all, and ascension never leaves it covering
> less than it covered immediately before.

On magnitude axes this remains the numeric statement already verified in 1.26 (Rupture
E-Master 26 < D-Novice 50; Stone Skin D-Master 50% < C-Novice 55%). On the scope axis it
is categorical, guaranteed by the category grant, with the ratchet preventing regression.

The false sentence asserting "an E-Rank Master covers the whole scene on one" is deleted.
§7.2's "each Rank step is larger than an entire mastery track on the same axis" is
narrowed to the reduction and passive-multiplier axes, where it is true.

### 3.4 Category ladders

Authored **E → D → C only** — the band reachable at System Rank D. B, A and S rungs are
authored under §20.3 at the checkpoint where they first become reachable. Flux Sight is
the exception: the owner specified all six rungs, so all six are authored now (§4.3).

| Skill | E (native) | D | C |
|---|---|---|---|
| **Keen Sense** | Presence — ambush, hidden foes, anomaly | **Intent and method** — what a detected thing is preparing, and how it is concealed | **Structure through barrier** — layout and extent of an unseen space and the disposition of what occupies it, beyond line of sight |
| **Silent Step** | Unseen approach | **Concealment through action** — stays unseen through one attack or manipulation, not only while moving | **Traceless** — leaves no track, scent, residue, or instrument signature |
| **Exploit Pattern** | One opponent, behavior, weakness, or structure | **Persistence** — a Pattern survives the scene boundary against the same subject while its conditions hold | **Group coordination** — a crew's or pack's coordination is itself readable as one Pattern |
| **Field Command** | Relay to an ally who can perceive and understand him | **Silent relay** — relay without line of sight or speech, to an ally who has previously shared a Pattern with him | **Second-hand relay** — relay a Pattern he did not personally establish, taken from an ally's read |
| **Resonance Extraction** | Mana-crystal vein | **Cores and drops** — reads the harvestable structure of a beast core, improving extraction yield | **Field siting** — reads a whole deposit field's structure, siting productive veins before mining begins |

---

## 4. §4.4 — Stat Passives, a separate skill class

### 4.1 A distinct class, on one axis

The five stat-milestone skills become their own declared class: **Stat Passives**. They are
not ordinary passives with a different bookkeeping exception — they are a different kind of
skill, and the profile names them as such.

**They have no mastery track at all.** No stars, no Novice-through-Master, no qualifying
scenes, no `mastery_progress`, and no participation in §7.4. **Rank is their only growth
axis**, and that Rank is a pure function of the governing **base Stat**:

| Base Stat | 30 | 36 | 44 | 54 | 66 | 80 |
|---|---|---|---|---|---|---|
| **Rank** | **E** | **D** | **C** | **B** | **A** | **S** |

The gap widens by 2 at each step — 6, 8, 10, 12, 14 — so early Ranks arrive quickly and
S-Rank stays a deliberate long-term investment rather than something ordinary level growth
delivers by accident.

**They are outside §7.5 entirely.** No Breakthrough (there is no mastery to spend), no rune
ascension (no instruction teaches them), no `rank_ascensions` counter. A Stat Passive's
Rank rises when its Stat crosses a threshold and at no other time. Equipment never
satisfies a threshold; only the **base** value counts, exactly as §4.4 already requires.

**The ceiling still binds.** A Stat Passive's Rank may not exceed **System Rank + 1**
(§7.5's ceiling, C-Rank at System Rank D). Stat value beyond the ceiling is **held, not
lost**, and applies the instant System Rank rises — the same intact-and-waiting treatment
§7.1 already gives above-ceiling instruction. Without this a Perception dump would hand
the Bearer an S-Rank read while he is a D-Rank hunter, and the ceiling would stop being a
law.

### 4.1.1 Rendering, and why this fixes the original complaint

The player's report was that these skills show no Rank and no progress. Mastery was one
possible answer; the Stat ladder is a better one, because progress becomes a number that
says what to *do* about it:

```text
Flux Sight [D-Rank] · Stat Passive · Reads monsters — Rank, Health, Mana
  Uses 0 · Perception 38 · C-Rank at 44
```

`successful_uses` is retained — it is already tracked and costs nothing. Everything else
in the old counter set disappears for this class.

**The class label disambiguates a real collision.** Today `· Passive ·` means two different
things: Dagger Mastery is a passive *with* a mastery track, Rank-Sight is a passive
*without* one. Rendering the two as `· Passive ·` and `· Stat Passive ·` makes them
visibly different kinds of skill, which they now are.

### 4.1.2 The five

| Stat | Stat Passive | Rank today (base Stat) |
|---|---|---|
| Perception | **Flux Sight** *(renamed from Rank-Sight)* | **D-Rank** (38) |
| Intelligence | Multitask | **D-Rank** (36) |
| Strength | Overpower | E-Rank (33) |
| Agility | Pre-empt | E-Rank (32) |
| Vitality | Shrug Off | E-Rank (32) |

The Stat-50 milestones (Deep Sight, Titan's Grip, Slipstream, Iron Constitution, Analyst)
cease to exist as separate skills; each becomes its partner's **D rung**. That is a
deliberate buff — those effects now arrive at 36 rather than 50 — and it is what makes the
class usable immediately rather than in some later campaign.

**Live consequence at adoption.** Flux Sight reaches **D-Rank** and reads monsters from day
one, and Multitask reaches **D-Rank** for non-daily quest capacity 3. With 5 unspent points
and a pending Ability Points +3, six points into Perception (38 → 44) would take Flux Sight
to **C-Rank** and open reading other hunters — making the next allocation a real decision
rather than routine.

### 4.2 The rename, and why it is a third name

`Rank-Sight` → **`Flux Sight`**. **Both** prior names are retired; the merged skill takes
a name that appears nowhere in the repository.

Reusing `Deep Sight` was considered and rejected. It is textually safe — Alexander never
earned it, and it appears in the archive only as a forward reference
(`170_CHANGELOG.md:282`, checkpoints 0016/0017: "Deep Sight at base Perception 50 would
extend it one Rank above"). But those sentences describe Deep Sight as a **separate
Perception-50 skill**, which is exactly the model this design abolishes. A Runtime reading
the archive would find the old name attached to the wrong structure. Under the new design
the sentence stays coincidentally true, which makes the error *harder* to catch, not
easier.

**Collision audit.** Candidates were grepped repo-wide before selection:

| Candidate | Verdict |
|---|---|
| **Assay** | **Disqualified.** `200_WORLD_BIBLE.md:230` — the Assay is Gatefall's cosmological antagonist, and the System is "the Assay's candidate instrumentation." Catastrophic overload. |
| Appraise | Rejected — 649 hits; the artificer and economy vocabulary. |
| Survey | Rejected — 105 hits, and §9.5's "instrumented survey" is the exact mechanic this skill replaces by capability. |
| Measure | Rejected — 324 hits as ordinary English; unsearchable. |
| **Flux Sight** | **Selected** — zero hits. |

`Flux Sight` is native rather than imported: §9.5 already defines an unconfirmed Gate as
"a remote reading only (mana-flux magnitude read from outside)." The skill reads flux from
*inside*, at close range, on any mana-bearing subject — so the name states the mechanic in
the world's own established vocabulary, while the retained `-Sight` keeps it legible as
the Perception line's skill.

**Deprecation note (required).** The profile records that `Rank-Sight` and `Deep Sight` are
**both retired names for Flux Sight**, and that no separate Perception-50 skill exists.
Without this, archive references to either name are ambiguous to a future Runtime. The
live sheet entry carries `renamed_from: Rank-Sight` provenance; counters carry forward and
the skill's identity and acquisition Event (`EVT-000083`) are unchanged.

### 4.3 Flux Sight's ladder

| Rank | Reads |
|---|---|
| **E** (native) | **Gates.** True Rank of any Gate at or below System Rank, converting unconfirmed to confirmed by capability and bypassing the §9.5 entry roll within that range. *(Unchanged from Rank-Sight.)* |
| **D** | **Monsters.** Rank, current/maximum Health, and current/maximum Mana of any perceived monster. Additionally, Gates **one Rank above** System Rank *(absorbing the retired Deep Sight)*. |
| **C** | **Awakened humans.** The same read on hunters and other awakened. |
| **B** | **Items.** Full effect of an unidentified rune, skill book, core, or item of equipment before use *(absorbing Analyst's appraisal clause)*. |
| **A** | **Abilities.** The skills and abilities a perceived subject holds, and which of them it can currently pay for. |
| **S** | **Complete read.** Everything the System holds on any perceived mana-bearing subject. |

**No scope count and no `scope_floor`.** Flux Sight has no mastery track, so it has no
count axis to widen or protect. Each Rank grants a category and nothing else. How many
subjects he can hold in one read is fiction, not a tracked number.

**§7.2 must state this exemption explicitly — it does not follow from the text as it
stands.** §7.2's utility table grants a "Modifier step or stated capability" skill **one
further affected subject and one authored category grant** per Rank above native. Flux
Sight is a stated-capability skill, so read literally that row hands it a subject count
this section says it does not have, and the same applies to Pre-empt's C rung. Phase 2
therefore adds to §7.2:

> The per-Rank subject grant applies to **mastery-tracked** scope skills only. A **Stat
> Passive** (Section 4.4) has no mastery track and therefore no count axis: each Rank
> above native grants it its authored category and nothing else, and it carries no
> `scope_floor`.

Without this clause the profile states two different rules for the same skill — the exact
defect class Phase 1 corrected three times. It is a consequence of the no-mastery ruling,
not a new decision, but it must be authored rather than inferred.

**§9.5's mechanic is unchanged**, but its sentence citing "Rank-Sight at 30, Deep Sight at
50" is rewritten to cite Flux Sight's E and D rungs — one skill, two Ranks, not two skills.

**Analyst's appraisal clause moves here** (B rung). Multitask's D rung is quest capacity
only. Otherwise Intelligence 50 would hand the Bearer item appraisal that Perception is
designed to earn.

### 4.4 The other four ladders

Authored E → D → C now; B, A and S rungs authored under §20.3 as each becomes reachable.

| Skill | E (native) | D *(was the Stat-50 skill)* | C |
|---|---|---|---|
| **Overpower** | Grapple, pin, or bull-rush a foe up to one Rank above System Rank | Overpower or restrain up to **two** Ranks above; wield oversized or two-handed arms one-handed | **Sustained restraint** — hold a foe through its own escape attempts across exchanges; break ranked inanimate structures up to the skill's Rank |
| **Pre-empt** | Act normally in a surprise exchange on an ambush warning | Disengage or reposition once per exchange without granting a reactive strike | **Shared warning** — allies within his call act normally in the surprise exchange alongside him |
| **Shrug Off** | Ignore the modifier-step penalty of minor wounds | Suppress one serious wound's penalty until scene end; halve onset of Rank-appropriate environmental hazards | **Threshold absorption** — once per scene, a hit that would cross the §6.3 injury threshold inflicts damage only |
| **Multitask** | Non-daily System-quest capacity 2 | Capacity **3** | Capacity **4** |

---

## 5. NPC and monster Mana

### 5.1 The pool

Monsters and NPC hunters gain a Mana pool sized to their fixed Rank, parallel to §6.1's
Rank Health.

| Rank | E | D | C | B | A | S |
|---|---:|---:|---:|---:|---:|---:|
| Rank Health *(existing, §6.1)* | 40 | 100 | 250 | 600 | 1,500 | 4,000 |
| **Rank Mana** *(new)* | **20** | **50** | **125** | **300** | **750** | **2,000** |

**Derivation, stated in the profile.** The Bearer's pools are `Health = 4 × Vitality` and
`Mana = 2 × Intelligence`, so at equal stats his Mana is half his Health. The Rank Mana
table applies that same ratio to the Rank Health table. It is a derivation from Gatefall's
own Bearer arithmetic, not an imported figure, and the profile will say so rather than
presenting it as settled prior art.

*Corroboration, not authority:* Reikon independently sets Official Rank as bands of pool
capacity — E 5–15, D 16–45, C 46–120, B 121–300, A 301–750, S 751+. Its band tops match
this table at B and A exactly and sit within a few points elsewhere. Reikon is a separate
world and cannot bind Gatefall; the correspondence is noted as a sanity check only.

### 5.2 Spending

Costs are a fraction of **that entity's own maximum**, selected by the narrative weight of
the action. Floor to integer, minimum 1, matching §7.4's rounding convention.

| Tier | Cost | E | D | C | B | A | S |
|---|---|---:|---:|---:|---:|---:|---:|
| Minor ability | 10% | 2 | 5 | 12 | 30 | 75 | 200 |
| Signature ability | 25% | 5 | 12 | 31 | 75 | 187 | 500 |
| Boss-tier ability | 50% | 10 | 25 | 62 | 150 | 375 | 1,000 |

**Selecting the tier.** The Runtime picks by the ability's role, not its flavour:

- **Minor** — used freely and repeatedly; the entity's ordinary supernatural repertoire.
- **Signature** — the thing that entity is known for; used once or twice in a fight and
  recognisably its own.
- **Boss-tier** — an encounter-defining move: one that changes the shape of the fight.

Where a call is genuinely ambiguous, the lower tier governs, so drift compounds toward
longer fights rather than shorter ones.

No creature receives an authored ability list or cost sheet. **Rank remains a complete
mechanical description** — the pool and every cost derive from it. This preserves Decision
020's *purpose* (no bestiary, no per-creature stat blocks) while amending its letter, and
the profile records that amendment explicitly.

Ordinary attacks and movement cost nothing, exactly as for the Bearer.

### 5.3 Recovery and exhaustion

**§5.2 applies unchanged** — 10% of pool per hour active, 25% resting. Monsters inside a
live instance are `active`.

**§5.3 applies unchanged.** An ability whose cost exceeds current Mana is unavailable. At
0 Mana the entity takes **−1 modifier step on all actions** until Mana recovers above 25%
of its pool.

This is what makes the D rung worth reaching: `50/100` means two signatures left, and a
drained boss is a beaten boss. Attrition becomes a real strategy that a Flux Sight read
can actually see.

### 5.4 Scene scoping

NPC Mana is tracked only for **entities on screen during a scene**, and discarded at scene
close with other transient combat state — except for recurring named NPCs, whose pools
persist and recover under §5.2 between appearances. Without this the subsystem is
unbounded bookkeeping.

### 5.5 Individual variance (new §6.1.2)

| Entity class | Variance | Storage |
|---|---|---|
| Recurring named NPCs | **Authored** ±10%, written into the NPC's world-file entry | Permanent |
| Elites and bosses | **Rolled once** at first contact | Instance-scoped |
| Common monsters | **None** — flat table | None |

**"Recurring named NPC"** means an NPC carrying an entry in a world file — `220_NOTABLE_FIGURES.md`
or an `institutions/` roster. A one-scene named character is not one; if such a character
later earns a world-file entry, their variance is authored at that point and is not
retroactive.

**The elite/boss roll** is a d100 in banded form, matching §9.5's existing convention
rather than introducing continuous arithmetic:

| d100 | Variance |
|---|---|
| 01–10 | **−10%** |
| 11–30 | **−5%** |
| 31–70 | **none** |
| 71–90 | **+5%** |
| 91–00 | **+10%** |

Applied to the pool and floored to an integer. Applies to **both pools** for entities that
carry it. Two hard constraints:

- **Rolled once, never rerolled.** The factor is fixed at first contact and is that
  entity's for life, like a Gate's true Rank.
- **§6.2's damage baseline always reads the flat table value.** The pool varies; the
  damage arithmetic does not. Otherwise every exchange needs the individual's factor and
  combat stops being reproducible from the tables alone.

Variance is what makes Flux Sight's numeric read *information* rather than convenience:
with a flat table, knowing Rank already yields maximum Health, and the read adds nothing
derivable. With variance, the number cannot be derived at any tier.

A named hunter's authored variance is characterization with mechanical teeth, and a
Bearer who can read another hunter's pool has a capability with social consequences —
material for the campaign's existing exposure thread, noted here as fiction, not as rule.

---

## 6. §7.4 — the missing rate

Add the fourth category to "what each level above Novice improves":

> a **passive multiplier** skill's granted multiplier rises **+0.05** (Dagger Mastery
> +0.10 native → **+0.30 at Master**).

A full track is +0.20, matching §7.2's existing claim. Dagger Mastery's rendered +0.20 at
Adept becomes rule-backed.

---

## 7. §7.5 — the ascension offer

The offer text must now disclose category and scope, not only magnitude:

```text
[SYSTEM] RANK ASCENSION AVAILABLE — Keen Sense · E-Rank Master (whole scene, 5 subjects)
→ D-Rank Adept (whole scene, 5 subjects, + reads intent and concealment method). Ascend?
```

§7.5's "the trade is always a net gain in power" survives intact — the ratchet makes it
true on the scope axis for the first time, rather than aspirational.

---

## 8. Migration

Split across two adoptions per §9; the sheet changes below all belong to **Phase 2 (1.32)**,
except `scope_floor` initialisation, which lands with **Phase 1 (1.31)**. Each adoption is
an Event under the ordinary §7.1 promotion discipline.

**Character sheet (`100_CHARACTER_SHEET.md`):**

- The five Stat Passives gain a **Rank** and the `Stat Passive` class label. Their recorded
  "successful material applications" become `successful_uses`; **no other counter is
  added** — no stars, no `qualifying_scenes_total`, no `mastery_progress`, no
  `rank_ascensions`.
- Rank is **derived, not stored** — it is a pure function of the base Stat under §4.1's
  threshold table, clamped by the §7.5 ceiling. Storing it would create a second source of
  truth that could drift from the Stat it depends on.
- **Adoption Ranks:** Flux Sight **E → D** (Perception 38), Multitask **E → D**
  (Intelligence 36), Overpower / Pre-empt / Shrug Off remain **E** (33 / 32 / 32).
  These are capability grants, recorded on the adoption Event.
- Rank-Sight → Flux Sight with `renamed_from` provenance, plus the §4.2 deprecation note
  retiring both `Rank-Sight` and `Deep Sight` as names.
- Mastery-tracked scope skills (Keen Sense, Silent Step, Exploit Pattern, Field Command,
  Resonance Extraction) gain `scope_floor: 0`. Stat Passives do not.

**Rendering.** `Uses <n> · Progress —` disappears. Ordinary skills render Rank, stars,
uses and mastery progress as today. Stat Passives render Rank, the `Stat Passive` label,
uses, the governing Stat's value, and the next Rank's threshold — per §4.1.1. §7.4's
rendering paragraph gains the Stat Passive form; its statement that these skills have no
mastery track **stays**, now pointing at the named class.

**Validators.** `test_progression_audit_contract.ps1` and the skills-render contract need
updating for: the derived-Rank rule and its threshold arithmetic, the ceiling clamp, the
`Stat Passive` class label, the absence of mastery counters on that class, and
`scope_floor` arithmetic on the five that keep mastery. A validator must reject a stored
Stat Passive Rank that disagrees with its Stat.

**No resolved roll is reopened and no fictional time changes.**

---

## 9. Phasing

Three profile adoptions.

**Phase 1 — Profile 1.31, defect repair.** Self-contained, no new subsystems, no migration
beyond `scope_floor` initialisation. Everything here fixes a rule that is wrong in the
profile today.

- §7.2 — the restated Rank Dominance Law, the category-per-Rank rule, the deletion of the
  false Keen Sense sentence, and the narrowing of the "larger than an entire mastery track"
  claim to the axes where it holds.
- §7.2 — the scope ratchet and `scope_floor` on the five mastery-tracked scope skills.
- §7.3, §7.4 — category ladders for those five; the mastery ladder wording aligned.
- §7.4 — the missing passive-multiplier row (+0.05 per level).
- §7.5 — the ascension offer disclosing category and scope.

Phase 1 alone removes the live hazard that a Keen Sense ascension offer would understate
the result and read as a downgrade.

**Phase 2 — Profile 1.32, NPC and monster Mana.** Self-contained; nothing in it needs the
Stat Passive work.

- §5.1 — the NPC pool, its derivation from the Bearer's `2 × Int` : `4 × Vit` ratio, and
  the Reikon corroboration noted as a sanity check rather than authority.
- §6.1 — the Rank Mana table (20 / 50 / 125 / 300 / 750 / 2,000).
- **New §6.1.2** — individual variance: authored ±10% for recurring named NPCs, a banded
  d100 rolled once for elites and bosses, flat for commons. Pools vary; §6.2's damage
  baseline always reads the flat table value.
- §5.2 and §5.3 — recovery and exhaustion apply to NPCs unchanged.
- §13.1 — the "no Mana curve" clause amended; Decision 020's purpose recorded as intact
  and its letter as amended.
- Cost tiers (minor 10% / signature 25% / boss-tier 50% of that entity's own maximum),
  the tier-selection test, and scene scoping.

**Applies prospectively only.** Every resolved fight stays as resolved; no exchange is
recomputed and no roll reopened. Monsters and NPC hunters begin carrying and spending Mana
from the adoption Event forward. This is the profile's established migration idiom.

**Phase 3 — Profile 1.33, Stat Passives and Flux Sight.**

- §4.4 — the Stat Passive class, the threshold ladder, the ceiling clamp, the five skills.
- §7.2 — the Stat Passive exemption from the per-Rank subject grant (§4.3).
- §7.4 — Stat Passive rendering; the no-mastery-track statement retargeted at the class.
- The Flux Sight rename, its six-rung ladder, and the deprecation note.
- §9.5's rewritten sentence; Analyst's appraisal clause relocated.
- Sheet migration and validator updates.

**Ordering note.** Phase 2 depends on nothing. **Phase 3 depends on Phase 2**: Flux Sight
adopts at **D-Rank** (base Perception 38) and its D rung reads a monster's Rank, Health
**and Mana**, so the Mana subsystem must already exist or the rung the Bearer actually
holds would author a read of a value the world has no rule for — the §20.2 defect. Phase 3
also depends on Phase 1 for the category mechanism its ladders reuse. Nothing in Phase 1 or
Phase 2 depends on Phase 3.

---

## 10. Out of scope

- B, A and S category rungs for the five mastery-tracked scope skills and for the four
  non-Flux-Sight Stat Passives — authored under §20.3 when first reachable. Flux Sight is
  authored to S now, per the owner's specified ladder.
- Per-creature ability lists (explicitly rejected: it is the bestiary Decision 020 exists
  to prevent).
- Any change to the Bearer's own Health, Mana, damage, or stat arithmetic.
- Reikon, Asterra and Verra — Gatefall only.
