[CmdletBinding()]
param()

# The growth ratchet and the per-entry budgets exist because fixed token
# ceilings do not survive a campaign that grows: 20,000 was set for Gatefall
# readiness and ordinary play passed it within weeks. These cases prove the two
# replacements actually fire, because a budget that never fails is worse than no
# budget - it reads as coverage while enforcing nothing.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$measure = Join-Path $PSScriptRoot "measure_runtime_context.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")

$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-growth-" + [guid]::NewGuid().ToString("N"))
$budget = "system/RUNTIME_CONTEXT_BUDGETS.yaml"
$sheet = "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"

function Invoke-Measurement {
    # The measurement writes its failure line to stderr, which under
    # $ErrorActionPreference = "Stop" becomes a terminating NativeCommandError
    # before the exit code can be read. Every case here expects failures, so the
    # preference is relaxed around the call and restored after.
    $previous = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $measure `
        -RepositoryRoot $temporaryRoot 2>&1 | ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $ErrorActionPreference = $previous
    return [pscustomobject]@{ ExitCode = $exitCode; Output = ($output -join "`n") }
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

function Assert-Rejected {
    param([string]$Name, [string]$Expected)
    $result = Invoke-Measurement
    if ($result.ExitCode -eq 0) {
        throw "$Name was accepted, but measurement should have failed."
    }
    if ($result.Output -notlike "*$Expected*") {
        throw "$Name failed for the wrong reason.`nExpected: $Expected`nActual:`n$($result.Output)"
    }
}

try {
    New-Item -ItemType Directory -Path $temporaryRoot | Out-Null
    New-FixtureRepository -SourceRoot $repositoryRoot -DestinationRoot $temporaryRoot -IncludeSaves | Out-Null
    Copy-Item -LiteralPath (Join-Path $repositoryRoot "README.md") -Destination $temporaryRoot -Force
    Copy-Item -LiteralPath (Join-Path $repositoryRoot "docs") -Destination $temporaryRoot -Recurse -Force
    # The save operation plan names the tools it runs, and the planner checks
    # they exist, so the fixture needs them present.
    Copy-Item -LiteralPath (Join-Path $repositoryRoot "tools") -Destination $temporaryRoot -Recurse -Force

    $baseline = Invoke-Measurement
    if ($baseline.ExitCode -ne 0) {
        throw "The checked-in budget plan does not pass:`n$($baseline.Output)"
    }
    $budgetOriginal = Get-Text $budget
    $sheetOriginal = Get-Text $sheet

    # --- the ratchet ------------------------------------------------------
    # Lowering a recorded baseline is the same shape as a surface growing past
    # its allowance, and it does not require inventing plausible campaign state.
    if ($budgetOriginal -notmatch '(?m)^      gatefall_pendragon_001: (?<value>\d+)\r?$') {
        throw "Test precondition failed: no Gatefall readiness baseline found."
    }
    $recorded = [int]$Matches["value"]
    $lowered = [int]($recorded / 2)
    Set-Text -RelativePath $budget -Content `
        ($budgetOriginal -replace "(?m)^      gatefall_pendragon_001: $recorded\r?$", "      gatefall_pendragon_001: $lowered")
    Assert-Rejected -Name "a surface grown past its ratchet allowance" -Expected "growth ratchet:"
    Set-Text -RelativePath $budget -Content $budgetOriginal

    # Growth inside the allowance must still pass, or the ratchet is just a
    # stricter ceiling wearing a different name.
    $withinAllowance = [int]($recorded / 1.10)
    Set-Text -RelativePath $budget -Content `
        ($budgetOriginal -replace "(?m)^      gatefall_pendragon_001: $recorded\r?$", "      gatefall_pendragon_001: $withinAllowance")
    $tolerated = Invoke-Measurement
    if ($tolerated.ExitCode -ne 0) {
        throw "Growth inside the declared allowance was rejected:`n$($tolerated.Output)"
    }
    Set-Text -RelativePath $budget -Content $budgetOriginal

    # --- the per-entry budget --------------------------------------------
    # Narrative creeping back into an operational field is the defect this
    # catches, at any entry count. Padding one skill entry reproduces it.
    if ($sheetOriginal -notmatch '(?m)^      - "Stone Skin \[') {
        throw "Test precondition failed: no Stone Skin skills_known entry found."
    }
    # The padding is derived from the declared budget, never hardcoded. It read
    # a literal 9000 while the ceiling was 700; raising the ceiling to 1100 left
    # it tripping the check by 41 bytes out of 1,141 -- still passing, and
    # passing for no reason it stated. That is F-013 exactly: a fixture sized
    # against a constant it does not read, agreeing with it until it quietly
    # does not. Compute the threshold the check actually applies -- one added
    # entry must carry the mean above max_bytes_per_entry -- and clear it by
    # half again, so the test follows the budget wherever the owner moves it.
    if ($budgetOriginal -notmatch '(?ms)^  - name: gatefall_skills_known\r?$.*?^    max_bytes_per_entry: (?<max>\d+)\r?$') {
        throw "Test precondition failed: no gatefall_skills_known max_bytes_per_entry found."
    }
    $perEntryMax = [int]$Matches["max"]
    $skillsBlock = [regex]::Match($sheetOriginal, '(?ms)^    skills_known:\r?\n(?<entries>(?:^      - ".*"\r?\n)+)')
    if (-not $skillsBlock.Success) {
        throw "Test precondition failed: no skills_known block found."
    }
    $entryLines = [regex]::Matches($skillsBlock.Groups["entries"].Value, '(?m)^      - "(?<body>.*)"\r?$')
    $entryCount = $entryLines.Count
    $entryBytes = ($entryLines | ForEach-Object {
        [System.Text.Encoding]::UTF8.GetByteCount($_.Groups["body"].Value)
    } | Measure-Object -Sum).Sum
    $paddingBytes = [math]::Ceiling(
        (($perEntryMax * ($entryCount + 1)) - $entryBytes) * 1.5)
    if ($paddingBytes -lt 1) { $paddingBytes = $perEntryMax }
    $padding = "x" * $paddingBytes
    Set-Text -RelativePath $sheet -Content `
        ($sheetOriginal -replace '(?m)^(      - "Stone Skin \[)', "      - `"$padding`"`n`$1")
    Assert-Rejected -Name "narrative padding inside skills_known" -Expected "per-unit gatefall_skills_known"
    Set-Text -RelativePath $sheet -Content $sheetOriginal

    # --- the exempt operation is still governed ---------------------------
    # `/system` is exempt from the shared 12,000 ceiling by design. It must not
    # therefore be unbudgeted: its own ratchet still has to bite.
    if ($budgetOriginal -notmatch '(?m)^      gatefall_pendragon_001:/system: (?<value>\d+)\r?$') {
        throw "Test precondition failed: no /system baseline found."
    }
    $systemRecorded = [int]$Matches["value"]
    Set-Text -RelativePath $budget -Content `
        ($budgetOriginal -replace "(?m)^      gatefall_pendragon_001:/system: $systemRecorded\r?$", "      gatefall_pendragon_001:/system: 1000")
    Assert-Rejected -Name "the ceiling-exempt /system grown past its ratchet" -Expected "growth ratchet:"
    Set-Text -RelativePath $budget -Content $budgetOriginal

    $restored = Invoke-Measurement
    if ($restored.ExitCode -ne 0) {
        throw "The restored plan no longer passes:`n$($restored.Output)"
    }

    Write-Host "Growth budget regression tests PASSED" -ForegroundColor Green
} finally {
    if (Test-Path -LiteralPath $temporaryRoot) {
        Remove-Item -LiteralPath $temporaryRoot -Recurse -Force
    }
}
