# Sealed Volume 01 - Current State - Gatefall: Pendragon

**Parent ledger:** `180_CURRENT_STATE.md` (`REC-000081`)
**Opened:** 2026-09-24
**Rule:** Decision 094; Rules Section 13.1

This volume is canonical history moved here verbatim from its parent ledger. It is not live state: nothing here is read at readiness, and a Runtime opens it only by identifier or heading when a question needs the past. It is byte-frozen from the first checkpoint that captures it, and `tools/validate_repository.ps1` fails any later edit. A correction to anything below is a new Event in the live ledger, never an edit here.

Retired record fields are held in `text` fences, not `yaml`, so they define no object: the live record is the only definition of its identifier.

---

## Stripped metadata asides

2 ruling-provenance and record-keeping asides removed from the live ledger's text at the owner's direction, kept here verbatim. Every Event they cited is still cited in place.

- *ruling aside:* (owner ruling, `EVT-001174`)
- *ruled-at aside:* (ruled `EVT-001174`)

---

## Settled provisional mechanics and closed owner questions

Moved verbatim from `180_CURRENT_STATE.md`'s readiness surface on 2026-09-24: every entry below is settled, and the current-state ledger carries only what is open.

````text
```yaml
provisional_mechanics:
  - subject: "An artificer's working Rank: earned at the bench, capped at the card Rank"
    status: revoked
    granted: "A card Rank (fixed, what Flux Sight reads) and a working Rank (earned at the bench, never above the card Rank), read from Section 12.11's -1 per Rank of a working Rank below the target."
    price: "No new number. It created no threshold, multiplier, cost or cap."
    ruling: "Revoked by the owner at the checkpoint-0173 barrier (`EVT-001178`): an artificer crafts at the card Rank Flux Sight reads; Section 12.11's -1 per Rank governs a target above it. The working-Rank notes on Graciela Corrales and Tobiah Rennick are withdrawn."
    ruled_event: EVT-001178
    granted_event: EVT-001136
  - subject: "Touch-transport extended to multiple restrained/unconscious non-ally subjects in a single anchored step"
    status: ratified
    granted: "Two uses, checkpoint 0160: three captives carried Denver-bound and three carried to the Landing."
    price: "The step's own ordinary Mana cost; no new number invented."
    ruling: "The 'ally he touches may be sent with him' clause (Section 18.8) extends to a restrained or unconscious non-ally subject under the same touch-contact mechanism, at the step's own ordinary cost — no hard passenger cap beyond what he can physically anchor at once."
    ruled_event: EVT-001079
    granted_event: EVT-001060
  - subject: "Standfast's forced-redirect, voluntary-discharge, and narrowed-margin branches"
    status: ratified
    granted: "Three exceptions to Section 13.6's signature-fixity rule, each earned through demonstrated in-fiction work, real Mana cost, and real risk of failure."
    price: "Standfast's own working cost each time, per branch — no new number invented."
    ruling: "A signature may carry any number of earned branches, with no fixed cap and no compounding risk between them. All three of Kane's are standing, permanent law. Transcribed in Profile 1.121, Section 13.6."
    ruled_event: EVT-001079
    granted_events: [EVT-000952, EVT-001014, EVT-001070]
  - subject: "Unbound-awakened rune market pricing"
    status: ratified
    granted: "1x (defensive/utility) / 1.5x (offensive) the combined crystal/core haul of a Gate two Ranks above the rune's own — worked out in play with Walt Adamik and adopted as standing campaign convention, superseding any prior ad hoc rune valuation."
    price: "N/A -- an economics ruling, not a character grant."
    owes: "discharged: worlds/gatefall/206_WORLD_RULE_PROFILE.md Section 12.1.1 (Profile 1.121, `EVT-001089`)."
    ruled_event: EVT-001076
    granted_event: EVT-001076
    due_checkpoint: 162
  - subject: "Coaching an untrained awakened's control of her own existing signature (Elena Cho's telekinesis) by graded exercises with feedback, at her established Rank and pool"
    status: ratified
    granted: "Structured control coaching as fiction: graded exercises, retries that change the situation (Section 4.8), a fumble that surges her own belongings, and a success against an object she does not own (player-stated)."
    price: "No new number. It runs at her established S-Rank pool (1,920; Minor use 192, signature surge 480) and the ordinary d100 bands; a fumble surged her own belongings and broke a window; an untrained grip is the risk."
    ruling: "Ratified as Wrought Hand [S-Rank] (Profile 1.124, Section 7.2), merged with the Kane reshaping (EVT-000952): 400 Mana for a reshaping working, coaching free, no consent, one ordinary roll with the subject's resistance and Rank as signed steps, a success giving a branch of method or reach only, permanent, never a magnitude (Section 13.6). Discharged: worlds/gatefall/206_WORLD_RULE_PROFILE.md Section 7.2."
    ruled_event: EVT-001121
    granted_event: EVT-001111
```

1. **Ruled at `EVT-001121`:** coaching is distinct and ratified as **Wrought Hand [S-Rank]**, merged with the Kane reshaping (no consent, 400 Mana, method or reach only, permanent). Closed.
9. **Ruled at `EVT-001178`:** the artificer's working Rank is revoked. Closed.
````
