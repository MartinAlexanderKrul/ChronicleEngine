---
name: engine-change
description: Use before changing Chronicle Engine architecture — the Resident Core, engine Rules, Data Model, Engine Runtime, a World Rule Profile, a gate or validator, or a campaign's declared dispatch — and when actioning a design flag, bumping a profile version, or asking what documentation a change owes. Not for campaign play or in-fiction rulings.
---

# Engine Change — the diff decides the class, and the class decides the paperwork

The `flag` skill raises engine friction and says outright that it **does not** evaluate, implement, or resolve it. This is that other half. Every obligation below exists because it was missed once and cost a repair.

**The repository is the authority, not this file.** `docs/DEVELOPMENT_WORKFLOW.md`, Decision 069 in `engine/001_ENGINE_DECISIONS.md`, and `engine/002_ENGINE_ROADMAP.md` govern; read them when a case is unclear. This skill is the checklist that keeps you from discovering an obligation after the change has landed.

## Before you edit: get a clean baseline

Run `tools/test_all.ps1` **from PowerShell** and record the verdict. Under Bash the Python validator crashes on its own failure messages and a red run reports as a phantom traceback. Without a baseline you cannot tell your break from a break you inherited, and HEAD moves between sessions — check it rather than assuming.

## Classify the change — structurally, on the diff

Decision 069: a change is **foundational** if its diff does any of these.

1. adds, removes, or renumbers a section of `010_ENGINE_RULES.md`;
2. changes `011_ENGINE_DATA_MODEL.md` **in any way**;
3. introduces an engine-general mechanism a world or campaign may invoke or must satisfy.

Everything else is a **refinement** — including new normative text in `012_ENGINE_RUNTIME.md`, when it only **sites, enforces, or makes explicit an obligation the engine already carries**. The freeze protects the architectural basis, not the execution layer against the playtest findings the lifecycle mandates.

**The test reads the diff, not the motivation.** Urgency, which world asked, and whether it completes an already-accepted decision are all irrelevant. A change meeting the structural test is foundational even when it is small, obvious, and correct.

Then two obligations that are easy to skip and both required:

- **A refinement landing against a released version must name the roadmap milestone that owns it** (`DEVELOPMENT_WORKFLOW.md`). "Refinement under Decision 069" with no milestone is an incomplete claim.
- **State the argument, do not pronounce the verdict.** Decision 069 exists because *"a gate whose subject writes its own verdict is not a gate."* Name the leg that is genuinely arguable, say which way you read it and why, and say what follows if the owner rules the other way. Legs 1 and 2 are not arguable — check them and move on.

Foundational work belongs to a version's Planning and ADR Design and **may not land against a released version**. From Capability Validation onward it is permitted only where it comes from played evidence, is classified, is versioned and migrated, and is revalidated.

## World-scoped changes consume no decision number — and owe the most files

Decision 069 point 4 and Decision 062: authoring a profile is world content. It needs no ADR and no decision number. It does need, and the gates enforce most of it:

| Step | File |
|---|---|
| Bump the version header and Compatibility Status | `worlds/<w>/206_WORLD_RULE_PROFILE.md` |
| Write the migration record | `worlds/<w>/migrations/<from>_to_<to>.md` |
| Add the edge; bump active profile and edge count | `worlds/<w>/migrations/INDEX.md` |
| Advertise the new version | `worlds/<w>/README.md` |
| Re-pin `world_rule_profile:` | `campaigns/<c>/090_CAMPAIGN_STARTUP.md` |
| Adopt `profile_version:` in live state | `campaigns/<c>/100_CHARACTER_SHEET.md` |
| Regenerate | `tools/generate_runtime_index.ps1`, then `-Check` |

Copy the structure of the previous migration file rather than inventing one. **A version bump is not optional bookkeeping**: several suites fail until the world README, the startup pin, and the live character sheet all agree with the profile.

**Write the Compatibility Status history carefully.** The version history lives in one italic parenthetical; opening a second `*(` nests them and breaks the markup. Check the opener/closer balance after editing.

## What you must not do: campaign canon is play

Adopting a profile is recorded as a **campaign Event** at the campaign's current anchor — every prior adoption has one. Minting `EVT-`/`ENT-`/`REC-` identifiers, writing `160_CAMPAIGN_CHRONICLE.md`, adding to `170_CHANGELOG.md`, and bumping `system/ID_REGISTRY.md` are canon writes under save discipline. **Do them in a play session, not in an engine change.** Land the world side, then say plainly that the adoption Event is owed.

