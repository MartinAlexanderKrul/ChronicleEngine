[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"

# Why this gate exists
#
# Profile 1.85 authored fusion because a player asked an artificer to merge two
# finished items and the profile had nothing to say. The gap was real and the
# authoring was correct. What the authoring risks is the opposite failure:
# fusion quietly becoming a second Rank ladder.
#
# The whole balance rests on one sentence -- FUSION MOVES AN EFFECT AND NEVER
# MOVES A MAGNITUDE. Remove it and the section still reads like a reasonable
# rule, still passes every other gate in this repository, and hands a Bearer a
# route to pool worn reduction into one slot. In the campaign that prompted the
# version that would have dissolved the Combat Tier S threshold in an afternoon
# -- a threshold the Ceiling Register had just spent a scene establishing as
# reachable only by artificer work on three pieces and outright replacement of
# two.
#
# So leg 3 is the load-bearing one: it reads the outcome column of the band
# table and asserts that no band, at any roll, grants a stat point, a point of
# weapon power, or a point of physical reduction. It is a property check rather
# than a phrase check, because the danger is not that someone deletes the
# sentence -- it is that someone adds a generous band and never notices the
# sentence applied to it.
#
# Leg 5 exists for the same reason at a different scale. "One fusion per piece"
# is what stops a Bearer buying identical accessories and stacking N procs into
# one slot; the multiplicative composition of Section 7.3 bounds the magnitude
# of any one stack but not the number of them.

function Fail { param([string]$Message) throw $Message }
function Assert-True { param([bool]$Condition, [string]$Message) if (-not $Condition) { Fail $Message } }

$profileText = [System.IO.File]::ReadAllText($profilePath)

# Patterns here stay ASCII on purpose. These files are BOM-less UTF-8 and the
# section is full of en dashes, em dashes and multiplication signs; a literal one
# in a pattern can decode to something that never matches, and an assertion that
# cannot match is an assertion that cannot fail.

# --- Isolate Section 12.10 -------------------------------------------------
$sectionMatch = [regex]::Match($profileText,
    '(?ms)^##\s+12\.10\s+Fusion\b.*?(?=^#{1,2}\s+\d|\Z)')
Assert-True ($sectionMatch.Success) `
    "Section 12.10 Fusion is absent from the Gatefall profile; Profile 1.85 is not present."
$section = $sectionMatch.Value

# --- LEG 1: the load-bearing rule is stated ---------------------------------
Assert-True ($section -match '(?i)moves?\s+an\s+effect' -and $section -match '(?i)never\s+moves?\s+a\s+magnitude') `
    ("Section 12.10 no longer states its governing rule -- fusion moves an effect and never moves a " +
     "magnitude. Every other clause in the section is calibrated against it; without it the band table " +
     "is a list of generosities with nothing bounding them.")

# --- LEG 2: eligibility is complete -----------------------------------------
$eligibility = @(
    @{ Pattern = '(?i)same\s+equipment\s+slot\s+class'; What = "the same-slot-class test" }
    @{ Pattern = '(?i)Broken\s+and\s+Destroyed\s+cannot\s+be\s+fused'; What = "the functional-condition test" }
    @{ Pattern = '(?i)named\s+artifact'; What = "the named-artifact exclusion" }
    @{ Pattern = '(?i)Neither\s+is\s+\*\*equipped\*\*'; What = "the not-equipped test" }
    @{ Pattern = '(?i)within\s+one\s+Rank\s+of\s+each\s+other'; What = "the one-Rank-gap test" }
)
foreach ($e in $eligibility) {
    Assert-True ($section -match $e.Pattern) (
        "Section 12.10's eligibility list has lost $($e.What). Eligibility is checked before any cost is " +
        "paid, so a missing clause is not a stricter rule -- it is a fusion that gets attempted and " +
        "resolved on material the section meant to refuse.")
}

# --- Parse the band table ----------------------------------------------------
# Rows read: | **<effective>** | <band> | <outcome> |
$bandRows = [regex]::Matches($section,
    '(?m)^\|\s*\*\*(?<eff>[^|*]+)\*\*\s*\|(?<band>[^|]+)\|(?<outcome>[^|]+)\|\s*$')
Assert-True ($bandRows.Count -ge 8) (
    "Section 12.10's resolution table parsed $($bandRows.Count) bands; the engine's result bands are " +
    "eight and a fusion must resolve on all of them. A table missing a band has an outcome the Runtime " +
    "will improvise.")

# Every engine band is represented. Ranges are matched without literal dashes.
$requiredBands = @(
    @{ Lo = '01'; Hi = '05';  Name = 'catastrophic' }
    @{ Lo = '06'; Hi = '20';  Name = 'major failure' }
    @{ Lo = '21'; Hi = '40';  Name = 'failure' }
    @{ Lo = '41'; Hi = '60';  Name = 'partial' }
    @{ Lo = '61'; Hi = '80';  Name = 'success' }
    @{ Lo = '81'; Hi = '95';  Name = 'strong' }
    @{ Lo = '96'; Hi = '99';  Name = 'exceptional' }
)
$effCells = @($bandRows | ForEach-Object { $_.Groups['eff'].Value.Trim() })
foreach ($b in $requiredBands) {
    $hit = @($effCells | Where-Object { $_ -match ('^' + $b.Lo + '\D{1,3}' + $b.Hi + '$') })
    Assert-True ($hit.Count -ge 1) (
        "Section 12.10's resolution table has no $($b.Lo)-$($b.Hi) row ($($b.Name)). The engine reads " +
        "every effective result against a band; a fusion that lands in an unauthored one has no outcome.")
}
Assert-True (@($effCells | Where-Object { $_ -eq '100' }).Count -ge 1) `
    "Section 12.10's resolution table has no 100 row. Legendary is a live result on every roll."

# --- LEG 3: no band moves a magnitude (the load-bearing check) ---------------
$magnitudeTokens = @('stat point', 'weapon power', 'physical reduction')
foreach ($row in $bandRows) {
    $outcome = $row.Groups['outcome'].Value
    $eff = $row.Groups['eff'].Value.Trim()
    foreach ($token in $magnitudeTokens) {
        Assert-True ($outcome -notmatch [regex]::Escape($token)) (
            "Section 12.10's $eff band grants '$token'. Fusion moves an effect and never moves a " +
            "magnitude -- a band that hands out stat points, weapon power or physical reduction turns " +
            "fusion into a Rank ladder that costs no Rank, and dissolves every worn-reduction ceiling " +
            "the profile authors.")
    }
}

# The same rule stated positively, where the section promises what a result gains.
Assert-True ($section -match '(?i)gains?\s+\*\*no\s+stat\s+points') `
    ("Section 12.10 no longer states that a fused result gains no stat points, no weapon power and no " +
     "physical reduction. The band table is checked against that promise; without it the check has " +
     "nothing to enforce.")

# --- LEG 4: the donor is consumed at every outcome ---------------------------
Assert-True ($section -match '(?i)consumed\s+whole,\s+at\s+every\s+outcome') `
    ("Section 12.10 no longer states that the donor is consumed at every outcome including every " +
     "failure. That clause is the entire cost of a failed fusion; without it a failure returns both " +
     "pieces and the roll carries no risk worth stating aloud.")

# No failure band may return the donor. Failure bands are those below 41.
foreach ($row in $bandRows) {
    $eff = $row.Groups['eff'].Value.Trim()
    if ($eff -notmatch '^(01|06|21)\D') { continue }
    $outcome = $row.Groups['outcome'].Value
    Assert-True ($outcome -match '(?i)destroyed') (
        "Section 12.10's $eff band does not destroy the donor. Every outcome below the partial band " +
        "consumes it; a failure that hands the material back is not the trade this section authors.")
}

# --- LEG 5: one fusion per piece, permanently -------------------------------
Assert-True ($section -match '(?i)never\s+again\s+eligible\s+as\s+frame\s+or\s+donor') `
    ("Section 12.10 no longer forbids re-fusing a fused piece. Section 7.3 bounds how much any one " +
     "stack of an effect can reduce, but nothing bounds how MANY effects reach one slot -- that is " +
     "what this clause does, and without it identical accessories bought from the shop stack without " +
     "limit.")

# --- LEG 6: the critical tail survives every modifier ------------------------
Assert-True ($section -match '(?i)critical\s+tails?\s+stay\s+live' -or
             $section -match '(?i)No\s+modifier\s+removes\s+the\s+01') `
    ("Section 12.10 no longer preserves the critical tail. Engine Rules Section 4.6 keeps 01-05 live " +
     "at every modifier; a fusion section that lets steps buy the tail away contradicts the engine it " +
     "resolves on.")

# --- LEG 7: the frame's own line survives ------------------------------------
Assert-True ($section -match '(?i)frame\*\*\s+survives') `
    ("Section 12.10 no longer states that the frame survives carrying its own line unchanged. Frame " +
     "and donor are the section's whole structure; without the frame's guarantee the result of a " +
     "fusion is undefined.")

# --- Seamwork (1.86): the Bearer holds the hands, never the signature ---------
#
# The owner reopened the artificing question after a Runtime-authored audit
# closed it without a ruling (F-039), and authored Seamwork under exactly one
# boundary: IT NEVER CREATES AN ITEM. It may read, open, seat into, lift from
# and raise a piece the Bearer already owns -- what it may never do is
# originate one.
#
# The first draft of this section got that wrong in the restrictive direction:
# it read "cannot create something from nothing" as "cannot add anything," and
# authored a ladder that improved nothing. That is recorded here because the
# failure is instructive -- an over-tight boundary passes every gate just as
# quietly as a loose one, and nothing in a test suite reports a rule that is
# merely useless.
#
# What keeps Section 12.8's economy intact is NOT a ban on improvement. It is
# three bounds that already existed: an item's authored ceiling, material spent
# at the commissioning anchor, and the Bearer's own Seamwork Rank. Legs below
# assert the origination ban and the ceiling bound, because those are the two
# a generous future edit would quietly drop.

$seamMatch = [regex]::Match($profileText,
    '(?ms)^###\s+Seamwork\b.*?(?=^#{2,3}\s|\Z)')
Assert-True ($seamMatch.Success) `
    "Section 7.3's Seamwork block is absent; Profile 1.86 is not present."
$seam = $seamMatch.Value

Assert-True ($seam -match '(?i)never\s+creates\s+an\s+item') `
    ("Seamwork no longer states that it never creates an item. Origination is the entire boundary the " +
     "owner ruled -- the Bearer improves what he owns and conjures nothing -- and without it Section " +
     "12.8's supply economy has no rule holding it up.")

Assert-True ($seam -match '(?i)inert\s+to\s+it') `
    ("Seamwork no longer states that matter carrying no mana line is inert to it. That clause is what " +
     "makes the origination ban checkable at the table rather than an aspiration: no working present, " +
     "no purchase, Mana refused.")

Assert-True ($seam -match '(?i)ceiling' -and $seam -match '(?i)never\s+past\s+it') `
    ("Seamwork no longer binds to an item's authored ceiling. The ceiling is why the Bearer still " +
     "shops -- a higher ceiling is a higher-Rank object, and those are bought, commissioned or killed " +
     "for. Remove the bound and one cheap piece becomes every piece he will ever need.")

$seamRows = [regex]::Matches($seam,
    '(?m)^\|\s*\*\*(?<rank>[ EDCBAS]+)\*\*[^|]*\|(?<grant>[^|]+)\|\s*$')
Assert-True ($seamRows.Count -ge 4) (
    "Seamwork's Rank ladder parsed $($seamRows.Count) rungs; it is native at C-Rank and authors C " +
    "through S, and a missing rung is an unauthored grant the Runtime will improvise.")

# The native rung must not sit below the evidence that earned the technique.
Assert-True ($seam -match '(?i)native\s+\*\*C-Rank\*\*') (
    "Seamwork is no longer native at C-Rank. It was authored there because Section 18.3.1 forbids a " +
    "grant returning nothing the Bearer already lacks: the qualifying evidence shows reading a " +
    "maker's mid-process corrections and opening a finished working intact, so an E- or D-Rank entry " +
    "would author two rungs of nothing beneath capability already demonstrated.")
Assert-True ($seam -match '(?i)grant\s+that\s+returns\s+nothing') (
    "Seamwork no longer records why its native Rank is C. The calibration is the load-bearing part: " +
    "an earned technique is authored from the evidence that earned it, and a later edit lowering the " +
    "entry rung would look like caution while quietly re-creating the defect.")

# No rung may originate. Improving is licensed; conjuring is not.
foreach ($row in $seamRows) {
    $grant = $row.Groups['grant'].Value
    $rank = $row.Groups['rank'].Value.Trim()
    Assert-True ($grant -notmatch '(?i)\b(create|forge|fabricate|originate)s?\b') (
        "Seamwork's $rank rung authors creating a piece. Every rung acts on an object that already " +
        "carries a working; origination requires an artificer's signature (Section 13.6) and no " +
        "amount of Rank on this ladder confers one.")
}

# Section 12.8 must carry the origination/improvement distinction.
Assert-True ($profileText -match '(?i)signature\s+originates;\s+the\s+hands\s+may\s+still\s+work') `
    ("Section 12.8 no longer states the origination/improvement distinction. The blanket reading of " +
     "'no player crafting subsystem' is what F-039's audit relied on to close a formation candidate " +
     "without an owner ruling; leaving it unstated invites the same inference again.")
Assert-True ($profileText -match '(?i)It\s+forbids\s+\*\*origination\*\*') `
    ("Section 12.8 no longer names origination as the thing forbidden. Naming it is what stops the " +
     "sentence being re-read as a ban on improving a piece the Bearer already owns.")

# The fusion assist step reads the skill, not an impression.
Assert-True ($section -match '(?i)holding\s+\*\*Seamwork\*\*') `
    ("Section 12.10's assist step no longer names Seamwork. It previously read 'capability established " +
     "in play', which is an impression rather than a state a gate or a Runtime can check.")

# Seamwork's mastery axis must not re-sell what its native Rank rung grants. An
# earlier draft authored "resolution of the read" starting at presence-and-Rank
# while the native C rung already granted the maker's corrections -- so Novice
# mastery withheld what acquisition had just sold. Section 7.4's division of
# labour is the rule: Rank sells reach, mastery sells how well it resolves, and
# neither may sell the other's goods.
$axisRow = [regex]::Match($profileText,
    '(?m)^\|\s*\*\*Seamwork\*\*\s*\|(?<axis>[^|]+)\|(?<band>[^|]+)\|')
Assert-True ($axisRow.Success) `
    "Section 7.4's axis table has no Seamwork row; a mastery-tracked skill with no declared axis is the F-014 defect."
Assert-True (($axisRow.Groups['axis'].Value + $axisRow.Groups['band'].Value) -notmatch '(?i)correction') (
    "Seamwork's mastery axis sells the maker's corrections, which its native C-Rank rung already " +
    "grants. A mastery track starting below its own acquisition rung means the first levels return " +
    "nothing -- the exact defect Profile 1.83 was written to end.")

$bandCount = $bandRows.Count
Write-Host "Gatefall fusion contract tests PASSED ($bandCount bands, $($eligibility.Count) eligibility clauses, $($seamRows.Count) Seamwork rungs)" -ForegroundColor Green
