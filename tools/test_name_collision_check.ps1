[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$check = Join-Path $PSScriptRoot "check_name_collision.ps1"
$repositoryValidator = Join-Path $PSScriptRoot "validate_repository.ps1"
$configValidator = Join-Path $PSScriptRoot "validate_runtime_configuration.ps1"
$campaign = "gatefall_pendragon_001"

# Why this test exists
#
# F-009's fix put the only mechanical name check at the Repository Validation
# Barrier, which runs at a durability boundary. Two consequences followed, and
# both are what this suite pins.
#
# First, the check fires after the name is in play. EVT-000280 records the
# artificer's name being corrected from "Reyes" to "Marnie" inside the fiction,
# because nothing checked before it was spoken.
#
# Second, the check does not cover the case that raised it: "Reyes" against
# ENT-000134 Ada Reyes is a PARTIAL match, and the barrier deliberately does not
# adjudicate those. That deliberation is correct and must survive -- ENT-000126
# Tanya Voss and ENT-000128 Elias Voss are siblings, both live in this campaign,
# and a barrier that failed on a shared surname would reject correct canon on
# its first run. So the partial case must stay REVIEW, at every layer, forever.
# Legs 6 and 7 exist to fail if it ever hardens into a rejection.
#
# The load-bearing property is agreement: BLOCKED must mean "the barrier will
# reject this", not "this script thinks so". Leg 8 proves it by mutating an
# isolated copy of the real repository and asserting the REAL validator's
# verdict on its durable message text. A gate whose firing has never been
# demonstrated is indistinguishable from one that cannot fire.
#
# Keep this file ASCII-only. Windows PowerShell 5.1 reads a BOM-less .ps1 as
# ANSI, so a literal em dash in a pattern never matches the UTF-8 file it is
# tested against.

$failures = [System.Collections.Generic.List[string]]::new()

function Invoke-Check {
    param([string]$Name, [string]$RepositoryRoot, [string]$CampaignName)

    if (-not $RepositoryRoot) { $RepositoryRoot = $root }
    if (-not $CampaignName) { $CampaignName = $campaign }

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $check `
        -Campaign $CampaignName -Name $Name -Root $RepositoryRoot 2>&1 |
        ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output   = ($output -join "`n")
    }
}

