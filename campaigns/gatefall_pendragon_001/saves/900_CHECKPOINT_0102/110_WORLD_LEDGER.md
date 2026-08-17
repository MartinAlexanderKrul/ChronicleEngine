# World Ledger - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8) holding the protagonist's Knowledge States and the campaign's view of world state.

This ledger records what is visible and accessible to the campaign. It references authoritative Gatefall records; it does not duplicate objective world canon. Objective reality is owned by the world-layer records cited below and is never restated here as a campaign fact.

---

## Record

```yaml
id: REC-000075
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000582
  game_date: "2026-08-21T13:01:00-05:00"
  real_date: "2026-08-15"
role: canonical ledger
scope: campaign
# also updated by EVT-000287, EVT-000345, EVT-000352, EVT-000353
# Since Checkpoint 0101: EVT-000582 (the 2026-08-21 tick; a C-Rank Gate sited on the
#   Bearer's route and cleared unreported; the spot-audit advisory lands on OBJ-30)
# Since Checkpoint 0100: EVT-000577 (a world fact established at a bench: a made S-Rank
#   housing whose binding is maintenance, and an unlicensed hand that produced S-Rank work)
# Since Checkpoint 0099: EVT-000570 (a fourth instant key turned inside a private flat;
#   no world state moves, and the negative assertion is the point)
# Since Checkpoint 0098: EVT-000565 (Walt Adamik's operation four days into its seven-day
#   build; crystals refused as premature stock, 13 gear holdings taken as partner
#   contribution; the warehouse-district supply source stays a maybe until Monday)
# Since Checkpoint 0096: EVT-000552 (the world's first tick; GB-05, GB-06 posted; Reyna Castillo joins)
# Since Checkpoint 0095: EVT-000541 (fenced warehouse: anomaly-sensing layer, live Gate signature)
# Since Checkpoint 0072: EVT-000413 (GB-04 break, tracked board to zero)
subjects:
  - REL-000062
  - ENT-000161
  - ENT-000162
  - ENT-000163
  - ENT-000164
  - ENT-000165
  - ENT-000166
  - ENT-000167
  - REL-000084
  - REL-000085
  - REL-000086
  - ENT-000171
  - ENT-000190
```

```yaml
id: REL-000062
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000056
  game_date: "2026-07-22"
  real_date: "2026-07-23T11:22:33+02:00"
endpoints:
  - ENT-000125
  - ENT-000102
type: membership
qualities: "Unaffiliated freelance hunter registered with the Windy City Hunters Coalition's freelancer desk — not a guild employee, not under contract to any crew. The Coalition is the default hook for an unaffiliated Chicago hunter (Profile Campaign Creation; `worlds/gatefall/institutions/windy-city-coalition/250_INSTITUTION_LEDGER.md`)."
state: "Active freelance registration, about one week old, coincident with his hunter license. No crew has taken him onto a posted contract yet."
```

---

## Protagonist-Accessible World Facts

References into authoritative Gatefall records. These are pointers, not copies; the cited record remains the sole owner of each fact.

| Fact visible to Alexander | Authoritative record | Access |
|---|---|---|
| Chicago and the Lakefront/Red Line Gate corridors | `ENT-000087`, `ENT-000090` (`worlds/gatefall/210_PLACES.md`) | Present; direct |
| BGM Region V — federal regulator, licensing and ranking, contract auctions | `ENT-000099` (`worlds/gatefall/institutions/bgm-region-v/`) | Public; his own licensing authority |
| The Windy City Hunters Coalition — freelancer co-op | `ENT-000102`, `REL-000062` | Member; direct |
| Horizon Guild and Ironline Guild exist and do not want him | `ENT-000100`, `ENT-000101` | Public; common trade knowledge |
| Gate ranking (E-S), posting floors, and the five-hunter posting floor on E-Rank/D-Rank contracts | Profile Section 9.2, 9.4 | Common licensed-hunter knowledge |
| A Red Line Corridor contract is posted, assessed unconfirmed D, detected 2026-07-18 | `EVT-000051` (`worlds/gatefall/260_SEED_EVENTS.md`) | Public board listing — visible to any hunter who checks the boards, undersubscribed at Red Line rates |
| The System does not publicly exist; no one on Earth believes in it | `worlds/gatefall/200_WORLD_BIBLE.md` | Common knowledge (universal — there is nothing to know yet) |
| Coalition contract payouts process in **2–3 business days** from filing; past that a payout is genuinely late and the desk will trace it | `ENT-000102` `canonical_state.payout_processing` (`worlds/gatefall/institutions/windy-city-coalition/`) | Direct — quoted to him at the desk; established `EVT-000083` |
| The Coalition maintains a **trading field** attached to its premises, usable by member crews for drill and coordination work rather than trade alone | `ENT-000102` (`worlds/gatefall/institutions/windy-city-coalition/`) | Member access; booked for the crew's first training session, established `EVT-000111` |
| A licensed **sensor rig** is a trained instrument, not a gadget: it reads a Gate's interior archetype and anomaly signature once inside, never its true Rank before entry, and it runs on the same resonance principle as a mender's field kit tuned to terrain rather than flesh. A replacement resonance crystal runs ≈$400 plus ≈$150 labour; a complete licensed unit runs into the low thousands | Owen Callahan (`ENT-000139`), a C-Rank mender diagnosing Renata's (`ENT-000138`) damaged rig | Direct — explained to him in detail, established `EVT-000108` |

| **Commissioning rules for ranked gear**: the commissioner supplies the core and the core's Rank is the hard **ceiling** of the resulting piece; Rank is **not additive**, so combining cores buys volume (a fuller set, a larger piece) and never a higher Rank; anything genuinely out of the ordinary is a **quality** question — a boss-marked core, a named item, non-generic material — and draws review beyond the shop near B-Rank and above | Profile Section 12.8; the Cutting Edge proprietor (`ENT-000149`) | Direct — explained to him in full, established `EVT-000156` |
| **Beast materials in gear are ordinary, not exotic**: hide, fang, and scale are stock commissioning ingredients any competent artificer already uses. Whether they can be fused *past* the ordinary stat budget, and whether separate mana items can be **merged into one** with combined properties, is **unknown to him and unestablished** — both questions carried into the pending artificer consultation | Profile Section 12.8; the pawnbroker (`ENT-000147`) | Partial — the ordinary half confirmed, the two exotic questions explicitly open, `EVT-000157` |
| **How BGM actually catches undeclared goods**: no tracer on a crystal and no core detector. The flag is **paperwork** — the licensed market runs on declared Gate, contractor, split sheet, and appraiser sign-off, and an item presented for licensed resale with no trail behind it is the anomaly. Spot audits fire when **declared volume looks wrong against recorded clears**; the other half is **informants** | The pawnbroker (`ENT-000147`) | Direct, purchased — secondhand trade knowledge from an experienced grey-market dealer, not verified against BGM, `EVT-000157` |
| **Warehouse-district trust map**: Cutting Edge (`ENT-000132`) is straight and skilled but rigidly licensed and always logs provenance; **Ferro's Reclamation** (`ENT-000150`, two blocks north, unrelated to Denise Ferro) **talks** — its owner trades favors with Coalition compliance staff both directions; the rest of the district is neutral and keeps to itself | The pawnbroker (`ENT-000147`) | Direct, purchased, `EVT-000157` |
| **Cicero's Quiet's real provenance**: recovered by an **unlicensed** scavenger working an active federal quarantine — illegal outright — and bought by the pawnbroker through a middleman he has never traced. Per that middleman, the scavenger **stopped taking calls** not long after the sale: no trouble traced, no body, nothing official. 'Came out colder than it went in' is the middleman's own phrase | The pawnbroker (`ENT-000147`), relaying a middleman | **Character Knowledge only** — an unverified secondhand account. It establishes nothing as Objective Reality about the artifact or the scavenger's fate (Decision 060), `EVT-000157` |
| **The Cicero Scar's current condition**: still federally cordoned and unchanged in years; edges reclaimed enough for BGM-escorted survey and harvest work, core blocks never reverted and cleared by no one since no boss remains. Unofficially: perimeter sensors log unexplained periodic mana spikes that reach no published report, and survey teams report **beast remains bearing old healed wounds** that should not exist on a creature with no history | `ENT-000091` (`worlds/gatefall/210_PLACES.md`) — the authoritative record, which already carries both details | Direct — asked and answered at the pawn shop, `EVT-000157`. The world record governs; this row records only that Alexander now holds it |

