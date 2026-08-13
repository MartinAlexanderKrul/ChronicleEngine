[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [string]$Campaign = "gatefall_pendragon_001",
    [string]$World = "gatefall"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

# What this is, and what it is NOT
#
# Version 0.4 milestone 0.4.3 has seven matrix rows that only play can produce,
# and every one of them is blocked on the same thing: no world declares a
# supply source (Decision 083, Data Model 7.5) or a standing need (Decision 088,
# Section 7.6). Both constructs exist, are gated, and have zero live instances.
#
# CORRECTED 2026-08-13. This comment, and the closing message below, used to say
# the rates "are world authoring and belong to the owner ... creative decisions
# about Gatefall, not derivable facts". That is wrong on three counts, and it is
# what a Runtime reads before deciding whether to author or defer -- so it
# produced exactly the deferral it warned about.
#
# 1. Data Model 7.5 defines `Cadence` as "how often, as its world declares, OR
#    DERIVED FROM THE SOURCE'S CANON". The schema anticipates derivation.
# 2. `F-008` ruled against precisely this instinct and its disposition records
#    the owner's own argument: "I can't as an author create a full world with
#    every detail; that would make using AI obsolete", and "on-demand authoring
#    within canon's constraints is the engine's function, not a concession it
#    makes."
# 3. The Resident Core carries it as *Unnamed Is Not Absent -- Author It*: "Do
#    not defer, hedge, or have an NPC promise to look. The silence of the record
#    is not a world fact."
#
# So the candidate set is derivable AND so is the cadence: a contractor whose
# record shows a several-day posting rhythm across months of played evidence has
# a cadence in canon already. Author it from that texture, the way any other
# entailed-but-unnamed fact is authored. An owner ruling is owed only where a
# rate is a genuine design choice with alternatives that matter -- global
# opportunity pacing, say -- not for reading a rhythm the campaign already shows.
#
# So this is a WORKLIST, like list_commitment_candidates.ps1, and it is
# deliberately not a gate. Prose matching for "this actor generates work" is
# unreliable; that disqualifies it as a check and is fine for a starting set,
# where a false positive costs a moment to skip and the alternative is rereading
# two hundred kilobytes of ledger by hand.
#
# It cannot find a source phrased in a way these patterns miss. Treat the output
# as a beginning, not an inventory.

$campaignRoot = Join-Path $RepositoryRoot "campaigns/$Campaign"
$worldRoot = Join-Path $RepositoryRoot "worlds/$World"
if (-not (Test-Path -LiteralPath $campaignRoot)) { throw "No campaign at $campaignRoot" }

# Two vocabularies, kept apart because they answer different questions.
# A source OFFERS; a holder WANTS. An actor is commonly both, and the output
# says so rather than picking one.
$supplyPatterns = @(
    'contract', 'contracts', 'posting', 'postings', 'hires', 'hiring',
    'client', 'clients', 'commission', 'commissions', 'work to', 'jobs',
    'books', 'booking', 'roster', 'desk', 'broker', 'sells', 'stocks',
    'patron', 'sponsor'
)
$needPatterns = @(
    'short of', 'short-handed', 'shorthanded', 'needs a', 'needs an',
    'needs more', 'looking for', 'recruit', 'recruiting', 'vacancy',
    'vacant', 'understaffed', 'cannot fill', 'unfilled', 'wants a',
    'wants an', 'shortfall', 'down a', 'missing a'
)

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

# Already-declared sources and needs are excluded, so a second pass after
# partial adoption shows only what is still unmodelled.
$declared = @{}
foreach ($f in @(Get-ChildItem -LiteralPath $campaignRoot -Filter "*.md" -File) +
                @(Get-ChildItem -LiteralPath $worldRoot -Recurse -Filter "*.md" -File -ErrorAction SilentlyContinue)) {
    $t = Get-Content -LiteralPath $f.FullName -Raw
    if ($t -notmatch 'supply_sources:|standing_needs:') { continue }
    foreach ($m in [regex]::Matches($t, '(?m)^\s*-?\s*(?:owner|holder):\s*"?(ENT-\d{6}|REC-\d{6})')) {
        $declared[$m.Groups[1].Value] = $true
    }
}

$sources = @(
    (Join-Path $campaignRoot "130_NPCS_AND_FACTIONS.md"),
    (Join-Path $worldRoot "220_NOTABLE_FIGURES.md")
) + @(Get-ChildItem -LiteralPath (Join-Path $worldRoot "institutions") -Recurse -Filter "*.md" -File -ErrorAction SilentlyContinue |
      ForEach-Object { $_.FullName })

$rows = [System.Collections.Generic.List[object]]::new()
foreach ($path in $sources) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    $relative = $path.Substring($RepositoryRoot.Length).TrimStart([char[]]"\/").Replace('\','/')
    foreach ($block in (Get-Blocks $path)) {
        $id = Get-Field $block "id"
        if ($id -notmatch '^(ENT|REC)-\d{6}$') { continue }
        if ($declared.ContainsKey($id)) { continue }

        $name = $null
        $alias = [regex]::Match($block, '(?m)^\s*-\s*name:\s*"([^"]+)"')
        if ($alias.Success) { $name = $alias.Groups[1].Value }
        $subtype = Get-Field $block "subtype"

        $supplyHits = @($supplyPatterns | Where-Object { $block -match "(?i)\b$([regex]::Escape($_))\b" })
        $needHits = @($needPatterns | Where-Object { $block -match "(?i)$([regex]::Escape($_))" })
        if ($supplyHits.Count -eq 0 -and $needHits.Count -eq 0) { continue }

        $rows.Add([pscustomobject]@{
            Id = $id
            Name = if ($name) { $name } else { '(unnamed)' }
            Subtype = if ($subtype) { $subtype } else { '' }
            Supply = ($supplyHits | Select-Object -First 4) -join ', '
            Need = ($needHits | Select-Object -First 4) -join ', '
            Path = $relative
        }) | Out-Null
    }
}

Write-Host ""
Write-Host "Supply-source and standing-need candidates - $Campaign / $World"
Write-Host ""
if ($declared.Count -gt 0) {
    Write-Host "  $($declared.Count) actor(s) already declare a source or need and are excluded."
    Write-Host ""
} else {
    Write-Host "  No actor in this world declares a supply source or a standing need."
    Write-Host "  Decisions 083 and 088 both have zero live instances, so every"
    Write-Host "  Version 0.4 matrix row that needs play is blocked on this."
    Write-Host ""
}

if ($rows.Count -eq 0) {
    Write-Host "  No candidates matched. That is not the same as none existing:"
    Write-Host "  an actor described outside these vocabularies is invisible here."
    Write-Host ""
    exit 0
}

foreach ($row in ($rows | Sort-Object { $_.Need.Length -eq 0 }, Id)) {
    $tag = if ($row.Need -and $row.Supply) { 'both' } elseif ($row.Need) { 'need' } else { 'supply' }
    Write-Host ("  [{0,-6}] {1}  {2}" -f $tag, $row.Id, $row.Name) -ForegroundColor Cyan
    if ($row.Subtype) { Write-Host ("             {0}" -f $row.Subtype) }
    if ($row.Supply) { Write-Host ("             offers: {0}" -f $row.Supply) }
    if ($row.Need)   { Write-Host ("             wants:  {0}" -f $row.Need) }
}

Write-Host ""
Write-Host ("  {0} candidate actor(s)." -f $rows.Count)
Write-Host ""
Write-Host "  Each is a candidate, not a finding. For every one that genuinely"
Write-Host "  generates work, declare a supply source (Data Model 7.5) with its"
Write-Host "  cadence; for every one genuinely short of something, declare a"
Write-Host "  standing need (7.6)."
Write-Host ""
Write-Host "  AUTHOR THE CADENCE, do not defer it. Data Model 7.5 defines it as"
Write-Host "  'how often, as its world declares, or DERIVED FROM THE SOURCE'S"
Write-Host "  CANON' - and a contact with months of played postings already has"
Write-Host "  a rhythm in canon. F-008 ruled against deferring this and the"
Write-Host "  Resident Core carries it: 'Do not defer, hedge, or have an NPC"
Write-Host "  promise to look. The silence of the record is not a world fact.'"
Write-Host "  An owner ruling is owed only where a rate is a real design choice"
Write-Host "  with alternatives that matter, not for reading a rhythm the"
Write-Host "  campaign already shows."
Write-Host ""
exit 0
