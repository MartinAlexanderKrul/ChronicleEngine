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
# Decision 072 (Save Layer Unification) blessed one canonical checkpoint form
# and made its shape mechanically checkable: the four-digit ordinal directory,
# the required ledger set, manifest conformance, and the rule that a manifest
# may record that the gate ran but may never adjudicate its own result. The
# 900_CHECKPOINT_001 failure class is reproduced as a regression fixture under
# tools/tests/fixtures/nonconforming_checkpoint/ and this test asserts the
# fixture is caught.
#
# This test mechanizes the obligations that are checkable at rest. It cannot
# check capture-time byte-fidelity -- live canon legitimately diverges from the
# latest checkpoint as soon as play resumes -- so that belongs to the capture
# procedure, not here.

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

function Test-CheckpointContract {
    param(
        [string]$Root,
        [string[]]$SupersededOriginals
    )

    $failures = New-Object System.Collections.Generic.List[string]
    $campaignsRoot = Join-Path $Root 'campaigns'
    $indexPath = Join-Path $Root 'system/WORLDS_AND_CAMPAIGNS.md'
    $indexText = Get-Content -LiteralPath $indexPath -Raw

    foreach ($campaign in Get-ChildItem -LiteralPath $campaignsRoot -Directory) {
        $savesRoot = Join-Path $campaign.FullName 'saves'
        if (-not (Test-Path -LiteralPath $savesRoot -PathType Container)) { continue }

        foreach ($checkpoint in Get-ChildItem -LiteralPath $savesRoot -Directory) {
            $key = "$($campaign.Name)/$($checkpoint.Name)"
            if ($SupersededOriginals -contains $key) { continue }

            # --- Contract 0: canonical form (Decision 072) ------------------
            # One form: saves/900_CHECKPOINT_<NNNN>/ with a four-digit,
            # zero-padded ordinal. Anything else is not a checkpoint.
            if ($checkpoint.Name -notmatch '^900_CHECKPOINT_\d{4}$') {
                $failures.Add("$key does not use the canonical four-digit checkpoint form 900_CHECKPOINT_<NNNN> (Rules 13.1, Decision 072).") | Out-Null
            }

            # --- Contract 1: every checkpoint is complete -------------------
            # Catches the 900_CHECKPOINT_001 class: a snapshot that silently
            # omits ledgers and is discovered only when someone tries to
            # restore it.
            $manifest = Join-Path $checkpoint.FullName '900_SAVE_MANIFEST.md'
            if (-not (Test-Path -LiteralPath $manifest -PathType Leaf)) {
                $failures.Add("$key has no 900_SAVE_MANIFEST.md; a checkpoint without a manifest cannot declare what it captured or how to restore it.") | Out-Null
            } else {
                $manifestText = Get-Content -LiteralPath $manifest -Raw

                # --- Contract 4: manifest conformance (Decision 072) --------
                if ($manifestText -match '(ENT|REC|EVT|REL)-XXXXXX|<(required|optional|generated):') {
                    $failures.Add("$key manifest contains unresolved template placeholder tokens (011 Section 12.3).") | Out-Null
                }

                # --- Contract 5: no self-adjudicated verdict ----------------
                # The narrated-gate class (Decisions 054, 072). A new-form
                # manifest (Decision 072: no live-registry identifier) records
                # no validation verdict at all -- the barrier is external and
                # its result is not manifest content. Historical old-form
                # manifests (those carrying a REC- id) are immutable evidence
                # and exempt: some truthfully record that the gate ran at
                # capture, and their bytes must not be repaired (Rules 13.2).
                $isOldForm = $manifestText -match '(?m)^id:[ \t]*REC-\d{6}'
                if (-not $isOldForm -and $manifestText -match '(?i)validat(or|ion)[^\r\n]{0,60}?(\u2713|\bPASS\b|\bpassed\b)') {
                    $failures.Add("$key manifest self-reports a validation verdict; the Repository Validation Barrier is external and mechanical, and a manifest may never adjudicate its own result (Decisions 054, 072).") | Out-Null
                }
            }

            foreach ($ledger in $requiredLedgers) {
                if (-not (Test-Path -LiteralPath (Join-Path $checkpoint.FullName $ledger) -PathType Leaf)) {
                    $failures.Add("$key omits the required ledger $ledger. Restoring it would leave that ledger at whatever live canon happened to hold.") | Out-Null
                }
            }
        }

        # --- Contract 2: the index agrees with the campaign's restore point ---
        # The two are independent statements of the same fact and must not
        # drift. This is the assertion that would have caught 0010 and 0011
        # shipping against a stale index.
        $entryPoint = Join-Path $campaign.FullName '180_CURRENT_STATE.md'
        if (-not (Test-Path -LiteralPath $entryPoint -PathType Leaf)) { continue }

        $entryText = Get-Content -LiteralPath $entryPoint -Raw
        $declared = [regex]::Match($entryText, '(?m)^\s*-\s*\*\*Latest restorable checkpoint:\*\*\s*`saves/([^/`]+)/?`')
        if (-not $declared.Success) { continue }
        $declaredCheckpoint = $declared.Groups[1].Value

        $rowPattern = '(?m)^\|\s*`campaigns/' + [regex]::Escape($campaign.Name) + '/`\s*\|[^|]*\|[^|]*\|[^|]*\|\s*`?([^`|]+?)`?\s*\|'
        $row = [regex]::Match($indexText, $rowPattern)
        if (-not $row.Success) {
            $failures.Add("campaigns/$($campaign.Name)/ declares a latest restorable checkpoint but has no parsable row in system/WORLDS_AND_CAMPAIGNS.md.") | Out-Null
            continue
        }
        $indexedCheckpoint = $row.Groups[1].Value.Trim()

        if ($indexedCheckpoint -ne $declaredCheckpoint) {
            $failures.Add("system/WORLDS_AND_CAMPAIGNS.md gives campaigns/$($campaign.Name)/ the latest checkpoint '$indexedCheckpoint', but its 180_CURRENT_STATE.md declares '$declaredCheckpoint' as the latest restorable checkpoint. The index's Maintenance rule requires updating it in the same change that checkpoints a campaign.") | Out-Null
        }

        # --- Contract 3: the index never points at a superseded original ----
        if ($SupersededOriginals -contains "$($campaign.Name)/$indexedCheckpoint") {
            $failures.Add("system/WORLDS_AND_CAMPAIGNS.md points campaigns/$($campaign.Name)/ at '$indexedCheckpoint', a superseded nonconforming original that is not a restore target; point it at the conforming re-issue instead.") | Out-Null
        }
    }

    return ,$failures
}

