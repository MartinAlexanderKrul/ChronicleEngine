# Gatefall Succession contract (Profile 1.111, Sections 7.1 and 7.6)
#
# Asserts the PROPERTIES of the transcription rule, never the sentences
# carrying them, so an edit that strengthens the section does not turn this red.
#
# Patterns are ASCII only. These files are BOM-less UTF-8 and Windows
# PowerShell 5.1 decodes them as ANSI, so a literal em-dash or multiplication
# sign silently never matches and the assertion passes vacuously.
#
# 1.111 widened this route from one technique to the whole body and split it
# into two rungs. The legs that pinned the narrow rule -- "signature technique",
# "One per kill", "never a Stat Passive" -- were REPLACED rather than deleted:
# each has a successor below asserting the wider property, so the coverage they
# carried is not silently lost.

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

$profilePath = Join-Path $repoRoot 'worlds/gatefall/206_WORLD_RULE_PROFILE.md'
$profile = Get-Content -Raw $profilePath

# --- the section exists and is sited inside the skills chapter ---------------

Assert-True ($profile -match '(?m)^## 7\.6 ') `
    "Section 7.6 is absent; Profile 1.90's Succession rule is not present."

$farSidePath = Join-Path $repoRoot 'worlds/gatefall/270_THE_FAR_SIDE.md'
$farSide = Get-Content -Raw $farSidePath

$sectionMatch = [regex]::Match($profile, '(?s)^## 7\.6 .*?(?=^## |^# )', 'Multiline')
Assert-True $sectionMatch.Success "Section 7.6 could not be delimited for scoped checks."
$section = if ($sectionMatch.Success) { $sectionMatch.Value } else { '' }

# Every remaining leg reads the SECTION, not the 4,000-line profile, so a
# stray match elsewhere cannot stand in for the rule being present here.

# --- Section 7.1's closed list actually contains this route (1.111) -----------
# Through 1.110 Section 7.1 declared five routes "and only these" while Section
# 7.6 called itself "the third acquisition route in this profile". Both could
# not be true. This leg is scoped to 7.1 so a stray "six" elsewhere is no proof.

$acquisitionMatch = [regex]::Match($profile, '(?s)^## 7\.1 .*?(?=^## |^# )', 'Multiline')
Assert-True $acquisitionMatch.Success "Section 7.1 could not be delimited for scoped checks."
$acquisition = if ($acquisitionMatch.Success) { $acquisitionMatch.Value } else { '' }

Assert-True ($acquisition -match '(?i)one of six routes') `
    "Section 7.1's closed route list does not declare six routes."
Assert-True ($acquisition -match '(?m)^6\. \*\*Succession\.\*\*') `
    "Section 7.1's list does not name Succession as the sixth route."
Assert-True ($acquisition -match '7\.6') `
    "Section 7.1's Succession route does not point at the section authoring it."

# --- the trigger --------------------------------------------------------------

Assert-True ($section -match '(?i)awakened human') `
    "Section 7.6 does not admit an awakened human as a victim class."
Assert-True ($section -match '13\.1\.1') `
    "Section 7.6 does not admit a Section 13.1.1 System-bearer as a victim class."
Assert-True ($section -match '(?i)never a monster') `
    "Section 7.6 does not exclude monsters, whose drop is a core under Section 11.1."
Assert-True ($section -match '(?i)unawakened') `
    "Section 7.6 does not exclude the unawakened, who hold nothing to take."
Assert-True ($section -match "(?i)Bearer's own damage") `
    "Section 7.6 does not require the kill to be the Bearer's own."
Assert-True ($section -match '6\.2\.1') `
    "Section 7.6 does not exclude a target incapacitated by pulled damage."

# --- the two rungs exist and are distinguishable ------------------------------

Assert-True ($section -match '(?m)^### 7\.6\.1 ') `
    "Section 7.6 authors no rung for an awakened human victim."
Assert-True ($section -match '(?m)^### 7\.6\.2 ') `
    "Section 7.6 authors no rung for a System-bearer victim."

