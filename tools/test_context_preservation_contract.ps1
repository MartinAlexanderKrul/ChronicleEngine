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
$profile = 'docs/AI_GAMEPLAY_RUNTIME_PROFILE.md'
$runtime = 'engine/012_ENGINE_RUNTIME.md'
$guide = 'docs/GAMEPLAY_START_GUIDE.md'

# The trigger must remain resident; a fetched-only warning cannot fire reliably
# at the moment context pressure develops.
Assert-Contains $resident '^# Context-Preservation Watch$' 'Context preservation is missing from the resident per-turn layer.'
Assert-Contains $resident 'no more than 20% of the context window remains' 'The resident host-pressure threshold is missing.'
Assert-Contains $resident '20 resolved player exchanges' 'The no-telemetry fallback ceiling is missing.'
Assert-Contains $resident 'scene boundary is reached after at least 12' 'The scene-boundary fallback is missing.'
Assert-Contains $resident 'automatic-context-preservation' 'The resident trigger does not invoke an automatic checkpoint.'

# The normative Runtime owns the obligation and the fetched profile owns the
# full save/recovery procedure.
Assert-Contains $runtime '^## 2\.3 Context-Preservation Barrier$' 'The normative Runtime barrier is missing.'
Assert-Contains $runtime 'must not continue from the compacted summary alone' 'Post-compaction re-grounding is not mandatory.'
Assert-Contains $profile '^## Automatic Context Preservation$' 'The fetched automatic-save procedure is missing.'
Assert-Contains $profile 'Do not ask the player for confirmation' 'Automatic preservation can still be blocked on confirmation.'
Assert-Contains $profile 'Reload the latest checkpoint and canonical ledgers from Persistence' 'Unexpected-compaction recovery does not reload durable state.'
Assert-Contains $profile 'session close, or Context-Preservation Barrier' 'The Save Algorithm does not declare the automatic trigger.'

Assert-Contains $guide 'automatic context-preservation checkpoints' 'The player guide does not disclose automatic checkpoints.'

Write-Host 'Context-preservation contract PASSED'
