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
  source: EVT-000287
  game_date: "2026-08-11 ~12:00 -05:00"
  real_date: "2026-08-01"
role: canonical ledger
scope: campaign
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
| `GB-04` | Red Line Corridor (`ENT-000090`) | **Confirmed E-Rank** | 2026-08-05 | **midnight 2026-08-12** | 8, waiver floor 5 | **`posted`** — fresh, filling normally | Coalition freelance posting, on the board this morning. Still inside its window as of the current anchor; no pressure on it yet. |

**`GB-01` and `GB-02` are retired from live tracking** (Section 9.10: a break spends the Gate; the release is one-time, and nothing here is re-entered or re-tracked). `GB-03` is likewise retired, cleared. `GB-04` remains the board's one live posting — `tracked_postings: 1` as of `EVT-000270`.

**Neither break reached Alexander.** Both sites sit outside his current proximity and route (Section 8.4.2), so this is news the city absorbs off-screen; he has not been told and the System surfaces nothing (Section 14.4 unmoved, Section 9.10's own "not a summons" clause).

**Resolved, off-board (2026-08-11, `EVT-000261`-`EVT-000266`).** A confirmed E-Rank Gate — a collapsed rail cutting west of BGM Region V's jurisdiction — was never listed on this tracked board: Kesha Morrison identified it privately for Owen's sponsored two-person job (`OBJ-19`) rather than posting it publicly. Cleared the same morning; no longer live.

**What Alexander knows.** `GB-01` and `GB-04` are Coalition freelance postings he can read at the desk or on the board; `GB-02` and `GB-03` are BGM board listings public to any licensed hunter who checks. He has a standing order that no *crew* Gate precedes the 2026-08-09 training session — a constraint of his own making that covers Priya's crew, not a bar on his taking freelance work himself.

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

**A name surfaces, 2026-08-11 (`EVT-000287`): Cormant Holdings.** Bought as a grey-market lead from Elias Ward (`ENT-000177`) — 'keeps coming up near the cold-storage lot off the rail spur, nobody says why' — and independently corroborated in the same vein by Petra at Ferro's Reclamation (`ENT-000150`), who named it as adjacent to 'two other things that never quite lined up before.' Alexander's own read (partial success, Intelligence-governed) is fairly confident this matches the unidentified lanyard logo from the 2026-08-06 sighting, but he cannot confirm from what he holds whether Cormant Holdings is the same entity that filed Meridian Cold Storage LLC or a separate piece of the same operation — the Suite 14 filing names a formation agent, not a company. Real progress, not resolution: a name where there was only a logo, still short of identifying the owner or the operation's purpose."
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
  claim: "The fenced warehouse (`ENT-000166`) houses something requiring real capital, active security, and stable environmental conditions — not ordinary auto-shop storage. Its registered operator is a shell entity, **Meridian Cold Storage LLC**, filed through a corporate formation mill with no traceable owner behind it. Who actually owns it, what it holds, and why it needs climate control remain unestablished."
  anchor: ENT-000166
  concealment: "The operation gives away nothing overt — no signage, no visible traffic — and its only trace is the physical investment in keeping conditions stable, which reads as anomalous only to someone who stops to compare it against its neighbors. The shell-company structure adds a second, deliberate layer: even a name traced to the property terminates at a formation service, not a person."
  proximity_condition: "Gaining entry past the keypad gate, or directly questioning a confirmed employee or owner."
  clue_condition: "**Met, 2026-08-06 (`EVT-000188`)** — identified Titan Secure as the keypad/fence servicer, and directly observed a delivery in person."
  reveal_condition: "The Bearer establishes who owns or operates the warehouse and what it is actually used for. **Partially met**: the LLC name and shell structure are established (`EVT-000189`); the true owner and the warehouse's actual purpose are not — resolution_depth below still gates this."
  objective: "Identify the warehouse's owner or operator and its true purpose."
  completion_condition: "The owner or operator identified first-hand, with the warehouse's true use established."
  failure_or_expiry: "No expiry. A standing, low-visibility lead rather than a deadline."
  resolution_depth: "surface — the warehouse's true purpose is an owner ruling and is not authored here."
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

**Standing implications, none acted on.** A mender who can be refilled mid-clear is a different unit than the world's entire practice assumes, and it bears directly on `OBJ-12` (a crew led by Owen) and `OBJ-18` (enlarging his well — this does not widen the pool, but it multiplies the day's output against nothing but Alexander's gold). It is also a live exposure thread in a new form: **Owen is now carrying the evidence in his own body**, and Renata Silva (`ENT-000138`) reads people professionally and has an unanswered *who are you, exactly?* already on the table.