function Assert-Verdict {
    param(
        [string]$Leg,
        [string]$Name,
        [string]$Verdict,
        [int]$ExitCode,
        [string]$Mentions,
        [string]$RepositoryRoot,
        [string]$CampaignName
    )

    $result = Invoke-Check -Name $Name -RepositoryRoot $RepositoryRoot -CampaignName $CampaignName
    if ($result.ExitCode -ne $ExitCode) {
        $failures.Add("$Leg : `"$Name`" exited $($result.ExitCode), expected $ExitCode.`n$($result.Output)") | Out-Null
        return
    }
    if ($result.Output -notmatch "^$Verdict") {
        $failures.Add("$Leg : `"$Name`" did not return $Verdict.`n$($result.Output)") | Out-Null
        return
    }
    if ($Mentions -and $result.Output -notmatch [regex]::Escape($Mentions)) {
        $failures.Add("$Leg : `"$Name`" returned $Verdict but never named '$Mentions'.`n$($result.Output)") | Out-Null
    }
}

function Copy-FixtureRepository {
    param([string]$Destination)

    # campaigns, system and worlds -- the fixture surface every suite in this
    # directory uses. tools/ is deliberately absent: copying it would switch on
    # the generator -Check gates inside validate_repository.ps1, which then fail
    # on an unsynchronized index in a partial copy rather than on anything under
    # test. The declared tool is resolved against the engine's own installation
    # for exactly that reason.
    New-Item -ItemType Directory -Path $Destination | Out-Null
    foreach ($name in @("system", "worlds", "campaigns")) {
        Copy-Item -LiteralPath (Join-Path $root $name) -Destination $Destination -Recurse
    }
}

# UTF-8 without a BOM, and whatever endings the replacement carries. A whole-file
# rewrite that flips LF to CRLF or prepends a BOM silently disables anchored
# checks in the validator under test, and the failure then surfaces nowhere near
# its cause.
function Set-FileText {
    param([string]$Path, [string]$Text)
    [System.IO.File]::WriteAllText($Path, $Text, (New-Object System.Text.UTF8Encoding($false)))
}

function Edit-Ledger {
    param([string]$RepositoryRoot, [string]$Find, [string]$Replace)

    $path = Join-Path $RepositoryRoot "campaigns/$campaign/130_NPCS_AND_FACTIONS.md"
    $text = Get-Content -LiteralPath $path -Raw
    if (-not $text.Contains($Find)) {
        throw "Fixture precondition failed: the ledger does not contain the anchor being replaced."
    }
    Set-FileText $path ([regex]::Replace($text, [regex]::Escape($Find), $Replace.Replace('$', '$$'), 1))
}

$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-name-collision-" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $tempRoot | Out-Null

try {
    # --- Leg 1: the exact collision is BLOCKED ------------------------------
    # This is what the barrier already rejects. Catching it here is the whole
    # point of the change: the same rejection, before the player reads the name.
    Assert-Verdict -Leg 'N-A exact campaign collision' -Name 'Ada Reyes' `
        -Verdict 'BLOCKED' -ExitCode 2 -Mentions 'ENT-000134'

    # A short alias recorded as a current name counts the same. ENT-000127
    # carries both "Marcus Aldridge" and "Marcus", and a second live Marcus is
    # the same defect as a second live Marcus Aldridge.
    Assert-Verdict -Leg 'N-B exact collision on a short current alias' -Name 'Marcus' `
        -Verdict 'BLOCKED' -ExitCode 2 -Mentions 'ENT-000127'

    # --- Leg 2: the F-009 case itself --------------------------------------
    # The defect that raised the flag. The barrier does not catch this and is
    # not being asked to. If this leg ever returns OK, the naming-time check has
    # stopped covering the case it was built for.
    Assert-Verdict -Leg 'N-C the F-009 case' -Name 'Reyes' `
        -Verdict 'REVIEW' -ExitCode 1 -Mentions 'ENT-000134'

    # --- Leg 3: a clean name passes ----------------------------------------
    # A check that never says OK is a check nobody will run twice.
    #
    # The control name is fixture data and has to stay outside the campaign's
    # own namespace, because live play keeps moving into it. This leg was
    # 'Marnie Sokolov' until the Gatefall campaign authored `ENT-000189`
    # "Marnie" on 2026-08-11, at which point the control shared a token with
    # live canon and the leg failed on its own fixture rather than on the
    # checker -- the F-009 shape, landing on the suite built to catch it.
    # Prefer a name with no token any roster is likely to reach.
    Assert-Verdict -Leg 'N-D clean name' -Name 'Wrenfield Ashgrove' `
        -Verdict 'OK' -ExitCode 0

    # --- Leg 4: honorifics are not identity ---------------------------------
    # "Dr. Sarah Chen" is live. If a title token counted, every authored doctor
    # in the campaign would come back REVIEW and the verdict would be noise.
    Assert-Verdict -Leg 'N-E honorific is not a collision' -Name 'Dr. James Wu' `
        -Verdict 'OK' -ExitCode 0

    # --- Leg 5: an unknown campaign is an error, not a pass -----------------
    # Answering OK for a campaign that does not exist would be the worst
    # possible failure mode: a clean verdict from a check that read nothing.
    $missing = Invoke-Check -Name 'Anyone' -CampaignName 'no_such_campaign_here'
    if ($missing.ExitCode -ne 3) {
        $failures.Add("N-F unknown campaign: expected exit 3, got $($missing.ExitCode).`n$($missing.Output)") | Out-Null
    }

    # --- Leg 6: the sibling surname stays a judgment -------------------------
    # ENT-000126 Tanya Voss and ENT-000128 Elias Voss are siblings and both live.
    # This must be REVIEW. If it is ever BLOCKED, the check has begun rejecting
    # correct canon, which is precisely what F-009 refused to let the barrier do.
    Assert-Verdict -Leg 'N-G sibling surname stays REVIEW' -Name 'Voss' `
        -Verdict 'REVIEW' -ExitCode 1 -Mentions 'ENT-000128'

    # --- Leg 7: the cross-scope exact match stays a judgment -----------------
    # "Naomi Okafor" is a world Notable Figure; the barrier's F-009 check
    # iterates campaign directories only and will never see her. Reporting this
    # as BLOCKED would claim a rejection that does not happen, and the verdict is
    # only worth anything while it means exactly one thing.
    Assert-Verdict -Leg 'N-H world-scope exact stays REVIEW' -Name 'Naomi Okafor' `
        -Verdict 'REVIEW' -ExitCode 1 -Mentions 'worlds/gatefall/220_NOTABLE_FIGURES.md'

    # --- Leg 8: BLOCKED agrees with the real barrier -------------------------
    #
    # The load-bearing leg. A second live entity is given ENT-000134's current
    # name inside an isolated copy -- the minimal mutation that reproduces F-009
    # without allocating an identifier -- and two things are then required of the
    # same state: the check calls it BLOCKED, and the REAL repository validator
    # rejects it by name. Asserting only the first would prove the script agrees
    # with itself.
    $agree = Join-Path $tempRoot "agreement"
    Copy-FixtureRepository $agree
    Edit-Ledger -RepositoryRoot $agree `
        -Find "aliases:`n  - name: `"Dale Pruitt`"`n    quality: current" `
        -Replace "aliases:`n  - name: `"Dale Pruitt`"`n    quality: current`n  - name: `"Ada Reyes`"`n    quality: current"

    Assert-Verdict -Leg 'N-I agreement, check side' -Name 'Ada Reyes' `
        -Verdict 'BLOCKED' -ExitCode 2 -Mentions 'ENT-000135' -RepositoryRoot $agree

    $barrier = & powershell -NoProfile -ExecutionPolicy Bypass -File $repositoryValidator `
        -RepositoryRoot $agree -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    $barrierExit = $LASTEXITCODE
    $barrierOutput = ($barrier -join "`n")
    if ($barrierExit -eq 0) {
        $failures.Add("N-I agreement, barrier side: the validator accepted two live entities sharing a current name. BLOCKED no longer means the barrier rejects it.") | Out-Null
    } elseif ($barrierOutput -notmatch 'may not answer to the same full name') {
        $failures.Add("N-I agreement, barrier side: rejected, but not for the F-009 reason.`n$barrierOutput") | Out-Null
    }

    # --- Leg 9: a former alias is not a live name ---------------------------
    # A name colliding with a PREVIOUS name is how identity continuity records a
    # rename, so the barrier exempts it and this check must exempt it too. The
    # fixture adds a name the campaign has never used, as a former alias only:
    # if the quality filter were dropped, this would come back BLOCKED.
    $former = Join-Path $tempRoot "former"
    Copy-FixtureRepository $former
    Edit-Ledger -RepositoryRoot $former `
        -Find "aliases:`n  - name: `"Dale Pruitt`"`n    quality: current" `
        -Replace "aliases:`n  - name: `"Dale Pruitt`"`n    quality: current`n  - name: `"Adalyn Vance`"`n    quality: former"

    Assert-Verdict -Leg 'N-J former alias is not live' -Name 'Adalyn Vance' `
        -Verdict 'OK' -ExitCode 0 -RepositoryRoot $former

    # --- Leg 10: a retired entity is not a live name ------------------------
    # Same exemption, the other axis. The barrier skips retired entities, so a
    # retired entity's name is free for reuse and this check must not claim
    # otherwise. Only the check runs here: retiring a live Character is a
    # presence-invariant question the barrier answers separately and that is not
    # what this leg is about.
    $retired = Join-Path $tempRoot "retired"
    Copy-FixtureRepository $retired
    $retiredLedger = Join-Path $retired "campaigns/$campaign/130_NPCS_AND_FACTIONS.md"
    $retiredText = Get-Content -LiteralPath $retiredLedger -Raw
    $dalePattern = '(?s)(id: ENT-000135.*?)status: active'
    if ($retiredText -notmatch $dalePattern) {
        throw "Fixture precondition failed: ENT-000135 does not carry status: active."
    }
    Set-FileText $retiredLedger ([regex]::Replace($retiredText, $dalePattern, '$1status: retired', 1))

    Assert-Verdict -Leg 'N-K retired entity is not live' -Name 'Dale Pruitt' `
        -Verdict 'OK' -ExitCode 0 -RepositoryRoot $retired

    # --- Leg 11: the declaration cannot rot ---------------------------------
    #
    # The check is declared in the campaign's startup configuration so that it is
    # addressed rather than remembered. A declaration nothing verifies decays
    # exactly like every other piece of operational metadata in this repository
    # that no gate reads (postmortem Finding 4), so the config validator must
    # reject a declaration whose sources have moved.
    $configCases = @(
        @{ Leg = 'N-L tool must exist'
           Find = 'tool: tools/check_name_collision.ps1'
           Replace = 'tool: tools/check_name_collision_renamed.ps1'
           Expect = 'tool does not exist' }
        @{ Leg = 'N-M ledger must exist'
           Find = "ledger: campaigns/$campaign/130_NPCS_AND_FACTIONS.md"
           Replace = "ledger: campaigns/$campaign/131_NPCS_AND_FACTIONS.md"
           Expect = 'ledger does not exist' }
        @{ Leg = 'N-N sources must be authoritative'
           Find = '  - worlds/gatefall/220_NOTABLE_FIGURES.md'
           Replace = '  - worlds/gatefall/230_KNOWLEDGE_SUBJECTS.md'
           Expect = 'world_ledger is absent from required_sources' }
        @{ Leg = 'N-O a declaration states its purpose'
           Find = '    reason: "run before a freshly authored'
           Replace = '    unreason: "run before a freshly authored'
           Expect = 'needs a reason' }
    )

    $configIndex = 0
    foreach ($case in $configCases) {
        $configIndex++
        $configRoot = Join-Path $tempRoot "config$configIndex"
        Copy-FixtureRepository $configRoot

        $startupPath = Join-Path $configRoot "campaigns/$campaign/090_CAMPAIGN_STARTUP.md"
        $startupText = Get-Content -LiteralPath $startupPath -Raw
        if (-not $startupText.Contains($case.Find)) {
            throw "Fixture precondition failed for $($case.Leg): '$($case.Find)' is absent from the startup config."
        }
        Set-FileText $startupPath ([regex]::Replace(
            $startupText, [regex]::Escape($case.Find), $case.Replace.Replace('$', '$$'), 1))

        $configOutput = & powershell -NoProfile -ExecutionPolicy Bypass -File $configValidator `
            -RepositoryRoot $configRoot 2>&1 | ForEach-Object { $_.ToString() }
        $configExit = $LASTEXITCODE
        $configText = ($configOutput -join "`n")

        if ($configExit -eq 0) {
            $failures.Add("$($case.Leg): the configuration validator accepted a declaration it should reject.") | Out-Null
        } elseif ($configText -notmatch [regex]::Escape($case.Expect)) {
            $failures.Add("$($case.Leg): rejected, but not for the authored reason. Expected '$($case.Expect)'. Got:`n$configText") | Out-Null
        }
    }

    # --- Leg 12: the obligation is sited where it fires ---------------------
    #
    # Decision 055 again: the Runtime document is fetched material, and a
    # fetched-only guardrail does not fire. The naming failure happens at
    # narration time, so the instruction has to be on the card held every turn.
    $resident = Get-Content -LiteralPath (Join-Path $root "docs/AI_GAMEPLAY_RESIDENT_CORE.md") -Raw
    if ($resident -notmatch 'check_name_collision\.ps1') {
        $failures.Add("N-P resident siting: the per-turn card no longer names the check, so nothing runs it at narration time.") | Out-Null
    }
    if ($resident -notmatch 'BLOCKED' -or $resident -notmatch 'REVIEW') {
        $failures.Add("N-Q resident verdicts: the card no longer says what to do with each verdict, which is the whole instruction.") | Out-Null
    }

    $runtime = Get-Content -LiteralPath (Join-Path $root "engine/012_ENGINE_RUNTIME.md") -Raw
    if ($runtime -notmatch 'before the name is spoken, not at the durability boundary') {
        $failures.Add("N-R runtime siting: Section 1.4 no longer states that the check precedes the name rather than the save.") | Out-Null
    }
    if ($runtime -notmatch 'it still does not adjudicate the partial one') {
        $failures.Add("N-S barrier scope: Section 1.4 no longer preserves the barrier's refusal to adjudicate a partial collision.") | Out-Null
    }
} finally {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
}

if ($failures.Count -gt 0) {
    Write-Host "Name collision check FAILED ($($failures.Count) leg(s))" -ForegroundColor Red
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

Write-Host "Name collision check PASSED (19 legs)"
# Explicit, because the legs above shell out to validators that exit non-zero by
# design; without this the suite would report its own success with their code.
exit 0
