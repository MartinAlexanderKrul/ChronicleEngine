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

# --- Restore points ---------------------------------------------------------
#
# Most fixture cases in this suite change exactly one file and then ask the
# validator for a verdict. Copying the whole tree per case to achieve that cost
# more than every assertion in the suite combined -- sixteen copies in the
# settlement gate alone, of a tree that is now 84 MB.
#
# A restore point is the cheap equivalent: capture the bytes of the few files a
# group of cases touches, and put them back between cases. WriteAllBytes restores
# exactly what Copy-Item produced, encoding and line endings included, which
# matters because several validators read anchored regexes that a CRLF flip would
# silently disable.
#
# What a fresh copy gave for free was the guarantee that nothing leaked between
# cases, so a caller that gives that up owes the check instead. Assert-FixtureRestored
# is that check, and it is not optional decoration: without it a restore that
# quietly stops working turns every later case into an assertion about unknown
# state, which is the failure mode fixtures exist to prevent. Call it once after
# the cases have run.
function New-FixtureRestorePoint {
    <#
    .SYNOPSIS
        Capture the current bytes of the fixture files a case group will mutate.
    .PARAMETER Root
        Fixture root the relative paths are resolved against.
    .PARAMETER Paths
        Repository-relative paths. Every file a case writes must appear here.
    #>
    param(
        [Parameter(Mandatory)][string]$Root,
        [Parameter(Mandatory)][string[]]$Paths
    )

    $point = [ordered]@{}
    foreach ($relative in $Paths) {
        $full = Join-Path $Root $relative
        if (-not (Test-Path -LiteralPath $full -PathType Leaf)) {
            throw "Cannot capture a restore point for '$relative': it does not exist under $Root."
        }
        $point[$relative] = [System.IO.File]::ReadAllBytes($full)
    }
    return $point
}

function Restore-FixtureFiles {
    param(
        [Parameter(Mandatory)][string]$Root,
        [Parameter(Mandatory)]$RestorePoint
    )

    foreach ($relative in $RestorePoint.Keys) {
        [System.IO.File]::WriteAllBytes((Join-Path $Root $relative), $RestorePoint[$relative])
    }
}

function Assert-FixtureRestored {
    <#
    .SYNOPSIS
        Fail if the captured files are not byte-identical to their restore point.
    .DESCRIPTION
        Returns the list of drifted paths. A caller that has a validator on hand
        should also re-run it on the restored fixture: this catches a broken
        restore, and the validator catches a case that wrote a file nobody
        captured.
    #>
    param(
        [Parameter(Mandatory)][string]$Root,
        [Parameter(Mandatory)]$RestorePoint
    )

    $drifted = [System.Collections.Generic.List[string]]::new()
    foreach ($relative in $RestorePoint.Keys) {
        $current = [System.IO.File]::ReadAllBytes((Join-Path $Root $relative))
        if (-not [System.Linq.Enumerable]::SequenceEqual([byte[]]$current, [byte[]]$RestorePoint[$relative])) {
            $drifted.Add($relative) | Out-Null
        }
    }
    return , $drifted.ToArray()
}
