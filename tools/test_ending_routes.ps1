# Ending routes -- the state-selects-the-ending gate
#
# `ending_routes` exists so a campaign's final choice is decided by state the
# player moved, not by whichever last scene reads best when the grading bar
# reaches 100. That is F-034's lesson at the largest scale: a world that only
# moves when pushed is indistinguishable from one that is not running, and an
# ending chosen by narrative taste at the barrier is that failure in its purest
# form.
#
# The construct only holds if the block cannot rot, so validate_repository.ps1
# checks it and this file proves those checks fire. A gate that has never been
# shown to fail is not a gate.
#
# It never touches live files. New-RepositoryCopy clones system/, worlds/ and
# campaigns/ into a temp root and every mutation happens there, matching
# tools/test_validate_repository.ps1 and tools/test_standing_world_reactions.ps1.
# tools/ is deliberately not copied, so the generator -Check gates stay off.
#
# Patterns are ASCII only. These files are UTF-8 and Windows PowerShell 5.1
# decodes them as ANSI, so a literal em-dash silently never matches and the
# assertion passes vacuously.

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot 'validate_repository.ps1'
$failures = 0
$temporaryRoots = [System.Collections.Generic.List[string]]::new()

function Invoke-Validator {
    param([string]$Root)
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator -RepositoryRoot $Root 2>&1 |
        ForEach-Object { $_.ToString() }
    return [pscustomobject]@{ ExitCode = $LASTEXITCODE; Output = ($output -join "`n") }
}

function New-RepositoryCopy {
    $destination = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-endings-" + [guid]::NewGuid().ToString("N"))
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
    # Anchors are authored with LF for readability; the working tree is CRLF on a
    # Windows checkout while HEAD stores LF. Adopt whatever the file holds, or the
    # leg throws "the live file moved" for a reason unrelated to the gate.
    if ($text.Contains("`r`n")) {
        $Find = $Find.Replace("`r`n", "`n").Replace("`n", "`r`n")
        $Replace = $Replace.Replace("`r`n", "`n").Replace("`n", "`r`n")
    }
    if (-not $text.Contains($Find)) {
        throw "Fixture anchor not found in $Path -- the live file moved and this leg is no longer testing what it claims."
    }
    $occurrences = ([regex]::Matches($text, [regex]::Escape($Find))).Count
    if ($occurrences -ne 1) {
        throw "Fixture anchor matches $occurrences times in $Path -- it must match exactly once."
    }
    $bytes = [System.IO.File]::ReadAllBytes($Path)
    $hasBom = ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF)
    [System.IO.File]::WriteAllText($Path, $text.Replace($Find, $Replace), [System.Text.UTF8Encoding]::new($hasBom))
}

function Assert-Rejected {
    param([string]$Name, [string]$Needle, [pscustomobject]$Result)
    if ($Result.ExitCode -eq 0) {
        Write-Output "  - Expected $Name to fail validation, and it passed."
        $script:failures++
        return
    }
    if ($Result.Output -notlike "*$Needle*") {
        Write-Output "  - $Name failed, but not for the stated reason."
        Write-Output "      expected to find: $Needle"
        $script:failures++
    }
}

$ledger = 'campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md'

# --- Leg 0: the live tree is clean on this gate ------------------------------
$live = Invoke-Validator -Root $repositoryRoot
if ($live.Output -like '*ending route*' -or $live.Output -like '*ending_routes*') {
    Write-Output "  - The live repository already trips the ending-routes gate; the legs below cannot be trusted."
    Write-Output $live.Output
    $failures++
}

# --- Leg 1: a status outside the closed vocabulary --------------------------
# The quiet way this construct dies: a route retyped to something plausible that
# nothing reads, so it is never offered and never noticed.
$badStatus = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $badStatus $ledger) `
    -Find "  - route: unmaking`n    ending: `"Sevrin's plan, finally testable: end the process so no world is graded again.`"`n    gate: `"sevrin_seam_map complete`"`n    status: open" `
    -Replace "  - route: unmaking`n    ending: `"Sevrin's plan, finally testable: end the process so no world is graded again.`"`n    gate: `"sevrin_seam_map complete`"`n    status: maybe"
Assert-Rejected -Name "a route with an unknown status" -Needle "is not one of" -Result (Invoke-Validator -Root $badStatus)

# --- Leg 2: a route with no gate -------------------------------------------
# A route with no condition is available always, which is the whole defect.
$noGate = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noGate $ledger) `
    -Find "    gate: `"grading_state.read_pct >= 100`"`n    status: default" `
    -Replace "    status: default"
Assert-Rejected -Name "a route with no gate" -Needle "declares no gate" -Result (Invoke-Validator -Root $noGate)

# --- Leg 3: work done, ending never became reachable ------------------------
# The silent-drift case this block exists for: the player spent the expeditions
# and the route did not open.
$pastGate = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $pastGate $ledger) `
    -Find "      progress: 24`n      required: 36" `
    -Replace "      progress: 40`n      required: 36"
Assert-Rejected -Name "a progress counter past its own requirement" -Needle "was never settled" -Result (Invoke-Validator -Root $pastGate)

# --- Leg 4: the selection rule deleted --------------------------------------
# Without it nothing states that state selects rather than the Runtime, and the
# block degrades into four labels a narrator may pick from.
$noRule = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noRule $ledger) `
    -Find "  selection_rule:" `
    -Replace "  selection_note:"
Assert-Rejected -Name "ending_routes with no selection_rule" -Needle "declares no selection_rule" -Result (Invoke-Validator -Root $noRule)

# --- Leg 5: an impossible grading percentage --------------------------------
$badPct = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $badPct $ledger) `
    -Find "  read_pct: 94" `
    -Replace "  read_pct: 140"
Assert-Rejected -Name "a grading percentage outside 0-100" -Needle "is not a reading" -Result (Invoke-Validator -Root $badPct)

foreach ($path in $temporaryRoots) {
    Remove-Item -LiteralPath $path -Recurse -Force -ErrorAction SilentlyContinue
}

if ($failures -gt 0) {
    Write-Output "Ending routes gate: $failures assertion(s) failed."
    exit 1
}

Write-Output "Ending routes gate: PASSED (5 mutation legs, live tree clean)."
exit 0
