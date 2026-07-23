# Place — Object Block Template

A Persistent Entity of type Place: a location with continuing identity. Structure: `011_ENGINE_DATA_MODEL.md` Section 4. Behavior is governed by the World and simulation rules (`010_ENGINE_RULES.md` Section 3); a Place is distinct from a Settlement/Kingdom, which carries population and governance.

```yaml
id: <generated: ENT-XXXXXX>
canonical_record: <required: REC-XXXXXX>
schema_version: "0.1.2"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
type: Place
subtype: <optional: e.g. region, landmark, ruin, structure, wilderness>
scope: <required: local | regional | world | historical>
lifecycle: <required: active | transforming | destroyed | abandoned | archived | mythologized>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>
identity_links:
  - link: <optional: transforms-from | succeeds | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  region: <required: where the place is, or containing place ENT-XXXXXX>
  features: <required: notable features and present condition>
  occupants: <optional: ENT-XXXXXX references to controlling, resident, or contained entities — NOT who is standing here now (011 §9.2)>
```

## `occupants` Is Standing State, Not Presence

`occupants` records who **controls, resides in, or is contained by** a Place. It is standing state that changes when tenancy, control, or containment changes — not when someone walks in or out. This is now a normative structural statement, not a template comment: `011_ENGINE_DATA_MODEL.md` Section 9.2 (Decision 073).

**Where a character is right now is never recorded here.** Presence is owned solely by the entity's own `canonical_state.location` (`011` Sections 7.1 and 9.2); the campaign's `180_CURRENT_STATE.md` presents and points at it (Rules Section 13.2). A Place that also tried to track presence would be a second representation of the same fact, drifting from its source the moment a character moved — the failure Decision 051 forbids generally, and the one that produced the Checkpoint 0005 staleness incident specifically.

The distinction is what keeps the field from going stale. A protagonist who rents a room is that room's occupant whether he is asleep in it or across the city; he is *never* an occupant of a Rift he walked into, however long he stands there. If a Place's `occupants` needs updating because a character moved, the field is being used wrongly — and the presence invariant enforced by the Repository Validation Barrier (`012` Section 5.4) now has the structured owner it needs to catch the contradiction.
