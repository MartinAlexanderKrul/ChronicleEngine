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

# Every leg below finds its anchor in the live telemetry block BY PROPERTY and
# mutates that. They were pinned to literal values -- a 2026-09-14 timestamp,
# two named NPCs and a count of 5/9 -- and each save that re-audited the block
# broke them, which is the "fixtures select by property, never by live value"
# rule this suite now follows.
$liveState = [System.IO.File]::ReadAllText((Join-Path $repositoryRoot $state)).Replace("`r`n", "`n")
$block = [regex]::Match($liveState, '(?ms)^narration_telemetry:\n.*?(?=^\S|\z)').Value
if ([string]::IsNullOrEmpty($block)) { throw "Test precondition failed: no narration_telemetry block in $state." }
function Get-Anchor {
    param([string]$Pattern, [string]$What)
    $m = [regex]::Match($block, $Pattern)
    if (-not $m.Success) { throw "Test precondition failed: the live narration_telemetry block has no $What." }
    return $m
}
$rows = @([regex]::Matches($block, '(?ms)^    - ent: .*?(?=^    - ent: |\z)'))
if ($rows.Count -lt 2) { throw "Test precondition failed: fewer than two npc_play rows; the convergence leg needs two." }

# --- Leg 1: a span played and never audited ---------------------------------
# The case the whole block exists to make impossible. `as_of` is not unique in
# this file -- trigger_telemetry carries one too -- so the anchor includes the
# key above it. That non-uniqueness is also why the gate scopes itself to the
# block rather than searching the file.
$asOf = Get-Anchor '^narration_telemetry:\n  as_of: "[^"]+"' "as_of"
$stale = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $stale $state) `
    -Find $asOf.Value `
    -Replace "narration_telemetry:`n  as_of: `"2026-07-01T06:00:00-05:00`""
Assert-Rejected -Name "narration telemetry behind campaign_time" -Needle "never audited" -Result (Invoke-Validator -Root $stale)

# --- Leg 2: F-066 made mechanical -------------------------------------------
# An NPC that only ever asks is an interface, not a person. The original
# complaint was accumulation across a scene that nothing counted.
$asking = Get-Anchor '(?m)^      questions_at_protagonist: [1-9]\d*\n      own_initiative: [1-9]\d*$' "row that both asks and initiates"
$noInitiative = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noInitiative $state) `
    -Find $asking.Value `
    -Replace ($asking.Value -replace 'own_initiative: \d+$', 'own_initiative: 0')
Assert-Rejected -Name "a speaking NPC with no beat of its own" -Needle "not a person" -Result (Invoke-Validator -Root $noInitiative)

# --- Leg 3: F-061 made mechanical -------------------------------------------
# Two loaded NPCs are never interchangeable. Convergence caught where it happens:
# the second row is given the first row's own tell.
$firstTell = [regex]::Match($rows[0].Value, '(?m)^      voice_tell: ".*"$').Value
$secondTell = [regex]::Match($rows[1].Value, '(?m)^      voice_tell: ".*"$').Value
if (-not $firstTell -or -not $secondTell -or $firstTell -eq $secondTell) { throw "Test precondition failed: the first two npc_play rows do not carry two distinct voice tells." }
$sameTell = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $sameTell $state) -Find $rows[1].Value -Replace $rows[1].Value.Replace($secondTell, $firstTell)
Assert-Rejected -Name "two NPCs sharing one voice tell" -Needle "never interchangeable" -Result (Invoke-Validator -Root $sameTell)

# --- Leg 4: F-041 made mechanical -------------------------------------------
# The check that keeps being skipped because skipping is cheaper.
$loaded = Get-Anchor '(?m)^      name: ".*"\n      record_loaded_before_first_line: true$' "row recorded as loaded"
$notLoaded = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $notLoaded $state) `
    -Find $loaded.Value `
    -Replace ($loaded.Value -replace 'true$', 'false')
Assert-Rejected -Name "an NPC played without its record loaded" -Needle "without its record loaded" -Result (Invoke-Validator -Root $notLoaded)

# --- Leg 5: a breach recorded with no account of it -------------------------
# The live block's breach_note is replaced along with the count, so the gate
# sees breaches and nothing that accounts for them.
$breaches = Get-Anchor '(?m)^  runtime_voice_breaches: \d+[^\n]*\n  breach_note: "[^\n]*"$' "breach count with its note"
$noNote = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noNote $state) `
    -Find $breaches.Value `
    -Replace "  runtime_voice_breaches: 2"
Assert-Rejected -Name "a voice breach with no breach_note" -Needle "no account of it" -Result (Invoke-Validator -Root $noNote)

# --- Leg 6: a required count deleted ----------------------------------------
# The count IS the intervention, so its absence has to fail.
$deferred = Get-Anchor '(?m)^  world_answers_deferred: \d+' "world_answers_deferred count"
$noCount = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noCount $state) `
    -Find $deferred.Value `
    -Replace ($deferred.Value -replace 'world_answers_deferred', 'world_answers_noted')
Assert-Rejected -Name "a missing required count" -Needle "the count is the intervention" -Result (Invoke-Validator -Root $noCount)

# --- Leg 7: a row with no voice tell ----------------------------------------
$noTell = New-RepositoryCopy
Edit-FixtureFile -Path (Join-Path $noTell $state) -Find $rows[0].Value -Replace $rows[0].Value.Replace($firstTell, '      voice_note: "no tell recorded"')
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
