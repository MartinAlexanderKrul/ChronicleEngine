# Campaign Chronicle - Gatefall: Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall
**Ledger:** Canonical Record (`011` Section 8) preserving campaign events in durable narrative form. It holds the campaign's Events and their narrative record.

---

## Record

```yaml
id: REC-000079
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - EVT-000056
  - EVT-000058
  - EVT-000059
```

---

## EVT-000056 - Alexander Pendragon Begins His Hunting Career

```yaml
id: EVT-000056
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: ruling
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
type: Event
kind: campaign-start
importance: immediate
event_time: "2026-07-22"
participants:
  - ENT-000125
  - ENT-000102
description: "Alexander Pendragon (ENT-000125), one week into an active BGM hunter license carded E-rank, begins the campaign in Chicago (ENT-000087) as a freelancer registered with the Windy City Hunters Coalition (ENT-000102, REL-000062). No System has attached to him; he is an ordinary licensed E-rank whose reputation as the weakest E-rank in the city has so far kept every crew from taking him on. No gameplay has been resolved yet; no checkpoint has been taken."
```

## EVT-000058 - Session 1: Crew Assembly and Gate Approach

```yaml
id: EVT-000058
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-1-gameplay
  event_time: "2026-07-23 to 2026-07-24"
  record_time: "2026-07-24T08:00:00Z"
type: Event
kind: session-gameplay
importance: immediate
event_time: "2026-07-23 to 2026-07-24"
participants:
  - ENT-000125
  - ENT-000126
  - ENT-000127
  - ENT-000128
  - ENT-000129
  - ENT-000102
description: "Alexander Pendragon's first week as an active hunter (2026-07-22 through 2026-07-24). Alexander visited the Windy City Hunters Coalition desk, met Tanya Voss, and accepted a position on her Red Line Corridor crew (ENT-000126, ENT-000127, ENT-000128, ENT-000129). He purchased E-grade hunter gear from Ironbound on Milwaukee Avenue (leather jacket, dagger, gauntlets, shin guards; $2,000 total). The crew assembled at the Red Line Corridor Gate entrance on 2026-07-24 at 8:00 AM for a briefing by Tanya Voss and Marcus. The Gate is an unconfirmed D-grade linear dungeon with a timer breaking at midnight on 2026-07-24. The crew is prepared to enter. No uncertain actions have been resolved; no combat has occurred."
```

## EVT-000059 - Session 1: The Red Line Corridor Clear and System Onset

```yaml
id: EVT-000059
canonical_record: REC-000079
schema_version: "0.1.2"
status: active
provenance:
  source: session-1-gameplay
  event_time: "2026-07-24"
  record_time: "2026-07-24T00:00:00Z"
type: Event
kind: session-gameplay
importance: pivotal
event_time: "2026-07-24"
participants:
  - ENT-000125
  - ENT-000126
  - ENT-000127
  - ENT-000128
  - ENT-000129
description: "The crew entered the Red Line Corridor Gate at 08:00. Unconfirmed grade resolved true on first entry (Rules Section 9.5, d100 03): E, one below the posted D. Archetype resolved (d8 06): Shattered City — broken verticality, falls dealing band damage. Population rolled per the standard formula (Section 9.7): 9 common E beasts (3d6=9), 1 E elite (1d2=1), 1 E boss.

Ambush phase: Alexander killed two common beasts by surprise dagger strike (d100 50 -> effective 90 strong success; d100 79 -> effective 100 legendary success), Tanya Voss a third. Open engagement followed: the remaining six common beasts and the elite were fought through by the party (Alexander's contribution d100 76, effective 76, success). A common beast landed a solid hit on Alexander during this push (d100 66, effective 86 strong success against him; Health 40->30) -- his first real wound, and the first time he had ever actually been struck in combat.

That wound was the precipitating incident for System onset (World Rule Profile Section 14.7, owner ruling of 2026-07-24: onset no later than the protagonist's first genuine, lethal, uncertain fight). The System attached mid-exchange: attachment notice and STATUS window granted at creation values (Level 1, XP 0/100, Health 30/40, Mana 20/20, creation stat array). Perceptible to Alexander alone.

Alexander then finished a beast he had crippled in an earlier exchange (d100 66, effective 66 success) with an automatic mercy-blow (no live die -- no kill-XP credit, Section 3.8), and attempted to join Tanya against the elite: first attempt failed (d100 15, effective 35), provoking a punishing counter (d100 90, effective 100 legendary success against him; Health 30->10, a Severe wound). Sarah Chen applied one field-touch (E-band baseline, +10; Health 10->20). Alexander then read the elite's attack pattern (d100 83, effective 100 legendary success), identifying its post-block recovery window, and used it to land a setup strike (d100 26, effective 46 partial success) that staggered the elite; Tanya delivered the kill. Alexander disengaged cleanly (d100 82, effective 82 strong success). Sarah applied a second field-touch (+10; Health 20->30), her second of three per-clear.

The party advanced to the boss chamber: a wrong-jointed, cat-shaped apex predator adapted to the Shattered City's verticality, signature a leaping strike intended to knock a target off a ledge. It opened by targeting the wounded Alexander (d100 88, effective 88 strong success against him; Health 30->10, a second Severe wound), who avoided going over the edge on trained reflex alone. Alexander withdrew to a support position beside Sarah. A first read of the boss found no exploitable pattern (d100 39, effective 39, failure with information); a second read, informed by watching it strike Elias, succeeded completely (d100 83, effective 100 legendary success): the boss's leap leaves it locked and unable to redirect for roughly a second after landing. Alexander called this out to the crew. Tanya baited the leap deliberately; when it landed and locked, Elias and Tanya killed it together.

The boss kill collapsed the Gate, opening its two-hour post-boss window (Section 9.7) and awarding, per Alexander's setup-credit participation (Section 3.8): boss kill XP (10x4=40) and the E-Gate clear milestone (70). Combined with the earlier elite-kill setup credit (20) and the crippling-strike common-beast kill (10), his session total reached 140 XP, crossing the Level 1->2 threshold: +3 unspent stat points, Health and Mana restored to their new maxima (40/40, 20/20). He ends the clear at Level 2, XP 40/200, stats unchanged (11/12/8/11/8), 3 unspent points.

No crew casualties. Loot has not yet been collected; the crew has not yet exited the Gate."
```
