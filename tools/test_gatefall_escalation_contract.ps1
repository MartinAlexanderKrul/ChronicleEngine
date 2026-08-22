# Gatefall escalation contract (Profile 1.93)
#
# 200_WORLD_BIBLE.md Section 9 states the break rate is a countdown on a
# geometric curve. Profile Section 9.2 implemented it as a flat constant, so
# the Bible's own planted clue-line -- a chart showing break frequency doubling
# on a fixed interval -- had no doubling to chart.
#
# 1.93 puts the distribution on the curve and adds the audition. This gate
# asserts the PROPERTIES of both, never the sentences carrying them.
#
# Patterns are ASCII only. These files are BOM-less UTF-8 and Windows
# PowerShell 5.1 decodes them as ANSI, so a literal em-dash, en-dash or minus
# sign silently never matches and the assertion passes vacuously.

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$failures = 0

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) {
        Write-Output "  - $Message"
        $script:failures++
    }
}

function Get-Section {
    param([string]$Body, [string]$Pattern)
    $match = [regex]::Match($Body, $Pattern, 'Multiline, Singleline')
    if ($match.Success) { return $match.Value }
    return ''
}

$profilePath = Join-Path $repoRoot 'worlds/gatefall/206_WORLD_RULE_PROFILE.md'
$profile = Get-Content -Raw $profilePath

# --- the ramp exists and carries five tiers ---------------------------------

$s92 = Get-Section $profile '(?m)^## 9\.2 .*?(?=^## 9\.3)'
Assert-True ($s92 -ne '') "Section 9.2 could not be delimited; Rank frequency is not present."

# The tier table and the schedule table both carry rows labelled **IV**..**VII**,
# so every row-shaped leg is scoped to its own subsection. Counting across the
# whole of 9.2 double-counts and passed vacuously until it was split.
$s921 = Get-Section $profile '(?m)^### 9\.2\.1 .*?(?=^### 9\.2\.2)'
$s922 = Get-Section $profile '(?m)^### 9\.2\.2 .*?(?=^## 9\.3)'
Assert-True ($s921 -ne '') "Section 9.2.1 could not be delimited; the tier table is not present."
Assert-True ($s922 -ne '') "Section 9.2.2 could not be delimited; nothing states what advances the ramp."

Assert-True ($s921 -match '(?m)^\| \*\*I\*\* \|') `
    "Section 9.2.1 has no tier I row; the distribution is not on a curve."
Assert-True ($s921 -match '(?m)^\| \*\*V\*\* \|') `
    "Section 9.2.1 has no tier V row."

# 1.95: three steps to the shoulder was a cliff. The forward half needs enough
# rungs that the world's character changes in stages, not twice per campaign.
$forwardRungs = ([regex]::Matches($s921, '(?m)^\| \*\*(IV|V|VI|VII|VIII)\*\* \|')).Count
Assert-True ($forwardRungs -ge 4) `
    "Section 9.2.1's forward ramp has $forwardRungs rung(s) past tier III. Fewer than four means the world's character changes in large jumps with nothing in between to notice."

# Adoption must not open on the pre-ramp constant: 33 in-fiction days ran under
# a profile that called the rate climbing and implemented it flat.
Assert-True ($s922 -match '(?i)on adoption|opens at \*\*IV\*\*|adoption therefore opens') `
    "Section 9.2.2 does not open the ramp above the pre-ramp constant, so its first act is to certify that nothing has happened yet."

