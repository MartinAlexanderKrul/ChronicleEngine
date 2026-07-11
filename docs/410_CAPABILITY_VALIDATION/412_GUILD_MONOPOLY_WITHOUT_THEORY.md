# Chronicle Engine

## Fixture 412 — Guild Monopolizes a Practical Technique Without Publishing Its Theory

**Non-canonical validation artifact.** See `410_VALIDATION_OVERVIEW.md`.

**Capability under test:** 0.2.2 Institutional Knowledge Systems.
**Acceptance fixture:** 2.

---

# Starting State

A craftsmen's guild has perfected a glass-tempering technique that yields unusually durable panes. The guild applies it profitably and guards it: the method is taught only through internal apprenticeship, the underlying theory is never written for outsiders, and the guild publicly asserts sole rights to the craft. Rival workshops can see the finished panes but cannot reproduce them.

---

# Relevant Entities and Records

| Identifier | Kind | Role |
|-----------|------|------|
| `ENT-F2-SUBJECT` | Persistent Entity (Knowledge Subject) | The tempering technique |
| `ENT-F2-GUILD` | Persistent Entity (Institution — Guild) | Monopolist / custodian |
| `ENT-F2-APPRENTICE` | Persistent Entity (Living Character) | Internal transmission recipient |
| `ENT-F2-PUBLIC` | Holder (public / rival workshops) | Observers without access |
| `REL-F2-GUILD-STATE` | Relationship (Knowledge State) | Guild → Subject |
| `REL-F2-PUBLIC-STATE` | Relationship (Knowledge State) | Public → Subject |

**Guild Knowledge State (`REL-F2-GUILD-STATE`):** possession = full; application = high; understanding = high in practice; transmission reach = within-guild (apprenticeship only); restriction = theory unrecorded/secret; claimed intellectual ownership = monopoly.

**Public Knowledge State (`REL-F2-PUBLIC-STATE`):** access = none; possession = none; understanding = none; awareness = the products exist and are superior.

---

# Required Engine Capability

A Knowledge Subject can be highly possessed and applied by one holder while remaining inaccessible and not understood by others, and a monopoly claim must be representable as a distinct condition from custody, validation, and objective truth.

---

# Prohibited Shortcuts

- Making the technique public knowledge simply because it exists and is used.
- Treating the guild's monopoly as ownership of objective truth.
- Modeling the secret as a research-point balance or a tech-tree node.
- Requiring a bespoke economy subsystem to justify the monopoly's value.

---

# Expected Durable Outcome

- One persistent Knowledge Subject.
- A guild Knowledge State that is high on possession/application but restricted on transmission and recording.
- A public Knowledge State that registers awareness of the products but no access or understanding.
- The monopoly recorded as a claim, distinct from the subject's truth.

---

# Resolution

1. **Application without public understanding.** Section 8.2 explicitly lists holders who "apply a practice without understanding its theory" and subjects "locally practiced but not recorded." The guild applies and understands in practice; the public neither accesses nor understands.
2. **Monopoly as a distinct condition.** Section 8.8 enumerates **custody**, **control of access**, **validation authority**, **claimed intellectual ownership or monopoly**, **holder Knowledge State**, and **objective reality** as things that "must not be conflated," and states custody/monopoly "does not make the institution automatically correct." The guild's monopoly is a claimed intellectual ownership plus access control — not truth.
3. **Transmission is not a ladder.** Section 8.10 states transmission is "not a mandatory ladder," and knowledge may "remain narrow but highly validated" and "survive in practice while disappearing from theory." Apprenticeship keeps reach within-guild by design; nothing forces publication.
4. **Institution mechanics.** The guild is an ordinary Institution (Section 9): secrecy is doctrine (§9.5), the technique's commercial products are institutional assets governed by Resources & Ownership (§9.6, Decision 022) — the assets are owned, the knowledge is restricted, and the two are tracked separately.
5. **Structure.** One subject `ENT-`, two holder Relationship states; the monopoly claim is a provenance-bearing attribute of the guild's state, not a fact promoted onto the subject.

---

# Verdict

**Pass.** Carried by §8.2 (apply/possess without public understanding), §8.8 (monopoly/claimed ownership distinct from custody, validation, and truth), §8.10 (reach not a ladder), and Section 9 + Decision 022 (assets vs. knowledge). No new abstraction required.
