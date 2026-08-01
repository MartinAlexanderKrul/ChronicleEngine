[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [string]$Campaign = "gatefall_pendragon_001"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not $RepositoryRoot) { $RepositoryRoot = Split-Path -Parent $PSScriptRoot }

# Why this measurement exists
#
# The Version 0.3 postmortem, Finding 2, records that NPC grounding -- whether
# an NPC's line came from a read of its record or from recollection -- has no
# mechanical proxy, and cites Decision 085's measurement of the nearest derived
# check at 147 of 390 participations, 38% false positives.
#
# That citation is doing work it was not measured for. Decision 085 measured the
# BROAD version of the check: every entity named among an Event's participants
# whose own record does not cite that Event. Nobody measured a NARROWER coverage
# set, and "38% over everything" does not establish "38% over the subset that
# actually matters".
#
# The subset that matters is specific. Decision 076 established that recollection
# of a character decays to a role label, and the thing it decays to is exactly
# what a recurring, relationship-bearing NPC is played from. An incidental
# participant who appears once and changes nothing is legitimately unchanged;
# a contact the protagonist has a standing relationship with is not.
#
# So this reports the rate under four partitions rather than one, and prints the
# numerator and denominator for each so the figure can be argued with. It is a
# measurement tool and not a gate: it asserts nothing and fails nothing.

$campaignRoot = Join-Path $RepositoryRoot "campaigns/$Campaign"
if (-not (Test-Path -LiteralPath $campaignRoot)) { throw "No campaign at $campaignRoot" }

function Get-Blocks {
    param([string]$Path)
    if (-not (Test-Path -LiteralPath $Path)) { return @() }
    $text = Get-Content -LiteralPath $Path -Raw
    return [regex]::Matches($text, '(?ms)^```yaml\r?\n(.*?)^```') | ForEach-Object { $_.Groups[1].Value }
}

function Get-Field {
    param([string]$Block, [string]$Name)
    $m = [regex]::Match($Block, "(?m)^$([regex]::Escape($Name)):[ \t]*`"?([^`"\r\n]+)")
    if ($m.Success) { return $m.Groups[1].Value.Trim() }
    return $null
}

# The protagonist is derived, not assumed: a hard-coded identifier would rot the
# moment this is pointed at another campaign.
$sheetBlocks = Get-Blocks (Join-Path $campaignRoot "100_CHARACTER_SHEET.md")
$protagonist = $null
foreach ($b in $sheetBlocks) {
    $id = Get-Field $b "id"
    if ($id -match '^ENT-\d{6}$') { $protagonist = $id; break }
}
if (-not $protagonist) { throw "Could not derive the protagonist identifier from 100_CHARACTER_SHEET.md" }

# Entity records and relationship coverage.
$npcBlocks = Get-Blocks (Join-Path $campaignRoot "130_NPCS_AND_FACTIONS.md")
$entityText = @{}
$relatedToProtagonist = @{}
foreach ($b in $npcBlocks) {
    $id = Get-Field $b "id"
    if (-not $id) { continue }
    if ($id -match '^ENT-\d{6}$') { $entityText[$id] = $b }
    if ($id -match '^REL-\d{6}$') {
        $ids = [regex]::Matches($b, 'ENT-\d{6}') | ForEach-Object { $_.Value }
        if ($ids -contains $protagonist) {
            foreach ($e in $ids) { if ($e -ne $protagonist) { $relatedToProtagonist[$e] = $true } }
        }
    }
}

# Administrative Event kinds carry no fiction and are excluded from Gatefall's
# own Decision 085 coverage set. The list mirrors the validator's exemptions so
# the partitions describe the same population the real gate would.
$adminKinds = @(
    'ruling', 'correction', 'settlement-correction', 'canon-continuity-repair',
    'profile-adoption', 'system-profile-adoption', 'profile-migration',
    'profile-additive-upgrade', 'rules-migration', 'world-rule-migration',
    'schema-and-profile-migration', 'system-shop-rotation', 'campaign-start',
    'world-fact', 'detection', 'allocation', 'escalation', 'briefing', 're-ranking'
)

$rows = [System.Collections.Generic.List[object]]::new()
foreach ($b in (Get-Blocks (Join-Path $campaignRoot "160_CAMPAIGN_CHRONICLE.md"))) {
    $id = Get-Field $b "id"
    if ($id -notmatch '^EVT-\d{6}$') { continue }
    $kind = Get-Field $b "kind"

    $section = [regex]::Match($b, '(?ms)^participants:\r?\n((?:[ \t]+-.*\r?\n?)+)')
    if (-not $section.Success) { continue }

    foreach ($p in ([regex]::Matches($section.Groups[1].Value, 'ENT-\d{6}') | ForEach-Object { $_.Value } | Select-Object -Unique)) {
        if ($p -eq $protagonist) { continue }
        if (-not $entityText.ContainsKey($p)) { continue }   # world figures live elsewhere
        $rows.Add([pscustomobject]@{
            Event    = $id
            Subject  = $p
            Kind     = if ($kind) { $kind } else { '(none)' }
            Cites    = $entityText[$p].Contains($id)
            Related  = $relatedToProtagonist.ContainsKey($p)
        }) | Out-Null
    }
}

function Show-Partition {
    param([string]$Label, [object[]]$Set)
    if ($Set.Count -eq 0) { Write-Host ("  {0,-52} no participations" -f $Label); return }
    $miss = @($Set | Where-Object { -not $_.Cites }).Count
    $pct = [math]::Round(100.0 * $miss / $Set.Count, 1)
    Write-Host ("  {0,-52} {1,4} of {2,4}  = {3,5}%" -f $Label, $miss, $Set.Count, $pct)
}

$all = @($rows)
$fiction = @($rows | Where-Object { $adminKinds -notcontains $_.Kind })
$related = @($rows | Where-Object { $_.Related })
$both = @($rows | Where-Object { $_.Related -and $adminKinds -notcontains $_.Kind })

Write-Host ""
Write-Host "NPC grounding proxy - candidate check false-positive rate"
Write-Host "Campaign: $Campaign   Protagonist: $protagonist"
Write-Host ""
Write-Host "Check under test: an Event names entity X among its participants, and"
Write-Host "X's own live record does not cite that Event. A 'miss' is a case the"
Write-Host "check would flag; most are legitimate, which is what makes the rate the"
Write-Host "deciding number rather than the count."
Write-Host ""
Show-Partition "all participations (Decision 085's partition)" $all
Show-Partition "fiction-bearing Event kinds only" $fiction
Show-Partition "NPCs holding a relationship with the protagonist" $related
Show-Partition "both filters" $both
Write-Host ""
Write-Host ("  distinct subjects: {0}   distinct Events: {1}" -f
    (@($rows | Select-Object -ExpandProperty Subject -Unique).Count),
    (@($rows | Select-Object -ExpandProperty Event -Unique).Count))
Write-Host ""
Write-Host "This tool asserts nothing. It exists so Finding 2 is decided on a"
Write-Host "measured number rather than an inherited one."
Write-Host ""
exit 0
