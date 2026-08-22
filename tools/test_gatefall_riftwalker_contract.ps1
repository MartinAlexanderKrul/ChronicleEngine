# Gatefall Riftwalker contract (Profile 1.96, F-049)
#
# The class led with a line-of-sight teleport granting +1 to the follow-up,
# which is Flash Step -- a D-Rank rune -- with a shorter window and a
# per-exchange lock. 1.96 separates them: Flash Step is bound to perception,
# rift-step travels to anywhere he has stood, and anchors become held ground.
#
# This gate asserts the PROPERTIES of the separation, never the sentences
# carrying them, and it exists mainly so the two cannot converge again.
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

$s188 = Get-Section $profile '(?m)^## 18\.8 .*?(?=^## 18\.9)'
Assert-True ($s188 -ne '') "Section 18.8 could not be delimited; Riftwalker is not present."

# --- the separation itself: no metre band may reach Flash Step --------------
#
# The live sheet had acquired "any point within 100 m, sight or no sight" from
# THIS table. The figure belongs to the class and nowhere else in the profile.

$s73 = Get-Section $profile '(?m)^## 7\.3 .*?(?=^## 7\.4)'
Assert-True ($s73 -ne '') "Section 7.3 could not be delimited; the starting skill table is not present."

# Read Flash Step's two rows directly rather than scanning the section: the
# section's own prose QUOTES the drifted reach in order to forbid it, and a
# section-wide metre check is satisfied by that quotation.
$flashBase = [regex]::Match($s73, '(?m)^\| \*\*Flash Step\*\* \| D-Rank \|[^\r\n]*$')
$flashLadder = [regex]::Match($profile, '(?m)^\| \*\*Flash Step\*\* \*\(native D-Rank\)\*[^\r\n]*$')
Assert-True $flashBase.Success "Flash Step has no row in Section 7.3's skill table."
Assert-True $flashLadder.Success "Flash Step has no Rank-category ladder row; a mastery-tracked skill with no ladder has no authored answer to what ascending it does."

foreach ($row in @($flashBase, $flashLadder)) {
    if ($row.Success) {
        Assert-True (-not ($row.Value -match '\d+\s*m\b')) `
            "A Flash Step row carries a metre band. Flash Step has never been granted one, and a metre reach on it is what made it indistinguishable from Section 18.8's rift-step (F-049)."
    }
}

Assert-True ($s73 -match '(?i)bound to what he perceives|bound to perception') `
    "Section 7.3 does not bind Flash Step to perception, so nothing stops its reach drifting again."
Assert-True ($s73 -match '(?i)no Rank at which it crosses to a place he has not perceived') `
    "Section 7.3 does not forbid Flash Step reaching an unperceived place at every Rank, which is the exact grant that duplicated the class."

# The A-Rank category must not be a travel grant.
if ($flashLadder.Success) {
    Assert-True (-not ($flashLadder.Value -match '(?i)\*\*Blind step\*\*')) `
        "Flash Step's ladder still GRANTS a blind step. Crossing to somewhere unseen is Section 18.8's business."
    Assert-True ($flashLadder.Value -match '(?i)Interpose') `
        "Flash Step's ladder has no A-Rank category to replace the removed one; a Rank rung that grants nothing is the F-014 defect."
    foreach ($kept in @('Through the barrier', 'Through the ward', 'Twice')) {
        Assert-True ($flashLadder.Value -match [regex]::Escape($kept)) `
            "Flash Step's ladder lost '$kept'. 1.96 replaced one category; the rest of the ladder is untouched and retention (Section 7.2) holds every rung already reached."
    }
}

# --- rift-step: two actions, and the travelling one is the class ------------

Assert-True ($s188 -match '(?i)in-scene step') `
    "Section 18.8 no longer separates the combat step from the travelling one."
Assert-True ($s188 -match '(?i)travelling step') `
    "Section 18.8 authors no travelling step, so the class is a line-of-sight teleport again."
Assert-True ($s188 -match '(?i)has personally stood|he has stood') `
    "Section 18.8 does not bound the travelling step to places he has stood."
Assert-True ($s188 -match '(?i)not .anywhere he has seen.|never .anywhere he has seen.|It is not "anywhere he has seen"') `
    "Section 18.8 does not refuse 'anywhere he has seen'. Seen has no evaluation point and stood is already canon (F-002)."
