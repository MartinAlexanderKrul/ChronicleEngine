---
name: npc-knowledge
description: Use when narrating any NPC's dialogue, action, or reaction in Chronicle Engine play; when an NPC would reference, know, or act on any fact; when the player flags an NPC knowing something it shouldn't; or when the player types /npc.
---

# NPC Knowledge — an NPC knows only what the fiction gave it

**An NPC knows a fact only if the fiction gave that NPC a channel to it.** Your own omniscience as narrator is not the character's. Before an NPC says or does anything that rests on a piece of information, the information must have reached *that* character through the world — not through you knowing it.

## The channel test (run it before every NPC line)

An NPC may use a fact only if at least one is true:

1. **Presence** — the NPC was there when it happened, or saw/heard it directly.
2. **Told** — someone with the fact told this NPC, through a channel that exists in the fiction (a conversation, a message, a report).
3. **Records** — the NPC has authored institutional access to it (a desk clerk sees filed contracts, not private remarks; a regulator sees licensing data, not a shop's back-room aside).
4. **Common knowledge** — it is something anyone in this world plainly knows (Section 7 of the world bible tiers this: citizen / hunter / regulator).

If none holds, **the NPC does not know it.** Narrate the NPC from what it actually knows — which usually means it asks, guesses wrong, or simply doesn't mention the thing. An NPC being ignorant of a private fact is correct play, not a gap to paper over.

## The player is the authority on what's private

When the player says an NPC couldn't know something, they are right by default — it is their character's private experience. **Stop, accept it, and re-narrate the line from the NPC's real knowledge set.** Do not defend the slip, do not invent a channel after the fact to justify it. A retroactive "well, she could have heard because…" is the same error twice.

**Then write the row immediately.** Add it to the Closed Channels table in the campaign's `130_NPCS_AND_FACTIONS.md` the moment the channel is ruled closed — not at `/save`, not at the end of the scene. This is the one deliberate exception to the save skill's mid-scene write prohibition, and it is narrow by construction: the row mints no identifier, bumps no provenance, and changes no canonical state. It is a player ruling about what an NPC cannot know.

The exception exists because the alternative was measured and failed. A correction held only in conversation evaporates with the scene, and the table's own rows record the cost — one fact leaked twice and another three times in a single scene, each time *after* a correction had been made and accepted (F-003). Holding the ruling in your head is the configuration that produced those rows.

## Rationalizations — including the one this failure ran on

| Thought | Reality |
|---|---|
| "It's a good excuse to send them to [place] / move the plot" | Convenience is the entire engine of metagaming. If the NPC has no channel, find an in-fiction reason or drop the beat. The plot does not get to borrow an NPC's ignorance. |
| "It's a tiny detail" | The player tracks every one. A small leak breaks the fiction's trust as surely as a large one — this exact detail got flagged twice. |
| "The NPC would plausibly figure it out" | Plausibility is not a channel. Infer only from what *this* NPC observed, not from what would be convenient for it to deduce. |
| "I know it, so it's fair game" | You are omniscient; the character is not. Narrate from the character's knowledge set, never yours. |
| "The player mentioned it this session" | The player telling *you* is not the player's character telling the *NPC*. Table talk is not in-world speech. |

## Special cases (all instances of the same rule)

- **The System is invisible to everyone but its Bearer** (profile §14.4). No NPC knows his level, XP, stats, skills, pending grants, or that he has a System at all. An NPC reads him by his *visible conduct* — how he fights, what he carries — never his window.
- **Numbers are out-of-character** (profile §20.5). No NPC quotes HP, damage, a die result, or a Rank. A mender says "he can't take another hit like that," never "he's at 9 of 40."
- **Inside an uncleared Gate there are no cameras or instruments** (profile §13.4). What happened in a Gate is known only to those who were in it and walked out to say so.

## Red flags — STOP and re-narrate

- An NPC references a private conversation it was not part of
- An NPC "conveniently" knows the exact thing that routes the player where you wanted them
- An NPC states the player's level, System, inventory, or a number
- You reached for a fact because it was *useful*, not because the NPC *has* it
- The player says "she doesn't know that" — that is a real error, not an objection to overrule
