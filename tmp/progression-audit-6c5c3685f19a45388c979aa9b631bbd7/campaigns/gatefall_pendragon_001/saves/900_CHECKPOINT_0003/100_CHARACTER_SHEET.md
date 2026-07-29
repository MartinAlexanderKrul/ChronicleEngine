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
  condition: "Health and Mana full (40/40, 20/20). Took two serious wounds during the Red Line Corridor clear — an elite's claw rake and the boss's opening leap — both resolved by Sarah Chen's field-touches and the Level 2 grant's full restore. The System has attached (see `system_state`); he is no longer an ordinary licensed hunter, though nothing about him looks different to anyone who can't see what he can."
  capabilities: "University-trained mathematician and physicist (recent graduate). Certified krav maga instructor with several years of teaching experience; genuinely dangerous unarmed and in close-quarters combat by ordinary human standards. Formerly part-time secondary-school teacher. Cleared BGM intake three months ago (awakened) and has held an active hunter license for about one week, carded **E-rank** — the lowest possible grading, legally capping him out of **strike/combat** contracts at C-grade and above and their pay (Profile Section 19.4) unless he seeks re-assessment. This cap does **not** extend to harvest/support work, which is not rank-gated at all (Section 9.4, `d53114b`): he may legally mine a C- or higher-grade Gate right now. All actions, including combat, resolve on the engine d100 (Rules Section 4) at his effective E-band capability. No System skill (rune, skill book, or class) is known yet — `/system skills` reads empty.\n\n  Demonstrated, non-System capability (qualitative, `EVT-000059`/`EVT-000060`): combat effectiveness validated in genuine uncertain combat (twice read an enemy's attack pattern to open a kill for someone else, under real stakes) — no longer merely a reputation gap. Basic mana-crystal extraction technique (chisel work along a vein's resonant seam), taught in the field by Tanya Voss during the Red Line Corridor loot phase on 2026-07-24: first cut slow and corrected mid-work, subsequent cuts clean and efficient once calibrated. First System daily training regimen completed 2026-07-25 (100 push-ups, 100 sit-ups, 10 km run) — establishes the ongoing daily-quest cycle; the physical conditioning itself carries no mechanical bonus beyond the System's own grant."
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
    xp: "50/200"
    health: "40/40"
    mana: "20/20"
    unspent_points: 6
    stats:
      strength: 11
      agility: 12
      vitality: 8
      perception: 11
      intelligence: 8
    effective_band: E
    daily_quest:
      streak: 1
      last_completed: "2026-07-25"
      next_issue: "2026-07-26T06:00:00"
    notes: "Onset fired per World Rule Profile Section 14.7 (owner ruling: no later than the protagonist's first genuine, lethal, uncertain fight) during the beast/elite engagement, when a common beast's hit dropped him to 30/40 — his first real brush with death. Status window granted at creation values, then advanced through play: elite kill (setup credit, +20 XP), a common-beast kill via a live-die crippling strike he landed earlier that a later automatic mercy-blow finished (+10 XP), and the Red Line Corridor boss kill (setup credit for the pattern-read that opened it, +40 kill XP +70 Gate-clear milestone) — crossing the Level 1→2 threshold, granting +3 unspent stat points and restoring Health/Mana to full. Perceptible to Alexander alone (Profile Section 14.4); no NPC, including his crew, is aware of it. The first daily quest issued at the next 06:00 local after onset (2026-07-25, per Section 14.7) — Alexander completed it same morning (100 push-ups, 100 sit-ups, 10 km run) and accepted its grant: +10 XP (40→50/200), +3 unspent stat points (3→6), streak 0/7→1/7; Health/Mana already full, no change. Six stat points remain unallocated (`EVT-000060`). A voluntary, unrequired second 10 km run the same morning confirmed the daily quest does not track effort beyond a completed objective, and that the level/daily grant's 'full restore' is total — it also clears ordinary physical fatigue from voluntary exertion, not merely Health/Mana pool numbers (World Rule Profile Section 5, Mana-exhaustion clause)."
  finances:
    starting_funds_usd: 4000
    background: stable
    standing_liability: "Outstanding university tuition debt, $30,000 principal, $400/month minimum payment. Recorded per Section 20.3 as a campaign ruling at this initialization checkpoint: the debt is a pressuring monthly liability against his income, and it does NOT reduce the $4,000 starting funds set by his stable social position (Profile Section 12.6)."
  personal_history: "Worked part-time as a krav maga instructor and part-time as a secondary-school teacher through university and after graduating in mathematics and physics. Awakened three months ago. Cleared BGM intake screening and was licensed at E-rank about one week ago. Entering Gates is now his job — the reason he has one at all is that he is awakened and licensed, not any grander ambition yet declared."
  reputation: "Notoriously the weakest licensed E-rank in Chicago. This is a reputation, not a measured fact — coordinators hesitate over his file, and working crews have so far declined to take him on. No card, survey, or instrument has ever contradicted the label, because nothing about him has been tested in a real clear yet."
  situation: "About twelve days licensed. On 2026-07-24 the crew cleared the Red Line Corridor Gate (true grade E; archetype Shattered City) with no casualties, then looted (nine beast-drop E-crystals, five mined E-crystals under Alexander's own chisel work, two E-cores, and an E-grade armored greave off the boss — split not yet settled) and exited. The contract closed: standard split on a $10,000 D-posted contract plus ≈$2,850 in crystal/core sale value, Alexander's equal-fifth share ≈$2,313, filed with the Coalition 2026-07-25 and expected within 1-2 business days (`EVT-000060`). The crew dispersed that evening to reconvene in a few days for the next posting. The System attached to him mid-fight on 2026-07-24 (`system_state`), unknown to the rest of the crew; its first daily quest issued 2026-07-25 at 06:00 and was completed the same morning. He is now at the Windy City Hunters Coalition (`ENT-000102`) on 2026-07-25, weighing a live D-grade harvest-element posting (filed for 2026-07-26, 07:00 — `EVT-000061`) against two open E-D waiver-tier crew slots. Only strike/combat contracts at C-grade and above are closed to him on his E-card — harvest work at any grade is legally open to him (`EVT-000062`), though none has been specifically named to him yet. He does not yet own a mining tool."
  aspiration: "Become powerful and discover new things — vague and unearned so far, the kind of ambition a man says about himself before the world has given him a reason to believe it."
```
