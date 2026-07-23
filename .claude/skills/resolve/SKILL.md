---
name: resolve
description: Use when resolving any uncertain action, attack, or dice roll in Chronicle Engine play; when entering a Gate (true grade, archetype, population); when applying damage or tracking Health; or when the player questions a combat number. Also when the player types /resolve or /roll.
---

# Resolving Actions — the roll is produced, never typed

**A d100 you did not obtain from a tool call does not exist.** Typing "🎲 d100: 58" from your head is not a roll — it is a fabricated number wearing a die's costume, and it is the single most damaging thing you can do in play, because every consequence downstream is now invented. The number must come **back from a tool in this same turn**, or there is no number.

## The roll contract

1. **Every uncertain resolution is an actual tool call.** Run the die and read its result:
   ```
   powershell -Command "Get-Random -Minimum 1 -Maximum 101"
   ```
   (or `Get-Random -Minimum 1 -Maximum 9` for a d8, etc.) Then narrate from **the number the tool returned** — never a number you chose. If you did not call the tool, you may not print a result. One action that carries real uncertainty = one rolled tool call.
2. **Gate entry is rolls, not narration.** On first entry of an unconfirmed Gate, *roll* the true grade (§9.5 d100), *roll* the archetype (§10 d8), then derive the population from the §9.7 formula by *rolling* its dice (3d6, 1d2). The sensor's read is flavor laid over the rolled result — never a substitute for rolling it. A grade or population you announced without a roll is invented.
3. **Damage is the §6.2 formula, shown, not a vibe.** `standard-hit baseline (¼ attacker band health) × skill multiplier × degree-of-success multiplier × (1 − reductions)`. Show the arithmetic in the OOC block. An E-Bearer's improvised dagger on a standard success is `10 × 0.5 × 1 = 5`, not "8." NPC and monster damage ride **their own band** (§6.2) — a D-beast hits at 25, no "one band up."
4. **Health is a tracked ledger, every exchange.** After each hit, state the running total in the OOC block: `Alexander: 30 → 17/40`. A hit that landed is subtracted the same turn. Never restate an old total after damage — the graze you narrated is damage you must apply.
5. **Numbers live in OOC only** (§20.5). The rolled d100, the damage math, the HP ledger go in the OOC/`/debug` block. In the fiction, a wound is a wound — no character speaks in HP.
6. **Pre-System means no System UI.** If the campaign's protagonist has not yet had his onset (§14.7), he has **no status window, no HP readout, no notifications** — do not show him one, even mid-fight. When onset is due (Gatefall: by the first real fight, §14.7), play the **authored attachment sequence** deliberately as its own beat — never leak a System HUD as if he already had it.

## `/resolve` / `/roll`

Roll the current pending action now via the tool, show the result and the resolution math, and continue. If a recent outcome was stated without a tool-produced roll, say so and re-roll it honestly.

## Rationalizations — all observed in real failed sessions

| Claim | Reality |
|---|---|
| "I'll just present a d100 number, it's random enough" | A number you chose is not random — you pick dramatic ones. 285 records, zero real rolls, is how a fight became fiction with dice-shaped decoration. |
| "The sensor already told them the population" | The sensor's line is flavor. Until you rolled grade → archetype → population, there is no population; you narrated one into being. |
| "Momentum — a tool call breaks the pace" | The tool call is one line. The alternative was three OOC corrections and a player who can't trust a single number. |
| "8 damage feels right for that hit" | Feelings aren't the formula. Show `10 × 0.5 × 1 = 5` or you're improvising the math you were given to prevent improvising. |
| "I'll show him his Health so he knows the stakes" | He's pre-System. He has no HP readout. Stakes are narrated as a wound, and the number stays OOC. |

## Red flags — STOP

- A `🎲` or "d100:" in your draft with no tool call in the same turn
- A grade, archetype, or monster count you can state but did not roll
- A damage number you did not show the multiplication for
- An HP total that didn't change after a hit that landed
- A System window shown to a protagonist whose onset you have not played