The one carve-out is a closed-channel row in an NPC ledger: it mints no identifier, bumps no provenance, and changes no canonical state, and the `npc-knowledge` skill authorises it explicitly. Nothing else in a campaign ledger is yours.

**Resist putting engine status into a campaign ledger at all.** A design-flag note written into `180_CURRENT_STATE.md` was lost when that rolling view turned over two checkpoints later, and the ruling it carried evaporated with it (`F-020`).

## The resident card is a closed surface

`docs/AI_GAMEPLAY_RESIDENT_CORE.md` is in context every turn, and `system/RUNTIME_CONTEXT_BUDGETS.yaml` owns its budget.

1. **Displace before you add.** Say what came out and what it cost. Duplication is the usual find — a rule stated twice in the card is a rule you can state once.
2. **Measure with `tools/measure_runtime_context.ps1`.** Never estimate.
3. **Moving the warning is an owner ruling**, not a step you take because the number is inconvenient. Record what consumed it, attributable line by line, in that file's own comment style.
4. **Re-measure every readiness baseline behind it.** The card is a contributor to all of them; leaving them stale hides the consequence in three campaigns and shows it in one.
5. **Attribute honestly.** Do not fold unrelated live-campaign drift into your change's figure, and say so when you decline to.
6. A resident sentence that reads like prose is often a gate's assertion wearing prose. Expect displacement attempts to fail the suite, and restore them when they do.

## Gates: write one, and make sure it can fail

- **Assert the property, not the sentence carrying it.** A leg pinned to an exact literal fails on an edit that *strengthens* the claim, and a gate that fails when its subject improves teaches its reader to route around it.
- **Verify every new leg fails when its subject is removed.** Back up the file, mutate, run, restore in a `finally` — a `catch` alone leaves the file mutated when the child throws. A check that cannot fail is indistinguishable from one that works, and is worse than one that fails.
- **Keep patterns ASCII.** These files are BOM-less UTF-8 and Windows PowerShell 5.1 decodes them as ANSI, so a literal `—` or `×` silently never matches and the assertion passes vacuously. Split the pattern at the dash rather than escaping it.
- **Scope presence checks to the section they belong to.** `**Level` occurs in a dozen places in a 4,000-line profile; a file-wide match proves nothing.
- **Fixtures select by property, never by live value.** A fixture pinned to a campaign figure goes stale the moment play moves.

## Documentation, and the one that gets forgotten

- `engine/004_DESIGN_FLAGS.md` — set the flag's Status with a pointer to where it landed. Amend the flag's own diagnosis where the evidence contradicts it, and say so; the original reading is worth preserving next to the correction. Record what is **not** done.
- `engine/030_ENGINE_CHANGELOG.md` — Problem / Change / Files / Audit, plus cost and what is left open. Point at content; do not restate it.
- A `docs/4NN_.../` analysis when the reasoning is worth more than the diff, indexed in `docs/INDEX.md` with contiguous numbering.
- **When you supersede an earlier finding, write the notice on the superseded document.** This is the one that gets forgotten: a new document saying "supersedes in part" leaves every reader of the old one believing a claim you have disproved. Distinguish what is overturned, what is merely narrowed, and what still stands untouched.
- Mirror `.agents/skills/` and `.claude/skills/` byte-identically. A fix in one and not the other is a rule that is true in one runtime and false in the other.

**A disposition is a hand-maintained value describing something that moves.** `F-013` sat stale about its own remedy for three days while a flag was raised against the staleness it had predicted. Before relying on a **Left open**, check it against the code.

## Finish

Re-run `tools/test_all.ps1` from PowerShell and report the verdict honestly, including pre-existing observations. Re-measure the context surfaces so no baseline is left drifting. **Do not commit unless asked**, and never append a co-author trailer.

## Rationalizations

| Thought | Reality |
|---|---|
| "It's a one-line edit, not architecture" | The structural test reads the diff. One line in `011` is foundational; a paragraph in `012` may not be. Check, don't estimate. |
| "It's obviously a refinement" | Then the argument takes one sentence. Skipping it is how ten foundational changes landed against a released version. |
| "The suite is green, so it's done" | Green proves nothing broke. It does not prove you wrote the changelog, named the milestone, or told the superseded document it was superseded. |
| "I'll note the budget cost afterwards" | Unrecorded drift becomes the larger half of the next move's total, and nobody can attribute it. Measure in the same pass. |
| "The old analysis is still basically right" | Then say exactly which parts, on that document. "Basically right" is what a reader cannot act on. |
| "I'll add the adoption Event to be thorough" | That is canon, and it is play. Thoroughness here is stopping and saying it is owed. |
