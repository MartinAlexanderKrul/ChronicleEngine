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

function Assert-NotContains {
    param([string]$RelativePath, [string]$Pattern, [string]$Message)
    $path = Join-Path $root $RelativePath
    if (Select-String -LiteralPath $path -Pattern $Pattern -Quiet) {
        throw "$Message ($RelativePath)"
    }
}

$resident = 'docs/AI_GAMEPLAY_RESIDENT_CORE.md'
$profile  = 'docs/AI_GAMEPLAY_RUNTIME_PROFILE.md'
$runtime  = 'engine/012_ENGINE_RUNTIME.md'
$skill    = '.agents/skills/npc-knowledge/SKILL.md'

# Why this test exists
#
# A complete, well-written channel test already existed in the npc-knowledge
# skill -- including a rationalization table naming the exact two excuses the
# failures ran on ("a good excuse to move the plot", "I know it, so it's fair
# game"). It still produced four leaks in a single session: three on one thread
# after two corrections in the same conversation, and a fourth on an unrelated
# fact, proving the corrections generalized neither across turns nor across
# facts.
#
# That is the configuration Runtime Section 5.3 and Decision 055 rule out -- a
# guardrail carried ONLY by fetched reference does not fire on a substrate whose
# per-turn default competes with it. So the fix is not stronger wording. It is
# siting: the check must be resident, and the ruling must outlive the scene.
# This test pins all three legs of that, because losing any one restores the
# configuration that failed.

# --- Leg 1: the check is resident, not fetched-only ------------------------
Assert-Contains $resident '^## The NPC Channel Check$' 'The NPC channel check is not in the resident per-turn layer; a fetched-only guardrail does not fire (Runtime 5.3, Decision 055).'
Assert-Contains $resident 'An NPC knows a fact only if the fiction gave \*\*that\*\* NPC a channel to it' 'The resident channel rule is missing its core statement.'
Assert-Contains $resident 'was this NPC \*present\*, \*told\* through a channel that exists, does their \*role\* give records access, or is it \*common knowledge\*' 'The resident layer does not carry the four-channel test itself.'

# --- Leg 2: it fires per line, and prior corrections do not inoculate -------
# This is the leg the observed failure broke: two corrections in one scene, then
# the same leak a third time, then a fourth on a different fact.
Assert-Contains $resident 'A correction earlier in the scene does not inoculate a later turn, and does not generalize to a different fact' 'The resident layer does not state that a correction fails to inoculate later turns.'
Assert-Contains $resident '\*\*"The Runtime knows it" is the trap, not the exemption\*\*' 'Runtime-held material (counters, quest state, prior narration, tool output) is not named as the trap.'

# --- Leg 3: the trigger stays narrow, so narration keeps its pace -----------
# A check that fired on every NPC line would be paid on nearly all dialogue and
# would be dropped under load. Narrowness is what makes it survivable.
Assert-Contains $resident 'beyond \*\*present visible conduct\*\*' 'The trigger is not scoped to assertions beyond present visible conduct; an unscoped check costs pace and gets dropped.'
Assert-Contains $resident 'need no check at all, which is nearly all NPC dialogue' 'The resident layer does not establish that the common case is unchecked.'
Assert-Contains $resident 'The correct branch is the cheap one' 'The resident layer does not state that correct play costs less than the failure.'

# --- The default-deny phrasing rule ----------------------------------------
Assert-Contains $resident 'write it as a read or a guess, never as something observed or reported' 'Behaviour-based inference may still be written as observation or report.'

# --- Corrections must become durable artifacts ------------------------------
Assert-Contains $resident 'record the closed channel in the campaign''s NPC ledger so the ruling outlives the scene' 'A player correction is not required to be recorded, so it evaporates with the scene.'

# --- Declared enforcement point (Decision 055 requires one) ----------------
Assert-Contains $runtime '\| Grounding . NPC channel \| Before any NPC line asserting a fact about the player character' 'Runtime 0.2 declares no enforcement point for the NPC channel check.'
Assert-Contains $runtime 'is Grounding applied to dialogue rather than a fifth invariant' 'The NPC channel row is not tied back to Invariant 1.'

