# Standing world reactions -- the tick-advance gate (F-067)
#
# A world event of real scale mints a standing, tick-advanced reaction thread.
# The Gatefall campaign's own table was authored at the 2026-09-13 tick and then
# NOT advanced at the 2026-09-14 tick -- the same prose-obligation decay F-012,
# F-033 and F-034 each recorded one level down. validate_repository.ps1 now
# checks that every standing_world_reactions entry's day counter equals the
# whole days elapsed between its own started date and campaign_time.
#
# This file is the mutation test for that gate. A gate that has never been shown
# to fail is not a gate, and the repository's own history is explicit that an
# obligation nothing checks does not survive three sessions.
#
# It never touches live files. New-RepositoryCopy clones system/, worlds/ and
# campaigns/ into a temp root and every mutation happens there, matching
# tools/test_validate_repository.ps1. tools/ is deliberately not copied, so the
# generator -Check gates stay off and cannot fail on a partial copy.
#
# Patterns are ASCII only. These files are UTF-8 and Windows PowerShell 5.1
# decodes them as ANSI, so a literal em-dash or en-dash silently never matches
# and the assertion passes vacuously.

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot 'validate_repository.ps1'
$failures = 0
$temporaryRoots = [System.Collections.Generic.List[string]]::new()

function Invoke-Validator {
    param([string]$Root)

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator -RepositoryRoot $Root 2>&1 |
        ForEach-Object { $_.ToString() }

    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

function New-RepositoryCopy {
    $destination = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-reactions-" + [guid]::NewGuid().ToString("N"))
    $temporaryRoots.Add($destination)
    New-Item -ItemType Directory -Path $destination | Out-Null
    foreach ($name in @("system", "worlds", "campaigns")) {
        Copy-Item -LiteralPath (Join-Path $repositoryRoot $name) -Destination $destination -Recurse
    }
    return $destination
}

function Edit-FixtureFile {
    param([string]$Path, [string]$Find, [string]$Replace)

    $text = [System.IO.File]::ReadAllText($Path)

    # Anchors below are authored with LF so the legs stay readable, but the
    # working tree is CRLF on a Windows checkout while HEAD stores LF. An anchor
    # that assumes either one silently stops matching depending on how the file
    # was last written, and the leg then throws "the live file moved" for a
    # reason that has nothing to do with the gate under test. Adopt whatever the
    # file actually holds.
    if ($text.Contains("`r`n")) {
        $Find = $Find.Replace("`r`n", "`n").Replace("`n", "`r`n")
        $Replace = $Replace.Replace("`r`n", "`n").Replace("`n", "`r`n")
    }

    if (-not $text.Contains($Find)) {
        throw "Fixture anchor not found in $Path -- the live file moved and this leg is no longer testing what it claims."
    }
    $occurrences = ([regex]::Matches($text, [regex]::Escape($Find))).Count
    if ($occurrences -ne 1) {
        throw "Fixture anchor matches $occurrences times in $Path -- it must match exactly once, or this leg mutates more than it claims to."
    }
    # ReadAllText/WriteAllText round-trips line endings untouched. A whole-file
    # rewrite that flips LF to CRLF silently disables the anchored regexes in the
    # validator under test, and the failure then surfaces nowhere near its cause.
    # The BOM flag is read from the file rather than assumed: 110_WORLD_LEDGER.md
    # carries one and the sibling ledgers do not, and rewriting it without one
    # changes a byte the gate under test does not own.
    $bytes = [System.IO.File]::ReadAllBytes($Path)
    $hasBom = ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF)
    [System.IO.File]::WriteAllText($Path, $text.Replace($Find, $Replace), [System.Text.UTF8Encoding]::new($hasBom))
}

function Assert-Contains {
    param([string]$Haystack, [string]$Needle, [string]$Because)
    if ($Haystack -notlike "*$Needle*") {
        Write-Output "  - $Because"
        Write-Output "      expected to find: $Needle"
        $script:failures++
    }
}

$ledgerRelative = 'campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md'

# --- Leg 0: the live repository is clean on this gate ------------------------
# If the live tree already fails, every mutation leg below would "pass" for the
# wrong reason.
$live = Invoke-Validator -Root $repositoryRoot
if ($live.Output -like '*standing_world_reactions*') {
    Write-Output "  - The live repository already trips the standing_world_reactions gate; the mutation legs below cannot be trusted."
    Write-Output $live.Output
    $failures++
}

