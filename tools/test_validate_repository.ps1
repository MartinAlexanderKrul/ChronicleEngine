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
    param([string]$Path, [string]$Find, [string]$Replace)

    $text = [System.IO.File]::ReadAllText($Path)
    if (-not $text.Contains($Find)) {
        throw "Fixture anchor not found in $Path -- the live file moved and this leg is no longer testing what it claims."
    }
    # ReadAllText/WriteAllText round-trips line endings untouched. A whole-file
    # rewrite that flips LF to CRLF silently disables the anchored regexes in the
    # validator under test, and the failure then surfaces nowhere near its cause.
    # Two-argument String.Replace is ordinal by definition. The comparison
    # overload is .NET Core only and does not exist under Windows PowerShell 5.1.
    [System.IO.File]::WriteAllText($Path, $text.Replace($Find, $Replace), [System.Text.UTF8Encoding]::new($false))
}

try {
    # The three legs below change one file each, so they share one copy and the
    # two files between them are restored from their captured bytes between legs.
    # Three copies of an 84 MB tree bought nothing the restore does not, and the
    # guard after the legs is what keeps that true.
    $legRoot = New-RepositoryCopy
    $legFiles = @(
        "campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md",
        "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
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
        -Find "          reward_rank: D-Rank`n          reward_xp: 150" `
        -Replace "          reward_rank: D-Rank`n          reward_xp: 999"
    $wrongXp = Invoke-Validator -Root $wrongXpRoot
    if ($wrongXp.ExitCode -eq 0) {
        throw "Expected an attached Hidden quest paying the wrong XP for its Rank to fail validation."
    }
    Assert-Contains -Text $wrongXp.Output -Expected "pays 999 XP at D-Rank" `
        -Because "The gate must name the wrong figure and the Rank it was paid at."
    Assert-Contains -Text $wrongXp.Output -Expected "at 150" `
        -Because "The gate must name the milestone it derived from the profile, proving it read the ladder rather than a constant."

    # Leg 3: an attached Hidden quest must carry the reward Rank at all. Section
    # 8.4.3 requires it recorded in quest state before notification.
    Restore-FixtureFiles -Root $legRoot -RestorePoint $legPoint
    $missingRankRoot = $legRoot
    Edit-FixtureFile -Path (Join-Path $missingRankRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md") `
        -Find "          reward_rank: D-Rank`n          reward_xp: 150" `
        -Replace "          reward_xp: 150"
    $missingRank = Invoke-Validator -Root $missingRankRoot
    if ($missingRank.ExitCode -eq 0) {
        throw "Expected an attached Hidden quest with no reward_rank to fail validation."
    }
    Assert-Contains -Text $missingRank.Output -Expected "records no reward_rank" `
        -Because "The gate must name the missing field on the quest."

    # Leg 4: the negative half must not fire on a compliant repository. An
    # unconditional failure would pass legs 1-3 and block every real save.
    Assert-NotContains -Text $live.Output -Unexpected "stores 'reward" `
        -Because "The live repository is compliant; the record half must not fire on it."
    Assert-NotContains -Text $live.Output -Unexpected "records no reward_rank" `
        -Because "The live repository records its reward Rank; the quest half must not fire on it."

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
