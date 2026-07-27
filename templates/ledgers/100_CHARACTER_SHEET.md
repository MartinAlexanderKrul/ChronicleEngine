# Character Sheet

**Ledger Template:** `100_CHARACTER_SHEET.md`
**Instantiates:** Canonical Record (`011` Section 8) holding one Character entity (`011` Section 4)

This is a **single-object ledger**: it contains one Object Block, the player character. The file is itself a Canonical Record, and its identifier is the character's `canonical_record`.

Fill by copying this template into a campaign, replacing every placeholder, and removing unused optional fields. A filled file must contain no placeholder tokens.

---

## Record

```yaml
id: <generated: REC-XXXXXX>
canonical_record: <generated: same as id>
schema_version: "0.1.5"
status: active
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  game_date: <required: in-world time>
  real_date: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
role: canonical ledger
scope: personal
subjects:
  - <required: ENT-XXXXXX of this character>
```

---

## Character

```yaml
id: <generated: ENT-XXXXXX>
canonical_record: <required: REC-XXXXXX of this sheet>
schema_version: "0.1.5"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  game_date: <required: in-world time of the represented event>
  real_date: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
type: Character
subtype: <optional: domain- or world-defined>
scope: <required: personal | local | regional | world | historical>
lifecycle: <required: emerging | active | transforming | declining | dissolved | destroyed | mythologized | archived>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>
identity_links:
  - link: <optional: transforms-from | succeeds | succeeded-by | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  location: <required: ENT-XXXXXX or region descriptor>       # sole owner of presence — 011 §7.1, §9.2 (Decision 073)
  condition: <required: injuries, pain, exhaustion — §6.8, §6.10>
  capabilities: <required: demonstrated competences — §5.3>
  skills:
    - name: <required: skill name>
      rank: <required: authored Rank>
      mana_cost: <required: integer or Passive>
      effect: <required: authored effect>
      successful_uses: <required: exact nonnegative integer, or an evidence-labeled lower bound during migration>
      mastery:
        level: <required for mastery-tracked skills; `none` for a no-mastery stat-milestone passive>
        qualifying_scenes_total: <required for mastery-tracked skills: nonnegative integer>
        progress: <required: 0/3, 1/3, 2/3, complete at Master, or `none`>
  temporal_state:
    campaign_time: <required when the active world declares deterministic elapsed-time rules: exact world timestamp with calendar/timezone>
    mana_recovery_mode: <world-declared mode>
    mana_recovery_remainder_units: <world-declared nonnegative integer carry>
    health_recovery_mode: <world-declared mode>
    health_recovery_remainder_units: <world-declared nonnegative integer carry>
  personality: <optional: core traits and current expression — §5.4>
  knowledge: <optional: what this character knows — §5.5>
  situation: <optional: current objective or circumstance — narrative only, never the location of record (Decision 073)>
```

The `location` field is the **single structural owner of this character's presence** (`011_ENGINE_DATA_MODEL.md` Sections 7.1 and 9.2; Decision 073). The campaign's `180_CURRENT_STATE.md` presents and points at it; no other ledger restates it. `situation` never carries the location of record — a `situation` that asserts where the character is now is the staleness defect Decision 073 exists to prevent.

`temporal_state` is a world-declared Character extension (Decision 078), not a
universal calendar. Include it when deterministic rules depend on elapsed
fictional time. The active World Rule Profile owns timestamp representation,
modes, remainder bounds, formulas, and migration. Status views and checkpoints
read this already-settled state; they never calculate recovery for the first time.