Assert-True ($s188 -match '(?i)removes him from the scene') `
    "Section 18.8 does not make the travelling step leave the scene, so it can be spent mid-fight as a free repositioning."

# --- blind arrival is what keeps anchors meaningful -------------------------

Assert-True ($s188 -match '(?i)Arrival is blind|arrives .{0,30}as he last saw it') `
    "Section 18.8 does not make arrival blind. Without it an anchor buys nothing that free travel does not already give."
Assert-True ($s188 -match '(?i)only ground he can arrive at knowing|never blind') `
    "Section 18.8 does not make an anchor the exception to blind arrival, which is the whole of what the cap now buys."

# --- distance is containers, never metres -----------------------------------

Assert-True ($s188 -match '(?i)not asked to invent metres|never in metres|not in metres') `
    "Section 18.8 prices the travelling step in metres. Gatefall tracks no coordinates and the Runtime must not be asked to invent any."

# Scoped to the ladder block itself. A bare band name is satisfied by the prose
# around it and proves nothing about the ladder carrying that rung.
$manaLadder = [regex]::Match($s188, '(?s)```text.*?```')
Assert-True $manaLadder.Success "Section 18.8 has no Mana ladder block; the travelling step is unpriced."
if ($manaLadder.Success) {
    # Anchored to the label column. 'further' also occurs in the doubling
    # sentence beneath the ladder, which satisfied this leg while the BAND had
    # been renamed away.
    foreach ($rung in @('line of sight', 'close by', 'further', 'the city')) {
        Assert-True ($manaLadder.Value -match ('(?m)^\s{2,}' + [regex]::Escape($rung) + '\s{2,}')) `
            "Section 18.8's Mana ladder has no '$rung' band in its label column, so that scale is unpriced and the Runtime has to invent one."
    }
    # The far half, by scale rather than by label column -- these rungs are
    # written as prose rows. A rung count alone does not catch a MISSING scale:
    # cutting 'another country' left six priced rows and passed vacuously.
    foreach ($scale in @('country', 'continent', 'world')) {
        Assert-True ($manaLadder.Value -match "(?i)$scale") `
            "Section 18.8's Mana ladder never prices the '$scale' scale, so the ladder has a gap and the Runtime must interpolate a cost that was never authored."
    }
    # Asserted as a shape, not a multiplier word: 1.97 doubled, 1.98 goes x5,
    # and a leg pinned to either goes red on the next retuning. What must hold
    # is that the ladder climbs and that its top is a real cost.
    $costs = [regex]::Matches($manaLadder.Value, '(?m)\s(\d{1,3}(?:,\d{3})?)\s*$') |
        ForEach-Object { [int](($_.Groups[1].Value) -replace ',', '') }
    Assert-True ($costs.Count -ge 7) `
        "Section 18.8's Mana ladder has only $($costs.Count) priced rungs; the authored ladder runs from line of sight to the far side of the world and a missing rung is a scale the Runtime has to invent."
    if ($costs.Count -ge 5) {
        $climbs = $true
        for ($i = 1; $i -lt $costs.Count; $i++) { if ($costs[$i] -lt $costs[$i - 1]) { $climbs = $false } }
        Assert-True $climbs `
            "Section 18.8's Mana ladder does not rise monotonically; a rung cheaper than the one below it makes a farther destination the bargain."
        Assert-True (($costs[-1] / [double]$costs[0]) -ge 50) `
            "Section 18.8's Mana ladder tops out at $($costs[-1]) against a first rung of $($costs[0]). Against a four-figure Mana pool that is a rounding error rather than a distance cost, and it makes the anchored step's flat price worthless."
    }
}
Assert-True ($s188 -match '(?i)ambiguity resolves \*against\* the Bearer|resolves against the Bearer') `
    "Section 18.8 does not say which way an unplaceable destination resolves, so a vague destination becomes the cheap one."

# --- the hard boundary: instances --------------------------------------------
#
# Every sealed-instance rule in the profile rests on this. A class that can step
# out of a red gate silently repeals Section 9.6, Section 8.3 and Section 13.2.

# Scoped to the boundary rule's own paragraph. Naming a sealed-instance type
# anywhere in a 60-line section proves nothing about the boundary rule listing
# it, and 'red gate' occurs in the section's own prose regardless.
$boundary = [regex]::Match($s188, '(?m)^- \*\*The ordinary travelling step is bound by the world.s own walls.*?(?=\r?\n- \*\*)', 'Singleline')
Assert-True $boundary.Success `
    "Section 18.8 has no instance-boundary rule on the ordinary travelling step. A red gate seals until its boss dies, a penalty zone has 'no other exit and no retreat', and Section 13.2's loot declaration presumes the clear window."
if ($boundary.Success) {
    # The enumeration itself, not the paragraph. The rationale sentence beneath
    # it also names a red gate, and satisfied this leg while the LIST had lost
    # it -- which is exactly the omission that would open the hole.
    $sealedList = [regex]::Match($boundary.Value, '(?s)not out of a Gate.*?not into one')
    Assert-True $sealedList.Success `
        "Section 18.8's boundary rule states no enumeration of what it covers."
    foreach ($sealed in @('red gate', 'instant dungeon', 'penalty zone', 'trial')) {
        Assert-True ($sealedList.Success -and $sealedList.Value -match [regex]::Escape($sealed)) `
            "Section 18.8's boundary enumeration does not name the $sealed. Every sealed-instance type must be listed or the omitted one is the hole."
    }
    Assert-True ($boundary.Value -match '(?i)either direction|not into one') `
        "Section 18.8's boundary rule is one-way; stepping INTO a sealed instance bypasses the mouth just as badly as stepping out."
}

# --- the anchored step: unrestricted and flat, with exactly two exceptions ---
#
# 1.97's ruling. The anchor is the free half and the ordinary step is the bound
# half; the two System-built instances are the only walls an anchor respects,
# because a penalty zone with a back door is not a penalty and it is the
# campaign's last imposed danger source (F-046).

$anchored = [regex]::Match($s188, '(?m)^- \*\*An anchored step is unrestricted.*?(?=\r?\n- \*\*)', 'Singleline')
Assert-True $anchored.Success `
    "Section 18.8 authors no unrestricted anchored step, so an anchor is once again just a cheaper destination."
if ($anchored.Success) {
    Assert-True ($anchored.Value -match '(?i)flat') `
        "The anchored step is not flat-priced; distance bands on it would make a far anchor worse than a near one and defeat the point of holding it."
    Assert-True ($anchored.Value -match '(?i)not bound by the walls|unbound by the instance walls|crosses out of a Gate') `
        "The anchored step does not state that it ignores the instance walls, which is the whole of what 1.97 gave it."
    foreach ($exception in @('8.3', '18.2')) {
        Assert-True ($anchored.Value -match [regex]::Escape($exception)) `
            "The anchored step's exception list does not name Section $exception. Both System-built instances must be excepted or the imposed content becomes opt-out."
    }
    Assert-True ($anchored.Value -match '(?i)only these two|two exceptions') `
        "The anchored step's exceptions are not closed. An open-ended exception list lets any section claim one and the grant erodes."
}

# --- anchors are held ground, not a shortcut --------------------------------

Assert-True ($s188 -match '(?i)answering step') `
    "Section 18.8 authors no answering step, so an anchor cannot be defended."
Assert-True ($s188 -match '(?i)warded ground') `
    "Section 18.8 authors no warded ground, so an anchor grants nothing defensive."
Assert-True ($s188 -match 'Agility') `
    "Section 18.8 no longer derives the anchor cap from Agility."

# The growth table must not have a reach column any more: reach no longer grows.
Assert-True ($s188 -match '(?i)Reach is not on this table|reach no longer grows') `
    "Section 18.8's growth table does not state that reach is off it. A reach column is how the class and the rune converged the first time."

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
    Write-Output "Gatefall Riftwalker contract FAILED ($failures finding(s))"
    exit 1
}
Write-Output "Gatefall Riftwalker contract tests PASSED"
