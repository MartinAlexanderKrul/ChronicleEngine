# Chronicle Engine

## Fixture 411 — University Validates a Finding While Religious Authorities Restrict It

**Non-canonical validation artifact.** See `410_VALIDATION_OVERVIEW.md`.

**Capability under test:** 0.2.1 Knowledge State Model; 0.2.2 Institutional Knowledge Systems.
**Acceptance fixture:** 1.

---

# Starting State

A scholar at a university observes that a recurring fever follows tainted-water sources, tests the correlation, and the university's faculty validate the finding within their own standard of evidence. The dominant religious institution holds the doctrine that the fever is a divine judgment; its authorities forbid teaching the water explanation as heresy.

The fever's actual cause is a fact of objective reality, independent of either institution's stance.

---

# Relevant Entities and Records

| Identifier | Kind | Role |
|-----------|------|------|
| `ENT-F1-SUBJECT` | Persistent Entity (Knowledge Subject) | The claim: fever transmits through tainted water |
| `ENT-F1-UNIV` | Persistent Entity (Institution — University) | Validator |
| `ENT-F1-CHURCH` | Persistent Entity (Institution — Religious) | Restrictor |
| `ENT-F1-SCHOLAR` | Persistent Entity (Living Character) | Observer/validator |
| `ENT-F1-TREATISE` | Persistent Entity (Individual Resource / Knowledge Asset) | The recorded finding |
| `REL-F1-UNIV-STATE` | Relationship (Knowledge State) | University → Subject |
| `REL-F1-CHURCH-STATE` | Relationship (Knowledge State) | Church → Subject |

**University Knowledge State (`REL-F1-UNIV-STATE`):** understanding = high; validation = institutionally accepted; acceptance = internal consensus; application = taught to students; restriction = none.

**Church Knowledge State (`REL-F1-CHURCH-STATE`):** understanding = doctrinal/low; validation = rejected; acceptance = condemned as heresy; restriction = teaching prohibited; preservation = the doctrine, not the finding.

---

# Required Engine Capability

One Knowledge Subject must simultaneously carry two divergent, durable Knowledge States that differ on the validation and restriction dimensions, and validation must be holder-scoped rather than a property of objective reality.

---

# Prohibited Shortcuts

- Treating the finding as globally "true/unlocked" once the university validates it.
- Making the church automatically wrong (or right) as objective fact by virtue of its authority.
- Collapsing both stances into one knowledge flag on the subject.
- Any technology-tree or unlock model.

---

# Expected Durable Outcome

- One persistent Knowledge Subject (`ENT-F1-SUBJECT`) with a single Canonical Record.
- Two divergent Knowledge States preserved in the relevant institution ledgers, each with provenance.
- Objective reality unchanged by either institution's validation or restriction.
- No global unlock; a traveler from elsewhere does not automatically know the finding.

---

# Resolution

1. **Subject vs. State.** Section 8.2 separates the Knowledge Subject (the water-transmission claim) from holder-specific Knowledge States. The subject persists; the two states differ. This is the normative principle "Knowledge Subjects persist; Knowledge States change" (§8.1.2).
2. **Validation is holder-scoped.** Section 8.2 (Validation) states validation "belongs to a holder, institution, or tradition, not to objective reality itself," and a conclusion may be "institutionally accepted" while "publicly disputed." The university's validation is real for the university and settles nothing globally.
3. **Institutional layer.** Section 8.7 (Institutional Knowledge) and Section 8.8 distinguish an institution's **validation authority** and **holder Knowledge State** from **objective reality**; "institutional custody does not imply ownership of truth." The church's restriction is an exercise of authority over its own doctrine and teaching, not a change to fact.
4. **Restriction ≠ falsehood.** Section 8.9 states "restriction does not prove falsehood," so the church's prohibition does not make the finding false, and the university's endorsement does not make it certain.
5. **Structure.** The subject is one `ENT-` with one Canonical Record (`011` §2.3, §7). The two states are first-class Relationship objects (`011` §10) owned by the respective institution ledgers (Rules §2.8 scope responsibility). The Runtime promotes both with provenance (Runtime §5).

No population, governance, or magic subsystem is invoked; the church and university are ordinary Institutions (Section 9).

---

# Verdict

**Pass.** Carried by §8.2 (subject/state, holder-scoped validation), §8.7–§8.8 (institutional knowledge, custody/authority vs. truth), §8.9 (restriction ≠ falsehood), and Relationships (`011` §10). No new abstraction required.
