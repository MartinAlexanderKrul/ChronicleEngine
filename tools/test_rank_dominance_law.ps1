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

# Every Markdown table in the profile must have a consistent column count.
#
# This is here because a hand edit to the Section 7.3 ladders silently produced
# two malformed tables and every gate passed: five A-Rank cells were appended to
# the WRONG table (the first regex match won, hitting the Starting Skill Table
# and the Ratified Earned Techniques table instead of the scope ladder), so the
# scope ladder had no A column at all while two unrelated tables carried
# A-Rank prose in a phantom sixth cell. Flash Step separately kept a stale
# "Open question" cell after its A rung was authored. Nothing noticed: the
# repository validator does not read table shape, and a ladder row with the
# wrong arity still parses as prose.
$tableLine = '(?m)^\|(?!-).*\|[ \t]*$'
$lines = $profile -split "`r?`n"
$tableStart = -1
$expected = 0
for ($i = 0; $i -lt $lines.Count; $i++) {
    $line = $lines[$i]
    if ($line -match '^\|' -and $line -match '\|[ \t]*$') {
        $count = ($line.Trim().Trim('|') -split '\|').Count
        if ($tableStart -lt 0) { $tableStart = $i + 1; $expected = $count; continue }
        if ($line -match '^\|[\s:-]+\|[\s:|-]*$') { continue }   # separator row
        if ($count -ne $expected) {
            $failures.Add("Profile line $($i + 1): table row has $count columns against the header's $expected -- '$($line.Substring(0, [math]::Min(60, $line.Length)))'") | Out-Null
        }
    } else {
        $tableStart = -1
    }
}

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

# --- Each skill's authored magnitude, PARSED from the profile's own tables ---
#
# This block used to restate every increment as a PowerShell lambda -- `0.10 +
# 0.25 * $r + 0.05 * ($m - 1)` and seven more -- above a comment claiming the
# restatement "cannot be avoided ... a closed-form ladder written in prose is not
# parseable into a function." That claim was wrong, and being wrong is what left
# `F-014`'s residue open: the profile authors these numbers in two structured
# tables, Section 7.3's `Rank's magnitude grant` column and Section 7.4's
# per-skill `Novice -> Master` column, one cell per skill per parameter.
#
# Retuning `+0.25` to `+0.30` in the profile therefore used to leave this file
# passing against the old figure. The presence checks further down narrowed that
# -- they tie a few constants back to the sentence authoring them -- but they are
# per-sentence and several parameters had none at all: Twin Fang's mastery step,
# Dimensional Projection's `+3 m` and its whole 5/7/10/15/20 ladder, and every
# skill's Novice value were unchecked in any form.
#
# Now the numbers come from the tables and nothing here restates one. What is
# still declared below is SHAPE -- which of three forms a skill's magnitude takes
# -- because that is a genuine design fact rather than a number, and it is
# cross-checked against the profile where the profile states it.
#
# Patterns are ASCII-only for the encoding reason noted above: the profile writes
# these cells with U+00D7 and U+2192, and a literal one here would silently never
# match under Windows PowerShell 5.1's ANSI decode of a BOM-less script.

function ConvertTo-Number {
    param([string]$Text)
    return [double]::Parse($Text, [Globalization.CultureInfo]::InvariantCulture)
}

# Every row of the first Markdown table whose header matches, as trimmed cells.
function Get-TableRows {
    param([string]$Text, [string]$HeaderPattern)
    $header = [regex]::Match($Text, $HeaderPattern)
    if (-not $header.Success) { return @() }
    $rows = @()
    foreach ($line in ($Text.Substring($header.Index) -split "\r?\n")) {
        if ($line -notmatch '^\|') { break }
        $rows += ,@($line.Trim().Trim('|').Split('|') | ForEach-Object { $_.Trim() })
    }
    return $rows
}

function Get-SkillRow {
    param($Rows, [string]$Name)
    foreach ($row in $Rows) {
        if (($row[0] -replace '\*', '').Trim() -eq $Name) { return $row }
    }
    return $null
}

