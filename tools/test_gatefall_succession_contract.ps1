# Gatefall Succession contract (Profile 1.90, Section 7.6)
#
# Asserts the PROPERTIES of the transcription rule, never the sentences
# carrying them, so an edit that strengthens the section does not turn this red.
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

$profilePath = Join-Path $repoRoot 'worlds/gatefall/206_WORLD_RULE_PROFILE.md'
$profile = Get-Content -Raw $profilePath

# --- the section exists and is sited inside the skills chapter ---------------

Assert-True ($profile -match '(?m)^## 7\.6 ') `
    "Section 7.6 is absent; Profile 1.90's Succession rule is not present."

$sectionMatch = [regex]::Match($profile, '(?s)^## 7\.6 .*?(?=^## |^# )', 'Multiline')
Assert-True $sectionMatch.Success "Section 7.6 could not be delimited for scoped checks."
$section = if ($sectionMatch.Success) { $sectionMatch.Value } else { '' }

# Every remaining leg reads the SECTION, not the 4,000-line profile, so a
# stray match elsewhere cannot stand in for the rule being present here.

# --- the trigger --------------------------------------------------------------

Assert-True ($section -match '(?i)awakened human') `
    "Section 7.6 does not restrict the victim class to an awakened human."
Assert-True ($section -match '(?i)never a monster') `
    "Section 7.6 does not exclude monsters, whose drop is a core under Section 11.1."
Assert-True ($section -match '(?i)unawakened') `
    "Section 7.6 does not exclude the unawakened, who hold no technique."
Assert-True ($section -match "(?i)Bearer's own damage") `
    "Section 7.6 does not require the kill to be the Bearer's own."
Assert-True ($section -match '6\.2\.1') `
    "Section 7.6 does not exclude a target incapacitated by pulled damage."

# --- what transfers, and what never does --------------------------------------

Assert-True ($section -match '(?i)signature technique') `
    "Section 7.6 does not limit the transfer to the signature technique."
Assert-True ($section -match '(?i)One per kill') `
    "Section 7.6 does not bound the transfer to one technique per kill."
Assert-True ($section -match '(?i)never takes a \*\*Stat Passive\*\*|never a Stat Passive') `
    "Section 7.6 does not exclude Section 4.4 Stat Passives."
Assert-True ($section -match '(?i)class ability|class abilit') `
    "Section 7.6 does not exclude Section 18 class abilities."
Assert-True ($section -match '(?i)already holds the technique') `
    "Section 7.6 does not settle the case where the Bearer already holds it."

# --- the arriving condition is bounded by existing law, not by a new number ----

Assert-True ($section -match '7\.5') `
    "Section 7.6 does not clamp the arriving Rank to Section 7.5's ceiling."
Assert-True ($section -match '(?i)at the ceiling') `
    "Section 7.6 does not state that an above-ceiling technique arrives at the ceiling."
Assert-True ($section -match '(?i)Novice') `
    "Section 7.6 does not set the arriving mastery level."
Assert-True ($section -match '(?i)zero') `
    "Section 7.6 does not reset the arriving counters."

# --- it renders, and it is not free in the world -------------------------------

Assert-True ($section -match 'S U C C E S S I O N') `
    "Section 7.6 authors no window for the acquisition."
Assert-True ($section -match '14\.5\.3') `
    "Section 7.6 does not site its window in the Section 14.5.3 grammar."
Assert-True ($section -match '(?i)Sections 19 and 20\.4|Section 19') `
    "Section 7.6 does not name the exposure and legal price the profile charges instead."

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
