# Gatefall danger-supply contract (Profile 1.92, F-046)
#
# F-046 found that a Bearer who outgrows the Rank ladder has no route back to
# a contested fight: the Combat Tier had two consumers and both were spent or
# avoidable, the board's own take rates put A-Rank work out of a freelancer's
# reach and S-Rank work nowhere, and a combat skill was the only growth axis
# with no route through practice.
#
# Four remedies landed at 1.92. This gate asserts the PROPERTIES of each, never
# the sentences carrying them, so an edit that strengthens a section does not
# turn this red.
#
# Patterns are ASCII only. These files are BOM-less UTF-8 and Windows
# PowerShell 5.1 decodes them as ANSI, so a literal em-dash or multiplication
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

# --- R1: the Combat Tier excludes on agency, not on frequency ---------------

$s67 = Get-Section $profile '(?m)^## 6\.7 .*?(?=^## |^# \d)'
Assert-True ($s67 -ne '') "Section 6.7 could not be delimited; the Combat Tier is not present."

Assert-True ($s67 -match 'standing_worn_reduction') `
    "Section 6.7 no longer names standing_worn_reduction, which the defense axis reads."
Assert-True ($s67 -match '(?i)requires no declaration') `
    "Section 6.7 states no declaration test; the inclusion rule must turn on whether the Bearer must choose to use an effect."
Assert-True ($s67 -match '(?i)cannot be held or wasted') `
    "Section 6.7 does not state that an effect the Bearer cannot fail to have is standing protection."
Assert-True ($s67 -match '(?i)spends nothing') `
    "Section 6.7 does not require that a standing effect costs nothing."

# The exclusion of genuinely spendable effects must survive the widening.
Assert-True ($s67 -match '(?i)stays excluded|remain excluded|still excluded') `
    "Section 6.7 no longer preserves the exclusion of effects the Bearer must choose to spend."

# The two axes and the lower-of-them rule are not weakened by any of this.
Assert-True ($s67 -match 'offense_tier') `
    "Section 6.7 no longer derives an offense axis."
Assert-True ($s67 -match 'defense_tier') `
    "Section 6.7 no longer derives a defense axis."
Assert-True ($s67 -match '(?i)min\(') `
    "Section 6.7 no longer takes the lower of the two axes."
Assert-True ($s67 -match '(?i)floor') `
    "Section 6.7 no longer states the System Rank floor."

# --- R1b: the Combat Tier has a third consumer ------------------------------

Assert-True ($s67 -match '(?i)proving key') `
    "Section 6.7 does not name the proving key; the Combat Tier is back to two consumers, both of them spent or avoidable."
Assert-True ($s67 -match '(?i)snapshot') `
    "Section 6.7 no longer states that the tier is snapshotted per consumer rather than read live."

# --- R2: a combat skill's qualifying test is contest, not danger ------------

$s74 = Get-Section $profile '(?m)^## 7\.4 .*?(?=^## 7\.5)'
Assert-True ($s74 -ne '') "Section 7.4 could not be delimited; skill mastery is not present."

Assert-True ($s74 -match '(?i)contested') `
    "Section 7.4 does not state a contested test for a combat skill."
Assert-True ($s74 -match '(?i)opposed resolution') `
    "Section 7.4 does not require an opposed resolution; a contest test with no opponent rolling is a demonstration."
Assert-True ($s74 -match '(?i)could beat him|capable of beating him') `
    "Section 7.4 does not require an opponent who could actually win."
Assert-True ($s74 -match '(?i)cost on failure|at a cost') `
    "Section 7.4 does not require a cost on failure."
Assert-True ($s74 -match '(?i)uncontested') `
    "Section 7.4 no longer states what still fails the test; a widened rule that never says what it refuses has been lowered rather than re-aimed."
Assert-True ($s74 -match '6\.2\.1') `
    "Section 7.4 does not point at the pulled strike, which is the mechanism that makes a contested non-lethal scene resolvable."

# The three-scene ladder and the non-combat route are untouched.
Assert-True ($s74 -match '(?i)three distinct') `
    "Section 7.4 no longer requires three distinct qualifying scenes per level."
Assert-True ($s74 -match '(?i)structured practice') `
    "Section 7.4 no longer offers the non-combat structured-practice route."
Assert-True ($s74 -match '(?i)trivial repetition') `
    "Section 7.4 no longer refuses trivial repetition."

# --- R3: directed assignment is authored, and it creates nothing ------------

Assert-True ($profile -match '(?m)^## 9\.11 ') `
    "Section 9.11 is absent; the channel Sections 9.1, 9.3, 9.4 and 12.3 all describe is unauthored again."
$s911 = Get-Section $profile '(?m)^## 9\.11 .*?(?=^# \d|^---\s*$\r?\n# )'
Assert-True ($s911 -ne '') "Section 9.11 could not be delimited for scoped checks."

Assert-True ($s911 -match 'd100') `
    "Section 9.11 rolls nothing; an assignment channel narrated at need is the F-034 defect."
# Case-sensitive on purpose: these are the outcome tokens the d100 table
# produces. A case-insensitive match is satisfied by the prose word "named"
# in the refusal rules below, which is not the same claim.
Assert-True ($s911 -cmatch 'NAMED') `
    "Section 9.11's outcome table does not author the named result."
Assert-True ($s911 -cmatch 'OFFERED') `
    "Section 9.11's outcome table does not author the offered result."