# --- Leg 1: a counter that stopped advancing -------------------------------
# The exact defect this gate exists for. jiu_valley_public_reaction started
# 2026-09-10 and campaign_time is 2026-09-14, so day 4 is correct and day 3 is
# the tick that was never run.
$behindRoot = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $behindRoot $ledgerRelative) `
    -Find "started: `"2026-09-10 (the kill itself, EVT-000905)`"`n    day: 4" `
    -Replace "started: `"2026-09-10 (the kill itself, EVT-000905)`"`n    day: 3"
$behind = Invoke-Validator -Root $behindRoot
if ($behind.ExitCode -eq 0) {
    Write-Output "  - Expected a stale day counter to fail validation, and it passed."
    $failures++
}
Assert-Contains -Haystack $behind.Output -Needle 'jiu_valley_public_reaction' `
    -Because "A stale counter must name the key that stopped advancing."
Assert-Contains -Haystack $behind.Output -Needle 'tick advance(s) were never made' `
    -Because "A stale counter must say that ticks were missed, not merely that a number disagrees."

# --- Leg 2: a counter advanced past the campaign clock ----------------------
# The opposite error, and a real one: a Runtime catching up a backlog by writing
# the number it wishes were true rather than running the ticks.
$aheadRoot = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $aheadRoot $ledgerRelative) `
    -Find "started: `"2026-08-23 (the E-Rank -> S-Rank reclassification at BGM Region V)`"`n    day: 22" `
    -Replace "started: `"2026-08-23 (the E-Rank -> S-Rank reclassification at BGM Region V)`"`n    day: 40"
$ahead = Invoke-Validator -Root $aheadRoot
if ($ahead.ExitCode -eq 0) {
    Write-Output "  - Expected a counter ahead of campaign_time to fail validation, and it passed."
    $failures++
}
Assert-Contains -Haystack $ahead.Output -Needle 'pendragon_public_profile' `
    -Because "A counter ahead of the clock must name its key."
Assert-Contains -Haystack $ahead.Output -Needle 'has not reached' `
    -Because "A counter ahead of the clock must say the campaign has not reached that day."

# --- Leg 3: an entry with no day counter ------------------------------------
# The counter is the whole mechanism; an entry without one is scenery.
$noDayRoot = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noDayRoot $ledgerRelative) `
    -Find "started: `"2026-08-26 (the level-100 crossing, EVT-000751)`"`n    day: 19`n    interacts_with: OBJ-60, OBJ-61" `
    -Replace "started: `"2026-08-26 (the level-100 crossing, EVT-000751)`"`n    interacts_with: OBJ-60, OBJ-61"
$noDay = Invoke-Validator -Root $noDayRoot
if ($noDay.ExitCode -eq 0) {
    Write-Output "  - Expected an entry with no day counter to fail validation, and it passed."
    $failures++
}
Assert-Contains -Haystack $noDay.Output -Needle 'the_unnecessary_trade' `
    -Because "An entry with no day counter must name itself."

# --- Leg 4: an entry with no started date -----------------------------------
# A thread with no start cannot be shown to have advanced.
$noStartRoot = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noStartRoot $ledgerRelative) `
    -Find "started: `"2026-08-26 (the level-100 crossing, EVT-000751)`"`n    day: 19`n    interacts_with: district_pressure" `
    -Replace "started: `"the level-100 crossing, EVT-000751`"`n    day: 19`n    interacts_with: district_pressure"
$noStart = Invoke-Validator -Root $noStartRoot
if ($noStart.ExitCode -eq 0) {
    Write-Output "  - Expected an entry with no parseable started date to fail validation, and it passed."
    $failures++
}
Assert-Contains -Haystack $noStart.Output -Needle 'the_thinning' `
    -Because "An entry with no started date must name itself."

foreach ($path in $temporaryRoots) {
    Remove-Item -LiteralPath $path -Recurse -Force -ErrorAction SilentlyContinue
}

if ($failures -gt 0) {
    Write-Output "Standing world reactions gate: $failures assertion(s) failed."
    exit 1
}

Write-Output "Standing world reactions gate: PASSED (4 mutation legs, live tree clean)."
exit 0
