# Gatefall custody contract (Profile 1.88, Sections 12.9 and 15.3.2)
#
# Asserts the PROPERTIES of custody, never the sentences carrying them, so an
# edit that strengthens the clause does not turn this red.
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
$profile = Get-Content -Raw -Encoding UTF8 $profilePath

# --- the clause exists, and is sited in the inventory section ----------------

$s129 = [regex]::Match($profile, '(?s)^## 12\.9 .*?(?=^## 12\.10 )', 'Multiline')
Assert-True $s129.Success "Section 12.9 could not be delimited for scoped checks."
$inv = if ($s129.Success) { $s129.Value } else { '' }

Assert-True ($inv -match '(?i)custody') `
    "Section 12.9 never names custody; Profile 1.88's third disposition is absent."

# --- ownership does not move -------------------------------------------------

Assert-True ($inv -match '(?i)possession, never title|never title') `
    "Section 12.9 does not assert that custody is possession rather than title."

# --- the record is invalid without its three fields --------------------------

foreach ($field in @('who', 'since', 'ends')) {
    Assert-True ($inv -match "(?i)\b$field\b") `
        "Section 12.9's custody record does not name '$field'; holder, since and end condition are all required."
}

# --- THE LOAD-BEARING LEG: custody is excluded from remote storage -----------
# Without this a Bearer silently recalls anything he ever handed over, and the
# whole clause is decorative. It is the one property worth a dedicated leg.

Assert-True ($inv -match '(?i)not a legal target for .{0,40}remote storage|remote storage while the custody stands') `
    "Section 12.9 does not exclude a custodied item from remote storage; a custody the Bearer can silently reverse is not a custody."

Assert-True ($inv -match '(?i)consent') `
    "Section 12.9 does not ground the remote-storage exclusion in the Bearer having consented; the exclusion needs its reason or it reads as arbitrary."

# --- it is out of reach in the ordinary ways too ------------------------------

Assert-True ($inv -match '(?i)not stored') `
    "Section 12.9 does not state that a custodied item is not stored."

# --- the panel group -----------------------------------------------------------

$s1532 = [regex]::Match($profile, '(?s)^### 15\.3\.2 .*?(?=^### 15\.3\.3 |^### 15\.4 |^## 15\.4 )', 'Multiline')
Assert-True $s1532.Success "Section 15.3.2 could not be delimited for scoped checks."
$gear = if ($s1532.Success) { $s1532.Value } else { '' }

Assert-True ($gear -match 'IN CUSTODY') `
    "Section 15.3.2 has no IN CUSTODY group; a custodied item would render nowhere."

Assert-True ($gear -match '(?i)instead of') `
    "Section 15.3.2 does not state that a custodied item renders in the custody group INSTEAD of its kind group; without it a holding can be counted twice."

# --- every rule in the gear panel is still 78 cells ---------------------------
# Section 15.1's fixed width, checked on the group this change added rather
# than asserted in prose. A rule that drifts is exactly what 1.84 repaired.

foreach ($line in ($gear -split "`n")) {
    if ($line -match '^╟──') {
        Assert-True ($line.Length -eq 78) `
            "Gear panel rule is $($line.Length) cells, not 78: $line"
    }
}

# --- the four version statements agree ----------------------------------------
# Derived, never pinned: a test that must be hand-edited on every adoption is
# the F-013 defect.

$headerMatch = [regex]::Match($profile, '(?m)^# Gatefall .+Profile (?<v>\d+\.\d+)\r?$')
Assert-True $headerMatch.Success "Gatefall profile header declares no active version."
if ($headerMatch.Success) {
    $v = [regex]::Escape($headerMatch.Groups['v'].Value)
    Assert-True ($profile -match "(?m)^\*\*Profile Version:\*\* $v\s*$") `
        "Profile Version field disagrees with the profile header."
    $index = Get-Content -Raw -Encoding UTF8 (Join-Path $repoRoot 'worlds/gatefall/migrations/INDEX.md')
    Assert-True ($index -match "\*\*Active Profile:\*\* $v") `
        "Migration index does not declare the profile header's version active."
}

if ($failures -gt 0) {
    Write-Output "Gatefall custody contract FAILED ($failures finding(s))"
    exit 1
}
Write-Output "Gatefall custody contract tests PASSED"
