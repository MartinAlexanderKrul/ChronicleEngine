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

# F-001 exposed the mirror of the compression failure: not intent invented for
# the player, but initiative handed back to him. Four established contacts were
# narrated as declining without per-contact resolution, and three assertions
# about world-side standing contradicted the ledger in the same exchange — all
# three in the same direction, moving obligation off the world and onto the
# player. Grounding is already resident; what was missing is its application to
# the Runtime's own claims about standing, and to who owes the next move.
Assert-Contains $resident '^## A Canvass Is N Resolutions, and Standing Is Read, Not Recalled$' 'The resident canvass and standing-grounding gate is missing.'
Assert-Contains $resident 'several uncertain world-facts' 'A canvass of several contacts can still resolve as one narrative gesture.'
Assert-Contains $resident 'a uniform result across independent actors requires per-actor grounding' 'Uniform declines across independent actors need no grounding.'
Assert-Contains $resident '"Nothing available" is a resolved outcome, not scene-setting' 'An absence is not held to the same resolution bar as a success.'
Assert-Contains $resident 'read that relationship.s record' 'Relationship standing may still be asserted from recall rather than the ledger.'
Assert-Contains $resident 'Check which way the obligation runs' 'Nothing checks whether canon places the next move on the world or the player.'
Assert-Contains $resident 'never send the protagonist chasing a party canon says is chasing him' 'The observed obligation-inversion failure class is not covered.'
Assert-Contains $resident 'not a licence to leave the world inert' 'Agency protection can still be read as permission for world passivity.'

# The fetched profile must advertise the resident guards so every campaign boot
# loads the layer that owns them.
Assert-Contains $profile 'the compression intent envelope' 'The Runtime Profile does not identify the resident compression guard.'
Assert-Contains $profile 'the canvass and standing-grounding rule' 'The Runtime Profile does not identify the resident standing guard.'

Write-Host 'Player-agency compression and standing contract PASSED'
