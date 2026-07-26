# World Ledger - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** Canonical Record (`011` Section 8) holding the protagonist's Knowledge States and the campaign's view of world state.

This ledger records what is visible and accessible to the campaign. It references authoritative Gatefall records; it does not duplicate objective world canon. Objective reality is owned by the world-layer records cited below and is never restated here as a campaign fact.

---

## Record

```yaml
id: REC-000075
canonical_record: REC-000075
schema_version: "0.1.4"
status: active
provenance:
  source: EVT-000111
  game_date: "2026-08-02 morning"
  real_date: "2026-07-26T16:11:36+02:00"
role: canonical ledger
scope: campaign
subjects:
  - REL-000062
```

```yaml
id: REL-000062
canonical_record: REC-000075
schema_version: "0.1.4"
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

Not visible to Alexander at start: BGM Region V's internal Ranking Bench field notes flagging the Red Line Gate's mana-pressure curve as climbing faster than a true D (`EVT-000051`'s non-public detail), and the identities or agendas of any of Gatefall's notable figures beyond ordinary public reputation.

**Update, 2026-07-24 (`EVT-000059`):** The System attached to Alexander mid-clear, inside the Red Line Corridor Gate — see `100_CHARACTER_SHEET.md`'s `system_state`. This changes nothing about what is *publicly* known (the row below still holds: the System does not publicly exist, and nothing about Earth's or Gatefall's common knowledge has changed), but it is no longer true that Alexander has nothing System-side to know — he is now the world's first and only Bearer, a fact perceptible to him alone (Profile Section 14.4) and unknown to his crew, the Coalition, or anyone else.

---

## Common Knowledge (Section 20.1 — established, not restated per scene)

Alexander holds the common knowledge of a licensed hunter one week into his career: Gates open continuously across the metro (~35/week in Chicago), most are E or D-Rank, an assessed Rank carries a stated confidence (confirmed vs. unconfirmed), a Gate left past its break timer breaks and its remaining population pours out, and death in a Gate is final — there is no rescue clause the trade believes in. None of this is a secret; it is what BGM intake and a week of hearing other hunters talk have already taught him.
