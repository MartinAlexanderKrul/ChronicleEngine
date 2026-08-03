[CmdletBinding()]
param()

# Recommendation R6's missing behavioural coverage, unblocked by Decision 081.
#
# R6 shipped its trigger manifest and dispatch without the fixtures its own
# acceptance criteria named. Those criteria are about narration decisions the
# Runtime makes, which no script can observe directly — but the *stored
# consequence* of each decision is checkable, and that is what these cases do.
#
# What is covered here:
#   - a crisis that produced two live offers (one offer per crisis);
#   - a concealed record attached twice (no duplicate Hidden pointer on
#     re-entry);
#   - an opportunity offered again after it was already settled;
#   - capacity arithmetic and the capacity ceiling;
#   - an entry that names no trigger domain, or an unknown one.
#
# What is NOT covered, stated plainly rather than implied: "an irrelevant
# exchange performs no full eligibility scan" is a claim about work the Runtime
# does *not* do inside a turn. It leaves no repository trace, so no fixture can
# prove it. It remains a resident-layer text assertion in
# test_gatefall_quest_contract.ps1, which is weaker, and knowing that is better
# than believing this suite covers it.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_runtime_configuration.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")

$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-trigger-state-" + [guid]::NewGuid().ToString("N"))
$sheet = "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"

function Invoke-Validator {
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $temporaryRoot 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{ ExitCode = $LASTEXITCODE; Output = ($output -join "`n") }
}

function Set-Text {
    param([string]$RelativePath, [string]$Content)
    [System.IO.File]::WriteAllText(
        (Join-Path $temporaryRoot $RelativePath),
        $Content,
        (New-Object System.Text.UTF8Encoding($false)))
}

function Assert-Rejected {
    param([string]$Name, [string]$Expected, [string]$Content)
    Set-Text -RelativePath $sheet -Content $Content
    $result = Invoke-Validator
    if ($result.ExitCode -eq 0) {
        throw "$Name was accepted, but the gate should have rejected it."
    }
    if ($result.Output -notlike "*$Expected*") {
        throw "$Name failed for the wrong reason.`nExpected: $Expected`nActual:`n$($result.Output)"
    }
}

