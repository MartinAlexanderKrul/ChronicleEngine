[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"

# Why this test exists
#
# Decision 082 specified how a pending world-side commitment is SETTLED and
# Runtime Section 2.4 forbids a status view, checkpoint or session close from
# being "the first operation that notices a commitment has come due". Nothing
# checked it. F-002 is the same failure one layer over, in a mechanism owing no
# roll and no discretion: three tracked-board deadlines passed unsettled and a
# human reading the ledger is what caught it.
#
# The gate under test adds no shape. Data Model Section 7.3 already makes
# tracked state canon held inside a record, Section 7.4 already requires `Due`
# and fixes the five statuses, and Decision 078 already puts an exact campaign
# anchor in live state. The check is arithmetic over contracts that exist, which
# is what keeps it a refinement under Decision 069.
#
# These cases run against isolated copies of the real repository and assert the
# REAL validator's verdict. A gate whose firing has never been demonstrated is
# indistinguishable from one that cannot fire -- which is the whole complaint
# this work started from -- so every case below asserts on the durable message
# text, not merely on a non-zero exit code.

function Invoke-Validator {
    param([string]$RepositoryRoot)

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $RepositoryRoot -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

function Copy-ValidationRepository {
    param([string]$Destination)

    New-Item -ItemType Directory -Path $Destination | Out-Null
    foreach ($name in @("system", "worlds", "campaigns")) {
        Copy-Item -LiteralPath (Join-Path $root $name) -Destination $Destination -Recurse
    }
}

# The subject campaign carries Decision 078's exact anchor, which is what the
# staleness half compares against. Resolve it rather than hard-coding a date:
# the live campaign advances, and a pinned date would rot into a false pass.
$campaign = "gatefall_pendragon_001"
$sheetRelative = "campaigns/$campaign/100_CHARACTER_SHEET.md"
$anchorMatch = [regex]::Match(
    (Get-Content -LiteralPath (Join-Path $root $sheetRelative) -Raw),
    '(?m)^[ \t]*campaign_time:[ \t]*"?([0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9:]{8}[+-][0-9:]{5})"?')
if (-not $anchorMatch.Success) {
    throw "No Decision 078 campaign_time anchor found in $sheetRelative; the settlement gate has nothing to compare against."
}
$anchor = [datetimeoffset]::Parse($anchorMatch.Groups[1].Value)
$overdue = $anchor.AddDays(-2).ToString("yyyy-MM-ddTHH:mm:sszzz")
$future  = $anchor.AddDays(2).ToString("yyyy-MM-ddTHH:mm:sszzz")

# A real owner from the live campaign, so the reference resolves and the case
# fails for the reason under test rather than for an unknown identifier.
$owner = "ENT-000130"

function New-CommitmentBlock {
    param([string]$Due, [string]$Status, [string]$Reason)

    $lines = @(
        '',
        '```yaml',
        'pending_commitments:',
        "  - owner: $owner",
        '    subject: canvass the registry for a crewless C-Rank striker',
        "    due: `"$Due`"",
        "    status: $Status"
    )
    if ($Reason) { $lines += "    reason: $Reason" }
    $lines += '```'
    $lines += ''
    return ($lines -join "`n")
}

$cases = @(
    @{ Name = 'C-01 overdue pending';    Due = $overdue; Status = 'pending';   Reason = $null;
       ShouldFail = $true;  Expect = 'behind the campaign anchor' }
    @{ Name = 'C-02 overdue deferred';   Due = $overdue; Status = 'deferred';  Reason = $null;
       ShouldFail = $true;  Expect = 'behind the campaign anchor' }
    @{ Name = 'C-03 overdue but settled'; Due = $overdue; Status = 'met';      Reason = $null;
       ShouldFail = $false; Expect = $null }
    @{ Name = 'C-04 lapsed without reason'; Due = $overdue; Status = 'lapsed'; Reason = $null;
       ShouldFail = $true;  Expect = 'a lapse is a settlement, not an absence' }
    @{ Name = 'C-05 lapsed with reason';  Due = $overdue; Status = 'lapsed';   Reason = 'she never got past the desk backlog';
       ShouldFail = $false; Expect = $null }
    @{ Name = 'C-06 pending, not yet due'; Due = $future; Status = 'pending';  Reason = $null;
       ShouldFail = $false; Expect = $null }
    @{ Name = 'C-07 unparseable due time'; Due = 'soon';  Status = 'pending';  Reason = $null;
       ShouldFail = $true;  Expect = 'no clock-reachable due time' }
    @{ Name = 'C-08 status outside the five'; Due = $future; Status = 'maybe'; Reason = $null;
       ShouldFail = $true;  Expect = "must be one of" }
)

$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-commitment-gate-" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $tempRoot | Out-Null
$failures = [System.Collections.Generic.List[string]]::new()

try {
    # Baseline: the unmodified copy must pass, or every result below is noise.
    $baseline = Join-Path $tempRoot "baseline"
    Copy-ValidationRepository $baseline
    $baselineResult = Invoke-Validator $baseline
    if ($baselineResult.ExitCode -ne 0) {
        throw "Baseline repository copy does not validate, so the fixtures below prove nothing:`n$($baselineResult.Output)"
    }

    # The live repository records no commitments at all, so the gate is vacuous
    # today. Assert that plainly: it is the honest limit of this work, and if a
    # play session ever backfills them this assertion is what will notice.
    $liveHasCommitments = $false
    foreach ($ledger in @(Get-ChildItem -LiteralPath (Join-Path $root "campaigns") -Recurse -Filter "*.md" -File)) {
        if ((Get-Content -LiteralPath $ledger.FullName -Raw) -match 'pending_commitments:') {
            $liveHasCommitments = $true
            break
        }
    }

    $caseIndex = 0
    foreach ($case in $cases) {
        $caseIndex++
        $caseRoot = Join-Path $tempRoot "case$caseIndex"
        Copy-ValidationRepository $caseRoot

        $target = Join-Path $caseRoot "campaigns/$campaign/180_CURRENT_STATE.md"
        Add-Content -LiteralPath $target -Value (New-CommitmentBlock $case.Due $case.Status $case.Reason)

        $result = Invoke-Validator $caseRoot

        if ($case.ShouldFail) {
            if ($result.ExitCode -eq 0) {
                $failures.Add("$($case.Name): expected the validator to reject this state, but it passed.") | Out-Null
            } elseif ($result.Output -notmatch [regex]::Escape($case.Expect)) {
                $failures.Add("$($case.Name): rejected, but not for the authored reason. Expected text '$($case.Expect)'. Got:`n$($result.Output)") | Out-Null
            }
        } else {
            if ($result.ExitCode -ne 0) {
                $failures.Add("$($case.Name): expected this state to be accepted, but the validator rejected it:`n$($result.Output)") | Out-Null
            }
        }
    }
} finally {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
}

if ($failures.Count -gt 0) {
    Write-Host "Commitment settlement gate FAILED ($($failures.Count) case(s))" -ForegroundColor Red
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

Write-Host "Commitment settlement gate PASSED ($($cases.Count) cases)"
if (-not $liveHasCommitments) {
    Write-Host "  Note: no live campaign records a pending commitment, so the gate is vacuous against real state." -ForegroundColor Yellow
    Write-Host "  Decisions 082 and 083 built a settler and no writer. The gate bites when a session records the first one."
}
exit 0
