# Shared fixture builder for the regression suite (Recommendation R9).
#
# Every fixture test used to `Copy-Item -Recurse` whole top-level directories.
# `campaigns/` is 44.6 MB, but the validators read Markdown and YAML only:
# 28 MB of it is PNG portraits under assets/ that nothing in tools/ ever opens,
# and 16 MB is the historical save tree that most tests never look at. The
# suite was therefore spending most of its wall clock copying bytes no
# assertion depends on.
#
# This builds the same tree from the files a validator can actually read.
# Callers that genuinely need checkpoint history ask for it with -IncludeSaves;
# the default omits it, and a test that needs it and does not say so fails
# loudly rather than passing vacuously.

Set-StrictMode -Version Latest

# Extensions the repository's tools parse. Anything else is inert to them.
$script:FixtureTextExtensions = @(".md", ".yaml", ".yml", ".json", ".txt")

function New-FixtureRepository {
    <#
    .SYNOPSIS
        Copy the readable subset of a repository into a fixture root.
    .PARAMETER IncludeSaves
        Include campaigns/*/saves and .saves. Required by checkpoint, lineage,
        and restoration cases; omitted by default.
    #>
    param(
        [Parameter(Mandatory)][string]$SourceRoot,
        [Parameter(Mandatory)][string]$DestinationRoot,
        [string[]]$Directories = @("campaigns", "system", "worlds"),
        [switch]$IncludeSaves
    )

    $source = (Resolve-Path -LiteralPath $SourceRoot).Path.TrimEnd([char[]]"\/")
    if (-not (Test-Path -LiteralPath $DestinationRoot)) {
        New-Item -ItemType Directory -Path $DestinationRoot -Force | Out-Null
    }
    $destination = (Resolve-Path -LiteralPath $DestinationRoot).Path.TrimEnd([char[]]"\/")

    # Bulk copy then prune. Measured both ways: a per-file filtered loop is
    # slower than one recursive Copy-Item plus a handful of deletes, because
    # per-file overhead dominates across ~570 files.
    foreach ($directory in $Directories) {
        $directorySource = Join-Path $source $directory
        if (Test-Path -LiteralPath $directorySource) {
            Copy-Item -LiteralPath $directorySource -Destination $destination -Recurse -Force
        }
    }

    $pruned = 0
    foreach ($file in Get-ChildItem -LiteralPath $destination -Recurse -File) {
        $drop = $script:FixtureTextExtensions -notcontains $file.Extension.ToLowerInvariant()
        if (-not $drop -and -not $IncludeSaves) {
            $relative = $file.FullName.Substring($destination.Length)
            $drop = $relative -match '[\\/]\.?saves[\\/]'
        }
        if ($drop) {
            Remove-Item -LiteralPath $file.FullName -Force
            $pruned++
        }
    }
    return $pruned
}
