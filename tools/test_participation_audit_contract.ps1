[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Decision 085 - the participation audit.
#
# Half of this mechanism is verifiable and half is not, and the tests are written
# to keep that split honest. `record-updated` names the object a promotion moved,
# and the validator proves that object actually cites the Event -- that is the
# Decision 076 failure, where a checkpoint passed two validators twice while the
# content it claimed to promote was gone. `no-change` is an assertion the checker
# cannot confirm; it exists only so coverage is decidable, and no test here
# pretends otherwise.
#
# Fixtures are derived from live state rather than pinned: the Event high-water
# mark and the coverage baseline both advance with ordinary play, so a hardcoded
# identifier would fail this contract after every session for reasons unrelated
# to the invariant.

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")
# Outside the repository, like every other suite in this directory. Writing a
# fixture tree into <repo>/tmp/ leaves it inside the working tree when a run is
# interrupted, where the next `git add -A` commits it -- which is how 669 files
# of a sibling suite's fixture landed in this repository's history.
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-participation-audit-" + [guid]::NewGuid().ToString("N"))
$utf8 = [System.Text.UTF8Encoding]::new($false)

$chronicleRelative = "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md"
$registryRelative = "system/ID_REGISTRY.md"
$profileRelative = "worlds/gatefall/206_WORLD_RULE_PROFILE.md"

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw $Message }
}

function Get-Text { param([string]$Path) return [System.IO.File]::ReadAllText($Path) }
function Set-Text { param([string]$Path, [string]$Text) [System.IO.File]::WriteAllText($Path, $Text, $utf8) }

function Invoke-Validator {
    param([string]$FixtureRoot)
    $previous = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    # -CoreOnly: every assertion here is about participation audits. The
    # manifest-resolving and index-synchronisation checks need a saves tree this
    # fixture deliberately omits, and would fail first on an unrelated invariant.
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $FixtureRoot -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $ErrorActionPreference = $previous
    return [pscustomobject]@{ ExitCode = $exitCode; Output = ($output -join "`n") }
}

# Every case here mutates the same three files -- the chronicle it appends an
# Event to, the registry that must cover the new identifier, and (in the
# prospective-adoption case) the profile holding the coverage baseline. So the
# cases share one fixture and those three files are restored from their original
# bytes between them, rather than rebuilding the whole tree eight times.
#
# WriteAllBytes restores exactly what the copy produced, encoding and line
# endings included. The guard at the end of the run is what keeps that claim
# honest: a case that ever writes a fourth file, or a restore that ever stops
# working, fails there instead of silently handing the next case unknown state.
$script:FixtureFiles = @($chronicleRelative, $registryRelative, $profileRelative)
$script:FixtureRoot = $null
$script:FixturePoint = $null

function New-Fixture {
    if ($null -eq $script:FixtureRoot) {
        $script:FixtureRoot = Join-Path $tempRoot ([guid]::NewGuid().ToString("N"))
        New-FixtureRepository -SourceRoot $root -DestinationRoot $script:FixtureRoot | Out-Null
        $script:FixturePoint = New-FixtureRestorePoint -Root $script:FixtureRoot -Paths $script:FixtureFiles
    } else {
        Restore-FixtureFiles -Root $script:FixtureRoot -RestorePoint $script:FixturePoint
    }
    return $script:FixtureRoot
}

function Assert-NoFixtureLeak {
    $drifted = Assert-FixtureRestored -Root $script:FixtureRoot -RestorePoint $script:FixturePoint
    Assert-True ($drifted.Count -eq 0) `
        "Fixture leak: $($drifted -join ', ') did not restore to baseline bytes, so cases after the first ran against unknown state."
    $residual = Invoke-Validator -FixtureRoot $script:FixtureRoot
    Assert-True ($residual.ExitCode -eq 0) `
        "Fixture leak: the shared fixture no longer validates once restored, so a case wrote a file outside the restored set:`n$($residual.Output)"
}

# The coverage baseline the live profile declares.
function Get-CoverageBaseline {
    param([string]$FixtureRoot)
    $text = Get-Text (Join-Path $FixtureRoot $profileRelative)
    $match = [regex]::Match($text, '(?m)^  baseline_as_of:\s*EVT-(\d{6})\s*$')
    Assert-True $match.Success "The Gatefall profile declares no participation coverage baseline."
    return [int]$match.Groups[1].Value
}

