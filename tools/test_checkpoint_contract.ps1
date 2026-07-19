[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

# Why this test exists
#
# Every checkpoint defect in this repository's history has been a *writer's
# obligation* failure, not a structural one. The Repository Validation Barrier
# (Decision 054) is deliberately narrow: it proves each index row resolves, and
# says so in its own words -- "it cannot know whether a row's status,
# protagonist, or timestamp is still true, and it does not look."
#
# The record of what that leaves open:
#
#   900_CHECKPOINT_001   omitted three required ledgers and self-reported a
#                        validator PASS that never ran.
#   900_CHECKPOINT_0005  captured three stale ledgers because the promotion
#                        barrier was applied to only five of eight.
#   the shared chat's    claimed a save that reconstruction showed produced 86
#   dropped save         validator errors.
#   0010 and 0011        advanced the restore point twice while
#                        system/WORLDS_AND_CAMPAIGNS.md still named 0009. The
#                        index's own Maintenance rule requires updating it "in
#                        the same change"; nothing enforced that, and the
#                        validator passed because 0009 still existed.
#
# This test mechanizes the obligations that are checkable at rest. It cannot
# check capture-time byte-fidelity -- live canon legitimately diverges from the
# latest checkpoint as soon as play resumes -- so that belongs to the capture
# procedure, not here.

$failures = New-Object System.Collections.Generic.List[string]

function Add-Failure {
    param([string]$Message)
    $failures.Add($Message) | Out-Null
}

# The eight canonical ledgers a conforming checkpoint captures (Rules 13.3).
$requiredLedgers = @(
    '100_CHARACTER_SHEET.md'
    '110_WORLD_LEDGER.md'
    '120_INVENTORY_AND_OWNERSHIP.md'
    '130_NPCS_AND_FACTIONS.md'
    '140_OBJECTIVES.md'
    '160_CAMPAIGN_CHRONICLE.md'
    '170_CHANGELOG.md'
    '180_CURRENT_STATE.md'
)

# Nonconforming originals: superseded snapshots kept as evidence, exempt from
# the completeness contract because their bytes must not be repaired (Rules
# Section 13.2) and their save-point is restorable from a conforming re-issue
# instead (Decision 072). They are precisely the checkpoints this test would
# otherwise demand be fixed -- and fixing them is forbidden. Status and
# reasoning: the owning campaign's saves/README.md.
$supersededOriginals = @(
    'reikon_awakening_001/900_CHECKPOINT_001'
)

$campaignsRoot = Join-Path $root 'campaigns'
$indexPath = Join-Path $root 'system/WORLDS_AND_CAMPAIGNS.md'
$indexText = Get-Content -LiteralPath $indexPath -Raw

foreach ($campaign in Get-ChildItem -LiteralPath $campaignsRoot -Directory) {
    $savesRoot = Join-Path $campaign.FullName 'saves'
    if (-not (Test-Path -LiteralPath $savesRoot -PathType Container)) { continue }

    # --- Contract 1: every checkpoint is complete -------------------------
    # Catches the 900_CHECKPOINT_001 class: a snapshot that silently omits
    # ledgers and is discovered only when someone tries to restore it.
    foreach ($checkpoint in Get-ChildItem -LiteralPath $savesRoot -Directory) {
        $key = "$($campaign.Name)/$($checkpoint.Name)"
        if ($supersededOriginals -contains $key) { continue }

        $manifest = Join-Path $checkpoint.FullName '900_SAVE_MANIFEST.md'
        if (-not (Test-Path -LiteralPath $manifest -PathType Leaf)) {
            Add-Failure "$key has no 900_SAVE_MANIFEST.md; a checkpoint without a manifest cannot declare what it captured or how to restore it."
        }

        foreach ($ledger in $requiredLedgers) {
            if (-not (Test-Path -LiteralPath (Join-Path $checkpoint.FullName $ledger) -PathType Leaf)) {
                Add-Failure "$key omits the required ledger $ledger. Restoring it would leave that ledger at whatever live canon happened to hold."
            }
        }
    }

    # --- Contract 2: the index agrees with the campaign's own restore point ---
    # The two are independent statements of the same fact and must not drift.
    # This is the assertion that would have caught 0010 and 0011 shipping
    # against a stale index.
    $entryPoint = Join-Path $campaign.FullName '180_CURRENT_STATE.md'
    if (-not (Test-Path -LiteralPath $entryPoint -PathType Leaf)) { continue }

    $entryText = Get-Content -LiteralPath $entryPoint -Raw
    $declared = [regex]::Match($entryText, '(?m)^\s*-\s*\*\*Latest restorable checkpoint:\*\*\s*`saves/([^/`]+)/?`')
    if (-not $declared.Success) { continue }
    $declaredCheckpoint = $declared.Groups[1].Value

    $rowPattern = '(?m)^\|\s*`campaigns/' + [regex]::Escape($campaign.Name) + '/`\s*\|[^|]*\|[^|]*\|[^|]*\|\s*`?([^`|]+?)`?\s*\|'
    $row = [regex]::Match($indexText, $rowPattern)
    if (-not $row.Success) {
        Add-Failure "campaigns/$($campaign.Name)/ declares a latest restorable checkpoint but has no parsable row in system/WORLDS_AND_CAMPAIGNS.md."
        continue
    }
    $indexedCheckpoint = $row.Groups[1].Value.Trim()

    if ($indexedCheckpoint -ne $declaredCheckpoint) {
        Add-Failure "system/WORLDS_AND_CAMPAIGNS.md gives campaigns/$($campaign.Name)/ the latest checkpoint '$indexedCheckpoint', but its 180_CURRENT_STATE.md declares '$declaredCheckpoint' as the latest restorable checkpoint. The index's Maintenance rule requires updating it in the same change that checkpoints a campaign."
    }

    # --- Contract 3: the index never points at a superseded original ------
    if ($supersededOriginals -contains "$($campaign.Name)/$indexedCheckpoint") {
        Add-Failure "system/WORLDS_AND_CAMPAIGNS.md points campaigns/$($campaign.Name)/ at '$indexedCheckpoint', a superseded nonconforming original that is not a restore target; point it at the conforming re-issue instead."
    }
}

if ($failures.Count -gt 0) {
    Write-Host "Checkpoint contract FAILED ($($failures.Count) error(s))"
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

Write-Host 'Checkpoint contract tests PASSED'
