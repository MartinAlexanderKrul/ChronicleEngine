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
# Delimited at 9.1.7 rather than at 9.2. When 1.107 added Section 9.1.7 between
# them this span silently grew to cover both, and every 9.1.6-scoped leg below
# started accepting text that lives in 9.1.7 -- including the handoff leg, which
# was then satisfied by 9.1.7's own heading and could not fail. Scope a presence
# check to the section it belongs to, or a later insertion widens it for free.
$s916 = Get-Section $profile '(?m)^### 9\.1\.6 .*?(?=^### 9\.1\.7|^## 9\.2)'
Assert-True ($s916 -ne '') "Section 9.1.6 could not be delimited for scoped checks."
Assert-True ($s916 -notmatch '(?m)^### 9\.1\.7 ') `
    "Section 9.1.6's span has swallowed Section 9.1.7. Every scoped leg below is now satisfiable by text in the wrong section."

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
# rate with no arithmetic behind it is the F-054 residue on a new axis. Read as
# a shape, not as a literal: the figure moves whenever the ceiling or the tier
# is retuned, and a leg pinned to today's number goes red when it should not.
# The cell reads "**~ 0.23**" with a non-ASCII approximation sign, which
# PowerShell 5.1 decodes from this BOM-less UTF-8 file as two ANSI bytes. Match
# a bounded run of non-digits rather than a single character, or the leg reads
# green against a table it never parsed.
$streamFigure = [regex]::Match($s916, '(?m)\*\*Total\*\* \| \*\*[^0-9|]{0,6}(?<v>0\.\d+)\*\*')
Assert-True $streamFigure.Success `
    "Section 9.1.6's escalation table states no composed daily total, so its roll rests on nothing and cannot be rechecked when the tier or the Rank ceiling moves."
