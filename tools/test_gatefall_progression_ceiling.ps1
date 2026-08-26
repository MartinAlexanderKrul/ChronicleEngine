# Gatefall progression-ceiling contract (Profile 1.100)
#
# Section 16.1 conceded the defect in its own words -- "past level 50 the
# ladder is spent and the decade is not" -- and then ran decade assessments
# against an exhausted catalog into a slot count frozen since level 50, with
# System Rank spent at S and the class evolution spent at 50. A level past 50
# granted stat points and nothing else.
#
# 1.100 adds the second catalog (16.4) and the level-100 subclass (18.12).
# This gate asserts the PROPERTIES of both, never the sentences carrying them.
#
# Patterns are ASCII only. These files are BOM-less UTF-8 and Windows
# PowerShell 5.1 decodes them as ANSI, so a literal em-dash or arrow silently
# never matches and the assertion passes vacuously.

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

# --- the second catalog ------------------------------------------------------

Assert-True ($profile -match '(?m)^## 16\.4 ') `
    "Section 16.4 is absent; a decade assessment past level 50 has nothing left to grant and can only report 'none'."
$s164 = Get-Section $profile '(?m)^## 16\.4 .*?(?=^---|^# 17\.)'
Assert-True ($s164 -ne '') "Section 16.4 could not be delimited for scoped checks."

Assert-True ($s164 -match '(?i)level-60 assessment|level 60 assessment') `
    "Section 16.4 states no eligibility point, so nothing says when the second catalog starts being tested."
Assert-True ($s164 -match '(?i)Ascendant') `
    "Section 16.4 has no Ascendant grade."
Assert-True ($s164 -match '(?i)Absolute') `
    "Section 16.4 has no Absolute grade."

# Enough entries to be a catalog rather than a gesture. Counted as table rows
# in the two grade tables, not as prose mentions.
$secondRows = ([regex]::Matches($s164, '(?m)^\| \*\*[A-Z][^*|]*\*\* \| [^|]+ \| [^|]+ \|')).Count
Assert-True ($secondRows -ge 10) `
    "Section 16.4 carries only $secondRows catalog rows. A second wave smaller than ten entries does not survive an assessment that reads the whole record at once."

# The criteria must read the systems a Bearer only meets past the ladder --
# otherwise this is twenty-one more hunting feats and the ceiling is unmoved.
foreach ($system in @('9\.11', '9\.12', '7\.4', '9\.1\.3', '9\.2\.1')) {
    Assert-True ($s164 -match $system) `
        "Section 16.4 never reads Section $($system -replace '\\','') . The second catalog's whole justification is that its criteria reach systems the first catalog predates."
}

# The honesty clause: points are vestigial at four-figure Stats and the section
# has to say so, or a player reads +15 as the reward and finds out otherwise.
Assert-True ($s164 -match '(?i)vestigial|rounds to nothing|not the reward') `
    "Section 16.4 does not state that its point grants are vestigial against four-figure Stats. The reward is the passive, and a catalog that implies otherwise is misleading on its face."

# --- the slot ladder ---------------------------------------------------------

$s16 = Get-Section $profile '(?m)^# 16\. Titles.*?(?=^## 16\.1)'
$s163 = Get-Section $profile '(?m)^## 16\.3 .*?(?=^## 16\.4)'
foreach ($block in @(@{ n = 'Section 16 header'; v = $s16 }, @{ n = 'Section 16.3'; v = $s163 })) {
    Assert-True ($block.v -match '(?i)sixth at 60|a sixth at 60') `
        "$($block.n) does not carry the sixth slot at level 60; a catalog that grows while the loadout does not makes equipping less of a decision, not more."
    Assert-True ($block.v -match '(?i)eighth at 100') `
        "$($block.n) does not carry the eighth slot at level 100."
}
Assert-True ($s163 -match '(?i)deliberate|slower') `
    "Section 16.3 does not justify the slow slot rung past 50. Three slots across fifty levels is a design choice and an unexplained one reads as an oversight."

# --- the subclass ------------------------------------------------------------

Assert-True ($profile -match '(?m)^## 18\.12 ') `
    "Section 18.12 is absent; the class is finished at level 50 and nothing replaces it."
$s1812 = Get-Section $profile '(?m)^## 18\.12 .*?(?=^---|^# 19\.)'
Assert-True ($s1812 -ne '') "Section 18.12 could not be delimited for scoped checks."

Assert-True ($s1812 -match '(?i)level.100 assessment|level 100') `
    "Section 18.12 states no trigger level."

