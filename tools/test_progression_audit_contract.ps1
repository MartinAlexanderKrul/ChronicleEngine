[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
$tempRoot = Join-Path (Join-Path $root "tmp") ("progression-audit-" + [guid]::NewGuid().ToString("N"))
$utf8 = [System.Text.UTF8Encoding]::new($false)

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw $Message }
}

function Get-Text {
    param([string]$Path)
    return [System.IO.File]::ReadAllText($Path)
}

function Set-Text {
    param([string]$Path, [string]$Text)
    [System.IO.File]::WriteAllText($Path, $Text, $utf8)
}

function Replace-Once {
    param([string]$Path, [string]$Old, [string]$New)
    $text = Get-Text $Path
    $count = ([regex]::Matches($text, [regex]::Escape($Old))).Count
    Assert-True ($count -eq 1) "Mutation precondition drifted in $Path for: $Old (found $count)"
    Set-Text $Path $text.Replace($Old, $New)
}

# These fixtures are DERIVED from live state, never hardcoded. Counter values, the registry
# high-water mark, and the chronicle's subject list all advance with ordinary play, so pinning
# them to a snapshot makes this contract fail after every session for reasons unrelated to the
# invariant under test. Each helper below reads the current value and mutates relative to it.
function Get-CounterLine {
    param([string]$Path, [string]$CounterPath)
    $text = Get-Text $Path
    $pattern = '- \{ path: ' + [regex]::Escape($CounterPath) + ', baseline_value: (\d+), baseline_as_of: (EVT-\d{6}), current_value: (\d+) \}'
    $matches = [regex]::Matches($text, $pattern)
    Assert-True ($matches.Count -eq 1) "Expected exactly one '$CounterPath' counter in $Path (found $($matches.Count))."
    $m = $matches[0]
    return [pscustomobject]@{
        Line     = $m.Value
        Baseline = [int]$m.Groups[1].Value
        AsOf     = $m.Groups[2].Value
        Current  = [int]$m.Groups[3].Value
    }
}

function New-CounterLine {
    param([pscustomobject]$Counter, [int]$Current)
    return "- { path: $($Counter.Line -replace '^- \{ path: ([^,]+),.*$', '$1'), baseline_value: $($Counter.Baseline), baseline_as_of: $($Counter.AsOf), current_value: $Current }"
}

function Get-RegistryHighWater {
    param([string]$Path)
    $text = Get-Text $Path
    $m = [regex]::Match($text, '\| Event \| `EVT-` \| Event \| EVT-(\d{6}) \|')
    Assert-True $m.Success "Could not read the Event high-water mark from the ID registry."
    return [int]$m.Groups[1].Value
}

