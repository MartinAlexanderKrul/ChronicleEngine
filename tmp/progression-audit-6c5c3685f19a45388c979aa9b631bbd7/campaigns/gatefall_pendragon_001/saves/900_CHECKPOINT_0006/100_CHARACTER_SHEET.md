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
  - REL-000064
canonical_state:
  age: 25
  location: ENT-000087
  condition: "Health and Mana full (40/40, 20/20). No lasting injury from either clear. The System has attached (see `system_state`); he is no longer an ordinary licensed hunter, though nothing about him looks different to anyone who can't see what he can."
  capabilities: "University-trained mathematician and physicist (recent graduate). Certified krav maga instructor with several years of teaching experience; genuinely dangerous unarmed and in close-quarters combat by ordinary human standards. Formerly part-time secondary-school teacher. Cleared BGM intake three months ago (awakened) and has held an active hunter license for about one week, carded **E-rank** — the lowest possible grading, legally capping him out of **strike/combat** contracts at C-grade and above and their pay (Profile Section 19.4) unless he seeks re-assessment. This cap does **not** extend to harvest/support work, which is not rank-gated at all (Section 9.4, `d53114b`): he may legally mine a C- or higher-grade Gate right now. All actions, including combat, resolve on the engine d100 (Rules Section 4) at his effective E-band capability. No System skill (rune, skill book, or class) is known yet — `/system skills` reads empty.\n\n  Demonstrated, non-System capability (qualitative, `EVT-000059`/`EVT-000060`/`EVT-000063`): combat effectiveness validated in genuine uncertain combat (twice read an enemy's attack pattern to open a kill for someone else, under real stakes) — no longer merely a reputation gap. Mana-crystal extraction technique, taught in the field by Tanya Voss on 2026-07-24 and materially advanced solo at the Cicero Scar on 2026-07-25: he now reads a vein's resonance shift before striking rather than correcting mid-swing, picked up by deliberately watching two veteran harvesters and copying their method — a real, demonstrated improvement, not just repetition. First System daily training regimen completed 2026-07-25 (100 push-ups, 100 sit-ups, 10 km run). A second regimen was completed 2026-07-26 by running the full 10 km in gear as his commute to a job site, a deliberate efficiency he worked out himself; its grant remains unaccepted (`system_state.daily_quest`). The physical conditioning itself carries no mechanical bonus beyond the System's own grant.\n\n  **Externally-observed tactical framework (qualitative, `EVT-000066`, 2026-07-26):** during a break at the Frozen Gallery's third vein, Alexander deliberately studied the strike element holding a flank position — first their formation geometry (a breathing line trading coverage of blind angles without visible signal), then their pre-emptive timing (shifting position a full beat ahead of a barely-perceptible cue, patience and commitment-on-certainty rather than reaction). Neither observation altered a tracked stat or granted a mechanical bonus. It is recorded as the beginning of a real, externally-sourced framework for reading a fight's rhythm at a coordinated, multi-person scale — distinct from, but complementary to, his own demonstrated pattern-reading in the Red Line Corridor (`EVT-000059`), which he arrived at instinctively and under his own fight's pressure rather than by watching trained others. No NPC is aware the observation occurred."
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
    xp: "60/200"
    health: "40/40"
    mana: "20/20"
    unspent_points: 0
    pending_grants: "daily-quest completion (+3 stat points & full Health/Mana restore) — accept anytime"
    stats:
      strength: 13
      agility: 12
      vitality: 10
      perception: 11
      intelligence: 10
    effective_band: E
    gold: 8330
    daily_quest:
      streak: 2
      last_completed: "2026-07-26"
      next_issue: "2026-07-27T06:00:00"
    notes: "Onset fired per World Rule Profile Section 14.7 (owner ruling: no later than the protagonist's first genuine, lethal, uncertain fight) during the beast/elite engagement, when a common beast's hit dropped him to 30/40 — his first real brush with death. Status window granted at creation values, then advanced through play: elite kill (setup credit, +20 XP), a common-beast kill via a live-die crippling strike he landed earlier that a later automatic mercy-blow finished (+10 XP), and the Red Line Corridor boss kill (setup credit for the pattern-read that opened it, +40 kill XP +70 Gate-clear milestone) — crossing the Level 1→2 threshold, granting +3 unspent stat points and restoring Health/Mana to full. Perceptible to Alexander alone (Profile Section 14.4); no NPC, including his crew, is aware of it. The first daily quest issued at the next 06:00 local after onset (2026-07-25) — completed that morning and accepted: +10 XP (40→50/200), +3 unspent stat points (3→6), streak 0/7→1/7. All 6 unspent points (3 from the level-up grant, 3 from the daily grant) were later allocated at the Cicero Scar (`EVT-000063`): Strength +2 (11→13), Vitality +2 (8→10), Intelligence +2 (8→10); unspent 6→0. A second daily quest issued 2026-07-26 at 06:00 and was completed the same morning (100 push-ups, 100 sit-ups, a 10 km run doubled as his commute). Per Section 3.9's split (parallel to a level-up: 'the level and its threshold advance immediately on crossing; only the grant waits'), the completion's XP and streak progress applied automatically: +10 XP (50→60/200), streak 1/7→2/7. Only the **grant** — +3 stat points and a full Health/Mana restore — sits pending, unaccepted; unspent points correctly remain at 0 until he takes it. `gold: 4250` is System-shop currency, built from three private crystal sales instead of declaring them to the harvest pool: 1 C-crystal at the Cicero Scar (`EVT-000063`, 170 g) plus two 12-crystal sales during the Frozen Gallery job (`EVT-000065`, 2,040 g each) — invisible to and unknown by any NPC, including Ada Reyes, Dale, and the Coalition."
  finances:
    starting_funds_usd: 4000
    background: stable
    standing_liability: "Outstanding university tuition debt, $30,000 principal, $400/month minimum payment. Recorded per Section 20.3 as a campaign ruling at this initialization checkpoint: the debt is a pressuring monthly liability against his income, and it does NOT reduce the $4,000 starting funds set by his stable social position (Profile Section 12.6)."
  personal_history: "Worked part-time as a krav maga instructor and part-time as a secondary-school teacher through university and after graduating in mathematics and physics. Awakened three months ago. Cleared BGM intake screening and was licensed at E-rank about one week ago. Entering Gates is now his job — the reason he has one at all is that he is awakened and licensed, not any grander ambition yet declared."
  reputation: "Notoriously the weakest licensed E-rank in Chicago. This is a reputation, not a measured fact — coordinators hesitate over his file, and working crews have so far declined to take him on. No card, survey, or instrument has ever contradicted the label, because nothing about him has been tested in a real clear yet."
  situation: "About thirteen days licensed. On 2026-07-24 the crew cleared the Red Line Corridor Gate (true grade E; archetype Shattered City) with no casualties, then looted and exited; contract closed, standard split filed 2026-07-25, Alexander's equal-fifth share ≈$2,313 pending (`EVT-000060`). The crew dispersed to reconvene in a few days.\n\n  On 2026-07-25 Alexander bought a resonance chisel from Diane at Ironbound ($80; cash $2,000→$1,920) and took a corporate-adjacent contractor's C-grade harvest-element slot at the Cicero Scar (`EVT-000063`), declining the D-grade rail-yard posting (`EVT-000061`, never confirmed). He mined 8 C-crystals total, declared 7 to logistics coordinator Ada Reyes (`ENT-000134`) and sold 1 privately through the System shop for 170 gold — undeclared, a real act of theft under the standard harvest contract, unknown to anyone. His corrected harvest-share estimate for that job is ≈$5,700, pending. He then signed onto a second C-grade harvest slot for 2026-07-26, 08:00, under the same contractor, logistics run by Dale (`ENT-000135`).\n\n  On 2026-07-26 a second daily quest issued and was completed (run doubled as his commute, in gear) — its grant not yet accepted. He entered the second C-grade Gate (confirmed grade, archetype Frozen Gallery, population 8 common C beasts/2 C elites/1 C boss) behind the strike element and worked three vein assignments under Dale's logistics across `EVT-000065` and `EVT-000066`: 104 crystals mined total (30 + 74), 48 sold privately through the System shop across four separate sales of 12 each and never declared, 63 remaining in the current declarable count. Gold from private sales now stands at 8,330. No combat resolved across either event; no kills credited to him, no XP change. During a mandatory 15-minute break (Dale pulled him off the third vein after reading a deliberately performed exhaustion as genuine), Alexander studied the strike element's held position and came away with an externally-observed tactical framework, unknown to anyone. He is currently on that break, inside the third chamber, job not yet complete — no boss engaged, no exit, no formal declaration made yet."
  aspiration: "Become powerful and discover new things — vague and unearned so far, the kind of ambition a man says about himself before the world has given him a reason to believe it."
```