# --- The fetched layers still exist and are advertised, not replaced --------
Assert-Contains $profile 'the NPC channel check' 'The Runtime Profile does not advertise the resident NPC channel guard, so a campaign boot need not load the layer that owns it.'
Assert-Contains $resident 'voice and independence discipline, rationalization table, and red flags: the `npc-knowledge` skill' 'The resident layer does not point at the fetched elaboration.'

# --- F-016: the channel test governs facts, and nothing governed manner -------
#
# An NPC can pass every assertion above and still be wrong. Two NPCs with
# explicitly different authored personalities produced structurally identical
# beats on back-to-back turns -- a flat correction, a one-clause reframe, a wry
# closing line -- in one register wearing two names.
#
# The independence half is the sharper one, because the obvious correction makes
# it worse. Told an NPC "doesn't need to agree with your narration," the easy
# repair is to have them disagree with the PLAYER instead; the NPC's position
# never moves and only its target does. So the rule is written on whose read the
# NPC carries, never on whom it agrees with -- and where no grounded basis for an
# opinion exists, the correct output is that the NPC holds none.
Assert-Contains $resident 'manner is what compression removes' 'The resident layer does not make an NPC voice a constraint to write against (F-016).'
Assert-Contains $resident 'two loaded NPCs are never interchangeable' 'The resident layer does not forbid one register wearing two names (F-016).'
Assert-Contains $resident 'An opinion is the NPC''s own' 'The resident layer does not source an NPC opinion to that NPC rather than to the Runtime (F-016).'
Assert-Contains $resident 'flipping agreement into disagreement is not independence' 'The resident layer does not close the polarity trap, which is the repair that made F-016 worse rather than better.'
Assert-Contains $skill 'whose read they are carrying' 'The skill does not state the independence test on whose read the NPC carries.'
Assert-Contains $skill 'the correct output is that it holds none' 'The skill does not permit an NPC to hold no opinion, which is the branch the Runtime skips.'
Assert-Contains $skill 'Read `personality` as a constraint to write against' 'The skill does not make the personality field a writing constraint.'
Assert-Contains $skill 'The channel test \(run it before every NPC line\)' 'The npc-knowledge skill no longer carries the full channel test it elaborates.'

# --- The load contract ------------------------------------------------------
#
# The channel check above governs what an NPC may KNOW. It presupposes something
# nothing previously required: that the NPC's own record was read before the
# Runtime played it. It is not read by default -- `130_NPCS_AND_FACTIONS.md` is
# `available_on_demand` in every derived operation plan, and the Runtime Profile
# excludes NPC ledgers from readiness whole-file reads, both correctly: the
# Gatefall ledger alone is over eight times the whole readiness budget.
#
# That left the encounter case with no obligation at all. A Runtime could open a
# scene, play a recorded NPC from recollection for a dozen exchanges, and violate
# no stated rule -- while Decision 076 already established that recollection of a
# character decays to a role label, which is exactly the content at stake.
#
# So the rule is sited resident for the same reason the channel check is
# (Decision 055): the plan that names the read is fetched material, and a
# fetched-only guardrail does not fire.

Assert-Contains $resident '^## Load a Recorded NPC Before Playing It$' 'The NPC load obligation is not in the resident per-turn layer; the plan naming the read is fetched, and a fetched-only guardrail does not fire (Runtime 5.3, Decision 055).'
Assert-Contains $resident 'load the record before that NPC''s first line in a scene' 'The resident layer does not state when the NPC record must be loaded.'
Assert-Contains $resident 'Once per scene, not once per line' 'The load obligation is unbounded per line, which makes it too expensive to keep and it will be dropped.'
Assert-Contains $resident 'a line that happens to come out right was still ungrounded' 'The resident layer lets a correct-by-luck line stand in for a grounded one.'
Assert-Contains $resident 'Loading asks what the record says; the channel check asks what the character may know' 'The load obligation and the channel check are not distinguished, so satisfying one will be read as satisfying both.'