function Invoke-Validation {
    param([string]$RepositoryRoot)
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $RepositoryRoot 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

try {
    New-Item -ItemType Directory -Path $tempRoot | Out-Null
    foreach ($name in @("system", "worlds", "campaigns")) {
        Copy-Item -LiteralPath (Join-Path $root $name) -Destination $tempRoot -Recurse
    }

    $character = Join-Path $tempRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
    $chronicle = Join-Path $tempRoot "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md"
    $registry = Join-Path $tempRoot "system/ID_REGISTRY.md"
    $profile = Join-Path $tempRoot "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
    $runtime = Join-Path $root "docs/AI_GAMEPLAY_RUNTIME_PROFILE.md"

    $baseline = Invoke-Validation $tempRoot
    Assert-True ($baseline.ExitCode -eq 0) "Unmodified Data Model 0.1.5 repository did not validate:`n$($baseline.Output)"
    Assert-True ((Get-Text $profile).Contains('progression-batch-settlement')) `
        "Gatefall Profile 1.26 does not preserve promotion-time non-combat progression batching."
    Assert-True ((Get-Text $profile).Contains('Promotion reconciliation.')) `
        "Gatefall Profile 1.26 does not preserve known combat-skill counter reconciliation."
    Assert-True ((Get-Text $profile).Contains('Mandatory ratification gate.')) `
        "Gatefall Profile 1.26 does not preserve the next-scene ratification gate."
    Assert-True ((Get-Text $runtime).Contains('mandatory readiness and next-scene gate')) `
        "The Save Algorithm does not preserve pending ratification as a next-scene gate."
    Assert-True ((Get-Text $runtime).Contains('re-count every known combat skill activation')) `
        "The Save Algorithm does not execute the combat-skill double-check at the promotion barrier."

    $rupture = Get-CounterLine $character 'skills.rupture.successful_uses'
    Replace-Once $character $rupture.Line (New-CounterLine $rupture ($rupture.Current + 1))
    $drift = Invoke-Validation $tempRoot
    Assert-True ($drift.ExitCode -ne 0 -and $drift.Output -like "*plus Event deltas*requires $($rupture.Current)*") `
        "Counter arithmetic drift was not rejected:`n$($drift.Output)"
    Replace-Once $character (New-CounterLine $rupture ($rupture.Current + 1)) $rupture.Line

    Replace-Once $character `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: ratified" `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: tracking"
    $threshold = Invoke-Validation $tempRoot
    Assert-True ($threshold.ExitCode -ne 0 -and $threshold.Output -like "*at least three distinct evidence references but remains tracking*") `
        "A three-scene candidate left in tracking was not rejected:`n$($threshold.Output)"
    Replace-Once $character `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: tracking" `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: ratified"

    Replace-Once $character `
        "        key: dimensional_weapon_control`n        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release`n        status: tracking`n        evidence:`n          - EVT-000069#private-summon-and-grip-drill`n          - EVT-000070#ashfield-pocket-swap-feint" `
        "        key: dimensional_weapon_control`n        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release`n        status: pending-ratification`n        evidence:`n          - EVT-000069#private-summon-and-grip-drill`n          - EVT-000070#ashfield-pocket-swap-feint`n          - EVT-000120#fixture-third-dimensional-scene"
    $authoredThreshold = Invoke-Validation $tempRoot
    Assert-True ($authoredThreshold.ExitCode -ne 0 -and $authoredThreshold.Output -like "*complete pre-authored result*requires automatic ratification*") `
        "A pre-authored three-scene candidate was allowed to remain pending:`n$($authoredThreshold.Output)"
    Replace-Once $character `
        "        key: dimensional_weapon_control`n        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release`n        status: pending-ratification`n        evidence:`n          - EVT-000069#private-summon-and-grip-drill`n          - EVT-000070#ashfield-pocket-swap-feint`n          - EVT-000120#fixture-third-dimensional-scene" `
        "        key: dimensional_weapon_control`n        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release`n        status: tracking`n        evidence:`n          - EVT-000069#private-summon-and-grip-drill`n          - EVT-000070#ashfield-pocket-swap-feint"

    # Allocate the fixture Event one past the live high-water mark, whatever it currently is.
    $highWater = Get-RegistryHighWater $registry
    $liveId = 'EVT-{0:D6}' -f $highWater
    $fixtureId = 'EVT-{0:D6}' -f ($highWater + 1)

    Replace-Once $registry "| Event | ``EVT-`` | Event | $liveId |" "| Event | ``EVT-`` | Event | $fixtureId |"
    $registryText = Get-Text $registry
    $marker = "# Allocation Invariants"
    Assert-True ($registryText.Contains($marker)) "Registry allocation marker is missing."
    $registryText = $registryText.Replace($marker, "| $fixtureId | Event | progression-audit contract fixture |`r`n`r`n---`r`n`r`n$marker")
    Set-Text $registry $registryText

    # Line-ending agnostic: the chronicle is CRLF in git but edits may land LF.
    $chronicleText = Get-Text $chronicle
    $subjectsPattern = '(  - ' + [regex]::Escape($liveId) + ')(\r?\n```)'
    $subjectsMatches = [regex]::Matches($chronicleText, $subjectsPattern)
    Assert-True ($subjectsMatches.Count -eq 1) "Expected exactly one '$liveId' at the end of the chronicle subject list (found $($subjectsMatches.Count))."
    $eol = $subjectsMatches[0].Groups[2].Value.Substring(0, $subjectsMatches[0].Groups[2].Value.Length - 3)
    Set-Text $chronicle ([regex]::Replace($chronicleText, $subjectsPattern, ('$1' + $eol + "  - $fixtureId" + '$2'), 1))
    $event = @"

---

## $fixtureId - Progression Audit Contract Fixture

``````yaml
id: $fixtureId
canonical_record: REC-000079
schema_version: "0.1.5"
status: active
provenance:
  source: session-3-gameplay
  game_date: "2026-08-04 06:01 -05:00"
  real_date: "2026-07-27"
type: Event
kind: dangerous-scene-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"
participants:
  - ENT-000125
description: "Fixture exchange."
``````
"@
    Set-Text $chronicle ((Get-Text $chronicle) + $event)

    $missingAudit = Invoke-Validation $tempRoot
    Assert-True ($missingAudit.ExitCode -ne 0 -and $missingAudit.Output -like "*has no 'gatefall.skill_formation' progression audit*") `
        "A dangerous-scene settlement without an audit was not rejected:`n$($missingAudit.Output)"

    Replace-Once $chronicle `
        'participants:
  - ENT-000125
description: "Fixture exchange."' `
        'participants:
  - ENT-000125
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
description: "Fixture exchange."'
    $audited = Invoke-Validation $tempRoot
    Assert-True ($audited.ExitCode -eq 0) "A dangerous-scene settlement with an explicit none audit did not validate:`n$($audited.Output)"

    Replace-Once $chronicle `
        'kind: dangerous-scene-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    $batchAudited = Invoke-Validation $tempRoot
    Assert-True ($batchAudited.ExitCode -eq 0) "A promotion-time progression batch with an explicit audit did not validate:`n$($batchAudited.Output)"

    Replace-Once $chronicle `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: work-scene-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    Replace-Once $chronicle `
        'participants:
  - ENT-000125
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
description: "Fixture exchange."' `
        'participants:
  - ENT-000125
description: "Fixture exchange."'
    # A work scene carries no audit of its own -- Section 7.1 defers its
    # classification -- but deferral is a promise the barrier must keep. With no
    # settlement Event behind it, the note has nowhere to land, which is the
    # state that let a qualifying practice scene pass unnoticed for a whole
    # campaign. This assertion previously expected a clean validate here; that
    # expectation was the bug, and it is inverted deliberately.
    $deferredWork = Invoke-Validation $tempRoot
    Assert-True ($deferredWork.ExitCode -ne 0 -and $deferredWork.Output -like "*sit after the last*settlement*") `
        "A work scene deferring classification with no promotion-barrier settlement behind it was accepted; the deferral is unenforced:`n$($deferredWork.Output)"

    Replace-Once $chronicle `
        'kind: work-scene-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    Replace-Once $chronicle `
        'participants:
  - ENT-000125
description: "Fixture exchange."' `
        'participants:
  - ENT-000125
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
description: "Fixture exchange."'

    # Anchored on the fixture's own description line. Without it this matches every
    # real audit block in the chronicle (19 and counting), so the mutation precondition
    # fails after any session that records one.
    Replace-Once $chronicle `
        'progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
description: "Fixture exchange."' `
        'counter_deltas:
  - subject: ENT-000125
    counter: skills.twin_fang.successful_uses
    delta: 1
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
description: "Fixture exchange."'
    $twinFang = Get-CounterLine $character 'skills.twin_fang.successful_uses'
    $unappliedDelta = Invoke-Validation $tempRoot
    Assert-True ($unappliedDelta.ExitCode -ne 0 -and $unappliedDelta.Output -like "*plus Event deltas*requires $($twinFang.Current + 1)*") `
        "An Event counter delta without the stored update was not rejected:`n$($unappliedDelta.Output)"

    Replace-Once $character $twinFang.Line (New-CounterLine $twinFang ($twinFang.Current + 1))
    $reconciled = Invoke-Validation $tempRoot
    Assert-True ($reconciled.ExitCode -eq 0) "A reconciled Event delta and stored counter did not validate:`n$($reconciled.Output)"

    # --- The promotion barrier owes a settlement Event ---------------------
    #
    # Section 7.1 defers non-combat classification to the barrier, which must
    # create a progression-batch-settlement Event carrying the audit result.
    # No barrier ever did: neither settlement kind appeared as an Event kind in
    # any campaign, so the deferred half of the audit had never run and a
    # qualifying practice scene looked exactly like a non-qualifying one.
    #
    # Note what the fixture above proves and does not. It writes its own Event
    # with a settlement kind, so it only ever exercised the branch that fires
    # once such an Event exists -- an input real play never produced. This
    # covers the branch that actually failed: a play Event left unsettled.
    Replace-Once $chronicle `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: scene
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    $unsettledPlay = Invoke-Validation $tempRoot
    Assert-True ($unsettledPlay.ExitCode -ne 0 -and $unsettledPlay.Output -like "*sit after the last*settlement*") `
        "A play Event with no promotion-barrier settlement behind it was not rejected; the deferred half of Section 7.1 is unenforced:`n$($unsettledPlay.Output)"

    Replace-Once $chronicle `
        'kind: scene
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    $settled = Invoke-Validation $tempRoot
    Assert-True ($settled.ExitCode -eq 0) "A settled promotion barrier did not validate:`n$($settled.Output)"

    # A bookkeeping Event closes no scene and must not demand a settlement.
    Replace-Once $chronicle `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: ruling
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    $exempt = Invoke-Validation $tempRoot
    Assert-True ($exempt.ExitCode -eq 0) "A bookkeeping Event was treated as an unsettled play scene:`n$($exempt.Output)"

    # --- Section 7.2's scope ratchet needs its counter to exist ------------
    #
    # Profile 1.31 makes scope = max(formula, scope_floor). A scope skill with
    # no stored floor silently degrades to the bare formula, which is the exact
    # arithmetic that made ascension a downgrade before 1.31. The counter
    # recording an absence is load-bearing, so its absence must fail.
    $keenFloor = Get-CounterLine $character 'skills.keen_sense.scope_floor'
    Assert-True ($null -ne $keenFloor) "Keen Sense has no scope_floor counter to remove; fixture precondition drifted."

    Replace-Once $character ("      " + $keenFloor.Line + "`n") ""
    $missingFloor = Invoke-Validation $tempRoot
    Assert-True ($missingFloor.ExitCode -ne 0 -and $missingFloor.Output -like "*missing a scope_floor tracked_counters entry*") `
        "A scope skill with no scope_floor counter was accepted; the Section 7.2 ratchet is unenforced:`n$($missingFloor.Output)"

    Set-Text $character ((Get-Text $character) -replace 'tracked_counters:', ("tracked_counters:`n      " + $keenFloor.Line))
    $restoredFloor = Invoke-Validation $tempRoot
    Assert-True ($restoredFloor.ExitCode -eq 0) "A restored scope_floor counter did not validate:`n$($restoredFloor.Output)"

    Write-Host "Progression audit contract tests PASSED" -ForegroundColor Green
} finally {
    $resolvedTmp = [System.IO.Path]::GetFullPath($tempRoot)
    $resolvedWorkspaceTmp = [System.IO.Path]::GetFullPath((Join-Path $root "tmp"))
    if ($resolvedTmp.StartsWith($resolvedWorkspaceTmp, [System.StringComparison]::OrdinalIgnoreCase) -and
        (Test-Path -LiteralPath $resolvedTmp)) {
        Remove-Item -LiteralPath $resolvedTmp -Recurse -Force
    }
}
