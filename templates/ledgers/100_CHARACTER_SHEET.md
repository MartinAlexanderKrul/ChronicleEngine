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
schema_version: "0.1.1"
status: active
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time>
  record_time: <generated: time this record was written>
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
schema_version: "0.1.1"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
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
  location: <required: ENT-XXXXXX or region descriptor>
  condition: <required: injuries, pain, exhaustion — §6.8, §6.10>
  capabilities: <required: demonstrated competences — §5.3>
  personality: <optional: core traits and current expression — §5.4>
  knowledge: <optional: what this character knows — §5.5>
  situation: <optional: current objective or circumstance>
```
