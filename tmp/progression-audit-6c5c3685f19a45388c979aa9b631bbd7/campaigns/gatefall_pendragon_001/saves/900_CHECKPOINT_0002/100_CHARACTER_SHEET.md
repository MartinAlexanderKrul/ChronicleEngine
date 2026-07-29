# Character Sheet - Alexander Pendragon

**Campaign:** Gatefall: Pendragon - **World:** Gatefall (`worlds/gatefall/`)
**Ledger:** single-object Canonical Record (`011` Section 8) holding the protagonist.

---

## Record

```yaml
id: REC-000074
canonical_record: REC-000074
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
role: canonical ledger
scope: campaign
subjects:
  - ENT-000125
```

---

## Alexander Pendragon

```yaml
id: ENT-000125
canonical_record: REC-000074
schema_version: "0.1.2"
status: active
provenance:
  source: EVT-000056
  event_time: "2026-07-22"
  record_time: "2026-07-23T00:00:00Z"
type: Character
scope: personal
lifecycle: active
aliases:
  - name: "Alexander Pendragon"
    quality: current
relationships:
  - REL-000062
  - REL-000063
canonical_state:
  age: 25
  location: ENT-000087
  condition: "Health restored to full (40/40) by the Level 2 grant. Took two serious wounds during the Red Line Corridor clear — an elite's claw rake and the boss's opening leap, both dropping him toward critical before Sarah Chen's field-touches and the level-up's full restore brought him back — and the memory of both is still fresh even though the mechanical damage is gone. The System has attached (see `system_state`); he is no longer an ordinary licensed hunter, though nothing about him looks different to anyone who can't see what he can."
  capabilities: "University-trained mathematician and physicist (recent graduate). Certified krav maga instructor with several years of teaching experience; genuinely dangerous unarmed and in close-quarters combat by ordinary human standards. Formerly part-time secondary-school teacher. Cleared BGM intake three months ago (awakened) and has held an active hunter license for about one week, carded **E-rank** — the lowest possible grading. All actions, including combat, resolve on the engine d100 (Rules Section 4) at ordinary E-band capability (Profile Section 6.1, 40 Health); no ability, skill, or magic is available to him yet."
  credentials: "Active BGM-issued hunter license (E-rank card, ~1 week old). No guild membership. Freelancer affiliated with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`) — Chicago's freelancer co-op, the default hook for an unaffiliated Chicago hunter."
  personality: "Coldly analytical; a strength the world hasn't caught up to yet — his reads of a fight, a room, or a person are consistently correct, even when no one believes him. Hot-headed: once he has read a situation, he trusts that read and moves on it fast, especially when he judges someone else to be in the wrong, often before slower or more cautious counsel would act. This combination — right more often than anyone expects, and impatient with anyone slower to see it — is exactly what has made him hard to place in a crew."
  latent_stat_array:
    note: "SUPERSEDED by system_state below (EVT-000059). Retained for provenance: this was the civilian-range creation array (Profile Section 4.1: five stats, each 8-12, summing to 50, none above 12) the Onset Sequence (Profile Section 14.7) read into the granted STATUS window when the System attached mid-session on 2026-07-24."
    strength: 11
    agility: 12
    vitality: 8
    perception: 11
    intelligence: 8
  system_state:
    bearer: true
    onset_event: EVT-000059
    onset_time: "2026-07-24, inside the Red Line Corridor Gate, mid-fight against the crew's remaining beasts and the elite"
    class: null
    title: null
    level: 2
    xp: "40/200"
    health: "40/40"
    mana: "20/20"
    unspent_points: 3
    stats:
      strength: 11
      agility: 12
      vitality: 8
      perception: 11
      intelligence: 8
    effective_band: E
    notes: "Onset fired per World Rule Profile Section 14.7 (owner ruling: no later than the protagonist's first genuine, lethal, uncertain fight) during the beast/elite engagement, when a common beast's hit dropped him to 30/40 — his first real brush with death. Status window granted at creation values, then advanced through play: elite kill (setup credit, +20 XP), a common-beast kill via a live-die crippling strike he landed earlier that a later automatic mercy-blow finished (+10 XP), and the Red Line Corridor boss kill (setup credit for the pattern-read that opened it, +40 kill XP +70 Gate-clear milestone) — crossing the Level 1→2 threshold, granting +3 unspent stat points and restoring Health/Mana to full. Perceptible to Alexander alone (Profile Section 14.4); no NPC, including his crew, is aware of it."
  finances:
    starting_funds_usd: 4000
    background: stable
    standing_liability: "Outstanding university tuition debt, $30,000 principal, $400/month minimum payment. Recorded per Section 20.3 as a campaign ruling at this initialization checkpoint: the debt is a pressuring monthly liability against his income, and it does NOT reduce the $4,000 starting funds set by his stable social position (Profile Section 12.6)."
  personal_history: "Worked part-time as a krav maga instructor and part-time as a secondary-school teacher through university and after graduating in mathematics and physics. Awakened three months ago. Cleared BGM intake screening and was licensed at E-rank about one week ago. Entering Gates is now his job — the reason he has one at all is that he is awakened and licensed, not any grander ambition yet declared."
  reputation: "Notoriously the weakest licensed E-rank in Chicago. This is a reputation, not a measured fact — coordinators hesitate over his file, and working crews have so far declined to take him on. No card, survey, or instrument has ever contradicted the label, because nothing about him has been tested in a real clear yet."
  situation: "About ten days licensed. As of 2026-07-23 he is no longer unaffiliated: Tanya Voss took him onto her five-hunter Red Line Corridor crew (`REL-000063`) after he committed at the Coalition case table, and the contract is signed and filed with BGM Region V. On 2026-07-24 the crew entered the Red Line Corridor Gate (true grade E, one below the unconfirmed D assessment; archetype Shattered City), cleared its full population (nine common beasts, one elite, one boss) with no casualties, and Alexander's own reads — twice — materially opened the elite kill and the boss kill. He was seriously wounded twice in the fight and is now fully healed by his own Level 2 grant. The System attached to him mid-fight (`system_state`), unknown to the rest of the crew. The Gate is cleared and in its two-hour post-boss window; the crew has not yet looted or exited."
  aspiration: "Become powerful and discover new things — vague and unearned so far, the kind of ambition a man says about himself before the world has given him a reason to believe it."
```