# Tier III must still be byte-identical to the pre-1.93 constant: it is the
# baseline every later rung is measured against and the proof no past roll moved.
$tierThree = [regex]::Match($s921, '(?m)^\|\s*\*\*III\*\*\s*\|[^\r\n]*$')
Assert-True $tierThree.Success "Section 9.2.1 has no tier III row; the pre-ramp constant has no home on the ramp."
if ($tierThree.Success) {
    # '93' alone is satisfied by any cell merely containing it, so the anomaly
    # band is matched as a band: 93, any dash byte, 00.
    foreach ($figure in @('1d4\+3', '1d2', '50%', '25%', '15%', '7%', '2\.5%', '0\.5%', '93.{1,3}00')) {
        Assert-True ($tierThree.Value -match $figure) `
            "Section 9.2.1's tier III row no longer carries $($figure -replace '\\','') -- tier III must reproduce the pre-ramp distribution exactly, or the ramp's own baseline has moved."
    }
}

# Tier IV is the adoption tier from 1.95, so its figures are load-bearing too.
# It must raise the Ranks without raising the count -- that is the rung the
# trade argues about rather than reports.
$tierFour = [regex]::Match($s921, '(?m)^\|\s*\*\*IV\*\*\s*\|[^\r\n]*$')
Assert-True $tierFour.Success "Section 9.2.1 has no tier IV row, which is where adoption opens."
if ($tierFour.Success) {
    Assert-True ($tierFour.Value -match '1d4\+3') `
        "Section 9.2.1's tier IV raises the Gate count. Tier IV is meant to move composition, not volume; raising both makes the first rung a visible surge rather than a change in character."
    Assert-True ($tierFour.Value -match '3\.5%') `
        "Section 9.2.1's tier IV no longer lifts A-Rank frequency, which is the whole of what that rung does."
}

# --- the ramp only rises, and is not keyed to the Bearer --------------------

Assert-True ($s92 -match '(?i)only ever rises|never falls|no downward branch') `
    "Section 9.2 does not forbid the tier falling; a curve with a downward branch is not a countdown."
Assert-True ($s92 -match '(?i)never to the Bearer|not to the Bearer|rather than the candidate|time, not the candidate') `
    "Section 9.2 does not exclude the Bearer's own Rank from driving the ramp. Keying it to his Rank makes levelling worsen the world and makes the optimal play stop levelling."

# --- the clock floor and the pressure pull-forward ---------------------------

Assert-True ($s92 -match 'escalation_tier') `
    "Section 9.2 names no tracked tier, so nothing records which distribution is live."
Assert-True ($s92 -match 'escalation_credit') `
    "Section 9.2 names no credit accumulator, so pressure has no route into the ramp."
# The schedule is asserted as a shape, not as three literal dates, so retuning
# the cadence does not turn this red -- but the shape has to hold.
$scheduleDates = [regex]::Matches($s92, '\b(20\d\d-\d\d-\d\d)\b') |
    ForEach-Object { [datetime]::ParseExact($_.Groups[1].Value, 'yyyy-MM-dd', $null) }
Assert-True ($scheduleDates.Count -ge 3) `
    "Section 9.2's schedule carries fewer than three dated rungs; a clock floor with no dates is not a floor."
if ($scheduleDates.Count -ge 3) {
    $gapOne = ($scheduleDates[1] - $scheduleDates[0]).Days
    $gapTwo = ($scheduleDates[2] - $scheduleDates[1]).Days
    Assert-True ($gapOne -gt 0 -and $gapTwo -gt 0) `
        "Section 9.2's schedule dates are not in ascending order; the ramp must run forward."
    Assert-True ($gapTwo -lt $gapOne) `
        "Section 9.2's schedule intervals do not shorten. The Bible's curve is geometric with an asymptote, so each rung must arrive sooner than the last."
}

# The defect 1.94 fixed: a first rung further out than the campaign will ever
# run is a table, not a clock. gatefall_pendragon_001 covered its whole System
# Rank ladder in 33 in-fiction days.
$firstRung = [regex]::Match($s92, '(?i)(\d+)\s+in-fiction days')
Assert-True $firstRung.Success `
    "Section 9.2's schedule does not state its first rung in in-fiction days, so nothing can check it is reachable."
if ($firstRung.Success) {
    Assert-True ([int]$firstRung.Groups[1].Value -le 60) `
        "Section 9.2's first rung is more than 60 in-fiction days out. A campaign reached carded S-Rank in 33; a ramp slower than the story it runs inside never fires."
}
Assert-True ($s92 -match '(?m)^\s*\+8\s') `
    "Section 9.2's credit table does not price a new Scar, which is the largest thing a city can lose."

# 1.94: the ordinary break is the series the Bible's clue-line charts, and a
# credit table that only prices catastrophes reads everything except it. The
# A-Rank-break line it replaced fired about once per seven thousand days.
Assert-True ($s92 -match '(?mi)^\s*\+1\s+any break') `
    "Section 9.2's credit table does not credit an ordinary break. The Bible's planted clue-line is a chart of break FREQUENCY; a table pricing only losses cannot produce that curve, and the pressure route goes dead."
# In context, and as a bound rather than a literal. A bare \b20\b was satisfied
# by a 20% C-Rank cell and by the cross-reference to Section 20.5; a literal
# threshold goes red the moment the bar is retuned, which it has been twice.
$creditBar = [regex]::Match($s92, '(?i)at \*\*(\d+) the next tier|credit (?:reaches|reached) (\d+)|threshold of (\d+)')
Assert-True $creditBar.Success `
    "Section 9.2 states no credit threshold, so accrued pressure never advances anything."
if ($creditBar.Success) {
    $bar = ($creditBar.Groups[1], $creditBar.Groups[2], $creditBar.Groups[3] |
        Where-Object { $_.Success } | Select-Object -First 1).Value
    Assert-True ([int]$bar -le 12) `
        "Section 9.2's credit threshold is $bar. At the section's own ~1.2 credit a day that is more than ten days of accrual, which is slower than its own schedule rungs -- the pressure route is decorative again."
}
Assert-True ($s92 -match '(?i)whichever comes first|still applies independently') `
    "Section 9.2 does not state that clock and pressure run independently; one silently replacing the other is a different rule."

# The ramp must be unreachable-proof: something has to advance it on the tick,
# or it is F-002's defect again -- a mechanism nothing dispatches to.
$s91 = Get-Section $profile '(?m)^## 9\.1 .*?(?=^## 9\.2)'
Assert-True ($s91 -match '9\.2\.1|9\.2\.2') `
    "Section 9.1's tick never reads or settles the escalation tier; a ramp nothing advances is absent, not slow."
