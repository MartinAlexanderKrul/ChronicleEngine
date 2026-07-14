[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

function Get-CommandRows {
    param(
        [string]$RelativePath,
        [string]$StartHeading,
        [string]$EndPattern
    )

    $path = Join-Path $root $RelativePath
    $text = Get-Content -Raw -LiteralPath $path
    $start = $text.IndexOf($StartHeading, [System.StringComparison]::Ordinal)
    if ($start -lt 0) {
        throw "$RelativePath is missing catalog heading: $StartHeading"
    }

    $section = $text.Substring($start)
    $end = [regex]::Match($section, $EndPattern)
    if (-not $end.Success) {
        throw "$RelativePath is missing the catalog end marker: $EndPattern"
    }
    $section = $section.Substring(0, $end.Index)

    return @([regex]::Matches($section, '(?m)^\|\s*(`/(?:[^`]+)`)\s*\|') | ForEach-Object {
        $_.Groups[1].Value
    })
}

$profile = Get-CommandRows `
    -RelativePath 'docs/AI_GAMEPLAY_RUNTIME_PROFILE.md' `
    -StartHeading '## Command Table' `
    -EndPattern '(?m)^The interface is \*\*extensible\*\*:'

$readme = Get-CommandRows `
    -RelativePath 'README.md' `
    -StartHeading '### Exact cold-start command catalog' `
    -EndPattern '(?m)^Do not open the first scene'

$guide = Get-CommandRows `
    -RelativePath 'docs/GAMEPLAY_START_GUIDE.md' `
    -StartHeading '# Runtime Commands' `
    -EndPattern '(?m)^`/save`, `/end`'

foreach ($comparison in @(
    @{ Name = 'README cold-start mirror'; Rows = $readme },
    @{ Name = 'Gameplay Start Guide'; Rows = $guide }
)) {
    $difference = Compare-Object -ReferenceObject $profile -DifferenceObject $comparison.Rows -SyncWindow 0
    if ($difference) {
        $rendered = ($difference | ForEach-Object { "$($_.SideIndicator) $($_.InputObject)" }) -join '; '
        throw "$($comparison.Name) does not match the Runtime Command Table: $rendered"
    }
}

$forbiddenAliases = @('/checkpoint', '/progress', '/list', '/close', '/start', '/rpg')
$catalogText = (Get-Content -Raw -LiteralPath (Join-Path $root 'README.md'))
foreach ($alias in $forbiddenAliases) {
    if ([regex]::IsMatch($catalogText, "(?m)^\|[^\r\n]*``$([regex]::Escape($alias))``")) {
        throw "README catalog exposes forbidden invented alias $alias."
    }
}

if ($catalogText -match '/ChronicleEngine \[target\]') {
    throw '/ChronicleEngine still exposes a target parameter.'
}
if ($catalogText -notmatch '(?m)^\| `/ChronicleEngine` \|.*Aliases: `/game`, `/chronicle`, `/chronicles`\.') {
    throw 'README bootstrap aliases do not match the closed alias set.'
}
if ($catalogText -notmatch '(?m)^\| `/continue \[world\|campaign\]` \|.*Alias: `/resume \[world\|campaign\]`\.') {
    throw '/continue does not expose /resume with the same optional selector.'
}

$profileText = Get-Content -Raw -LiteralPath (Join-Path $root 'docs/AI_GAMEPLAY_RUNTIME_PROFILE.md')
if ($profileText -notmatch '`/ChronicleEngine` has no target parameter') {
    throw 'Runtime Profile does not declare the argumentless bootstrap schema.'
}
if ($profileText -notmatch 'must not parse trailing text as a world, campaign, checkpoint, save label, or restoration request') {
    throw 'Runtime Profile does not block trailing bootstrap text from target parsing.'
}
if ($profileText -notmatch 'always presents the Engine Welcome Page and waits') {
    throw 'Runtime Profile does not make the welcome page the invariant bootstrap result.'
}

$activeCommandDocs = @(
    'README.md',
    'docs/AI_GAMEPLAY_RUNTIME_PROFILE.md',
    'docs/GAMEPLAY_START_GUIDE.md'
) | ForEach-Object { Get-Content -Raw -LiteralPath (Join-Path $root $_) }
$activeCommandText = $activeCommandDocs -join "`n"
foreach ($removed in @('/start', '/rpg')) {
    if ($activeCommandText -match "``$([regex]::Escape($removed))``") {
        throw "Removed alias remains in active command documentation: $removed"
    }
}

Write-Host "Runtime command catalog synchronization tests PASSED" -ForegroundColor Green
