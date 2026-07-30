[CmdletBinding()]
param()

# R10 acceptance: the structured gate must reject what regex could not see.
#
# Each case injects one defect into a live object block and requires the gate to
# name it. The defects are the ones the survey actually found in this
# repository, plus the two the recommendation names explicitly (duplicate keys,
# a misnested required field).

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_object_blocks.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")

$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-object-blocks-" + [guid]::NewGuid().ToString("N"))
$target = "campaigns/gatefall_pendragon_001/110_WORLD_LEDGER.md"

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

function Replace-First {
    # PowerShell's -replace has no count argument, and every case here must
    # change exactly one block rather than all of them.
    param([string]$Text, [string]$Pattern, [string]$Replacement)
    $rx = [regex]::new($Pattern, [Text.RegularExpressions.RegexOptions]::Multiline)
    if ($rx.Matches($Text).Count -eq 0) {
        throw "Test precondition failed: pattern '$Pattern' matched nothing."
    }
    return $rx.Replace($Text, $Replacement, 1)
}

function Assert-Rejected {
    param([string]$Name, [string]$Expected, [string]$Content)
    Set-Text -RelativePath $target -Content $Content
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
    # Saves are required: the wiring case at the end runs the full
    # validate_repository.ps1, whose runtime-configuration gate resolves each
    # campaign's latest-checkpoint manifest. Without them that run fails for an
    # unrelated reason, and an assertion that only looks for the object-block
    # message would pass without proving the wiring at all.
    New-FixtureRepository -SourceRoot $repositoryRoot -DestinationRoot $temporaryRoot -IncludeSaves | Out-Null

    $baseline = Invoke-Validator
    if ($baseline.ExitCode -ne 0) {
        throw "The live repository does not pass structured object-block validation:`n$($baseline.Output)"
    }
    $original = Get-Content -LiteralPath (Join-Path $temporaryRoot $target) -Raw -Encoding UTF8

    if ($original -notmatch '(?m)^status: active\r?$') {
        throw "Test precondition failed: no 'status: active' line in $target."
    }

    # A duplicate key. A parser keeps one value and silently drops the other;
    # this is the defect found live in prototype_alpha's letter record.
    Assert-Rejected -Name "a duplicate key" -Expected "found duplicate key" `
        -Content (Replace-First $original '^status: active$' "status: active`nstatus: archived")

    # Provenance demoted to a scalar: present to a regex, structurally wrong.
    Assert-Rejected -Name "provenance as a scalar" -Expected "provenance is str, expected a mapping" `
        -Content (Replace-First $original '^provenance:\r?\n(?:[ \t]+.*\r?\n)+' "provenance: `"2026-07-28`"`n")

    # A required date field that never landed inside provenance.
    Assert-Rejected -Name "a missing provenance date" -Expected "provenance is missing required field 'game_date'" `
        -Content (Replace-First $original '^[ \t]+game_date:.*\r?\n' "")

    # A second object identifier nested inside the block. Two ids at the top
    # level would surface as a duplicate key, so this nests one to exercise the
    # one-object-per-block rule on its own.
    Assert-Rejected -Name "a second nested id" -Expected "declares 2 id fields" `
        -Content (Replace-First $original '^provenance:$' "provenance:`n  id: ENT-000999")

    # A required field with the wrong type.
    Assert-Rejected -Name "a non-string schema_version" -Expected "field 'schema_version' is" `
        -Content (Replace-First $original '^schema_version: "0\.1\.5"$' "schema_version:`n  - 0.1.5")

    # An unknown status value.
    Assert-Rejected -Name "an unknown status" -Expected "unknown status" `
        -Content (Replace-First $original '^status: active$' "status: probably-fine")

    # The gate must also be reachable through the production validator, not only
    # when invoked directly. Everything above calls validate_object_blocks.ps1
    # itself, which would still pass if the wiring into validate_repository.ps1
    # were removed or its output stopped being read.
    $repositoryValidator = Join-Path $PSScriptRoot "validate_repository.ps1"
    # Prove the clean fixture passes the full validator first. Without this the
    # rejection below could come from any unrelated defect in the fixture.
    Set-Text -RelativePath $target -Content $original
    & powershell -NoProfile -ExecutionPolicy Bypass -File $repositoryValidator `
        -RepositoryRoot $temporaryRoot -Quiet 2>&1 | Out-Null
    if ($LASTEXITCODE -ne 0) {
        throw "The clean fixture does not pass validate_repository.ps1, so the wiring case would prove nothing."
    }
    Set-Text -RelativePath $target -Content `
        (Replace-First $original '^status: active$' "status: active`nstatus: archived")
    $wired = & powershell -NoProfile -ExecutionPolicy Bypass -File $repositoryValidator `
        -RepositoryRoot $temporaryRoot 2>&1 | ForEach-Object { $_.ToString() }
    $wiredExit = $LASTEXITCODE
    if ($wiredExit -eq 0) {
        throw "validate_repository.ps1 accepted a duplicate key; the object-block gate is not wired in."
    }
    if (($wired -join "`n") -notlike "*Object blocks:*duplicate key*") {
        throw "validate_repository.ps1 failed, but not with the object-block gate's finding:`n$($wired -join "`n")"
    }

    Set-Text -RelativePath $target -Content $original
    $restored = Invoke-Validator
    if ($restored.ExitCode -ne 0) {
        throw "The restored repository no longer passes:`n$($restored.Output)"
    }

    Write-Host "Object block structure tests PASSED" -ForegroundColor Green
} finally {
    if (Test-Path -LiteralPath $temporaryRoot) {
        Remove-Item -LiteralPath $temporaryRoot -Recurse -Force
    }
}