# A fixture Event must be allocated past the live high-water mark, not merely
# past the coverage baseline: adoption Events accumulate above the baseline, and
# reusing one of their identifiers trips duplicate-definition first.
function Get-NextEventNumber {
    param([string]$FixtureRoot)
    $text = Get-Text (Join-Path $FixtureRoot $registryRelative)
    $match = [regex]::Match($text, '(?m)^\| Event \| `EVT-` \| Event \| EVT-(\d{6}) \|$')
    Assert-True $match.Success "The registry declares no Event high-water mark."
    return ([int]$match.Groups[1].Value) + 1
}

# Move the declared baseline forward so a given Event falls at or before it.
function Set-CoverageBaseline {
    param([string]$FixtureRoot, [int]$Number)
    $path = Join-Path $FixtureRoot $profileRelative
    $text = Get-Text $path
    # Built by concatenation, not -f: the format operator would read the ${1}
    # backreference as a placeholder of its own and throw.
    $replacement = '${1}EVT-' + ('{0:D6}' -f $Number)
    Set-Text $path ([regex]::Replace(
        $text,
        '(?m)^(  baseline_as_of:\s*)EVT-\d{6}\s*$',
        $replacement
    ))
}

# Append a covered Event naming an NPC, with whatever audit block the case needs.
function Add-CoveredEvent {
    param([string]$FixtureRoot, [string]$AuditBlock, [int]$Number)

    $identifier = "EVT-{0:D6}" -f $Number
    $chronicle = Join-Path $FixtureRoot $chronicleRelative
    $event = @"

### $identifier - Participation fixture

``````yaml
id: $identifier
canonical_record: REC-000079
schema_version: "0.1.6"
status: active
provenance:
  source: transcript
  game_date: "2026-08-11 ~09:00 -05:00"
  real_date: "2026-07-31"
type: Event
kind: social
importance: minor
game_date: "2026-08-11 ~09:00 -05:00"
participants:
  - ENT-000139
  - ENT-000130
$AuditBlock
description: A fixture exchange used only by the participation audit contract.
``````
"@
    Set-Text $chronicle ((Get-Text $chronicle) + $event)

    # The registry high-water mark must cover the new identifier or an unrelated
    # invariant fails first and the case proves nothing.
    $registry = Join-Path $FixtureRoot $registryRelative
    $registryText = Get-Text $registry
    $registryText = [regex]::Replace(
        $registryText,
        '(?m)^(\| Event \| `EVT-` \| Event \| )EVT-\d{6}( \|)$',
        "`${1}$identifier`${2}"
    )
    # The allocation log must cover it too. The high-water mark alone is not
    # enough, and the log check fires before anything this contract is about.
    $logPattern = '(?m)^\| EVT-\d{6} \| Event \|[^\r\n]*\|$'
    $lastLog = [regex]::Matches($registryText, $logPattern) | Select-Object -Last 1
    Assert-True ($null -ne $lastLog) "The registry allocation log has no Event rows to extend."
    $registryText = $registryText.Insert(
        $lastLog.Index + $lastLog.Length,
        "`n| $identifier | Event | Participation audit contract fixture |"
    )
    Set-Text $registry $registryText
}

