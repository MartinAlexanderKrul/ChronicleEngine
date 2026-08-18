[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$campaignRoot = Join-Path $repo "campaigns"

# Why this gate exists
#
# Ability points were the last growth axis in the Gatefall profile with no
# arithmetic gate behind them. XP came under Decision 079 at Profile 1.19 and
# every skill counter at 1.26; allocations, base Stats and the unspent pool
# stayed prose until 1.82 -- and prose has nothing to disagree with.
#
# What that cost was measured, not supposed. A live campaign allocated
# TWENTY-FIVE ability points across three level crossings and recorded FIFTEEN.
# The ten that reached Intelligence were present in base Intelligence, in
# effective Intelligence, in maximum Mana and in every damage figure derived
# that span, and named in no Event. The pool balanced exactly, so nothing was
# created or lost; what failed was the account, and it was found by hand three
# days later. Recorded at that campaign's EVT-000594.
#
# THE CHECK IS ONE LINE, AND IT WORKS BECAUSE SECTION 3.2 IS UNIFORM. Every
# level crossing raises ALL FIVE base Stats by the same rung gain, so
#
#     base_stat - creation_array[stat] - allocated[stat]
#
# must be the SAME INTEGER for all five Stats, and must equal the summed rung
# ladder for the level held. A point that reaches a Stat without an Event
# declaring it makes that Stat's residual disagree with the other four. Against
# the live campaign as it stood at EVT-000594, Intelligence would have read 368
# where the other four read 378.
#
# THIS GATE ASSERTS THE PROPERTY, NOT THE SENTENCE. The rung ladder, the level
# thresholds, the System Rank ladder and the creation array are all PARSED from
# the profile and the sheet. Nothing here carries a second copy of a number the
# profile owns -- that is F-013's defect class, and a duplicate of the value
# under test is exactly the thing that goes stale while both copies agree with
# each other and neither agrees with the world.
#
# It runs against EVERY campaign whose startup pins a Gatefall profile at 1.82
# or later, and skips earlier ones by construction rather than by a name list:
# a campaign that has not adopted the counters has nothing to check, and saying
# so is different from having no opinion.

function Fail { param([string]$Message) throw $Message }
function Assert-True { param([bool]$Condition, [string]$Message) if (-not $Condition) { Fail $Message } }

$profileText = [System.IO.File]::ReadAllText($profilePath)

# --- Section 3.2's rung ladder, parsed ------------------------------------
Assert-True ($profileText -match '(?m)^\s*\|\s*\*\*Rung gain, every Stat\*\*\s*\|(?<row>.+)\|\s*$') `
    "Section 3.2's rung-gain table is unreadable; the ladder cannot be recomputed."
$rungCells = $Matches['row'].Split('|') | ForEach-Object { $_ -replace '[^\d]', '' } | Where-Object { $_ }
Assert-True ($rungCells.Count -eq 6) "Section 3.2's rung-gain row does not carry six Ranks (found $($rungCells.Count))."
$rankOrder = @("E", "D", "C", "B", "A", "S")
$rung = @{}
for ($i = 0; $i -lt 6; $i++) { $rung[$rankOrder[$i]] = [int]$rungCells[$i] }

# --- Section 6.6's System Rank ladder, parsed -----------------------------
# "| 10 | D-Rank |" etc. Creation (level 1) is E-Rank and carries no row of that
# shape, so it is seeded and the table supplies the rest.
$rankAtLevel = @{ 1 = "E" }
foreach ($m in [regex]::Matches($profileText, '(?m)^\s*\|\s*(?<level>\d+)\s*\|\s*(?<rank>[EDCBAS])-Rank\s*\|\s*$')) {
    $rankAtLevel[[int]$m.Groups['level'].Value] = $m.Groups['rank'].Value
}
Assert-True ($rankAtLevel.Count -ge 6) `
    "Section 6.6's System Rank ladder is unreadable; only $($rankAtLevel.Count) rungs parsed."

# The Rank held ENTERING a crossing governs its gain -- the crossing that
# REACHES a threshold still pays the rung below it. That is not a reading
# choice: Profile 1.80's own worked figure of 148 automatic Stat points at
# level 30 is only reproducible this way, and the level-40 span records the
# crossing to 40 paying the B rung of +23 while +63 applies from 41 onward.
function Get-AutomaticGrowth {
    param([int]$Level, [hashtable]$Rung, [hashtable]$RankAtLevel)
    $total = 0
    for ($target = 2; $target -le $Level; $target++) {
        $prior = $target - 1
        $held = "E"
        foreach ($threshold in ($RankAtLevel.Keys | Sort-Object)) {
            if ($prior -ge $threshold) { $held = $RankAtLevel[$threshold] }
        }
        $total += $Rung[$held]
    }
    return $total
}

# Anchor the derivation against the profile's OWN worked figures before trusting
# it on live state. Section 3.2 states, from the weakest legal creation array,
# what the ladder yields at each decade level -- five checkpoints, and the whole
# reason those numbers are in the profile is that they are the claim the ladder
# was sized to make. If this function cannot reproduce them it is measuring
# something else, and every assertion below it is worthless.
#
# It also pins the crossing convention, which is the one genuinely arguable part
# of the derivation: the Rank held ENTERING a crossing governs its gain. Read the
# other way, level 30 yields 169 rather than 156 and every anchor below fails.
Assert-True ($profileText -match 'weakest legal creation array \(a Stat of (?<floor>\d+)') `
    "Section 3.2's worked example does not name the creation-array floor; the derivation cannot be anchored."
$floorStat = [int]$Matches['floor']

$anchors = [regex]::Matches($profileText, '(?<value>\d[\d,]*) at level (?<level>\d+)')
Assert-True ($anchors.Count -ge 3) `
    "Section 3.2's worked example yields only $($anchors.Count) anchor points; the derivation cannot be trusted."
foreach ($a in $anchors) {
    $anchorLevel = [int]$a.Groups['level'].Value
    $anchorValue = [int]($a.Groups['value'].Value -replace ',', '')
    $derived = $floorStat + (Get-AutomaticGrowth -Level $anchorLevel -Rung $rung -RankAtLevel $rankAtLevel)
    Assert-True ($derived -eq $anchorValue) (
        "Automatic growth disagrees with Section 3.2's own worked example: from a Stat of " +
        "$floorStat the ladder recomputes to $derived at level $anchorLevel, and the profile " +
        "states $anchorValue. The rung ladder, the System Rank ladder, or the crossing " +
        "convention has moved.")
}

$checked = 0
foreach ($startup in Get-ChildItem -Path $campaignRoot -Filter "090_CAMPAIGN_STARTUP.md" -Recurse -File) {
    $startupText = [System.IO.File]::ReadAllText($startup.FullName)
    if ($startupText -notmatch 'world_rule_profile:\s*"Gatefall World Rule Profile (?<v>\d+\.\d+)"') { continue }
    if ([version]$Matches['v'] -lt [version]"1.82") { continue }

    $sheetPath = Join-Path $startup.DirectoryName "100_CHARACTER_SHEET.md"
    Assert-True (Test-Path -LiteralPath $sheetPath) "$($startup.DirectoryName) pins Profile 1.82 but carries no character sheet."
    $sheet = [System.IO.File]::ReadAllText($sheetPath)
    $label = Split-Path $startup.DirectoryName -Leaf

    Assert-True ($sheet -match '(?m)^\s*level:\s*(?<level>\d+)\s*$') "$label renders no level; automatic growth cannot be derived."
    $level = [int]$Matches['level']

    # Creation array, read from the sheet's own provenance block rather than
    # written down here -- it is per-campaign and immutable.
    Assert-True ($sheet -match '(?ms)^\s*latent_stat_array:.*?^(?<body>(?:\s+\w+:\s*(?:\d+|".*?")\s*$\r?\n?)+)') `
        "$label carries no latent_stat_array; the creation array cannot be read."
    $creationBody = $Matches['body']
    $creation = @{}
    foreach ($m in [regex]::Matches($creationBody, '(?m)^\s*(?<stat>strength|agility|vitality|perception|intelligence):\s*(?<v>\d+)\s*$')) {
        $creation[$m.Groups['stat'].Value] = [int]$m.Groups['v'].Value
    }
    Assert-True ($creation.Count -eq 5) "$label's creation array carries $($creation.Count) Stats, not five."

    Assert-True ($sheet -match '(?ms)^\s{4}stats:\s*$\r?\n(?<body>(?:\s+\w+:\s*\d+\s*$\r?\n?){5})') `
        "$label renders no base Stat block."
    $statBody = $Matches['body']
    $base = @{}
    foreach ($m in [regex]::Matches($statBody, '(?m)^\s*(?<stat>\w+):\s*(?<v>\d+)\s*$')) {
        $base[$m.Groups['stat'].Value] = [int]$m.Groups['v'].Value
    }
    Assert-True ($base.Count -eq 5) "$label's base Stat block carries $($base.Count) entries, not five."

    $allocated = @{}
    foreach ($stat in $creation.Keys) {
        $pattern = 'path:\s*stats\.' + $stat + '_allocated,\s*baseline_value:\s*-?\d+,\s*baseline_as_of:\s*EVT-\d{6},\s*current_value:\s*(?<v>-?\d+)'
        Assert-True ($sheet -match $pattern) "$label pins Profile 1.82 but carries no stats.${stat}_allocated counter."
        $allocated[$stat] = [int]$Matches['v']
    }

    Assert-True ($sheet -match 'path:\s*progression\.ability_points_earned,\s*baseline_value:\s*-?\d+,\s*baseline_as_of:\s*EVT-\d{6},\s*current_value:\s*(?<v>-?\d+)') `
        "$label pins Profile 1.82 but carries no progression.ability_points_earned counter."
    $earned = [int]$Matches['v']

    Assert-True ($sheet -match '(?m)^\s*unspent_points:\s*(?<v>-?\d+)') "$label renders no unspent_points."
    $unspent = [int]$Matches['v']

    $automatic = Get-AutomaticGrowth -Level $level -Rung $rung -RankAtLevel $rankAtLevel

    # THE ASSERTION. Automatic growth is uniform across all five Stats, so every
    # residual must equal it. A Stat that moved without a declared allocation
    # shows up here as the one number out of step with the other four.
    foreach ($stat in $creation.Keys) {
        $residual = $base[$stat] - $creation[$stat] - $allocated[$stat]
        Assert-True ($residual -eq $automatic) (
            "$label's $stat does not derive: base $($base[$stat]) - creation $($creation[$stat]) - " +
            "allocated $($allocated[$stat]) = $residual, against automatic growth of $automatic at level $level. " +
            "Either a point reached this Stat without an Event declaring it, or an allocation was " +
            "declared that never reached the Stat.")
    }

    # The pool identity. Allocated and unspent are the two halves of what was
    # earned, and a third number kept beside them is a third thing to drift.
    $spent = ($allocated.Values | Measure-Object -Sum).Sum
    Assert-True ($earned -eq ($spent + $unspent)) (
        "$label's ability-point pool does not close: earned $earned against allocated $spent " +
        "plus unspent $unspent = $($spent + $unspent).")
    Assert-True ($unspent -ge 0) "$label renders a negative unspent pool ($unspent)."

    # --- The title ledger, which is an ability-point SOURCE ------------------
    #
    # Section 16.1 pays a title's grade into the unspent pool the moment the
    # Assessment grants it. `titles.points_granted` is the running total of
    # those payments and it is maintained by hand beside a list that already
    # names every grade, which is two statements of one fact -- F-013's shape.
    #
    # It drifted exactly as that shape predicts. Vanguard was granted at
    # EVT-000591, paid +5 into the pool, and appeared in NEITHER
    # `points_granted` NOR `earned_names`, while `earned_summary` and
    # `slots_note` on the same block both said thirteen titles earned. The
    # figure read 35 -- which verifies perfectly against the twelve titles that
    # WERE listed, and is why nothing looked wrong. Corrected at EVT-000594.
    #
    # The grade ladder is parsed from the profile. It is the third copy of
    # +2/+5/+10 in this repository if written down here, and the first two
    # already disagreed with a live campaign once.
    Assert-True ($profileText -match '\+(?<common>\d+) Common, \+(?<rare>\d+) Rare, \+(?<singular>\d+) Singular') `
        "Section 16.1's title grade payments are unreadable; the title ledger cannot be checked."
    $gradePayment = @{
        "common"    = [int]$Matches['common']
        "rare"      = [int]$Matches['rare']
        "singular"  = [int]$Matches['singular']
    }

    if ($sheet -match '(?ms)^\s*earned_names:\s*$\r?\n(?<body>(?:\s*- ".*?"\s*$\r?\n?)+)') {
        $earnedBody = $Matches['body']
        $titleGrades = [regex]::Matches($earnedBody, '(?m)^\s*- "[^"\[]+\[(?<grade>[A-Za-z]+)[,\]]')
        Assert-True ($titleGrades.Count -gt 0) "$label renders an earned_names list with no readable grades."

        $gradeSum = 0
        foreach ($g in $titleGrades) {
            $grade = $g.Groups['grade'].Value.ToLowerInvariant()
            Assert-True ($gradePayment.ContainsKey($grade)) (
                "$label lists a title of grade '$grade', which Section 16.1 does not price. " +
                "Either the grade is misspelled or the profile has gained a grade this gate cannot pay.")
            $gradeSum += $gradePayment[$grade]
        }

        Assert-True ($sheet -match '(?m)^\s*points_granted:\s*(?<v>-?\d+)\s*$') `
            "$label renders an earned_names list but no points_granted total."
        $pointsGranted = [int]$Matches['v']
        Assert-True ($pointsGranted -eq $gradeSum) (
            "$label's title ledger does not close: points_granted $pointsGranted against " +
            "$($titleGrades.Count) titles paying $gradeSum under Section 16.1's " +
            "+$($gradePayment['common']) / +$($gradePayment['rare']) / +$($gradePayment['singular']) ladder. " +
            "A title was granted and paid without being counted, or counted without being listed.")

        # The count claimed in prose beside the list must match the list. This is
        # the half that stayed correct while `points_granted` drifted, and it is
        # what made the drift survivable rather than invisible.
        if ($sheet -match '(?<claimed>\d+) titles earned') {
            Assert-True ([int]$Matches['claimed'] -eq $titleGrades.Count) (
                "$label claims $($Matches['claimed']) titles earned against an earned_names list of " +
                "$($titleGrades.Count).")
        }
    }

    $checked++
}

Assert-True ($checked -gt 0) `
    "No campaign pins a Gatefall profile at 1.82 or later, so this gate asserted nothing. A check that cannot fail is indistinguishable from one that works."

Write-Host "Gatefall ability-point ledger tests PASSED ($checked campaign(s))" -ForegroundColor Green