Not visible to Alexander at start: BGM Region V's internal Ranking Bench field notes flagging the Red Line Gate's mana-pressure curve as climbing faster than a true D (`EVT-000051`'s non-public detail), and the identities or agendas of any of Gatefall's notable figures beyond ordinary public reputation.

**Update, 2026-07-24 (`EVT-000059`):** The System attached to Alexander mid-clear, inside the Red Line Corridor Gate — see `100_CHARACTER_SHEET.md`'s `system_state`. This changes nothing about what is *publicly* known (the row below still holds: the System does not publicly exist, and nothing about Earth's or Gatefall's common knowledge has changed), but it is no longer true that Alexander has nothing System-side to know — he is now the world's first and only Bearer, a fact perceptible to him alone (Profile Section 14.4) and unknown to his crew, the Coalition, or anyone else.

---

## The Tracked Board (Profile Section 9.10)

Gate postings that have entered the fiction and now persist with a running clock. Tracked state, not Persistent Objects: each carries a stable local key and mints no identifier until it becomes campaign-durable (Section 9.10), at which point it is promoted to an Event.

Every `breaks` value below is **derived**, never authored — detection date plus the Section 9.3 days for the assessed Rank (E 7, D 6, C 5, B 4), matching the arithmetic already used for `EVT-000051` (detected 2026-07-18, unconfirmed D, broke at midnight 2026-07-24). An unconfirmed assessment derives from the card; a re-ranking re-derives.

**Board as of the 2026-08-05 12:15 anchor.** These are **clearance** contracts, which is consistent with `EVT-000155`: Kesha Morrison had no *mining or harvest* work at C-Rank or above, which is what Alexander asked her for.

| Key | Place | Assessment | Detected | Breaks | Floor (§9.4) | Staffing | Posting body |
|---|---|---|---|---|---|---|---|
| `GB-01` | Red Line Corridor (`ENT-000090`) | **Confirmed E-Rank** | 2026-08-01 | midnight 2026-08-08 | 8, waiver floor 5 | **`broken`** — settled `EVT-000270` | Windy City Hunters Coalition freelance posting. Sat five days without reaching floor; broke at deadline (Section 9.8) — 8 common/2 elite/1 boss released. BGM emergency contract issued, guild strike team dispatched. |
| `GB-02` | Lakefront Gate Corridor (`ENT-000089`) | **Unconfirmed D-Rank** (assessed Rank stood at break — owner ruling, `EVT-000270`, F-004) | 2026-08-03 | midnight 2026-08-09 | 8 | **`broken`** — settled `EVT-000270` | BGM auction lot, starved of bids by the Ironline/Horizon auction war. Never entered, so its §9.5 true-Rank roll never triggered; broke as its assessed D-Rank — 13 common/2 elite/1 boss released. BGM emergency contract issued, guild strike team dispatched. |
| `GB-03` | Lakefront Gate Corridor (`ENT-000089`) | **Confirmed C-Rank** | 2026-08-04 | midnight 2026-08-09 | 10–12 | **`cleared`** — settled `EVT-000270` | Won at auction, staffed from Horizon's own bench. Cleared off-screen on schedule, exactly as anticipated. |
| `GB-04` | Red Line Corridor (`ENT-000090`) | **Confirmed E-Rank** | 2026-08-05 | **midnight 2026-08-12** | 8, waiver floor 5 | **`broken`** — settled `EVT-000413` | Coalition freelance posting. Never reached floor across seven days; broke at deadline (Section 9.8) — **8 common/1 elite/1 boss released** (🎲 3d6 6+1+1, 🎲 1d2 1). BGM emergency contract issued, guild strike team dispatched. |
| `GB-05` | Lakefront Gate Corridor (`ENT-000089`) | **Unconfirmed E-Rank** | 2026-08-20 | midnight 2026-08-27 | 8, waiver floor 5 | `posted` | The world tick's first-ever detection, sited within reach (`EVT-000552`). Not yet surfaced to Alexander through any channel he has used. |
| `GB-06` | Red Line Corridor (`ENT-000090`) | **Unconfirmed E-Rank** | 2026-08-20 | midnight 2026-08-27 | 8, waiver floor 5 | `posted` | The same tick's second within-reach detection (`EVT-000552`). Not yet surfaced. |

**`GB-01`, `GB-02` and `GB-04` are retired from live tracking** (Section 9.10: a break spends the Gate; the release is one-time, and nothing here is re-entered or re-tracked). `GB-03` is likewise retired, cleared. **`GB-05` and `GB-06` are live — `tracked_postings: 2` as of `EVT-000552`**, the board's first entries since it emptied at `EVT-000413`.

**No break has reached Alexander.** All three sites sit outside his proximity and route (Section 8.4.2), so this is news the city absorbs off-screen; he has not been told and the System surfaces nothing (Section 14.4 unmoved, Section 9.10's own "not a summons" clause).

**`GB-04` settled four days late, and the lateness is the finding (`EVT-000413`, 2026-08-16).** Its deadline fell at midnight 2026-08-12 while the campaign clock ran on to 2026-08-16; its own note above still read *'still inside its window as of the current anchor'*, written 2026-08-11 and untrue from the next day. Section 9.10 owes no roll and no discretion at a deadline — only settlement — and nothing performed it, because nothing in the engine fires on the clock. **This is `F-002` recurring for the second time on the same structural cause**, and that flag's status note already anticipated it: the campaign lapse was actioned in 2026-07-31, but the design question it raised — whether Section 9.10 needs a **declared audit boundary**, as Decisions 082 and 083 gave commitments and supply — was left open and remains open.

**Two E-Rank breaks in the Red Line Corridor inside eleven days.** `GB-01` at midnight 2026-08-08 and `GB-04` at midnight 2026-08-12 — same corridor, same Rank, same Coalition freelance posting sitting under floor until the timer ran out. Not a coincidence so much as a measurement of how thin the freelance pool is at the bottom of the ladder, and it is the corridor where Alexander cleared his own first Gate (`EVT-000059`).

**Resolved, off-board (2026-08-11, `EVT-000261`-`EVT-000266`).** A confirmed E-Rank Gate — a collapsed rail cutting west of BGM Region V's jurisdiction — was never listed on this tracked board: Kesha Morrison identified it privately for Owen's sponsored two-person job (`OBJ-19`) rather than posting it publicly. Cleared the same morning; no longer live.

**What Alexander knows.** `GB-01` and `GB-04` are Coalition freelance postings he can read at the desk or on the board; `GB-02` and `GB-03` are BGM board listings public to any licensed hunter who checks. He has a standing order that no *crew* Gate precedes the 2026-08-09 training session — a constraint of his own making that covers Priya's crew, not a bar on his taking freelance work himself.

---

## World Ticks (Profile Section 9.1.1)

What each daily 06:00 tick actually rolled. Tracked state: mints no identifier, bumps no provenance.

**`world_clock.last_ticked` records that time passed; this records that the world ran.** They are different facts, and only the second is checkable. A tick that advances the anchor and rolls nothing is byte-identical to one that rolled and found nothing — which is the defect this engine has met three times now (`F-002`'s deadlines, `F-035`'s supply sources, and the tick itself). `none` is therefore a result and is written as one, on the same negative-assertion discipline Section 7.5's supply sources use.

**The first tick ran 2026-08-20 06:00** (`EVT-000552`), before the twenty-seventh daily quest issued. Real dice throughout; `none` recorded as a result wherever nothing happened, per Section 9.1.1.

```yaml
world_ticks:
  - boundary: "2026-08-21T06:00:00-05:00"
    gates:
      chicago_count: 5   # 1d4+3 -> 2
      prague_count: 1    # 1d2 -> 1
      chicago_ranks: [E, D, E, C, E]
      prague_ranks: [D]
    siting:
      chicago: [elsewhere, within-reach, elsewhere, ON-ROUTE, elsewhere]
      # d100 x5 -> 74, 22, 91, 08, 55 against 01-10/11-30/31-100
      prague: [elsewhere]
    contest: "none - no live tracked posting held a deadline this tick"
    breaks: "none - nothing to break"
    postings: "+1 - GB-07 (Lakefront Gate Corridor), unconfirmed E-Rank"
    agendas: "Wade Bishop (ENT-000146) advances hard - holds the OBJ-30 staging and begins calling every B-Rank card in Region V. Priscilla Nakamura (ENT-000203) takes the first of fourteen core readings. Rosalind Fenn (ENT-000198) opens a second, separate job on Ironline's ownership."
    world_event:
      roll: 41   # d100 -> policy/enforcement band
      siting: 19 # d100 -> within reach
      description: "Wednesday's roster-compliance scrutiny produces its first concrete instrument: a Coalition advisory, timestamped 06:04, that filed strike rosters may be SPOT-AUDITED AT STAGING. It is not narration - it is the direct proximate cause of OBJ-30 being held rather than run, of five people going home from a grain terminal, and of a recruiter deciding to call a bench for real for the first time in six years."
    pressure:
      red_line_corridor: 0
      lakefront_gate_corridor: 0
    major: "not due - the first-week major was rolled and held at the 2026-08-20 tick."
    landed: "World event -> OBJ-30 held, and a world fact (spot audits are now a live enforcement mechanism rather than a threat). Gate 4 -> sited ON the Bearer's recorded route and subsequently entered, cleared and never reported (EVT-000584), leaving BGM's Friday records showing five Chicago Gates and accounting for four."
  - boundary: "2026-08-20T06:00:00-05:00"
    gates:
      chicago_count: 7   # d1d4+3 -> 4
      prague_count: 1    # 1d2 -> 1
      chicago_ranks: [D, D, E, E, E, E, C]   # d1000 x7 -> 649, 515, 9, 437, 101, 156, 771
      prague_ranks: [D]                       # d1000 -> 632
    siting:
      chicago: [elsewhere, elsewhere, within-reach, elsewhere, within-reach, elsewhere, elsewhere]
      # d100 x7 -> 85, 36, 20, 65, 28, 70, 91 against 01-10/11-30/31-100
      prague: [elsewhere]
    contest: "none — no live tracked posting held a deadline this tick (board stood at 0)"
    breaks: "none — nothing to break"
    postings: "+2 — the two within-reach E-Rank detections entered the board as GB-05 (Lakefront Gate Corridor) and GB-06 (Red Line Corridor), deadlines midnight 2026-08-27. Not yet surfaced to Alexander through any channel he has used."
    agendas: "Reyna Castillo (REL-000095) initiates — her promised Wednesday answer, one day overdue, resolves. d100 92 -> yes; Corbin and Felix confirmed with her."
    world_event:
      roll: 75   # d100 -> 73-80, Aftermath
      siting: 13 # d100 -> within reach
      description: "A guild answering for a thin roster — the aftermath the Red Line Corridor's two prior breaks (GB-01, GB-04) primed. Landed as a world fact: the trade is visibly talking about roster compliance in a way it wasn't a week ago."
    pressure:
      red_line_corridor: 0   # unchanged, floor
      lakefront_gate_corridor: 0   # unchanged, floor
    major: "due — first tick of the first in-fiction week under Profile 1.79. d100 14 -> 01-55, the world holds."
    landed: "Reyna's decision -> entity change (REL-000095, recruitment-candidate to confirmed crew member). World event -> world fact, roster compliance. Major roll -> none, stated (nothing to land)."
```

### District Pressure (Profile Section 9.1.3)

How close each district is to losing ground. Deterministic tracked state — breaks raise it, clear weeks lower it, thresholds are crossed without a roll.

**Initialised from what the campaign already played.** The Red Line Corridor is not at zero: `GB-01` broke at midnight 2026-08-08 and `GB-04` at midnight 2026-08-12, and the world ledger already recorded that pattern as *"two E-Rank breaks in the Red Line Corridor inside eleven days… a measurement of how thin the freelance pool is."* Both were contained by the Section 9.8 response, and both are now more than a clear week behind the current anchor, so the decay has run.

```yaml
district_pressure:
  - district: ENT-000090
    name: Red Line Corridor
    pressure: 0
    note: "Two contained E-Rank breaks (`GB-01` 2026-08-08, `GB-04` 2026-08-12) at +1 each, then decayed to floor across the clear weeks since. Recorded rather than assumed: this district is the one with a demonstrated break history, and it starts at 0 because the city absorbed both."
  - district: ENT-000089
    name: Lakefront Gate Corridor
    pressure: 0
    note: "`GB-02` broke 2026-08-09 (+1); `GB-03` cleared and never broke. Decayed to floor."
```

**Only districts with a played history are listed.** A district with no entry is at 0; entries appear as breaks give them one. Thresholds: 4 strained, 7 cordon, **10 containment failure — the district is overrun and needs a joint raid** (Section 9.1.3).

**The daily quest is bound to this.** Section 9.1.1 makes the tick and the daily one boundary event with a fixed order: the tick runs, its entry lands here, and only then does the daily issue. A daily rendered for a day with no entry above is the failure the coupling exists to make visible — the daily is player-facing and never forgotten, the tick is owed to nobody in the scene, so the reliable obligation now carries the unreliable one.

---

## Supply Sources (Decision 083, Data Model Section 7.5)

Actors that generate opportunity on their own schedule. Tracked state under Section 7.3: mints no identifier, bumps no provenance. An opening promotes to an Event when it becomes campaign-durable — taken, bid on, or refused.

**Why these exist now, and why the cadences are derived rather than owner-authored.** Decision 083 and Decision 088 had **zero live instances** across the whole campaign while `tools/list_supply_and_need_candidates.ps1` listed 59 candidates. That is what `F-035` records: asked whether a contact had work, the Runtime answered *"nothing right now"* with nothing to read, no rule to apply and no die thrown — so "nothing" cost nothing to say and was always going to be the answer. **No opportunity could ever be populated by asking; only ever declined.**

Every `cadence` below is **derived from that source's own canon**, which is what Data Model 7.5 authorises in its own words — *"how often, as its world declares, or derived from the source's canon"*. None is invented and none waits on an owner ruling: `F-008` ruled against exactly that deferral, and the Resident Core carries it — *"Do not defer, hedge, or have an NPC promise to look. The silence of the record is not a world fact."* Where a figure genuinely encodes a design choice rather than a read, it says so in its own note.

`advanced` is the field that makes this honest (the recovery-anchor analogue, Decision 078): it records how far each source has been settled, so a later read cannot be mistaken for a first one. **An advance that yields nothing sets `advanced` forward with `available` unchanged** — a recorded settlement, not a skipped one, on Decision 080's negative-assertion discipline.

```yaml
supply_sources:
  - owner: ENT-000134
    kind: harvest-hire postings, C-Rank and below
    cadence: "roughly every 3-5 days; derived from her own posting record — the Cicero Scar operation 2026-07-25 (`EVT-000063`), Alexander logged for the next posting 2026-08-04 (`EVT-000137`), and a working pattern of briefing hires on protocol and logging declared hauls against a manifest. She is a coordinator for a running contractor, not an occasional poster."
    advanced: "2026-08-21T13:01:00-05:00"
    available: []
  - owner: ENT-000135
    kind: harvest and mining postings, up to B-Rank leads
    cadence: "roughly weekly, with B-Rank leads far rarer; derived from the B-Rank mining lead he carried across 2026-08-05 to 2026-08-13 without it moving (`EVT-000155`), and the same-evening reply pattern to direct asks (`EVT-000088`)."
    advanced: "2026-08-21T13:01:00-05:00"
    available: []
  - owner: ENT-000130
    kind: Coalition freelance board postings, all Ranks
    cadence: "continuous — the desk is a board, not a person's pipeline. Postings arrive on the Coalition's own clock and she reads them off it; her role is access, not generation. Derived from the board's own history: `GB-01` through `GB-04` detected 2026-08-01, 03, 04 and 05."
    advanced: "2026-08-21T13:01:00-05:00"
    available: []
  - owner: ENT-000145
    kind: harvest-hire postings through the Coalition board
    cadence: "sporadic, several weeks apart; derived from `EVT-000155` — nothing new posted since Halsted Depot, which is itself the evidence: a small two-partner outfit posting its first Coalition job, not a steady source."
    advanced: "2026-08-21T13:01:00-05:00"
    available: []
  - owner: ENT-000148
    kind: rail-corridor harvest crew places
    cadence: "tied to her own contract cycle rather than a clock; derived from `EVT-000155` — her crew still on the rail-corridor paperwork, which is one job occupying the crew rather than a pipeline generating places."
    advanced: "2026-08-21T13:01:00-05:00"
    available: []
```

**All five are `advanced` to the current campaign anchor with `available: []`, and that is a real settlement rather than a convenience.** It records that as of 2026-08-19 18:55 each source has been read and none is holding an unclaimed opening — which is exactly the state the fiction has shown. What changes from here is that the next read advances from a recorded anchor instead of from nothing, and a source whose `advanced` falls behind the campaign clock is a finding rather than an absence.

**A Gate opened, was cleared, and the world will never know, 2026-08-21 (`EVT-000584`).** The tick sited a **C-Rank Gate on the Bearer's own recorded route** (`d100 08`) — in a dip behind the lakefront bird sanctuary where the sightlines are bad, which is why it stood three hours in a public park with joggers passing. **Unconfirmed, unsurveyed, uncordoned, unposted.** Alexander entered it alone, cleared it, mined it, and walked out; it closed inside a minute and the scrub went back to being scrub. **Nobody filed it and nobody will.** BGM's records for Friday show five Chicago Gates and account for four. Recorded here because the discrepancy is a world fact rather than a Bearer fact, and because it is the first time this campaign has removed a Gate from the world without the world noticing.

**A world fact established at a workbench, 2026-08-20 (`EVT-000577`).** A twenty-year artificer, examining a made [S-Rank] housing, established two things the campaign had no prior basis for:

1. **Fused mana signatures are producible.** She had heard the result claimed as theoretically possible and had never in twenty years seen one produced. One now exists on her bench, holding two signatures of *different ages* fused rather than layered.
2. **An unlicensed hand produced S-Rank finish work.** Her words, on the dagger: the best thing on her bench in a decade, and *'an S-Rank finish off an unlicensed hand and I want you to understand how rare that sentence is.'*

Both are statements about what is possible in this world rather than about one object, and both came from an expert with no reason to overstate. Recorded here rather than only in the campaign chronicle for that reason. **The maker is unnamed in this record**; the identification is tracked on `OBJ-27`.

**Nothing else world-side moved this span, asserted rather than omitted.** `EVT-000570` was a Section 17 instant dungeon turned inside a private flat: unregulated space, no Gate instantiated, no BGM posting, no district touched, nothing observable from outside the room. Seventeen B-Rank bodies died and **the world does not know any of it happened**, which is the archetype's whole character and is recorded here so its absence from `world_ticks`, `district_pressure` and the tracked board reads as a state rather than an omission. Four such keys have now been turned in one day.

**A sixth pipeline is being built rather than read, and is deliberately not listed above.** Walt Adamik's operation (`ENT-000147`, `OBJ-29`) is four days into a seven-day build as of 2026-08-20 12:55 — space secured, one of two vouched people, two dealer contacts at *maybe*. **It supplies nothing yet and is not a `supply_source` until it does.** Its owner refused ~50 B-Rank crystals and 8 cores on 2026-08-20 (`EVT-000565`) precisely because it is not running: liquidating that volume through the channels the build exists to replace would make him a fence with a conspicuous pile. **First demonstrable result due 2026-08-24.** Recorded here so the pipeline's absence from the list reads as a state rather than an omission.

**Not wired yet, and named so it is not mistaken for done.** Fifty-four of the fifty-nine candidates remain undeclared. These five are the contacts play has actually asked for work; the rest are declared as they are touched, on the same derive-from-canon rule.

---

## Standing Needs (Decision 088, Data Model Section 7.6)

What actors want, on their own clock. A need is a property of an actor already in canon, never of an aggregate. Settlement resolves from the holder's own state, standing and reach — **not from whether the protagonist got involved** — and an `unmet` need records why.

**These are the first live instances of Decision 088 in the campaign.** Like the supply sources above, each is derived from something already played and cited, not invented to populate a table.

```yaml
standing_needs:
  - holder: ENT-000135
    subject: "eight-plus combat-rated hunters for a B-Rank lead a bigger-than-usual client will not sign off without"
    due: "rolling; the lead came across his desk 2026-08-17 and is not postable until the roster clears"
    status: open
    advanced: "2026-08-21T13:01:00-05:00"
    outcome: "Open. Named unprompted on the 2026-08-19 call (`EVT-000544`) and the same staffing constraint he had already named at `EVT-000415`: he runs C-Rank and begs for B when timing lines up, and A-Rank is guild territory. Alexander said he would ask around; `140_OBJECTIVES.md` `OBJ-31` opened on it. **It settles from Dale's own reach whether or not Alexander delivers** — a small contractor competing with Ironline and Horizon for the same bodies may simply fail to fill it."
  - holder: ENT-000101
    subject: "combat-rated hunters for volume strike contracts, continuously"
    due: "continuous; recruiting is the guild's standing posture rather than an event"
    status: open
    advanced: "2026-08-21T13:01:00-05:00"
    outcome: "Open and structural. Wade Bishop's whole role is talent acquisition for the volume-strike tier, and `EVT-000384` records the mechanism plainly: Brannigan's office pulls bench names whenever a job runs short, rosters are filed padded, and *nobody checks unless someone dies*. **This need is met badly rather than unmet**, which is the fiction's own point — the shortfall is answered by forgery instead of by hiring, and that is what Alexander holds over Wade."
```

**Only two, and deliberately.** These are the needs canon states in so many words with an Event behind them. The candidate tool lists more actors whose prose implies wanting something; those are declared as play establishes them, on the same rule. **Both are `advanced` to the current anchor**: each has been read, neither has been met, and that is a settlement rather than a silence.

---

## Campaign-Scope Concealed Discoveries (Profile Section 8.4.5)

Campaign-scope `concealed-discovery` records, anchored on entities this campaign created. They carry the complete field contract Profile Section 8.4.5 requires and Section 8.4.3 consumes. World-scope discoveries live in `worlds/gatefall/230_KNOWLEDGE_SUBJECTS.md`; these three are promotions of threads this campaign's own fiction produced, authored at `EVT-000159` under the promotion ritual.

**None of these attaches a pointer at adoption.** Each `proximity_condition` below is deliberately forward-looking — an action Alexander has not yet taken. The fourteen in-fiction days already played are not re-audited, per the Profile 1.26 → 1.27 compatibility treatment.

These records are owner-facing. A Runtime never renders one, and an attached pointer shows `???` and nothing else.

### ENT-000161 — The pawnbroker's use for high-Rank cores

```yaml
id: ENT-000161
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000159
  game_date: "2026-08-05 ~12:15 -05:00"
  real_date: "2026-07-28"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "the pawnbroker's use for high-Rank cores"
    quality: current
canonical_state:
  claim: "Asked what he actually wants, the pawnbroker (`ENT-000147`) named C-Rank cores and above, began to give a reason, visibly stopped himself, and said only that he has a use for things that don't come cheap through normal channels and that the shop's margins don't stretch to it. The use is real, it is not resale, and it is the reason a warehouse-district salvage dealer is quietly outbidding his own margins."
  anchor: ENT-000147
  concealment: "He stopped himself deliberately, in the same register as his discretion about Alexander's dimensional-inventory slip. He is not hiding it under pressure; he has simply decided Alexander has not yet earned it, and he does not volunteer twice."
  proximity_condition: "Physically delivering a C-Rank-or-above core into his hands — the one thing he has said he wants and the one thing Alexander has never had to give him."
  clue_condition: "Establishing from a third party in the district that the pawnbroker has been buying high-Rank cores from someone else, at prices his shop's trade cannot explain."
  reveal_condition: "The pawnbroker states the use himself, unprompted by a direct question — which he does only once Alexander is a supplier of exactly the material in question rather than a seller of E-Rank stock."
  objective: "Learn what he wants the high-Rank cores for."
  completion_condition: "The use established first-hand, from him."
  failure_or_expiry: "Expires if Alexander presses him directly for it before supplying — pressing converts a withheld confidence into a closed one, consistent with his established character, and he does not reopen it."
  resolution_depth: "surface — the use itself is an owner ruling and is not authored here."
  bearer_knows: false
```

### ENT-000162 — What became of the Cicero scavenger

```yaml
id: ENT-000162
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000159
  game_date: "2026-08-05 ~12:15 -05:00"
  real_date: "2026-07-28"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "what became of the Cicero scavenger"
    quality: current
canonical_state:
  claim: "The unlicensed scavenger who pulled Cicero's Quiet [C-Rank] out of an active federal quarantine stopped taking calls not long after the sale — no trouble traced, no body, nothing official. The middleman's own phrase for the artifact was that it 'came out colder than it went in.' Something accounts for the silence."
  anchor: ENT-000147
  concealment: "Everything Alexander holds is a secondhand account relayed by the pawnbroker from a middleman he has never personally traced — Character Knowledge only, establishing nothing as Objective Reality (Decision 060). The middleman is unnamed and unmet; the scavenger has no identifier."
  proximity_condition: "Reaching the middleman in person, or standing at the cordon recovery site inside the Cicero Scar where the artifact was pulled."
  clue_condition: "Obtaining a second account of the scavenger's disappearance from a source independent of the pawnbroker's middleman."
  reveal_condition: "The Bearer establishes what happened to the scavenger from a source with first-hand knowledge, or from physical evidence at the recovery site."
  objective: "Account for the scavenger's silence."
  completion_condition: "The cause of the disappearance established first-hand, not relayed."
  failure_or_expiry: "Expires if Cicero's Quiet leaves the pawnbroker's case to another buyer — the artifact is the only thread Alexander holds back to the middleman, and the pawnbroker will not chase a sold item's provenance for him."
  resolution_depth: "surface — what happened is an owner ruling and is not authored here. It may or may not connect to `ENT-000151`; that connection is not established."
  bearer_knows: false
```

### ENT-000163 — What Ferro's Reclamation gets back

```yaml
id: ENT-000163
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000159
  game_date: "2026-08-05 ~12:15 -05:00"
  real_date: "2026-07-28"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "what Ferro's Reclamation gets back"
    quality: current
canonical_state:
  claim: "Ferro's Reclamation (`ENT-000150`), two blocks north of the pawn shop, trades favors with Coalition compliance staff **in both directions**. Alexander has been told the outbound half — its owner talks, which makes the shop an informant risk. The return half is what compliance gives back, and that is the half that determines whether a name mentioned near Ferro's reaches a desk that matters or dies in a corridor."
  anchor: ENT-000150
  concealment: "Alexander bought the trust map from a competitor two blocks away, who named the risk without characterizing what sustains it. Neither side of the arrangement has any reason to describe it to a hunter selling undeclared cores in the same district."
  proximity_condition: "Doing business inside Ferro's Reclamation in person, or being present when a Coalition compliance staffer is."
  clue_condition: "Establishing that a specific piece of information Alexander can trace passed from Ferro's to a Coalition desk, and observing what followed it back."
  reveal_condition: "The Bearer establishes what compliance provides in return — from either party, or from documentation of a favor already run."
  objective: "Establish the return half of the arrangement."
  completion_condition: "The reciprocal consideration established first-hand, with the responsible desk identified."
  failure_or_expiry: "No expiry. This discovery carries live exposure risk rather than a deadline: Alexander now moves undeclared cores two blocks from a shop that talks, and reaching this discovery means getting close to the channel that would carry his own name."
  resolution_depth: "surface — the arrangement's content is an owner ruling and is not authored here."
  bearer_knows: false
```

### ENT-000164 — The warehouse-district intake storefront

An unnamed painted-over storefront two blocks from the pawn shop, marked "CLOSED" but in active covert use. First noticed 2026-08-05 (`EVT-000163`); confirmed active by Alexander's own Keen Sense read the same day (`EVT-000164`).

```yaml
id: ENT-000164
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000164
  game_date: "2026-08-05, ~12:35-12:40, warehouse district"
  real_date: "2026-07-28"
type: Institution
subtype: covert cargo intake, unlicensed
scope: local
lifecycle: active
aliases:
  - name: "the 'CLOSED' storefront"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); exact address unestablished, near Ferro's Reclamation and Cutting Edge"
  function: "Presents as a closed, disused shopfront. Its side-door loading ramp shows wide-dolly wear and fresh scuffing from recent, repeated use. A stabilizing-reagent smell at the doorframe and a stencil-marked packing scrap confirm it moves raw, uncleared Gate material — crystals or cores — in bulk, quietly enough to look like nothing from the street."
  standing: "Owner, operator, and full extent unestablished. Nobody was present or visibly watching during Alexander's read. Not yet approached, entered, or reported to anyone."
```

### ENT-000165 — What the intake storefront actually moves, and for whom

```yaml
id: ENT-000165
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000164
  game_date: "2026-08-05 ~12:40 -05:00"
  real_date: "2026-07-28"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "what the intake storefront actually moves"
    quality: current
canonical_state:
  claim: "The storefront (`ENT-000164`) is an active, unlicensed intake point moving raw, uncleared Gate material — crystals, cores, or both — in bulk. Who receives it, who supplies it, and what it feeds into (resale, refinement, something else) are unestablished."
  anchor: ENT-000164
  concealment: "Nothing about the operation is aimed at Alexander specifically; it is simply not advertised, and its physical evidence (wear, smell, packing scrap) is the only trace it leaves for anyone who happens to look closely."
  proximity_condition: "Entering the storefront, observing a handoff or shipment in person, or directly questioning someone demonstrably involved."
  clue_condition: "Tracing the packing-scrap stencil mark, or identifying a person or vehicle observed using the ramp."
  reveal_condition: "The Bearer establishes who runs the operation and what it actually moves the material for."
  objective: "Identify the operation behind the storefront and its purpose."
  completion_condition: "The operator or receiving party identified first-hand, with the material's destination or use established."
  failure_or_expiry: "No expiry. A standing, low-visibility lead rather than a deadline."
  resolution_depth: "surface — who runs it and why is an owner ruling and is not authored here."
  bearer_knows: false
```

### ENT-000166 — The fenced warehouse near the auto-shop stretch

An unmarked warehouse in a row of small auto shops, distinguished by a recently-installed chain-link perimeter with fresh razor wire and a commercial biometric-capable keypad gate — conspicuously better security than anything else on the block. Confirmed active infrastructure by Alexander's own Keen Sense read 2026-08-05 (`EVT-000165`).

```yaml
id: ENT-000166
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000165
  game_date: "2026-08-05, ~13:10-13:15, warehouse district auto-shop row"
  real_date: "2026-07-28"
type: Institution
subtype: secured warehouse, unidentified
scope: local
lifecycle: active
aliases:
  - name: "the fenced warehouse"
    quality: current
canonical_state:
  location: "A row of small auto shops in Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); exact address unestablished"
  function: "Presents as a blank, unsignposted warehouse behind fresh, well-maintained fencing. Its keypad is commercial-grade and biometric-capable, its fence posts set in new concrete, and a steady mechanical hum from inside suggests active climate control or stabilized equipment rather than ordinary storage. Serviced by **Titan Secure** (`ENT-000171`) for its keypad and fence hardware, confirmed 2026-08-06 (`EVT-000188`)."
  standing: "**Named 2026-08-06 (`EVT-000189`): Meridian Cold Storage LLC**, an Illinois LLC formed ~14 months before observation, matching the fence/keypad installation timing. Filed through a corporate formation service as registered agent; the address on file is a downtown office suite (Suite 14) shared with six other LLCs filed through the same agent — a shell-mill address, not an operating office. Suite 14 itself confirmed by building security (2026-08-06, `EVT-000190`) to receive essentially no visitors. One badge-carrying individual observed entering the warehouse directly by keypad (`EVT-000189`): male, mid-30s, unremarkable build, moves with familiarity; a partial vehicle plate and an unrecognized company logo on his lanyard were caught but not identified. Owner and true operator behind the shell remain unestablished — Alexander's own attempt to reach a contact number tied to Suite 14 (`EVT-000191`) connected to an actively monitored line and ended when the party who answered identified the approach as illegitimate, hung up, and now holds Alexander's real phone number. Reads as real capital investment protecting conditions inside, not merely contents — distinct in character from the storefront (`ENT-000164`).

**A name surfaces, 2026-08-11 (`EVT-000287`): Cormant Holdings.** Bought as a grey-market lead from Elias Ward (`ENT-000177`) — 'keeps coming up near the cold-storage lot off the rail spur, nobody says why' — and independently corroborated in the same vein by Petra at Ferro's Reclamation (`ENT-000150`), who named it as adjacent to 'two other things that never quite lined up before.' Alexander's own read (partial success, Intelligence-governed) is fairly confident this matches the unidentified lanyard logo from the 2026-08-06 sighting, but he cannot confirm from what he holds whether Cormant Holdings is the same entity that filed Meridian Cold Storage LLC or a separate piece of the same operation — the Suite 14 filing names a formation agent, not a company. Real progress, not resolution: a name where there was only a logo, still short of identifying the owner or the operation's purpose.

**Two real findings, 2026-08-19 (`EVT-000541`), from a deliberate return under Silent Step and Keen Sense (natural 91 → effective 100, Legendary success), and a rift anchor set at the fence line.** First: a Suppression Emitter, held live rather than assumed inert, caught something react to it — **an undisclosed instrument-based anomaly/Gate-signature detection layer exists in the site's security**, distinct from and never mentioned in Titan Secure's confirmed mundane keypad/fence contract. Second: a Gate Direction Finder held at the fence didn't reach outward the way it has for every other target Alexander has pointed it at — it settled close and certain, the signature of something a few dozen metres off rather than blocks or miles away. **The warehouse reads to the instrument as an active Gate signature**, not evidence of one. Owner and operator remain exactly as unestablished as before; what changed is the confidence behind *why* the site is guarded this well."
```

### ENT-000167 — What the fenced warehouse actually protects

```yaml
id: ENT-000167
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000165
  game_date: "2026-08-05 ~13:15 -05:00"
  real_date: "2026-07-28"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "what the fenced warehouse protects"
    quality: current
canonical_state:
  claim: "The fenced warehouse (`ENT-000166`) houses something requiring real capital, active security, and stable environmental conditions — not ordinary auto-shop storage. Its registered operator is a shell entity, **Meridian Cold Storage LLC**, filed through a corporate formation mill with no traceable owner behind it. **What it holds is now substantially established: it reads to a Gate Direction Finder as an active Gate signature** (`EVT-000541`), and its security carries an undisclosed instrument-based anomaly-sensing layer beyond Titan Secure's mundane contract. Who actually owns and operates it remains unestablished."
  anchor: ENT-000166
  concealment: "The operation gives away nothing overt — no signage, no visible traffic — and its only trace is the physical investment in keeping conditions stable, which reads as anomalous only to someone who stops to compare it against its neighbors. The shell-company structure adds a second, deliberate layer: even a name traced to the property terminates at a formation service, not a person. **A third layer confirmed 2026-08-19**: a real anomaly-detection instrument nobody had disclosed, defeated only because it was tested for deliberately rather than assumed absent."
  proximity_condition: "Gaining entry past the keypad gate, or directly questioning a confirmed employee or owner."
  clue_condition: "**Met, 2026-08-06 (`EVT-000188`)** — identified Titan Secure as the keypad/fence servicer, and directly observed a delivery in person."
  reveal_condition: "The Bearer establishes who owns or operates the warehouse and what it is actually used for. **Substantially advanced, still not met**: the LLC name and shell structure are established (`EVT-000189`), and **the true purpose is now strongly evidenced — a live Gate signature** (`EVT-000541`) — but the true owner or operator is still not identified first-hand, which `completion_condition` requires alongside it."
  objective: "Identify the warehouse's owner or operator and its true purpose."
  completion_condition: "The owner or operator identified first-hand, with the warehouse's true use established."
  failure_or_expiry: "No expiry. A standing, low-visibility lead rather than a deadline."
  resolution_depth: "surface — the warehouse's true purpose (what the Gate signature actually is, whether confirmed or unlicensed) is an owner ruling and is not authored here."
  bearer_knows: false
  hidden_quest_pointer:
    status: attached
    attached_event: EVT-000188
    revealed: false
    note: "Pointer attached under Section 8.4.3 when the clue_condition was met at the first exceptional-success stakeout (`EVT-000188`); every criterion held (record pre-existed, clue established through a resolved action, Bearer did not know the fact, complete field set already on file). Reveal has not yet triggered — the reveal_condition requires both ownership AND true purpose established, and only the shell-company ownership layer has been reached. Renders `[HIDDEN] ???` on `/system` until reveal_condition is fully met."
```

### ENT-000171 — Titan Secure

A small commercial access-control and security-hardware installer in Chicago's warehouse district — keypads, cameras, fence contracts, mostly warehouses and car lots. Confirmed by phone as the fenced warehouse's (`ENT-000166`) keypad and fence servicer, 2026-08-06 (`EVT-000188`). Holds client information as its stated product and would not disclose which client sits behind the fence.

```yaml
id: ENT-000171
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000188
  game_date: "2026-08-06 ~16:45 -05:00"
  real_date: "2026-07-29"
type: Institution
subtype: security/access-control installer
scope: local
lifecycle: active
aliases:
  - name: "Titan Secure"
    quality: current
canonical_state:
  location: "Chicago's warehouse district (`worlds/gatefall/`, `ENT-000087`); exact address unestablished, reached by phone only"
  function: "Installs and services access control — keypads, cameras, fence contracts — primarily for commercial clients: warehouses and car lots around the district. Confirmed by its own employee (Marsh, `ENT-000172`) as the installer/servicer for the fenced warehouse's (`ENT-000166`) security hardware."
  standing: "Legitimate, ordinary business as far as established. Holds client confidentiality as a stated selling point and declined to name which client occupies the fenced warehouse when asked. A second call to this number on any pretext is materially harder after Alexander's mismatched guard-job pretext (`EVT-000188`)."
```

### ENT-000190 — What happened to Marnie

```yaml
id: ENT-000190
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000321
  game_date: "2026-08-13 ~15:15 -05:00"
  real_date: "2026-08-02"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "what happened to Marnie"
    quality: current
canonical_state:
  claim: "Marnie (`ENT-000189`), the unlicensed artificer Walt Adamik brokered an introduction to, has gone genuinely quiet — six messages unanswered against fifteen years of an established responsive pattern. Something specific caused the silence; it is not simply her being busy or deliberately off-grid, per Walt's own read of a relationship he has maintained that long."
  anchor: ENT-000189
  concealment: "She runs deliberately untraceable by design — no fixed address across fifteen years, only ever met at a single public coffee stall. Whatever caused the silence is concealed by the same structure that made her hard to find in the first place, not by any active effort to hide the cause itself."
  proximity_condition: "Physically reaching the coffee stall near the Metro rail yards off Cermak and finding or following a genuine lead there, or otherwise locating Marnie or someone who knows what happened to her."
  clue_condition: "Establishing from a third party — at the coffee stall, through Walt's own further inquiries, or elsewhere — a concrete fact about her recent movements or condition."
  reveal_condition: "Alexander learns, first-hand or through a resolved investigative action, what actually happened to Marnie."
  objective: "Find out what happened to Marnie."
  completion_condition: "The cause of her silence established, and her status (safe, in danger, or otherwise) confirmed."
  failure_or_expiry: "No expiry authored. A standing concern rather than a deadline, consistent with how little Alexander currently has to go on."
  resolution_depth: "surface — what actually happened to her is an owner ruling and is not authored here."
  bearer_knows: false
  hidden_quest_pointer:
    status: attached
    attached_event: EVT-000325
```

### ENT-000191 — The coffee stall owner

An older woman running a coffee stall near the Metro rail yards off Cermak — Marnie's one fixed, longtime meeting point. A real contact, not a front: easy with the transit regulars who know her by name, guarded with anyone asking about Marnie directly.

```yaml
id: ENT-000191
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000325
  game_date: "2026-08-13 ~17:50 -05:00"
  real_date: "2026-08-02"
type: Character
subtype: coffee stall owner
scope: local
lifecycle: active
aliases: []
relationships:
  - REL-000089
canonical_state:
  location: "A coffee stall near the Metro rail yards off Cermak, Chicago (`worlds/gatefall/`, `ENT-000087`); exact address unestablished"
  condition: "Healthy; not established as combat-active."
  capabilities: "Runs the stall alone. No established combat or awakened capability."
  personality: "Easy and familiar with regular transit-worker customers; visibly guarded and watchful about anything touching Marnie. Checks a specific loading dock roughly every ninety seconds — a worn-in habit, not casual nerves."
  situation: "Confirmed knowing Marnie without confirming anything else, until Alexander named Walt Adamik and she read his worry as genuine (`EVT-000325`). Reported: Marnie missed her standing Tuesday check-in for the first time ever; a professional, unbranded stranger — plain suit, no tie, tablet instead of a phone, no visible badge — had been asking pointed questions about Marnie's work (sourcing, method, who she takes instruction from) shortly before she went quiet; Marnie herself flagged the loading dock (`ENT-000192`) behind the stall as worth watching, and the stall owner has kept watching it since. Does not know Alexander beyond this one conversation."
```

### ENT-000192 — The loading dock off Cermak

An active, professionally maintained staging space behind the coffee stall — the place Marnie herself flagged as worth watching before she went quiet. Not a warehouse: a working artificer's bench and storage, oiled and recently used, under active instrument-based surveillance.

```yaml
id: ENT-000192
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000326
  game_date: "2026-08-13 ~18:00 -05:00"
  real_date: "2026-08-02"
type: Place
subtype: staging space / workshop
scope: local
lifecycle: active
aliases:
  - name: "the loading dock off Cermak"
    quality: current
canonical_state:
  location: "Behind the coffee stall near the Metro rail yards off Cermak, Chicago (`worlds/gatefall/`, `ENT-000087`); exact address unestablished"
  condition: "A raised concrete dock, rolled security shutter, no signage. Recently oiled padlock and chain; fresh tire tracks at time of entry. A small weatherproofed motion-sensor unit under the eave, actively powered, covering the gravel approach and shutter."
  situation: "Entered once, 2026-08-13 evening, via a Suppression Emitter (blinding the sensor) and a picked lock (`EVT-000326`). Interior: a working artificer's bench, one battery lantern left on, three crates. Contents swept: a half-finished leather piece and a finished S-Rank dagger bearing the same maker's stamp as Alexander's wallet, loose tool components, raw salvage materials, a handwritten work order referencing 'the consultation' moved to an unnamed street after Tuesday, and a torn visitor-badge fragment printed 'CONSULT — TEMP.' No one present at time of entry. Who actually runs it is unestablished — see `ENT-000193`."
```

### ENT-000193 — Concealed discovery: Who Runs the CONSULT Operation

```yaml
id: ENT-000193
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000329
  game_date: "2026-08-13 ~18:15 -05:00"
  real_date: "2026-08-02"
type: Discovery/Knowledge
subtype: concealed-discovery
scope: local
lifecycle: active
aliases:
  - name: "who runs the CONSULT operation"
    quality: current
canonical_state:
  claim: "The loading dock (`ENT-000192`) is staged and actively monitored by a professional, unbranded operation that processes people through it under a 'CONSULT — TEMP' access tier and asks informed, artificer-trade-literate questions about the people it takes interest in. Who runs it, and why they wanted Marnie specifically, is unestablished."
  anchor: ENT-000192
  concealment: "Deliberately unbranded by design — no signage, no logo on the badge fragment, a shell of ordinary process (temp credentials, a tablet instead of a phone) standing in for any name. The only traces are physical: the sensor, the oiled lock, the work order's street name, the badge tier."
  proximity_condition: "Reaching the street named in the work order, or directly questioning a confirmed member or associate of the operation."
  clue_condition: "Tracing the work order's street name to a real address, or identifying the described stranger (plain suit, tablet, no badge) from a second, independent source."
  reveal_condition: "The Bearer establishes who runs the operation and why it took interest in Marnie specifically."
  objective: "Identify who runs the CONSULT operation and its interest in Marnie."
  completion_condition: "The operator or a responsible party identified first-hand, with its interest in Marnie established."
  failure_or_expiry: "No expiry. A standing, low-visibility lead rather than a deadline."
  resolution_depth: "surface — who runs it and why is an owner ruling and is not authored here. It may or may not connect to `ENT-000166`'s fenced warehouse; that connection is not established."
  bearer_knows: false
```

```yaml
id: REL-000089
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000325
  game_date: "2026-08-13 ~17:50 -05:00"
  real_date: "2026-08-02"
endpoints: [ENT-000125, ENT-000191]
type: acquaintance
qualities: "Formed 2026-08-13 when Alexander invoked Walt Adamik's name and genuine worry to earn a real answer about Marnie. Thin — one conversation — but real: she gave him a concrete lead rather than turning him away."
```

### Holder Knowledge States

```yaml
id: REL-000084
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000159
  game_date: "2026-08-05 ~12:15 -05:00"
  real_date: "2026-07-28"
endpoints: [ENT-000147, ENT-000161]
type: knowledge-state
qualities: "Holder: the pawnbroker (principal). State: complete and deliberately withheld. He knows exactly what he wants the cores for, started to say it, and stopped. He filed Alexander's 'not yet' without pursuing it, in the same register as the dagger slip."
```

```yaml
id: REL-000085
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000159
  game_date: "2026-08-05 ~12:15 -05:00"
  real_date: "2026-07-28"
endpoints: [ENT-000147, ENT-000162]
type: knowledge-state
qualities: "Holder: the pawnbroker (relayer). State: secondhand and incurious. He has the middleman's account and the middleman's phrase, has never traced the middleman himself, and treats the scavenger's silence as a thing that happens in his trade rather than a question."
```

```yaml
id: REL-000086
canonical_record: REC-000075
schema_version: "0.1.6"
status: active
provenance:
  source: EVT-000159
  game_date: "2026-08-05 ~12:15 -05:00"
  real_date: "2026-07-28"
endpoints: [ENT-000150, ENT-000163]
type: knowledge-state
qualities: "Holder: Ferro's Reclamation (principal). State: complete and operational. Its owner knows precisely what the arrangement returns, having run it in both directions for long enough that the district treats the outbound half as common knowledge."
```

---

## Common Knowledge (Section 20.1 — established, not restated per scene)

Alexander holds the common knowledge of a licensed hunter one week into his career: Gates open continuously across the metro (~35/week in Chicago), most are E or D-Rank, an assessed Rank carries a stated confidence (confirmed vs. unconfirmed), a Gate left past its break timer breaks and its remaining population pours out, and death in a Gate is final — there is no rescue clause the trade believes in. None of this is a secret; it is what BGM intake and a week of hearing other hunters talk have already taught him.

---

## Two World Facts Established by Test, 2026-08-06 (`EVT-000178`, `EVT-000180`)

Both are **Character Knowledge held by exactly two people**, unverified against BGM, the Coalition, the Menders' Association, or any published source. Neither has been reported, and reporting either would expose Alexander outright (Section 19). They are recorded here because each contradicts a belief the world holds as settled.

**An awakened can acquire a second ability.** Owen Callahan (`ENT-000139`) consumed an unbound-awakened System rune and now holds Stone Skin [D-Rank] alongside his mending. His own account of BGM intake at twenty-two — and, he states, the universal account — is that an awakened's gift is fixed, singular, and permanent, that this is stated as fact at intake, and that **nobody has ever received another**. The mechanism is not a world mechanism at all: it is System instruction, which exists only because Alexander does. What the world believes is not wrong about the world; it is simply describing a world in which the System has no Bearer.

**A System Mana potion restores an awakened non-Bearer's expended capacity, in full and immediately.** Established under fire in a private instance when Owen, roughly two-thirds spent, drank a Standard Mana Potion and returned to full. His stated position, as a working C-Rank mender of five years' licence: capacity returns overnight or across a day, never in a swallow, and this is **the one hard constraint on the entire mending profession** — the reason a clear budgets four or five patients, the reason crews ration their mender, the reason severity triage exists at all. Nobody has tested otherwise because the potions have no supply channel outside the System (Profile Section 12.5) and no one outside the Bearer can withdraw one.

---

## A World Fact Learned by Confrontation, 2026-08-14 (`EVT-000345`)

**Character Knowledge, held by Alexander and, as of the confrontation, by Wade Bishop.** Not reported to any authority.

**Ironline staffs its guild-held B-Rank Gates below the actual legal minimum, not merely below the trade's own posting floor.** Profile Section 9.4 sets the legal minimum for a B-Rank Gate at 8 combat-rated hunters (including at least one B-Rank); the posting floor most crews actually staff to sits higher still, at 14–18 total including support. Today's confirmed B-Rank harvest trial ran with **4 combat-rated hunters** — half the legal floor, not merely under the trade's preferred number. This is a genuine prosecutable violation under Chicago and Cook County hunter-licensing law, not a safety-culture complaint. Wade Bishop confirmed it outright when confronted rather than disputing the count, and confirmed that adding Alexander to the roster after the close would only reach 5 — still short of the legal floor, and itself a falsified after-the-fact roster edit if filed that way. Whether Brannigan's office or anyone above Wade already knew the roster was short, and whether this is an isolated trial-day shortcut or a wider pattern in how Ironline staffs its own guild-held Gates, is unestablished and a live thread.

**The pattern question is answered, 2026-08-14 22:00 (`EVT-000384`) — it is routine, and it has a mechanism.** What `EVT-000345` left as "isolated shortcut or wider pattern, unestablished" is now established by Wade Bishop directly, unprompted, while handing Alexander the unfiled report.

**Ironline's Region V office keeps a bench roster of real hunters who are not there.** When a job runs short, Brannigan's office fills the filing with names off that bench — people who hold genuine B-Rank cards and were never on site. The 2026-08-14 trial was filed as **eight combat-rated hunters against five actually present**, padded with **Priyanka Osei, Marcus Delray, and Toby Fenwick**. Wade's account, in his own words: it is how a light crew has always been filed, and **nobody checks unless someone dies.** So the violation at `EVT-000345` is not a trial-day lapse — it is standard practice with a standing administrative mechanism behind it, and the legal minimum is satisfied on paper by construction rather than by staffing.

**Wade will not be changing it and said so.** Asked directly whether he would keep sending unprepared strangers into high-Rank Gates on this basis, he answered *probably* — not his call, he recruits rather than sets staffing policy, and **he has never once refused a job because the roster was thin.** He offered no claim to be fighting it from inside.

**And the practice has a body count he named on request.** Three hunters Wade personally recruited and signed have died in about six years: two on a single B-Rank posting eighteen months ago, the same coordination failure as the trial with worse luck, and one three years ago alone on a D-Rank job under a waiver he says he should have refused. This is **his own count of his own recruits**, not Ironline's total, and nothing establishes the guild-wide figure.

**Who holds this, and what changed materially.** Still Character Knowledge held by Alexander and Wade alone, unreported. **What is new is that Alexander physically holds the unfiled report** (`EVT-000384`, banked in the dimensional inventory) — documentary evidence of the falsified roster rather than a confrontation both men could later describe differently. Whether Wade can still file without it was never raised by either of them. Bears directly on `OBJ-23`, `OBJ-27`, and `OBJ-28`.

**Standing implications, none acted on.** A mender who can be refilled mid-clear is a different unit than the world's entire practice assumes, and it bears directly on `OBJ-12` (a crew led by Owen) and `OBJ-18` (enlarging his well — this does not widen the pool, but it multiplies the day's output against nothing but Alexander's gold). It is also a live exposure thread in a new form: **Owen is now carrying the evidence in his own body**, and Renata Silva (`ENT-000138`) reads people professionally and has an unanswered *who are you, exactly?* already on the table.

---

## A World Fact Established by a Closed Door, 2026-08-14 (`EVT-000352`, `EVT-000353`)

**Character Knowledge, held by Alexander and — in the first half only — by Walt Adamik.** Not reported to any authority; there is nothing yet concrete enough to report.

**The CONSULT operation is something the grey market is afraid to be asked about.** Walt Adamik put the word to a supplier contact of thirty years' standing, with nothing attached but "temp badge," and was told to lose the number if he ever said it again — **frightened rather than annoyed**, in Walt's own reading, and the call cut before any follow-up. Walt has never heard that man sound like that over a name, in thirty years of a trade that deals in things people would rather not discuss. This establishes nothing about who runs the operation or what it does; it establishes that **the ordinary grey-market information channel has closed against the question**, which is itself a measure of what is being protected. It is an unverified secondhand read of one man's fear (Decision 060) — it proves the fear, not its cause.

**The operation has a physical seat on Loomis Street, and it is professionally protected.** One building on an otherwise unremarkable industrial block carries security that costs real money and is deliberately not advertised: **no signage of any kind** where every neighbouring unit advertises; camera placement covering every approach rather than the entrance; a stationary panel van opposite, engine cold, occupied. Established by a legendary Keen Sense read from the public street, which reads intent, posture, and method of concealment — **not contents**. What is inside is unestablished, and nothing at that address has perceived Alexander.

**Standing implications, none acted on.** This is the operation that took an interest in Marnie (`ENT-000189`) shortly before she went silent, and the second unsigned monitored space in the same thread — the first (`ENT-000192`, the dock) was entered unlawfully and successfully, which is precisely why the second is a harder decision rather than an easier one. Owen Callahan has already named the risk class out loud (`EVT-000334`): people organized enough to badge their own visitors are people who make others disappear. `ENT-000193` ("Who Runs the CONSULT Operation") remains an authored concealed-discovery record with no Hidden pointer attached.