try {
    New-Item -ItemType Directory -Path $temporaryRoot | Out-Null
    New-FixtureRepository -SourceRoot $repositoryRoot -DestinationRoot $temporaryRoot -IncludeSaves | Out-Null

    $baseline = Invoke-Validator
    if ($baseline.ExitCode -ne 0) {
        throw "The live repository does not pass runtime configuration validation:`n$($baseline.Output)"
    }

    $original = Get-Content -LiteralPath (Join-Path $temporaryRoot $sheet) -Raw -Encoding UTF8

    # The live lists may be empty or already carry real quests - the campaign
    # attached its first Hidden pointer in ordinary play. Both shapes are handled
    # so these fixtures do not go stale the next time a quest is attached.
    function Add-Entries {
        param([string]$Key, [string]$Body)

        $empty = "      ${Key}: []"
        if ($original.Contains($empty)) {
            return $original.Replace($empty, "      ${Key}:`n$Body")
        }
        $populated = "      ${Key}:`n"
        if ($original.Contains($populated)) {
            return $original.Replace($populated, "      ${Key}:`n$Body`n")
        }
        throw "Test precondition failed: no '$Key' list in $sheet."
    }

    function With-Active {
        param([string]$Body)
        return Add-Entries -Key "active" -Body $Body
    }
    function With-Pending {
        param([string]$Body)
        return Add-Entries -Key "pending_offers" -Body $Body
    }

    # One crisis, two live Urgent opportunities.
    $twoOffers = @"
        - type: urgent
          crisis_event: EVT-000900
          objective_key: fixture-crisis
          status: accepted
        - type: urgent
          crisis_event: EVT-000900
          objective_key: fixture-crisis
          status: accepted
"@
    Assert-Rejected -Name "one crisis producing two live Urgent opportunities" `
        -Expected "one opportunity must produce one live state transition" `
        -Content (With-Active $twoOffers)

    # The same concealed record attached twice — leaving and re-entering.
    $twoPointers = @"
        - type: hidden
          quest_key: fixture-warehouse
          anchor: ENT-000161
          status: attached
        - type: hidden
          quest_key: fixture-warehouse
          anchor: ENT-000161
          status: attached
"@
    Assert-Rejected -Name "the same concealed record attached twice" `
        -Expected "one opportunity must produce one live state transition" `
        -Content (With-Active $twoPointers)

    # An opportunity offered again after it was already settled.
    $reOffered = @"
        - type: urgent
          crisis_event: EVT-000901
          objective_key: fixture-settled
          status: declined
"@
    Assert-Rejected -Name "a settled opportunity offered again" `
        -Expected "offered again while already settled" `
        -Content (With-Pending $reOffered)

    if ($original -notmatch '(?m)^      capacity_total: (?<total>\d+)$') {
        throw "Test precondition failed: no capacity_total in $sheet."
    }
    $declaredTotal = [int]$Matches["total"]

    # More active quests than capacity allows. The fixture is sized from the live
    # capacity_total rather than pinned to a count, for the same reason Add-Entries
    # handles both list shapes: capacity moves with System Rank (Multitask's Rank
    # before Profile 1.49 retired it), and a pinned
    # three-quest fixture silently stopped exceeding anything when Intelligence
    # crossed 44 and the ceiling went 3 -> 4 (EVT-000235). Each entry needs its own
    # crisis_event and objective_key, or the one-offer-per-crisis check rejects
    # this first and the case passes for the wrong reason.
    $overCapacity = ((1..($declaredTotal + 1) | ForEach-Object {
        "        - type: urgent`n          crisis_event: EVT-{0:D6}`n          objective_key: fixture-over-{1}`n          status: accepted" -f (910 + $_), $_
    }) -join "`n")
    Assert-Rejected -Name "more active quests than capacity" `
        -Expected "exceed capacity_total" `
        -Content (With-Active $overCapacity)

    # Capacity arithmetic that does not add up.
    #
    # Only the PRE-1.49 stored shape has parts to disagree with. From Profile 1.49
    # capacity derives from System Rank and the ledger stores `capacity_total` alone,
    # so the fixture supplies the legacy shape rather than mutating the live one --
    # immutable checkpoints carry it forever and it must keep validating. Mutating
    # the live total instead would assert nothing: with no parts stored, there is no
    # arithmetic to contradict.
    $legacyShape = $original.Replace(
        "      capacity_total: $declaredTotal",
        "      base_capacity: 1`n      multitask_bonus: $($declaredTotal - 1)`n      capacity_total: $($declaredTotal + 3)")
    Assert-Rejected -Name "capacity_total disagreeing with its parts" `
        -Expected "plus declared bonuses" `
        -Content $legacyShape

    # An entry that routes nowhere.
    $noDomain = @"
        - crisis_event: EVT-000905
          objective_key: fixture-orphan
          status: accepted
"@
    Assert-Rejected -Name "an entry naming no trigger kind" `
        -Expected "matches no declared domain" `
        -Content (With-Active $noDomain)

    $unknownDomain = @"
        - type: invented
          crisis_event: EVT-000906
          objective_key: fixture-unknown
          status: accepted
"@
    Assert-Rejected -Name "an entry naming an unknown trigger kind" `
        -Expected "matches no declared domain" `
        -Content (With-Active $unknownDomain)

    # A well-formed pair must still be accepted: the checks reject duplication,
    # not the presence of live quests.
    $legitimate = @"
        - type: urgent
          crisis_event: EVT-000907
          objective_key: fixture-one
          status: accepted
        - type: hidden
          quest_key: fixture-other
          anchor: ENT-000162
          status: attached
"@
    Set-Text -RelativePath $sheet -Content (With-Active $legitimate)
    $accepted = Invoke-Validator
    if ($accepted.ExitCode -ne 0) {
        throw "Two distinct live opportunities were rejected:`n$($accepted.Output)"
    }

    Set-Text -RelativePath $sheet -Content $original
    $restored = Invoke-Validator
    if ($restored.ExitCode -ne 0) {
        throw "The restored repository no longer passes:`n$($restored.Output)"
    }

    Write-Host "Trigger state regression tests PASSED" -ForegroundColor Green
} finally {
    if (Test-Path -LiteralPath $temporaryRoot) {
        Remove-Item -LiteralPath $temporaryRoot -Recurse -Force
    }
}
