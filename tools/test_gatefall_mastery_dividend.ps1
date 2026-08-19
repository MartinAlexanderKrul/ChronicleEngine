[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$campaignRoot = Join-Path $repo "campaigns"

# Why this gate exists
#
# Profile 1.83 authored one rule: A MASTERY LEVEL MUST RETURN SOMETHING TO THE
# BEARER. It exists because nine of sixteen skills were charging three qualifying
# scenes a level and returning nothing, by three routes that had each been
# invisible to every gate in this repository.
#
# `tools/test_rank_dominance_law.ps1` has a leg for one of those routes and does
# not fire on it. It asks whether Rank N+1 Master beats Rank N Master -- which it
# does, because a Rank-baseline skill's baseline grows 375 -> 1,000 -- and never
# asks whether climbing mastery WITHIN the current Rank beats the floor already
# in force. That gate is not wrong; it answers a different question, and the
# question it answers had been mistaken for this one. Leg 4 below is the missing
# half, and it fails on the exact pre-1.83 state that prompted the version.
#
# Leg 3 is the one that would have caught this file's own first draft. The
# dividends were designed from what each skill does rather than from what its
# Rank ladder already sells, and four of seven re-sold a category the skill
# either held or would earn -- Silent Step's first rung WAS its D category,
# Broken Rhythm's fourth WAS its C category. Section 7.4 states the division of
# labour as law: Rank sells what a skill can reach, mastery sells how well it
# resolves. A gate that only counted rungs would have passed all four.

function Fail { param([string]$Message) throw $Message }
function Assert-True { param([bool]$Condition, [string]$Message) if (-not $Condition) { Fail $Message } }

$profileText = [System.IO.File]::ReadAllText($profilePath)
$MASTERY_LEVELS = 5

# --- The Section 7.4 axis table: every skill declares a dividend or a reason ---
Assert-True ($profileText -match '(?m)^\|\s*Skill\s*\|\s*Mastery axis\s*\|\s*Novice \S+ Master\s*\|\s*Dividend[^|]*\|\s*$') `
    "Section 7.4's mastery axis table carries no Dividend column; Profile 1.83 is not present."
$axisRows = [regex]::Matches($profileText,
    '(?m)^\|\s*\*\*(?<skill>[^*]+)\*\*\s*\|(?<axis>[^|]*)\|(?<band>[^|]*)\|(?<div>[^|]*)\|\s*$')
$axis = @{}
foreach ($r in $axisRows) {
    $name = $r.Groups['skill'].Value.Trim()
    if ($axis.ContainsKey($name)) { continue }
    $axis[$name] = [pscustomobject]@{
        Band     = $r.Groups['band'].Value.Trim()
        Dividend = $r.Groups['div'].Value.Trim()
    }
}
Assert-True ($axis.Count -ge 16) `
    "Only $($axis.Count) skills parsed from Section 7.4's axis table; the mastery-tracked set is sixteen."

# LEG 1 -- every row names a dividend or states why it needs none.
foreach ($name in $axis.Keys) {
    Assert-True ($axis[$name].Dividend.Length -gt 0) (
        "Section 7.4's axis table leaves $name's Dividend cell empty. A row that reaches clause 4 and " +
        "names nothing is not finished -- which is the standard the table has carried since 1.52 and " +
        "the one it failed by giving nine skills an axis that could not pay.")
}

# --- The authored dividend ladders -------------------------------------------
$ladderRows = [regex]::Matches($profileText,
    '(?m)^\|\s*\*\*(?<skill>[^*]+)\*\*\s*\|\s*`(?<name>[A-Za-z]+)`[^|]*\|(?<rungs>[^|]+)\|\s*$')
$ladders = @{}
foreach ($r in $ladderRows) {
    $ladders[$r.Groups['skill'].Value.Trim()] = [pscustomobject]@{
        Name  = $r.Groups['name'].Value
        Rungs = @($r.Groups['rungs'].Value.Split([char]0x00B7) | ForEach-Object { $_.Trim() } | Where-Object { $_ })
    }
}
Assert-True ($ladders.Count -ge 7) `
    "Only $($ladders.Count) dividend ladders parsed from Section 7.4; Profile 1.83 authors seven."

# LEG 2 -- uniform ladders. No skill gets a longer one than another.
foreach ($name in $ladders.Keys) {
    $n = $ladders[$name].Rungs.Count
    Assert-True ($n -eq $MASTERY_LEVELS) (
        "$name's ``$($ladders[$name].Name)`` ladder carries $n rungs against the $MASTERY_LEVELS mastery " +
        "levels it is climbed by. Section 7.4 authors every dividend at exactly five, so no skill gets a " +
        "longer ladder than another and no level arrives with nothing to buy.")
}

# LEG 3 -- no dividend rung re-sells a category the skill's own Rank ladder grants.
# Section 7.3's cells name their categories in backticks or bold; a dividend rung
# repeating one is a Rank category filed in the wrong table.
foreach ($name in $ladders.Keys) {
    $rowPattern = '(?m)^\|\s*\*\*' + [regex]::Escape($name) + '\*\*\s*(?:\*\(native [EDCBAS]-Rank\)\*\s*)?\|(?<cells>.+)\|\s*$'
    $row = [regex]::Match($profileText, $rowPattern)
    if (-not $row.Success) { continue }
    $categories = @()
    foreach ($m in [regex]::Matches($row.Groups['cells'].Value, '\*\*`(?<c>[^`]+)`\*\*|`(?<d>[^`]+)`')) {
        $c = if ($m.Groups['c'].Success) { $m.Groups['c'].Value } else { $m.Groups['d'].Value }
        if ($c -and $c.Length -gt 3) { $categories += $c }
    }
    $blob = ($ladders[$name].Rungs -join " ")
    foreach ($c in ($categories | Sort-Object -Unique)) {
        Assert-True ($blob -notmatch [regex]::Escape($c)) (
            "$name's dividend rungs re-sell its own Rank category '$c'. Section 7.4: Rank sells what a " +
            "skill can reach, mastery sells how well it resolves -- a rung naming a kind the Rank ladder " +
            "already grants is a Rank category filed in the wrong table.")
    }
}

# --- Live state --------------------------------------------------------------
$checked = 0
foreach ($startup in Get-ChildItem -Path $campaignRoot -Filter "090_CAMPAIGN_STARTUP.md" -Recurse -File) {
    $startupText = [System.IO.File]::ReadAllText($startup.FullName)
    if ($startupText -notmatch 'world_rule_profile:\s*"Gatefall World Rule Profile (?<v>\d+\.\d+)"') { continue }
    if ([version]$Matches['v'] -lt [version]"1.83") { continue }

    $sheetPath = Join-Path $startup.DirectoryName "100_CHARACTER_SHEET.md"
    Assert-True (Test-Path -LiteralPath $sheetPath) "$($startup.DirectoryName) pins Profile 1.83 but carries no character sheet."
    $sheet = [System.IO.File]::ReadAllText($sheetPath)
    $label = Split-Path $startup.DirectoryName -Leaf

    # Every authored dividend is a counter, and it is inside its own ladder.
    foreach ($name in $ladders.Keys) {
        $key = ($name.ToLowerInvariant() -replace "[^a-z0-9]+", "_").Trim("_")
        $pattern = 'path:\s*skills\.' + $key + '\.dividend_level,\s*baseline_value:\s*-?\d+,\s*baseline_as_of:\s*EVT-\d{6},\s*current_value:\s*(?<v>-?\d+)'
        Assert-True ($sheet -match $pattern) (
            "$label pins Profile 1.83 and holds $name, which Section 7.4 authors a ``$($ladders[$name].Name)`` " +
            "dividend for, but carries no skills.$key.dividend_level counter. An unrecorded dividend is a " +
            "rendered string, which is the class of defect 1.82 and 1.83 both exist to close.")
        $level = [int]$Matches['v']
        Assert-True ($level -ge 0 -and $level -le $MASTERY_LEVELS) (
            "$label holds $name at dividend_level $level, outside the authored 0..$MASTERY_LEVELS.")
    }

    # LEG 4 -- the floor must not swallow the mastery track.
    #
    # A Rank-baseline skill's multiplier band is identical at every Rank, so
    # `magnitude_floor` set from the old Rank's Master lands exactly on the new
    # Rank's Master and every level up to Master authors a number already in
    # force. Clause 1 ratchets the floor as mastery advances, so a floor at or
    # below the band's Master value while the skill sits BELOW Master means the
    # ratchet has not been applied and those levels are buying nothing.
    foreach ($name in $axis.Keys) {
        $key = ($name.ToLowerInvariant() -replace "[^a-z0-9]+", "_").Trim("_")
        if ($sheet -notmatch ('path:\s*skills\.' + $key + '\.magnitude_floor,[^}]*current_value:\s*(?<f>\d+)')) { continue }
        $floor = [int]$Matches['f']
        if ($floor -le 0) { continue }
        if ($sheet -notmatch ('path:\s*skills\.' + $key + '\.mastery_level,[^}]*current_value:\s*(?<m>\d+)')) { continue }
        $mastery = [int]$Matches['m']
        if ($mastery -ge $MASTERY_LEVELS) { continue }

        # The band's Master value, parsed from Section 7.4 rather than restated.
        $band = $axis[$name].Band
        $values = @([regex]::Matches($band, '[x×](?<v>\d+\.\d+)') | ForEach-Object { [int][math]::Round([double]$_.Groups['v'].Value * 100) })
        if ($values.Count -lt 2) { continue }
        $masterValue = ($values | Measure-Object -Maximum).Maximum

        Assert-True ($floor -gt $masterValue) (
            "$label holds $name below Master at a magnitude_floor of $floor against a band whose Master " +
            "value is $masterValue. The floor is at or above everything mastery can still author, so the " +
            "remaining levels buy nothing -- Profile 1.83 clause 1 requires a binding floor to ratchet " +
            "with each advance. This is the defect 1.83 was written for, and test_rank_dominance_law.ps1 " +
            "cannot see it: it compares Master across Ranks, never mastery within one.")
    }

    $checked++
}

Assert-True ($checked -gt 0) `
    "No campaign pins a Gatefall profile at 1.83 or later, so this gate asserted nothing against live state."

Write-Host "Gatefall mastery dividend tests PASSED ($($ladders.Count) ladders, $checked campaign(s))" -ForegroundColor Green
