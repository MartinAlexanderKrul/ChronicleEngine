[CmdletBinding()]
param()

# R11: progression ratification policy is world-authored, not validator-owned.
#
# These cases exist to prove one claim the audit makes explicitly: adding a
# second pre-authored result must require no validator code change. Each case
# edits only the World Rule Profile's trigger manifest and asserts the
# repository validator's behaviour follows.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")
$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-progression-policy-" + [guid]::NewGuid().ToString("N"))

$profileRelative = "worlds/gatefall/206_WORLD_RULE_PROFILE.md"

function Invoke-Validator {
    # -CoreOnly: every assertion here is about progression ratification policy,
    # which the structural scan owns. See validate_repository.ps1's parameter note.
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $temporaryRoot -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

function Get-Text {
    param([string]$RelativePath)
    return Get-Content -LiteralPath (Join-Path $temporaryRoot $RelativePath) -Raw -Encoding UTF8
}

function Set-Text {
    param([string]$RelativePath, [string]$Content)
    [System.IO.File]::WriteAllText(
        (Join-Path $temporaryRoot $RelativePath),
        $Content,
        (New-Object System.Text.UTF8Encoding($false)))
}

function Set-MutatedContent {
    param([string]$RelativePath, [string]$Original, [string]$OldValue, [string]$NewValue)
    if (-not $Original.Contains($OldValue)) {
        throw "Test precondition failed: '$OldValue' is absent from $RelativePath."
    }
    Set-Text -RelativePath $RelativePath -Content $Original.Replace($OldValue, $NewValue)
}

function Assert-Rejected {
    param([string]$Name, [string]$Expected)
    $result = Invoke-Validator
    if ($result.ExitCode -eq 0) {
        throw "$Name was accepted, but the validator should have rejected it."
    }
    if ($result.Output -notlike "*$Expected*") {
        throw "$Name failed for the wrong reason.`nExpected: $Expected`nActual:`n$($result.Output)"
    }
}

function Assert-Accepted {
    param([string]$Name)
    $result = Invoke-Validator
    if ($result.ExitCode -ne 0) {
        throw "$Name was rejected, but should have been accepted:`n$($result.Output)"
    }
}

try {
    New-Item -ItemType Directory -Path $temporaryRoot | Out-Null
    New-FixtureRepository -SourceRoot $repositoryRoot -DestinationRoot $temporaryRoot `
        -Directories @("campaigns", "system", "worlds", "engine", "docs", "templates") | Out-Null

    Assert-Accepted -Name "the live repository"

    $profileOriginal = Get-Text $profileRelative
    $threshold = "      evidence_threshold: 3"
    if (-not $profileOriginal.Contains($threshold)) {
        throw "Test precondition failed: the declared evidence threshold was not found."
    }

    # The threshold is read from the profile, not compiled in. Lowering it to 1
    # must make a candidate tracking at one evidence reference fail.
    Set-MutatedContent -RelativePath $profileRelative -Original $profileOriginal `
        -OldValue $threshold -NewValue "      evidence_threshold: 1"
    Assert-Rejected -Name "a lowered evidence threshold" `
        -Expected "has at least 1 distinct evidence references but remains tracking"
    Set-Text -RelativePath $profileRelative -Content $profileOriginal

    # The acceptance criterion: declaring a further pre-authored result changes
    # enforcement with no edit to tools/. `nonvisual_combat_mapping` is not
    # pre-authored in the live profile, so this message cannot appear for it
    # unless the declared list is what the validator reads.
    $mutated = $profileOriginal.
        Replace($threshold, "      evidence_threshold: 1").
        Replace(
            "        - dimensional_weapon_control",
            "        - dimensional_weapon_control`n        - nonvisual_combat_mapping")
    Set-Text -RelativePath $profileRelative -Content $mutated
    Assert-Rejected -Name "a newly declared pre-authored result" `
        -Expected "'gatefall.skill_formation/nonvisual_combat_mapping' is declared pre-authored"
    Set-Text -RelativePath $profileRelative -Content $profileOriginal
    Assert-Accepted -Name "the restored profile"

    # With no ratification policy declared, the domain-specific checks stand
    # down rather than falling back to a built-in rule.
    $ratificationBlock = @"
    ratification:
      evidence_threshold: 3
      pre_authored_result_keys:
        - dimensional_weapon_control
        - applied_analytical_reconstruction
      settlement_event_kinds:
        - dangerous-scene-settlement
        - progression-batch-settlement
"@
    $normalized = $ratificationBlock -replace "`r`n", "`n"
    $profileLf = $profileOriginal -replace "`r`n", "`n"
    if (-not $profileLf.Contains($normalized)) {
        throw "Test precondition failed: the ratification block was not found intact."
    }
    Set-Text -RelativePath $profileRelative -Content ($profileLf.Replace($normalized, ""))
    Assert-Accepted -Name "a profile declaring no ratification policy"
    Set-Text -RelativePath $profileRelative -Content $profileOriginal

    Assert-Accepted -Name "the fully restored repository"

    Write-Host "Progression policy regression tests PASSED" -ForegroundColor Green
} finally {
    if (Test-Path -LiteralPath $temporaryRoot) {
        Remove-Item -LiteralPath $temporaryRoot -Recurse -Force
    }
}
