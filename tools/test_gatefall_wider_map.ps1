# Gatefall wider-map contract (Profile 1.106)
#
# Section 9.1's world clock is authored against Chicago, with Prague running a
# parallel instance. Everywhere else on Earth had no tick: no Gate flow, no
# break clock, no board, no response chain, nothing a Runtime could read when
# play reached there. F-056 was raised when a carded S-Rank signed a national
# incident-response agreement and started buying personal-teleport reach into
# cities the world has never simulated.
#
# 1.106 authors Section 9.1.6: a LIGHT tick that rolls three event kinds and
# nothing else. This gate asserts the PROPERTIES that make it light and make it
# reachable -- never the sentences carrying them. The two failures it exists to
# catch are opposite: a later editor growing this into a second Section 9.1
# (which is the load nobody will run), and a later editor pruning the channel
# that makes it reach the Bearer (which makes it decoration).
#
# Patterns are ASCII only. These files are BOM-less UTF-8 and Windows
# PowerShell 5.1 decodes them as ANSI, so a literal em-dash, en-dash, minus or
# multiplication sign silently never matches and the assertion passes
# vacuously. Split the pattern at the dash rather than escaping it.

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

# --- the section exists and is dispatched from the tick ---------------------

Assert-True ($profile -match '(?m)^### 9\.1\.6 ') `
    "Section 9.1.6 is absent; everywhere that is not Chicago or Prague has no clock at all, which is the F-056 gap."
$s916 = Get-Section $profile '(?m)^### 9\.1\.6 .*?(?=^## 9\.2)'
Assert-True ($s916 -ne '') "Section 9.1.6 could not be delimited for scoped checks."

# A section nothing dispatches to is absent, not patient -- the F-002 defect
# this profile has already met three times. The tick's numbered list must carry
# the step, so the check is scoped to Section 9.1 and not to the whole file.
$s91 = Get-Section $profile '(?m)^## 9\.1 .*?(?=^### 9\.1\.1)'
Assert-True ($s91 -ne '') "Section 9.1's tick list could not be delimited."
Assert-True ($s91 -match '9\.1\.6') `
    "Section 9.1's tick never dispatches to Section 9.1.6, so the wider map is authored and never rolled."
Assert-True ($s91 -match '(?m)^11\. ') `
    "Section 9.1's tick has no eleventh step; the wider-map roll has no place in the day's order."

# --- what makes it LIGHT ----------------------------------------------------
# The whole design rests on the wider map NOT being simulated. If a later
# editor deletes these fences the section becomes a second Section 9.1 running
# across thirty metros a day, which is the load the design exists to refuse.

Assert-True ($s916 -match '(?i)rolls no Gates|No Gate is rolled') `
    "Section 9.1.6 does not state that it rolls no Gates. Without that fence the light tick is a second Section 9.1 across the whole country."
