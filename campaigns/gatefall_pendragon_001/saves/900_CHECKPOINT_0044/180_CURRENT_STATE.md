# Current State - Gatefall: Pendragon

**Campaign:** `gatefall_pendragon_001`
**World:** `gatefall`
**Status:** Active

---

## Record

```yaml
id: REC-000081
canonical_record: REC-000081
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000226
  game_date: "2026-08-09 ~14:45 -05:00"
  real_date: "2026-07-30"
role: canonical ledger
scope: campaign
subjects: []
```

---

## Bindings and Versions

- **World:** Gatefall
- **World Rule Profile:** `worlds/gatefall/206_WORLD_RULE_PROFILE.md`, Profile 1.38
- **Engine Rules:** 0.2.0
- **Data Model:** 0.1.5
- **Campaign time:** 2026-08-09, approximately 14:45 CDT (`-05:00`)
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0044/` — Ability Points, Random Boxes, C-Rank Harvest Job.

---

## Protagonist

- **Alexander Pendragon:** Level 11, D-Rank, 1,095/1,100 XP.
- **Health:** 160/160. **Mana:** 86/86. Both recovery remainders are zero; Health recovery is light and Mana recovery is active.
- **Stats:** Strength 36, Agility 36, Vitality 36, Perception 44, Intelligence 43 (all raised this session from the daily's three Ability Points +3 rewards, unspent 10→19→0).
- **Unspent stat points:** 0.
- **Pending rewards:** Status Recovery ×10 only — Ability Points and Daily Random Box both claimed/opened this session.
- **Daily streak:** 2. The sixteenth daily quest was completed on 2026-08-09.
- **Keen Sense:** 18 successful uses, 14 qualifying scenes, 2/3 mastery progress toward Expert.
- **Flash Step:** C-Rank Adept (ascended from D-Rank Master, `EVT-000220`) · Mana 6 · 15 successful uses, 12 qualifying scenes, 0/3 mastery progress toward Expert, 1 rank ascension. Gains the new **Through the barrier** category.
- **Resonance Extraction:** Practiced (ascended from Novice, `EVT-000224`) · 10 successful uses, 5 qualifying scenes, 2/3 mastery progress toward Adept. At Practiced, one additional miner may follow his live calls on a read vein.
- **Stat Passives risen this session (Section 4.4):** Overpower E→D, Pre-empt E→D, Shrug Off E→D, Flux Sight D→C (at the System-Rank-D ceiling). Multitask held D, one point short of C.
- **Cash/checking:** $59,992.00. **Gold:** 3,532. **Pending income:** $9,000 harvest share (Ada Reyes's job, processing 1-2 business days).
- **Notable carried items:** Gate Direction Finder (purchased 2026-08-08, no Gate located yet); Greatarm [D-Rank] and Seer's Lens [D-Rank] (both banked, unequipped, from this session's Daily Random Boxes); **75 C-Rank crystals** held privately, undeclared, from today's harvest job.
- **Current location:** In the neighborhood near his apartment, free for the afternoon.
- **Immediate obligations:** None until meeting Owen this evening to walk the `OBJ-15` apartment shortlist together.
- **Daily Premium:** Rotations beginning 2026-08-06 remain unsettled. No missing draws or rewards have been invented during checkpoint recovery.

---

## Owen and the Relationship

- Alexander and Owen reconciled after Owen returned on the evening of 2026-08-08.
- Owen stayed overnight at Alexander's apartment and made his 08:00 Edgewater shift on time on 2026-08-09.
- During the 2026-08-09 morning run, Alexander proposed that they find a shared apartment. Owen agreed to begin looking.
- The housing objective remains the existing `OBJ-15`, now advanced from an unresolved moving-in question to an active shared-home search. Alexander did a first solo research pass this afternoon (three candidates shortlisted) as a starting point for tonight's discussion, not a decision made without Owen.
- Owen's shift is presumed still in progress; the two have not yet reconnected since he left this morning.

---

## Current Situation

On 2026-08-08 Alexander identified the two unlicensed items traded from Walt Adamik, visited Kesha at the Coalition desk to discuss Ironline and a possible crew, then met Elias Ward at a nearby pawn shop, bought a Gate Direction Finder, and tested it with Keen Sense. He followed its signal but did not locate a Gate. Owen later returned, reconciled with Alexander, and stayed the night. Safe recovery restored Alexander to full Health and Mana before the next morning.

At 06:00 on 2026-08-09 Alexander completed his sixteenth daily regimen. During the ensuing run, he and Owen committed to searching for an apartment together, and Owen made his 08:00 shift on time. Alexander then claimed and allocated all pending Ability Points, opened his three Daily Random Boxes, and worked Ada Reyes's C-Rank harvest job solo across three veins — an exceptionally rich Gate yielding 93 crystals, of which 18 were declared and 75 kept private. The job closed clean around midday with a $9,000 harvest share processing. He spent the early afternoon on lunch and a first apartment-research pass, and is now free until meeting Owen this evening.

---

## Open Threads

- `OBJ-15`: Alexander and Owen need to walk the apartment shortlist together this evening and decide whether to tour anything.
- The Gate Direction Finder has been purchased and used once; it did not locate a Gate. It has not yet been carried into an actual Gate expedition.
- Elias Ward has entered the campaign as a persistent NPC. His shop, origins, and any wider standing are otherwise unestablished.
- Daily Premium rotations from 2026-08-06 onward require an authored settlement before their rewards can enter canon.
- Alexander is five XP short of Level 12; no XP was awarded by the daily quest, the stat allocation, the random boxes, or the harvest job (mining is not a kill/clear XP source).
- 75 undeclared C-Rank crystals sit in the dimensional inventory with no established legal disposal path at this Rank (the System shop buys at 170 g each; the black-market path used for the old E-Rank cores is the only precedent).
- The Flash Step and Resonance Extraction ascensions/mastery advances this session are both real, resolved changes — not open questions.

---

## Promotion Status

Live canon is promoted through `EVT-000226`. Since Checkpoint 0043: Flash Step's standing breakthrough offer was accepted after Profile 1.37 closed its authoring gap (`EVT-000220`: D-Rank Master → C-Rank Adept), Profile 1.38 was adopted (`EVT-000221`, B-Rank rungs for seven starting skills), Alexander claimed and allocated his pending Ability Points and opened his Daily Random Boxes (`EVT-000222`-`EVT-000223`), worked Ada Reyes's C-Rank harvest job (`EVT-000224`, including an owner ruling on exceptional Gate richness caught and reconciled before promotion), spent the early afternoon on lunch and apartment research (`EVT-000225`), and closed the promotion barrier with an explicit-`none` skill-formation batch settlement (`EVT-000226`). No relay promotion remains pending. The Daily Premium backlog is explicitly unresolved. This Current State reflects live, unpromoted-to-checkpoint play; the next `/save` will capture it as Checkpoint 0044.

---

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-09T14:45:00-05:00"
  hidden_pointers_attached: 1
  hidden_last_attached: "2026-08-06T16:45:00-05:00"
  hidden_dry_days: 3
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 16
  concealed_records_available: 14
  tracked_postings: 4
```

**Reading it.** No Hidden pointer attached and no Urgent offer issued this span (`EVT-000220`-`EVT-000225`) — none of the span's scenes (Flash Step's ascension, the Profile 1.38 adoption, stat allocation, random-box openings, or the harvest job) met either surface's criteria. `concealed_records_available` and `tracked_postings` are unchanged from Checkpoint 0043; no new concealed-discovery record or Coalition posting entered the ledgers this session.
