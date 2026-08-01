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

$dataModel = 'engine/011_ENGINE_DATA_MODEL.md'
$runtime = 'engine/012_ENGINE_RUNTIME.md'
$decisions = 'engine/001_ENGINE_DECISIONS.md'
$resident = 'docs/AI_GAMEPLAY_RESIDENT_CORE.md'

# Decision 082. Design flag F-001 recorded five parties owing the protagonist
# contact, none of them recorded as anything a Runtime could settle. The
# campaign had already improvised the construct by hand in OBJ-23 — an
# explicitly labelled "Runtime-authored NPC-behavior trigger" with a due window
# — and it failed within one in-fiction day, because nothing dispatches against
# prose. These assertions exist because a documented obligation with no
# mechanical check is the configuration 012 Section 0.2 rules out.

# Patterns stay ASCII-only and single-line: Select-String is line-based, and
# under Windows PowerShell 5.1 a non-ASCII literal in either the pattern or the
# scanned file is an encoding coin-flip. The sibling agency contract test holds
# the same convention.
Assert-Contains $decisions '^## Decision 082 .+Pending World-Side Commitments$' 'Decision 082 is missing.'

# The construct, and the structural choice that keeps it off a schema advance.
Assert-Contains $dataModel '^## 7.3 Tracked State$' 'Tracked State has no engine-general definition.'
Assert-Contains $dataModel '^## 7.4 Pending World-Side Commitment$' 'The pending world-side commitment construct is missing.'
Assert-Contains $dataModel 'present truth that carries no identifier' 'Tracked State is not distinguished from identified canonical state.'
Assert-Contains $dataModel 'Status       pending \| met \| partially-met \| lapsed \| deferred' 'The commitment status set is missing or altered.'
Assert-Contains $dataModel '`Due` is required' 'A commitment can still be recorded with no time a clock can reach.'
Assert-Contains $dataModel 'A lapse is a settlement, not an absence' 'Lapse semantics are not stated; unsettled silence would be indistinguishable from a forgotten obligation.'
Assert-Contains $dataModel 'Runtime-authored expectation of NPC behavior' 'A Runtime-authored expectation is not covered — the OBJ-23 failure class.'

# Settlement rides the existing clock boundary rather than inventing one.
Assert-Contains $runtime 'pending world-side commitments' 'Canonical Time Settlement does not settle commitments.'
Assert-Contains $runtime 'never discharged by offering the player an action' 'The Runtime may still resolve a world obligation by handing the player a lever.'
Assert-Contains $runtime 'first operation that notices a commitment has come due' 'A status view or checkpoint could still be the first thing to notice a due commitment.'

# Resident per-turn settlement, on the same step that already settles elapsed time.
Assert-Contains $resident 'Settle every pending world-side commitment the span reached' 'Turn-State Settlement does not settle due commitments.'
Assert-Contains $resident 'the world acts whether or not the player asked' 'Commitment settlement can still be read as player-triggered.'

# Decision 082 point 2 exists to avoid a schema advance: a commitment is tracked
# state, so no Persistent Object structure changes and no live record is retagged.
# This pinned the Data Model at 0.1.5 until Decision 085 advanced it to 0.1.6 for
# an unrelated reason — which is the false positive a version pin buys, since the
# number moves for changes this contract has no stake in. What Decision 082
# actually claims is asserted directly instead, and it still fails the moment a
# commitment is made object-shaped.
Assert-Contains $dataModel 'A \*\*pending world-side commitment\*\* is tracked state' 'Section 7.4 no longer declares a commitment as tracked state.'
Assert-NotContains $dataModel 'A pending world-side commitment is a Persistent Object' 'A commitment must remain tracked state, not a Persistent Object.'

# --- The creation side (2026-08-01) -----------------------------------------
#
# Decision 082 specified in full how a commitment is SETTLED and never said when
# one comes into BEING. Section 2.4's whole treatment opens at "when elapsed time
# reaches a commitment's due time", which presupposes a record that something
# had to write. Nothing did.
#
# The evidence is that the construct has zero live instances. Neither a pending
# commitment (Section 7.4) nor a supply source (Section 7.5) appears anywhere in
# the prototype campaign, while the Gatefall profile's board domain already
# declares a `commitment.due` trigger delta against commitments that are never
# recorded. Both decisions were admitted as foundational exceptions to the
# Version 0.3 freeze; both built a settler and no writer.
#
# So the player's report -- that "give me a day or two" never once came back
# without them authoring it themselves -- is the predicted behaviour, not a
# lapse in care. These legs pin the missing half.
Assert-Contains $runtime 'A commitment is recorded when it is made, not when it comes due' 'The Runtime specifies settlement but never the moment a commitment is created; a promise no one records is unreachable by every rule above it.'
Assert-Contains $runtime 'same response that narrates it' 'The creation obligation is not bound to the narrating turn, so it can drift to /save and be lost.'
Assert-Contains $runtime 'is therefore not narratable as an undertaking' 'A promise with no establishable due time can still be narrated, producing an unrecordable obligation.'

Assert-Contains $resident '^## The World.s Answer Is Due In The Scene That Asks$' 'The creation obligation is not resident; the failure happens at narration time and a fetched-only guardrail does not fire (Decision 055).'
Assert-Contains $resident 'If you are not recording it, do not narrate it' 'The resident layer does not remove the cheap escape -- narrating a deferral without recording it.'
Assert-Contains $resident 'not recordable, and therefore not sayable' 'The resident layer still permits an open-ended promise, which is the shape that cannot be settled.'

# --- Deferral itself is the defect, not just an unrecorded deferral ---------
#
# Recording a deferral correctly makes the WRONG answer well-tracked. The owner's
# second correction: the Runtime reaches for "later" as a general-purpose answer
# to its OWN uncertainty and speaks it in the character's voice. Kesha was a desk
# fixer with the registry open, asked about the registry -- she was waiting on
# nothing; the Runtime was. Because fictional time advances only as play drives
# it, "in two days" is frequently never, so the deferral converts an answerable
# question into a thread the player must return and collect.
Assert-Contains $resident 'whose ignorance this is' 'The resident layer does not make the Runtime ask whose ignorance produces the delay, which is the test that separates a real deferral from a laundered one.'
Assert-Contains $resident 'Deferral is the expensive answer, not the safe one' 'The resident layer does not reprice deferral, so "later" still reads as the cautious default.'
Assert-Contains $resident 'is waiting on nothing' 'The capability check is missing: a character able to answer now must answer now.'
Assert-Contains $runtime 'Runtime uncertainty is never a world fact' 'The Runtime does not forbid discharging its own undecided question as an in-fiction delay.'
Assert-Contains $runtime 'the scene that asks the question is the scene that answers it' 'The Runtime states no default that an available answer is due in the asking scene.'

Write-Host 'Pending world-side commitment contract PASSED'