try {
    New-Item -ItemType Directory -Path $tempRoot -Force | Out-Null

    # --- Baseline: the live repository is clean ------------------------------
    $clean = New-Fixture
    $baselineNumber = Get-CoverageBaseline -FixtureRoot $clean
    $nextNumber = Get-NextEventNumber -FixtureRoot $clean
    Assert-True ($nextNumber -gt $baselineNumber) "The next Event would not fall inside the coverage window."
    $result = Invoke-Validator -FixtureRoot $clean
    Assert-True ($result.ExitCode -eq 0) "The live repository must validate before mutations:`n$($result.Output)"

    # --- Coverage fires on a covered Event with no audit ---------------------
    $fixture = New-Fixture
    Add-CoveredEvent -FixtureRoot $fixture -Number $nextNumber -AuditBlock "participation_audits: []"
    $result = Invoke-Validator -FixtureRoot $fixture
    Assert-True ($result.ExitCode -ne 0) "A covered Event naming an NPC with no participation audit was accepted."
    Assert-True ($result.Output -match 'records no participation audit for them') "Missing participation coverage failed for the wrong reason:`n$($result.Output)"

    # --- An explicit no-change satisfies coverage ----------------------------
    # The negative assertion is the whole reason coverage is decidable. If this
    # case ever fails, the mechanism has become a requirement that every NPC
    # appearance mutate a record, which manufactures canon to satisfy a checker.
    $fixture = New-Fixture
    Add-CoveredEvent -FixtureRoot $fixture -Number $nextNumber -AuditBlock @"
participation_audits:
  - subject: ENT-000130
    result: no-change
  - subject: ENT-000139
    result: no-change
"@
    $result = Invoke-Validator -FixtureRoot $fixture
    Assert-True ($result.ExitCode -eq 0) "An explicit no-change did not satisfy participation coverage:`n$($result.Output)"

    # --- The verifiable half: a claimed promotion that did not happen --------
    # REL-000066 exists and is live, but it cannot cite an Event appended after it.
    $fixture = New-Fixture
    Add-CoveredEvent -FixtureRoot $fixture -Number $nextNumber -AuditBlock @"
participation_audits:
  - subject: ENT-000130
    result: no-change
  - subject: ENT-000139
    result: record-updated
    record: REL-000066
"@
    $result = Invoke-Validator -FixtureRoot $fixture
    Assert-True ($result.ExitCode -ne 0) "An unbacked record-updated claim was accepted; the checkable half of the audit has no teeth."
    Assert-True ($result.Output -match 'the promotion was claimed and not made') "Unbacked promotion claim failed for the wrong reason:`n$($result.Output)"

    # --- record-updated naming a record that does not exist ------------------
    $fixture = New-Fixture
    Add-CoveredEvent -FixtureRoot $fixture -Number $nextNumber -AuditBlock @"
participation_audits:
  - subject: ENT-000130
    result: no-change
  - subject: ENT-000139
    result: record-updated
    record: REL-999999
"@
    $result = Invoke-Validator -FixtureRoot $fixture
    Assert-True ($result.ExitCode -ne 0) "A participation audit naming an undefined record was accepted."

    # --- record-updated with no record named ---------------------------------
    $fixture = New-Fixture
    Add-CoveredEvent -FixtureRoot $fixture -Number $nextNumber -AuditBlock @"
participation_audits:
  - subject: ENT-000130
    result: no-change
  - subject: ENT-000139
    result: record-updated
"@
    $result = Invoke-Validator -FixtureRoot $fixture
    Assert-True ($result.ExitCode -ne 0) "A record-updated audit naming no moved record was accepted."
    Assert-True ($result.Output -match 'names no valid moved record') "Recordless promotion claim failed for the wrong reason:`n$($result.Output)"

    # --- An audit for someone who was not there ------------------------------
    $fixture = New-Fixture
    Add-CoveredEvent -FixtureRoot $fixture -Number $nextNumber -AuditBlock @"
participation_audits:
  - subject: ENT-000130
    result: no-change
  - subject: ENT-000139
    result: no-change
  - subject: ENT-000125
    result: no-change
"@
    $result = Invoke-Validator -FixtureRoot $fixture
    Assert-True ($result.ExitCode -ne 0) "A participation audit for a non-participant was accepted."
    Assert-True ($result.Output -match 'which is not among its own participants') "Non-participant audit failed for the wrong reason:`n$($result.Output)"

    # --- Prospective only: an Event at or before the baseline is uncovered ----
    # This is what makes adoption free. If it ever fails, the migration has
    # started demanding a backfill across every historical Event.
    $fixture = New-Fixture
    Add-CoveredEvent -FixtureRoot $fixture -Number $nextNumber -AuditBlock "participation_audits: []"
    Set-CoverageBaseline -FixtureRoot $fixture -Number $nextNumber
    $result = Invoke-Validator -FixtureRoot $fixture
    Assert-True ($result.Output -notmatch 'records no participation audit for them') "Coverage reached an Event at or before the declared baseline; adoption is no longer prospective.`n$($result.Output)"

    $null = New-Fixture
    Assert-NoFixtureLeak

    Write-Host "Participation audit contract PASSED" -ForegroundColor Green
    exit 0
}
finally {
    if (Test-Path -LiteralPath $tempRoot) {
        Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}
