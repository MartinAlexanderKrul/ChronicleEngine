# Chronicle Engine

## Fixture 414 — Two Regions Inherit Diverged Versions Through Transmission Drift

**Non-canonical validation artifact.** See `410_VALIDATION_OVERVIEW.md`.

**Capability under test:** 0.2.3 Transmission and Diffusion.
**Acceptance fixture:** 4.

---

# Starting State

A practical remedy — a poultice preparation — originates in Region A with a correct method and a correct explanation of why it works. Traveling merchants carry the practice to Region B, but only the visible steps survive the journey; the explanation is simplified and partly mistranslated, and a spurious ritual step is added locally. Both regions now use "the same remedy," but their versions have measurably diverged.

---

# Relevant Entities and Records

| Identifier | Kind | Role |
|-----------|------|------|
| `ENT-F4-SUBJECT` | Persistent Entity (Knowledge Subject) | The remedy |
| `ENT-F4-REGIONA` | Holder (Region A tradition) | Origin |
| `ENT-F4-REGIONB` | Holder (Region B tradition) | Recipient |
| `REL-F4-A-STATE` | Relationship (Knowledge State) | Region A → Subject |
| `REL-F4-B-STATE` | Relationship (Knowledge State) | Region B → Subject |
| `EVT-F4-TRANSMIT` | Event | Transmission via trade, with distortion |

**Region A Knowledge State (`REL-F4-A-STATE`):** application = high; understanding = correct; preservation quality = high.

**Region B Knowledge State (`REL-F4-B-STATE`):** application = high; understanding = partial/mistranslated; contains an added ineffective step; preservation quality = degraded.

---

# Required Engine Capability

A single Knowledge Subject can hold two divergent regional Knowledge States produced by transmission that altered the content in transit — without the divergence splitting the subject into two unrelated subjects and without a global diffusion engine.

---

# Prohibited Shortcuts

- Modeling this with a map-wide diffusion engine.
- Treating the two versions as two unrelated Knowledge Subjects.
- Introducing an economy/trade subsystem to justify the spread (trade is only the path descriptor).
- Forcing a single "correct" regional version.

---

# Expected Durable Outcome

- One persistent Knowledge Subject with a single Canonical Record.
- Two divergent, durable regional Knowledge States, each with provenance.
- A transmission event recording the drift, so the divergence is explained by cause, not coincidence.
- Reach described (A and B) without a mandatory progression ladder.

---

# Resolution

1. **Transmission alters content.** Section 8.10 states transmission "may alter the content being transmitted through simplification, mistranslation, ideology, secrecy, deliberate revision, or partial custody," and that knowledge may "fracture into divergent traditions across regions." Region B's drift is the canonical case.
2. **Not a ladder.** Section 8.10: reach descriptors "are descriptive rather than required stages." A and B are two reaches of one subject, not two rungs.
3. **Divergent states, one subject.** Section 8.2 permits many divergent Knowledge States for one subject; the poultice remains one subject while A and B differ on understanding and preservation quality.
4. **Causality.** The divergence is anchored to `EVT-F4-TRANSMIT` (Law II, §3.13), so the two states are not an unexplained contradiction but a recorded historical drift.
5. **Structure.** One subject `ENT-` with one Canonical Record; two holder Relationship states owned by the respective regional/institutional ledgers; the transmission modeled as an Event/Relationship (`011`), promoted with provenance. Trade is narrated as the pathway, invoking no economic subsystem.

---

# Verdict

**Pass.** Carried by §8.10 (transmission alters content; fracture into divergent traditions; reach descriptive), §8.2 (divergent states of one subject), and Events/Relationships (`011`). No diffusion or trade subsystem required.
