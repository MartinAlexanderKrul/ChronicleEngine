[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# The cast roster is the readiness-weight answer to "who exists". Its whole value
# is that it is complete and current: a roster missing the NPC who entered the
# campaign last is worse than no roster, because readiness would carry a
# confident list that silently omits exactly who a live session is about to meet.
# These tests pin completeness, currency detection, and the bound that keeps the
# roster an index rather than a second copy of the ledger.

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$generator = Join-Path $PSScriptRoot "generate_campaign_cast.ps1"
$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-campaign-cast-" + [guid]::NewGuid().ToString("N"))

$castRelative = "campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY.md"
$ledgerRelative = "campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md"

function Invoke-Generator {
    param([switch]$Check)

    $arguments = @("-NoProfile", "-ExecutionPolicy", "Bypass", "-File", $generator,
        "-RepositoryRoot", $temporaryRoot)
    if ($Check) {
        $arguments += "-Check"
    }
    $previousErrorAction = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $output = & powershell @arguments 2>&1 | ForEach-Object { $_.ToString() }
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

function Get-Text {
    param([string]$RelativePath)
    return [System.IO.File]::ReadAllText((Join-Path $temporaryRoot $RelativePath))
}

function Set-Text {
    param([string]$RelativePath, [string]$Content)
    [System.IO.File]::WriteAllText(
        (Join-Path $temporaryRoot $RelativePath),
        $Content,
        (New-Object System.Text.UTF8Encoding($false))
    )
}

try {
    New-Item -ItemType Directory -Path $temporaryRoot | Out-Null
    foreach ($directory in @("campaigns", "system", "worlds")) {
        Copy-Item -LiteralPath (Join-Path $repositoryRoot $directory) -Destination $temporaryRoot -Recurse
    }

    $baseline = Invoke-Generator -Check
    Assert-True ($baseline.ExitCode -eq 0) "The checked-in cast rosters are not synchronized:`n$($baseline.Output)"

    # Completeness: every ENT- defined in the ledger must have a row. This is the
    # assertion that fails if the generator ever starts filtering the cast.
    $ledger = Get-Text $ledgerRelative
    $cast = Get-Text $castRelative
    $declared = [regex]::Matches($ledger, '(?m)^id:[ \t]*(ENT-\d{6})[ \t]*$') |
        ForEach-Object { $_.Groups[1].Value } |
        Sort-Object -Unique
    Assert-True ($declared.Count -gt 0) "Test precondition failed: the Gatefall NPC ledger declares no entities."
    foreach ($identifier in $declared) {
        Assert-True ($cast -match [regex]::Escape("``$identifier``")) "Cast roster omits $identifier, which the NPC ledger defines."
    }

    # The protagonist's own relationships must be visible, or the roster cannot
    # tell a Runtime which entities carry a REL- worth loading with the record.
    Assert-True ($cast -match 'REL-000066') "Cast roster omits the protagonist relationship on Owen Callahan."
    Assert-True ($cast -notmatch 'REL-000062') "Cast roster lists an institutional relationship that names no campaign entity row."

    # A bound, not a preference: the roster is an index. If it ever grows past a
    # few hundred bytes per entity it has stopped indexing and started copying,
    # and it is sitting on a readiness surface that is already over its warning.
    $entityCount = $declared.Count
    $castBytes = [System.Text.Encoding]::UTF8.GetByteCount($cast)
    Assert-True (($castBytes / $entityCount) -lt 250) "Cast roster costs $([int]($castBytes / $entityCount)) bytes per entity; it is copying the ledger rather than indexing it."

    # Currency: a new entity in the ledger must make the checked-in roster stale.
    $newEntity = @"

### ENT-999999 — Test Fixture Bystander

``````yaml
id: ENT-999999
canonical_record: REC-000077
schema_version: "0.1.6"
status: active
type: Character
subtype: fixture
aliases:
  - name: "Test Fixture Bystander"
    quality: current
canonical_state:
  location: "a fixture location"
``````
"@
    Set-Text -RelativePath $ledgerRelative -Content ($ledger + $newEntity)
    $stale = Invoke-Generator -Check
    Assert-True ($stale.ExitCode -ne 0) "A new ledger entity left the cast roster reported as synchronized."
    Assert-True ($stale.Output -match 'is not synchronized') "Stale cast roster failed for the wrong reason:`n$($stale.Output)"

    $regenerated = Invoke-Generator
    Assert-True ($regenerated.ExitCode -eq 0) "Regeneration failed after a ledger change:`n$($regenerated.Output)"
    Assert-True ((Get-Text $castRelative) -match 'ENT-999999') "Regenerated roster omits the newly added entity."

    $confirm = Invoke-Generator -Check
    Assert-True ($confirm.ExitCode -eq 0) "Regenerated roster does not pass its own check:`n$($confirm.Output)"

    # Determinism: the same ledger must produce the same bytes, or the check gate
    # becomes noise and gets disabled.
    $first = Get-Text $castRelative
    Invoke-Generator | Out-Null
    Assert-True ((Get-Text $castRelative) -ceq $first) "Cast roster generation is not deterministic."

    Write-Host "Campaign cast regression tests PASSED" -ForegroundColor Green
    exit 0
}
finally {
    $resolvedTemporaryParent = [System.IO.Path]::GetFullPath($temporaryParent)
    $resolvedTemporaryRoot = [System.IO.Path]::GetFullPath($temporaryRoot)
    if (
        $resolvedTemporaryRoot.StartsWith($resolvedTemporaryParent, [System.StringComparison]::OrdinalIgnoreCase) -and
        (Split-Path -Leaf $resolvedTemporaryRoot).StartsWith("chronicle-campaign-cast-")
    ) {
        Remove-Item -LiteralPath $resolvedTemporaryRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}