Assert-True ($s91 -match '(?i)escalation ramp settles|ramp settles') `
    "Section 9.1's tick has no ramp settlement step, so credit accrues nowhere."
Assert-True ($s91 -match '(?i)tier III figures|tier III and not constants') `
    "Section 9.1's header rates are not marked as tier-relative, so they read as constants the ramp cannot move."

$s913 = Get-Section $profile '(?m)^### 9\.1\.3 .*?(?=^### 9\.1\.4)'
Assert-True ($s913 -match '9\.2\.2') `
    "Section 9.1.3 does not point at the ramp; district pressure and the ramp must be the same story at two scales."
# A bare cross-reference is not a feed. Require the section to state what its
# own thresholds are actually worth, or the link is decorative.
Assert-True ($s913 -match '(?i)feeds the escalation ramp|toward the next tier') `
    "Section 9.1.3 references the ramp without stating that its thresholds credit it; a pointer that carries no value is decoration."

# --- the anomaly band moves with the tier -----------------------------------

$s95 = Get-Section $profile '(?m)^## 9\.5 .*?(?=^## 9\.6)'
Assert-True ($s95 -ne '') "Section 9.5 could not be delimited."
Assert-True ($s95 -match '(?i)anomaly band of the world|current escalation tier') `
    "Section 9.5's anomaly threshold is not read from the tier, so the tail never thickens."
Assert-True ($s95 -match '(?i)tier III it is \*\*93\*\*|it is \*\*93\*\*') `
    "Section 9.5 does not pin the present tier's threshold at 93; without it, adoption changes today's odds."

# --- 1.95: the Bearer's own anomaly band ------------------------------------

Assert-True ($profile -match '(?m)^### 9\.5\.1 ') `
    "Section 9.5.1 is absent; the Bearer's own standing does not affect how often what he walks into is strange."
$s951 = Get-Section $profile '(?m)^### 9\.5\.1 .*?(?=^\*\*Why the tail|^## 9\.6)'
Assert-True ($s951 -ne '') "Section 9.5.1 could not be delimited for scoped checks."

Assert-True ($s951 -match '(?i)System Rank') `
    "Section 9.5.1 does not key the Bearer's band to System Rank."
