# Chronicle Engine

## Template Conventions

**File:** `templates/000_TEMPLATE_CONVENTIONS.md`
**Status:** Active
**Engine Version:** 0.1.5
**Governed by:** `engine/011_ENGINE_DATA_MODEL.md`

---

Templates instantiate the Data Model. They are fillable skeletons.

A template contains structure, not state. It carries the Data Model's structural contract with placeholder values, and no actual world or campaign content. World and campaign files are filled copies of these templates.

Templates are a **non-canonical instantiation layer**. They conform to `011_ENGINE_DATA_MODEL.md` (structure) and reference `010_ENGINE_RULES.md` (meaning). They are not engine canon and do not define behavior.

---

# 1. Representation

Every persistent object is written as an **Object Block**: a fenced YAML block inside Markdown.

There is one representation. Single-object files are not written as YAML frontmatter; a single-object ledger simply contains one Object Block. Multi-object ledgers contain several Object Blocks under Markdown headings.

````text
```yaml
id: ENT-XXXXXX
...
```
````

The surrounding Markdown provides headings, human-readable framing, and ledger-specific sections. The fenced YAML block carries the structural contract.

---

# 2. The Universal Persistent Object Block

Every persistent object — Entity, Canonical Record, Event, or Relationship — carries the same minimal universal fields (`011` Section 2.1):

```yaml
id: <generated: ENT-XXXXXX | REC-XXXXXX | EVT-XXXXXX | REL-XXXXXX>
canonical_record: <required: REC-XXXXXX>   # self, for a Canonical Record
schema_version: "0.1.1"
status: <required: active | ended | superseded>
provenance:
  source: <required: EVT-XXXXXX | ruling | transcript>
  event_time: <required: in-world time of the represented event>
  record_time: <generated: time this record was written>
  uncertainty: <optional: unresolved uncertainty>
```

The universal block is deliberately minimal. Entity-only fields — type, scope, aliases, relationships, identity links, canonical state — live in the Persistent Entity extension (Section 3), not in every Object Block. Records, Events, and Relationships are persistent objects but not entities, and do not carry entity fields.

---

# 3. The Persistent Entity Extension

A Persistent Entity (`ENT-`) adds the following to the universal block (`011` Section 4):

```yaml
type: <required: Character | Institution | Settlement/Kingdom | Resource | Place | Discovery/Knowledge>
subtype: <optional: domain- or world-defined>
scope: <required: personal | local | regional | world | historical>
lifecycle: <required: emerging | active | transforming | declining | dissolved | destroyed | absorbed | abandoned | forgotten | mythologized | archived>
aliases:
  - name: <required: name>
    quality: <required: current | former | cover | legal | mythic | posthumous>
relationships:
  - <optional: REL-XXXXXX>
identity_links:
  - link: <optional: transforms-from | succeeds | succeeded-by | splits-from | merges-from | emerges-from | possibly-same-as>
    entity: <optional: ENT-XXXXXX>
    certainty: <optional: asserted | disputed | believed | false-claim>
    source: <optional: EVT-XXXXXX>
canonical_state:
  <type-specific fields; see the type's template in templates/objects/>
```

`canonical_state` holds the entity's present authoritative attributes (`011` Section 7.1). Its fields are the type's extension and are defined by each object template. Historical evidence is not stored here; it lives in other records that reference this entity (`011` Section 7.2).

This is the canonical structural entity-scope set. Terms such as `institutional` and `civilizational` may appear in descriptive prose elsewhere, but templates must not use them as scope values unless the Data Model is revised.

---

# 4. References

All references to other objects are by identifier, never by name (`011` Section 3). A reference field holds an identifier of the appropriate kind (`ENT-`, `REC-`, `EVT-`, `REL-`), or a list of them. Names appear only inside `aliases`.

---

# 5. Placeholders

Templates use deliberately invalid placeholder tokens so that an unfilled skeleton can never be mistaken for real state:

```text
ENT-XXXXXX   REC-XXXXXX   EVT-XXXXXX   REL-XXXXXX     an unresolved identifier
<required: ...>     a field that must be filled
<optional: ...>     a field that may be filled or removed
<generated: ...>    a value the Runtime supplies (a minted identifier, a record time)
```

**Validation rejects any canonical world or campaign file that still contains an unresolved placeholder token.** A filled file contains real identifiers and values only. This constraint is defined in `011_ENGINE_DATA_MODEL.md` (Section 12.3) and checked by the Runtime (`012_ENGINE_RUNTIME.md`, Section 8).

Optional fields that are not used are removed entirely rather than left as a placeholder.

---

# 6. Ledger Templates

A ledger template is a Canonical Record (`REC-`) that composes Object Blocks. A ledger is:

- a Markdown file with a heading and any ledger-specific sections,
- containing one Object Block (single-object ledgers, such as a character sheet) or several under Markdown headings (multi-object ledgers, such as an NPC roster).

The ledger file is itself a persistent object and carries its own universal block. The objects it holds each carry their own block.

---

# 7. Directory Layout

```text
templates/
├── 000_TEMPLATE_CONVENTIONS.md   this document
├── objects/                      Object Block templates, one per specialization and entity type
├── ledgers/                      Ledger (Canonical Record) templates
└── examples/                     non-canonical instantiated fixtures, for format validation only
```

The directory is named `objects/`, not `entities/`, because Events, Relationships, and Canonical Records are persistent objects but not persistent entities.

Files under `examples/` are non-canonical. They demonstrate a filled template end to end and are never part of any world or campaign.
