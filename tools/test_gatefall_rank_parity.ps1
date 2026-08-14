[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"

# Why this gate exists
#
# Profile 1.80 closed two defects that were the same arithmetic mistake wearing
# different clothes, and NOTHING GATED EITHER OF THEM. Both were found by hand,
# both were decidable from tables already in the profile, and both could be
# reintroduced by an ordinary edit without a single test going red.
#
#   1. THE BEARER FELL BEHIND HIS OWN LABEL. Fixed-Rank pools multiply x2.5 per
#      Rank (Section 6.1). The Bearer's pools are linear in his Stats, and his
#      Stat income was a flat +1 per level. Linear income against a geometric
#      ladder loses by construction: measured live, the Bearer stood at 87% of a
#      B-Rank hunter's Health and would have reached System Rank S at 45% of an
#      S-Rank hunter's.
#
#   2. THE RE-ASSESSMENT INSTRUMENT CONTRADICTED THE TABLE THAT DEFINES RANK.
#      Section 19.2's bands were linear (+20 per Rank) against the geometric Rank
#      Mana pools. An ordinary C-Rank hunter carries 125 maximum Mana, and the
#      old table carded 120+ as S-Rank -- so running the world's own instrument
#      on an unremarkable C-Rank hunter returned S.
#
# THIS GATE ASSERTS THE PROPERTY, NOT THE SENTENCE. It does not check that
# Section 3.2 still contains particular numbers; it recomputes the ladder from
# the profile's own tables and proves parity actually holds. An edit that
# retunes a rung gain, moves a level threshold, edits a pool, or redraws a band
# is free to do so -- it just cannot break the agreement between them. That
# distinction is the one this repository keeps relearning: a gate pinned to a
# literal fails when its subject improves, and teaches its reader to route
# around it.
#
# Every table is PARSED. Nothing here carries a second copy of a number the
# profile owns (F-013), because a duplicate of the value under test is exactly
# what makes a gate agree with a stale reading.
#
# Patterns are kept ASCII. PS 5.1 decodes BOM-less UTF-8 as ANSI, and the tables
# below are full of en-dashes and bold markers; a literal non-ASCII character in
# a pattern silently never matches, which passes vacuously and is worse than
# failing (F-014). Numbers are matched with `[^0-9]+` separators throughout.

function Fail { param([string]$Message) throw $Message }

if (-not (Test-Path -LiteralPath $profilePath)) {
    Fail "Gatefall World Rule Profile not found at $profilePath; this gate has nothing to check."
}
$text = [System.IO.File]::ReadAllText($profilePath, [System.Text.Encoding]::UTF8)

$ranks = @("E", "D", "C", "B", "A", "S")

# --- 1. Parse the tables the profile owns -----------------------------------

function Get-SixNumberRow {
    param([string]$Body, [string]$LabelPattern, [string]$What)

    # Leading whitespace is allowed: Section 3.2's table is indented inside a
    # numbered list item, and an anchored `^\|` finds nothing there.
    $row = [regex]::Match($Body, "(?m)^[ \t]*\|[^|\r\n]*$LabelPattern[^|\r\n]*\|(?<rest>[^\r\n]+)$")
    if (-not $row.Success) { Fail "Could not find the $What row in the profile; the table moved or was renamed, and this gate cannot check what it cannot read." }

    $cells = @($row.Groups['rest'].Value -split '\|' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' })
    $values = @()
    foreach ($cell in $cells) {
        $n = [regex]::Match($cell, '([0-9][0-9,]*)')
        if (-not $n.Success) { continue }
        $values += [int]($n.Groups[1].Value -replace ',', '')
    }
    if ($values.Count -lt 6) { Fail "The $What row parsed only $($values.Count) numbers; expected six, one per Rank." }
    return $values[0..5]
}

$rankHealth = Get-SixNumberRow $text 'Rank Health' 'Section 6.1 Rank Health'
$rankMana   = Get-SixNumberRow $text 'Rank Mana'   'Section 5.1 Rank Mana'
$rungGain   = Get-SixNumberRow $text 'Rung gain'   'Section 3.2 rung gain'

# The System Rank ladder: which level reaches which Rank (Section 6.6).
$rungLevel = @{}
foreach ($m in [regex]::Matches($text, '(?m)^[ \t]*\|\s*(?<level>[0-9]+)\s*\|\s*(?<rank>[EDCBAS])-Rank\s*\|')) {
    $rungLevel[$m.Groups['rank'].Value] = [int]$m.Groups['level'].Value
}
$rungLevel['E'] = 1
foreach ($r in $ranks) {
    if (-not $rungLevel.ContainsKey($r)) { Fail "Section 6.6's ladder does not declare the level that reaches $r-Rank; the parse is incomplete." }
}

# The weakest legal creation Stat (Section 4.1's civilian array range).
$arrayRange = [regex]::Match($text, 'each\s+in\s+the\s+range\s+(?<low>[0-9]+)\s*[^0-9]\s*(?<high>[0-9]+)')
if (-not $arrayRange.Success) { Fail "Could not read Section 4.1's creation-array range; parity must be proven from the WEAKEST legal array, not an average one." }
$weakestCreationStat = [int]$arrayRange.Groups['low'].Value

# --- 2. Sanity-bound the parse ----------------------------------------------
#
# A parse that silently returns something absurd would make every assertion
# below unfailable. Each ladder must be strictly increasing and start where the
# profile's own arithmetic says it does.

for ($i = 1; $i -lt 6; $i++) {
    if ($rankHealth[$i] -le $rankHealth[$i - 1]) { Fail "Rank Health parsed as non-increasing at $($ranks[$i]): $($rankHealth -join ', '). The parse is wrong." }
    if ($rankMana[$i]   -le $rankMana[$i - 1])   { Fail "Rank Mana parsed as non-increasing at $($ranks[$i]): $($rankMana -join ', '). The parse is wrong." }
    if ($rungGain[$i]   -lt $rungGain[$i - 1])   { Fail "Rung gain parsed as decreasing at $($ranks[$i]): $($rungGain -join ', '). The parse is wrong." }
}

# Section 5.1 states Rank Mana applies the Bearer's own Health:Mana ratio to the
# Section 6.1 table -- so Mana is half of Health at every Rank. If that ever
# stops holding, the parity target below is reading two different scales.
for ($i = 0; $i -lt 6; $i++) {
    if ($rankMana[$i] * 2 -ne $rankHealth[$i]) {
        Fail "$($ranks[$i])-Rank: Rank Mana $($rankMana[$i]) is not half of Rank Health $($rankHealth[$i]). Section 5.1 derives one from the other; they have diverged."
    }
}

# --- 3. Parity: automatic growth alone must reach each rung's pools ----------
#
# `Health = 4 x Vitality` and `Mana = 2 x Intelligence` (Sections 6.1, 5.1), so
# the Stat a Rank demands is `Rank Health / 4` -- which equals `Rank Mana / 2`,
# the same number, which is why one parity figure covers both axes.
#
# The test is deliberately run from the WEAKEST legal creation Stat. Parity that
# only holds for a lucky array is not parity; the guarantee has to cover every
# Bearer the creation rules can produce.

$stat = $weakestCreationStat
$failures = @()
$rows = @()

for ($i = 0; $i -lt 6; $i++) {
    $rank = $ranks[$i]
    $levelReached = $rungLevel[$rank]

    if ($i -gt 0) {
        # Level-ups from the previous rung's level to this one, each gaining the
        # PREVIOUS rung's rate -- the gain is read from the Rank held as the
        # level-up settles, not the Rank it reaches.
        $levelUps = $levelReached - $rungLevel[$ranks[$i - 1]]
        $stat += $levelUps * $rungGain[$i - 1]
    }

    $parity = $rankHealth[$i] / 4.0
    $rows += [pscustomobject]@{
        Rank = $rank; Level = $levelReached; Stat = $stat
        Parity = $parity; Health = $stat * 4; RankHealth = $rankHealth[$i]
    }

    # The E rung is creation itself, and parity is deliberately NOT asserted
    # there. Section 4.1 sets the Bearer's opening Stats from a CIVILIAN-range
    # array -- he is an ordinary person at the moment the System attaches, and a
    # Stat of 8 against an E-Rank hunter's 10 is the premise rather than a
    # defect. The ladder's job begins at the first rung it actually delivers.
    if ($i -eq 0) { continue }

    if ($stat -lt $parity) {
        $failures += "$rank-Rank (level $levelReached): automatic growth alone reaches Stat $stat, but parity with a $rank-Rank hunter needs $parity (Rank Health $($rankHealth[$i]) / 4). The Bearer arrives at the rung with $([math]::Round(100.0 * $stat / $parity, 1))% of the body his System Rank label claims."
    }
}

# --- 4. The Section 19.2 bands must classify the Rank Mana pools correctly ---
#
# The instrument that ASSIGNS Rank must agree with the table that DEFINES it. A
# hunter of Rank R carries Rank Mana R, so measuring one has to return R.

$bandRow = [regex]::Match($text, '(?m)^[ \t]*\|[^|\r\n]*Capacity range[^|\r\n]*\|(?<rest>[^\r\n]+)$')
if (-not $bandRow.Success) { Fail "Could not find Section 19.2's capacity-range row; the re-assessment bands cannot be checked." }

$bands = @()
foreach ($cell in @($bandRow.Groups['rest'].Value -split '\|' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' })) {
    # Strip thousands separators BEFORE matching. A comma is a non-digit, so a
    # range pattern reads "1,225+" as the pair (1, 225) and silently produces a
    # band of 1-225 -- which then reports the S pool as unclassified and the
    # bands as non-contiguous. Two wrong findings from one unstripped comma.
    $plain = $cell -replace ',', ''

    # Open-ended form first ("1225+"), because a range pattern would otherwise
    # find a spurious pair inside a longer number.
    if ($plain -match '([0-9]+)\s*\+') {
        $bands += [pscustomobject]@{ Low = [int]$Matches[1]; High = [int]::MaxValue }
        continue
    }
    $pair = [regex]::Match($plain, '([0-9]+)[^0-9]+([0-9]+)')
    if ($pair.Success) {
        $bands += [pscustomobject]@{ Low = [int]$pair.Groups[1].Value; High = [int]$pair.Groups[2].Value }
    }
}
if ($bands.Count -ne 6) { Fail "Section 19.2 parsed $($bands.Count) capacity bands; expected six, one per Rank." }

for ($i = 0; $i -lt 6; $i++) {
    $pool = $rankMana[$i]
    if ($pool -lt $bands[$i].Low -or $pool -gt $bands[$i].High) {
        $carded = "no band"
        for ($j = 0; $j -lt 6; $j++) {
            if ($pool -ge $bands[$j].Low -and $pool -le $bands[$j].High) { $carded = "$($ranks[$j])-Rank" }
        }
        $failures += "Section 19.2 misclassifies an ordinary $($ranks[$i])-Rank hunter: Rank Mana $pool falls outside the $($ranks[$i]) band ($($bands[$i].Low)-$($bands[$i].High)) and cards as $carded. The instrument that assigns Rank contradicts the table that defines it."
    }
    if ($i -gt 0 -and $bands[$i].Low -ne $bands[$i - 1].High + 1) {
        $failures += "Section 19.2's bands are not contiguous between $($ranks[$i-1]) and $($ranks[$i]): $($ranks[$i-1]) ends at $($bands[$i-1].High) and $($ranks[$i]) begins at $($bands[$i].Low). A reading in the gap classifies as nothing."
    }
}

# --- 5. Report ---------------------------------------------------------------

if ($failures.Count -gt 0) {
    Fail (@("Gatefall Rank parity FAILED ($($failures.Count) finding(s)):"; ($failures | ForEach-Object { "  - $_" })) -join "`n")
}

Write-Host "Gatefall Rank parity contract PASSED"
Write-Host "  parsed: Rank Health, Rank Mana, Section 3.2 rung gains, Section 6.6 ladder, Section 19.2 bands, Section 4.1 array floor"
Write-Host "  automatic growth alone clears parity at every rung, from the weakest legal creation Stat ($weakestCreationStat):"
foreach ($r in $rows) {
    Write-Host ("    {0}-Rank  level {1,2}   Stat {2,5}  vs parity {3,6}   Health {4,5} vs {5,5}" -f `
        $r.Rank, $r.Level, $r.Stat, $r.Parity, $r.Health, $r.RankHealth)
}
Write-Host "  Section 19.2 cards every Rank's own pool as that Rank, and the bands are contiguous"
exit 0