if ($streamFigure.Success) {
    $stream = [double]$streamFigure.Groups['v'].Value
    Assert-True ($stream -gt 0.05 -and $stream -lt 1.0) `
        "Section 9.1.6's composed stream is $stream a day. Below ~0.05 the national channel never fires in a campaign's length; at or above 1.0 the wider map produces an incident every day and stops being wider-map news."
    # The holding band must be the arithmetic complement of the stream, or the
    # table and the roll have drifted apart -- which is exactly how a retuned
    # rate ends up stated in one place and rolled at another.
    $hold = [regex]::Match($s916, '(?m)^\s*01-(?<h>\d\d)\s+THE WIDER MAP HOLDS')
    Assert-True $hold.Success `
        "Section 9.1.6's roll table does not open on the holding band. Without it the wider map produces an incident most days."
    if ($hold.Success) {
        $rolled = (100 - [int]$hold.Groups['h'].Value) / 100.0
        Assert-True ([Math]::Abs($rolled - $stream) -le 0.02) `
            "Section 9.1.6 composes $stream a day but its roll table fires $rolled of the time. The stated arithmetic and the rolled table have drifted apart."
    }
}

# --- 1.108: mana density sets the ceiling, not just the count ----------------
# Owner ruling. Without it a metro under 150 licensed hunters and a continent
# with the thinnest agency reach on Earth both roll the world's full 0.5%
# S-Rank share, which put 2.55 S-Rank Gates a day into a region holding fifteen
# S-Ranks and made one Jiu Valley impossible to explain.

Assert-True ($s916 -match '(?i)Rank ceiling') `
    "Section 9.1.6's band table has no Rank ceiling column, so the thinnest metros in the country open S-Rank Gates at the same share as Chicago."
$bandFour = [regex]::Match($s916, '(?m)^\| \*\*IV .{0,3} Minor\*\* \|(?<row>[^\r\n]*)$')
Assert-True $bandFour.Success "Section 9.1.6 has no Band IV row to carry a ceiling."
if ($bandFour.Success) {
    Assert-True ($bandFour.Groups['row'].Value -match '(?i)no S-Rank') `
        "Section 9.1.6's Band IV row does not forbid an S-Rank Gate. Under 150 licensed hunters is thin ground and the pressure behind an S-Rank interior is not there."
}
# The redistribution must preserve the C-and-above mass, or the break-escalation
# arithmetic one table down silently stops holding.
Assert-True ($s916 -match '(?i)C-and-above mass is unchanged|unchanged at 25%') `
    "Section 9.1.6 does not state that its ceiling preserves the C-and-above mass. Without it the break line's 25% is asserted against a distribution that no longer produces it."
# No authored city may move. This is the leg that keeps a modelling device for
# unauthored places from rewriting Chicago's and Prague's resolved law.
Assert-True ($s916 -match '(?i)no authored city changes|Bands I to III are untouched') `
    "Section 9.1.6 does not fence its ceiling off from the authored cities. Chicago and Prague roll Section 9.2.1 directly, and a band rule reaching them would change resolved law from a derivation those cities supplied."
# A ceiling that can be worked around by siting is not a ceiling.
Assert-True ($s916 -match '(?i)site among Bands I.{1,4}III only|no S-Rank Gates to site') `
    "Section 9.1.6 does not restrict where an S-Rank result may site. A ceiling forbidding S-Rank Gates in Band IV, with a siting table that can still land one there, is not a rule."

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

# --- 1.107: the world outside the United States -----------------------------
# 1.106's light tick stops at the border because that is what a BGM National
# agreement covers. Section 9.1.7 carries the other 96% of the world's Gates.

Assert-True ($profile -match '(?m)^### 9\.1\.7 ') `
    "Section 9.1.7 is absent; everything outside the United States has no clock, in a world whose break rate is global and whose catastrophe is Romanian."
$s917 = Get-Section $profile '(?m)^### 9\.1\.7 .*?(?=^## 9\.2)'
Assert-True ($s917 -ne '') "Section 9.1.7 could not be delimited for scoped checks."
Assert-True ($s916 -match '9\.1\.7') `
    "Section 9.1.6 does not hand off to Section 9.1.7, so its own United States scope reads as the whole world."
Assert-True ($s91 -match '9\.1\.7') `
    "Section 9.1's tick never dispatches to Section 9.1.7; a region table nothing rolls is absent, not patient."

# The weekly clock is the whole reason this is affordable. A daily world roll
# is a second Section 9.1.6 for six extra continents.
Assert-True ($s917 -match "(?i)week's first tick|once a week") `
    "Section 9.1.7 does not run on the weekly clock. A daily world roll costs as much as the domestic one and produces news the Bearer cannot act on."

# --- every region the user's map has, and the two columns that must close ----

foreach ($region in @('Asia', 'Africa', 'Europe', 'North America', 'Middle East', 'South America', 'Oceania')) {
    Assert-True ($s917 -match "(?m)^\| \*\*$([regex]::Escape($region))\*\* \|") `
        "Section 9.1.7's region table has no $region row, so a world event siting there has nothing to read."
}
# Oceania must name Australia, or the region the owner asked for by name is
# reachable only by someone who already knows the synonym.
Assert-True ($s917 -match '(?i)Australia') `
    "Section 9.1.7's Oceania row never names Australia, so the region is unfindable by the name most readers would search."
# The World row is the check, not a row: it is what proves the regions compose
# to the Bible's own totals rather than being seven independent guesses.
Assert-True ($s917 -match '(?m)^\| \*\*World\*\* \|') `
    "Section 9.1.7 has no World row. Without the total, nothing shows the regions sum to the Bible's ~200 S-Ranks and the one authored Gate rate."
Assert-True ($s917 -match '(?i)Both columns close|sum to the Bible') `
    "Section 9.1.7 does not assert that its columns close against the Bible's own figures, which is the only thing separating a derived table from seven preferences."

# --- flow must switch proxy at the border ------------------------------------
# This is the leg most likely to be lost to a well-meaning simplification, and
# losing it authors a world where poor countries have fewer Gates.

Assert-True ($s917 -match '(?i)tracks population here, not licensed hunters|not licensed hunters') `
    "Section 9.1.7 does not switch its flow proxy at the border. Reading licensed hunters as flow across borders makes a weak state produce fewer Gates -- the exact inversion of the setting."
Assert-True ($s917 -match '(?i)symptom of coverage') `
    "Section 9.1.7 does not state why the proxy switches, so the next editor will 'fix' the inconsistency by unifying it the wrong way."
Assert-True ($s917 -match '0\.34') `
    "Section 9.1.7 states no per-population Gate rate, so the region counts rest on nothing and cannot be rechecked."
Assert-True ($s917 -match '(?i)days of S-Rank cover') `
    "Section 9.1.7 states no coverage measure. Flow alone says nothing about whether a region's Gates get answered, which is the whole subject."

# --- 1.108: the same ceiling rule, at region scale ---------------------------

Assert-True ($s917 -match '(?i)sets the ceiling, not just the count|not only how many') `
    "Section 9.1.7 does not state the mana-depth principle, so a region's Rank distribution is flat and thin ground opens S-Rank Gates it has no pressure for."
Assert-True ($s917 -match '(?i)mana pressure') `
    "Section 9.1.7 grounds the ceiling in nothing. Section 9.3 already reads a Gate's timer off its mana pressure, and without that citation the rule reads as difficulty tuning."
foreach ($depth in @('Deep', 'Ordinary', 'Shallow')) {
    Assert-True ($s917 -match "(?m)^\| \*\*$depth\*\* \|") `
        "Section 9.1.7's depth table has no $depth row, so the ceiling has fewer than the three steps the ruling needs."
}
Assert-True ($s917 -match '(?i)No S-Rank Gate at all') `
    "Section 9.1.7's shallow depth does not forbid an S-Rank Gate outright. Halving is not the ruling: thin ground has no pressure to open one."
# Depth must scale the count too. The ruling is 'less mana means fewer AND
# lower Gates', and a ceiling alone leaves a shallow region opening a deep
# region's volume.
Assert-True ($s917 -match '(?i)scales the count as well as the ceiling|as well as the ceiling') `
    "Section 9.1.7's depth changes the Rank ladder but not the Gate count, so thin ground still opens as many punctures as deep ground."
# The measured proxy must be named, and its one dishonest case with it.
Assert-True ($s917 -match '(?i)cannot license anyone into S-Rank') `
    "Section 9.1.7 does not say why the S-Rank count is an honest measure of depth where a licence count is not."
Assert-True ($s917 -match '(?i)Gulf') `
    "Section 9.1.7 does not except the imported-roster case. A bought S-Rank roster measures what a state can pay, not what its ground carries."
# A shallow region must not be sited an S-Rank event, or the ceiling is advice.
Assert-True ($s917 -match "(?i)shallow region's event is never an S-Rank Gate|never an S-Rank Gate") `
    "Section 9.1.7 does not stop a shallow region being sited an S-Rank event, so the weekly roll can produce the exact Gate the depth table forbids."
# The Jiu Valley has to survive the new arithmetic too, and for a better reason
# than before: it now happens on DEEP ground, which is why there is only one.
Assert-True ($s917 -match '(?i)deep ground') `
    "Section 9.1.7 does not reconcile the Exclusion with the ceiling rule. An S-Rank Gate opens where the S-Ranks are, which is what makes one uncontained Exclusion explicable rather than routine."

# --- the border rule: an ask, never an assignment ----------------------------

Assert-True ($s917 -match '(?i)draft never does|never crosses a border|no regulator.s call crosses') `
    "Section 9.1.7 does not forbid the draft crossing a border. Section 9.11's emergency mobilization is a licensing power, and no authority can compel a foreign S-Rank."
Assert-True ($s917 -match '(?i)arrives as an \*\*ask\*\*|as an \*\*ask\*\*') `
    "Section 9.1.7 does not restrict a foreign request to an ask, so a world roll could compel the Bearer abroad."
Assert-True ($s917 -match '(?i)IGR') `
    "Section 9.1.7 names no international clearinghouse, so a foreign ask has no authored route and a Runtime invents one."
Assert-True ($s917 -match '(?i)European Gate Council') `
    "Section 9.1.7 omits the European Gate Council, which is the authored route a member state short of capacity actually uses."
$doorRows = ([regex]::Matches($s917, '(?m)^\| \*\*(The IGR|The European Gate Council|BGM National|A state buying capacity)\*\* \|')).Count
Assert-True ($doorRows -ge 4) `
    "Section 9.1.7's door table has $doorRows row(s). Fewer than four leaves a foreign request arriving through a channel nobody authored."
Assert-True ($s917 -match '(?i)emergency-mobilization tier is unavailable|never the draft') `
    "Section 9.1.7 does not disable the emergency-mobilization refusal tier abroad, so declining a foreign Gate could become a licensing offense."
Assert-True ($s917 -match '\+20') `
    "Section 9.1.7 applies no penalty to a foreign ask, so a request from Jakarta reaches him as readily as one from Boston."
Assert-True ($s917 -match '18\.8') `
    "Section 9.1.7 does not read the Bearer's anchors, so the one thing that genuinely shortens a foreign response window counts for nothing."

# --- the fences carry across ------------------------------------------------

Assert-True ($s917 -match '(?i)authors no city') `
    "Section 9.1.7 does not forbid authoring a foreign city, so a single world roll can spawn a metro the world must then keep running."
Assert-True ($s917 -match '(?i)rolls no Gates') `
    "Section 9.1.7 does not carry Section 9.1.6's no-Gates fence, so the region table reads as a simulation of 2,760 daily Gates."
Assert-True ($s917 -match '9\.2\.2') `
    "Section 9.1.7 does not fence itself off from the escalation ramp; a foreign break advancing Chicago's tier is the roster-length defect at world scale."
Assert-True ($s917 -match '(?i)never produces a System quest|no System quest') `
    "Section 9.1.7 does not restate Section 9.1.5's quest boundary, which is where a world-fact table would otherwise start issuing objectives."

# The Jiu Valley must survive the arithmetic. A table producing ~13.8 S-Rank
# Gates a day worldwide could easily read as demoting the setting's one named
# catastrophe, and the section has to say why it does not.
Assert-True ($s917 -match '(?i)Jiu Valley') `
    "Section 9.1.7 never reconciles its rate with the Jiu Valley. A world opening S-Rank Gates daily needs to say why the Exclusion is still the one the trade means."

$s911Schema = Get-Section $profile '(?m)^### 9\.1\.1 .*?(?=^### 9\.1\.2)'
Assert-True ($s911Schema -match '(?m)^world\s') `
    "Section 9.1.1's world_ticks schema has no line for the weekly region roll, so Section 9.1.7's result has nowhere to be written."

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
