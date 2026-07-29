[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$generator = Join-Path $PSScriptRoot "generate_runtime_index.ps1"
$index = Join-Path $root "system/WORLDS_AND_CAMPAIGNS.md"
$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-runtime-index-" + [guid]::NewGuid().ToString("N"))

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) {
        throw $Message
    }
}

function Invoke-Generator {
    param([string]$RepositoryRoot, [switch]$Check)

    $previous = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $arguments = @(
        "-NoProfile", "-ExecutionPolicy", "Bypass",
        "-File", $generator,
        "-RepositoryRoot", $RepositoryRoot
    )
    if ($Check) {
        $arguments += "-Check"
    }
    $output = & powershell @arguments 2>&1 | ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $ErrorActionPreference = $previous
    return [pscustomobject]@{
        ExitCode = $exitCode
        Output = ($output -join "`n")
    }
}

$live = Invoke-Generator -RepositoryRoot $root -Check
Assert-True ($live.ExitCode -eq 0) "The live generated index is stale:`n$($live.Output)"
$text = Get-Content -LiteralPath $index -Raw -Encoding UTF8
Assert-True ((Get-Item -LiteralPath $index).Length -lt 8192) "The runtime index is not below 8 KB."
Assert-True ($text -notmatch '(?m)^## Per-campaign notes$') "Historical campaign notes remain in the runtime index."
Assert-True ($text -notmatch 'Checkpoint 0029') "Historical Gatefall checkpoint narrative remains in the runtime index."
Assert-True (([regex]::Matches($text, '(?m)^\| `worlds/[^`]+/` \|')).Count -eq 4) "The generated index does not contain every world."
Assert-True (([regex]::Matches($text, '(?m)^\| `campaigns/[^`]+/` \|')).Count -eq 4) "The generated index does not contain every campaign."

try {
    New-Item -ItemType Directory -Path $temporaryRoot | Out-Null
    foreach ($directory in @("system", "worlds", "campaigns")) {
        Copy-Item -LiteralPath (Join-Path $root $directory) -Destination $temporaryRoot -Recurse
    }

    $first = Invoke-Generator -RepositoryRoot $temporaryRoot
    Assert-True ($first.ExitCode -eq 0) "Temporary index generation failed:`n$($first.Output)"
    $temporaryIndex = Join-Path $temporaryRoot "system/WORLDS_AND_CAMPAIGNS.md"
    $firstHash = (Get-FileHash -LiteralPath $temporaryIndex -Algorithm SHA256).Hash
    $second = Invoke-Generator -RepositoryRoot $temporaryRoot
    Assert-True ($second.ExitCode -eq 0) "Second index generation failed:`n$($second.Output)"
    $secondHash = (Get-FileHash -LiteralPath $temporaryIndex -Algorithm SHA256).Hash
    Assert-True ($firstHash -eq $secondHash) "Generated output is not deterministic."

    $mutated = (Get-Content -LiteralPath $temporaryIndex -Raw -Encoding UTF8).Replace(
        "| 2026-07-27 |",
        "| 2099-01-01 |"
    )
    Set-Content -LiteralPath $temporaryIndex -Value $mutated -Encoding UTF8
    $manualEdit = Invoke-Generator -RepositoryRoot $temporaryRoot -Check
    Assert-True ($manualEdit.ExitCode -ne 0) "A manual edit to a generated row was accepted."
    Assert-True ($manualEdit.Output -match 'not synchronized') "Manual row drift failed without a synchronization diagnosis."

    $gatefallStartup = Join-Path $temporaryRoot "campaigns/gatefall_pendragon_001/090_CAMPAIGN_STARTUP.md"
    $startupText = Get-Content -LiteralPath $gatefallStartup -Raw -Encoding UTF8
    $longCaveat = "x" * 241
    $startupText = [regex]::Replace(
        $startupText,
        '(?m)^selection_caveat:.*$',
        "selection_caveat: `"$longCaveat`"",
        1
    )
    Set-Content -LiteralPath $gatefallStartup -Value $startupText -Encoding UTF8
    $overlong = Invoke-Generator -RepositoryRoot $temporaryRoot
    Assert-True ($overlong.ExitCode -ne 0) "An overlong selection caveat was accepted."
    Assert-True ($overlong.Output -match 'exceeds 240 characters') "Overlong caveat failed without the length diagnosis."
}
finally {
    $resolvedParent = [System.IO.Path]::GetFullPath($temporaryParent)
    $resolvedRoot = [System.IO.Path]::GetFullPath($temporaryRoot)
    if (
        $resolvedRoot.StartsWith($resolvedParent, [System.StringComparison]::OrdinalIgnoreCase) -and
        (Split-Path -Leaf $resolvedRoot).StartsWith("chronicle-runtime-index-")
    ) {
        Remove-Item -LiteralPath $resolvedRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}

Write-Host "Runtime index generation regression tests PASSED" -ForegroundColor Green
exit 0
