[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$resolver = Join-Path $PSScriptRoot "resolve_operation_plan.ps1"

function Invoke-Plan {
    param([string]$Campaign, [string]$Operation)

    $previousErrorAction = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $resolver `
        -RepositoryRoot $repositoryRoot -Campaign $Campaign -Operation $Operation 2>&1 |
        ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $ErrorActionPreference = $previousErrorAction
    return [pscustomobject]@{
        ExitCode = $exitCode
        Output = ($output -join "`n")
    }
}

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) {
        throw $Message
    }
}

$gatefall = Invoke-Plan -Campaign "gatefall_pendragon_001" -Operation "continue"
Assert-True ($gatefall.ExitCode -eq 0) "Gatefall continue plan failed:`n$($gatefall.Output)"
$gatefallAgain = Invoke-Plan -Campaign "gatefall_pendragon_001" -Operation "continue"
Assert-True ($gatefall.Output -ceq $gatefallAgain.Output) "Gatefall operation plan is not deterministic."

$wholeFiles = [regex]::Match(
    $gatefall.Output,
    '(?ms)^whole_files:\s*(?<body>.*?)^selectors:'
).Groups["body"].Value
Assert-True ($wholeFiles -notmatch '206_WORLD_RULE_PROFILE') "Gatefall plan preloads the whole World Rule Profile."
Assert-True ($wholeFiles -notmatch '160_CAMPAIGN_CHRONICLE') "Gatefall plan preloads the whole campaign chronicle."
Assert-True ($wholeFiles -notmatch '170_CHANGELOG') "Gatefall plan preloads the whole campaign changelog."
Assert-True ($wholeFiles -notmatch '130_NPCS_AND_FACTIONS') "Gatefall plan preloads the whole NPC ledger."
Assert-True ($gatefall.Output -match 'heading: 5\.2 Recovery') "Gatefall plan omits Mana recovery."
Assert-True ($gatefall.Output -match 'heading: 6\.1\.1 Natural Health Recovery') "Gatefall plan omits Health recovery."
Assert-True ($gatefall.Output -match 'heading: 8\.4\.2 Urgent Quests') "Gatefall plan omits Urgent eligibility."
Assert-True ($gatefall.Output -match 'heading: 8\.4\.3 Hidden Quests') "Gatefall plan omits Hidden eligibility."
Assert-True ($gatefall.Output -match 'heading: 14\.3 Trigger Tiers') "Gatefall plan omits the trigger manifest."
Assert-True ($gatefall.Output -match 'object: ENT-000125') "Gatefall protagonist read is not object-bounded."
Assert-True ($gatefall.Output -match 'fields:\s*\r?\n(?:\s+- .+\r?\n){20}') "Gatefall protagonist readiness is not bounded to 20 fields."
Assert-True ($gatefall.Output -notmatch 'heading: 7\.1 Acquisition') "Gatefall preloads skill-acquisition rules before a formation trigger dispatches."
Assert-True ($gatefall.Output -notmatch 'heading: 7\.4 Skill Mastery') "Gatefall preloads mastery rules before an affected action dispatches."
$preloaded = [regex]::Match(
    $gatefall.Output,
    '(?ms)^selectors:\s*(?<body>.*?)^available_on_demand:'
).Groups["body"].Value
Assert-True ($preloaded -notmatch 'canonical_state\.system_state\.skills_known') "Gatefall preloads the full skill ledger before an affected action."
Assert-True ($preloaded -notmatch 'canonical_state\.system_state\.shop_holdings') "Gatefall preloads shop inventory outside a shop operation."
$deferred = [regex]::Match(
    $gatefall.Output,
    '(?ms)^available_on_demand_selectors:\s*(?<body>.*?)^tools:'
).Groups["body"].Value
Assert-True ($deferred -match 'dispatch: action_resolution') "Gatefall has no explicit deferred action-state selector."
Assert-True ($deferred -match 'canonical_state\.system_state\.skills_known') "Gatefall deferred action state omits skills."
Assert-True ($deferred -match 'dispatch: progression_settlement') "Gatefall has no explicit deferred progression selector."
Assert-True ($deferred -match 'canonical_state\.system_state\.tracked_counters') "Gatefall deferred progression state omits counters."
Assert-True ($deferred -match 'dispatch: system_shop') "Gatefall has no explicit deferred shop selector."
Assert-True ($deferred -match 'canonical_state\.system_state\.shop_holdings') "Gatefall deferred shop state omits holdings."

$reikon = Invoke-Plan -Campaign "reikon_awakening_001" -Operation "/system"
Assert-True ($reikon.ExitCode -eq 0) "Reikon /system plan failed:`n$($reikon.Output)"
Assert-True ($reikon.Output -match 'anchor: 10-canonical-system-render-template-normative') "Reikon /system dispatch anchor is missing."
Assert-True ($reikon.Output -match 'object: ENT-000051') "Reikon character read is not object-bounded."
Assert-True ($reikon.Output -match 'render_policy: exact-template-only') "Reikon exact render policy is missing."

foreach ($campaign in @("prototype_alpha", "prototype_beta", "reikon_awakening_001")) {
    $plan = Invoke-Plan -Campaign $campaign -Operation "continue"
    Assert-True ($plan.ExitCode -eq 0) "$campaign continue plan failed:`n$($plan.Output)"
    Assert-True ($plan.Output -match 'operation_plan_version:') "$campaign produced no operation plan."
}

$save = Invoke-Plan -Campaign "gatefall_pendragon_001" -Operation "save"
Assert-True ($save.ExitCode -eq 0) "Save operation plan failed:`n$($save.Output)"
Assert-True ($save.Output -match 'heading: Save Algorithm') "Save operation plan omits its authoritative procedure."
Assert-True ($save.Output -match 'tools/generate_runtime_index\.ps1') "Save operation plan omits generated index refresh."
Assert-True ($save.Output -match 'tools/validate_repository\.ps1') "Save operation plan omits repository validation."
Assert-True ($save.Output -match 'tools/test_checkpoint_contract\.ps1') "Save operation plan omits checkpoint validation."

$unknown = Invoke-Plan -Campaign "prototype_beta" -Operation "/system"
Assert-True ($unknown.ExitCode -ne 0) "An undeclared Prototype Beta /system operation was accepted."
Assert-True ($unknown.Output -match 'operation is not declared') "Undeclared operation failed without a useful reason."

Write-Host "Operation plan regression tests PASSED" -ForegroundColor Green
exit 0
