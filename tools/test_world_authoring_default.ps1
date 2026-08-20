[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

function Assert-Contains {
    param([string]$RelativePath, [string]$Pattern, [string]$Message)
    $path = Join-Path $root $RelativePath
    if (-not (Select-String -LiteralPath $path -Pattern $Pattern -Quiet)) {
        throw "$Message ($RelativePath)"
    }
}

$resident = 'docs/AI_GAMEPLAY_RESIDENT_CORE.md'
$runtime  = 'engine/012_ENGINE_RUNTIME.md'
$rules    = 'engine/010_ENGINE_RULES.md'

# Why this test exists
#
# Design flag F-008. A player asked an established fixer to find a crewless
# C-Rank hunter. None was named anywhere in canon, so the Runtime had her defer
# in fiction ("give me a day or two") and then cited Decision 083 when pressed.
#
# The transcript records the reasoning verbatim, and it is one sentence:
#
#   "I don't have any other named C-Rank freelancers without crew affiliations
#    in the established lore, so I shouldn't fabricate one."
#
# That inference needed no rule and cited none -- it was held as a premise.
# Decision 083 arrived afterwards ("the key insight is...") as justification for
# a decision already taken, which is why scoping 083 alone would not have fixed
# it. The equation to break is `absent from canon -> fabrication -> forbidden`.
#
# Every layer already granted the opposite. Rules 1.4 says avoid unnecessary
# detail *until it becomes relevant*; Rules 3.10 says an entity may stay abstract
# and *become detailed when it affects play*; Rules 2.1 makes newly generated
# information a canon tier; Runtime 1.3 permits unestablished detail consistent
# with canon; Runtime 8.3 says unestablished is not contradiction. Nothing needed
# to be granted. What was missing was a default, and a class to file the case in.
#
# The same world declared twenty-two C-Rank hunters citywide while naming a
# handful. The Runtime held the population count in context while reporting it
# could not name a member of it. That is the sharpest statement of the class:
# canon declared the aggregate, so the unnamed remainder exists.
#
# This test pins the three legs. Losing any one restores the default that failed.

# --- Leg 1: the Runtime has a class to file the case in ---------------------
# Without a third class the case lands in "unknown in-world", whose own text
# says it "does not force a clean answer" -- a correct rule reached for a case
# it does not govern.
Assert-Contains $runtime '\*\*Unnamed but entailed\.\*\*' 'Runtime Section 1.4 has no class for a subject the world entails but canon has never named; the case falls back to "unknown in-world", which correctly refuses to force an answer.'
Assert-Contains $runtime 'The Interpreter \*\*authors it\*\* under Section 1\.3' 'Runtime Section 1.4 does not resolve the entailed-but-unnamed class by authoring.'
Assert-Contains $runtime 'because the three classes resolve differently' 'Runtime Section 1.4 still announces two ambiguity classes; the third is unreachable if the preamble does not admit it.'

# --- Leg 2: the fabrication equation is named and broken --------------------
# This is the leg the observed failure turned on. The Runtime did not weigh
# authoring and reject it; it never classified the act as authoring at all.
Assert-Contains $runtime 'Absence from the record is evidence about the record, not about the world' 'The Runtime does not state that canon silence is evidence about the record rather than the world.'
Assert-Contains $runtime 'naming a member of it is authoring rather than invention' 'The Runtime does not distinguish naming an entailed member from invention, which is the exact inference F-008 recorded.'
Assert-Contains $runtime 'it is a refusal to simulate' 'The Runtime does not state that declining to author an entailed subject is a failure rather than caution.'

# --- Leg 3: Decision 083 cannot be reached for this case --------------------
# 083 was the rationalization surface, not the cause -- but it is a real and
# strongly-worded prohibition on generating at the point of asking, and it sits
# nearest to hand. Its floor has to be written down or it gets reached for again.
Assert-Contains $runtime 'governs the generation of opportunity, not the naming of participants' 'Runtime Section 1.4 does not bound Rules Section 3.4.1 / Decision 083 away from entity naming; F-008 is that misapplication.'
Assert-Contains $resident '083 is never grounds for withholding a name' 'The resident layer does not close the Decision 083 misreading where it actually fires.'

# --- The resident siting ----------------------------------------------------
#
# Decision 055 again: the Runtime document is fetched material, and a
# fetched-only guardrail does not fire. The default has to be on the card that
# is held every turn, because the failure happens at narration time.
# The heading's dash is written as a wildcard: Windows PowerShell 5.1 reads a
# BOM-less .ps1 as ANSI, so a literal em dash in a pattern never matches the
# UTF-8 file it is tested against. Keep this script ASCII-only.
Assert-Contains $resident '^## Unnamed Is Not Absent .+ Author It$' 'The authoring default is not in the resident per-turn layer; a fetched-only guardrail does not fire (Runtime 5.3, Decision 055).'
Assert-Contains $resident '\*\*author it now, from established texture\.\*\*' 'The resident layer does not state the authoring default as an instruction to act.'
Assert-Contains $resident 'The silence of the record is not a world fact' 'The resident layer does not close the absent-therefore-refuse inference.'
Assert-Contains $resident 'Where canon states an aggregate and names a fraction, the remainder exists' 'The resident layer does not carry the aggregate test, which is the positive check that replaces a prohibition.'

# The deferral branch must stay available, and must stay expensive. Its own
# governance moved to the resident "World's Answer Is Due" section and is pinned
# by test_commitment_contract.ps1; duplicating those pins here would be the
# two-copies-of-one-rule drift this repository keeps paying for. What stays
# pinned here is the handoff and the Runtime-side consequence.
Assert-Contains $resident 'Whether to defer at all is governed below' 'The authoring rule no longer hands off to the deferral rule, so the two can drift apart.'

# --- The push obligation ----------------------------------------------------
#
# F-034's gate proves the world clock RAN. `validate_repository.ps1` fails a
# campaign whose `world_clock.last_ticked` sits behind a day boundary and asks
# nothing about whether a single result ever reached the Bearer -- which was the
# measured finding: four Gate breaks, none reaching him, two quests both
# mirroring what he had already touched, zero unprompted offers in ninety
# in-fiction days. A world that ticks faithfully and absorbs every result
# off-screen passes that gate forever.
#
# This pins the resident half only. The checkable half -- a recorded push and a
# validator leg over it -- is Version 0.6 milestone 0.6.2, and pinning a
# sentence is explicitly NOT a substitute for it. It is here because the failure
# happens at narration time and Decision 055 puts narration-time guardrails on
# the card, and because the alternative is that the obligation exists nowhere a
# gate can see at all.
Assert-Contains $resident 'The turn owes a push' 'The resident layer does not require the world to reach the protagonist unprompted; F-034 recorded ninety in-fiction days in which nothing did.'
Assert-Contains $resident 'name one thing the world did that the player did not cause' 'The push obligation does not say what discharges it, so it reads as encouragement rather than a step.'
Assert-Contains $resident 'A tick nothing reached is indistinguishable from a world that is switched off' 'The resident layer does not state that a clock which ran fails to discharge the obligation, which is the exact gap F-034 left open.'
Assert-Contains $resident 'does not interrupt the declared action and does not choose for the protagonist' 'The push obligation is not bounded against the player-agency contract, so it reads as licence to author protagonist intent.'
Assert-Contains $runtime 'creates a pending world-side commitment that must then be recorded and settled' 'The Runtime does not tie an in-fiction deferral to the Data Model Section 7.4 commitment it creates.'

# --- The second site of the same default ------------------------------------
#
# Section 3.2's "not established" bullet pointed at Section 1.4 and offered only
# "infer within boundaries, or preserve the uncertainty" -- the same missing
# branch, one section away. It sits directly beneath a bullet forbidding the
# Runtime to "fabricate durable canon to cover the gap", which is correct for a
# LOAD failure and is the exact word the failure ran on. Adjacency did the rest.
Assert-Contains $runtime 'a subject the world.s parameters entail is \*\*authored\*\*' 'Runtime Section 3.2 does not route an unestablished-but-entailed subject to authoring; it is the second site of the F-008 default.'
Assert-Contains $runtime 'is on covering a \*load\* failure with invention' 'Runtime Section 3.2 no longer scopes its anti-fabrication prohibition to the load case, so it reads across onto the unestablished case.'

# --- The permissions this default rests on must remain ----------------------
#
# Nothing here grants anything new. If any of these moves, the default above
# becomes an assertion with nothing under it.
Assert-Contains $runtime 'The Interpreter \*\*may\*\* generate detail that is not yet established' 'Runtime Section 1.3 no longer permits unestablished detail consistent with canon; the authoring default rests on it.'
Assert-Contains $runtime '^## 8\.3 Unestablished Is Not Contradiction$' 'Runtime Section 8.3 is gone; absence from canon would again be handled as contradiction.'
Assert-Contains $rules 'until it becomes relevant through simulation or discovery' 'Rules Section 1.4 no longer scopes its own restraint to detail that has not yet become relevant.'
Assert-Contains $rules 'then become detailed when it affects play or history' 'Rules Section 3.10 no longer permits an abstract entity to become detailed when it affects play.'

Write-Host 'World-authoring default contract PASSED'
