# Institution Ledger — Czech Gate Administration

**Ledger:** Canonical Record (`011` Section 8) holding one Institution entity and its governance relationship to Prague.
**Status:** Active — instantiated as canonical world content (2026-07-22).

---

## Record

```yaml
id: REC-000067
canonical_record: REC-000067
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000103
  - REL-000050
```

---

## Czech Gate Administration

The Czech Gate Administration is the small national agency that grades, licenses, and regulates every Gate in the Czech Republic, operating under the European Gate Council's coordination but answering to no one outside Prague for its own decisions. It works out of a government building in central Prague, CGA Headquarters (ENT-000098) — smaller, older, and more tired-looking than its American counterpart, and everyone who works there will tell you the budget shows. Underfunded and proud, the CGA's entire institutional posture is shaped by one fact: the country has exactly one S-rank hunter, measured in 2023, and the agency has organized itself around keeping that person home.

### Interior Factions

**The Retention Office** — the small, closely guarded liaison desk upstairs whose sole job is managing the national S-rank: which postings they'll take, which guilds they'll be lent to, and how hard to push back when Zenith Group comes calling with money the CGA can never match. It gets first call on whatever discretionary budget exists.

**The Grading Corps** — the career licensing and appraisal staff who grade the country's Gates and process its roughly 800 licensed hunters, and who increasingly resent that so much of the agency's limited money and political capital goes to protecting one person while their own understaffed counters run a longer line every year.

The disagreement rarely surfaces in public, because the Grading Corps knows exactly how much the agency's whole strategy depends on the S-rank staying — but every budget cycle reopens it privately.

### What They Control

National Gate licensing and grading for the entire Czech Republic; CGA Headquarters (ENT-000098) and its restricted S-rank liaison office; the heritage-clearance legal regime that governs every Gate cleared inside Prague's UNESCO-protected historic center.

### What They Want

To keep the country's one S-rank from ever taking a permanent posting abroad, whatever that costs in favors, budget, and quiet political bending; to keep Karlov Guild (ENT-000104) — the local guild the CGA can actually lean on — solvent enough to keep winning contracts against Brandhof, Zenith Group, and Horizon Guild — Europe (ENT-000105); to avoid a heritage-clearance disaster in the historic center that would hand foreign guilds an argument for taking over Czech Gates outright.

### Current Tensions

Every CGA policy in Prague is downstream of the anxiety that the S-rank could leave, and it shows in ways the licensed hunter community notices even without being told the details — favorable postings, unusually generous CGA support for whichever contract the S-rank is attached to, and a Grading Corps that stays chronically thin everywhere else. The agency also watches the three-way foreign courtship of Karlov Guild — Horizon Guild — Europe circling hardest, with Brandhof and Zenith Group also in the running — as a preview of exactly the leverage foreign money could someday bring to bear on its own S-rank.

```yaml
id: ENT-000103
canonical_record: REC-000067
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
  - name: "Czech Gate Administration"
    quality: current
  - name: "CGA"
    quality: current
relationships:
  - REL-000050
canonical_state:
  governance_structure: "A national agency under the European Gate Council's coordination, with a public licensing and grading service (the Grading Corps) alongside a small, restricted S-rank liaison office (the Retention Office); headquartered at CGA Headquarters (ENT-000098) in central Prague (ENT-000088)."
  doctrine_goals: "License and grade every Gate and hunter in the Czech Republic, uphold the heritage-clearance duty inside Prague's historic center, and above all keep the nation's sole S-rank from being drawn abroad."
  knowledge_stance: "Holds the true, unpublished diplomatic cost of borrowing or lending its S-rank across a border as its most closely guarded knowledge; publishes grading and licensing data like any regulator, but the liaison office's negotiations never appear in any public record."
```

---

## REL-000050 — Governance: Czech Gate Administration over Prague (Gate and hunter matters)

```yaml
id: REL-000050
canonical_record: REC-000067
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
endpoints:
  - ENT-000103
  - ENT-000088
type: governance
qualities: "National regulatory jurisdiction over Gate detection, grading, licensing, and the heritage-clearance regime within Prague and the Czech Republic; legitimacy band: Stable, though chronically resource-strained. Municipal government retains ordinary civil matters."
state: "Active and unchallenged as a matter of law; publicly respected but privately anxious, its entire posture organized around retaining the country's one S-rank."
history: "Held since the CGA's 2017 founding, chartered the same year as the BGM in the aftermath of the first Gatefall-year emergencies."
```
