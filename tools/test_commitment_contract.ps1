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

# Decision 082 point 2 exists to avoid a schema advance. If a later change makes
# a commitment object-shaped, the Data Model version must move with it and this
# assertion is the reminder that the trade was deliberate.
Assert-Contains $dataModel '^\*\*Data Model Version:\*\* 0\.1\.5$' 'Data Model version moved; Decision 082 asserts 0.1.5 stands because no Persistent Object structure changes.'
Assert-NotContains $dataModel 'A pending world-side commitment is a Persistent Object' 'A commitment must remain tracked state, not a Persistent Object.'

Write-Host 'Pending world-side commitment contract PASSED'