# The whole design: level 100 grants him nothing. Three prior systems answered
# "nothing new" with more capability, which is the surplus he already had.
Assert-True ($s1812 -match '(?i)grants the Bearer nothing') `
    "Section 18.12 grants the Bearer a capability again. He arrives at level 100 already able to clear content the world has no answer for; more reach is the thing that stopped mattering."
Assert-True ($s1812 -match '(?i)nothing here is optional|cannot decline') `
    "Section 18.12's world changes are declinable. They are the world reorganising itself, not a boon he accepts."
Assert-True ($s1812 -match '(?i)standing changes to the world|do not switch off') `
    "Section 18.12's changes are not standing, so the world reverts and nothing about it is durably different."

# 19.2's band table already had no reading for him and never noticed.
Assert-True ($s1812 -match '(?i)beyond scale') `
    "Section 18.12 does not make the instrument refuse. Section 19.2's top band is an open 1,225+ bracket that returns S-Rank for a Bearer measuring many times that, which is the defect this rests on."
Assert-True ($s1812 -match '1,225') `
    "Section 18.12 does not cite Section 19.2's actual top band, so nothing anchors the claim that the instrument has run out."
Assert-True ($s1812 -match '(?i)political') `
    "Section 18.12 does not state that an unclassifiable Bearer is a problem for the regulator rather than a convenience for him."

# The board, the draft, and the weekly table.
Assert-True ($s1812 -match '(?i)take rates') `
    "Section 18.12 does not move Section 9.1's take rates; the trade goes on competing for work one man clears for nothing."
Assert-True ($s1812 -match '(?i)a guild falls') `
    "Section 18.12 does not connect the collapsing top end to Section 9.1.4's guild-falls row, so the economic consequence lands nowhere."
Assert-True ($s1812 -match '(?i)call list is him|no longer on a call list') `
    "Section 18.12 does not invert the draft, so Section 9.11 still rolls for whether the world's own asset hears about its own emergencies."
Assert-True ($s1812 -match '(?i)what he declines is a world event') `
    "Section 18.12 does not make a refusal consequential. A default offer with no cost for declining is a menu of free work."
Assert-True ($s1812 -match '(?i)reports what happened to every Gate he refused') `
    "Section 18.12 does not oblige the Runtime to report the fate of refused Gates, so the cost of saying no is invisible and therefore absent."

# The cost is the point, and it must be in the section.
Assert-True ($s1812 -match '(?i)single point of failure') `
    "Section 18.12 does not name what a world does when it acquires one person who can answer anything."
Assert-True ($s1812 -match '(?i)decays one slower') `
    "Section 18.12 attaches no mechanical cost to districts he does not work; without it the world reorganising around him is pure upside."
Assert-True ($s1812 -match '(?i)not uniformly better') `
    "Section 18.12 does not state that the changed world is worse in places. A reward with no edge is the fourth system in a row handing him more of what he has."

# --- the terminal class line -------------------------------------------------

Assert-True ($profile -match '(?m)^## 18\.13 ') `
    "Section 18.13 is absent; level 100 changes the world and gives the class nothing, and the class has been finished since level 50."
$s1813 = Get-Section $profile '(?m)^## 18\.13 .*?(?=^---|^# 19\.)'
Assert-True ($s1813 -ne '') "Section 18.13 could not be delimited for scoped checks."

Assert-True ($s1813 -match '(?i)no menu') `
    "Section 18.13 offers a menu. One line per class on that class's own axis is what makes level 100 the end of HIS road rather than a shopping trip."
Assert-True ($s1813 -match '(?i)suppressed') `
    "Section 18.13's trial does not suppress the class, which is the one thing making it a test of what he is rather than of what he picked."
Assert-True ($s1813 -match '(?i)cannot be resolved by killing') `
    "Section 18.13's trial can be solved entirely by killing, which measures the axis every other instance already measures."
Assert-True ($s1813 -match '(?i)instantiated from his own record') `
    "Section 18.13's trial does not build its last phase from the Bearer's record."

# Gate Walker's three grants, and the two things that keep the biggest one honest.
Assert-True ($s1813 -match '(?i)Gate Walker') `
    "Riftwalker's terminal line is unnamed."
Assert-True ($s1813 -match '(?i)tunnel network') `
    "Gate Walker has no permanent-tunnel grant."
Assert-True ($s1813 -match '(?i)far door') `
    "Gate Walker cannot open onto the beasts' own world. A grant that opens an ordinary Gate is a worse instant key, which Section 17 already sells."