# The load is only affordable because readiness carries the rulings that must
# survive between scenes. Losing this selector restores the configuration where a
# player ruling was written to a file the next session never opens.
$startup = 'campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md'
Assert-Contains $startup 'campaign_readiness_headings' 'The prototype campaign declares no bounded campaign readiness headings.'
Assert-Contains $startup 'heading: "Closed Channels"' 'Readiness no longer selects the NPC ledger''s Closed Channels table.'
Assert-Contains 'campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md' '^## Closed Channels$' 'The NPC ledger no longer carries the Closed Channels table the readiness selector names.'

# The obligation needs a read behind it. Without a declared dispatch the only
# handle on an NPC record is the whole 250 KB ledger, and the rule degrades into
# an instruction to go searching -- which is the cost that gets it dropped.
Assert-Contains $startup 'npc_present:' 'The prototype campaign declares no NPC-encounter dispatch, so the resident load obligation names no read.'
Assert-Contains $startup 'object_source: campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY\.md' 'The NPC dispatch does not name the roster its subject identifiers come from.'
Assert-Contains $resident 'Take the fields the campaign''s declared entity dispatch names rather than the whole block' 'The resident layer does not bound the load to named fields; the largest live record is over 65 KB.'

# --- The write is immediate, and every layer must agree (F-003) -------------
#
# The resident rule above requires a closed-channel ruling to be recorded "so
# the ruling outlives the scene", and the Closed Channels table's own framing
# says to add a row "the moment a channel is ruled closed ... do not wait for a
# checkpoint". Both were correct. Two fetched skills said the opposite:
# npc-knowledge told the Runtime to "hold the closed channel as a pending ruling
# in conversation rather than writing it to the NPC ledger file mid-scene", and
# the save skill named an "NPC-knowledge ruling" among the deltas held until
# /save. Four documents, two of them pointing the wrong way, and only the
# resident leg was pinned -- so the conflict passed every gate.
#
# That is F-003's mechanism. A Runtime following the fetched skill holds the
# ruling in conversation, nothing durable exists two exchanges later, and the
# fact leaks again inside the same scene. The table's rows record it happening
# twice on one fact and three times on another, each after a correction.
#
# These legs pin the agreement rather than any single copy of it.
$npcSkillClaude = '.claude/skills/npc-knowledge/SKILL.md'
$saveSkill      = '.agents/skills/save/SKILL.md'
$saveSkillClaude = '.claude/skills/save/SKILL.md'

foreach ($s in @($skill, $npcSkillClaude)) {
    Assert-Contains $s 'Then write the row immediately' "The npc-knowledge skill does not require the closed-channel row to be written at once ($s)."
    Assert-NotContains $s 'rather than writing it to the NPC ledger file mid-scene' "The npc-knowledge skill still defers the closed-channel write, contradicting the resident rule and the table's own framing (F-003) ($s)."
}

foreach ($s in @($saveSkill, $saveSkillClaude)) {
    Assert-Contains $s 'One exception, and only one: a closed-channel ruling' "The save skill does not carve out the closed-channel write, so its mid-scene prohibition still swallows it (F-003) ($s)."
    Assert-NotContains $s 'or an NPC-knowledge ruling is now held as a pending delta' "The save skill still holds an NPC-knowledge ruling until /save, which is the write that evaporates (F-003) ($s)."
}

# The mirrors must stay byte-identical, or a fix lands in one and not the other.
foreach ($pair in @(
    @('.agents/skills/npc-knowledge/SKILL.md', '.claude/skills/npc-knowledge/SKILL.md'),
    @('.agents/skills/save/SKILL.md',          '.claude/skills/save/SKILL.md'))) {
    $a = Get-FileHash (Join-Path $root $pair[0]) -Algorithm SHA256
    $b = Get-FileHash (Join-Path $root $pair[1]) -Algorithm SHA256
    if ($a.Hash -ne $b.Hash) {
        throw "Skill mirrors have diverged: $($pair[0]) and $($pair[1]) differ, so a rule can be fixed in one and left wrong in the other."
    }
}

Write-Host 'NPC channel contract PASSED'