# The keying is only real if the bands themselves are stated. A section header
# naming System Rank with no values behind it is a label.
Assert-True ($s951 -match '80.{1,3}00') `
    "Section 9.5.1 states no band for System Rank A, which is where the live Bearer stands and the rung the owner asked for."
Assert-True ($s951 -match '70.{1,3}00') `
    "Section 9.5.1 states no band for System Rank S, so the uplift stops before the ladder does."
Assert-True ($s951 -match '(?i)personally enters|Gate he enters') `
    "Section 9.5.1 does not restrict the uplift to Gates the Bearer himself enters, which is what keeps it invisible to the world."
Assert-True ($s951 -match '(?i)wider of') `
    "Section 9.5.1 does not take the wider of the two bands, so a low tier could narrow his odds below the world's."
Assert-True ($s951 -match '(?i)audition mill') `
    "Section 9.5.1 does not cite the authored cause; without it the uplift reads as difficulty tuning rather than the process paying attention."
# The ramp must stay fenced off from the Bearer even though this clause is not.
Assert-True ($s951 -match '(?i)does not touch Section 9\.2|still never reads him|never reads the Bearer') `
    "Section 9.5.1 does not fence itself off from Section 9.2's ramp. Keying what the WORLD PRODUCES to the Bearer makes levelling worsen the world; keying what he WALKS INTO does not, and the two must not be confused by a later editor."

# --- 1.95: the crucible floor -----------------------------------------------

Assert-True ($profile -match '(?m)^### 8\.4\.7 ') `
    "Section 8.4.7 is absent; nothing obliges the world to put anything in front of the quest criteria on a quiet stretch."
$s847 = Get-Section $profile '(?m)^### 8\.4\.7 .*?(?=^---|^# 9\.)'
Assert-True ($s847 -ne '') "Section 8.4.7 could not be delimited for scoped checks."

Assert-True ($s847 -match 'quiet_days') `
    "Section 8.4.7 names no tracked counter, so nothing measures a slow week."
Assert-True ($s847 -match '(?i)guaranteed') `
    "Section 8.4.7 guarantees nothing, which makes it a suggestion."
Assert-True ($s847 -match '(?i)creates conditions, never a quest|never a quest') `
    "Section 8.4.7 does not forbid itself creating a quest. It may only put a real thing in real reach; Sections 8.4.2 criteria 2 and 4 still have to hold on their own terms."
Assert-True ($s847 -match '(?i)not farmable|what it pays out is danger') `
    "Section 8.4.7 does not address farming. A floor that rewards staying quiet is an exploit."
Assert-True ($s847 -match '(?i)beneath his tier is a \*\*quiet day\*\*|is a \*\*quiet day\*\*') `
    "Section 8.4.7 does not count a below-tier instant dungeon as quiet, so the exact coasting F-046 was raised on would reset the counter."

$s91Floor = Get-Section $profile '(?m)^## 9\.1 .*?(?=^## 9\.2)'
Assert-True ($s91Floor -match '8\.4\.7') `
    "Section 9.1's tick never applies the crucible floor; a floor nothing dispatches to is absent, not patient."

$s96 = Get-Section $profile '(?m)^## 9\.6 .*?(?=^## 9\.7)'
Assert-True ($s96 -match '(?i)tier V') `
    "Section 9.6 gains nothing at the ramp's shoulder; the anomaly table is the same at every tier."
Assert-True ($s96 -match '(?i)confluence') `
    "Section 9.6 authors no merged-puncture result, which is what the Bible says the end of the ramp does."
Assert-True ($s96 -match '(?i)does not close on the first boss') `
    "Section 9.6's tier V entry does not change what closes the mouth, which is the only thing making it new."

# --- the audition ------------------------------------------------------------

Assert-True ($profile -match '(?m)^## 9\.12 ') `
    "Section 9.12 is absent; nothing sizes a public Gate to the Bearer."
$s912 = Get-Section $profile '(?m)^## 9\.12 .*?(?=^# \d|^---\s*$\r?\n# )'
Assert-True ($s912 -ne '') "Section 9.12 could not be delimited for scoped checks."

Assert-True ($s912 -match '(?i)Combat Tier') `
    "Section 9.12 does not key the audition to the Combat Tier."
