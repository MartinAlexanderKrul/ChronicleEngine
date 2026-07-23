# Institution Ledger — Windy City Hunters Coalition

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** Active — instantiated as canonical world content (2026-07-22).

---

## Record

```yaml
id: REC-000066
canonical_record: REC-000066
schema_version: "0.1.1"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-22T00:00:00Z"
role: canonical ledger
scope: world
subjects:
  - ENT-000102
```

---

## Windy City Hunters Coalition

The Windy City Hunters Coalition is Chicago's freelance co-op — the floor a hunter with no guild and no name yet can stand on. It pools contracts, shares intel on which Gate's timer is closest and whose party still needs bodies, and runs its informal headquarters out of the food-truck row that has grown up around its usual staging point on the Lakefront Gate Corridor (ENT-000089); it also posts the bulk of the freelance work along the Red Line Corridor (ENT-000090), the same low-rank floor Ironline Guild recruits against.

### Interior Factions

**The Founders' Council** — the veteran freelancers who built the Coalition's intel-sharing discipline and safety vetting from scratch, and who treat its mutual-aid, non-commercial character as the reason it works at all.

**The Contract Slate** — newer, high-throughput members who think the Coalition needs to professionalize: dues, brokered contracts, maybe a formal desk at the BGM Region V auction, so freelancers stop losing bids to guilds with lobbyists.

The Founders' Council thinks the Contract Slate's plan turns the Coalition into a guild in everything but name; the Contract Slate thinks the Council's purism is going to leave freelancers permanently outbid.

### What They Control

The Lakefront Gate Corridor staging point (ENT-000089) and its informal food-truck-row headquarters; the bulk of freelance contract postings along the Red Line Corridor (ENT-000090); an intel-sharing network that most unaffiliated Chicago hunters rely on before anything a guild offers.

### What They Want

To keep giving an unaffiliated hunter a real floor to work from without forcing them into Horizon's or Ironline's orbit; to win a fairer share of BGM Region V's clearance-contract auction against guilds who can out-lobby a co-op; to keep its best people from being quietly recruited away the moment they build a reputation.

### Current Tensions

Ironline's recruiting machine and Horizon's polish both draw off the Coalition's most promising members almost as fast as it can develop them, which is most of the Contract Slate's argument for professionalizing — a co-op that can't compete for contracts can't compete for people either. The Founders' Council isn't wrong that the moment the Coalition starts charging dues and brokering deals, it stops being the thing a broke E-rank can walk into for free.

```yaml
id: ENT-000102
canonical_record: REC-000066
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
  - name: "Windy City Hunters Coalition"
    quality: current
canonical_state:
  governance_structure: "A member council with no fixed hierarchy above it; day-to-day organizing runs through the Founders' Council, with no dues or formal membership fee — it stages out of the Lakefront Gate Corridor (ENT-000089) rather than owning a headquarters building."
  doctrine_goals: "Give unaffiliated Chicago hunters a working floor — contract postings, safety intel, and party-assembly — without requiring guild membership."
  knowledge_stance: "Shares grading and contract intel openly among its members; keeps no institutional secrets worth the name, which is itself part of its pitch against the guilds."
```
