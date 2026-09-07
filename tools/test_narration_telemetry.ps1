# Narration telemetry -- the count-it-instead-of-forbidding-it gate (F-072)
#
# Nine flags described one failure and every remedy was a prohibition added to
# the Resident Core. Every one recurred. F-012, F-033 and F-034 each learned the
# same lesson about mechanical obligations and each was fixed by converting the
# obligation into state something reads; this gate is that, for narration.
#
# So the gate itself must not be another thing that quietly stops firing. Every
# rule it enforces is mutation-tested here. Two of the three gates written this
# session initially passed vacuously -- one anchored on a key that carries a
# trailing comment, one required an integer that carries a trailing comment --
# and only a mutation leg caught either.
#
# It never touches live files. New-RepositoryCopy clones system/, worlds/ and
# campaigns/ into a temp root and every mutation happens there.
#
# Patterns are ASCII only: these files are UTF-8 and Windows PowerShell 5.1
# decodes them as ANSI, so a literal em-dash silently never matches.

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
    $destination = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-narration-" + [guid]::NewGuid().ToString("N"))
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

$state = 'campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md'

# --- Leg 0: the live tree is clean ------------------------------------------
$live = Invoke-Validator -Root $repositoryRoot
if ($live.Output -like '*narration_telemetry*') {
    Write-Output "  - The live repository already trips the narration gate; the legs below cannot be trusted."
    Write-Output $live.Output
    $failures++
}

# --- Leg 1: a span played and never audited ---------------------------------
# The case the whole block exists to make impossible.
$stale = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $stale $state) `
    -Find "narration_telemetry:`n  as_of: `"2026-09-14T11:39:00-05:00`"" `
    -Replace "narration_telemetry:`n  as_of: `"2026-09-01T06:00:00-05:00`""
# `as_of` is not unique in this file -- trigger_telemetry carries one at the same
# timestamp -- so the anchor includes the key above it. That non-uniqueness is
# also why the gate scopes itself to the block rather than searching the file.
Assert-Rejected -Name "narration telemetry behind campaign_time" -Needle "never audited" -Result (Invoke-Validator -Root $stale)

# --- Leg 2: F-066 made mechanical -------------------------------------------
# An NPC that only ever asks is an interface, not a person. The original
# complaint was accumulation across a scene that nothing counted.
$noInitiative = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noInitiative $state) `
    -Find "      questions_at_protagonist: 5`n      own_initiative: 9" `
    -Replace "      questions_at_protagonist: 5`n      own_initiative: 0"
Assert-Rejected -Name "a speaking NPC with no beat of its own" -Needle "not a person" -Result (Invoke-Validator -Root $noInitiative)

# --- Leg 3: F-061 made mechanical -------------------------------------------
# Two loaded NPCs are never interchangeable. Convergence caught where it happens.
$sameTell = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $sameTell $state) `
    -Find '      voice_tell: "managerial and incurious; speaks near him rather than to him, and does not wait for an answer"' `
    -Replace '      voice_tell: "answers procedurally, in the register of someone filing rather than arguing; never defends the work, never raises her voice"'
Assert-Rejected -Name "two NPCs sharing one voice tell" -Needle "never interchangeable" -Result (Invoke-Validator -Root $sameTell)

# --- Leg 4: F-041 made mechanical -------------------------------------------
# The check that keeps being skipped because skipping is cheaper.
$notLoaded = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $notLoaded $state) `
    -Find "      name: `"the Auditor, once Wren Solane`"`n      record_loaded_before_first_line: true" `
    -Replace "      name: `"the Auditor, once Wren Solane`"`n      record_loaded_before_first_line: false"
Assert-Rejected -Name "an NPC played without its record loaded" -Needle "without its record loaded" -Result (Invoke-Validator -Root $notLoaded)

# --- Leg 5: a breach recorded with no account of it -------------------------
$noNote = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noNote $state) `
    -Find '  runtime_voice_breaches: 0 ' `
    -Replace '  runtime_voice_breaches: 2 '
Assert-Rejected -Name "a voice breach with no breach_note" -Needle "no account of it" -Result (Invoke-Validator -Root $noNote)

# --- Leg 6: a required count deleted ----------------------------------------
# The count IS the intervention, so its absence has to fail.
$noCount = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noCount $state) `
    -Find '  world_answers_deferred: 0' `
    -Replace '  world_answers_noted: 0'
Assert-Rejected -Name "a missing required count" -Needle "the count is the intervention" -Result (Invoke-Validator -Root $noCount)

# --- Leg 7: a row with no voice tell ----------------------------------------
$noTell = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noTell $state) `
    -Find '      voice_tell: "managerial and incurious; speaks near him rather than to him, and does not wait for an answer"' `
    -Replace '      voice_note: "managerial and incurious"'
Assert-Rejected -Name "a row naming no voice tell" -Needle "names no voice_tell" -Result (Invoke-Validator -Root $noTell)

foreach ($path in $temporaryRoots) {
    Remove-Item -LiteralPath $path -Recurse -Force -ErrorAction SilentlyContinue
}

if ($failures -gt 0) {
    Write-Output "Narration telemetry gate: $failures assertion(s) failed."
    exit 1
}

Write-Output "Narration telemetry gate: PASSED (7 mutation legs, live tree clean)."
exit 0
