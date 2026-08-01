# Institution Ledger — Windy City Hunters Coalition

**Ledger:** single-object Canonical Record (`011` Section 8) holding one Institution entity.
**Status:** Active — instantiated as canonical world content (2026-07-22).

---

## Record

```yaml
id: REC-000066
canonical_record: REC-000066
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-22T00:00:00Z"
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

Ironline's recruiting machine and Horizon's polish both draw off the Coalition's most promising members almost as fast as it can develop them, which is most of the Contract Slate's argument for professionalizing — a co-op that can't compete for contracts can't compete for people either. The Founders' Council isn't wrong that the moment the Coalition starts charging dues and brokering deals, it stops being the thing a broke E-Rank can walk into for free.

```yaml
id: ENT-000102
canonical_record: REC-000066
schema_version: "0.1.6"
status: active
provenance:
  source: ruling
  game_date: "2026-07-22"
  real_date: "2026-07-22T00:00:00Z"
type: Institution
scope: local
lifecycle: active
aliases:
  - name: "Windy City Hunters Coalition"
    quality: current
canonical_state:
  governance_structure: "A member council with no fixed hierarchy above it; day-to-day organizing runs through the Founders' Council, with no dues or formal membership fee — it stages out of the Lakefront Gate Corridor (ENT-000089) rather than owning a headquarters building."
  doctrine_goals: "Give unaffiliated Chicago hunters a working floor — contract postings, safety intel, and party-assembly — without requiring guild membership."
  knowledge_stance: "Shares ranking and contract intel openly among its members; keeps no institutional secrets worth the name, which is itself part of its pitch against the guilds."
  payout_processing: "**Standard contract-payout processing is 2–3 business days** from the Coalition witnessing and filing a closed contract with BGM Region V to funds arriving in a hunter's registered account. This is the figure the desk quotes and the one a hunter plans around; a payout still outstanding past that window is genuinely late, not merely slow, and is grounds to ask the desk to trace it. Established by explicit ruling (`campaigns/gatefall_pendragon_001/`, `EVT-000083`, 2026-07-29) and applies to all Coalition-filed contract and harvest-share payouts going forward. Known failure mode from the same event: a stale account-sync on a hunter's registered payment record can leave disbursements marked released on the Coalition's side while never arriving, and is resolved at the desk by re-saving the account record to force re-validation and re-release — not by a formal dispute."
  membership_rank_distribution: "**Established by explicit owner ruling** (`campaigns/gatefall_pendragon_001/`, 2026-08-01 real-date, in-fiction query at ~09:50 on 2026-08-11; revised same sitting after a second ruling narrowed the ceiling). Chicago's citywide licensed-hunter pyramid (`200_WORLD_BIBLE.md` Anchor A9: ~1,200 licensed, E 60% / D 22% / C 11% / B 5% / A ~2%, S counted individually) is a citywide figure spanning Horizon Guild, Ironline Guild, and unaffiliated freelancers together — it is not the Coalition's own roster.

  **C is the Coalition's practical ceiling.** The world bible's own Rank-in-one-line gloss calls B 'rare enough that in Prague every one is known by name' and A 'a public figure, courted by every major guild' — a hunter who breaks past C is exactly the talent Horizon's polish and Ironline's recruiting machine exist to take, and the Coalition's own institution framing (Founders' Council vs. Contract Slate; 'keep its best people from being quietly recruited away the moment they build a reputation') says they win that fight almost every time. A Coalition freelancer who reaches B doesn't stay a Coalition freelancer; the co-op develops talent it cannot retain past C. **No B, A, or S-Rank works as an unaffiliated Coalition freelancer.** Chicago's two S-Ranks are Horizon Guild's ace and BGM federal asset Elias Kane; its B- and A-Ranks are guild-held for the same reason.

  **The Coalition's own registered freelancer roster: 420 hunters.** Rank split: **E 293 (69.8%), D 105 (25%), C 22 (5.2%), B 0, A 0, S 0.**

  **C-Rank, the Coalition's ceiling: 22 hunters, out of 420** (~5.2%) — close to the citywide C share (11% of 1,200) applied only up to the point guilds start pulling talent, rather than the inflated 18%-C+ figure a citywide B/A/S tail would otherwise produce. This is why Owen Callahan (`ENT-000139`) — C-Rank, still Coalition-registered rather than guild-poached — reads as unusual among freelancers specifically, and why a Coalition-freelancer crew fielding a real C-Rank mender is worth remarking on in-fiction: he's sitting at the co-op's actual ceiling and the guilds haven't taken him yet."
```
