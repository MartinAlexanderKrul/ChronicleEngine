[CmdletBinding()]
param(
    [string]$RepositoryRoot,
    [string]$Campaign = "gatefall_pendragon_001",
    [int]$Context = 90
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($RepositoryRoot)) {
    $RepositoryRoot = Split-Path -Parent $PSScriptRoot
}

# What this is, and what it is NOT
#
# Decisions 082 and 083 built a settler and no writer: the pending world-side
# commitment construct reached the close of Version 0.3 with zero live
# instances, so `validate_repository.ps1`'s settlement check is real, proven by
# fixture, and vacuous against actual state. The fix is a play session
# backfilling the commitments the fiction has already made.
#
# This is a WORKLIST for that session. It is deliberately not a gate and never
# will be. The Version 0.3 postmortem records why: whether a promise was made
# is a claim about narration, prose matching for it is unreliable, and a check
# built on it would fire on innocent text and be turned off. As a gate that is
# disqualifying. As a discovery aid it is fine, because a false positive costs
# a human three seconds to skip, and the alternative is re-reading a 300 KB
# chronicle by hand.
#
# It cannot find a promise phrased in a way these patterns miss. Treat the
# output as a starting set, not an inventory.

$campaignRoot = Join-Path $RepositoryRoot "campaigns/$Campaign"
$chronicle = Join-Path $campaignRoot "160_CAMPAIGN_CHRONICLE.md"
if (-not (Test-Path -LiteralPath $chronicle)) { throw "No chronicle at $chronicle" }

# Deferral shapes, in the register these chronicles actually use. Kept as an
# explicit list rather than one clever regex so that adding a shape is a
# deliberate act and the reader can see exactly what is being matched.
$patterns = @(
    'give me a day', 'give me a couple', 'give me until',
    'get back to you', 'come back to you', 'let you know',
    'ask around', 'put the word out', 'reach out',
    'check back', "I'll check", "I'll look into", "I'll see what",
    "I'll call", "I'll text", "I'll ring", "I'll send",
    'follow up', 'following up', 'by tomorrow', 'by tonight',
    'in a day or two', 'in a few days', 'next week',
    'once I hear', 'when I hear', 'as soon as I',
    'promised to', 'agreed to', 'owes', 'due back'
)

$text = Get-Content -LiteralPath $chronicle -Raw

# Already-recorded commitments are excluded so a second pass after a partial
# backfill shows only what is still outstanding.
$recorded = @{}
foreach ($ledger in @(Get-ChildItem -LiteralPath $campaignRoot -Filter "*.md" -File)) {
    $ledgerText = Get-Content -LiteralPath $ledger.FullName -Raw
    if ($ledgerText -notmatch 'pending_commitments:') { continue }
    foreach ($m in [regex]::Matches($ledgerText, '(?m)^\s*-?\s*provenance:\s*"?(EVT-\d{6})')) {
        $recorded[$m.Groups[1].Value] = $true
    }
}

# Walk Events in order so the worklist reads chronologically, which is the order
# a session will settle them in.
$events = [regex]::Matches($text, '(?ms)^```yaml\r?\n(.*?)^```')
$hits = [System.Collections.Generic.List[object]]::new()

foreach ($block in $events) {
    $body = $block.Groups[1].Value
    $idMatch = [regex]::Match($body, '(?m)^id:\s*"?(EVT-\d{6})')
    if (-not $idMatch.Success) { continue }
    $id = $idMatch.Groups[1].Value
    if ($recorded.ContainsKey($id)) { continue }

    foreach ($pattern in $patterns) {
        foreach ($m in [regex]::Matches($body, [regex]::Escape($pattern), 'IgnoreCase')) {
            $start = [Math]::Max(0, $m.Index - [int]($Context / 2))
            $length = [Math]::Min($Context, $body.Length - $start)
            $snippet = ($body.Substring($start, $length) -replace '\s+', ' ').Trim()
            $hits.Add([pscustomobject]@{ Event = $id; Phrase = $pattern; Snippet = $snippet }) | Out-Null
        }
    }
}

$byEvent = $hits | Group-Object Event | Sort-Object Name

Write-Host ""
Write-Host "Pending-commitment candidates - $Campaign"
Write-Host ""
if ($recorded.Count -gt 0) {
    Write-Host "  $($recorded.Count) Event(s) already have a recorded commitment and are excluded."
    Write-Host ""
}

if ($byEvent.Count -eq 0) {
    Write-Host "  No candidate phrasing found. That is not the same as no commitments:"
    Write-Host "  a promise worded outside the pattern list is invisible here."
    Write-Host ""
    exit 0
}

foreach ($group in $byEvent) {
    Write-Host ("  {0}" -f $group.Name) -ForegroundColor Cyan
    foreach ($hit in ($group.Group | Sort-Object Phrase -Unique)) {
        Write-Host ("      [{0}] ...{1}..." -f $hit.Phrase, $hit.Snippet)
    }
    Write-Host ""
}

Write-Host ("  {0} candidate Event(s), {1} match(es)." -f $byEvent.Count, $hits.Count)
Write-Host ""
Write-Host "  Each is a candidate, not a finding. For every one that is a real"
Write-Host "  undertaking, record owner / subject / due / status against Data Model"
Write-Host "  Section 7.4; the repository barrier then settles and checks it."
Write-Host ""
exit 0
