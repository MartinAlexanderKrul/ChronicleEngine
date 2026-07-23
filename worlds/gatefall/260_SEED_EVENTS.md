# Seed Events — Gatefall

**Ledger:** Canonical Record (`011` Section 8) holding five Events established as already having happened, or as currently in motion, by Gatefall's world-start (2026-07-22) — two in Chicago, two in Prague, one global. Events are immutable once instantiated; other records cite them as `source`.

**Status:** Active — instantiated as canonical world content (2026-07-22).

Each event states what is settled as **canon by world-start**, not a future plot beat a Runtime is obligated to trigger. Each is written to give a session-one Runtime a live hook that needs no OOC ruling to use: a contract on the board, an open institutional fight, a re-grading pattern regulators can't explain, a favored bid, a public statistic nobody in authority will account for. None resolves an uncertain outcome that belongs to the die (`010_ENGINE_RULES.md` Section 4) — where a fact depends on a future roll (a Gate's exact true grade on entry, per `206_WORLD_RULE_PROFILE.md` Section 9.5), this ledger records only what is established up to that point, never the roll itself.

The global seed (`EVT-000055`) is written to be consistent with, and never to quote or paraphrase, `200_WORLD_BIBLE.md` Section 9 (OWNER EYES ONLY). It states only what `200_WORLD_BIBLE.md` Section 7's "regulators and guild masters" tier already establishes as known — that the break rate is not merely rising but accelerating on a steepening curve — and no more.

---

## Record

```yaml
id: REC-000073
canonical_record: REC-000073
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - EVT-000051
  - EVT-000052
  - EVT-000053
  - EVT-000054
  - EVT-000055
```

---

## The Red Line Reading

A clearance contract BGM Region V posted for a Red Line Corridor detection reads worse than its published label.

```yaml
id: EVT-000051
canonical_record: REC-000073
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-07-18"
  record_time: "2026-07-22T00:00:00Z"
type: Event
kind: detection
importance: immediate
event_time: "2026-07-18"
participants:
  - ENT-000090
  - ENT-000099
description: "BGM Region V (ENT-000099) detects and posts a clearance contract for a Gate in the Red Line Corridor (ENT-000090), assessed unconfirmed D on the published grade card. The Grading Bench's internal field notes log a mana-pressure curve climbing faster over the following days than a true D typically shows — a pattern the Bench has flagged informally more than once this year without funding for a second survey (the office's confidence-band practice under current staffing pressure is established institutional canon at BGM Region V's own ledger). The contract is not escalated, re-surveyed, or pulled from the board. As of world-start it remains open, undersubscribed at Red Line rates, its true grade untested by entry: an unconfirmed D reading with internal signals suggesting the Gate is worse than posted, resolvable only on first entry (Section 9.5) by whichever party takes the contract next."
```

---

## The Auction War

Ironline Guild's recruiting war against Horizon Guild has moved from the hiring floor to the clearance-contract auction itself.

```yaml
id: EVT-000052
canonical_record: REC-000073
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-06-10"
  record_time: "2026-07-22T00:00:00Z"
type: Event
kind: escalation
importance: immediate
event_time: "2026-06-10"
participants:
  - ENT-000099
  - ENT-000100
  - ENT-000101
description: "Over the preceding auction cycles, Ironline Guild (ENT-000101), backed by Ironline Capital's push to be taken seriously as a competitor rather than a farm league, begins contesting mid-tier D- and C-grade contracts it had previously conceded to Horizon Guild (ENT-000100) without a bid — not for the payout, which barely covers the premium it now pays to win them, but to put its in-house-developed hunters on contracts visible enough to embarrass Horizon's recruiting pipeline in front of the same freelancers Horizon courts. Horizon's Investor Relations faction has begun arguing internally for a populist counter-bid strategy of its own, over the Ace's Circle's objection that it cheapens the brand. BGM Region V's Auction Desk (ENT-000099), regulatory rather than a combatant, now runs an auction floor both guilds are visibly fighting over on every mid-tier lot, a dynamic the Region V office's own ledger records as straining its claim to neutrality. As of world-start the pattern is established and ongoing, not a single incident: a hunter bidding into a Red Line-adjacent contract this month bids into a fight between two guilds that is no longer only about who they hire."
```

---

## The Old Town Climb

A specific Old Town Gate Cluster detection has been re-graded upward twice within one contract cycle, and no amended survey explains why.

