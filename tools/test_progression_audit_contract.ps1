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
        "Gatefall Profile 1.20 does not declare promotion-time non-combat progression batching."
    Assert-True ((Get-Text $profile).Contains('Promotion reconciliation.')) `
        "Gatefall Profile 1.20 does not declare known combat-skill counter reconciliation."
    Assert-True ((Get-Text $runtime).Contains('re-count every known combat skill activation')) `
        "The Save Algorithm does not execute the combat-skill double-check at the promotion barrier."

    Replace-Once $character `
        '- { path: skills.rupture.successful_uses, baseline_value: 16, baseline_as_of: EVT-000130, current_value: 16 }' `
        '- { path: skills.rupture.successful_uses, baseline_value: 16, baseline_as_of: EVT-000130, current_value: 17 }'
    $drift = Invoke-Validation $tempRoot
    Assert-True ($drift.ExitCode -ne 0 -and $drift.Output -like "*baseline 16 plus Event deltas 0 requires 16*") `
        "Counter arithmetic drift was not rejected:`n$($drift.Output)"
    Replace-Once $character `
        '- { path: skills.rupture.successful_uses, baseline_value: 16, baseline_as_of: EVT-000130, current_value: 17 }' `
        '- { path: skills.rupture.successful_uses, baseline_value: 16, baseline_as_of: EVT-000130, current_value: 16 }'

    Replace-Once $character `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: ratified" `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: tracking"
    $threshold = Invoke-Validation $tempRoot
    Assert-True ($threshold.ExitCode -ne 0 -and $threshold.Output -like "*at least three distinct evidence references but remains tracking*") `
        "A three-scene candidate left in tracking was not rejected:`n$($threshold.Output)"
    Replace-Once $character `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: tracking" `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: ratified"

    Replace-Once $registry "| Event | ``EVT-`` | Event | EVT-000131 |" "| Event | ``EVT-`` | Event | EVT-000132 |"
    $registryText = Get-Text $registry
    $marker = "# Allocation Invariants"
    Assert-True ($registryText.Contains($marker)) "Registry allocation marker is missing."
    $registryText = $registryText.Replace($marker, "| EVT-000132 | Event | progression-audit contract fixture |`r`n`r`n---`r`n`r`n$marker")
    Set-Text $registry $registryText

    Replace-Once $chronicle "  - EVT-000130`n  - EVT-000131`n``````" "  - EVT-000130`n  - EVT-000131`n  - EVT-000132`n``````"
    $event = @"

---

## EVT-000132 - Progression Audit Contract Fixture

``````yaml
id: EVT-000132
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

    Replace-Once $chronicle "kind: dangerous-scene-settlement" "kind: progression-batch-settlement"
    $batchAudited = Invoke-Validation $tempRoot
    Assert-True ($batchAudited.ExitCode -eq 0) "A promotion-time progression batch with an explicit audit did not validate:`n$($batchAudited.Output)"

    Replace-Once $chronicle "kind: progression-batch-settlement" "kind: work-scene-settlement"
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
    $deferredWork = Invoke-Validation $tempRoot
    Assert-True ($deferredWork.ExitCode -eq 0) "A work scene with classification correctly deferred to promotion did not validate:`n$($deferredWork.Output)"

    Replace-Once $chronicle "kind: work-scene-settlement" "kind: progression-batch-settlement"
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

    Replace-Once $chronicle `
        'progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none' `
        'counter_deltas:
  - subject: ENT-000125
    counter: skills.twin_fang.successful_uses
    delta: 1
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none'
    $unappliedDelta = Invoke-Validation $tempRoot
    Assert-True ($unappliedDelta.ExitCode -ne 0 -and $unappliedDelta.Output -like "*plus Event deltas 1 requires 1*") `
        "An Event counter delta without the stored update was not rejected:`n$($unappliedDelta.Output)"

    Replace-Once $character `
        '- { path: skills.twin_fang.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 0 }' `
        '- { path: skills.twin_fang.successful_uses, baseline_value: 0, baseline_as_of: EVT-000130, current_value: 1 }'
    $reconciled = Invoke-Validation $tempRoot
    Assert-True ($reconciled.ExitCode -eq 0) "A reconciled Event delta and stored counter did not validate:`n$($reconciled.Output)"

    Write-Host "Progression audit contract tests PASSED" -ForegroundColor Green
} finally {
    $resolvedTmp = [System.IO.Path]::GetFullPath($tempRoot)
    $resolvedWorkspaceTmp = [System.IO.Path]::GetFullPath((Join-Path $root "tmp"))
    if ($resolvedTmp.StartsWith($resolvedWorkspaceTmp, [System.StringComparison]::OrdinalIgnoreCase) -and
        (Test-Path -LiteralPath $resolvedTmp)) {
        Remove-Item -LiteralPath $resolvedTmp -Recurse -Force
    }
}
