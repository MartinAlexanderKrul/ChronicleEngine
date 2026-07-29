# Current State - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8). This is the live operational ledger - read first at session start.

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.4"
status: active
provenance:
  source: EVT-000121
  game_date: "2026-08-03 16:00 -05:00"
  real_date: "2026-07-26T23:58:12+02:00"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- World: Gatefall (World Version 0.1, World Rule Profile **1.15**)
- Engine: 0.2.0 (Knowledge & Civilization); Data Model 0.1.4
- Start city: Chicago
- Campaign date: **2026-08-03T16:00:00-05:00, evening** — walking to Owen Callahan's apartment in Rogers Park, the Cicero Gate cleared behind them. This is the exact canonical settlement anchor. The next daily quest issues **06:00 on 2026-08-04**. The next crew training session is fixed for **2026-08-09, 18:00**, with a standing order that no crew Gate precedes it.
- Campaign state: session-3 in progress. The Cicero Gate (confirmed E-Rank, archetype Beast Den) is fully cleared and declared; no crew, contract, or filing pressure stands. Since the 2026-08-03 09:40 anchor: the Gate's entry and corridor clear (`EVT-000119`), the alpha pair's defeat and the Gate's clear (`EVT-000120`), and the exit declaration that disclosed pocket gates to Owen (`EVT-000121`).
- World Rule Profile: Gatefall **1.15**, frozen on repository date 2026-07-26 — the high-Rank sponsor exception (Section 9.4) that made today's two-person clear postable. Nothing recomputed this session.
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0028/` — Profile **1.15** / Data Model **0.1.4** capture at the 2026-08-03 16:00 anchor. **No migration is required on restore.** `900_CHECKPOINT_0027` (2026-08-03 09:40, three hours before the Cicero entry) remains the preceding immutable historical capture, also Profile 1.15 with no migration required.

## Protagonist

- Alexander Pendragon (`ENT-000125`) - 25, mathematician/physicist, krav maga instructor, licensed E-Rank hunter (~17 days).
- Status: Active, **Bearer** — **Level 8 / System Rank: E-Rank**, XP **570/800**, Health **116/116**, Mana **21/60**, **0 unspent stat points**; base Stats **Strength 31 / Agility 30 / Vitality 25 / Perception 31 / Intelligence 30**; equipped-effective **41 / 55 / 29 / 31 / 30**. Pending rewards, unchanged this session: **Ability Points +3 ×1, Status Recovery ×5, Daily Random Box ×1**, all unclaimed. **Ten skills**: Rupture (Adept), Flash Step (Practiced), Stone Skin (Novice), Keen Sense (Novice), Dagger Mastery (Novice, passive), the four no-mastery stat-milestone passives (Rank-Sight, Overpower, Pre-empt, Multitask), and the newly learned **Bulwark [E-Rank]** (Novice, Mana 10, 50% physical damage reduction for one exchange, not yet used). Non-daily System quests **0/2 active**, no pending offer. Gold **12**; daily streak **10**. Full detail: `100_CHARACTER_SHEET.md` `system_state`.
- Location: **Rogers Park, Chicago, evening of 2026-08-03** — walking to Owen's apartment with him, the Cicero Gate cleared and declared behind them.
- Condition: Health **116/116**, Mana **21/60**, **no injury**. Never hit across the entire Gate clear — every point of Mana spent was on offense (Keen Sense, three Rupture casts, Flash Step), not recovery. Both recovery modes `resting`, zero fractional carry, at the exact `2026-08-03T16:00:00-05:00` anchor.
- Equipment: **Unchanged from Checkpoint 0027** except the boss-dropped Quickknife, which was given outright to Owen rather than equipped. Full nine-slot loadout otherwise as before: main hand (Ghost Quickknife [B-Rank]), off hand (C-Rank Quickknife), head (Horizon Gale Coif [D-Rank]), torso (Adaptive Bastion Torso [E-Rank]), hands (Horizon Gale Gauntlets [C-Rank]), legs (Shin Guards [E-Rank]), feet (Titan Boots [E-Rank]), both accessory slots (Ascendant Hunter's Bands, Strength +9 total). Combined physical reduction ≈23%, unchanged. Also held: 4 lesser healing potions, 2 antidotes, 1 unused Runic Key [E-Rank], **9 E-Rank cores** (down from 11 — two declared as part of the Cicero Gate's report), 0 E-Rank crystals (all sold or declared). **$9,831 cash**, unchanged since this morning; **≈$1,762.50 newly pending** from the Cicero Gate's declared split, alongside the still-processing ≈$9,000 Sable & Kern share. Full detail: `100_CHARACTER_SHEET.md` and `120_INVENTORY_AND_OWNERSHIP.md`.
- Daily Premium: unchanged this session — the **Verdant** cycle (rotated 06:00 2026-08-03) stands at 1/6 purchased (the Runic Key), 5/6 live until the 2026-08-04 06:00 rotation.
- Daily quest: the **tenth** was completed this morning (streak 10); no quest is currently active. Next issues 2026-08-04 06:00.
- Social position: unchanged in structure — Windy City Hunters Coalition freelancer (`REL-000062`); fifth-slot membership on Priya Okafor's crew with Alexander holding tactical/strategic field command (`REL-000065`); harvest-hire standings with the corporate-adjacent contractor and Sable & Kern (`REL-000064`, `REL-000067`). **A new sponsor-of-record precedent stands**: this is the first job Alexander has taken that exists because of Owen's licence rather than his own. Personal relationship with Owen (`ENT-000139`, `REL-000066`) deepened by their first Gate fought together — see below.
- Standing liability: $30,000 tuition debt, $400/month minimum (see `100_CHARACTER_SHEET.md`, `120_INVENTORY_AND_OWNERSHIP.md`).
- Known disposition risk: coldly analytical and reliably correct in his reads, but hot-headed — trusts that read and moves fast once he's judged someone else to be in the wrong.
- **Exposure note — the largest disclosure of the campaign.** Declaring the Cicero Gate's haul surfaced Alexander's private core stash and, with it, the truth: a private, solo-only form of Gate ("a pocket gate") that only he can open, run entirely off the books. Owen took it steadily, connected it to every previously unexplained thing he's filed without comment, and — for the first time — drew a boundary of his own inside the secret rather than simply declining to press it: he refused to lie to a licensed board blind, and once informed, insisted on a plausible declared number rather than the whole truth Alexander offered to launder wholesale. **Owen is now, by his own choice, complicit in concealing part of it — a materially different position than choosing not to ask.** The System itself remains unnamed and unknown to Owen and to everyone else (Section 14.4).

## Current Situation

Session 3 continues directly from Checkpoint 0027's anchor. At 13:00, Alexander and Owen entered the confirmed E-Rank Cicero substation Gate together, Owen as sponsor of record. The interior resolved **Beast Den** (two boss-Rank alphas instead of one) with a population of 8 common/1 elite/2 boss-Rank.

**The corridor.** A tactical-read pattern held for the length of the passage: where Alexander found a beast alone, Owen took it — his first solo kill, then two more, one costing him a graze his new gauntlet absorbed; where beasts clustered, Alexander cleared most of them himself, always leaving one for Owen. The elite, denned separately and unaware, fell to an unseen dagger-and-Rupture combo (`EVT-000119`).

**The den.** A shared tactical read identified real weak points on both alphas before they closed. Fighting back to back exactly as planned, Alexander and Owen wounded and finished the leaner (Predator/Edge) alpha together, then closed on the plated (Carapaced/Impact) alpha with a Flash Step opening and a simultaneous joint strike. **The Gate cleared.** Boss drops yielded the skill **Bulwark** for Alexander and a Boss-Imprinted Quickknife, given outright to Owen as his first weapon (`EVT-000120`).

**The declaration.** Tallying the loot surfaced Alexander's private core stash for the first time in front of Owen. Asked to help launder all eleven cores into the report, Owen refused blind and demanded the truth; told about pocket gates, he absorbed it without flinching, then set his own condition on helping — a plausible number, not the whole eleven. They declared 5 cores against the Gate's genuine 3, and Owen corrected the report himself, live, on the phone with Kesha Morrison, without incident. Declared pool $3,525, split 50/50 (`EVT-000121`).

The day closed with a kiss on Michigan Avenue and the walk to Owen's apartment for the evening.

**Open threads, none urgent:** nine E-Rank cores still with no legal sale path; five live Premium offers expiring 2026-08-04 06:00 (none affordable at 12 gold); the ≈$9,000 Sable & Kern share and the new ≈$1,762.50 Cicero split both still processing; crew training fixed for 2026-08-09 with a standing no-Gate order until then; OBJ-12 (the crew question) still undecided, pending Owen watching this crew run a real job; Priya's untested question about whether the spend-call rule survives either of them bleeding; Renata's deferred *who are you, exactly?*; the sensor rig still owed for Owen's 14 September birthday; and possible B-Rank mining work through Dale, unanswered.

## Current Scene Anchor

Session 3, evening of 2026-08-03, walking to Owen's Rogers Park apartment with him. Nothing is owed to the System, the crew, or anyone else until the next daily issues at 06:00 tomorrow. The evening is open.

## Promotion Status

Session 3 in progress — **checkpoint `900_CHECKPOINT_0028` written** at the 2026-08-03 16:00 anchor, carrying `EVT-000119` (Gate entry and corridor clear), `EVT-000120` (the alpha pair's defeat and the Gate's clear), and `EVT-000121` (exit, the core declaration, and the pocket-gate disclosure to Owen).

Checkpoint 0028 is the latest immutable restore point at **Profile 1.15 / Data Model 0.1.4** and requires no migration on restore. Registry is advanced through `EVT-000121`.

**Proactive trigger audit (Profile Sections 8.4 and 14.3).** Run at every scene opening and after each resolved exchange this session. No Urgent condition arose and no Hidden pointer condition arose; non-daily slots remain **0/2** with no pending offer, and nothing was invented to make a trigger fire.

**One exclusive writer during this session** — no concurrency conflicts this checkpoint.