# Section 7.3: "+0.25 chassis", "+25 points reduction", "**+0.35** to its
# follow-up multiplier per Rank", "**+3 m**", "**none**", or the marker that the
# grant arrives through the Rank baseline table instead of as an increment.
function Get-AuthoredRankGrant {
    param([string]$Cell)
    if ([string]::IsNullOrWhiteSpace($Cell)) { return $null }
    if ($Cell -match 'per Rank on the baseline table') { return 'baseline' }
    if ($Cell -match '\*\*none\*\*') { return 0.0 }
    $m = [regex]::Match($Cell, '\+(?<v>\d+(?:\.\d+)?)')
    if (-not $m.Success) { return $null }
    return (ConvertTo-Number $m.Groups['v'].Value)
}

# Section 7.4: "(+0.15/level)", "(+5 points/level)", "+0.15/level over a base of".
function Get-AuthoredMasteryStep {
    param([string]$Cell)
    if ([string]::IsNullOrWhiteSpace($Cell)) { return $null }
    $m = [regex]::Match($Cell, '\+(?<v>\d+(?:\.\d+)?)\s*(?:points\s*)?/level')
    if (-not $m.Success) { return $null }
    return (ConvertTo-Number $m.Groups['v'].Value)
}

# Section 7.4's Novice value is the cell's first number once the per-level token
# is removed. That single rule reads every shape the column uses: "x2.00 -> x2.60
# (+0.15/level)" gives 2.00, "+0.10 -> +0.30 chassis" gives 0.10, "30% -> 50%"
# gives 30, "5 m -> 20 m" gives 5, and Twin Fang's "+0.15/level over a base of
# `1.00 + 0.35 x ranks above native`" gives 1.00 rather than its own step.
function Get-AuthoredNovice {
    param([string]$Cell)
    if ([string]::IsNullOrWhiteSpace($Cell)) { return $null }
    $stripped = [regex]::Replace($Cell, '\+?\d+(?:\.\d+)?\s*(?:points\s*)?/level', '')
    $m = [regex]::Match($stripped, '(?<v>\d+(?:\.\d+)?)')
    if (-not $m.Success) { return $null }
    return (ConvertTo-Number $m.Groups['v'].Value)
}

$magnitudeRows = Get-TableRows $profile "(?m)^\| Skill \| Native \| Rank's magnitude grant \|"
$masteryRows   = Get-TableRows $profile "(?m)^\| Skill \| Mastery axis \|"
if ($magnitudeRows.Count -lt 3) { throw "Section 7.3's magnitude-axis ladder table is unreadable; the dominance check cannot run." }
if ($masteryRows.Count -lt 3)   { throw "Section 7.4's per-skill mastery table is unreadable; the dominance check cannot run." }

# The single-skill reduction cap, from the sentence that authors it.
$capMatch = [regex]::Match($profile, 'reduction fraction never exceeds (?<v>\d+)%')
if (-not $capMatch.Success) { throw "Section 7.2 no longer states the single-skill reduction cap; the capped skills cannot be checked." }
$reductionCap = (ConvertTo-Number $capMatch.Groups['v'].Value)

# Dimensional Projection is the one skill whose mastery track is an authored
# ladder rather than a constant step, and Section 7.2 states it as a list.
#
# The list this reads is the PROJECTILE COUNT, not the range band. Through
# Profile 1.69 range was the technique's only axis, so this parsed the range
# ladder; 1.70 made projectile count the magnitude (`F-027`), and a dominance
# check that kept reading range would verify the axis that no longer carries the
# skill's magnitude while the one that does went unchecked. Both ladders still
# exist and both drop at a Rank ascension's Novice rung -- which is what the
# `magnitude_floor` ratchet is for, and what this suite exists to confirm is
# still declared.
$dpMatch = [regex]::Match($profile, 'Mastery launches \*\*(?<ladder>[^*]+)\*\* objects')
$dpLadder = $null
if ($dpMatch.Success) {
    $dpLadder = @([regex]::Matches($dpMatch.Groups['ladder'].Value, '\d+(?:\.\d+)?') |
        ForEach-Object { ConvertTo-Number $_.Value })
}

