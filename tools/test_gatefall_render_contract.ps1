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

$profile = 'worlds/gatefall/206_WORLD_RULE_PROFILE.md'
$startup = 'campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md'

# Why this suite exists
#
# A `/system` panel is the one surface where the player cannot check the output
# against its specification: they have no copy of the template. Every failure is
# therefore silent — a dropped section, a group that rendered nothing instead of
# `none`, a bare Rank, a truncated line — and it reads as a complete window.
#
# Two independent things have to hold. The operation plan must name every
# section the render obeys (test_operation_plan.ps1 asserts that), and the
# campaign must intercept the command before free-form composition so a plan
# that is right cannot still be answered from a remembered frame. This suite
# asserts the second, and the profile text the first depends on.

# Section 15.1 is normative for every panel, which is why every panel's dispatch
# names it. If that claim leaves the profile, the dispatch lists are asserting
# something the world no longer says.
Assert-Contains $profile '^## 15\.1 Render Grammar$' 'The profile has no render grammar for the panels to obey.'
Assert-Contains $profile 'it governs every panel identically' 'Section 15.1 no longer declares itself normative for every panel.'
Assert-Contains $profile 'It \*\*never truncates\*\*' 'The render grammar no longer forbids truncation.'
Assert-Contains $profile '\*\*An empty group still renders\*\*' 'An empty group may now disappear from a panel.'
Assert-Contains $profile '\*\*A bare letter is never rendered\.\*\*' 'Rank is no longer required to render bracketed.'
Assert-Contains $profile 'composes the panels of Sections 15\.2 and 15\.3 unchanged' '/system all no longer states that it composes the other panels.'

# The campaign-side gate. Reikon has carried one since its own render failures;
# Gatefall carried only `render_policy: exact-template-only`, which describes the
# obligation without ever firing on a turn.
Assert-Contains $startup '^# `/system` Pre-Render Gate$' 'Campaign startup does not intercept /system before free-form rendering.'
Assert-Contains $startup 'resolve_operation_plan\.ps1' 'The /system gate does not order the operation plan that names its reads.'
Assert-Contains $startup 'A panel rendered from memory is not a panel' 'The /system gate does not forbid answering from an earlier render.'
Assert-Contains $startup 'render nothing' 'The /system gate does not stop a render when a source cannot be read.'
Assert-Contains $startup 'discarded and rendered again from the template' 'The /system gate does not discard a draft that fails verification.'
# ASCII-only pattern on purpose: PowerShell 5.1 reads a BOM-less .ps1 as ANSI,
# so an em dash in the pattern would never match the file it is checking.
Assert-Contains $startup 'where canonical state does not hold one' 'The /system gate does not require an absent value to render as a dash.'

# Every declared panel dispatches the grammar. Asserted here against the file as
# well as through the planner, because a panel added later is added here.
$startupText = Get-Content -LiteralPath (Join-Path $root $startup) -Raw
$panels = [regex]::Matches($startupText, '(?m)^  (/system[^:]*):')
if ($panels.Count -lt 8) {
    throw "Expected the Gatefall campaign to declare at least eight /system commands; found $($panels.Count)."
}
$grammar = [regex]::Matches($startupText, '206_WORLD_RULE_PROFILE\.md#151-render-grammar')
if ($grammar.Count -ne $panels.Count) {
    throw "Declared /system commands: $($panels.Count); dispatches naming the render grammar: $($grammar.Count). Every panel obeys Section 15.1."
}

Write-Host "Gatefall render contract tests PASSED" -ForegroundColor Green
exit 0
