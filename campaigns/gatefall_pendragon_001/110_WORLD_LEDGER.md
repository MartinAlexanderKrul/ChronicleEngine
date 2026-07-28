# World Ledger - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8) holding the protagonist's Knowledge States and the campaign's view of world state.

This ledger records what is visible and accessible to the campaign. It references authoritative Gatefall records; it does not duplicate objective world canon. Objective reality is owned by the world-layer records cited below and is never restated here as a campaign fact.

---

## Record

```yaml
id: REC-000075
canonical_record: REC-000075
schema_version: "0.1.5"
status: active
provenance:
  source: EVT-000159
  game_date: "2026-08-05 ~12:15 -05:00"
  real_date: "2026-07-28"
role: canonical ledger
scope: campaign
subjects:
  - REL-000062
  - ENT-000161
  - ENT-000162
  - ENT-000163
  - REL-000084
  - REL-000085
  - REL-000086
```

```yaml
id: REL-000062
canonical_record: REC-000075
schema_version: "0.1.5"
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

## Campaign-Scope Concealed Discoveries (Profile Section 8.4.5)

Campaign-scope `concealed-discovery` records, anchored on entities this campaign created. They carry the complete field contract Profile Section 8.4.5 requires and Section 8.4.3 consumes. World-scope discoveries live in `worlds/gatefall/230_KNOWLEDGE_SUBJECTS.md`; these three are promotions of threads this campaign's own fiction produced, authored at `EVT-000159` under the promotion ritual.

**None of these attaches a pointer at adoption.** Each `proximity_condition` below is deliberately forward-looking — an action Alexander has not yet taken. The fourteen in-fiction days already played are not re-audited, per the Profile 1.26 → 1.27 compatibility treatment.

These records are owner-facing. A Runtime never renders one, and an attached pointer shows `???` and nothing else.

### ENT-000161 — The pawnbroker's use for high-Rank cores

```yaml
id: ENT-000161
canonical_record: REC-000075
schema_version: "0.1.5"
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
schema_version: "0.1.5"
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
schema_version: "0.1.5"
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

### Holder Knowledge States

```yaml
id: REL-000084
canonical_record: REC-000075
schema_version: "0.1.5"
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
schema_version: "0.1.5"
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
schema_version: "0.1.5"
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
