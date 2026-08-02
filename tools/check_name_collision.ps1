[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$Campaign,
    [Parameter(Mandatory = $true)][string]$Name,
    [string]$Root
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Why this tool exists
#
# Design flag F-009 split its disposition along what is decidable. The EXACT
# collision -- two live entities in one campaign carrying the same current name
# -- is mechanical, and validate_repository.ps1 rejects it. The PARTIAL
# collision -- a shared surname -- was left as a judgment, because a barrier
# that failed on it would reject correct canon: ENT-000126 Tanya Voss and
# ENT-000128 Elias Voss are siblings, both live in the same campaign.
#
# Both rulings are right, and together they leave the observed failure
# uncovered. The barrier fires at a durability boundary, which can be a whole
# session after the name was spoken -- EVT-000280 records the artificer's name
# being corrected from "Reyes" to "Marnie" inside the fiction, because nothing
# checked before it was said. And "Reyes" against ENT-000134 Ada Reyes is a
# partial match, so the check built in response to F-009 would not have caught
# F-009.
#
# What changes here is only the moment. The same comparison, run before the
# name is spoken, costs nothing to act on: nothing has been written yet and the
# answer is a different name. So the exact case is reported as BLOCKED (the
# barrier will reject it, by construction -- this parses the ledger exactly as
# the barrier does), and the partial case is reported as REVIEW, which is
# advisory here and stays advisory everywhere. REVIEW is answered by the author
# in the turn, not by a checker.

if (-not $Root) { $Root = Split-Path -Parent $PSScriptRoot }

$campaignName = Split-Path -Leaf $Campaign.TrimEnd('/', '\')
$campaignRoot = Join-Path (Join-Path $Root "campaigns") $campaignName
if (-not (Test-Path -LiteralPath $campaignRoot -PathType Container)) {
    Write-Host "ERROR: no such campaign: $campaignName"
    exit 3
}

# Honorifics carry no identity. "Dr. Sarah Chen" and "Dr. James Wu" share a
# token and nothing else, and a check that reported it would train its reader to
# ignore it. Anything ending in a period is dropped for the same reason.
$titleTokens = @(
    'dr', 'mr', 'mrs', 'ms', 'miss', 'prof', 'sir', 'lady', 'lord',
    'director', 'captain', 'chief', 'officer', 'detective', 'agent',
    'sergeant', 'lieutenant', 'commander', 'inspector', 'the'
)

function Get-NameTokens {
    param([string]$Value)
    $tokens = @()
    foreach ($raw in ($Value -split '[^A-Za-z0-9''-]+')) {
        $token = $raw.Trim("'", "-").ToLowerInvariant()
        if ($token.Length -lt 2) { continue }
        if ($titleTokens -contains $token) { continue }
        $tokens += $token
    }
    return $tokens
}

# The ledger parse below mirrors validate_repository.ps1's F-009 check line for
# line: the same id/status/name shapes, the same requirement that an alias be
# `quality: current`, and the same exclusion of retired entities. That agreement
# is what makes BLOCKED mean "the barrier will reject this" rather than "this
# tool thinks so", and tools/test_name_collision_check.ps1 asserts it against
# the real validator rather than restating it.
function Get-LiveNames {
    param([string]$Path, [string]$Label, [string]$Scope)

    $found = @()
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) { return $found }

    $lines = (Get-Content -LiteralPath $Path -Raw) -split "\r?\n"
    $currentId = $null
    $currentStatus = $null
    $currentType = $null

    for ($index = 0; $index -lt $lines.Count; $index++) {
        $line = $lines[$index]

        if ($line -match '^[ \t]*id:[ \t]*"?(ENT-\d{6})') {
            $currentId = $Matches[1]
            $currentStatus = $null
            $currentType = $null
            continue
        }
        if ($null -eq $currentId) { continue }

        if ($line -match '^[ \t]*status:[ \t]*"?([a-z-]+)') { $currentStatus = $Matches[1] }
        # Anchored at column 0 so a nested `type:` inside canonical_state cannot
        # reclassify the entity out from under the token comparison.
        if ($line -match '^type:[ \t]*"?([A-Za-z]+)') { $currentType = $Matches[1] }

        if ($line -match '^[ \t]*-[ \t]+name:[ \t]*"([^"]+)"') {
            $candidate = $Matches[1].Trim()
            $quality = $null
            if ($index + 1 -lt $lines.Count -and
                $lines[$index + 1] -match '^[ \t]*quality:[ \t]*"?([a-z-]+)') {
                $quality = $Matches[1]
            }
            # A former or alternate alias is deliberately allowed to collide:
            # that is how identity continuity records a rename.
            if ($quality -ne 'current' -or $currentStatus -eq 'retired') { continue }

            $found += [pscustomobject]@{
                Id     = $currentId
                Name   = $candidate
                Type   = $currentType
                Source = $Label
                Scope  = $Scope
            }
        }
    }

    return $found
}

# Scope is the campaign plus the world it runs in. The same name in two
# campaigns is two unrelated fictions and is not a collision; a campaign NPC and
# a world Notable Figure are the same fiction, and F-009's open design question
# named that second source explicitly.
$live = @()
$live += Get-LiveNames `
    -Path (Join-Path $campaignRoot "130_NPCS_AND_FACTIONS.md") `
    -Label "campaigns/$campaignName/130_NPCS_AND_FACTIONS.md" `
    -Scope "campaign"

$startupPath = Join-Path $campaignRoot "090_CAMPAIGN_STARTUP.md"
if (Test-Path -LiteralPath $startupPath -PathType Leaf) {
    $startupText = Get-Content -LiteralPath $startupPath -Raw
    if ($startupText -match '(?m)^world:[ \t]*"?([A-Za-z0-9_/.-]+)"?[ \t]*$') {
        $worldRelative = $Matches[1].Trim()
        $live += Get-LiveNames `
            -Path (Join-Path $Root ($worldRelative + "/220_NOTABLE_FIGURES.md")) `
            -Label "$worldRelative/220_NOTABLE_FIGURES.md" `
            -Scope "world"
    }
}

