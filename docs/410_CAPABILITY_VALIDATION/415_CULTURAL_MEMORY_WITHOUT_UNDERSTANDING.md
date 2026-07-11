# Chronicle Engine

## Fixture 415 — Civilization Benefits From Cultural Memory of a Lost Practice

**Non-canonical validation artifact.** See `410_VALIDATION_OVERVIEW.md`.

**Capability under test:** 0.2.4 Loss, Fragmentation, and Rediscovery (cultural memory).
**Acceptance fixture:** 5.

---

# Starting State

An old civilization understood a soil-rotation method and why it restored fields. The scholars who understood it are long gone, and the theory is lost. What survives is an inherited seasonal custom — a festival rule about which fields to leave fallow — that reproduces most of the practice's benefit. The people follow it as tradition and explain it through a harvest myth, without understanding the agronomy.

---

# Relevant Entities and Records

| Identifier | Kind | Role |
|-----------|------|------|
| `ENT-F5-SUBJECT` | Persistent Entity (Knowledge Subject) | The soil-rotation method |
| `ENT-F5-CULTURE` | Holder (public / cultural tradition) | Custom-keeper |
| `REL-F5-CULTURE-STATE` | Relationship (Knowledge State) | Culture → Subject |
| `ENT-F5-MYTH` | Persistent Entity (Historical Document / Myth) | The harvest myth explaining the custom |

**Cultural Knowledge State (`REL-F5-CULTURE-STATE`):** application = partial (via inherited custom); understanding = absent; validation = none; preservation = mythologized; benefit realized = yes, partially.

---

# Required Engine Capability

A civilization can retain and benefit from a practice whose theory is lost — application persists while understanding does not — and the survival can be mythologized rather than recorded as technical knowledge, without treating the subject as either fully known or fully lost.

---

# Prohibited Shortcuts

- Requiring full understanding before the practice can yield benefit.
- Treating the subject as binary — either fully known or wholly forgotten.
- Introducing a population or agriculture simulation to deliver the benefit.
- Converting the myth into objectively true technical knowledge.

---

# Expected Durable Outcome

- The Knowledge Subject persists.
- The cultural Knowledge State records application-partial, understanding-absent, preservation-mythologized.
- The benefit is realized through the custom without any holder understanding the mechanism.
- The myth exists as in-world evidence, not as recovered theory.

---

# Resolution

1. **Preserved practice, lost theory.** Section 8.12 lists "mythologized survival" among knowledge states and states a subject may survive "with preserved practice but lost theory." This is exactly the fallow custom.
2. **Application without understanding.** Section 8.2 separates the dimensions: a holder may score high on application and null on understanding. The culture applies; it does not understand.
3. **Myth layer.** The harvest myth is Myth & Belief (§2.2) and a Historical Document (Section 12): it "influences behavior regardless of factual accuracy" and its claims are not objective truth. The myth carries the practice socially without carrying the theory.
4. **Continuity, not reinvention.** The surviving custom is still the same Knowledge Subject in a degraded state (§8.12 continuity), so if scholars later reconstruct the agronomy, that is rediscovery linked to `ENT-F5-SUBJECT`, not a new subject.
5. **Structure.** One subject `ENT-`; one cultural holder Relationship state; the myth an Individual Resource / Historical Document. No agricultural or population subsystem is required — the benefit is a narrated consequence of following the custom, resolved through ordinary action/consequence (§4.10).

---

# Verdict

**Pass.** Carried by §8.12 (mythologized survival; preserved practice, lost theory), §8.2 (application without understanding), and Myth & Belief / Historical Persistence (§2.2, Section 12). No population or agriculture subsystem required.
