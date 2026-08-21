[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")
$fixtureRoot = Join-Path $PSScriptRoot "tests/fixtures"

function Invoke-Validator {
    param([string]$Root)

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator -RepositoryRoot $Root 2>&1 |
        ForEach-Object { $_.ToString() }

    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

function Assert-Contains {
    param([string]$Text, [string]$Expected, [string]$Because)

    if ($Text -notlike "*$Expected*") {
        throw "$Because`nExpected output to contain:`n  $Expected`nActual output:`n$Text"
    }
}

function Assert-NotContains {
    param([string]$Text, [string]$Unexpected, [string]$Because)

    if ($Text -like "*$Unexpected*") {
        throw "$Because`nExpected output NOT to contain:`n  $Unexpected`nActual output:`n$Text"
    }
}

# The live repository must pass.
$live = Invoke-Validator -Root $repositoryRoot
if ($live.ExitCode -ne 0) {
    throw "Expected the live repository to pass validation.`n$($live.Output)"
}

# A prose-only campaign with no standard ledgers must fail -- and must fail for
# that reason alone. The fixture carries a complete index and world so that an
# unrelated gate cannot keep this test green after the ledger checks regress.
$proseOnly = Invoke-Validator -Root (Join-Path $fixtureRoot "missing_campaign_ledgers")
if ($proseOnly.ExitCode -eq 0) {
    throw "Expected the prose-only campaign fixture to fail."
}
Assert-Contains -Text $proseOnly.Output -Expected "is missing required ledger" `
    -Because "The prose-only fixture must fail on the required campaign ledger set."
Assert-Contains -Text $proseOnly.Output -Expected "does not define its Canonical Record" `
    -Because "The prose-only fixture must fail on the missing Canonical Record."
Assert-NotContains -Text $proseOnly.Output -Unexpected "WORLDS_AND_CAMPAIGNS" `
    -Because "The prose-only fixture must not trip the index gate; that would mask a ledger-check regression."

# A live campaign absent from the worlds-and-campaigns index must fail. This is
# the observed startup failure: the campaign is complete and committed, and the
# Engine Welcome Page never lists it because nothing looked for it.
$unindexed = Invoke-Validator -Root (Join-Path $fixtureRoot "unindexed_campaign")
if ($unindexed.ExitCode -eq 0) {
    throw "Expected the unindexed-campaign fixture to fail."
}
Assert-Contains -Text $unindexed.Output -Expected "campaigns/example/ is a live campaign but has no row in system/WORLDS_AND_CAMPAIGNS.md" `
    -Because "A live campaign missing from the index must be named by the gate."
Assert-NotContains -Text $unindexed.Output -Unexpected "worlds/example_world/ has no row" `
    -Because "The fixture lists its world; only the campaign row is under test."

# --- Hidden quest reward siting ------------------------------------------------
#
# Both halves are asserted against an isolated copy of the REAL repository and the
# REAL validator, because the value of these legs is that they fail when the gate
# stops firing -- not that a fixture agrees with itself. tools/ is deliberately not
# copied, matching test_name_collision_check.ps1: copying it switches on the
# generator -Check gates, which then fail on a partial copy rather than on anything
# under test.
#
# This exists because the record half previously lived only in a contract test,
# which is not one of the checkpoint's gates, and a record carrying a reward it may
# never carry reached a promoted checkpoint green.
$temporaryRoots = [System.Collections.Generic.List[string]]::new()

function New-RepositoryCopy {
    $destination = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-validator-" + [guid]::NewGuid().ToString("N"))
    $temporaryRoots.Add($destination)
    New-Item -ItemType Directory -Path $destination | Out-Null
    foreach ($name in @("system", "worlds", "campaigns")) {
        Copy-Item -LiteralPath (Join-Path $repositoryRoot $name) -Destination $destination -Recurse
    }
    return $destination
}

function Edit-FixtureFile {
    param([string]$Path, [string]$Find, [string]$Replace, [switch]$First)

    $text = [System.IO.File]::ReadAllText($Path)
    if (-not $text.Contains($Find)) {
        throw "Fixture anchor not found in $Path -- the live file moved and this leg is no longer testing what it claims."
    }
    # String.Replace below rewrites EVERY occurrence, so a non-unique anchor
    # mutates more of the fixture than the leg describes and the validator then
    # fails for a reason the assertion does not name. Anchors here are chosen to
    # be structural (a YAML key) rather than prose, and prose is exactly what
    # ordinary play rewrites -- so the risk this guards is an anchor that becomes
    # ambiguous later, not one that goes missing.
    $occurrences = ([regex]::Matches($text, [regex]::Escape($Find))).Count
    if (-not $First -and $occurrences -ne 1) {
        throw "Fixture anchor matches $occurrences times in $Path -- it must match exactly once, or this leg mutates more than it claims to."
    }
    # -First is for a leg whose claim is "SOME record of this shape is invalid"
    # rather than "this particular one is". The campaign legitimately holds many
    # quests of the same Rank paying the same XP -- two D-Rank Hidden quests, at
    # 150 under Profile 1.88 and 320 under 1.89 -- so a unique anchor would pin
    # the leg to how many of them exist, which is a number ordinary play moves.
    # Mutating exactly the first is deterministic and satisfies the claim.
    if ($First) {
        $index = $text.IndexOf($Find)
        [System.IO.File]::WriteAllText(
            $Path,
            $text.Remove($index, $Find.Length).Insert($index, $Replace),
            [System.Text.UTF8Encoding]::new($false))
        return
    }
    # ReadAllText/WriteAllText round-trips line endings untouched. A whole-file
    # rewrite that flips LF to CRLF silently disables the anchored regexes in the
    # validator under test, and the failure then surfaces nowhere near its cause.
    # Two-argument String.Replace is ordinal by definition. The comparison
    # overload is .NET Core only and does not exist under Windows PowerShell 5.1.
    [System.IO.File]::WriteAllText($Path, $text.Replace($Find, $Replace), [System.Text.UTF8Encoding]::new($false))
}

try {
    # The eight mutation legs below change one file each, so they share one copy
    # and the two files between them are restored from their captured bytes
    # between legs. Eight copies of an 84 MB tree bought nothing the restore does
    # not, and the guard after the legs is what keeps that true.
    $legRoot = New-RepositoryCopy
    $legFiles = @(
        "campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md",
        "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md",
        "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md"
    )
    $legPoint = New-FixtureRestorePoint -Root $legRoot -Paths $legFiles

    # Leg 1: a concealed-discovery record may not store a reward at all. The
    # record exists before, and independently of, any attachment -- there is no
    # Rank to price a reward from at authoring time.
    $storedRewardRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $storedRewardRoot "campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md") `
        -Find "    status: attached`n    attached_event: EVT-000325" `
        -Replace "    status: attached`n    attached_event: EVT-000325`n    reward_rank_at_attachment: D-Rank"
    $storedReward = Invoke-Validator -Root $storedRewardRoot
    if ($storedReward.ExitCode -eq 0) {
        throw "Expected a concealed-discovery record storing a reward to fail validation."
    }
    Assert-Contains -Text $storedReward.Output -Expected "stores 'reward_rank_at_attachment'" `
        -Because "The gate must name the offending key on the record."
    Assert-Contains -Text $storedReward.Output -Expected "206_WORLD_RULE_PROFILE.md" `
        -Because "The gate must cite the profile it read the rule from, not restate the rule itself."

    # Leg 2: the XP beside a recorded reward Rank must be that Rank's Gate-clear
    # milestone. Nothing checked this anywhere before -- a present-but-wrong
    # figure passed every gate, because each field was individually well-formed.
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $wrongXpRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $wrongXpRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md") `
        -First `
        -Find "          reward_rank: D-Rank`n          reward_xp: 320" `
        -Replace "          reward_rank: D-Rank`n          reward_xp: 999"
    $wrongXp = Invoke-Validator -Root $wrongXpRoot
    if ($wrongXp.ExitCode -eq 0) {
        throw "Expected an attached Hidden quest paying the wrong XP for its Rank to fail validation."
    }
    Assert-Contains -Text $wrongXp.Output -Expected "pays 999 XP at D-Rank" `
        -Because "The gate must name the wrong figure and the Rank it was paid at."
    Assert-Contains -Text $wrongXp.Output -Expected "at 320" `
        -Because "The gate must name the milestone it derived from the profile, proving it read the ladder rather than a constant."

    # Leg 3: an attached Hidden quest must carry the reward Rank at all. Section
    # 8.4.3 requires it recorded in quest state before notification.
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $missingRankRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $missingRankRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md") `
        -First `
        -Find "          reward_rank: D-Rank`n          reward_xp: 320" `
        -Replace "          reward_xp: 320"
    $missingRank = Invoke-Validator -Root $missingRankRoot
    if ($missingRank.ExitCode -eq 0) {
        throw "Expected an attached Hidden quest with no reward_rank to fail validation."
    }
    Assert-Contains -Text $missingRank.Output -Expected "records no reward_rank" `
        -Because "The gate must name the missing field on the quest."

    # Leg 4: the dimensional inventory may not declare a kind Profile Section
    # 15.3.2 does not name. `/system gear` renders one STORED group per kind and
    # prints its list length as the group's live count, so a sixth kind is a
    # group the panel has no rule for and a count nothing carries.
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $unknownKindRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $unknownKindRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md") `
        -Find "      materials:" `
        -Replace "      trinkets:"
    $unknownKind = Invoke-Validator -Root $unknownKindRoot
    if ($unknownKind.ExitCode -eq 0) {
        throw "Expected an inventory declaring a kind Section 15.3.2 does not name to fail validation."
    }
    Assert-Contains -Text $unknownKind.Output -Expected "declares kind 'trinkets'" `
        -Because "The gate must name the invented kind."
    Assert-Contains -Text $unknownKind.Output -Expected "omits the 'materials' kind" `
        -Because "Renaming a kind also loses it, and the panel cannot render 'none' for a group that is absent from state."

    # Leg 5: no holding may sit loose under `inventory` rather than inside a
    # kind. This is the shape the field had before Profile 1.50 -- undifferentiated
    # prose a renderer had to classify at render time -- and it is exactly how a
    # real possession went missing from a `/system gear` call (EVT-000366).
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $ungroupedRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $ungroupedRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md") `
        -Find "        - `"Antidote x2 (banked, unwithdrawn)`"" `
        -Replace "      - `"Antidote x2 (banked, unwithdrawn)`""
    $ungrouped = Invoke-Validator -Root $ungroupedRoot
    if ($ungrouped.ExitCode -eq 0) {
        throw "Expected a holding stored outside every kind to fail validation."
    }
    Assert-Contains -Text $ungrouped.Output -Expected "directly under the field rather than inside one of Section 15.3.2's five kinds" `
        -Because "The gate must say the holding is ungrouped, not merely that something is malformed."

    # Leg 6: a kind may not be declared twice, and none of the five may go
    # missing. Both halves fire from one mutation because they are the same
    # defect seen from either end: a holding whose group is ambiguous, and a
    # group with no list to take its count from.
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $duplicateKindRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $duplicateKindRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md") `
        -Find "      special:" `
        -Replace "      gear:"
    $duplicateKind = Invoke-Validator -Root $duplicateKindRoot
    if ($duplicateKind.ExitCode -eq 0) {
        throw "Expected an inventory declaring one kind twice and omitting another to fail validation."
    }
    Assert-Contains -Text $duplicateKind.Output -Expected "declares the same kind twice" `
        -Because "The gate must name the ambiguity, since a holding under a repeated key belongs to no single group."
    Assert-Contains -Text $duplicateKind.Output -Expected "omits the 'special' kind" `
        -Because "The gate must name the kind that went missing."

    # Leg 7: a boss kill that records neither its core nor its drop roll must
    # fail. EVT-000341 really did omit both (F-010); what satisfies the gate
    # today is the Correction note the audit appended to that Event, pointing at
    # EVT-000369 and EVT-000370 where the gap and the live roll are recorded.
    # Break that note's wording and both halves must fire again.
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $noDropRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $noDropRoot "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md") `
        -Find "omitted the boss's core and Section 11.2 boss-drop roll entirely" `
        -Replace "omitted what the kill yielded entirely"
    Edit-FixtureFile -Path (Join-Path $noDropRoot "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md") `
        -Find "the core and the boss-drop d100 belong to this kill" `
        -Replace "what it yielded belongs to this kill"
    $noDrop = Invoke-Validator -Root $noDropRoot
    if ($noDrop.ExitCode -eq 0) {
        throw "Expected a boss kill recording neither core nor drop roll to fail validation."
    }
    Assert-Contains -Text $noDrop.Output -Expected "EVT-000341 resolves a boss kill" `
        -Because "The gate must name the Event whose drops are missing."
    Assert-Contains -Text $noDrop.Output -Expected "the core Section 11.1 makes automatic" `
        -Because "The core half must fire; Section 11.1 owes it without a roll."
    Assert-Contains -Text $noDrop.Output -Expected "the Section 11.2 boss drop" `
        -Because "The drop half must fire independently of the core half."

    # Leg 8: the acknowledgement escape must be Event-specific, not a blanket
    # waiver. The live tree no longer exercises that path -- the loot was rolled
    # and paid out at EVT-000370/EVT-000371, and the acknowledgement went with
    # it -- so the case is built here: break the Correction note as in leg 7, and
    # add back an acknowledgement that names some OTHER Event. The gate must
    # still fire, because an acknowledgement only covers the Event it names.
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $wrongEventRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $wrongEventRoot "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md") `
        -Find "omitted the boss's core and Section 11.2 boss-drop roll entirely" `
        -Replace "omitted what the kill yielded entirely"
    Edit-FixtureFile -Path (Join-Path $wrongEventRoot "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md") `
        -Find "the core and the boss-drop d100 belong to this kill" `
        -Replace "what it yielded belongs to this kill"
    Edit-FixtureFile -Path (Join-Path $wrongEventRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md") `
        -Find "      status_recovery:" `
        -Replace "      unresolved_gate_loot: `"Owed and unresolved at ``EVT-000999``.`"`n      status_recovery:"
    $wrongEvent = Invoke-Validator -Root $wrongEventRoot
    if ($wrongEvent.ExitCode -eq 0) {
        throw "Expected an acknowledgement naming a different Event to leave EVT-000341 unacknowledged."
    }
    Assert-Contains -Text $wrongEvent.Output -Expected "EVT-000341 resolves a boss kill" `
        -Because "An acknowledgement that names another Event must not waive this one."

    # Leg 9: the negative half must not fire on a compliant repository. An
    # unconditional failure would pass legs 1-8 and block every real save.
    Assert-NotContains -Text $live.Output -Unexpected "stores 'reward" `
        -Because "The live repository is compliant; the record half must not fire on it."
    Assert-NotContains -Text $live.Output -Unexpected "records no reward_rank" `
        -Because "The live repository records its reward Rank; the quest half must not fire on it."
    Assert-NotContains -Text $live.Output -Unexpected "system_state.inventory" `
        -Because "The live inventory declares all five kinds and groups every holding; no half of the inventory gate may fire on it."
    Assert-NotContains -Text $live.Output -Unexpected "resolves a boss kill" `
        -Because "Every live boss kill either records its drops or has its omission acknowledged; the gate must be silent on the real repository."

    # The legs shared one copy, so the isolation a fresh copy gave for free is
    # owed back here: the byte check catches a restore that stopped working, and
    # the validator catches a leg that wrote a file the restore point never
    # captured. Without it, leg 2 and leg 3 could be asserting against leg 1's
    # mutation and would still report green.
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $drifted = Assert-FixtureRestored -Root $legRoot -RestorePoint $legPoint
    if ($drifted.Count -gt 0) {
        throw "Fixture leak: $($drifted -join ', ') did not restore to baseline bytes, so the later legs ran against unknown state."
    }
    $residual = Invoke-Validator -Root $legRoot
    if ($residual.ExitCode -ne 0) {
        throw "Fixture leak: the shared leg fixture no longer validates once restored, so a leg wrote a file outside the restore point:`n$($residual.Output)"
    }
}
finally {
    foreach ($temporary in $temporaryRoots) {
        if (Test-Path -LiteralPath $temporary) {
            Remove-Item -LiteralPath $temporary -Recurse -Force -ErrorAction SilentlyContinue
        }
    }
}

Write-Host "Validator regression tests PASSED" -ForegroundColor Green
exit 0