Assert-True ($s912 -match '(?i)not System Rank|Not System Rank') `
    "Section 9.12 does not exclude System Rank, which is a content bracket read from level rather than a statement of what he can be tested at."
Assert-True ($s912 -match '(?i)on-route|ON HIS ROUTE|on his route') `
    "Section 9.12 does not restrict auditions to the on-route siting band."
Assert-True ($s912 -match '(?i)ordinary distribution') `
    "Section 9.12 does not assess the audition normally, so nothing mislabels and the board carries a true number."
Assert-True ($s912 -match '(?i)regardless of confidence|confidence is no protection') `
    "Section 9.12 does not make the audition anomaly-eligible when confirmed, which is the only red-gate route for a Bearer who avoids unconfirmed postings."

# 1.94: eligibility is not enough. Rolling the tier's ordinary band put a red
# gate ~150 days out in a campaign that had run 33. The Bible names red-gate
# anomalies as what an audition IS, so it always rolls.
Assert-True ($s912 -match '(?i)always rolls Section 9\.6|\*\*every\*\* audition rolls') `
    "Section 9.12 does not make the anomaly roll unconditional. An audition that is merely anomaly-ELIGIBLE is a Gate that might be strange; the Bible defines the category as red-gate anomalies and crucibles built to look survivable and not be."
Assert-True ($s912 -match '(?i)doubled population') `
    "Section 9.12 does not resolve a Section 9.6 Rank bump that has no rung left. An audition already at S has nowhere to climb and the anomaly table would stall."
Assert-True ($s912 -match '(?i)legal minimum') `
    "Section 9.12 has no switch-off, so a Bearer can never bring anyone anywhere safely."
Assert-True ($s912 -match '(?i)does not fire|switches it off') `
    "Section 9.12 does not state that a full party suppresses the audition."
Assert-True ($s912 -match '(?i)creates no Gate|reclassifies one') `
    "Section 9.12 does not state that it adds no supply; a reclassifier that may also spawn is a supply change wearing a routing rule."
Assert-True ($s912 -match '(?i)never reaches an instant dungeon|no business there') `
    "Section 9.12 does not exclude Section 17 instances, whose whole guarantee is that a key's Rank is what the key says."
Assert-True ($s912 -match '(?i)Rank the content \*\*actually ran at\*\*|actually ran at') `
    "Section 9.12 does not tie rewards to the resolved Rank, so an audition would pay what its wrong card said."

# The cause must stay owner-facing.
Assert-True ($s912 -match '200_WORLD_BIBLE\.md') `
    "Section 9.12 does not point at the owner-facing cause, leaving the mechanic unmotivated."
Assert-True ($s912 -match '(?i)never explains an audition|never names an audition|never names one') `
    "Section 9.12 does not forbid the Runtime naming the category in play; the Bible's Section 9 may not be revealed."

# --- the version statements agree -------------------------------------------
# Derived, never pinned: a test that must be hand-edited on every adoption is
# the F-013 defect. Take the number from the profile header and check the rest.

$headerMatch = [regex]::Match($profile, '(?m)^# Gatefall .+Profile (?<v>\d+\.\d+)\r?$')
Assert-True $headerMatch.Success "Gatefall profile header declares no active version."
if ($headerMatch.Success) {
    $v = [regex]::Escape($headerMatch.Groups['v'].Value)
    Assert-True ($profile -match "(?m)^\*\*Profile Version:\*\* $v\s*$") `
        "Profile Version field disagrees with the profile header."
    $index = Get-Content -Raw (Join-Path $repoRoot 'worlds/gatefall/migrations/INDEX.md')
    Assert-True ($index -match "\*\*Active Profile:\*\* $v") `
        "Migration index does not declare the profile header's version active."
}

if ($failures -gt 0) {
    Write-Output "Gatefall escalation contract FAILED ($failures finding(s))"
    exit 1
}
Write-Output "Gatefall escalation contract tests PASSED"
