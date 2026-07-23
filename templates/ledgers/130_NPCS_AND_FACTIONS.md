# NPCs and Factions

**Ledger Template:** `130_NPCS_AND_FACTIONS.md`
**Instantiates:** Canonical Record (`011` Section 8) holding many Character and Institution entities

This is a **multi-object ledger**: it contains one Object Block per non-player character and per faction, grouped under Markdown headings. The file is itself a Canonical Record, and its identifier is the `canonical_record` of every entity it owns.

Add one Object Block per entity. Copy the Character block for each NPC and the Institution block for each faction. Remove unused optional fields. A filled file must contain no placeholder tokens.

---

## Record

```yaml
id: <generated: REC-XXXXXX>
canonical_record: <generated: same as id>
schema_version: "0.1.2"
status: active
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
role: canonical ledger
scope: campaign
subjects:
  - <required: ENT-XXXXXX of each entity owned here>
```

---

## Non-Player Characters

One Character Object Block per NPC (see `templates/objects/character.md`).

```yaml
id: <generated: ENT-XXXXXX>
canonical_record: <required: REC-XXXXXX of this ledger>
schema_version: "0.1.2"
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
canonical_state:
  location: <required: ENT-XXXXXX or region descriptor>
  condition: <required: injuries, pain, exhaustion — §6.8, §6.10>
  capabilities: <required: demonstrated competences — §5.3>
  personality: <optional: core traits and current expression — §5.4>
  knowledge: <optional: what this character knows — §5.5>
  situation: <optional: current objective or circumstance>
```

---

## Factions

One Institution Object Block per faction (see `templates/objects/institution.md`).

```yaml
id: <generated: ENT-XXXXXX>
canonical_record: <required: REC-XXXXXX of this ledger>
schema_version: "0.1.2"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
type: Institution
subtype: <optional: e.g. Military Institution — §9.7, Decision 034>
scope: <required: local | regional | world>
lifecycle: <required: emerging | active | transforming | declining | dissolved | destroyed | absorbed | mythologized | archived>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>
canonical_state:
  governance_structure: <required: how authority is held — §9.3>
  doctrine_goals: <required: purpose and core doctrine — §9.5>
  assets: <optional: REC-XXXXXX or resource ENT-XXXXXX references — §9.6, §7>
  military_arm: <optional: asset, or ENT-XXXXXX of a promoted Military Institution — §9.7>
  knowledge_stance: <optional: stance toward knowledge domains — §9.8>
```