# SHAPE is declared; every magnitude is read from the tables above.
#   baseline - the Rank grant arrives by multiplying the Section 7.2 Rank
#              baseline, so mastery is a multiplier over it (Rupture, Mend, Mana
#              Bolt).
#   additive - Novice value plus a per-Rank increment plus a per-level increment.
#   ladder   - an authored per-level list plus a per-Rank increment. Dimensional
#              Projection is unformed and checked anyway: its ladder was authored
#              at 1.55 ahead of ratification precisely so the trap Twin Fang fell
#              into is closed before the skill can exist. Without the per-Rank
#              grant it reads x0.25 -- 20 m falling to 5 m -- the second case the
#              magnitude ratchet exists for.
# `Categorised` -- whether a flat rung is nonetheless an authored gain -- stays a
# declared reading of the D/C/B/A cells and is cross-checked below.
$skills = @(
    @{ Name = "Rupture";                Mode = "baseline"; Categorised = $true  },
    @{ Name = "Mend";                   Mode = "baseline"; Categorised = $false },
    @{ Name = "Mana Bolt";              Mode = "baseline"; Categorised = $true  },
    @{ Name = "Dagger Mastery";         Mode = "additive"; Categorised = $true  },
    @{ Name = "Stone Skin";             Mode = "additive"; Categorised = $true  },
    @{ Name = "Bulwark";                Mode = "additive"; Categorised = $true  },
    @{ Name = "Twin Fang";              Mode = "additive"; Categorised = $true  },
    @{ Name = "Dimensional Projection"; Mode = "ladder";   Categorised = $true  }
)

foreach ($skill in $skills) {
    $magnitudeRow = Get-SkillRow $magnitudeRows $skill.Name
    $masteryRow   = Get-SkillRow $masteryRows   $skill.Name
    if ($null -eq $magnitudeRow) { throw "'$($skill.Name)' has no row in Section 7.3's magnitude-axis ladder; every mastery-tracked skill must have one (Decision 090 point 5)." }
    if ($null -eq $masteryRow)   { throw "'$($skill.Name)' has no row in Section 7.4's per-skill mastery table; a closed-form rule with no coverage list cannot report a skill it does not cover (F-014)." }

    $nativeMatch = [regex]::Match($magnitudeRow[1], '^\*{0,2}(?<rank>[EDCBAS])-Rank')
    if (-not $nativeMatch.Success) { throw "'$($skill.Name)' declares no readable native Rank in Section 7.3." }
    $skill.Native = $nativeMatch.Groups['rank'].Value

    $grant = Get-AuthoredRankGrant $magnitudeRow[2]
    if ($null -eq $grant) { throw "'$($skill.Name)' states no readable Rank magnitude grant in Section 7.3." }
    if (($skill.Mode -eq 'baseline') -ne ($grant -is [string])) {
        throw "'$($skill.Name)' is declared '$($skill.Mode)' here but Section 7.3's grant cell says otherwise; the shape and the profile disagree."
    }
    $skill.RankGrant = if ($grant -is [string]) { 0.0 } else { $grant }

    $skill.MasteryStep = Get-AuthoredMasteryStep $masteryRow[2]
    $skill.Novice = Get-AuthoredNovice $masteryRow[2]
    if ($null -eq $skill.Novice) { throw "'$($skill.Name)' states no readable Novice value in Section 7.4." }
    if ($skill.Mode -ne 'ladder' -and $null -eq $skill.MasteryStep) {
        throw "'$($skill.Name)' states no readable per-level mastery step in Section 7.4."
    }

    # A reduction is the only axis the Section 7.2 cap reaches, and the axis is
    # the profile's own word for it.
    $skill.Capped = ($masteryRow[1] -match '(?i)^reduction$')

    if ($skill.Mode -eq 'ladder') {
        if ($null -eq $dpLadder -or $dpLadder.Count -ne 5) {
            throw "'$($skill.Name)' is declared 'ladder' but Section 7.2 states no five-level mastery ladder for it."
        }
        $skill.MasteryLadder = $dpLadder
    }

    # The D/C/B/A cells behind the `Categorised` reading. A rung reading
    # *Magnitude only* or *no grant above native* is a stated design position and
    # not a category, which is the distinction Section 7.2's "recorded, never
    # silent" rule exists to preserve.
    $authoredRungs = @($magnitudeRow[3..($magnitudeRow.Count - 1)] |
        Where-Object { -not [string]::IsNullOrWhiteSpace($_) -and $_ -notmatch '(?i)magnitude only|no grant above native' })
    if ($skill.Categorised -ne ($authoredRungs.Count -gt 0)) {
        throw "'$($skill.Name)' is declared Categorised=$($skill.Categorised) here, but Section 7.3 authors $($authoredRungs.Count) category rungs for it; the reading and the table disagree."
    }
}

