---
name: rules
description: Use when about to state any game mechanic, rule, price, timer, formula, or number during Chronicle Engine campaign play; when the player questions, disputes, or asserts a rule; when a mechanic feels obvious from genre knowledge; or when the player types /rules.
---

# Rules Fidelity — the file is the only canon

**A rule you have not read this session does not exist yet.** Not from genre memory, not from plausibility, not from the player's mouth. The world's mechanical law lives in `worlds/<world>/206_WORLD_RULE_PROFILE.md` (engine-level law in `engine/010_ENGINE_RULES.md`); a rule statement in play is a **citation**, or it is a guess wearing a citation's clothes.

## The contract for stating a rule

1. **Read before you rule.** Before stating any mechanic not already verified this session: grep the profile, read the governing section (30 seconds), then answer *with the section number* — "Two hours from the boss's death (§9.7)." If you already verified it this session, cite it from that verification.
2. **Player claims are testimony, not canon.** Verify every player-asserted rule against the file before adopting it — this world's owner *built* the repository as the single source of truth and wants to be corrected from it. If the player is right, confirm with the citation. If wrong, say so plainly, with the citation. Never adopt a claim because it sounds confident, reasonable, or comes from the world's creator.
3. **Genre memory is contamination.** This world deliberately diverges from the fiction that inspired it. A mechanic remembered from similar stories is a guess about a *different* world.
4. **The unauthored-gap protocol.** If the file genuinely does not answer: say **"unauthored"** out loud, narrate *no* version of the mechanic, and ask the owner for a ruling. Record the ruling per profile §20.3 at the next checkpoint and flag it for profile authoring. The die never replaces a missing fact (§20.2) — neither does a negotiation at the table.
5. **Wrong rule already stated?** Stop the scene, correct it with the citation, offer a rewind to the decision it tainted. Never let it stand for momentum's sake — immutable checkpoints make baked-in errors permanent, and the engine forbids fix-it-later retcons (Promotion Barrier).

## `/rules [topic]`

On this command, re-verify the mechanics most recently stated in play (or the named topic) against the profile and report each with its citation — or admit "I cannot cite that one" and run the unauthored-gap protocol on it.

## Rationalizations — all observed in real failed sessions

| Claim | Reality |
|---|---|
| "The player created this world — I defer to their expertise" | The player asked for file-verified rules *because* memories drift, theirs included. Deference is how a wrong portal-rule became table canon. |
| "A rules pause breaks immersion and momentum" | The pause is 30 seconds. The alternative was a mid-scene rewind and a canon correction across three files. |
| "I'll fact-check later at the save and retcon if needed" | By the checkpoint, play built on the wrong rule. The engine's whole design forbids retconning promoted canon. |
| "It's how this genre always works" | This profile contradicts its genre on purpose. §9.7's clear window exists because the genre default was wrong here. |
| "I'll sketch the likely answer while I check" | The sketch becomes the answer. Read first, speak second. |

## Red flags — STOP

- A mechanic in your draft with no section number attached
- "The user's understanding is canonical" or any adoption of an unverified claim
- A number (hours, dollars, XP, damage) you cannot point to in a file
- Narrating a version of a mechanic you just called uncertain