# Nonconforming originals: superseded snapshots kept as evidence, exempt from
# the form and completeness contracts because their bytes must not be repaired
# (Rules Section 13.2) and their save-point is restorable from a conforming
# re-issue instead (Decision 072). They are precisely the checkpoints this test
# would otherwise demand be fixed -- and fixing them is forbidden. Status and
# reasoning: the owning campaign's saves/README.md.
$supersededOriginals = @(
    'reikon_awakening_001/900_CHECKPOINT_001'
)

$failures = Test-CheckpointContract -Root $root -SupersededOriginals $supersededOriginals

if ($failures.Count -gt 0) {
    Write-Host "Checkpoint contract FAILED ($($failures.Count) error(s))"
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

# --- Regression fixture: the 900_CHECKPOINT_001 failure class must be caught ---
# The fixture reproduces the narrated-gate original: a three-digit ordinal, a
# manifest self-reporting a validator PASS that never ran, and omitted required
# ledgers. If the contract stops catching it, this test fails.
$fixtureRoot = Join-Path $root 'tools/tests/fixtures/nonconforming_checkpoint'
if (-not (Test-Path -LiteralPath $fixtureRoot -PathType Container)) {
    Write-Host 'Checkpoint contract FAILED: regression fixture tools/tests/fixtures/nonconforming_checkpoint/ is missing.'
    exit 1
}

$fixtureFailures = Test-CheckpointContract -Root $fixtureRoot -SupersededOriginals @()
$expectedNeedles = @(
    'canonical four-digit checkpoint form',
    'self-reports a validation verdict',
    'omits the required ledger 100_CHARACTER_SHEET.md'
)
$fixtureProblems = New-Object System.Collections.Generic.List[string]
foreach ($needle in $expectedNeedles) {
    if (-not ($fixtureFailures | Where-Object { $_ -like "*$needle*" })) {
        $fixtureProblems.Add("Fixture defect not caught: expected a failure containing '$needle'.") | Out-Null
    }
}

if ($fixtureProblems.Count -gt 0) {
    Write-Host "Checkpoint contract FAILED ($($fixtureProblems.Count) regression error(s))"
    foreach ($problem in $fixtureProblems) { Write-Host "  - $problem" }
    exit 1
}

Write-Host 'Checkpoint contract tests PASSED'