if ($live.Count -eq 0) {
    Write-Host "ERROR: no live entity names read for $campaignName; check the ledger path"
    exit 3
}

$candidate = $Name.Trim()
$candidateKey = $candidate.ToLowerInvariant()
$candidateTokens = Get-NameTokens $candidate

$exact = @($live | Where-Object { $_.Name.ToLowerInvariant() -eq $candidateKey })
$campaignExact = @($exact | Where-Object { $_.Scope -eq 'campaign' })
$worldExact = @($exact | Where-Object { $_.Scope -ne 'campaign' })

# BLOCKED is reserved for exactly what the barrier rejects, and the barrier's
# F-009 check iterates campaign directories only. An exact match against a world
# Notable Figure is a real problem and is reported below, but calling it BLOCKED
# would claim a rejection that will not happen, and the verdict is only worth
# anything while it means one thing.
if ($campaignExact.Count -gt 0) {
    Write-Host "BLOCKED: `"$candidate`""
    foreach ($hit in $campaignExact) {
        Write-Host "  exact match: $($hit.Id) `"$($hit.Name)`" in $($hit.Source)"
    }
    Write-Host "  Two live entities in one campaign may not answer to the same full name (F-009)."
    Write-Host "  The Repository Validation Barrier rejects this. Choose another name."
    exit 2
}

# Token comparison is restricted to Character entities. An organization's name
# shares words with the trade it is in -- "Vanguard Trade & Gear" would make
# "gear" a collision -- and reporting that would be noise, not a finding.
$exactNames = @($exact | ForEach-Object { $_.Name.ToLowerInvariant() })
$partial = @()
foreach ($entry in ($live | Where-Object { $_.Type -eq 'Character' })) {
    # An alias already reported above as an exact match does not also need
    # reporting as a token match of itself.
    if ($exactNames -contains $entry.Name.ToLowerInvariant()) { continue }
    $shared = @()
    foreach ($token in (Get-NameTokens $entry.Name)) {
        if ($candidateTokens -contains $token) { $shared += $token }
    }
    if ($shared.Count -gt 0) {
        $partial += [pscustomobject]@{
            Id     = $entry.Id
            Name   = $entry.Name
            Source = $entry.Source
            Shared = ($shared | Select-Object -Unique) -join ', '
        }
    }
}

if ($worldExact.Count -gt 0 -or $partial.Count -gt 0) {
    Write-Host "REVIEW: `"$candidate`""
    foreach ($hit in $worldExact) {
        Write-Host "  same full name at world scope: $($hit.Id) `"$($hit.Name)`" in $($hit.Source)"
    }
    foreach ($hit in $partial) {
        Write-Host "  shares $($hit.Shared): $($hit.Id) `"$($hit.Name)`" in $($hit.Source)"
    }
    if ($worldExact.Count -gt 0) {
        Write-Host "  The barrier does not adjudicate across scopes, so this will not fail a save."
        Write-Host "  It is the same fiction and the same city. Choose another name."
    }
    if ($partial.Count -gt 0) {
        Write-Host "  A shared name in a city of millions is ordinary, so this is not a failure."
        Write-Host "  Pick another name, or say in the fiction that the coincidence is deliberate."
    }
    exit 1
}

Write-Host "OK: `"$candidate`" collides with no live name in $campaignName"
exit 0
