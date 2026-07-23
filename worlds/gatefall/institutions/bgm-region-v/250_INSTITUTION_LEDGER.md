# Institution Ledger — BGM Region V

**Ledger:** Canonical Record (`011` Section 8) holding one Institution entity and its governance relationship to Chicago.
**Status:** Active — instantiated as canonical world content (2026-07-22).

---

## Record

```yaml
id: REC-000063
canonical_record: REC-000063
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000099
  - REL-000049
```

---

## BGM Region V

BGM Region V is the regional field arm of the federal Bureau of Gate Management, the agency chartered in 2017 in the aftermath of the Damen Avenue Break to bring Gate detection, licensing, and clearance contracting under uniform federal law. Region V covers the upper Midwest; its authority runs the full stack — licensing every awakened who wants to enter a Gate, grading every detection at a confidence the field lives or dies by, running the clearance-contract auction that decides who clears what, and prosecuting the undeclared loot and unlicensed entries its enforcement desk can actually make time for. It works out of the BGM Region V Field Office (ENT-000093) near the Loop in Chicago (ENT-000087), and every hunter in the city has stood in one of its licensing lines.

### Interior Factions

**The Grading Bench** — the career appraisers who read a Gate's mana pressure and set its published grade and confidence. They remember the mis-graded Gates that killed hunters and treat a conservative confidence band as the only thing standing between a bad call and a body count.

**The Auction Desk** — the staff who run the clearance-contract auction, answer to the majors' lobbyists, and hear from City Hall every time a slow auction cadence backs up contracts across the district. They want grades turned around fast and confidence bands narrow enough that bidding guilds can plan around them.

The two offices share a hallway and disagree about almost everything downstream of one question: how long a grading crew gets to sit with an ambiguous reading before publishing it. With the worldwide break rate climbing every year since 2016 and showing no sign of leveling off, the argument has stopped being theoretical.

### What They Control

Every Gate detection, grade, and timer confidence published in the district; the licensing rolls for every awakened who wants to enter a Gate legally; the clearance-contract auction that decides which guild or freelancer clears which Gate, and at what payout; the evidence lockers and appraisal cells that make loot declaration and black-market enforcement possible at all.

### What They Want

To never again preside over a response failure the scale of the Damen Avenue Break — the incident every later protocol in the country was written against, and the one Region V's own founding is downstream of. Short of that, to keep the auction running smoothly enough that Horizon Guild (ENT-000100) and Ironline Guild (ENT-000101) both keep bidding in good faith, and to keep the Windy City Hunters Coalition (ENT-000102) from concluding the auction is rigged against anyone without a lobbyist.

### Current Tensions

The office is regulatory, not a combatant in the Ironline–Horizon recruiting war, but it is not neutral ground either: every contract either guild wins or loses at auction shapes who has the money to keep poaching hunters from the other, and Region V staff know it even when the rules forbid them from admitting it steers anything. Meanwhile the rising break rate is quietly straining both factions inside the office at once — the Grading Bench wants more time and more staff it doesn't have, and the Auction Desk is under growing pressure to keep contracts moving no matter how thin that leaves the confidence bands.

```yaml
id: ENT-000099
canonical_record: REC-000063
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
type: Institution
scope: regional
lifecycle: active
aliases:
  - name: "BGM Region V"
    quality: current
  - name: "the Region V office"
    quality: current
relationships:
  - REL-000049
canonical_state:
  governance_structure: "A regional director appointed by the federal Bureau of Gate Management, with separate Grading Bench and Auction Desk chains beneath them; headquartered at the BGM Region V Field Office (ENT-000093) near the Loop, Chicago (ENT-000087)."
  doctrine_goals: "License every awakened who enters a Gate, grade every detection with a defensible confidence, auction clearance contracts fairly among licensed guilds and freelancers, and prosecute the loot and licensing violations it has the staff to chase."
  knowledge_stance: "Holds the real, unpublished break-rate statistics and the full anomaly tables behind its confidence models as regulator-tier knowledge; the public grade card shows a number and a confidence, never the reasoning underneath it."
```

---

## REL-000049 — Governance: BGM Region V over Chicago (Gate and hunter matters)

```yaml
id: REL-000049
canonical_record: REC-000063
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
endpoints:
  - ENT-000099
  - ENT-000087
type: governance
qualities: "Federal regulatory jurisdiction over Gate detection, grading, licensing, and clearance-contract auctions within Chicago and the wider Region V district; legitimacy band: Stable but strained by rising break-rate pressure. Municipal government retains ordinary civil matters."
state: "Active and unchallenged as a matter of law; publicly trusted but increasingly tested as the break rate climbs year over year."
history: "Held since the BGM's 2017 charter, stood up in direct response to the Damen Avenue Break."
```