Assert-True ($s911 -cmatch 'NOT THIS ONE|ELSEWHERE') `
    "Section 9.11's outcome table has no result that leaves the Bearer out; a roll whose every outcome reaches him is not a roll."
Assert-True ($s911 -match '(?i)draft') `
    "Section 9.11 does not author the S-Rank draft that Section 9.3 already names."
Assert-True ($s911 -match '(?i)carded') `
    "Section 9.11 does not key the call list to card Rank, which is what Section 19.4's lifted cap buys."
Assert-True ($s911 -match '(?i)creates no Gate|adds no supply|no supply is added') `
    "Section 9.11 does not state that it creates no Gate; a routing channel that may also spawn content is a supply change wearing a routing rule."
Assert-True ($s911 -match '(?i)sizes nothing to the Bearer|never bends around one hunter|bend around one hunter') `
    "Section 9.11 does not restate that an assigned Gate runs at its own Rank; Section 6.6's rule must survive this channel."
# Three tiers, checked separately. A bare match on "decline" is satisfied by
# the outcome table's own wording and proves nothing about the refusal rules.
Assert-True ($s911 -match '(?i)declined freely|may decline freely|free to decline') `
    "Section 9.11 has no freely-refusable tier, so every assignment reads as a summons."
Assert-True ($s911 -match '(?i)standing cost|at a cost with') `
    "Section 9.11 prices no middle tier between a free refusal and an offense."
Assert-True ($s911 -match '(?i)offense') `
    "Section 9.11's draft carries no consequence, which makes it an invitation."

# Section 9.1's tick must route to it, or the channel is unreachable the way
# gatefall.board.deadline was unreachable in F-002.
$s91 = Get-Section $profile '(?m)^## 9\.1 .*?(?=^## 9\.2)'
Assert-True ($s91 -match '9\.11') `
    "Section 9.1's daily tick never reaches Section 9.11; a channel nothing dispatches to is absent, not rare."

# --- R4: the proving key ----------------------------------------------------

$s17 = Get-Section $profile '(?m)^# 17\. .*?(?=^# 18\.)'
Assert-True ($s17 -ne '') "Section 17 could not be delimited; instant dungeons are not present."

Assert-True ($s17 -match '(?i)proving key') `
    "Section 17 does not author the proving key."

# Scoped to the proving key's own subsection. Section 17 talks about keys being
# used throughout, so a file-wide or even section-wide match on that phrasing
# proves nothing about THIS key -- it passed vacuously until it was scoped.
$sProving = Get-Section $s17 '(?m)^## The Proving Key.*?(?=^---|\z)'
Assert-True ($sProving -ne '') `
    "The proving key has no subsection of its own in Section 17; its rules cannot be scoped or checked."

Assert-True ($sProving -match '(?i)Combat Tier') `
    "The proving key does not read the Combat Tier, which is the only thing that makes it un-outgrowable."
Assert-True ($sProving -match '(?i)instant the key is used|moment the key is used|when it is used|when the key is spent') `
    "The proving key does not fix its Rank at the moment of use; a key snapshotted at creation is an ordinary key."
Assert-True ($sProving -match '(?i)snapshot') `
    "The proving key does not invoke Section 6.7's snapshot rule, so nothing stops it re-Ranking mid-instance."
Assert-True ($sProving -match '(?i)no anomaly|rolls no anomaly') `
    "The proving key is not denied an anomaly roll; Section 9.6 is reached through an assessment a System instance does not have."

# The exception must have stayed narrow: ordinary keys still never re-Rank.
# Read Section 17 with the proving key's own subsection removed, because that
# subsection says "never re-Ranks" about itself and satisfied this vacuously.
$s17Ordinary = if ($sProving -ne '') { $s17.Replace($sProving, '') } else { $s17 }
Assert-True ($s17Ordinary -match '(?i)never re-Ranks') `
    "Section 17 no longer holds ordinary keys at their created Rank; the proving key's exception has widened past itself."
Assert-True ($s17Ordinary -match '(?i)never retroactively hardened|does not raise it') `
    "Section 17 no longer refuses to harden a banked ordinary key, which is the risk economy the proving key was authored not to disturb."

# And it must be purchasable, or it is an authored object with no source.
$s125 = Get-Section $profile '(?m)^## 12\.5 .*?(?=^### 12\.5\.1)'
Assert-True ($s125 -match '(?i)proving key') `
    "Section 12.5 carries no proving-key price; Section 17 names the shop as its only source."

# The row itself, not the figure. 1,800,000 also appears in the S-Rank rune
# anchor two tables down, so a bare match on the number passed vacuously.
$provingRow = [regex]::Match($s125, '(?mi)^\|[^|\r\n]*proving key[^|\r\n]*\|[^\r\n]*$')
Assert-True $provingRow.Success `
    "Section 12.5 has no proving-key table row; a price named only in prose is not in the catalogue."
Assert-True ($provingRow.Success -and $provingRow.Value -match '1,800,000') `
    "Section 12.5's proving-key row does not price the S tier; an un-priced top rung is an unreachable one."
Assert-True ($provingRow.Success -and $provingRow.Value -match '400,000') `
    "Section 12.5's proving-key row does not price the A tier, which is where the live Bearer stands."
Assert-True ($s125 -match '(?i)twice the ordinary key price|doubl') `
    "Section 12.5 does not state the proving key's doubling rule, so its row reads as an arbitrary table."

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
    Write-Output "Gatefall danger-supply contract FAILED ($failures finding(s))"
    exit 1
}
Write-Output "Gatefall danger-supply contract tests PASSED"
