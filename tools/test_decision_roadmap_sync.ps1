[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

# Decision 069 — Change Classification Gate and Post-Release Change Control.
#
# Enforces ownership, not class. Every Accepted decision must be claimed by a
# milestone in the roadmap. Whether a decision is foundational or a refinement
# is a judgment this tool deliberately does not make (Decision 069 point 5);
# what it makes impossible is leaving a decision unclassified in silence.
#
# The roadmap may claim a decision two ways:
#   - individually, by naming it:            "Decision 059"
#   - as a closed block, by declaring a range: "Decisions owned: 001-051"
# A range claim is how a completed and frozen milestone (the Foundation line)
# owns its decisions without re-listing each one.

$decisionsPath = Join-Path $root 'engine/001_ENGINE_DECISIONS.md'
$roadmapPath = Join-Path $root 'engine/002_ENGINE_ROADMAP.md'

$decisionsText = Get-Content -Raw -LiteralPath $decisionsPath
$roadmapText = Get-Content -Raw -LiteralPath $roadmapPath

# Numbered decisions only. Superseded proposals (P001...) and Rejected entries
# carry no milestone obligation and are excluded by the heading pattern.
$headings = [regex]::Matches($decisionsText, '(?m)^## Decision (\d{3})\s+[-–—]')
if ($headings.Count -eq 0) {
    throw 'No numbered decisions found in 001_ENGINE_DECISIONS.md; the heading format may have changed.'
}

$accepted = New-Object System.Collections.Generic.List[int]
foreach ($heading in $headings) {
    $number = $heading.Groups[1].Value
    $tail = $decisionsText.Substring($heading.Index)
    $status = [regex]::Match($tail, '(?m)^\*\*Status:\*\*\s*(\w+)')
    if (-not $status.Success) {
        throw "Decision $number has no Status line."
    }
    if ($status.Groups[1].Value -eq 'Accepted') {
        $accepted.Add([int]$number) | Out-Null
    }
}

# Claimed individually.
$claimed = New-Object System.Collections.Generic.HashSet[int]
foreach ($match in [regex]::Matches($roadmapText, 'Decision (\d{3})\b')) {
    $claimed.Add([int]$match.Groups[1].Value) | Out-Null
}

# Claimed by an explicit closed-block range.
$rangeClaims = [regex]::Matches($roadmapText, '(?m)^Decisions owned:\s*(\d{3})\s*[-–—]\s*(\d{3})\s*$')
foreach ($range in $rangeClaims) {
    $from = [int]$range.Groups[1].Value
    $to = [int]$range.Groups[2].Value
    if ($from -gt $to) {
        throw "Roadmap declares an inverted range claim: $($range.Value.Trim())"
    }
    for ($n = $from; $n -le $to; $n++) {
        $claimed.Add($n) | Out-Null
    }
}

$unowned = @($accepted | Where-Object { -not $claimed.Contains($_) } | Sort-Object)

if ($unowned.Count -gt 0) {
    $list = ($unowned | ForEach-Object { 'Decision {0:D3}' -f $_ }) -join ', '
    throw @"
$($unowned.Count) accepted decision(s) are not claimed by any roadmap milestone: $list

Decision 069 requires every accepted decision to name the milestone that owns it.
Add each to engine/002_ENGINE_ROADMAP.md with its classification (foundational or
refinement) and its owning milestone, or claim a completed block with a line
reading 'Decisions owned: NNN-NNN', before claiming a release.
"@
}

# A named milestone must exist.
#
# The ownership check above asks only whether a decision number appears
# somewhere in the roadmap. That is not the same question as whether the
# milestone it names was ever written, and the difference is not theoretical:
# Decision 091 was accepted on 2026-08-09 claiming "milestone 0.4.4", the
# roadmap's ownership table recorded that claim, and no such heading existed
# for ten days. The gate reported the decision owned the entire time -- so a
# foundational Data Model change sat inside a frozen version with no capability
# statement, no acceptance fixtures and no completion criteria, and the one
# mechanism built to make that impossible said everything was fine.
#
# The property checked here is the weakest one that would have caught it: a
# milestone named in either governance document resolves to a heading in the
# roadmap. It deliberately does not check that the milestone's CONTENT is
# adequate -- that is the architecture review's job (Decision 069 point 5), and
# a checker pretending otherwise would repeat the error this exists to name.
$milestoneHeadings = New-Object System.Collections.Generic.HashSet[string]
foreach ($heading in [regex]::Matches($roadmapText, '(?m)^#{2,4}[ \t]+(\d+\.\d+\.\d+)\b')) {
    $milestoneHeadings.Add($heading.Groups[1].Value) | Out-Null
}
if ($milestoneHeadings.Count -eq 0) {
    throw 'No milestone headings found in 002_ENGINE_ROADMAP.md; the heading format may have changed.'
}

$namedMilestones = [ordered]@{}
foreach ($source in @(
    @{ Path = 'engine/002_ENGINE_ROADMAP.md'; Text = $roadmapText },
    @{ Path = 'engine/001_ENGINE_DECISIONS.md'; Text = $decisionsText })) {
    foreach ($reference in [regex]::Matches($source.Text, 'milestone[ \t]+(\d+\.\d+\.\d+)\b')) {
        $number = $reference.Groups[1].Value
        if (-not $namedMilestones.Contains($number)) {
            $namedMilestones[$number] = $source.Path
        }
    }
}

$phantom = @($namedMilestones.Keys | Where-Object { -not $milestoneHeadings.Contains($_) } | Sort-Object)
if ($phantom.Count -gt 0) {
    $list = ($phantom | ForEach-Object { "$_ (first named in $($namedMilestones[$_]))" }) -join ', '
    throw @"
$($phantom.Count) milestone(s) are named by a governance document but have no heading in the roadmap: $list

A decision that names a milestone the roadmap never wrote is unowned in every
sense that matters: it has no capability statement, no acceptance fixtures, no
exclusions and no completion criteria, however plainly the ownership table
records the claim. Author the milestone section in engine/002_ENGINE_ROADMAP.md,
or correct the reference to the milestone that actually owns the work.
"@
}

Write-Host "Decision/roadmap synchronization tests PASSED" -ForegroundColor Green
Write-Host "  Accepted decisions: $($accepted.Count)"
Write-Host "  Claimed by roadmap: $($accepted.Count) (individually or by block range)"
Write-Host "  Milestones named: $($namedMilestones.Count); all resolve to a roadmap heading ($($milestoneHeadings.Count) authored)"
