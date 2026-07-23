# Institution Ledger — Horizon Guild — Europe

**Ledger:** Canonical Record (`011` Section 8) holding one Institution entity and its rivalry relationship with Karlov Guild.
**Status:** Active — instantiated as canonical world content (2026-07-22).

---

## Record

```yaml
id: REC-000069
canonical_record: REC-000069
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000105
  - REL-000051
```

---

## Horizon Guild — Europe

Horizon Guild — Europe is the American major's continental arm: well-funded by its parent, resented across the cities it enters as a foreign intrusion, and steadily hiring away local talent wherever it sets up a branch. Its Prague branch is the single institutional thread the setting runs between Chicago and Prague — the same guild whose Chicago tower anchors one side of the Atlantic, reaching for a foothold on the other. It is a wholly separate entity from Horizon Guild (ENT-000100) in every operational sense: separate leadership, separate books, separate ace roster, sharing only a name, a doctrine, and a parent balance sheet.

### Interior Factions

**The Prague Expansion Team** — the branch staff on the ground, aggressively hiring, aggressively bidding, treating every Karlov Guild contract and every promising Czech hunter as a legitimate target.

**Continental Command** — the branch's senior European leadership, based where the larger, denser markets are, wary of spending political capital and reputation on a small country's beloved local guild when Germany and France offer bigger, less resented wins.

The Prague Expansion Team wants to keep pushing while Karlov is vulnerable; Continental Command keeps asking whether picking a fight with the CGA's favorite guild over one small market is worth what it costs everywhere else Horizon Europe operates.

### What They Control

A growing roster of Prague-based hunters hired away from Karlov Guild and other local outfits; full access to Horizon's American training doctrine, appraisal standards, and financial backing; a foothold in the Old Town Gate Cluster's (ENT-000094) heritage-clearance market it is still working to make credible.

### What They Want

To convert its Prague hiring spree into a self-sustaining continental presence and, ideally, a marquee CGA contract that proves it belongs in the city's top tier; to do it without becoming so resented that the CGA starts quietly favoring Karlov Guild (ENT-000104) on every close call.

### Current Tensions

Its rivalry with Karlov Guild (ENT-000104) is open and structural — Horizon Europe is the best-funded of the three foreign guilds courting Karlov's contracts and staff, and the one whose Prague office actually lives in the city year-round rather than flying in for a bid. That proximity is also the risk: Brandhof and Zenith Group can lose a Czech contract and shrug it off from Frankfurt or London, but Horizon Europe's Prague branch has staked its own credibility on winning here, which makes every loss to Karlov personal in a way it isn't for its foreign competitors.

```yaml
id: ENT-000105
canonical_record: REC-000069
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
  - name: "Horizon Guild — Europe"
    quality: current
  - name: "Horizon Europe"
    quality: current
relationships:
  - REL-000051
canonical_state:
  governance_structure: "A regional branch of the publicly traded American parent Horizon Guild (ENT-000100), under its own Continental Command rather than Chicago's executive structure; its Prague office (the Prague Expansion Team) operates out of leased space in the city rather than a dedicated tower."
  doctrine_goals: "Establish a self-sustaining European hunter business by hiring aggressively into markets like Prague, competing for the continent's hardest contracts, and eventually matching Brandhof and Zenith Group's cross-border reach."
  knowledge_stance: "Draws on the American parent's appraisal and training doctrine as proprietary advantage; keeps its own hiring targets and bid strategy against Karlov Guild close, aware that its reputation as a foreign intrusion is a live liability rather than a solved problem."
```

---

## REL-000051 — Rivalry: Horizon Guild — Europe and Karlov Guild

```yaml
id: REL-000051
canonical_record: REC-000069
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
endpoints:
  - ENT-000105
  - ENT-000104
type: rivalry
qualities: "Open competition for Prague's Gate-clearance contracts, clients, and hunter talent; asymmetric — Horizon Europe outspends Karlov on every hard contract, while Karlov outlasts it on trust and municipal relationships. One front of the wider three-way foreign courtship of Karlov's position, alongside Brandhof and Zenith Group."
state: "Active and escalating; Horizon Europe's Prague branch is steadily hiring away Karlov's staff, while Karlov continues to win heritage-sensitive contracts on relationship rather than price."
history: "Emerged as Horizon Guild — Europe built out its Prague branch following the 2018 license-reciprocity treaty that made Europe's hunter economy transnational; sharpened as Horizon Europe's hiring accelerated against a Karlov Guild already contending with Brandhof's and Zenith Group's separate approaches."
```
