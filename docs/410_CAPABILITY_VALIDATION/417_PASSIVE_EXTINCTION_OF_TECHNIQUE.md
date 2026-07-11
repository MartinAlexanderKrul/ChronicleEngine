# Chronicle Engine

## Fixture 417 — Technique Disappears Through Passive Extinction

**Non-canonical validation artifact.** See `410_VALIDATION_OVERVIEW.md`.

**Capability under test:** 0.2.4 Loss, Fragmentation, and Rediscovery (passive extinction).
**Acceptance fixture:** 7.

---

# Starting State

A rare metallurgical technique for a particular alloy is held by three aging master smiths in one city. They keep it as a closely guarded craft. War and hard times leave them without apprentices; their notes are incomplete and idiosyncratic. One by one the masters die, the last without transmitting the method. No one deliberately destroyed it. Afterward, only market rumors of "the old alloy" and a few undecipherable note-fragments remain.

---

# Relevant Entities and Records

| Identifier | Kind | Role |
|-----------|------|------|
| `ENT-F7-SUBJECT` | Persistent Entity (Knowledge Subject) | The alloy technique |
| `ENT-F7-MASTER-1/2/3` | Persistent Entities (Living Characters) | Final holders |
| `REL-F7-MASTER-STATE` | Relationships (Knowledge States) | Masters → Subject (full, then ending) |
| `ENT-F7-FRAGMENTS` | Persistent Entity (Individual Resource) | Incomplete surviving notes |
| `EVT-F7-LAST-DEATH` | Event | Death of the final knowledgeable practitioner |

After `EVT-F7-LAST-DEATH`: living Knowledge States about the subject collapse to none; only degraded traces (rumor, fragments) remain.

---

# Required Engine Capability

Knowledge can be lost with no deliberate destruction and no catastrophe erasing every trace — extinction by failure to transmit — while the subject remains a historical entity and fragments/rumor may persist, leaving rediscovery possible but not required.

---

# Prohibited Shortcuts

- Requiring war, censorship, or destruction to remove the knowledge.
- Requiring erasure of every trace for "loss" to hold.
- Treating a character's death as irrelevant to what knowledge survives.
- Auto-scheduling a guaranteed rediscovery.

---

# Expected Durable Outcome

- The Knowledge Subject persists as an entity (its historical continuity still matters).
- Living holder Knowledge States end; the surviving state of the subject is fragmentary/rumored.
- The loss is caused (failure to transmit before death), not an unexplained disappearance.
- Note-fragments persist as an Individual Resource; a future rediscovery, if it happens, links to this subject rather than inventing anew.

---

# Resolution

1. **Passive extinction is named.** Section 8.12 lists "passive extinction" among knowledge states, and Section 8.2 (Loss and Rediscovery) defines it directly: a practice "may also vanish through passive extinction when its final knowledgeable practitioners die without successfully transmitting it." Section 8.1 principle 9 keeps future return as rediscovery, not reinvention.
2. **Death drives it.** Section 5.10 (Death) states a character's end may continue to matter through "writings, discoveries, cultural memory, historical records" — and, by absence, through what dies with them. The masters' unrecorded understanding ends at `EVT-F7-LAST-DEATH`.
3. **Loss without erasure.** Section 8.12: knowledge "may persist in degraded or partial form rather than as a cleanly preserved whole." Rumor and note-fragments are exactly that partial survival; total erasure is not required.
4. **Causality.** The extinction is anchored to failure-to-transmit and the death event (Law II, §3.13), so it is a traceable historical outcome, not a silent deletion.
5. **Structure.** The subject `ENT-` is not deleted (`011`: ending an entity does not delete its records; Rules §3.10 End States). The masters' holder states transition to ended; the fragments are an Individual Resource; a later rediscovery would attach via the identity-continuity graph (`011` §6). Objective reality — the alloy was really achievable — is unchanged by the loss.

---

# Verdict

**Pass.** Carried by §8.12 and §8.2 (passive extinction; degraded/partial survival), §8.1(9) (return is rediscovery, not reinvention), §5.10 (death), and entity End States + identity continuity (`011`; Rules §3.10). No destruction event or catastrophe subsystem required.
