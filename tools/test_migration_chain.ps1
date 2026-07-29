[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_runtime_configuration.ps1"
$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-migration-chain-" + [guid]::NewGuid().ToString("N"))

# Kept out of the source so this script stays ASCII and parses identically
# under Windows PowerShell and PowerShell Core.
$arrow = [string][char]0x2192
$emDash = [string][char]0x2014
$tick = [string][char]0x60

$migrations = "worlds/gatefall/migrations"
$indexRelative = "$migrations/INDEX.md"
$profileRelative = "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
$recordRelative = "$migrations/1.16_to_1.17.md"

function Invoke-Validator {
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $temporaryRoot 2>&1 | ForEach-Object { $_.ToString() }
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
    $target = Join-Path $temporaryRoot $RelativePath
    [System.IO.File]::WriteAllText($target, $Content, (New-Object System.Text.UTF8Encoding($false)))
}

function Set-MutatedContent {
    param([string]$RelativePath, [string]$Original, [string]$OldValue, [string]$NewValue)

    if (-not $Original.Contains($OldValue)) {
        throw "Test precondition failed: '$OldValue' is absent from $RelativePath."
    }
    Set-Text -RelativePath $RelativePath -Content $Original.Replace($OldValue, $NewValue)
}

function Restore-File {
    param([string]$RelativePath)
    Copy-Item -LiteralPath (Join-Path $repositoryRoot $RelativePath) `
        -Destination (Join-Path $temporaryRoot $RelativePath) -Force
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
    foreach ($directory in @("campaigns", "system", "worlds")) {
        Copy-Item -LiteralPath (Join-Path $repositoryRoot $directory) -Destination $temporaryRoot -Recurse
    }

    Assert-Accepted -Name "the live Gatefall migration chain"

    $indexOriginal = Get-Text $indexRelative
    $profileOriginal = Get-Text $profileRelative
    $recordOriginal = Get-Text $recordRelative

    # A declared record that does not exist on disk.
    Remove-Item -LiteralPath (Join-Path $temporaryRoot $recordRelative)
    Assert-Rejected -Name "a missing migration record" -Expected "declares missing record 1.16_to_1.17.md"
    Restore-File -RelativePath $recordRelative
    Assert-Accepted -Name "the restored chain"

    # A record present on disk that the index never declares. The version is
    # deliberately absurd: an earlier fixture used 1.30 -> 1.31, which stopped
    # being undeclared the moment the profile actually reached 1.31.
    Copy-Item -LiteralPath (Join-Path $temporaryRoot $recordRelative) `
        -Destination (Join-Path $temporaryRoot "$migrations/9.98_to_9.99.md")
    Assert-Rejected -Name "an undeclared migration record" `
        -Expected "9.98_to_9.99.md: record is not declared by INDEX.md"
    Remove-Item -LiteralPath (Join-Path $temporaryRoot "$migrations/9.98_to_9.99.md")

    # A gap in the chain.
    Set-MutatedContent -RelativePath $indexRelative -Original $indexOriginal `
        -OldValue "| 1.16 $arrow 1.17 |" -NewValue "| 1.16 $arrow 1.18 |"
    Assert-Rejected -Name "a non-contiguous chain" -Expected "chain is not contiguous"
    Set-Text -RelativePath $indexRelative -Content $indexOriginal

    # Two edges leaving the same version.
    Set-MutatedContent -RelativePath $indexRelative -Original $indexOriginal `
        -OldValue "| 1.17 $arrow 1.18 |" -NewValue "| 1.16 $arrow 1.18 |"
    Assert-Rejected -Name "a branching chain" -Expected "branches to"
    Set-Text -RelativePath $indexRelative -Content $indexOriginal

    # An edge that runs backwards, which would close a cycle.
    Set-MutatedContent -RelativePath $indexRelative -Original $indexOriginal `
        -OldValue "| 1.17 $arrow 1.18 |" -NewValue "| 1.17 $arrow 1.16 |"
    Assert-Rejected -Name "a backwards edge" -Expected "does not advance"
    Set-Text -RelativePath $indexRelative -Content $indexOriginal

    # A record whose YAML disagrees with the row that indexes it.
    Set-MutatedContent -RelativePath $recordRelative -Original $recordOriginal `
        -OldValue 'source_version: "1.16"' -NewValue 'source_version: "1.15"'
    Assert-Rejected -Name "a record disagreeing with its index row" -Expected "but is indexed as 1.16 -> 1.17"
    Set-Text -RelativePath $recordRelative -Content $recordOriginal

    # An unrecognized classification.
    Set-MutatedContent -RelativePath $recordRelative -Original $recordOriginal `
        -OldValue "  classification: required-migration" -NewValue "  classification: optional-cleanup"
    Assert-Rejected -Name "an unknown migration classification" -Expected "is not one of"
    Set-Text -RelativePath $recordRelative -Content $recordOriginal

    # A chain that stops short of the active profile version. The terminal edge is
    # derived, not pinned: it moves with every profile adoption.
    $rowPattern = "(?m)^\|\s*(?<src>\d+(?:\.\d+)*)\s*$arrow\s*(?<tgt>\d+(?:\.\d+)*)\s*\|.*\|\s*$tick(?<file>[^$tick]+)$tick\s*\|\s*$"
    $rows = [regex]::Matches($indexOriginal, $rowPattern)
    if ($rows.Count -lt 2) {
        throw "Test precondition failed: fewer than two migration rows were found in the index."
    }
    $terminal = $rows[$rows.Count - 1]
    $priorTarget = $rows[$rows.Count - 2].Groups["tgt"].Value
    $terminalFile = $terminal.Groups["file"].Value
    $terminalTarget = $terminal.Groups["tgt"].Value

    Set-MutatedContent -RelativePath $indexRelative -Original $indexOriginal `
        -OldValue $terminal.Value -NewValue ""
    Remove-Item -LiteralPath (Join-Path $temporaryRoot "$migrations/$terminalFile")
    Assert-Rejected -Name "a chain short of the active profile" `
        -Expected "chain terminates at $priorTarget but the active World Rule Profile is $terminalTarget"
    Set-Text -RelativePath $indexRelative -Content $indexOriginal
    Restore-File -RelativePath "$migrations/$terminalFile"
    Assert-Accepted -Name "the restored terminal edge"

    # Migration prose drifting back into the active rule profile.
    $stray = "**Required 1.24 $arrow 1.25 migration.** Recompute every unpurchased offer."
    Set-MutatedContent -RelativePath $profileRelative -Original $profileOriginal `
        -OldValue "# 1. Declared Overrides" `
        -NewValue "$stray`n`n# 1. Declared Overrides"
    Assert-Rejected -Name "migration history in the active profile" `
        -Expected "active profile carries migration history"
    Set-Text -RelativePath $profileRelative -Content $profileOriginal

    Assert-Accepted -Name "the fully restored chain"

    Write-Host "Migration chain regression tests PASSED" -ForegroundColor Green
} finally {
    if (Test-Path -LiteralPath $temporaryRoot) {
        Remove-Item -LiteralPath $temporaryRoot -Recurse -Force
    }
}
