# Current State - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8). This is the live operational ledger - read first at session start.

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000083
  event_time: "2026-07-30"
  record_time: "2026-07-30T09:00:00Z"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile 1.6)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.2
- Start city: Chicago
- Campaign date: **2026-07-30, morning** (Owen Callahan's apartment, Rogers Park, Chicago)
- Campaign state: session-2 in progress; Ashfield Gate cleared and closed out (report filed by Priya this morning, loot split agreed, tactical command ceded to Alexander), no immediate pressure
- World Rule Profile: Gatefall **1.6**, frozen 2026-07-29 (Rules Section 14.6, Decision 074) — migrated 1.1→1.2 (`EVT-000072`), 1.2→1.3 (`EVT-000073`), 1.3→1.4 (`EVT-000074`), 1.4→1.5 (`EVT-000078`), and 1.5→1.6 (`EVT-000082`). No further migration this checkpoint.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0014/` — captured under frozen Profile **1.6**, no migration required on restore. Captured the morning of 2026-07-30 at Owen's apartment, an automatic context-preservation checkpoint. Earlier checkpoints remain immutable: `0013` sits in Alexander's apartment mid-afternoon on 2026-07-29, before the crew meeting (requires the 1.5→1.6 migration on restore); `0012` sits at the bar immediately after the Ashfield clear; `0011` predates the 1.5 migration and the boss fight; `0010` is a 1.1 capture needing the full migration chain.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-rank hunter (~17 days).
- Status: Active, **Bearer** (System attached 2026-07-24, `EVT-000059`) — **Level 7 / System tier E**, XP **40/700**, Health **80/80**, Mana **36/40**, **0 unspent stat points (fully allocated, `EVT-000083`)**; base Stats **Strength 29 / Agility 23 / Vitality 20 / Perception 30 / Intelligence 20**; equipped-effective Stats **Strength 33 / Agility 23 / Vitality 20 / Perception 30 / Intelligence 20** — only the Hunter's Band accessory is currently equipped. Pending daily rewards: Ability Points +3, one Status Recovery, and **three unopened Daily Random Boxes** — a fresh bundle from the fifth daily's full completion, joined by the one box remaining from this session's own claim. One skill known: **Stone Skin [D] ★☆☆☆☆ Novice**, Mana 4, 30% physical damage reduction while sustained. Gold 20,255 (undeclared, private); consecutive daily streak **5**. Full detail: `100_CHARACTER_SHEET.md` `system_state`. Perceptible to him alone.
- Location: Owen Callahan's apartment, Rogers Park, Chicago, morning of 2026-07-30.
- Condition: Health and Mana within normal range for the current equipped loadout. **No injury.** Rested, unhurried — the first morning either of them has spent together.
- Equipment: **Currently equipped: only the Ascendant Hunter's Band [E] (accessory, Strength +4).** Main hand (C Quickknife), off hand (E Quickknife), torso (Adaptive Bastion Torso [E], newly purchased this session), hands (Reinforced Gauntlets [E]), and legs (Shin Guards [E]) are all **stored**, unequipped since he dressed civilian for the 2026-07-29 evening meeting and never re-geared. Physical reduction is **0%** with nothing currently worn there. The Reinforced Leather Jacket [E] this session's torso piece replaced was sold back to the System shop. The E Bastion armored greave remains stored, unequipped, ownership-undecided; an E Channeling Focus (Intelligence +2, focus power 2) sits banked and unequipped. **Two new resonance chisels** (standard and "Longhaul," both undamaged) replace the broken original, bought at Vanguard Trade & Gear (`ENT-000140`). Also held: 9 lesser healing potions, 2 antidotes, E instant-dungeon key; **$34,381 cash** (all three prior pending payouts landed this session), a further ≈$9,450 pending Priya's filing; active BGM E-rank license. **Crew loot split and agreed:** the crystal/core pool ($52,500) is divided; Alexander's ≈$9,450 share is pending Priya's filing. The Longshot [C] will sell and split once appraised. Full detail: `100_CHARACTER_SHEET.md` and `120_INVENTORY_AND_OWNERSHIP.md`.
- Daily Premium: **the 2026-07-29 cycle was rolled and viewed this session.** Purchased: the Ascendant Hunter's Band [E] and the Premium Rune (Stone Skin). Still available until the 2026-07-30 06:00 rotation: the Horizon Reacharm [D] (900 g), the Clarity Phial (750 g), and the Premium Runic Key [E] (1,000 g).
- Daily quest: the fifth (issued 06:00 on 2026-07-29) was **completed in full** this session — push-ups, sit-ups, squats, and the 10 km run all at maximum. Streak advanced **4 → 5**. No quest is currently active; the next issues 2026-07-30 06:00.
- Social position: Stable background; freelancer registered with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`); Red Line crew contract with Tanya Voss (`REL-000063`) closed; harvest-hire standing with a corporate-adjacent contractor (`REL-000064`); fifth-slot membership on striker Priya Okafor's crew (`ENT-000136`, `REL-000065`), **contract complete, split agreed, and filing in progress this morning — and Alexander now holds future tactical/strategic field command by Priya's own explicit cession**, she keeping the contractual lead and 10% share. A recurring crew training schedule is agreed (first session in 2–3 days). A personal relationship with Owen (`ENT-000139`, `REL-000066`) **deepened into its first night together** this session — the crew's C-rank mender, the man who cleared his injury, and the only person alive who knows there is something about Alexander to know.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.
- **Exposure note — partially answered, and now personal, and now lived-in.** Owen (`ENT-000139`) has witnessed four unexplained things: the C-grade dagger appearing with no draw (twice), a killing hit walked off with no mender's touch, a potion produced from nowhere, and a genuinely broken rib in a body that read as unharmed. He has stated he is **not confused** and will not later invent an explanation. Alexander answered him in part (`EVT-000081`): that something happened to him and he does not understand it either — the closest he has come to naming the System to anyone. Owen refused to press and **released Alexander from his promise to explain**. This session (`EVT-000083`), in bed, Owen said outright that not knowing what Alexander is doesn't change what he wants. The System itself remains unknown to him and to everyone (Section 14.4). The thread now lives inside a relationship both of them have named plainly, if not yet with a single word for what it is.