$rungOneMatch = [regex]::Match($section, '(?s)^### 7\.6\.1 .*?(?=^### )', 'Multiline')
$rungTwoMatch = [regex]::Match($section, '(?s)^### 7\.6\.2 .*?(?=^### )', 'Multiline')
$rungOne = if ($rungOneMatch.Success) { $rungOneMatch.Value } else { '' }
$rungTwo = if ($rungTwoMatch.Success) { $rungTwoMatch.Value } else { '' }

# --- what transfers: the widening, replacing the one-per-kill legs ------------

Assert-True ($section -match '(?i)every technique they hold') `
    "Section 7.6 no longer states that every technique on the body transcribes; the 1.110 one-per-kill bound may have returned."
Assert-True (-not ($section -match '(?i)One per kill, never a second')) `
    "Section 7.6 still carries the 1.110 one-technique bound, which 1.111 replaced."

# --- rung one: an awakened body has no mastery, no passive, no class ----------

Assert-True ($rungOne -match '(?i)Novice') `
    "Rung one does not set the arriving mastery level for an awakened victim."
Assert-True ($rungOne -match '(?i)zero') `
    "Rung one does not reset the arriving counters."
Assert-True ($rungOne -match '(?i)no mastery track') `
    "Rung one does not state why Novice is forced: Section 13.1 leaves no mastery on the body."
Assert-True ($rungOne -match '(?i)Stat Passive') `
    "Rung one does not settle whether a Stat Passive transcribes from an awakened body."
Assert-True ($rungOne -match '13\.5') `
    "Rung one does not withhold Section 13.5's party effects from an absorbed mender or warden signature."

# --- rung two: mastery, the passive floor, and the class ability --------------

Assert-True ($rungTwo -match "(?i)victim's own mastery level") `
    "Rung two does not transcribe a bearer's skill at the victim's own mastery level."
Assert-True ($rungTwo -match '(?i)succession floor') `
    "Rung two does not author the Stat Passive floor, so a transcribed passive has no representation."
Assert-True ($rungTwo -match '(?i)never as a value|never a separately stored value') `
    "Rung two does not keep a Stat Passive's Rank derived rather than stored, against Section 4.4."
Assert-True ($rungTwo -match '(?i)no trial credit') `
    "Rung two does not withhold the class from a transcribed class ability."
Assert-True ($rungTwo -match '4\.2') `
    "Rung two does not cite the Section 4.2 derivation that excludes Stats from the transfer."
Assert-True ($section -match '(?i)Stats and pools transfer nothing') `
    "Section 7.6 does not exclude Stats and pools from the transfer."

# --- a bearer carries no Rank, so the arriving Rank needs its own answer ------

Assert-True ($rungTwo -match '(?i)stops and asks') `
    "Rung two does not stop on an unauthored champion technique; it may invent an arriving Rank."
Assert-True ($rungTwo -match '270_THE_FAR_SIDE') `
    "Rung two does not site the authoring discipline that supplies a bearer's technique Ranks."

# --- the ceiling is the thing 1.111 did NOT widen ----------------------------

Assert-True ($section -match '7\.5') `
    "Section 7.6 does not clamp the arriving Rank to Section 7.5's ceiling."
Assert-True ($section -match '(?i)at the ceiling') `
    "Section 7.6 does not state that an above-ceiling technique arrives at the ceiling."
Assert-True ($section -match '(?i)banked') `
    "Section 7.6 does not state that above-ceiling excess is lost rather than banked."
Assert-True ($section -match '(?i)already holds the technique') `
    "Section 7.6 does not settle the case where the Bearer already holds it."

# --- a taken technique is an inscription, never a method ---------------------

Assert-True ($section -match 'acquisition_route:.*succession') `
    "Section 7.6 does not record succession as an acquisition route in live state."
