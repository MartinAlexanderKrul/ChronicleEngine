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
  source: EVT-000221
  game_date: "2026-08-09 ~07:50 -05:00"
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
- **Campaign time:** 2026-08-09, approximately 07:50 CDT (`-05:00`)
- **Latest restorable checkpoint:** `saves/900_CHECKPOINT_0043/` — Owen reconciliation, shared-home commitment, and sixteenth daily completion.

---

## Protagonist

- **Alexander Pendragon:** Level 11, D-Rank, 1,095/1,100 XP.
- **Health:** 148/148. **Mana:** 74/74. Both recovery remainders are zero; Health recovery is paused after the morning regimen and Mana recovery is active.
- **Unspent stat points:** 10.
- **Pending rewards:** 3 Ability Points, 10 Status Recovery uses, and 3 Daily Random Boxes.
- **Daily streak:** 2. The sixteenth daily quest was completed on 2026-08-09.
- **Keen Sense:** 18 successful uses, 14 qualifying scenes, 2/3 mastery progress toward Expert.
- **Flash Step:** C-Rank Adept (ascended from D-Rank Master, `EVT-000220`) · Mana 6 · 15 successful uses, 12 qualifying scenes, 0/3 mastery progress toward Expert, 1 rank ascension. Gains the new **Through the barrier** category.
- **Cash/checking:** $60,006.50. **Gold:** 1,532.
- **Notable carried item:** Gate Direction Finder, purchased from Elias Ward on 2026-08-08 for $800.
- **Current location:** Outdoors on the Rogers Park/lakefront route, running with Owen toward Alexander's apartment.
- **Immediate obligations:** Owen's Edgewater shift begins at 08:00; Alexander's C-Rank harvest job (`OBJ-24`) begins at 09:00. Neither arrival has been resolved.
- **Daily Premium:** Rotations beginning 2026-08-06 remain unsettled. No missing draws or rewards have been invented during checkpoint recovery.

---

## Owen and the Relationship

- Alexander and Owen reconciled after Owen returned on the evening of 2026-08-08.
- Owen stayed overnight at Alexander's apartment.
- During the 2026-08-09 morning run, Alexander proposed that they find a shared apartment. Owen agreed to begin looking.
- The housing objective remains the existing `OBJ-15`, now advanced from an unresolved moving-in question to an active shared-home search.
- Owen is currently running beside Alexander toward Alexander's apartment; his 08:00 hospital-shift arrival remains unresolved.

---

## Current Situation

On 2026-08-08 Alexander identified the two unlicensed items traded from Walt Adamik, visited Kesha at the Coalition desk to discuss Ironline and a possible crew, then met Elias Ward at a nearby pawn shop, bought a Gate Direction Finder, and tested it with Keen Sense. He followed its signal but did not locate a Gate. Owen later returned, reconciled with Alexander, and stayed the night. Safe recovery restored Alexander to full Health and Mana before the next morning.

At 06:00 on 2026-08-09 Alexander completed his sixteenth daily regimen. During the ensuing run, he and Owen committed to searching for an apartment together. They are now racing back toward Alexander's apartment against Owen's 08:00 shift and Alexander's 09:00 harvest assignment.

---

## Open Threads

- `OBJ-24`: Alexander's 09:00 C-Rank harvest assignment remains active.
- `OBJ-15`: Alexander and Owen must begin the shared-apartment search.
- The Gate Direction Finder has been purchased and used once; it did not locate a Gate. It has not yet been carried into an actual Gate expedition.
- Elias Ward has entered the campaign as a persistent NPC. His shop, origins, and any wider standing are otherwise unestablished.
- Daily Premium rotations from 2026-08-06 onward require an authored settlement before their rewards can enter canon.
- Alexander is five XP short of Level 12, but no XP was awarded for the daily quest.

---

## Promotion Status

Live canon is promoted through `EVT-000221`. The relay material has been reconciled against checkpoint 0042 without replacing the later Profile 1.37 adoption already present in live canon. Since Checkpoint 0043, Flash Step's standing breakthrough offer was accepted after Profile 1.37 closed its authoring gap (`EVT-000220`: D-Rank Master → C-Rank Adept), and Profile 1.38 was then adopted (`EVT-000221`), authoring the B-Rank rung of the same category ladders for all seven affected starting skills before the gap recurs elsewhere. Both are additive/free, consume no fictional time, and reopen nothing. No relay promotion remains pending. The Daily Premium backlog is explicitly unresolved.

---

## Trigger Telemetry (Profile Section 8.4.6)

Owner-facing diagnostics, written at each checkpoint. **Not System state** — outside `system_state`, never rendered in any `/system` panel, invisible to Alexander. **Never a trigger.**

```yaml
trigger_telemetry:
  as_of: "2026-08-09T07:50:00-05:00"
  hidden_pointers_attached: 1
  hidden_last_attached: "2026-08-06T16:45:00-05:00"
  hidden_dry_days: 3
  urgent_offers_issued: 0
  urgent_last_offered: never
  urgent_dry_days: 16
  concealed_records_available: 14
  tracked_postings: 4
```

**Reading it.** No Hidden pointer attached and no Urgent offer issued this span (`EVT-000216`-`EVT-000219`) — none of the day's scenes (item identification, the Kesha and Elias Ward visits, the reconciliation with Owen, or the sixteenth daily) met either surface's criteria. `concealed_records_available` and `tracked_postings` are unchanged from Checkpoint 0042; no new concealed-discovery record or Coalition posting entered the ledgers this session.
