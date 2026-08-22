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

Assert-True ($s92 -match '(?m)^\| \*\*I\*\* \|') `
    "Section 9.2 has no tier I row; the distribution is not on a curve."
Assert-True ($s92 -match '(?m)^\| \*\*V\*\* \|') `
    "Section 9.2 has no tier V row; the ramp has no shoulder to reach."

# Tier III must be byte-identical to the pre-1.93 constant, or adopting this
# silently re-rolled the present. These are the exact 1.92 figures.
$tierThree = [regex]::Match($s92, '(?m)^\|\s*\*\*III\*\*\s*\|[^\r\n]*$')
Assert-True $tierThree.Success "Section 9.2 has no tier III row; the present has no home on the ramp."
if ($tierThree.Success) {
    # '93' alone is satisfied by any cell merely containing it, so the anomaly
    # band is matched as a band: 93, any dash byte, 00.
    foreach ($figure in @('1d4\+3', '1d2', '50%', '25%', '15%', '7%', '2\.5%', '0\.5%', '93.{1,3}00')) {
        Assert-True ($tierThree.Value -match $figure) `
            "Section 9.2's tier III row no longer carries $($figure -replace '\\','') -- tier III must reproduce the pre-ramp distribution exactly or adoption changes the present."
    }
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
Assert-True ($s92 -match '2027-02-24') `
    "Section 9.2's schedule has no dated tier IV; a clock floor with no date is not a floor."
Assert-True ($s92 -match '2027-05-24') `
    "Section 9.2's schedule has no dated tier V."
Assert-True ($s92 -match '(?m)^\s*\+8\s') `
    "Section 9.2's credit table does not price a new Scar, which is the largest thing a city can lose."
# In context. A bare \b20\b is satisfied by tier V's 20% C-Rank cell and by the
# cross-reference to Section 20.5, and passed vacuously until it was scoped.
Assert-True ($s92 -match '(?i)at \*\*20 the next tier|credit (?:reaches|reached) 20|threshold of 20') `
    "Section 9.2 states no credit threshold, so accrued pressure never advances anything."
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
Assert-True ($s912 -match '(?i)regardless of confidence') `
    "Section 9.12 does not make the audition anomaly-eligible when confirmed, which is the only red-gate route for a Bearer who avoids unconfirmed postings."
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
