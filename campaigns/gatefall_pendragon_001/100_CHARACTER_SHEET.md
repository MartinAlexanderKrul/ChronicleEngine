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
canonical_state:
  age: 25
  location: ENT-000087
  condition: "Healthy, unremarkable E-band physical condition. No injuries. No mana pool, no level, no XP, no Mana — the System has not attached to him. He is an ordinary licensed hunter."
  capabilities: "University-trained mathematician and physicist (recent graduate). Certified krav maga instructor with several years of teaching experience; genuinely dangerous unarmed and in close-quarters combat by ordinary human standards. Formerly part-time secondary-school teacher. Cleared BGM intake three months ago (awakened) and has held an active hunter license for about one week, carded **E-rank** — the lowest possible grading. All actions, including combat, resolve on the engine d100 (Rules Section 4) at ordinary E-band capability (Profile Section 6.1, 40 Health); no ability, skill, or magic is available to him yet."
  credentials: "Active BGM-issued hunter license (E-rank card, ~1 week old). No guild membership. Freelancer affiliated with the Windy City Hunters Coalition (`ENT-000102`, `REL-000062`) — Chicago's freelancer co-op, the default hook for an unaffiliated Chicago hunter."
  personality: "Coldly analytical; a strength the world hasn't caught up to yet — his reads of a fight, a room, or a person are consistently correct, even when no one believes him. Hot-headed: once he has read a situation, he trusts that read and moves on it fast, especially when he judges someone else to be in the wrong, often before slower or more cautious counsel would act. This combination — right more often than anyone expects, and impatient with anyone slower to see it — is exactly what has made him hard to place in a crew."
  latent_stat_array:
    note: "NOT active System state. No System has attached to Alexander; this array is civilian-range creation data only (Profile Section 4.1: five stats, each 8-12, summing to 50, none above 12), recorded here so that whenever the System does attach, the Onset Sequence (Profile Section 14.7) reads these exact values into the granted STATUS window. It confers no modifier steps, no capability unlocks, and no mechanical effect before that moment; until then his ordinary-human capability under Rules Section 4 governs everything he does."
    strength: 11
    agility: 12
    vitality: 8
    perception: 11
    intelligence: 8
  finances:
    starting_funds_usd: 4000
    background: stable
    standing_liability: "Outstanding university tuition debt, $30,000 principal, $400/month minimum payment. Recorded per Section 20.3 as a campaign ruling at this initialization checkpoint: the debt is a pressuring monthly liability against his income, and it does NOT reduce the $4,000 starting funds set by his stable social position (Profile Section 12.6)."
  personal_history: "Worked part-time as a krav maga instructor and part-time as a secondary-school teacher through university and after graduating in mathematics and physics. Awakened three months ago. Cleared BGM intake screening and was licensed at E-rank about one week ago. Entering Gates is now his job — the reason he has one at all is that he is awakened and licensed, not any grander ambition yet declared."
  reputation: "Notoriously the weakest licensed E-rank in Chicago. This is a reputation, not a measured fact — coordinators hesitate over his file, and working crews have so far declined to take him on. No card, survey, or instrument has ever contradicted the label, because nothing about him has been tested in a real clear yet."
  situation: "One week licensed, unaffiliated with any crew, trying to get a coordinator or crew leader at the Windy City Hunters Coalition to take him on a posted contract. His reputation is working against him: E/D contracts carry a five-hunter posting floor (Profile Section 9.4) and no board will offer him a solo bid, but crews that do have an open fifth slot have so far preferred almost anyone else's file to his."
  aspiration: "Become powerful and discover new things — vague and unearned so far, the kind of ambition a man says about himself before the world has given him a reason to believe it."
```
