$ErrorActionPreference = "Stop"

$repo = Split-Path -Parent $PSScriptRoot
$profilePath = Join-Path $repo "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$readmePath = Join-Path $repo "worlds/gatefall/README.md"
$resourcesPath = Join-Path $repo "worlds/gatefall/240_RESOURCES.md"
$characterPath = Join-Path $repo "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
$chroniclePath = Join-Path $repo "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md"

$profile = Get-Content -Raw $profilePath
$readme = Get-Content -Raw $readmePath
$resources = Get-Content -Raw $resourcesPath
$character = Get-Content -Raw $characterPath
$chronicle = Get-Content -Raw $chroniclePath
$failures = [System.Collections.Generic.List[string]]::new()

function Assert-Contains {
    param(
        [string]$Text,
        [string]$Pattern,
        [string]$Message
    )

    if ($Text -notmatch $Pattern) {
        $failures.Add($Message) | Out-Null
    }
}

Assert-Contains $profile 'World Rule Profile 1\.24' 'Gatefall profile is not version 1.24.'
Assert-Contains $profile 'Required 1\.23.+1\.24 migration' 'Gatefall profile lacks the 1.23 to 1.24 migration.'
Assert-Contains $profile 'costs \*\*125% of its ordinary same-Rank category price anchor' 'Premium surcharge is not fixed at 125% of the ordinary same-Rank anchor.'
Assert-Contains $profile 'rounded upward to the next whole gold' 'Premium surcharge lacks its whole-gold rounding rule.'
Assert-Contains $profile '\| Premium Rune \| 1,250 g \| 5,625 g \| 25,000 g \| 112,500 g \| 500,000 g \| 2,250,000 g \|' 'Premium Rune prices do not follow the 125% anchor schedule.'
Assert-Contains $profile 'Every instant dungeon also carries Section 11\.1''s mineable deposit' 'Section 17 does not explicitly give instant dungeons their mineable deposit.'
Assert-Contains $profile '3d6.+\(Rank multiplier\).+crystals' 'Section 17 does not state the instant-dungeon deposit formula.'
Assert-Contains $profile 'Crystal Key treats the `3d6` result as 18' 'Section 17 does not connect the Crystal Key to its deposit result.'
Assert-Contains $profile 'do not create crystals for, reopen, or reinterpret any completed instant dungeon' 'The 1.24 migration lacks its no-retroactive-loot boundary.'

Assert-Contains $readme 'World Rule Profile 1\.24' 'Gatefall README does not advertise Profile 1.24.'
Assert-Contains $readme 'cost 125% of their ordinary same-Rank category anchor' 'Gatefall README does not summarize the corrected Premium surcharge.'
Assert-Contains $resources 'costs 125% of its ordinary same-Rank category anchor' 'Gatefall resources do not summarize the corrected Premium surcharge.'
Assert-Contains $character 'profile_version: "1\.24"' 'Live Gatefall character has not adopted Profile 1.24.'
Assert-Contains $character 'Colossus Greatarm \[E-Rank\].+\*\*125 g\*\*' 'Live Premium weapon was not repriced to 125 g.'
Assert-Contains $character 'Adaptive Titan Hands \[D-Rank\].+\*\*338 g\*\*' 'Live Premium armor was not rounded upward to 338 g.'
Assert-Contains $character 'Silent Step \[C-Rank\].+\*\*25,000 g\*\*' 'Live Premium rune was not repriced to 25,000 g.'
Assert-Contains $character 'Crystal Key \[D-Rank\].+\*\*2,813 g\*\*' 'Live Premium key was not rounded upward to 2,813 g.'
Assert-Contains $chronicle '## EVT-000135 - Profile 1\.24' 'Live campaign lacks the Profile 1.24 adoption Event.'

if ($failures.Count -gt 0) {
    Write-Host "Gatefall economy contract: FAIL"
    foreach ($failure in $failures) {
        Write-Host " - $failure"
    }
    exit 1
}

Write-Host "Gatefall economy contract: PASS"
