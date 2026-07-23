# Institution Ledger — Horizon Guild

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** Active — instantiated as canonical world content (2026-07-22).

---

## Record

```yaml
id: REC-000064
canonical_record: REC-000064
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000100
```

---

## Horizon Guild

Horizon Guild is Chicago's top-tier hunter guild and one of the small handful of clearance corporations, publicly traded, that dominate the American Gate economy. It incorporated in 2019, the same year the BGM stood up the clearance-contract auction system, and it has spent the years since building the model every other major now copies: a trophy floor of appraisal-tagged cores in the lobby of Horizon Tower (ENT-000092), quarterly investor calls, and a drafted S-rank ace whose contract terms make the sports pages. It fields one of Chicago's two resident S-ranks and treats that fact as the whole of its brand.

### Interior Factions

**Investor Relations** — the corporate command structure that answers to shareholders first. It wants the ace visible, the trophy wall growing, and every contract win timed to land before the next earnings call.

**The Ace's Circle** — the S-rank's personal trainers, handlers, and inner staff, whose job is keeping the one asset Horizon cannot replace alive, sharp, and un-burned-out. They fight Investor Relations over every prestige contract that reads better on a press release than it does on a risk assessment.

The two sides have never had it out publicly, but everyone inside Horizon Tower's upper floors knows the pattern: Investor Relations proposes a marquee clear, and the Ace's Circle quietly makes the case for who else could take it instead.

### What They Control

Horizon Tower (ENT-000092) and everything above its public lobby — the contract negotiation suites, the internal grading lab, and the ace's private training level; the largest single share of Chicago's high-grade clearance contracts; a recruitment pipeline that skims the most promising newly measured awakened before Ironline or the Coalition ever hear their names.

### What They Want

To keep winning the contracts that keep the stock price and the investor calls healthy, to keep its ace from ever being poached the way Zenith Group poaches talent in Europe, and to hold its position as the guild every ambitious hunter in Chicago measures themselves against — including the ones Ironline is actively trying to recruit away from it.

### Current Tensions

Ironline Guild (ENT-000101) has built its entire recruiting pitch around showing up exactly where Horizon doesn't bother — the Red Line Corridor's (ENT-000090) low-rank contract floor — and picking off E- and D-ranks Horizon considers beneath its brand but that Ironline is happy to develop. Investor Relations is starting to argue Horizon needs a populist counter-offer of its own before the pipeline dries up; the Ace's Circle thinks chasing Ironline's audience would cheapen the brand that makes the ace worth having in the first place.

```yaml
id: ENT-000100
canonical_record: REC-000064
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Institution
scope: world
lifecycle: active
aliases:
  - name: "Horizon Guild"
    quality: current
canonical_state:
  governance_structure: "A publicly traded corporate guild governed by a board and executive command (Investor Relations) answering to shareholders, headquartered at Horizon Tower (ENT-000092) in the Loop, Chicago (ENT-000087); operates a wholly distinct European branch, Horizon Guild — Europe (ENT-000105), under separate regional leadership and separate books."
  doctrine_goals: "Win the city's highest-grade clearance contracts, protect and publicize its drafted S-rank ace, and maintain market dominance over Ironline Guild and the freelance floor beneath it."
  knowledge_stance: "Publicizes clears and grades that build the trophy wall and the investor narrative; keeps contract losses, near-misses, and internal risk assessments strictly off the record."
```
