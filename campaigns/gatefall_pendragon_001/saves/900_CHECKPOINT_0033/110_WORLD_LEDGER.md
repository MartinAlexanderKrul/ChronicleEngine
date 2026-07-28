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
  source: EVT-000157
  game_date: "2026-08-05 ~12:15 -05:00"
  real_date: "2026-07-28"
role: canonical ledger
scope: campaign
subjects:
  - REL-000062
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

## Common Knowledge (Section 20.1 — established, not restated per scene)

Alexander holds the common knowledge of a licensed hunter one week into his career: Gates open continuously across the metro (~35/week in Chicago), most are E or D-Rank, an assessed Rank carries a stated confidence (confirmed vs. unconfirmed), a Gate left past its break timer breaks and its remaining population pours out, and death in a Gate is final — there is no rescue clause the trade believes in. None of this is a secret; it is what BGM intake and a week of hearing other hunters talk have already taught him.
