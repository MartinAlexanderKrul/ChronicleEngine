# Institution Ledger — Ironline Guild

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** Active — instantiated as canonical world content (2026-07-22).

---

## Record

```yaml
id: REC-000065
canonical_record: REC-000065
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000101
```

---

## Ironline Guild

Ironline Guild built itself as the workingman's answer to Horizon Guild — a blue-collar, aggressively recruiting outfit that made its name showing up on the Red Line Corridor (ENT-000090) where the majors don't bother bidding. It runs Chicago's low-rank contract floor on volume: E- and D-grade clears, folding-table staging points, hand-lettered contract sheets, and a pitch that every newly licensed hunter in the city has heard within their first month — Horizon won't return your calls; Ironline already knows your name.

### Interior Factions

**The Floor** — veteran organizers and recruiters who built Ironline's identity from the ground up: profit-sharing on contract wins, safety pooling for low-rank parties, and a guild culture that treats an E-rank as a colleague, not a line item. They see the guild's populism as the whole point.

**Ironline Capital** — the ownership and financial-backing side, increasingly hungry to professionalize, chase bigger contracts, and eventually make the same jump to public markets Horizon made in 2019. They see the Floor's culture as a recruiting asset worth keeping, but not one worth protecting at the cost of margin.

Every contract negotiation inside Ironline runs through this fault line — how much of what makes the guild work for its rank and file gets sacrificed to make it competitive against Horizon on paper.

### What They Control

The bulk of recruiting traffic and a large share of freelance-adjacent parties along the Red Line Corridor (ENT-000090); a growing bench of E- and D-rank hunters developed in-house rather than poached; the low end of the contract-auction volume the majors leave on the table.

### What They Want

To keep pulling promising low-ranks out of Horizon's shadow before Horizon notices they exist, to grow its share of the mid-tier contract market without losing the loyalty that makes its recruiting pitch work, and — for Ironline Capital at least — to eventually be taken seriously as a second public-market guild.

### Current Tensions

The recruiting war against Horizon Guild (ENT-000100) is Ironline's whole strategy and its whole risk: every hunter it pulls in is a small, public embarrassment for Horizon's pipeline, and every one who later gets poached back by a bigger Horizon offer is a reminder that loyalty alone doesn't outbid a trophy wall. Inside the guild, Ironline Capital keeps pushing to cut the profit-sharing terms the Floor considers non-negotiable, arguing the guild can't out-invest Horizon without the margin those terms are currently eating.

```yaml
id: ENT-000101
canonical_record: REC-000065
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "Ironline Guild"
    quality: current
canonical_state:
  governance_structure: "A guild ownership group (Ironline Capital) operating over an elected shop-floor leadership tier (the Floor); no fixed headquarters building — Ironline stages out of the Red Line Corridor (ENT-000090) rather than a tower."
  doctrine_goals: "Recruit and develop the low-rank hunters Horizon Guild overlooks, win a growing share of Chicago's contract volume, and prove the blue-collar model can compete with corporate guild capitalism."
  knowledge_stance: "Publicizes its recruiting numbers and win rate against Horizon aggressively; keeps its own contract-payout and profit-sharing terms close, since undercutting Horizon on loyalty depends on Horizon not knowing exactly what it is offering."
```
