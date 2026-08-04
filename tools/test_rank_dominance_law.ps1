[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Section 7.2's Rank Dominance Law, checked as arithmetic rather than read as prose.
#
# The law promises that ascending a skill is always worth taking. Section 7.5
# states it as an ordering -- `Rank N Master <= Rank N+1 Novice (rune) <
# Rank N+1 Adept (breakthrough)` -- and through Profile 1.53 nothing verified it.
# It was false in two places at once:
#
#   * **Twin Fang at x0.625.** Its follow-up multiplier was authored by mastery
#     alone, because its strikes read weapon power rather than a Rank baseline,
#     so ascension reset the whole thing and destroyed 37.5% of the damage the
#     technique exists to deal. The 1.52 magnitude-axis ladder had made it
#     *eligible* without anyone checking whether the trade it now permitted was
#     favourable, and an offer was opened to the player on those terms.
#   * **Dimensional Projection at x0.25**, range 20 m falling to 5 m -- the same
#     defect, sitting unformed and waiting.
#
# Both are fixed by Profile 1.54 (a +0.35-per-Rank base for Twin Fang, and the
# magnitude ratchet). This file exists so neither can come back, and so that a
# future skill added with a mastery-owned magnitude fails here rather than in
# somebody's campaign.
#
# WHAT IS ASSERTED, precisely. Not "the number always rises" -- that is false by
# design at the 90% reduction cap, where Section 7.2 routes the gain to duration
# instead. The law is: **no axis ever falls, and at least one thing is gained.**
# Equality plus a new category is a real ascension; a smaller number is not.

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$profile = Get-Content -LiteralPath $profilePath -Raw -Encoding UTF8
$failures = [System.Collections.Generic.List[string]]::new()

$ranks = @("E", "D", "C", "B", "A", "S")

# The Rank baseline table is read from the profile, never restated here -- a
# second copy of a number that must agree is how F-013 happened.
if ($profile -notmatch '(?m)^\| Rank baseline \|(?<row>.+)\|\s*$') {
    throw "Section 7.2's Rank baseline table is unreadable; the dominance check cannot run."
}
$baseline = @{}
$cells = $Matches['row'].Split('|') | ForEach-Object { $_.Trim() } | Where-Object { $_ -match '^[\d,]+$' }
for ($i = 0; $i -lt $cells.Count -and $i -lt 6; $i++) {
    $baseline[$ranks[$i]] = [double]($cells[$i] -replace ',', '')
}
if ($baseline.Count -ne 6) { throw "Rank baseline table did not yield six Ranks." }

# The authored extent, parsed the same way validate_repository.ps1 parses it:
# a rung above the ceiling is not ascension-eligible, so it is not a violation.
$ceilingIndex = -1
foreach ($header in [regex]::Matches($profile, '(?m)^\|[ \t]*Skill[ \t]*\|.*\|[ \t]*$')) {
    foreach ($cell in $header.Value.Trim('|').Split('|')) {
        $rankCell = [regex]::Match($cell.Trim(), '^(?<rank>[EDCBAS])(?:[ \t]*\(native\))?$')
        if (-not $rankCell.Success) { continue }
        $index = [array]::IndexOf($ranks, $rankCell.Groups['rank'].Value)
        if ($index -gt $ceilingIndex) { $ceilingIndex = $index }
    }
}
if ($ceilingIndex -lt 1) { throw "No Section 7.3 ladder table with Rank column headers could be read." }

# Each skill's authored magnitude as a function of (Ranks above native, mastery
# level 1-5), plus whether every reachable rung carries a category. `Categorised`
# is what carries the law where the number is flat.
$skills = @(
    @{ Name = "Rupture";              Native = "E"; Categorised = $false; Capped = $false
       F = { param($r, $m) $baseline[$ranks[[array]::IndexOf($ranks, "E") + $r]] * (2.00 + 0.15 * ($m - 1)) } },
    @{ Name = "Mend";                 Native = "E"; Categorised = $false; Capped = $false
       F = { param($r, $m) $baseline[$ranks[[array]::IndexOf($ranks, "E") + $r]] * (1.00 + 0.15 * ($m - 1)) } },
    @{ Name = "Mana Bolt";            Native = "E"; Categorised = $false; Capped = $false
       F = { param($r, $m) $baseline[$ranks[[array]::IndexOf($ranks, "E") + $r]] * (1.00 + 0.15 * ($m - 1)) } },
    @{ Name = "Dagger Mastery";       Native = "E"; Categorised = $true; Capped = $false
       F = { param($r, $m) 0.10 + 0.25 * $r + 0.05 * ($m - 1) } },
    @{ Name = "Stone Skin";           Native = "D"; Categorised = $true; Capped = $true
       F = { param($r, $m) [math]::Min(90, 30 + 25 * $r + 5 * ($m - 1)) } },
    @{ Name = "Bulwark";              Native = "E"; Categorised = $true; Capped = $true
       F = { param($r, $m) [math]::Min(90, 60 + 25 * $r + 5 * ($m - 1)) } },
    @{ Name = "Twin Fang";            Native = "E"; Categorised = $true; Capped = $false
       F = { param($r, $m) 1.00 + 0.35 * $r + 0.15 * ($m - 1) } }
)

foreach ($skill in $skills) {
    $nativeIndex = [array]::IndexOf($ranks, $skill.Native)
    $floor = 0.0
    for ($r = 0; $nativeIndex + $r -lt $ceilingIndex; $r++) {
        $atMaster = [math]::Max((& $skill.F $r 5), $floor)
        # The magnitude ratchet: neither road may land below the value held
        # immediately before the ascension.
        $rune = [math]::Max((& $skill.F ($r + 1) 1), $atMaster)
        $breakthrough = [math]::Max((& $skill.F ($r + 1) 3), $atMaster)
        $step = "$($skill.Name) $($ranks[$nativeIndex + $r])-Rank Master -> $($ranks[$nativeIndex + $r + 1])-Rank"

        if ($rune -lt $atMaster) {
            $failures.Add("$step Novice (rune) falls from $atMaster to $rune; the magnitude ratchet must hold it.") | Out-Null
        }
        if ($breakthrough -lt $atMaster) {
            $failures.Add("$step Adept (breakthrough) falls from $atMaster to $breakthrough.") | Out-Null
        }
        # Something must be gained. A flat number is permitted only where the
        # rung also carries an authored category (Section 7.3) -- which is the
        # 90% reduction cap's case, and Twin Fang's rune road.
        if ($rune -eq $atMaster -and $breakthrough -eq $atMaster -and -not $skill.Categorised) {
            $failures.Add("$step gains nothing on any axis: magnitude is flat at $atMaster and no category is authored for it.") | Out-Null
        }
        # The floor must not swallow the whole mastery track. It prevents the
        # loss on its own -- which is exactly why this check is needed: with a
        # ratchet in place, a skill whose Rank grants no magnitude never *falls*,
        # it just stops responding to mastery, and twelve qualifying scenes at
        # the new Rank buy nothing. That is the Broken Rhythm defect (F-014)
        # reappearing on the magnitude axis, and it is invisible to a
        # fall-detection check because the floor has already hidden it.
        # Skipped where the magnitude is capped: Section 7.2 states that at and
        # above the 90% reduction cap a Rank step grants a further exchange of
        # duration instead, so a flat Master value there is the authored
        # behaviour rather than a defect -- and mastery still buys Mana cost at
        # every level under Section 7.4's -10% rule.
        $nextMaster = & $skill.F ($r + 1) 5
        if (-not $skill.Capped -and $nextMaster -le $atMaster) {
            $failures.Add("$step Master reaches only $nextMaster against a floor of $atMaster; the magnitude ratchet swallows the entire mastery track, so climbing Novice to Master at the new Rank buys nothing.") | Out-Null
        }
        $floor = $atMaster
    }
}

# Twin Fang is the specific regression this file was written for, so it is
# asserted by name as well as by the loop above. If the +0.35 is ever removed,
# the generic check catches it -- but this says why it mattered.
# ASCII-only patterns. The profile writes this formula with a multiplication
# sign and a minus sign, and Windows PowerShell 5.1 decodes a BOM-less UTF-8
# script as ANSI -- so a literal U+00D7 here silently never matches and the
# assertion passes vacuously, which is worse than failing.
if ($profile -notmatch '0\.35 \S+ ranks_above_native') {
    $failures.Add("Twin Fang's per-Rank multiplier base is missing from Section 7.2; without it Rank reaches the technique on no axis and ascension destroys 37.5% of its damage.") | Out-Null
}
if ($profile -notmatch 'magnitude_floor := ') {
    $failures.Add("Section 7.2 declares no magnitude_floor; the ratchet that keeps ascension from reducing an authored value is absent.") | Out-Null
}

# The ladder constants above are RESTATED in this file, which is the F-013
# pattern and cannot be avoided -- a closed-form ladder written in prose is not
# parseable into a function. What can be avoided is the drift going unnoticed:
# each constant is tied back to the sentence that authors it, so retuning the
# profile without retuning this file fails here instead of passing vacuously.
# The patterns are ASCII-only for the encoding reason noted above.
$authored = @{
    'Rank step, reduction (+25 points)'          = '\*\*\+25 percentage points\*\*'
    'Rank step, passive multiplier (+0.25)'      = '\*\*\+0\.25\*\* to the multiplier'
    'Mastery step, damage/healing (+0.15)'       = "multiplier rises \*\*\+0\.15\*\*"
    'Mastery step, reduction (+5 points)'        = "fraction rises \*\*\+5 points\*\*"
    'Mastery step, passive multiplier (+0.05)'   = "granted multiplier rises \*\*\+0\.05\*\*"
    'Single-skill reduction cap (90%)'           = "reduction fraction never exceeds 90%"
    'Rupture native multiplier band (2.00-2.60)' = "2\.00.{0,40}2\.60|x2\.00|E-Rank Master \(.2\.60"
}
foreach ($name in $authored.Keys) {
    if ($profile -notmatch $authored[$name]) {
        $failures.Add("This file assumes '$name' but the profile no longer states it; the dominance arithmetic here has drifted from the ladder it checks.") | Out-Null
    }
}

if ($failures.Count -gt 0) {
    Write-Host "Rank dominance law: FAIL" -ForegroundColor Red
    foreach ($failure in $failures) { Write-Host " - $failure" -ForegroundColor Red }
    exit 1
}

Write-Host "Rank dominance law verified: every reachable ascension gains, none loses" -ForegroundColor Green
