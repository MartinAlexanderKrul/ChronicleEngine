# Character Sheet — Fixture Protagonist (child checkpoint, defective)

Regression fixture for Contract 8 (skill-counter staleness). This is the
**child** capture and reproduces the Checkpoint 0028 defect exactly: XP
advanced 100 → 340 (kills resolved), while the skill counter stayed frozen at
its parent value of 5 uses. Every other field is well-formed, which is the
point — this is precisely what read-back verification and the Repository
Validation Barrier both pass.

```yaml
id: ENT-000001
canonical_record: REC-000001
schema_version: "0.1.4"
status: active
provenance:
  source: EVT-000002
  game_date: "fixture"
  real_date: "2026-07-27"
type: Character
canonical_state:
  location: "fixture"
  system_state:
    level: 4
    xp: "340/400"
    skills_known:
      - "Fixture Strike [E-Rank] Novice · Successful uses 5 · qualifying scenes total 2 · mastery progress 2/3."
```
