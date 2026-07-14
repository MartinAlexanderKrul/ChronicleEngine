# Chronicle Engine

## World Bible — Verra

**World Version:** 0.1 (Prototype)
**Status:** Active — Prototype Alpha validation world
**Engine Compatibility:** 0.2.0; Data Model 0.1.1
**Calendar:** Reach Reckoning (RR); the present is **Year 312 RR**

---

# Purpose and Status

Verra is a deliberately small world built to validate the engine through play (Prototype Alpha — see `docs/420_PROTOTYPE_ALPHA/420_PROTOTYPE_PLAN.md`). It is **canonical world content** — its ledgers use real identifiers from `system/ID_REGISTRY.md` and are subject to the same rules as any world — but it is a **prototype validation setting**, not the project's official world. The official world remains Asterra.

Verra is scoped to exercise the Version 0.2 knowledge model: it places a knowledge **validator**, a **restrictor**, and a **monopolist** in one town around three shared Knowledge Subjects.

---

# The Verran Reach

The Verran Reach is a river valley along the Verran (`worlds/verra/210_PLACES.md`, `ENT-000001`). Its marshy lowlands breed a seasonal **marsh-fever**; its sandbanks are worked for glass-sand; and its oldest riverworks were raised with a durable mortar whose making is now nearly forgotten.

The one town of note is **Halden** (`ENT-000002`), a river market town of some six thousand souls, founded at the Verran ford in Year 40 RR.

---

# The Three Institutions

Halden's public life turns on three institutions, each recorded in its own ledger under `worlds/verra/institutions/`:

- **The Halden Athenaeum** (`ENT-000003`) — a college of natural philosophy that validates findings under its own standard of evidence. The **validator**.
- **The Order of the Ember** (`ENT-000004`) — an established temple-order that tends the sacred Ember, holds recognized civic-religious authority in Halden, and guards doctrine. The **restrictor**.
- **The Halden Glaziers' Guild** (`ENT-000005`) — a craft guild holding a chartered monopoly on Halden glasswork. The **monopolist**.

---

# The Three Knowledge Subjects

Three Knowledge Subjects (`worlds/verra/230_KNOWLEDGE_SUBJECTS.md`) carry the world's tensions. Each persists as one subject while different holders maintain divergent Knowledge States about it (Rules Section 8).

1. **The Halden tempering method** (`ENT-000012`) — a technique for unusually durable glass. The Guild applies and monopolizes it; its theory is unpublished. *(Validated capability fixture 412.)*
2. **Marsh-fever waterborne transmission** (`ENT-000013`) — the finding that the fever spreads through tainted water. The Athenaeum has validated it; the Order has condemned it as heresy; the town is divided. *(Fixture 411.)*
3. **The rivermason's mortar** (`ENT-000014`) — a durable hydraulic mortar used in Halden's oldest works. Its last knowledgeable practitioner is aging without an apprentice; a masons' festival custom preserves a degraded fragment of the practice. *(Fixtures 415, 417 — passive extinction and cultural memory.)*

---

# The Present Situation (Year 312 RR)

Fellow Corvane of the Athenaeum has validated the marsh-fever finding and recorded it in a treatise. The Order has condemned it. Halden is uneasy: the physicians who would act on the finding answer, in civic matters, to an Order that forbids teaching it. Meanwhile the Guild guards its glass, and old Berrec, the last rivermason, grows older.

Into this arrives a newly licensed physician-scholar (the Prototype Alpha protagonist, defined in the campaign layer) whose fever research cannot avoid the Athenaeum, the Order, or the Guild.

---

# Ledger Index

| Ledger | Contents |
|--------|----------|
| `210_PLACES.md` | The Verran Reach; Halden; Halden's governance relationship |
| `220_NOTABLE_FIGURES.md` | Six figures; their institutional memberships |
| `230_KNOWLEDGE_SUBJECTS.md` | Three Knowledge Subjects; nine holder Knowledge States |
| `240_RESOURCES.md` | The fever treatise; a tempered-pane exemplar; a mortar fragment |
| `institutions/halden-athenaeum/250_INSTITUTION_LEDGER.md` | The Athenaeum |
| `institutions/order-of-the-ember/250_INSTITUTION_LEDGER.md` | The Order of the Ember |
| `institutions/glaziers-guild/250_INSTITUTION_LEDGER.md` | The Glaziers' Guild |
| `260_SEED_EVENTS.md` | Seven seed events (provenance sources) |