```yaml
id: EVT-000053
canonical_record: REC-000073
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-05-02"
  record_time: "2026-07-22T00:00:00Z"
type: Event
kind: re-grading
importance: immediate
event_time: "2026-05-02"
participants:
  - ENT-000094
  - ENT-000103
  - ENT-000104
description: "A single Gate detection inside the Old Town Gate Cluster (ENT-000094), first posted at D confidence-confirmed by the CGA's (ENT-000103) instrumented survey, is re-graded upward to C three weeks later on a routine pre-clearance re-survey required by the cluster's heritage-clearance procedure — and then re-graded upward again, to B, on the follow-up survey scheduled to confirm the C reading, before Karlov Guild (ENT-000104), the contract holder, has moved to clear it. Two upward re-gradings on one Gate inside a single contract cycle is outside anything the CGA's own confidence models predict, and no surveyor's amended report offers a mechanism — mana-pressure readings simply come back higher each pass, on instruments the agency otherwise trusts completely. The same surveys that read the pressure climbing read the Gate's break-countdown signature receding: a detection first posted at D on 2026-05-02 that should have broken inside six days (Section 9.3) instead sits months past that window with its clock reading further from break on each pass, outside every timer model the agency holds — the stated reason on the record that the CGA has not forced an emergency clearance. The CGA has not paused the contract, escalated it publicly, or explained the climb; Karlov continues to hold it, at a grade it did not bid on, as of world-start."
```

---

## The Karlov Tilt

The CGA has begun favoring Karlov Guild in discretionary contract calls specifically because Karlov holds Tereza Blažková's standing contract, and a recent award makes the tilt concrete.

```yaml
id: EVT-000054
canonical_record: REC-000073
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-06-25"
  record_time: "2026-07-22T00:00:00Z"
type: Event
kind: allocation
importance: immediate
event_time: "2026-06-25"
participants:
  - ENT-000103
  - ENT-000104
  - ENT-000105
  - ENT-000114
description: "On a discretionary heritage-clearance contract inside Prague's protected core, the CGA (ENT-000103) awards the clearance to Karlov Guild (ENT-000104), at the urging of its Retention Office — the agency's S-rank liaison desk — over a materially stronger bid from Horizon Guild — Europe (ENT-000105) — more capital, a deeper bench, and a faster committed timeline — citing non-destructive doctrine and continuity of institutional relationship in the published rationale, neither of which was decisive on comparable contracts before this year. Brandhof and Zenith Group's parallel approaches to Karlov's clients and staff continue unaffected by this single award, but Horizon Europe's Prague branch reads the result correctly: the CGA is not grading strictly on price and capability anymore, and the reason underneath the published rationale is the one nobody at the CGA will say aloud — that Karlov currently holds the standing contract of the nation's sole S-rank, Tereza Blažková (ENT-000114), and the agency's entire retention strategy runs on her staying exactly where she is. The three-way foreign siege on Karlov continues in full as of world-start; this is the established first instance of the CGA's thumb visibly on the scale."
```

---

## The Steepening Curve

Regulators worldwide have quietly confirmed the break rate is not merely climbing but accelerating, and no agency will put a cause on the record.

```yaml
id: EVT-000055
canonical_record: REC-000073
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-07-01"
  record_time: "2026-07-22T00:00:00Z"
type: Event
kind: briefing
importance: immediate
event_time: "2026-07-01"
participants:
  - ENT-000099
  - ENT-000103
  - ENT-000107
  - ENT-000113
description: "In closed session, the BGM and the European Gate Council brief their own regional directors — among them Naomi Okafor of BGM Region V (ENT-000107) and, through the CGA, Miloš Beran (ENT-000113) — that the worldwide dungeon-break rate is not rising on a simple upward trend but accelerating on a steepening curve, year over year, with no causal mechanism any attending agency can put in writing. No public statement follows; the figures stay regulator-tier knowledge (`200_WORLD_BIBLE.md` Section 7), exactly as the world's common-knowledge tiers already establish citizens and licensed hunters do not have them. Both directors independently hold supporting evidence they have not connected to each other or escalated further: Okafor sits on incident logs from anomalous local clears she has kept off the record, and Beran has seen an analyst's chart out of the Libeň Scar (ENT-000096) plotting the same acceleration regionally before its author stopped taking calls. As of world-start the statistic is confirmed at the regulator tier, unexplained, and unpublished — the single fact every closed-door emergency session in 2026 keeps returning to without ever resolving."
```
