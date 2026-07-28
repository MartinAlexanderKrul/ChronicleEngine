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
Assert-Contains $resident 'Full channel test, rationalization table, and red flags: the `npc-knowledge` skill' 'The resident layer does not point at the fetched elaboration.'
Assert-Contains $skill 'The channel test \(run it before every NPC line\)' 'The npc-knowledge skill no longer carries the full channel test it elaborates.'

Write-Host 'NPC channel contract PASSED'