## Current Situation

Alexander's rest day (2026-07-26 evening into 2026-07-27) closed with a confirmed crew slot on striker Priya Okafor's five-hunter crew, arranged through Kesha Morrison, for a distinct posted Gate contract (assessed unconfirmed low-confidence D). On 2026-07-28 he completed a fourth daily quest en route to staging (streak 4/7; the grant's accept/defer prompt went unanswered when the scene moved on — left pending), met the rest of the crew for the first time (Julian, `ENT-000137`, graded-shotgun striker; Renata, `ENT-000138`, sensor; Owen, `ENT-000139`, mender), had his gear approved by Priya, and entered the Gate at 9 AM in the agreed rear support position beside Owen.

The Gate resolved **true grade C** on entry — one grade above the posting, a genuine mismatch for this waiver-tier crew — with archetype **Ashfield** (lingering burn-hazard air) and a population of 12 common C beasts, 1 C elite, and 1 C boss. The front line held the first wave cleanly (4 kills); a fifth beast broke through and Alexander fought it solo across five exchanges, taking a full grade-honest hit that dropped him to 0 Health — the first genuinely lethal moment of his career — before claiming one of his two then-pending daily-quest grants to recover instantly and finish the kill. The underdog-bonus kill XP (240) crossed him to **Level 3**; the resulting grant was deferred, joining the unanswered one from this morning (two grants banked at the time).

The Gate's elite closed next. Alexander read its attack pattern (a telegraphed lunge every third stride) and called it out; Priya's intercept attempt on that read **fumbled catastrophically**, leaving her wounded and the elite breaking through toward the rear. Alexander met it dual-wielding both daggers — old E-grade and the newly summoned C-grade — using his own calculated timing, landing a real counter-hit that stopped it short of both himself and Owen.

Before resuming the fight, Alexander allocated his 10 migration-era unspent stat points and opened one of four pending Daily Random Boxes, winning an unequipped E-grade Channeling Focus (`EVT-000075`). He then killed the elite across three further exchanges plus an automatic finishing blow, crossing to **Level 4** (`EVT-000076`). In the aftermath (`EVT-000077`) he confronted the crew over the earlier near-death; Owen apologized, Priya took formal responsibility for the formation gap, crew ranks were established (Priya D, Julian/Renata E, Owen **C**), and his rapport with Owen deepened markedly.

**The boss (`EVT-000079`, `EVT-000080`).** Alexander proposed finishing the Gate, took each crew member's objection seriously, and built the plan they adopted: unseen approach on Renata's exclusive read, Julian holding fire until the go, he and Priya rotating the boss's attention between them, Owen held back. He drew a healing potion from his dimensional inventory for Priya — his first banked item produced in front of witnesses. The approach and ambush went perfectly; a weak-point critical pulled the boss entirely off Priya. Then **two natural critical fumbles**: the first put him on one knee inside its reach for a 57-damage hit (**Health 68→12**) and a **Severe rib injury**, survived by claiming his pending Status Recovery; the second, on a body that could not plant, carried him into the open. He evaded, and **Owen cleared the injury outright** — the first exercise of the mender rule authored minutes earlier as Profile 1.5.

Whole again, Alexander read the boss's dead front limb as making every left turn slow and wide, ordered Julian to deny the ground beside Owen, and levered the shoulder seam apart when the boss turned onto that limb. It collapsed, tried to crush him with its own falling mass, and he went forward through the gap instead — pinning its last good limb beneath itself. The finishing blow needed no roll. **Boss killed; Gate cleared.** 1,280 XP crossed three thresholds at once: **Level 7, all base Stats +3, +15 unspent points, pools restored.**

Seven common beasts remained alive at the north wall, held absolutely by the standing barrier (Section 9.8), and the crew chose to leave them. Alexander extracted the boss core clean, recovered his E Quickknife, and led a harvest near the aperture that gave out fast — pushing the spent seam cost him two more fumbles, a shattered crystal, and his **resonance chisel**. Total haul: 16 C-crystals, 2 C-cores, and a **Longshot [C]** boss drop that Julian tried to hand straight to Priya and Alexander coldly redirected into the split.

**The report is deliberately unfiled.** Outside the collapsed Gate, Priya raised the problem: posted E–D, truly C, her signature on the line. Alexander advised against filing while everyone was spent, clarifying under pushback that he meant delay rather than falsification. Priya refused falsification outright but accepted delay and intends to file a **true** account of a mis-posted Gate — BGM's failure, not the crew's. Renata supplied the binding constraint: the C-grade loot declares the grade to any appraiser, so they can lie on the form or sell the material, never both. Owen noted he alone carries no legal risk and was not comfortable being quiet about it. **Nobody files, nobody sells, nothing splits until 2026-07-29 18:00.**

The System is active day-to-day. All four completed daily quests are normalized to the Profile 1.4 regimen: the missing squat sets were performed off-screen during the same recorded exercise periods. Dailies award no XP.

**2026-07-29 afternoon to 2026-07-30 morning (`EVT-000083`).** From the apartment interval, Alexander claimed his pending Ability Points and one Daily Random Box, allocated all 18 unspent stat points, and rolled the unviewed Daily Premium cycle for real — buying the Ascendant Hunter's Band and a Premium Rune teaching Stone Skin, then the Adaptive Bastion Torso, selling the superseded jacket. He unequipped down to just the Band to dress civilian, routed his outstanding daily-quest run through a new outfitter (Vanguard Trade & Gear) for a replacement chisel, and completed the fifth daily quest in full (streak 4→5). At the Coalition, a payout discrepancy with Kesha Morrison resolved into all three prior pending payments landing at once (cash to $34,381). At the case table, he briefed Julian and Renata as agreed, and — after a negotiation over Priya's leader's share — she ceded him future tactical/strategic field command outright, keeping the contractual lead. The Ashfield loot split under standard terms. A crew dinner surfaced real backgrounds for everyone at the table and set a recurring training schedule. That night, Alexander and Owen spent their first night together, both naming the relationship plainly for the first time.

## Current Scene Anchor

Session 2 in progress, **quiet, no pressure.** It's the morning of **2026-07-30**, and Alexander is at Owen's apartment in Rogers Park — the two of them having just woken up together for the first time. Nothing is scheduled, filed, or owed today: the Ashfield report is in Priya's hands, the loot split is agreed, and the next crew training session is only loosely set for "in 2–3 days." No daily quest is currently active (the next issues at 06:00). His gear — weapons, torso, gauntlets, shin guards — remains stored from the night before; only the Hunter's Band is on him.

Open threads, none urgent: his ≈$9,450 Ashfield split share and the Longshot [C]'s eventual sale, still pending; three unopened Daily Random Boxes, one Status Recovery, and Ability Points +3 sit unclaimed; the Horizon Reacharm, Clarity Phial, and Runic Key remain on the Daily Premium tab until 06:00; and the deepening exposure thread with Owen, now personal rather than merely professional.

## Promotion Status

Session 2 in progress — **checkpoint `900_CHECKPOINT_0014` written** at Owen's apartment, an automatic context-preservation checkpoint, capturing all eight ledgers with a save manifest.

Promoted checkpoint 0014 (`EVT-000083`) is the latest immutable restore point, captured under frozen Profile 1.6 — no migration required on restore. Registry is advanced through `EVT-000083` and `ENT-000140`.
