# Chronicle Engine

## Fixture 416 — Discovery Spreads Through Institutions and Records, Not Instant Global Canon

**Non-canonical validation artifact.** See `410_VALIDATION_OVERVIEW.md`.

**Capability under test:** 0.2.3 Transmission and Diffusion.
**Acceptance fixture:** 6.

---

# Starting State

An astronomer at one observatory-university establishes a method for predicting an eclipse. Over the following years the method reaches a second university by correspondence, a third by a travelling student, and a naval academy by a copied table — each at a different time and in different depth. Two distant institutions never receive it at all within the period. At no point does "the world" simply know the method.

---

# Relevant Entities and Records

| Identifier | Kind | Role |
|-----------|------|------|
| `ENT-F6-SUBJECT` | Persistent Entity (Knowledge Subject) | The eclipse-prediction method |
| `ENT-F6-ORIGIN` | Persistent Entity (Institution) | Originating university |
| `ENT-F6-INST-B/C/D` | Persistent Entities (Institutions) | Later recipients |
| `REL-F6-*-STATE` | Relationships (Knowledge States) | Each holder → Subject, timestamped |
| `EVT-F6-TRANSMIT-B/C/D` | Events | Correspondence, student, copied table |
| `ENT-F6-LETTER` / `ENT-F6-TABLE` | Individual Resources (Knowledge Assets) | Transmission records |

Each recipient state carries a distinct **event time** (when it was received) and depth (full method vs. table only).

---

# Required Engine Capability

A discovery must propagate along discrete transmission pathways over in-world time, producing holder states that appear incrementally and unevenly — never an instant, silent, global unlock — with some holders never receiving it.

---

# Prohibited Shortcuts

- Making the method global canon the moment it is published.
- A diffusion engine that fills in the whole map automatically.
- Assuming every institution knows once one does.
- Any technology-tree gating.

---

# Expected Durable Outcome

- One persistent Knowledge Subject.
- Multiple holder Knowledge States created at different in-world times, each with provenance pointing at its transmission event and record.
- Uneven reach: at least one institution with full understanding, one with a shallow table-only state, and at least one with no state at all.
- No promoted fact asserting universal knowledge.

---

# Resolution

1. **Transmission, not availability.** Section 8.10 opens: knowledge "spreads through transmission rather than instant global availability," via teaching, copied texts, correspondence, and migration — the exact channels used here.
2. **Uneven reach.** Section 8.10 permits knowledge to "spread widely but shallowly," "move between institutions while remaining absent from the public," and reach descriptors are "descriptive rather than required stages." The naval academy's table-only state and the two non-recipients are valid endpoints.
3. **Time.** Spread consumes in-world time (§3, event-driven time; §8.4). Each recipient state has its own event time; there is no single moment of universal adoption.
4. **No silent global canon (Runtime).** Runtime Invariant 2 (no silent canon) and Invariant 3 (promotion) require each holder state to be an individually promoted write with provenance — the Runtime cannot promote "everyone now knows this." Canon-determinism (Invariant 4) means replay reproduces the same uneven distribution.
5. **Structure.** One subject `ENT-`; one Relationship state per recipient owned by that institution's ledger; each transmission an Event referencing the letter/table Individual Resources (`011`). No new abstraction; no map subsystem.

---

# Verdict

**Pass.** Carried by §8.10 (transmission not instant; uneven, pathway-based reach), event-driven time (§3, §8.4), and Runtime Invariants 2–3 (no silent/global canon; per-holder promotion). No diffusion subsystem required.
