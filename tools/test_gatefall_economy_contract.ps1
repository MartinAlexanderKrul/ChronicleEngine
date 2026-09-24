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
# The chronicle is the live file and its sealed volumes (Decision 094); the
# adoption Events this suite pins were sealed at the first pass.
. (Join-Path $PSScriptRoot "lib/Chronicle.ps1")
$chronicle = Get-ChronicleText -CampaignRoot (Split-Path -Parent $chroniclePath)
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

function Assert-NotContains {
    param(
        [string]$Text,
        [string]$Pattern,
        [string]$Message
    )

    if ($Text -match $Pattern) {
        $failures.Add($Message) | Out-Null
    }
}

# The active version is READ, never pinned. These assertions carried the literal
# "1.51" and had to be hand-edited on every profile adoption -- a test that must
# be edited to keep passing is a test that stops meaning anything, which is
# F-013's defect exactly. What is worth asserting is that the profile, its
# README and the live character sheet all AGREE on a version, not that the
# version equals a particular number.
$activeProfileVersion = [regex]::Match($profile, '(?m)^# Gatefall .+Profile (?<v>\d+\.\d+)\r?$')
if (-not $activeProfileVersion.Success) { $failures.Add('Gatefall profile header declares no active version.') | Out-Null }
$activeVersion = $activeProfileVersion.Groups['v'].Value
$activeVersionPattern = [regex]::Escape($activeVersion)
Assert-Contains $profile "World Rule Profile $activeVersionPattern" "Gatefall profile is not version $activeVersion."

# Version history is owned by worlds/gatefall/migrations/, not the active profile
# (Recommendation R7). Each assertion below reads the record for its own edge, so
# a new profile version needs a new line here and no new plumbing.
function Get-MigrationRecord {
    param([string]$Source, [string]$Target)

    $path = Join-Path $repo "worlds/gatefall/migrations/${Source}_to_${Target}.md"
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $failures.Add("Missing migration record for $Source to $Target.") | Out-Null
        return ""
    }
    return Get-Content -Raw $path
}

Assert-Contains (Get-MigrationRecord '1.31' '1.32') 'Required 1\.31.+1\.32 migration' 'The 1.31 to 1.32 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.32' '1.33') 'Required 1\.32.+1\.33 migration' 'The 1.32 to 1.33 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.33' '1.34') 'Required 1\.33.+1\.34 migration' 'The 1.33 to 1.34 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.35' '1.36') '1\.35.+1\.36 compatibility treatment' 'The 1.35 to 1.36 migration record lacks its treatment.'
Assert-Contains (Get-MigrationRecord '1.45' '1.46') '1\.45.+1\.46 compatibility treatment' 'The 1.45 to 1.46 migration record lacks its treatment.'
Assert-Contains (Get-MigrationRecord '1.46' '1.47') 'Required 1\.46.+1\.47 migration' 'The 1.46 to 1.47 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.47' '1.48') 'Required 1\.47.+1\.48 migration' 'The 1.47 to 1.48 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.48' '1.49') 'Required 1\.48.+1\.49 migration' 'The 1.48 to 1.49 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.49' '1.50') 'Required 1\.49.+1\.50 migration' 'The 1.49 to 1.50 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.51' '1.52') 'Required 1\.51.+1\.52 migration' 'The 1.51 to 1.52 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.52' '1.53') '1\.52.+1\.53 compatibility treatment' 'The 1.52 to 1.53 migration record lacks its treatment.'
Assert-Contains (Get-MigrationRecord '1.53' '1.54') 'Required 1\.53.+1\.54 migration' 'The 1.53 to 1.54 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.54' '1.55') '1\.54.+1\.55 compatibility treatment' 'The 1.54 to 1.55 migration record lacks its treatment.'
Assert-Contains (Get-MigrationRecord '1.55' '1.56') 'Required 1\.55.+1\.56 migration' 'The 1.55 to 1.56 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.56' '1.57') 'Required 1\.56.+1\.57 migration' 'The 1.56 to 1.57 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.50' '1.51') '1\.50.+1\.51 compatibility treatment' 'The 1.50 to 1.51 migration record lacks its treatment.'
Assert-Contains (Get-MigrationRecord '1.29' '1.30') '1\.29.+1\.30 compatibility treatment' 'The 1.29 to 1.30 migration record lacks its treatment.'
Assert-Contains (Get-MigrationRecord '1.24' '1.25') 'Required 1\.24.+1\.25 migration' 'The 1.24 to 1.25 migration record lacks its procedure.'
Assert-Contains (Get-MigrationRecord '1.23' '1.24') 'Required 1\.23.+1\.24 migration' 'The 1.23 to 1.24 migration record lacks its procedure.'
Assert-Contains $profile 'costs \*\*125% of its ordinary same-Rank category price anchor' 'Premium surcharge is not fixed at 125% of the ordinary same-Rank anchor.'
Assert-Contains $profile 'rounded upward to the next whole gold' 'Premium surcharge lacks its whole-gold rounding rule.'
Assert-Contains $profile '\| Premium Rune \| 1,250 g \| 5,625 g \| 25,000 g \| 112,500 g \| 500,000 g \| 2,250,000 g \|' 'Premium Rune prices do not follow the 125% anchor schedule.'
Assert-Contains $profile 'Every instant dungeon also carries Section 11\.1''s mineable deposit' 'Section 17 does not explicitly give instant dungeons their mineable deposit.'
Assert-Contains $profile '3d6.+\(Rank multiplier\).+crystals' 'Section 17 does not state the instant-dungeon deposit formula.'
Assert-Contains $profile 'Crystal Key treats the `3d6` result as 18' 'Section 17 does not connect the Crystal Key to its deposit result.'
Assert-Contains (Get-MigrationRecord '1.23' '1.24') 'do not create crystals for, reopen, or reinterpret any completed instant dungeon' 'The 1.24 migration lacks its no-retroactive-loot boundary.'

