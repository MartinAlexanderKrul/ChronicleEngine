# Gatefall pulled-strike contract (Profile 1.87, Section 6.2.1)
#
# Asserts the PROPERTIES of the non-lethal rule, never the sentences carrying
# them, so an edit that strengthens the section does not turn this red.
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

# --- the section exists and is sited inside the damage rules -----------------

Assert-True ($profile -match '(?m)^### 6\.2\.1 ') `
    "Section 6.2.1 is absent; Profile 1.87's pulled strike is not present."

$sectionMatch = [regex]::Match($profile, '(?s)^### 6\.2\.1 .*?(?=^### |^## )', 'Multiline')
Assert-True $sectionMatch.Success "Section 6.2.1 could not be delimited for scoped checks."
$section = if ($sectionMatch.Success) { $sectionMatch.Value } else { '' }

# Every remaining leg reads the SECTION, not the 4,000-line profile, so a
# stray match elsewhere cannot stand in for the rule being present here.

# --- the declaration ---------------------------------------------------------

Assert-True ($section -match 'pulled') `
    "Section 6.2.1 never names the pulled declaration."
Assert-True ($section -match '(?i)before the roll') `
    "Section 6.2.1 does not require the declaration before the roll."
Assert-True ($section -match '(?i)never declarable after|may not be declared after') `
    "Section 6.2.1 does not forbid declaring after a result is known."

# --- the magnitude -----------------------------------------------------------

Assert-True ($section -match '0\.25') `
    "Section 6.2.1 states no reduced-damage factor."

# --- the payoff: 0 Health by pulled damage is not death ----------------------

Assert-True ($section -match '(?i)incapacitat') `
    "Section 6.2.1 does not author incapacitation as the 0-Health outcome."
Assert-True ($section -match '(?i)0 Health') `
    "Section 6.2.1 does not tie its outcome to reaching 0 Health."

# --- the bright line: mixed sources do not average ---------------------------

Assert-True ($section -match '(?i)mixed sources do not average|any\*\* unpulled|any unpulled') `
    "Section 6.2.1 does not close the mixed-source hole; a pulled opening plus a full follow-through must remain a kill."

# --- finality is not weakened ------------------------------------------------

Assert-True ($profile -match '(?m)^## 6\.5 Death Is Final') `
    "Section 6.5 is missing; the pulled strike must not have replaced finality."
Assert-True ($profile -match '\*\*Death is death\.\*\*') `
    "Section 6.5 no longer asserts that death is death."

# --- it grants nothing it should not -----------------------------------------

Assert-True ($section -match '(?i)no accuracy|grants no accuracy') `
    "Section 6.2.1 does not deny that pulling grants accuracy."
Assert-True ($section -match '(?i)monster') `
    "Section 6.2.1 does not state its availability against monsters."

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
    Write-Output "Gatefall pulled-strike contract FAILED ($failures finding(s))"
    exit 1
}
Write-Output "Gatefall pulled-strike contract tests PASSED"
