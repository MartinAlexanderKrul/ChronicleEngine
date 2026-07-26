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

# Checkpoint 0020 exposed the same failure twice: compression invented a
# consequential loot declaration and then an outgoing text. Keep the guard at
# the resident per-turn layer where a compressed response is composed.
Assert-Contains $resident '^## Compression Preserves the Intent Envelope$' 'The resident compression-agency gate is missing.'
Assert-Contains $resident 'Compression removes detail; it never supplies intent' 'Compression can still be read as permission to invent intent.'
Assert-Contains $resident 'sending a text, placing a call, writing a message, filing a report, making a declaration' 'Undeclared communications are not explicitly prohibited.'
Assert-Contains $resident 'declaring versus concealing loot' 'The observed loot-declaration failure class is not covered.'
Assert-Contains $resident 'An established play pattern is \*\*not delegation\*\*' 'Prior behavior can still be mistaken for delegated intent.'
Assert-Contains $resident 'protagonist-as-actor test' 'Compressed clauses have no pre-send agency check.'
Assert-Contains $resident 'ask one concise clarifying question instead of choosing a default' 'Ambiguous compressed intent does not require a yield.'

# The fetched profile must advertise the resident guard so every campaign boot
# loads the layer that owns it.
Assert-Contains $profile 'the compression intent envelope' 'The Runtime Profile does not identify the resident compression guard.'

Write-Host 'Player-agency compression contract PASSED'
