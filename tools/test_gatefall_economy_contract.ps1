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

Assert-Contains $profile 'World Rule Profile 1\.25' 'Gatefall profile is not version 1.25.'
Assert-Contains $profile 'Required 1\.24.+1\.25 migration' 'Gatefall profile lacks the 1.24 to 1.25 migration.'
Assert-Contains $profile 'Required 1\.23.+1\.24 migration' 'Gatefall profile lacks the 1.23 to 1.24 migration.'
Assert-Contains $profile 'costs \*\*125% of its ordinary same-Rank category price anchor' 'Premium surcharge is not fixed at 125% of the ordinary same-Rank anchor.'
Assert-Contains $profile 'rounded upward to the next whole gold' 'Premium surcharge lacks its whole-gold rounding rule.'
Assert-Contains $profile '\| Premium Rune \| 1,250 g \| 5,625 g \| 25,000 g \| 112,500 g \| 500,000 g \| 2,250,000 g \|' 'Premium Rune prices do not follow the 125% anchor schedule.'
Assert-Contains $profile 'Every instant dungeon also carries Section 11\.1''s mineable deposit' 'Section 17 does not explicitly give instant dungeons their mineable deposit.'
Assert-Contains $profile '3d6.+\(Rank multiplier\).+crystals' 'Section 17 does not state the instant-dungeon deposit formula.'
Assert-Contains $profile 'Crystal Key treats the `3d6` result as 18' 'Section 17 does not connect the Crystal Key to its deposit result.'
Assert-Contains $profile 'do not create crystals for, reopen, or reinterpret any completed instant dungeon' 'The 1.24 migration lacks its no-retroactive-loot boundary.'

Assert-Contains $readme 'World Rule Profile 1\.25' 'Gatefall README does not advertise Profile 1.25.'
Assert-Contains $readme 'cost 125% of their ordinary same-Rank category anchor' 'Gatefall README does not summarize the corrected Premium surcharge.'
Assert-Contains $resources 'costs 125% of its ordinary same-Rank category anchor' 'Gatefall resources do not summarize the corrected Premium surcharge.'
Assert-Contains $character 'profile_version: "1\.25"' 'Live Gatefall character has not adopted Profile 1.25.'

# The 1.24 live-cycle reprice is asserted against its immutable adoption Event, not the
# live Daily Premium tab: that cycle rotates every 06:00 and its offers expire.
Assert-Contains $chronicle 'Colossus Greatarm \[E-Rank\] 200.+125 g' 'The 1.24 adoption Event lost its Premium weapon reprice.'
Assert-Contains $chronicle 'Adaptive Titan Hands \[D-Rank\] 540.+338 g' 'The 1.24 adoption Event lost its Premium armor reprice.'
Assert-Contains $chronicle 'Silent Step Premium Rune \[C-Rank\] 50,000.+25,000 g' 'The 1.24 adoption Event lost its Premium rune reprice.'
Assert-Contains $chronicle 'Crystal Key \[D-Rank\] 4,500.+2,813 g' 'The 1.24 adoption Event lost its Premium key reprice.'
Assert-Contains $chronicle '## EVT-000135 - Profile 1\.24' 'Live campaign lacks the Profile 1.24 adoption Event.'

# Profile 1.25 — consumable economy. Lesser/Standard restore flat amounts and Greater restores
# to full. Cost-per-point deliberately does NOT fall with tier; the invariant is that no tier is
# dominated, and the higher tier buys action economy. Do not reintroduce a monotone-rate assertion.
Assert-Contains $profile '\| \*\*Lesser healing potion\*\* \| 60 g \|' 'Lesser healing potion is not priced at 60 g.'
Assert-Contains $profile '\| \*\*Standard healing potion\*\* \| 150 g \|' 'Standard healing potion is not priced at 150 g.'
Assert-Contains $profile '\| \*\*Greater healing potion\*\* \| 750 g \|' 'Greater healing potion is not priced at 750 g.'
Assert-Contains $profile '\| \*\*Lesser mana potion\*\* \| 50 g \|' 'Lesser mana potion is not priced at 50 g.'
Assert-Contains $profile '\| \*\*Standard mana potion\*\* \| 75 g \|' 'Standard mana potion is not priced at 75 g.'
Assert-Contains $profile '\| \*\*Greater mana potion\*\* \| 480 g \|' 'Greater mana potion is not priced at 480 g.'
Assert-Contains $profile 'Restores a flat 30 Health' 'Lesser healing potion does not restore a flat 30 Health.'
Assert-Contains $profile 'Restores a flat 90 Health' 'Standard healing potion does not restore a flat 90 Health.'
Assert-Contains $profile 'Restores a flat 20 Mana' 'Lesser mana potion does not restore a flat 20 Mana.'
Assert-Contains $profile 'Restores a flat 40 Mana' 'Standard mana potion does not restore a flat 40 Mana.'
Assert-Contains $profile 'Restores Health to full' 'Greater healing potion no longer restores Health to full.'
Assert-Contains $profile 'Restores Mana to full' 'Greater mana potion no longer restores Mana to full.'
Assert-Contains $profile 'no tier may be strictly dominated' 'Profile lacks the no-dominated-tier pricing invariant.'
Assert-Contains $profile 'What a higher tier buys is \*\*action economy\*\*' 'Profile lacks the action-economy rationale for tier pricing.'
Assert-Contains $profile 'Greater must remain the only single-action full restore' 'Profile lacks the single-action full-restore guarantee.'
Assert-Contains $resources 'healing 60/150/750 g' 'Gatefall resources do not carry the corrected healing potion prices.'
Assert-Contains $resources 'Mana 50/75/480 g' 'Gatefall resources do not carry the corrected mana potion prices.'
Assert-Contains $chronicle '## EVT-000154 - Profile 1\.25' 'Live campaign lacks the Profile 1.25 adoption Event.'

# Profile 1.25 — sourcing. Healing and Mana potions are System-only; the world's separate
# restorative alchemy acts on the severity axis and restores no pool as an immediate quantity.
Assert-Contains $profile 'Healing and Mana potions are System-exclusive' 'Profile lacks the System-exclusive potion sourcing rule.'
Assert-Contains $profile 'may not place a Healing or Mana potion on a world shelf' 'Profile does not forbid world-vendor sourcing of potions.'
Assert-Contains $profile 'Nothing sold anywhere in the world restores Health or Mana as an immediate quantity' 'Profile lacks the world-restorative boundary.'
Assert-Contains $profile 'NPCs have no concept of a System potion' 'Profile does not deny NPCs knowledge of System potions.'
Assert-Contains $profile 'the world has its own antivenoms, appraisers, and trauma medicine' 'Profile does not scope the exclusivity to Healing and Mana potions.'
Assert-Contains $resources 'this is an authored prohibition, not merely an absence' 'Gatefall resources do not carry the potion sourcing prohibition.'
Assert-Contains $profile '≈750 g-equivalent shop-side' 'The gray-sleep off-shop anchor was not repriced to the corrected Greater healing price.'

if ($failures.Count -gt 0) {
    Write-Host "Gatefall economy contract: FAIL"
    foreach ($failure in $failures) {
        Write-Host " - $failure"
    }
    exit 1
}

Write-Host "Gatefall economy contract: PASS"