function Get-Magnitude {
    param($Skill, [int]$R, [int]$M)
    $value = switch ($Skill.Mode) {
        'baseline' { $baseline[$ranks[[array]::IndexOf($ranks, $Skill.Native) + $R]] * ($Skill.Novice + $Skill.MasteryStep * ($M - 1)) }
        'additive' { $Skill.Novice + $Skill.RankGrant * $R + $Skill.MasteryStep * ($M - 1) }
        'ladder'   { $Skill.MasteryLadder[$M - 1] + $Skill.RankGrant * $R }
        default    { throw "Unknown magnitude shape '$($Skill.Mode)' for '$($Skill.Name)'." }
    }
    if ($Skill.Capped) { $value = [math]::Min($reductionCap, $value) }
    return $value
}

foreach ($skill in $skills) {
    $nativeIndex = [array]::IndexOf($ranks, $skill.Native)
    $floor = 0.0
    for ($r = 0; $nativeIndex + $r -lt $ceilingIndex; $r++) {
        $atMaster = [math]::Max((Get-Magnitude $skill $r 5), $floor)
        # The magnitude ratchet: neither road may land below the value held
        # immediately before the ascension.
        $rune = [math]::Max((Get-Magnitude $skill ($r + 1) 1), $atMaster)
        $breakthrough = [math]::Max((Get-Magnitude $skill ($r + 1) 3), $atMaster)
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
        $nextMaster = Get-Magnitude $skill ($r + 1) 5
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

# --- The stated dominance ratios, recomputed (F-014's residue) ---------------
#
# Section 7.3's grant cells annotate themselves with the ratio they produce --
# "+0.25 chassis -- **thin** (1.17x / 1.09x / 1.06x)" -- and with a word, *thin*
# or *dominant*, classifying it against Decision 090 point 5's 1.15x threshold.
# Both were computed by hand and written into prose, and nothing recomputed them
# when an increment moved. That is what `F-014` left open in its own words: a
# retuned `+0.25` or `+5 points` now fails the law above loudly, while the
# classification beside it goes silently wrong.
#
# The ratio is the raw Rank N Master -> Rank N+1 Novice step, BEFORE the
# magnitude ratchet. That is deliberate and is what the cells state: the ratchet
# is the repair (no axis may fall), the raw figure is the thing being classified,
# and reading it post-ratchet would report 1.00x for every skill the ratchet
# catches and hide exactly the case the classification exists to name.
#
# Two skills are deliberately NOT checked, and the reason is not laziness.
# Rupture and Mana Bolt read `skill_rank_baseline + effective Intelligence`
# (Section 6.2, Profile 1.56), so their real ratio depends on the Bearer's
# Intelligence -- campaign state, not a profile constant -- which is why 1.56's
# own note says the fold "flattens the ratio" and why both cells say *now thin*
# against a baseline-only arithmetic of 1.9x and 1.5x. A profile-side check
# cannot own that number. Mend IS checked: healing is explicitly excluded from
# the Intelligence fold, so its figure is a profile constant.
#
# What is asserted, therefore: every ratio a cell STATES must equal the computed
# figure for its step, in order from native upward; and a skill whose ratio is
# Intelligence-dependent must not state one it cannot own.
$intelligenceDependent = @()
foreach ($skill in $skills) {
    $masteryRow = Get-SkillRow $masteryRows $skill.Name
    if ($skill.Mode -eq 'baseline' -and $masteryRow[1] -match '(?i)damage') {
        $intelligenceDependent += $skill.Name
    }
}

foreach ($skill in $skills) {
    $magnitudeRow = Get-SkillRow $magnitudeRows $skill.Name
    $grantCell = $magnitudeRow[2]
    # "1.17x" or "1.17<U+00D7>". The multiplication sign is written as the escape
    # \u00d7 and NEVER as a literal: this file is BOM-less UTF-8, Windows
    # PowerShell 5.1 decodes it as ANSI, and a literal U+00D7 in the pattern
    # matches nothing. That does not fail -- it makes $stated empty and the whole
    # check `continue` past every skill, passing vacuously. Verified by corrupting
    # a stated ratio and confirming this reports it.
    # Version references like "(1.57)" carry no multiplier mark and are ignored.
    $stated = @([regex]::Matches($grantCell, '(?<v>\d+\.\d+)(?:x|\u00d7)') |
                ForEach-Object { $_.Groups['v'].Value })

    if ($intelligenceDependent -contains $skill.Name) {
        if ($stated.Count -gt 0) {
            $failures.Add("'$($skill.Name)' states a dominance ratio ($($stated -join ', ')) but its magnitude reads effective Intelligence, so no profile-side figure can be correct for every Bearer. State the shape, not a number.") | Out-Null
        }
        continue
    }
    if ($stated.Count -eq 0) { continue }

    $nativeIndex = [array]::IndexOf($ranks, $skill.Native)
    $computed = @()
    for ($r = 0; $nativeIndex + $r -lt $ceilingIndex; $r++) {
        $atMaster = Get-Magnitude $skill $r 5
        $nextNovice = Get-Magnitude $skill ($r + 1) 1
        if ($atMaster -le 0) { continue }
        $computed += [math]::Round($nextNovice / $atMaster, 2)
    }

    for ($i = 0; $i -lt $stated.Count; $i++) {
        if ($i -ge $computed.Count) {
            $failures.Add("'$($skill.Name)' states $($stated.Count) dominance ratios but only $($computed.Count) Rank steps are authored; the extra figures describe rungs that do not exist.") | Out-Null
            break
        }
        $want = [math]::Round((ConvertTo-Number $stated[$i]), 2)
        if ([math]::Abs($want - $computed[$i]) -ge 0.005) {
            $step = "$($ranks[$nativeIndex + $i])-Rank Master -> $($ranks[$nativeIndex + $i + 1])-Rank Novice"
            $failures.Add("'$($skill.Name)' states $($stated[$i])x for $step but the Section 7.3/7.4 increments give $($computed[$i])x; the annotation is a hand-computed consequence of numbers that moved without it.") | Out-Null
        }
    }
}

# Section 7.2's prose must keep agreeing with the Section 7.3/7.4 tables the
# magnitudes are now read from. These are the same increments stated a second
# time in sentence form, and Section 7.2 is where the Runtime reads them during
# play -- so the tables being authoritative does not make the prose free to
# drift. The expected figure comes from the table parse above, never from a
# literal here, which is the difference between this and the block it replaces.
# `{N}` is substituted with the figure the tables author, never with a literal.
$prose = @(
    @{ What = 'Rank step, reduction';       Skill = 'Stone Skin';     Value = { $s.RankGrant };   Template = '\*\*\+{N} percentage points\*\*' }
    @{ What = 'Rank step, passive chassis'; Skill = 'Dagger Mastery'; Value = { $s.RankGrant };   Template = '\*\*\+{N}\*\* to the multiplier' }
    @{ What = 'Mastery step, damage';       Skill = 'Rupture';        Value = { $s.MasteryStep }; Template = 'multiplier rises \*\*\+{N}\*\*' }
    @{ What = 'Mastery step, reduction';    Skill = 'Stone Skin';     Value = { $s.MasteryStep }; Template = 'fraction rises \*\*\+{N} points\*\*' }
    @{ What = 'Mastery step, passive';      Skill = 'Dagger Mastery'; Value = { $s.MasteryStep }; Template = 'granted multiplier rises \*\*\+{N}\*\*' }
)
foreach ($claim in $prose) {
    $s = $skills | Where-Object { $_.Name -eq $claim.Skill } | Select-Object -First 1
    $expected = (& $claim.Value)
    # Trailing zeroes differ between "0.25" in prose and 0.25 as a double, so the
    # pattern allows the profile's own rendering of the same number.
    $rendered = [regex]::Escape($expected.ToString([Globalization.CultureInfo]::InvariantCulture)) + '0?'
    if ($profile -notmatch $claim.Template.Replace('{N}', $rendered)) {
        $failures.Add("Section 7.2's prose for '$($claim.What)' no longer states +$expected, which is what the Section 7.3/7.4 tables author for $($claim.Skill); the Runtime reads the prose during play and the two must agree.") | Out-Null
    }
}

$authored = @{
    'Mana skill damage reads Intelligence' = 'skill_rank_baseline \+ effective Intelligence'
    'Healing excluded from Intelligence'   = 'Bearer_skill_healing = \(skill_rank_baseline \+ equipped_focus_power\)'
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
