[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Section 18's class contract, checked as structure rather than read as prose.
#
# Section 18 grants exactly ONE class per campaign, permanently, at level 25. It
# is the most consequential irreversible choice the Bearer makes, and until this
# file existed **nothing in the repository parsed it at all**. Every defect found
# in that section was found by a human reading it:
#
#   * `F-022` -- Devourer's fragment cap equalled its entire catalog at the
#     class's own earliest acquisition point. Five slots, five kinds, level 25.
#   * `F-025` -- Soulforged Armory's cap could not bind (five slots, two hands,
#     one draw an exchange, abilities that worked only while wielded), so the
#     fourth and fifth bindings each cost a beast core to grant nothing. Echo
#     Knight and Riftwalker authored no growth whatever -- "at authored
#     thresholds" and "at higher tiers", with nothing behind either. And Echo
#     Knight was offered for Endurance while containing no healing, no reduction
#     and no resource extension, so the class made endurance worse.
#   * `F-026` -- the section was titled "The Class Quest and Hidden Classes" for
#     sixty-three profile versions and contained no hidden class.
#
# `tools/test_rank_dominance_law.ps1` verifies exactly this family of property
# for SKILLS -- that a ladder cannot rot silently -- and is the reason skill
# ladders do not. This is that suite's shape carried to classes.
#
# WHAT IS ASSERTED. Not that a class is balanced -- that is a judgement no
# regex holds. The assertions are the structural claims Section 18 makes about
# itself, each of which was false somewhere in the section's history:
#
#   1. every class carries all three tracks (Section 18.3.1) -- acquisition
#      under a cap, magnitude, and a level-50 evolution;
#   2. every class reaches a fight;
#   3. the five catalogued classes are bijective with the five signals;
#   4. each catalogued class scales on a DISTINCT Stat, and none on level;
#   5. an uncatalogued class is off the signal map, carries exactly one reveal
#      condition, and caps on a Stat PAIR;
#   6. the trial authors one phase per signal and the tally scores all five.
#
# Numbers are read from the profile and never restated here. A second copy of a
# value that must agree is how `F-013` happened.
#
# VERIFIED BY MUTATION, 2026-08-08. A gate that cannot fail is worse than no gate,
# so each assertion was checked by breaking the profile and confirming this suite
# rejects it. All eight mutations were caught and the profile restored
# byte-identical afterwards:
#
#   magnitude track removed from a class .................. CAUGHT
#   cap made level-derived ................................ CAUGHT
#   two classes bound to the same Stat .................... CAUGHT
#   hidden class published on the signal map .............. CAUGHT
#   per-phase normalization dropped ....................... CAUGHT
#   evolution removed from a class ........................ CAUGHT
#   a trial phase deleted ................................. CAUGHT
#   hidden class capped on a single Stat .................. CAUGHT
#
# Re-run that check if these assertions are edited. The first version of this file
# passed on correct input while silently reporting every class as level-capped,
# because a capture class omitted \r\n and ran past its own line.

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$profileText = Get-Content -LiteralPath $profilePath -Raw -Encoding UTF8
$failures = [System.Collections.Generic.List[string]]::new()

# ---------------------------------------------------------------- class sections

# Split Section 18 into its subsections. A class heading is `## 18.N <Name> - <kind>`
# where kind is either "offered for <signal>" or "uncatalogued".
$lines = $profileText -split "`r?`n"
$sections = [ordered]@{}
$current = $null
$buffer = [System.Collections.Generic.List[string]]::new()
foreach ($line in $lines) {
    if ($line -match '^##\s+18\.\d+') {
        if ($null -ne $current) { $sections[$current] = ($buffer -join "`n") }
        $current = $line.Trim()
        $buffer = [System.Collections.Generic.List[string]]::new()
        continue
    }
    if ($line -match '^#\s+19\.' -and $null -ne $current) {
        $sections[$current] = ($buffer -join "`n")
        $current = $null
        continue
    }
    if ($null -ne $current) { $buffer.Add($line) | Out-Null }
}
if ($null -ne $current) { $sections[$current] = ($buffer -join "`n") }

if ($sections.Count -eq 0) { throw "Section 18 has no parseable subsections; the class contract cannot run." }

$catalogued = [ordered]@{}
$uncatalogued = [ordered]@{}
foreach ($heading in $sections.Keys) {
    # Dashes match as \p{Pd} (any dash punctuation); the signal map's arrow
    # matches as the regex escape → rather than the character itself.
    # This file stays pure ASCII on purpose: Windows PowerShell 5.1 reads a .ps1
    # without a BOM using the ANSI codepage, so a literal em dash or arrow in
    # source becomes mojibake and the pattern silently stops matching.
    if ($heading -match '^##\s+18\.\d+\s+(?<name>.+?)\s+\p{Pd}\s+(?<kind>.+?)\s*$') {
        $name = $Matches['name'].Trim()
        $kind = $Matches['kind'].Trim()
        if ($kind -match '^uncatalogued$') { $uncatalogued[$name] = $sections[$heading] }
        elseif ($kind -match '^offered for\s+(?<signal>.+)$') {
            $catalogued[$name] = @{ Signal = $Matches['signal'].Trim(); Body = $sections[$heading] }
        }
    }
}

if ($catalogued.Count -lt 5) {
    $failures.Add("Section 18 declares $($catalogued.Count) catalogued classes; the signal map authors five.") | Out-Null
}

# Section 18 is titled "The Class Quest and Hidden Classes". F-026 is what happens
# when a heading names content nobody wrote.
if ($uncatalogued.Count -lt 1) {
    $failures.Add("Section 18 is titled 'The Class Quest and Hidden Classes' and authors no uncatalogued class (F-026).") | Out-Null
}

# ------------------------------------------------------- the three tracks (18.3.1)

$allClasses = [ordered]@{}
foreach ($k in $catalogued.Keys) { $allClasses[$k] = $catalogued[$k].Body }
foreach ($k in $uncatalogued.Keys) { $allClasses[$k] = $uncatalogued[$k] }

foreach ($name in $allClasses.Keys) {
    $body = $allClasses[$name]

    # Acquisition: a cap, stated as a formula.
    if ($body -notmatch 'cap\s*=') {
        $failures.Add("$name authors no acquisition cap; Section 18.3.1 requires acquisition under a cap that binds.") | Out-Null
    }

    # Magnitude: what is held gets stronger. F-025: two classes had neither the
    # label nor the rungs, only a promise that rungs existed somewhere.
    if ($body -notmatch '(?m)^\s*-?\s*\*\*(Magnitude|Growth path)') {
        $failures.Add("$name authors no magnitude track; Section 18.3.1 requires one, and 'at authored thresholds' with nothing authored is what F-025 recorded.") | Out-Null
    }

    # Evolution: the level-50 unlock.
    if ($body -notmatch 'Evolution quest hook' -or $body -notmatch 'level 50') {
        $failures.Add("$name authors no level-50 evolution; Section 18.3.1 requires one.") | Out-Null
    }

    # Every class fights (Section 18.3.1). Deliberately a weak test -- it cannot
    # judge whether a grant is GOOD, only whether the class reaches a fight at
    # all. It exists because two classes were nearly authored with no combat
    # capability whatever, which in a world where death is final and the class is
    # permanent is a trap the Bearer finds too late to choose again.
    if ($body -notmatch '(modifier step|Rank Health|damage|Mana)') {
        $failures.Add("$name states no combat-reaching grant; Section 18.3.1 requires that every class fights.") | Out-Null
    }
}

# ------------------------------------------------------------- the signal map (18.3)

$signalMap = [ordered]@{}
# The arrow is built from its code point rather than typed, so this source stays
# pure ASCII (see the note above the heading pattern).
$arrow = [string][char]0x2192
$signalPattern = '(?m)^-\s+\*\*(?<signal>[^*]+?)\s*' + $arrow + '\s*(?<class>[^*]+?)\*\*\s*$'
foreach ($m in [regex]::Matches($profileText, $signalPattern)) {
    $signalMap[$m.Groups['signal'].Value.Trim()] = $m.Groups['class'].Value.Trim()
}

if ($signalMap.Count -ne 5) {
    $failures.Add("Section 18.3's signal map has $($signalMap.Count) entries; the trial tracks five signals.") | Out-Null
} else {
    $mapped = @($signalMap.Values)
    if (($mapped | Sort-Object -Unique).Count -ne 5) {
        $failures.Add("Section 18.3's signal map does not name five distinct classes; a signal surfacing a class another signal also surfaces makes the tally undecidable.") | Out-Null
    }
    foreach ($signal in $signalMap.Keys) {
        $cls = $signalMap[$signal]
        if (-not $catalogued.Contains($cls)) {
            $failures.Add("Section 18.3 maps '$signal' to '$cls', which has no class section of its own.") | Out-Null
        } elseif ($catalogued[$cls].Signal -notmatch [regex]::Escape($signal)) {
            $failures.Add("Section 18.3 maps '$signal' to '$cls', but that section's heading declares it offered for '$($catalogued[$cls].Signal)'. The map and the class disagree, which is the shape F-025 found in Echo Knight.") | Out-Null
        }
    }
    foreach ($cls in $catalogued.Keys) {
        if ($mapped -notcontains $cls) {
            $failures.Add("'$cls' declares itself offered for a signal but appears nowhere on Section 18.3's map, so no trial result can surface it.") | Out-Null
        }
    }
}

# An uncatalogued class must be OFF the map -- that is the whole of what makes it
# hidden (Section 18.3.3).
foreach ($name in $uncatalogued.Keys) {
    if (@($signalMap.Values) -contains $name) {
        $failures.Add("'$name' is declared uncatalogued yet appears on Section 18.3's published signal map; a hidden class reachable from the map is not hidden (F-026).") | Out-Null
    }
}

# ------------------------------------------------------- one Stat per class (18.3.1)

$statNames = @('Strength', 'Agility', 'Vitality', 'Perception', 'Intelligence')
$statTable = [ordered]@{}
foreach ($m in [regex]::Matches($profileText, '(?m)^\|\s+\*\*(?<class>[^*]+?)\*\*\s+\|\s+(?<stat>Strength|Agility|Vitality|Perception|Intelligence)\s+\|\s+(?<cap>[^|]+?)\s+\|\s*$')) {
    $statTable[$m.Groups['class'].Value.Trim()] = @{
        Stat = $m.Groups['stat'].Value.Trim()
        Cap  = $m.Groups['cap'].Value.Trim()
    }
}

if ($statTable.Count -ne 5) {
    $failures.Add("Section 18.3.1's Stat table has $($statTable.Count) rows; it must bind each of the five catalogued classes to one Stat.") | Out-Null
} else {
    $usedStats = @($statTable.Keys | ForEach-Object { $statTable[$_].Stat })
    if (($usedStats | Sort-Object -Unique).Count -ne 5) {
        $duplicated = ($usedStats | Group-Object | Where-Object { $_.Count -gt 1 } | ForEach-Object { $_.Name }) -join ', '
        $failures.Add("Section 18.3.1 binds two classes to the same Stat ($duplicated); it requires that no two share one.") | Out-Null
    }
    foreach ($cls in $statTable.Keys) {
        if (-not $catalogued.Contains($cls)) {
            $failures.Add("Section 18.3.1's Stat table names '$cls', which has no catalogued class section.") | Out-Null
        }
    }
    foreach ($cls in $catalogued.Keys) {
        if (-not $statTable.Contains($cls)) {
            $failures.Add("'$cls' has no row in Section 18.3.1's Stat table, so its acquisition scales on nothing the section declares.") | Out-Null
        }
    }
}

# F-022's structural cause: a level-derived cap on a fixed catalog collides at the
# class's own earliest acquisition point. Section 18.3.1 requires Stat-derived caps.
foreach ($name in $allClasses.Keys) {
    # The capture class must exclude newlines. Without \r\n in it the match runs
    # past the end of its own line until it finds a '.', ':' or '(' somewhere
    # further down the section, and every class reports a level-derived cap
    # because some later line mentions "level 50".
    foreach ($m in [regex]::Matches($allClasses[$name], '(?m)^.*cap\s*=\s*(?<expr>[^.:(\r\n]+)')) {
        if ($m.Groups['expr'].Value -match '\blevel\b') {
            $failures.Add("$name's cap reads level rather than a Stat; Section 18.3.1 requires Stat-derived caps, and a level-derived cap on a fixed catalog is what F-022 recorded.") | Out-Null
        }
    }
}

# ---------------------------------------------------- the uncatalogued tier (18.3.3)

foreach ($name in $uncatalogued.Keys) {
    $body = $uncatalogued[$name]

    $reveals = [regex]::Matches($body, '\*\*Reveal condition\.\*\*').Count
    if ($reveals -ne 1) {
        $failures.Add("$name declares $reveals reveal conditions; Section 18.3.3 authors exactly one per hidden class.") | Out-Null
    }

    # Stat PAIR, not a single Stat -- the five singles are the catalogued shapes.
    $capMatch = [regex]::Match($body, 'cap\s*=\s*(?<expr>[^:]+?)\*\*')
    if (-not $capMatch.Success) {
        $capMatch = [regex]::Match($body, 'cap\s*=\s*(?<expr>[^)]+)')
    }
    if ($capMatch.Success) {
        $expr = $capMatch.Groups['expr'].Value
        $statsInCap = @($statNames | Where-Object { $expr -match $_ })
        if ($statsInCap.Count -lt 2) {
            $failures.Add("$name caps on '$($expr.Trim())', which names $($statsInCap.Count) Stat; Section 18.3.3 requires a hidden class to cap on a Stat pair.") | Out-Null
        }
    }
}

# --------------------------------------------- the trial and the tally (18.2.3, 18.3.2)

$phases = [regex]::Matches($profileText, '(?m)^\*\*Phase\s+(?<n>\d+)\s+\p{Pd}').Count
if ($phases -ne 5) {
    $failures.Add("Section 18.2.3 authors $phases trial phases; the trial tracks five signals and each needs an instrument.") | Out-Null
}

# Every signal named on the map must be scored by the Section 18.3.2 rubric, or the
# trial measures honestly and then adjudicates by taste (F-023's open residue).
if ($signalMap.Count -eq 5) {
    foreach ($signal in $signalMap.Keys) {
        $escaped = [regex]::Escape($signal)
        if ($profileText -notmatch "(?m)^\|\s+\*\*$escaped\*\*\s+\|") {
            $failures.Add("Section 18.3.2's tally has no row scoring '$signal', so that signal cannot be counted and the class it surfaces cannot be earned.") | Out-Null
        }
    }
}

# The normalization is the load-bearing half of the rubric: un-normalized, a Bearer
# who one-shots fourteen Phase-1 commons scores Kill Efficiency fourteen times
# against a Positioning ceiling of four, and one class becomes near-inevitable for
# anybody. That is what the single played trial produced.
if ($profileText -notmatch 'criterion scores at most once per phase') {
    $failures.Add("Section 18.3.2 no longer states that each criterion scores at most once per phase; without that normalization the efficiency count buries every other signal.") | Out-Null
}

if ($profileText -notmatch 'at most one hidden class is revealed per trial|At most one hidden class is revealed per trial') {
    $failures.Add("Section 18.3.3 no longer bounds the hidden tier to one revealed class per trial.") | Out-Null
}

# ------------------------------------------------------------------- observations

# Live campaign state is reported, never asserted (F-018: a contract test may not
# fail on live campaign state).
$campaignRoot = Join-Path $repo "campaigns"
if (Test-Path -LiteralPath $campaignRoot) {
    $holders = @()
    foreach ($sheet in Get-ChildItem -LiteralPath $campaignRoot -Filter "100_CHARACTER_SHEET.md" -Recurse -ErrorAction SilentlyContinue) {
        $text = Get-Content -LiteralPath $sheet.FullName -Raw -Encoding UTF8
        if ($text -match '(?m)^\s*class:\s*(?<value>.+?)\s*$' -and $Matches['value'] -notmatch '^null$') {
            $holders += $sheet.Directory.Name
        }
    }
    if ($holders.Count -eq 0) {
        Write-Output "OBSERVATION: no campaign holds a class, so nothing in Section 18 has ever been exercised in play. Every assertion here is structural until one is."
    }
}

Write-Output ("OBSERVATION: Section 18 authors {0} catalogued and {1} uncatalogued classes, {2} trial phases." -f $catalogued.Count, $uncatalogued.Count, $phases)

if ($failures.Count -gt 0) {
    Write-Host "Gatefall class contract: FAIL" -ForegroundColor Red
    foreach ($failure in $failures) { Write-Host " - $failure" -ForegroundColor Red }
    exit 1
}

Write-Host "Gatefall class contract verified: every class carries all three tracks, fights, and maps exactly once" -ForegroundColor Green