Assert-Contains $readme "World Rule Profile $activeVersionPattern" "Gatefall README does not advertise Profile $activeVersion."
Assert-Contains $readme 'cost 125% of their ordinary same-Rank category anchor' 'Gatefall README does not summarize the corrected Premium surcharge.'
Assert-Contains $resources 'costs 125% of its ordinary same-Rank category anchor' 'Gatefall resources do not summarize the corrected Premium surcharge.'
Assert-Contains $character "profile_version: `"$activeVersionPattern`"" "Live Gatefall character has not adopted Profile $activeVersion."

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

# Profile 1.26 — skill Rank ascension. Rank stops being fixed at acquisition, the ceiling binds
# acquisition as well as ascension, and the utility scales satisfy the Rank Dominance Law.
Assert-Contains $chronicle '## EVT-000158 - Profile 1\.26' 'Live campaign lacks the Profile 1.26 adoption Event.'
Assert-Contains $profile "A skill's Rank is \*\*not fixed at acquisition\.\*\*" 'Profile does not declare skill Rank a growth axis.'
Assert-Contains $profile 'never exceed the \*\*Bearer''s System Rank \+ 1\*\*' 'Profile lacks the Section 7.5 ascension ceiling.'
Assert-Contains $profile 'The ceiling binds \*\*acquisition and ascension alike\*\*' 'The ceiling does not bind acquisition, so waiting to learn still confers an advantage.'
Assert-Contains $profile 'A skill at Novice one Rank higher can do something the same skill at Master one Rank lower cannot do at all, and ascension never leaves it covering less than it covered immediately before' 'Profile lacks the Rank Dominance Law.'
Assert-Contains $profile 'Falls to \*\*Adept\*\*, keeping three of five levels' 'Breakthrough does not settle at Adept.'
Assert-Contains $profile 'Resets to \*\*Novice\*\*; `mastery_progress` resets to 0' 'Rune ascension does not reset mastery to Novice.'
Assert-Contains $profile 'Breakthrough is \*\*offered, never imposed\.\*\*' 'Breakthrough is not an offer, so it could silently spend mastery.'
Assert-Contains $profile 'is not consumed unless the offer is accepted' 'Rune ascension does not require an accepted offer.'

# The utility Rank steps must each exceed a whole mastery track on the same axis, or ascension
# is a downgrade. Mastery gives +20 points of reduction and +0.20 of multiplier across a track.
Assert-Contains $profile '\*\*\+25 percentage points\*\* to the skill''s own reduction fraction' 'Reduction Rank step is not +25 points and may not outweigh a mastery track.'
Assert-Contains $profile '\*\*\+0\.25\*\* to the multiplier the skill grants' 'Passive-multiplier Rank step is not +0.25 and may not outweigh a mastery track.'
Assert-Contains $profile 'never exceeds 90%' 'The single-skill reduction cap was not raised to 90%.'
Assert-Contains $profile 'Rank never changes a skill''s Mana cost' 'Rank and mastery axes are not kept separate on Mana cost.'
Assert-Contains $profile '\*\*Rupture and Bulwark are native E-Rank\.\*\*' 'Rupture and Bulwark lack the native Rank their utility scale measures from.'

# The shop must actually supply higher-Rank instruction, or the bought road does not exist.
Assert-Contains $profile 'stocked only at Ranks \*\*above\*\* its current Rank' 'The shop still refuses higher-Rank runes for known skills.'
Assert-Contains $profile 'live ordinary catalogue price for a rune within the Section 7\.5 ceiling' 'The C-through-S rune anchors are still Premium-only references.'

# Mastery must never make a skill worse. Keen Sense and Silent Step are authored scene-long,
# so Section 7.4's per-level lengthening ladder must not apply a shorter duration to them.
Assert-Contains $profile '\*\*Mastery never shortens an authored effect\.\*\*' 'Section 7.4 does not guarantee mastery never shortens an authored effect.'
Assert-Contains $profile 'the authored entry governs' 'Section 7.4 does not defer to the authored Section 7.3 entry on conflict.'
Assert-Contains $profile '\*\*Keen Sense and Silent Step are scene-long from Novice\.\*\*' 'Section 7.3 does not pin Keen Sense and Silent Step to a scene-long duration.'
# Asserted positively: the ledger line's own correction note quotes the superseded wording, so
# proving absence of that substring would fail on the provenance rather than on the effect.
#
# Rank and mastery are deliberately NOT pinned. The invariant under test is that
# the entry renders its authored scene-long duration at *any* mastery level, and
# both axes move with play: Keen Sense was E-Rank Master when these lines were
# written and is D-Rank Adept after its ascension, which failed the assertion for
# a reason unrelated to the rule.
Assert-Contains $character 'Keen Sense \[[EDCBAS]-Rank\][^"]*\*\*for the scene\*\*' 'The live Keen Sense line does not render its authored scene-long duration.'
# Matched on the mastery word, not the star glyphs: this file is read as ANSI by
# Windows PowerShell when it carries no BOM, and a literal glyph class silently
# stops matching.
Assert-Contains $character 'Keen Sense \[[EDCBAS]-Rank\] \S+ (Novice|Practiced|Adept|Expert|Master)' 'The live Keen Sense line does not render a Rank and mastery level.'

# mastery_level must be stored, because ascension breaks its derivation from lifetime scenes.
Assert-Contains $character 'skills\.rupture\.mastery_level' 'Live character lacks the stored mastery_level counter.'
Assert-Contains $character 'skills\.rupture\.rank_ascensions' 'Live character lacks the rank_ascensions counter.'

# ---------------------------------------------------------------------------
# Profile 1.122 -- Section 13.7.5, Standing Branch Operations.
#
# Every pattern here is ASCII. These files are BOM-less UTF-8 and Windows
# PowerShell 5.1 decodes them as ANSI, so a literal em dash never matches and
# the assertion passes vacuously. Patterns are also die-agnostic and figure-
# agnostic wherever the invariant is not the number: a leg that fails when its
# subject is STRENGTHENED teaches its reader to route around it.
$branchOps = [regex]::Match($profile, '(?s)### 13\.7\.5 .*?(?=\r?\n# 14\. )').Value
if (-not $branchOps) {
    $failures.Add('Profile carries no Section 13.7.5, so a guild larger than one bench has no throughput.') | Out-Null
}

# An office is a scene until it clears a stated bar, and the bar includes a bench
# the law would let it crew. Without this a lease becomes a dispatch centre.
Assert-Contains $branchOps 'standing up' 'Section 13.7.5 does not hold an unqualified branch below the operational bar.'
Assert-Contains $branchOps 'legally crew from' 'Section 13.7.5 does not require a branch to be able to crew what it dispatches.'
Assert-Contains $branchOps 'Section 9\.4' 'Section 13.7.5 does not read its crewing bar off Section 9.4 minimums.'

# The catchment is CONDITIONAL on the transport network. Strip the condition and
# every guild in the world silently inherits a region.
Assert-Contains $branchOps 'without one reads its own metro' 'Section 13.7.5 grants a regional catchment unconditionally, so the transport network buys nothing.'

# E and D carry an every-day floor; C and B deliberately do not. Matched without
# pinning the dice, so raising the volume does not fail the leg.
Assert-Contains $branchOps '(?m)^\s*E-Rank\s+\S.*every operational branch, every day' 'Section 13.7.5 does not floor E-Rank dispatch at every branch every day.'
Assert-Contains $branchOps '(?m)^\s*D-Rank\s+\S.*every operational branch, every day' 'Section 13.7.5 does not floor D-Rank dispatch at every branch every day.'
Assert-NotContains $branchOps '(?m)^\s*C-Rank\s+\S.*every operational branch, every day' 'Section 13.7.5 floors C-Rank dispatch, which makes the contested middle uncontested.'

# The A/S fence. This is the whole reason the section is safe to run unattended.
Assert-Contains $branchOps 'resolves an A-Rank or S-Rank Gate' 'Section 13.7.5 does not forbid background resolution of A-Rank and S-Rank Gates.'
Assert-Contains $branchOps 'surfaces' 'Section 13.7.5 does not surface A-Rank and S-Rank Gates into play.'

# Attrition is answerable before it is fatal, and the ceiling is a stated cap.
Assert-Contains $branchOps 'It is not a death' 'Section 13.7.5 turns a distress roll straight into a casualty with no call to answer.'
Assert-Contains $branchOps 'Answered in time, nobody dies' 'Section 13.7.5 does not let an answered distress call save the crew.'
Assert-Contains $branchOps '150 days' 'Section 13.7.5 lacks its fatality ceiling, so a run of rolls can bury a member a week.'
Assert-Contains $branchOps 'ceiling does not protect a branch' 'Section 13.7.5 extends its fatality ceiling to a branch that filed a roster it could not staff.'

# Over-committed benches must cost something, or duty rate is decoration.
Assert-Contains $branchOps 'refuse Gates' 'Section 13.7.5 does not force an overcommitted branch to refuse work.'

# Background volume mints no canon and pays the Bearer nothing. Drop either and
# the section becomes an XP faucet or an identifier flood.
Assert-Contains $branchOps 'No `EVT-`, no `ENT-`, no `REC-`' 'Section 13.7.5 does not forbid a background clear from minting identifiers.'
Assert-Contains $branchOps 'pays the Bearer nothing' 'Section 13.7.5 does not deny the Bearer progression for work he was not present for.'

# The section must actually be reachable from the daily tick, or it is orphaned
# text that nothing runs. Scoped to step 4, not matched file-wide.
$tickContest = [regex]::Match($profile, '(?s)4\. \*\*The trade takes the job first.*?(?=\r?\n5\. \*\*Breaks\.)').Value
if (-not $tickContest) {
    $failures.Add('Section 9.1 step 4 could not be located, so the guild dispatch wiring cannot be checked.') | Out-Null
}
Assert-Contains $tickContest "rolls Section 13\.7\.5's daily dispatch" 'Section 9.1 step 4 does not run Section 13.7.5, so branch operations never execute.'
Assert-Contains $tickContest 'never resolves an A-Rank or S-Rank Gate' 'Section 9.1 step 4 does not carry the A/S fence into the tick itself.'

# A tick that rolled branch operations must be able to write that it rolled them.
$tickLedger = [regex]::Match($profile, '(?s)### 9\.1\.1 .*?(?=\r?\n### 9\.1\.2 )').Value
if (-not $tickLedger) {
    $failures.Add('Section 9.1.1 could not be located, so the tick ledger cannot be checked.') | Out-Null
}
Assert-Contains $tickLedger '(?m)^guild_ops\s+' 'The Section 9.1.1 tick ledger carries no guild_ops line, so branch operations are unrecorded.'

# Section 13.7.3's D-Rank per-clear cell was blank through 1.121. Asserted as a
# property -- the row carries a price -- not as the literal figure.
$salariedRosters = [regex]::Match($profile, '(?s)### 13\.7\.3 .*?(?=\r?\n### 13\.7\.4 )').Value
Assert-Contains $salariedRosters '(?m)^\| D \| \$[\d,]+ \|' 'Section 13.7.3 leaves its D-Rank per-clear pool blank while pricing E, C and B from the same Section 12.3 bands.'

# The superseded-in-part notice lives on the superseded text, not only in the
# migration record. This is the obligation that gets forgotten.
Assert-Contains $salariedRosters 'superseded in part' 'Section 13.7.3 worked example does not tell its reader it has been superseded in part.'
Assert-Contains $salariedRosters 'stands untouched' 'Section 13.7.3 does not distinguish what 1.122 overturned from what still stands.'

Assert-Contains (Get-MigrationRecord '1.121' '1.122') '(?m)^\s+classification: compatibility-treatment' 'The 1.121 to 1.122 migration record does not declare its classification.'
Assert-Contains (Get-MigrationRecord '1.121' '1.122') 'No branch is promoted by this migration' 'The 1.121 to 1.122 migration record does not state that declaring a branch operational is campaign canon.'

# Profile 1.123 -- Section 13.7.5's A/S clauses, amended.
#
# 1.122 said an A/S in a branch's catchment surfaces and "becomes a scene",
# and authored no generator for one. 1.123 supplies the source (Section 9.1.8)
# and bounds the promise. These legs guard the amendment in both directions:
# the fence must survive, and the unbounded scene promise must not come back.

# The section must hand off to its generator, or the promise has no source again.
Assert-Contains $branchOps 'Which of them becomes a scene is Section 9\.1\.8' 'Section 13.7.5 promises A/S surfacing and names no source for it, which is the gap 1.123 exists to close.'

# The owner's S/A asymmetry. S always surfaces; A is budgeted.
Assert-Contains $branchOps 'An S-Rank always surfaces and carries no daily budget' 'Section 13.7.5 does not carry the S-Rank surfacing guarantee, so S-Rank Gates can be budgeted away like A-Rank ones.'
Assert-Contains $branchOps 'At most one A-Rank becomes a scene' 'Section 13.7.5 does not bound A-Rank scenes, so a branch catchment can demand twenty scenes a day.'

# The standing posture replaced a per-Gate commitment. Both the new rule and
# the notice that it superseded the old one must be present.
Assert-Contains $branchOps 'standing posture' 'Section 13.7.5 still requires a fresh on-screen commitment per A-Rank Gate, which is unrunnable at a region catchment.'
Assert-Contains $branchOps 'Through 1\.122 this paragraph required a fresh on-screen commitment' 'Section 13.7.5 does not tell its reader that its A-Rank pool clause was superseded, or what it was superseded from.'

# Regression guard: the amendment must not have loosened the fence itself.
# A standing posture is a declaration; it is not a roll resolving an A/S Gate.
Assert-Contains $branchOps 'resolves an A-Rank or S-Rank Gate' 'The 1.123 amendment has removed Section 13.7.5 A/S fence, so a background pass may now clear an A-Rank or S-Rank Gate.'

Assert-Contains (Get-MigrationRecord '1.122' '1.123') '(?m)^\s+classification: compatibility-treatment' 'The 1.122 to 1.123 migration record does not declare its classification.'
Assert-Contains (Get-MigrationRecord '1.122' '1.123') 'No reach zone is declared by this migration' 'The 1.122 to 1.123 migration record does not state that declaring reach zones and a posture is campaign canon.'
Assert-Contains (Get-MigrationRecord '1.122' '1.123') '(?i)3\.6 days' 'The 1.122 to 1.123 migration record does not carry the S-Rank cover finding the version exists for.'

if ($failures.Count -gt 0) {
    Write-Host "Gatefall economy contract: FAIL"
    foreach ($failure in $failures) {
        Write-Host " - $failure"
    }
    exit 1
}

Write-Host "Gatefall economy contract: PASS"