Assert-True ($section -match 'transmissible: false') `
    "Section 7.6 does not deny transmissibility to a taken technique; route 5's exclusivity is broken."

# --- Profile 1.112: what route 5 is worth, and what route 6 costs ------------
# F-065. A route that is slower, costs three scenes and arrives at Novice is
# strictly dominated unless it grants something the fast one cannot. These legs
# assert that the asymmetry exists, not the sentences carrying it.

Assert-True ($acquisition -match '(?i)Teaching credits the teacher') `
    "Section 7.1 does not credit a teacher for teaching, so route 5 gains nothing from the only thing it can do that route 6 cannot."
Assert-True ($acquisition -match '(?i)once per recipient') `
    "Section 7.1's teaching credit is unbounded; a Bearer teaching the same person repeatedly farms mastery, which is the rule Section 12.5 exists to hold."
Assert-True ($acquisition -match '(?i)may be a component of a combination candidate|component of a combination') `
    "Section 7.1 does not reserve combination components to transmissible techniques, so an inscription he was never shown how to perform can still be taken apart."
Assert-True ($acquisition -match '(?i)an inscription may not|inscription cannot') `
    "Section 7.1 does not exclude an inscription from combination, which is the half of the rule that makes route 6's yield unable to compound."

# The far side must actually carry a price, or F-065's sharpest half stands.
Assert-True ($farSide -match '(?m)^## 4\.4 ') `
    "270_THE_FAR_SIDE.md authors no price for a killed champion. Sections 19 and 20.4 are Earth-side and Section 18.13.1 says nobody here is investigable, so Succession is free exactly where it yields most."
$pricing = [regex]::Match($farSide, '(?s)^## 4\.4 .*?(?=^## |^# )', 'Multiline')
Assert-True $pricing.Success "Far-side Section 4.4 could not be delimited; every pricing leg below would pass vacuously."
if ($pricing.Success) {
    $price = $pricing.Value
    Assert-True ($price -match '\+12') `
        "Section 4.4 moves no notice for a killed champion, so the Section 4.3 counter treats a death as indistinguishable from an hour of standing about."
    Assert-True ($price -match '(?i)closed|finite') `
        "Section 4.4 does not state that the bearer population is closed, which is the entire reason a death costs anything."
    Assert-True ($price -match '(?i)Reach the next one') `
        "Section 4.4 does not say what a killed champion does to the position that exists to teach him, which is the position the price is actually charged against."
    Assert-True ($price -match '(?i)forecloses') `
        "Section 4.4 does not quantify the price in techniques. A price stated only as attitude is one a Runtime cannot apply."
    # The price must not quietly become loot, law, or a hunting party -- each of
    # those contradicts a section that already governs.
    Assert-True ($price -match '(?i)pays him nothing here|drops no core') `
        "Section 4.4 does not preserve Section 18.13.1: a killed champion must still yield nothing, or the price has been paid back as loot."
    Assert-True ($price -match '(?i)never assembles them|do not organise') `
        "Section 4.4 does not forbid assembling the Standing into a response. Section 4.1's positions disagree about everything, and a party contradicts the file that authored them."
}

# --- it renders, and it is not free in the world -------------------------------

Assert-True ($section -match 'S U C C E S S I O N') `
    "Section 7.6 authors no window for the acquisition."
Assert-True ($section -match '14\.5\.3') `
    "Section 7.6 does not site its window in the Section 14.5.3 grammar."
Assert-True ($section -match '(?i)Sections 19 and 20\.4|Section 19') `
    "Section 7.6 does not name the exposure and legal price the profile charges instead."

# --- the far side carries the other half of the authoring --------------------
# Rung two reads entries in 270_THE_FAR_SIDE.md. If that file does not know it
# is being read, a champion can be authored with no absorbable set and the stop
# above never fires because nobody wrote the technique down to begin with.

Assert-True ($farSide -match '7\.6') `
    "270_THE_FAR_SIDE.md does not name the Succession route that reads its authored champions."

# --- the four version statements agree ---------------------------------------
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
    Write-Output "Gatefall Succession contract FAILED ($failures finding(s))"
    exit 1
}
Write-Output "Gatefall Succession contract tests PASSED"
