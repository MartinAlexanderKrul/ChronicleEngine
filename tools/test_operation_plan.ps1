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
Assert-True ($preloaded -notmatch 'canonical_state\.system_state\.inventory') "Gatefall preloads the dimensional inventory outside an operation that needs it."
# The NPC ledger stays out of whole_files (asserted above) but must still hand
# readiness the player-ruled channel closures, or a resumed session narrates
# past a ruling it has no way to see.
Assert-True (
    $preloaded -match '130_NPCS_AND_FACTIONS\.md\r?\n\s+heading: Closed Channels'
) "Gatefall readiness omits the NPC ledger's Closed Channels table."
$deferred = [regex]::Match(
    $gatefall.Output,
    '(?ms)^available_on_demand_selectors:\s*(?<body>.*?)^tools:'
).Groups["body"].Value
Assert-True ($deferred -match 'dispatch: action_resolution') "Gatefall has no explicit deferred action-state selector."
Assert-True ($deferred -match 'canonical_state\.system_state\.skills_known') "Gatefall deferred action state omits skills."
Assert-True ($deferred -match 'dispatch: progression_settlement') "Gatefall has no explicit deferred progression selector."
Assert-True ($deferred -match 'canonical_state\.system_state\.tracked_counters') "Gatefall deferred progression state omits counters."
Assert-True ($deferred -match 'dispatch: system_shop') "Gatefall has no explicit deferred shop selector."
Assert-True ($deferred -match 'canonical_state\.system_state\.inventory') "Gatefall deferred shop state omits the dimensional inventory."
# The encounter case. Without a dispatch the resident load obligation has no
# addressed read behind it and degrades into searching a 250 KB ledger.
Assert-True ($deferred -match 'dispatch: npc_present') "Gatefall has no deferred NPC-encounter selector, so the resident load obligation names no read."
Assert-True ($deferred -match 'object: any ENT- listed in campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY\.md') "The NPC dispatch does not say where its subject identifiers come from."
Assert-True ($deferred -match 'relationship_fields:') "The NPC dispatch omits the protagonist relationship, which is where manner is recorded (Decision 076)."
Assert-True ($deferred -match '- texture') "The NPC dispatch omits Relationship texture, the field Decision 076 exists to preserve."
# Bounded, not wholesale: the largest live entity record is over 65 KB and the
# largest relationship over 50 KB, so a whole-object encounter read would cost
# more than the entire readiness budget.
Assert-True (
    $deferred -notmatch '(?ms)dispatch: npc_present.*?\n\s*whole_file'
) "The NPC dispatch takes a whole object rather than named fields."

# A panel loads the grammar its frame obeys, not only its own template. Section
# 15.1 declares itself normative for every Gatefall panel identically, so a plan
# without it carries every value and no layout.
foreach ($panel in @(
    "/system", "/system skills", "/system gear", "/system quests",
    "/system titles", "/system shop", "/system log", "/system all"
)) {
    $rendered = Invoke-Plan -Campaign "gatefall_pendragon_001" -Operation $panel
    Assert-True ($rendered.ExitCode -eq 0) "Gatefall $panel plan failed:`n$($rendered.Output)"
    Assert-True (
        $rendered.Output -match 'anchor: 151-render-grammar'
    ) "Gatefall $panel omits the render grammar every panel obeys."
    Assert-True (
        $rendered.Output -match 'render_policy: exact-template-only'
    ) "Gatefall $panel omits its exact render policy."
}

# `/system all` composes every panel, so it dispatches every panel's template.
# Section 15.4 names them and authors no layout of its own; alone it was 116
# tokens of render procedure against the whole of the Bearer's state.
$all = Invoke-Plan -Campaign "gatefall_pendragon_001" -Operation "/system all"
foreach ($anchor in @(
    "152-system-the-console", "1531-system-skills", "1532-system-gear",
    "1533-system-quests", "1534-system-titles", "1535-system-shop",
    "1536-system-log", "154-system-all"
)) {
    Assert-True (
        $all.Output -match "anchor: $anchor"
    ) "/system all composes $anchor without dispatching its template."
}

# A retained alias resolves to the panel it renders. The profile requires a plan
# before a diegetic command, so an alias that fails to plan is the one path most
# likely to be rendered from memory instead.
foreach ($alias in @("/system equipment", "/system inventory")) {
    $aliased = Invoke-Plan -Campaign "gatefall_pendragon_001" -Operation $alias
    Assert-True ($aliased.ExitCode -eq 0) "Declared alias $alias produced no plan:`n$($aliased.Output)"
    Assert-True ($aliased.Output -match 'alias_of: /system gear') "$alias does not report the command it renders."
    Assert-True ($aliased.Output -match 'anchor: 1532-system-gear') "$alias does not dispatch the gear template."
}

# Declared protagonist fields bind to the protagonist's record whether or not the
# character sheet is also a live read. `/system log` declared the quest fields it
# renders and loaded none of them.
$log = Invoke-Plan -Campaign "gatefall_pendragon_001" -Operation "/system log"
Assert-True ($log.Output -match 'object: ENT-000125') "/system log renders quest state with no protagonist read."
Assert-True (
    $log.Output -match 'canonical_state\.system_state\.non_daily_quests'
) "/system log declares quest fields the plan drops."

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
Assert-True ($save.Output -match 'tools/validate_checkpoint\.ps1') "Save operation plan omits the Tier 2 checkpoint gate."
# Tier 2 runs Tier 1 inside it. Naming the superseded Tier 1 validator, or the
# Tier 3 development test the README says is never a save gate, is the drift this
# assertion exists to catch.
Assert-True ($save.Output -notmatch 'tools/validate_repository\.ps1') "Save operation plan names a validator Tier 2 already runs."
Assert-True ($save.Output -notmatch 'tools/test_checkpoint_contract\.ps1') "Save operation plan names a Tier 3 development test as a save gate."

$unknown = Invoke-Plan -Campaign "prototype_beta" -Operation "/system"
Assert-True ($unknown.ExitCode -ne 0) "An undeclared Prototype Beta /system operation was accepted."
Assert-True ($unknown.Output -match 'operation is not declared') "Undeclared operation failed without a useful reason."

Write-Host "Operation plan regression tests PASSED" -ForegroundColor Green
exit 0