Assert-True ($s1813 -match '(?i)anyone may cross') `
    "The tunnel network is his alone, which makes it a reach upgrade rather than a change to the world's logistics."

# A far door must be a PLACE, not another instance. Each absent property is the
# thing separating it from a Gate; losing any one collapses it back into one.
Assert-True ($s1813 -match '(?i)not a Gate') `
    "Section 18.13 does not distinguish a far door from a Gate, which is the entire difference between a capstone and a Section 17 key."
# Anchored to the bold list-item form. A bare 'No Rank' is satisfied by the
# phrase 'no Rank Health' two paragraphs down and passed vacuously.
foreach ($absent in @('**No Rank.**', '**No population formula.**', '**No boss', '**No collapse window', 'two-way')) {
    Assert-True ($s1813 -match "(?i)$([regex]::Escape($absent))") `
        "Section 18.13's far door does not state '$absent'. Each of these is a property of a puncture; a far door that keeps them is a dungeon with a longer timer."
}
Assert-True ($s1813 -match '(?i)has no bottom|no bottom') `
    "Section 18.13 does not say a world has no bottom, so a Runtime may still look for the boss that closes it."

# It pays nothing, and for the right reason -- the System has no reading for
# unranked things, not an arbitrary denial bolted on to stop farming.
Assert-True ($s1813 -match '(?i)has never seen these things|does not price them') `
    "Section 18.13 does not ground the far door's zero reward in the information boundary. An arbitrary denial invites a ruling; 'the System has no row for it' does not."
Assert-True ($s1813 -match '(?i)cannot be made into one|not a progression space') `
    "Section 18.13 does not close the far door to progression, so it becomes the farm the whole design avoids."

# The one condition that makes it dangerous rather than convenient.
Assert-True ($s1813 -match '(?i)cannot be shut') `
    "Section 18.13 lets him shut a far door with something coming through it. That condition is the only thing standing between this grant and a free escape hatch."
Assert-True ($s1813 -match '(?i)single break that does not close') `
    "Section 18.13 does not name what a far door is a miniature of. The setting's terminal event is exactly this, and the profile should not pretend otherwise."
# Pinned to '4,000' through Profile 1.104, which 1.105 re-priced to 2,500 -- and the
# literal kept matching, because the re-pricing paragraph cites the old figure as
# history. A leg that passes off a sentence describing what a rule USED to say is
# not reading the rule. Assert the property instead: Section 18.13 must state an
# opening price, whatever that price currently is.
Assert-True ($s1813 -match 'Opening one costs \*\*[\d,]+ Mana\*\*') `
    "Section 18.13 states no opening price for a far door."

# The destination is authored, owner-facing, and its two binding facts are here.
Assert-True ($s1813 -match '270_THE_FAR_SIDE\.md') `
    "Section 18.13 does not point at the authored destination, leaving the grant with nowhere to go."
Assert-True ($s1813 -match '(?i)owner-facing') `
    "Section 18.13 does not mark the far side owner-facing. It sits behind the same veil as World Bible Section 9 and a Runtime may not hand it over."
Assert-True ($s1813 -match '(?i)Combat Tier equivalent') `
    "Section 18.13 does not carry the far side's resolution rule. Nothing there has a Rank, so an authored magnitude is the only thing a Runtime can resolve against."
Assert-True ($s1813 -match '(?i)saturation every hour|gray sleep') `
    "Section 18.13 states no clock on an expedition. Unlimited time in a place with no Ranks and no timers is a place with no pressure at all."
Assert-True ($s1813 -match '(?i)stops and asks the owner') `
    "Section 18.13 lets a Runtime improvise ground the far-side file does not author."
Assert-True ($s1813 -match '(?i)never improvises a world') `
    "Section 18.13 does not forbid improvising the destination outright."

# --- the far side file itself ------------------------------------------------

$farSidePath = Join-Path $repoRoot 'worlds/gatefall/270_THE_FAR_SIDE.md'
Assert-True (Test-Path $farSidePath) `
    "worlds/gatefall/270_THE_FAR_SIDE.md is absent; Section 18.13's far door opens onto nothing authored."
if (Test-Path $farSidePath) {
    $farSide = Get-Content -Raw $farSidePath
    Assert-True ($farSide -match '(?i)OWNER EYES ONLY') `
        "The far-side file is not marked owner-only, so a Runtime may read it to a player."
    Assert-True ($farSide -match '(?i)never to restate it|never .{0,20}paraphrase') `
        "The far-side file does not forbid restating World Bible Section 9. An inhabitant handing over the cosmology in a speech destroys every clue-line at once."
    # It must be the graveyard the Bible already describes, not a new realm.
    foreach ($anchor in @('seed-library', 'still in the hour', 'carries a Rank', 'Combat Tier equivalent')) {
        Assert-True ($farSide -match "(?i)$([regex]::Escape($anchor))") `
            "The far-side file does not carry '$anchor'. Each is load-bearing: the library framing, the held-moment law, the absence of Rank, and the only resolution handle a Runtime has there."
    }
    Assert-True ($farSide -match '(?i)deliberately not authored|Deliberately Not Authored') `
        "The far-side file declares no gaps. An indefinitely large place with no stated edges invites a Runtime to invent one mid-scene."
    Assert-True ($farSide -match '(?i)belongs to a play session|under save discipline') `
        "The far-side file does not reserve identifier minting to play. Writing ENT- or EVT- here is canon written outside a session."

    # --- reachability: the three connective rulings ---------------------------
    # The file authored a clock with no distances and agendas with no firing
    # condition, so the place was unreachable in one direction and unpopulated
    # in the other. Assert the properties, never the sentences carrying them.

    Assert-True ($farSide -match '(?i)cannot be formed at all') `
        "The far-side file does not close the tunnel network at the Earth boundary. Section 18.13.1 joins 'any two places he has stood' permanently and two-way, a stratum qualifies on its face, and the Out position then holds a standing exit that nobody has to open and nobody can shut."
    Assert-True ($farSide -match '(?i)sole authored crossing') `
        "The far-side file does not name the far door the only way in, so a closeable door and an uncloseable tunnel read as interchangeable routes."
    Assert-True ($farSide -match '(?i)instantaneous and costs nothing') `
        "The far-side file does not state that crossing a standing tunnel costs no clock, which is the entire reason to set an internal anchor rather than walk the leg again."

    # Travel must be a table a Runtime reads, with the unstable stratum rolled.
    Assert-True ($farSide -match '(?i)never estimates one') `
        "The far-side file does not forbid estimating a travel time. A clock with improvised distances is a clock that means whatever the narrator needs."
    Assert-True ($farSide -match '1d4 x 15') `
        "The far-side file does not roll the Weir's crossing. Section 3.4 says its ground is not reliable, and a fixed cost there makes the one leg that should be uncertain the safest to plan around."
    Assert-True ($farSide -match '(?i)not survivable and is not close') `
        "The far-side file does not state that the deepest stratum cannot be walked to and back on one pool. Without it the clock has no stated consequence and an anchor is a convenience rather than the thing the trip depends on."
    # Section 18.8 calls the anchored step "unrestricted" and frees it from
    # instance walls. If this file does not bar it at the Earth boundary, the
    # tunnel ruling above is closed and the same exit stands open beside it --
    # at System Rank S, carrying one ally per step.
    Assert-True ($farSide -match '(?i)anchored step, a travelling step') `
        "The far-side file bars tunnels at the Earth boundary and does not name the anchored step, which Section 18.8 calls unrestricted and unbound by instance walls. A five-Mana step home from the Long Shelf reopens the exit the tunnel ruling just closed, and the S-Rank rung sends an ally along with it."
    Assert-True ($farSide -match '(?i)flat 5 Mana from any distance') `
        "The far-side file does not carry the anchored step's own cost, so a Runtime must reconstruct from Section 18.8 whether the class ability the Bearer has held since level 25 functions here at all."

    # An authored agenda needs a firing condition or it is scenery.
    Assert-True ($farSide -match '(?i)far_side_notice') `
        "The far-side file names no counter for the Bearer's presence, so Section 4's inhabitants have nothing that ever brings them to him."
    Assert-True ($farSide -match '(?i)At notice 6') `
        "The far-side file states no contact threshold. Section 4.1 says they have been trying to reach the candidate for a long time, and without a threshold that sentence never resolves into anyone appearing."
    Assert-True ($farSide -match '(?i)left standing open') `
        "The far-side file does not charge notice for a far door left open. The door is the exact thing Ilith's authored agenda watches for, and an unattended one goes on announcing him while he is on Earth."

    # Reachability must not become a reward. Section 18.13.1 owns that answer.
    Assert-True ($farSide -match '(?i)reachable\*\*, not profitable|not profitable') `
        "The far-side file does not restate that reaching the place pays nothing. Sections making it reachable are exactly where a Runtime would be tempted to invent a drop table to justify the trip."
}
Assert-True ($s1813 -match '(?i)named as owed') `
    "Section 18.13 does not declare the seven unauthored class lines as owed."
Assert-True ($s1813 -match '(?i)does not improvise one') `
    "Section 18.13 does not forbid improvising an unauthored terminal line."

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
    Write-Output "Gatefall progression-ceiling contract FAILED ($failures finding(s))"
    exit 1
}
Write-Output "Gatefall progression-ceiling contract tests PASSED"