foreach ($suppressed in @('tracked posting', 'break timer', 'contest roll', 'agenda')) {
    Assert-True ($s916 -match [regex]::Escape($suppressed)) `
        "Section 9.1.6 does not exclude '$suppressed' from the wider map, so a Runtime may reasonably start keeping one per metro."
}
# pressure is the one that matters most: Section 9.2.2's ramp must not become a
# function of how many cities happen to be listed on the roster.
Assert-True ($s916 -match '9\.2\.2') `
    "Section 9.1.6 does not fence itself off from the escalation ramp. A break in a metro nobody simulates advancing the world's tier makes the ramp a function of roster length."
Assert-True ($s916 -match '(?i)feeds the escalation ramp nothing|may not advance the world') `
    "Section 9.1.6 references the ramp without stating that it credits nothing; a pointer that carries no value is decoration."

# --- exactly three event kinds, and they are the authored three --------------

Assert-True ($s916 -match '(?i)S-Rank Gate') `
    "Section 9.1.6 does not roll an S-Rank Gate, which is the first of the three kinds a national asset is called for."
Assert-True ($s916 -match '(?i)red gate') `
    "Section 9.1.6 does not roll a red gate."
Assert-True ($s916 -match '(?i)break already loose|break in progress|already loose') `
    "Section 9.1.6 does not roll a break already loose, so Section 9.8's disaster can never happen off the two simulated cities."
# The refusal is as load-bearing as the inclusion: two of Section 9.6's four
# results are a strike team's ordinary work and must stay off this table, or
# the light tick's stream is several times its authored size.
Assert-True ($s916 -match '(?i)never appear here at all|never reach this table') `
    "Section 9.1.6 does not exclude the anomaly results that do not escalate. Rolling all four of Section 9.6's outcomes multiplies the national stream and turns a strike team's ordinary job into a federal incident."

# --- the flow model is derived, not authored --------------------------------
# The band table's whole claim is that it is the ratio the profile already
# demonstrates twice. A table with no derivation behind it is a preference.

Assert-True ($s916 -match '(?i)licensed[- ]hunter population|per licensed hunter') `
    "Section 9.1.6 does not tie metro flow to licensed-hunter population, so the band counts rest on nothing."
Assert-True ($s916 -match '(?m)^\| \*\*I .{0,3} Primary\*\* \|') `
    "Section 9.1.6 has no Band I row; there is no scale for a metro's Gate flow."
Assert-True ($s916 -match '(?m)^\| \*\*IV .{0,3} Minor\*\* \|') `
    "Section 9.1.6 has no Band IV row, so the smallest metros fall off the scale entirely."
# The two authored cities must remain the worked examples. If either stops
# appearing in the band table the derivation has been cut loose from the rows
# it was derived from, and the numbers become free-floating.
Assert-True ($s916 -match '(?i)\| \*\*Chicago\*\* \|') `
    "Section 9.1.6's band table no longer carries Chicago as Band I's worked example; the derivation has lost the row it came from."
Assert-True ($s916 -match '(?i)\| \*\*Prague\*\* \|') `
    "Section 9.1.6's band table no longer carries Prague as Band III's worked example, which is the check proving the bands reproduce authored law rather than replacing it."
Assert-True ($s916 -match '1d4\+3') `
    "Section 9.1.6's Band I count is not Chicago's own 1d4+3, so the light tick contradicts Section 9.1's authored row."

# The bands must ramp with the tier rather than pinning tier III forever --
# the same defect Section 9.1's header rates carried before 1.93.
Assert-True ($s916 -match '9\.2\.1') `
    "Section 9.1.6 never reads the escalation tier, so the wider map is frozen at tier III while Chicago's ramps."

# --- the roster is populated ------------------------------------------------
# A band table with no members is a mechanism with nothing to site an event in,
# and the first Runtime to roll one invents a city unguided -- which is the
# authoring-on-contact half of F-056, not a fix for it.

$rosterRows = [regex]::Matches($s916, '(?m)^\| \*\*(I|II|III|IV)\*\* \| ')
Assert-True ($rosterRows.Count -ge 4) `
    "Section 9.1.6's roster has $($rosterRows.Count) band row(s). A band table with no named metros leaves a Runtime inventing a city the first time an event sites."
# Band I is bounded by an authored fact, not by taste: 210_PLACES.md calls
# Chicago a top-five US Gate city, so Band I holds five names and no more.
$bandOne = [regex]::Match($s916, '(?m)^\| \*\*I\*\* \|(?<members>[^\r\n]*)$')
Assert-True $bandOne.Success "Section 9.1.6's roster has no Band I row."
if ($bandOne.Success) {
    $names = ($bandOne.Groups['members'].Value -split '\|')[0]
    $count = ([regex]::Matches($names, '\S+')).Count
    Assert-True ($names -match 'Chicago') `
        "Section 9.1.6's Band I does not contain Chicago, which is the city the whole band was measured from."
    $separators = ([regex]::Matches($names, [regex]::Escape(' · '))).Count
    Assert-True ($separators -eq 4) `
        "Section 9.1.6's Band I lists $($separators + 1) metros. 210_PLACES.md calls Chicago a top-five US Gate city, so Band I holds exactly five."
}
# Enough named metros overall that siting resolves without invention.
$bulletNames = ([regex]::Matches($s916, [regex]::Escape(' · '))).Count
Assert-True ($bulletNames -ge 20) `
    "Section 9.1.6's roster names too few metros ($bulletNames separators). Siting a national escalation must land on a name the world already carries."
Assert-True ($s916 -match '(?i)ten numbered regions|ten regions') `
    "Section 9.1.6 authors no federal region structure, so nothing states who answers an incident before BGM National does."
Assert-True ($s916 -match '(?i)Region V') `
    "Section 9.1.6 does not preserve Region V as Chicago's, contradicting both base texts."

# No Place entity may be minted by a rate table -- 210_PLACES.md's own Global
# section is the precedent, and a roster that mints entities is canon written
# by an engine change.
Assert-True ($s916 -match '(?i)No Place or Settlement') `
    "Section 9.1.6's roster does not disclaim entity allocation. A band table that mints Places writes campaign canon from a world rule."

# --- the escalation rates read the profile's own distribution ---------------

Assert-True ($s916 -match '(?i)escalat') `
    "Section 9.1.6 has no escalation filter, so every major event anywhere in the country reaches the Bearer."
Assert-True ($s916 -match '9\.3') `
    "Section 9.1.6 does not read Section 9.3's timer, which is the only thing that makes 'nobody could reach it' a fact rather than a mood."
# The stream must be a composed figure, not a chosen one. A section stating a
# rate with no arithmetic behind it is the F-054 residue on a new axis.
Assert-True ($s916 -match '0\.30|0\.3 a day') `
    "Section 9.1.6 states no composed daily stream, so the 30-in-100 roll rests on nothing and cannot be rechecked when the tier moves."
Assert-True ($s916 -match '(?m)^\s*01-70\s') `
    "Section 9.1.6's roll table does not open on the holding band. Without it the wider map produces an incident most days."

# --- siting, and the band that is authored rather than left over -------------

Assert-True ($s916 -match '(?i)against cover rather than with flow|weighted against cover') `
    "Section 9.1.6 sites escalations with Gate flow rather than against cover, which puts every national incident in the cities that can already answer them."
Assert-True ($s916 -match '(?m)^\s*89-00\s') `
    "Section 9.1.6 has no off-roster siting band, so every national incident lands in a metro and the thin-coverage case the Bible names cannot occur."
Assert-True ($s916 -match '200_WORLD_BIBLE\.md') `
    "Section 9.1.6's off-roster band cites no authored cause, leaving it as a catch-all rather than the domestic form of a stated world fact."

# --- reach: the channel that makes any of this land --------------------------

Assert-True ($s916 -match '9\.11') `
    "Section 9.1.6 never routes through Section 9.11, so a written escalation has no way of reaching the Bearer and the section is a news feed."
Assert-True ($s916 -match '18\.8') `
    "Section 9.1.6 does not read the Bearer's standing anchors. Without it, a campaign buying personal reach across the country buys nothing mechanical -- which is half of what F-056 was raised about."
Assert-True ($s916 -match '(?i)sizes nothing') `
    "Section 9.1.6 does not restate the no-sizing fence. Section 6.6 must hold here or a national call becomes difficulty tuning."

# --- what is written, including nothing --------------------------------------

Assert-True ($s916 -match 'wider_map') `
    "Section 9.1.6 names no ledger field, so a rolled escalation has nowhere to be recorded."
Assert-True ($s916 -match '(?i)`none` is written as a result|and `none` is a result') `
    "Section 9.1.6 does not require a null result to be written. A tick that records nothing when it rolled nothing is byte-identical to a tick that never ran -- Section 9.1.1's whole subject."
$s911 = Get-Section $profile '(?m)^### 9\.1\.1 .*?(?=^### 9\.1\.2)'
Assert-True ($s911 -match 'wider_map') `
    "Section 9.1.1's world_ticks schema has no wider_map line, so the light tick's result has no declared home in the ledger."

# --- promotion: the authoring-on-contact half of the flag --------------------

Assert-True ($s916 -match '(?i)promot') `
    "Section 9.1.6 states no promotion rule, so nothing says when a metro stops being a band and starts being a city -- the second half of F-056's open question."
Assert-True ($s916 -match '(?i)does not author|nothing is authored|it does not author') `
    "Section 9.1.6 does not forbid authoring a metro below the promotion bar. Inventing a city's guilds and districts because the Bearer flew through is the failure the light tick exists to prevent."

# --- the downstream sections the wider map needs to be readable -------------

$s98 = Get-Section $profile '(?m)^## 9\.8 .*?(?=^## 9\.9)'
Assert-True ($s98 -ne '') "Section 9.8 could not be delimited."
Assert-True ($s98 -match '(?i)Elsewhere in the United States') `
    "Section 9.8's response table has no row for the rest of the country, so a break outside Chicago and Prague has no authored responder."

$s911Full = Get-Section $profile '(?m)^## 9\.11 .*?(?=^## 9\.12)'
Assert-True ($s911Full -ne '') "Section 9.11 could not be delimited."
Assert-True ($s911Full -match '(?i)BGM National') `
    "Section 9.11's call list has no national issuing authority. Through 1.105 it carried exactly two regional offices, so a national agreement had no channel to arrive through."
Assert-True ($s911Full -match '(?i)never called out of his region|no standing to') `
    "Section 9.11 does not state what a regional-only listing cannot do, which is the whole of what a national agreement buys."

# Section 12 must say the US carries no regional factor, or a Runtime reaches
# for Prague's foreign-market 70% the first time the Bearer sells in Seattle.
Assert-True ($s916 -match '(?i)no regional market factor') `
    "Nothing states that Prague's regional market factor is foreign-market only. A Runtime pricing a core in Boston will otherwise apply it."

# --- the two scales must not be confused ------------------------------------

$s914 = Get-Section $profile '(?m)^### 9\.1\.4 .*?(?=^### 9\.1\.5)'
Assert-True ($s914 -match '9\.1\.6') `
    "Section 9.1.4's escalation-elsewhere row does not distinguish itself from Section 9.1.6, so a Runtime rolling both double-counts one event as two."

# --- the version statements agree -------------------------------------------
# Derived, never pinned: a test that must be hand-edited on every adoption is
# the F-013 defect.

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
    Write-Output "Gatefall wider-map contract FAILED ($failures finding(s))"
    exit 1
}
Write-Output "Gatefall wider-map contract tests PASSED"
