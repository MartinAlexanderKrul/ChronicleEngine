# Chronicle Engine

## Version 0.4 Economy & Opportunity Validation — Overview

**Status:** In Progress (roadmap milestone 0.4.3)
**Development Target:** Version 0.4 — Economy & Opportunity
**Layer:** Design Retrospective / Validation (400–499)
**Canonicity:** Non-canonical validation artifacts
**Prototype Campaign:** `campaigns/gatefall_pendragon_001/` (Gatefall: Pendragon)

---

# Purpose

This suite validates the frozen Version 0.4 architecture introduced by Decisions 088 and 089:

- a standing need that advances on the world's clock and is met by anyone, including nobody;
- an opening that carries who else may take it, and settles to a claimant.

It adds no simulation domain and redesigns nothing. It asks one question: **can the engine model opportunity as something other actors produce and consume in pursuit of their own ends, without a population model, a market simulator, or a price model?**

Per Decision 048, Capability Validation precedes the Prototype Campaign even though milestone 0.4.3 groups them, so the two evidence tracks are kept distinct:

1. **Deterministic fixtures** exercise shape, staleness, and rejection without touching live canon.
2. **Gatefall: Pendragon live play** exercises the positive end-to-end path — a need met while nobody watched, an opening lost to a rival.

---

# What This Version Must Prove, And What It Cannot

The honest boundary is drawn at the start rather than discovered at the postmortem.

**Mechanically decidable, and therefore gated.** Shape: a need's holder is an entity already in canon, its status is one of five, its due is recordable, an `unmet` need records why. Staleness: an `open` need whose due time is behind the campaign anchor was never settled. These fire in `validate_repository.ps1` and are proven by fixture.

**Not decidable, and therefore observed.** Whether a need was settled *from the holder's own state* rather than from narrative convenience. Whether a claim resolved against the claimants' established standing rather than against what the scene wanted. Whether an opening that remained did so because nobody took it, or because nobody advanced the source. These leave a record once written and no trace at all when skipped — the Version 0.3 postmortem's Finding 2, unchanged and not solved here.

**The gates are vacuous until a world adopts the constructs.** No campaign records a standing need or a claimant today, exactly as none recorded a pending commitment when that gate was built. This is stated plainly because the alternative — a green suite implying coverage that does not exist — is the failure mode Version 0.3 spent a version learning to name.

---

# The Risk This Version Carries

**Milestone 0.4.2 is the mechanism most likely to feel bad in play.** Losing a posting to a rival crew is correct simulation and is also experienced as punishment for hesitating. Decision 089 records this and its acceptance did not withdraw it.

Validation must therefore answer a question no fixture can: **does contention read as a stealth timer?** The structural guards are in place — an unclaimed opening simply remains, nothing becomes likelier because the protagonist was told about it, and the protagonist is a claimant like any other. If play still reads as pressure, that is a finding about the design and not a tuning problem, and it belongs in the postmortem rather than in a profile's rates.

---

# Validation Sources

| Evidence source | What it proves |
|-----------------|----------------|
| `tools/validate_repository.ps1` | Standing-need shape, holder-is-an-entity, status vocabulary, the `unmet`-records-why rule, and staleness against the campaign anchor |
| `tools/test_commitment_settlement_gate.ps1` | The above, proven to fire: seven standing-need fixtures against isolated repository copies, four of which must reject |
| `tools/test_opportunity_supply_contract.ps1` | That supply and needs are advanced per-turn by the resident layer, and settled at the Runtime clock boundary |
| Gatefall: Pendragon play | A need met unobserved; an opening lost to a competitor; a supplier's failure suppressing a downstream opportunity |

---

# Acceptance Rule

A case passes only when:

- the frozen Version 0.4 contracts resolve it without a new foundational abstraction;
- every required enforcement point fires, or its absence is recorded rather than implied;
- failure is explicit rather than silently repaired;
- no live campaign is damaged to manufacture evidence;
- and any claimed operational pass has traceable repository evidence.

---

# Global Prohibited Shortcuts

Validation may not:

- introduce scarcity, decay, or expiry pressure to create urgency (Rules Section 1.2; Decision 003);
- resolve a contested opening by a rule that raises or lowers the protagonist's odds (Law VII);
- generate supply or a claim at the moment of a player inquiry rather than on the clock (Decision 083);
- model a need as belonging to a populace rather than to an actor already in canon (PA-001; Decision 088);
- record a settled `unmet` need without its grounded reason;
- or treat an empty advance as something that need not be recorded.

---

# Deliverables

- `440_VALIDATION_OVERVIEW.md` — scope, authority, method, and the boundary of what can be proven
- `441_CAPABILITY_MATRIX.md` — the acceptance matrix and current evidence

**The matrix's derivable half is generated** by `tools/generate_validation_evidence.ps1` and checked by repository validation. That is deliberate and it is Version 0.3's Finding 4 applied at the start of a version rather than after the record had drifted twenty-eight checkpoints behind the campaign it described.
