# Chronicle Engine

## Fixture 413 — Dangerous Manuscript Is Archived, Suppressed, Then Rediscovered

**Non-canonical validation artifact.** See `410_VALIDATION_OVERVIEW.md`.

**Capability under test:** 0.2.4 Loss, Fragmentation, and Rediscovery.
**Acceptance fixture:** 3.

---

# Starting State

A scholar records a dangerous magical technique in a single manuscript. A religious-scholarly order takes the manuscript into a restricted archive, then, judging it perilous, suppresses it: access is forbidden, known copies are destroyed, and the technique falls out of living use. Generations later the order has declined, and the manuscript is recovered from its neglected archive by an outsider who can read only part of it.

---

# Relevant Entities and Records

| Identifier | Kind | Role |
|-----------|------|------|
| `ENT-F3-SUBJECT` | Persistent Entity (Knowledge Subject) | The dangerous technique |
| `ENT-F3-MANUSCRIPT` | Persistent Entity (Individual Resource / Knowledge Asset) | The recording |
| `ENT-F3-ORDER` | Persistent Entity (Institution) | Custodian / suppressor |
| `ENT-F3-FINDER` | Persistent Entity (Living Character) | Rediscoverer |
| `EVT-F3-ARCHIVE` | Event | Manuscript archived |
| `EVT-F3-SUPPRESS` | Event | Access forbidden; copies destroyed |
| `EVT-F3-REDISCOVER` | Event | Manuscript recovered |
| `LNK-F3-CONTINUITY` | Identity-continuity link | Rediscovered state `emerges-from` the earlier subject |

---

# Required Engine Capability

Knowledge can be preserved-but-restricted, then lost from living use without total erasure, then rediscovered — and the rediscovered subject must retain identity continuity with the original, not be a fresh invention. Custody by the order must not equal ownership of truth.

---

# Prohibited Shortcuts

- Requiring every trace to be erased for the knowledge to count as "lost."
- Treating rediscovery as inventing the technique anew, with a new subject identity.
- Introducing a dedicated archive or archaeology subsystem.
- Letting the order's custody make its interpretation objectively true.

---

# Expected Durable Outcome

- The Knowledge Subject persists as one identity across archival, suppression, and rediscovery.
- The manuscript's storage, provenance, and partial survival are tracked as an Individual Resource.
- The rediscovered Knowledge State is partial/distorted per preservation quality, and is linked to the original subject.
- Objective reality (the technique was real) is unchanged by the order's suppression.

---

# Resolution

1. **Recording and restriction.** Section 8.2 (Recording; Publication or Restriction) covers a subject that is archived and "legally restricted, ritually guarded, censored, or deliberately destroyed." Suppression is a state of the subject's custody, not a deletion of the subject.
2. **Dangerous knowledge.** Section 8.9 covers suppression of dangerous knowledge and states "restriction does not prove falsehood" — the order's fear does not settle whether the technique works.
3. **Loss without erasure; rediscovery.** Section 8.12 names "restricted preservation," "fragmented continuity," and "later rediscovery," and requires that "rediscovery should preserve continuity with the earlier existence of that Knowledge Subject… not the same as inventing the same idea in a historical vacuum." Preservation quality governs how completely it returns — here, partially.
4. **The manuscript as a resource.** The manuscript is an Individual Resource / Knowledge Asset (§7.12, §7.2); its Storage (§7.8) and Loss and Destruction (§7.10) govern the destroyed copies and the surviving original, and Section 12 treats it as in-world historical evidence whose claims are not automatically true.
5. **Identity continuity (structural).** Rediscovery does not mint a new subject. The Data Model's identity-continuity graph (`011` §5–6, Decision 044) links the rediscovered Knowledge State to `ENT-F3-SUBJECT` via an `emerges-from` / `possibly-same-as` link carrying a certainty qualifier — the structural expression of §8.12's continuity requirement. The Runtime records `EVT-F3-REDISCOVER` with provenance (Runtime §5).

---

# Verdict

**Pass.** Carried by §8.9 (dangerous/restricted knowledge), §8.12 (restricted preservation, rediscovery, preservation quality), §7.8/§7.10 + Section 12 (the manuscript as resource and evidence), and the identity-continuity graph (`011` §5–6). No archive/archaeology subsystem required.
