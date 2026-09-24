# Decision 094 -- a sealed volume is byte-frozen from the first checkpoint that
# captures it.
#
# A campaign moves settled history out of a live ledger into
# `campaigns/<c>/sealed/<ledger-stem>.volNN.md`, verbatim (tools/seal_campaign.py).
# The move is only safe if the volume then stays exactly what was moved: a
# volume that could be edited after the fact would be live canon wearing a
# "history" label, read by nobody at readiness and trusted by everybody.
#
# There is no checksum to compare against, deliberately -- Rules Section 13.6
# defers checksums -- and none is needed. Checkpoints are already immutable
# (Rules 13.2) and already capture every canonical ledger a campaign owns
# (13.1), so every checkpoint taken after a seal holds a byte copy of the
# volume. The live volume is compared against each of them. An edit made after
# any capture fails; an edit made before the first capture is still the seal
# pass itself and is allowed, which is what "open" means in seal_campaign.py.

Set-StrictMode -Version Latest

function Get-SealedVolumeFailures {
    param([Parameter(Mandatory)][string]$Root)

    $failures = [System.Collections.Generic.List[string]]::new()
    $campaignsRoot = Join-Path $Root "campaigns"
    if (-not (Test-Path -LiteralPath $campaignsRoot -PathType Container)) {
        return @()
    }
    $volumeName = '^(?<stem>\d{3}_[A-Z0-9_]+)\.vol(?<number>\d{2})\.md$'

    foreach ($campaign in Get-ChildItem -LiteralPath $campaignsRoot -Directory) {
        $sealed = Join-Path $campaign.FullName "sealed"
        $saves = Join-Path $campaign.FullName "saves"
        $checkpoints = @()
        if (Test-Path -LiteralPath $saves -PathType Container) {
            $checkpoints = @(Get-ChildItem -LiteralPath $saves -Directory |
                Where-Object { $_.Name -match '^900_CHECKPOINT_\d{4}$' } |
                Sort-Object Name)
        }

        $numbers = @{}
        if (Test-Path -LiteralPath $sealed -PathType Container) {
            foreach ($volume in Get-ChildItem -LiteralPath $sealed -File) {
                $relative = "campaigns/$($campaign.Name)/sealed/$($volume.Name)"
                $match = [regex]::Match($volume.Name, $volumeName)
                if (-not $match.Success) {
                    $failures.Add("$relative is not a sealed volume name (<ledger-stem>.volNN.md); nothing else belongs in sealed/ (Decision 094).") | Out-Null
                    continue
                }
                $stem = $match.Groups['stem'].Value
                if (-not (Test-Path -LiteralPath (Join-Path $campaign.FullName "$stem.md") -PathType Leaf)) {
                    $failures.Add("$relative seals a ledger the campaign does not have: $stem.md (Decision 094).") | Out-Null
                }
                if (-not $numbers.ContainsKey($stem)) {
                    $numbers[$stem] = [System.Collections.Generic.List[int]]::new()
                }
                $numbers[$stem].Add([int]$match.Groups['number'].Value) | Out-Null

                $liveBytes = [System.IO.File]::ReadAllBytes($volume.FullName)
                foreach ($checkpoint in $checkpoints) {
                    $copy = Join-Path $checkpoint.FullName "sealed/$($volume.Name)"
                    if (-not (Test-Path -LiteralPath $copy -PathType Leaf)) { continue }
                    $copyBytes = [System.IO.File]::ReadAllBytes($copy)
                    if (-not [System.Linq.Enumerable]::SequenceEqual([byte[]]$liveBytes, [byte[]]$copyBytes)) {
                        $failures.Add("$relative differs from its copy in $($checkpoint.Name). A sealed volume is byte-frozen from its first capture; correct history with a new Event in the live ledger, never by editing the volume (Decision 094).") | Out-Null
                    }
                }
            }
        }

        foreach ($stem in $numbers.Keys) {
            $sorted = @($numbers[$stem] | Sort-Object)
            for ($index = 0; $index -lt $sorted.Count; $index++) {
                if ($sorted[$index] -ne $index + 1) {
                    $failures.Add("campaigns/$($campaign.Name)/sealed/ numbers $stem's volumes $($sorted -join ', '); volumes run 01, 02, ... without gaps (Decision 094).") | Out-Null
                    break
                }
            }
        }

        # The newest checkpoint is the restore point. Every volume it captured
        # is part of that save's canon, so the live tree must still hold it.
        if ($checkpoints.Count -gt 0) {
            $latest = $checkpoints[-1]
            $latestSealed = Join-Path $latest.FullName "sealed"
            if (Test-Path -LiteralPath $latestSealed -PathType Container) {
                foreach ($copy in Get-ChildItem -LiteralPath $latestSealed -File) {
                    if (-not (Test-Path -LiteralPath (Join-Path $sealed $copy.Name) -PathType Leaf)) {
                        $failures.Add("campaigns/$($campaign.Name)/sealed/$($copy.Name) is held by $($latest.Name) but missing from the live campaign; a sealed volume is never deleted (Decision 094).") | Out-Null
                    }
                }
            }
        }
    }
    return $failures.ToArray()
}
