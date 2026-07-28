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
        [string[]]$SupersededOriginals,
        [string[]]$StaleSkillCounterExceptions = @()
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

                # --- Contract 6: structured profile version (Decision 074) --
                # A manifest captured on or after Decision 074 (2026-07-23)
                # records the applicable World Rule Profile version as a
                # required structured element: the world/version/freeze_status
                # mapping, or an explicit no-profile marker beginning with
                # 'none'. Manifests captured before it -- old-form REC-bearing
                # ones and the early id-less baselines alike -- recorded the
                # profile as free text or not at all and are immutable
                # (Rules 13.2), so they are exempt; the capture date is itself
                # immutable manifest content, which makes it the mechanical
                # discriminator.
                $createdMatch = [regex]::Match($manifestText, '(?m)^[ \t]*(?:real_date|created|record_time):[ \t]*"?(\d{4}-\d{2}-\d{2})')
                $preDecision074 = $createdMatch.Success -and ([datetime]$createdMatch.Groups[1].Value -lt [datetime]'2026-07-23')
                if (-not $isOldForm -and -not $preDecision074) {
                    $profileField = [regex]::Match($manifestText, '(?m)^[ \t]*world_rule_profile:[ \t]*(.*?)[ \t]*\r?$')
                    if (-not $profileField.Success) {
                        $failures.Add("$key manifest records no world_rule_profile; the profile version is a required, structured element of the version block (Rules 13.3, 14.6; Decision 074).") | Out-Null
                    } else {
                        $profileValue = $profileField.Groups[1].Value.Trim().Trim('"')
                        if ($profileValue -eq '') {
                            if ($manifestText -notmatch '(?ms)^[ \t]*world_rule_profile:[ \t]*\r?\n[ \t]+world[ \t]*:[^\r\n]*\r?\n[ \t]+version[ \t]*:[^\r\n]*\r?\n[ \t]+freeze_status[ \t]*:') {
                                $failures.Add("$key manifest world_rule_profile mapping is not the structured world/version/freeze_status form (Rules 14.6; Decision 074).") | Out-Null
                            }
                        } elseif ($profileValue -notmatch '^none') {
                            $failures.Add("$key manifest world_rule_profile is neither the structured world/version/freeze_status mapping nor an explicit no-profile marker beginning with 'none' (Rules 13.3, 14.6; Decision 074).") | Out-Null
                        }
                    }
                }
            }

            foreach ($ledger in $requiredLedgers) {
                if (-not (Test-Path -LiteralPath (Join-Path $checkpoint.FullName $ledger) -PathType Leaf)) {
                    $failures.Add("$key omits the required ledger $ledger. Restoring it would leave that ledger at whatever live canon happened to hold.") | Out-Null
                }
            }
        }

        # --- Contract 8: progression advanced, so a skill counter must have --
        # The stale-field class. Every other contract here checks whether a
        # *file* was written; this one checks whether a field inside a written
        # file kept up. Read-back verification cannot catch it -- it confirms
        # the intent it was handed, and an incomplete intent verifies clean --
        # and the Repository Validation Barrier cannot either, because a
        # counter frozen at its previous value is perfectly well-formed.
        #
        # The observed failure: Checkpoint 0028 captured a cleared Gate that
        # resolved three Rupture casts, one Flash Step, one Keen Sense and two
        # Dagger Mastery applications, with every skill counter left at its
        # 0027 value. XP, Mana, condition and equipment were all correct in the
        # same file. Both gates passed. It surfaced two checkpoints later, only
        # because the player asked.
        #
        # The assertion is the same two-independent-statements shape Contract 2
        # uses: progression state and skill counters are separate records of
        # one session's combat, so drift between them is decidable without
        # knowing which is right. If (level, xp) advanced -- which in a
        # skill-tracking world means kills or a clear resolved -- at least one
        # tracked skill counter must have advanced too.
        #
        # Deliberately under-fires. It compares aggregate use totals, so a
        # partial miss (Rupture updated, Keen Sense forgotten) passes; it skips
        # any pair whose parent tracks no counters at all, which exempts every
        # checkpoint before a world adopts skill tracking; and a level-up that
        # carries XP down masks its own trigger. A coverage gate that
        # under-fires is recoverable, one that fires falsely blocks all
        # validation and gets deleted -- the same reasoning the Relationship
        # Texture check records for preferring an allowlist.
        $skillState = @{}
        foreach ($checkpoint in Get-ChildItem -LiteralPath $savesRoot -Directory) {
            $sheetPath = Join-Path $checkpoint.FullName '100_CHARACTER_SHEET.md'
            if (-not (Test-Path -LiteralPath $sheetPath -PathType Leaf)) { continue }
            $sheetText = Get-Content -LiteralPath $sheetPath -Raw

            $levelMatch = [regex]::Match($sheetText, '(?m)^[ \t]*level:[ \t]*(\d+)')
            $xpMatch = [regex]::Match($sheetText, '(?m)^[ \t]*xp:[ \t]*"?(\d+)[ \t]*/')
            if (-not $levelMatch.Success -or -not $xpMatch.Success) { continue }

            # Mastery-tracked skills only. Stat-milestone passives record
            # "Successful material applications" and have no mastery track
            # (Gatefall Section 7.4), so they are correctly not matched here.
            $useMatches = [regex]::Matches($sheetText, 'Successful uses[ \t]+(\d+)')
            $useSum = 0
            foreach ($use in $useMatches) { $useSum += [int]$use.Groups[1].Value }

            $parentSave = $null
            $manifestPath = Join-Path $checkpoint.FullName '900_SAVE_MANIFEST.md'
            if (Test-Path -LiteralPath $manifestPath -PathType Leaf) {
                $parentMatch = [regex]::Match((Get-Content -LiteralPath $manifestPath -Raw), '(?m)^[ \t]*parent_save:[ \t]*(\S+)')
                if ($parentMatch.Success) { $parentSave = $parentMatch.Groups[1].Value.Trim('"') }
            }

            $skillState[$checkpoint.Name] = [pscustomobject]@{
                Level         = [int]$levelMatch.Groups[1].Value
                Xp            = [int]$xpMatch.Groups[1].Value
                UseSum        = $useSum
                TrackedSkills = $useMatches.Count
                Parent        = $parentSave
            }
        }

        foreach ($childName in ($skillState.Keys | Sort-Object)) {
            $child = $skillState[$childName]

            # Lineage comes from the manifest, not ordinal adjacency, so a fork
            # is compared against the checkpoint it actually descends from.
            if (-not $child.Parent) { continue }
            if (-not $skillState.ContainsKey($child.Parent)) { continue }
            $parentState = $skillState[$child.Parent]

            # Nothing to check before the world tracks skill use at all.
            if ($parentState.TrackedSkills -eq 0) { continue }

            $progressed = ($child.Level -gt $parentState.Level) -or
                          ($child.Level -eq $parentState.Level -and $child.Xp -gt $parentState.Xp)
            if (-not $progressed) { continue }
            if ($child.UseSum -gt $parentState.UseSum) { continue }
            if ($StaleSkillCounterExceptions -contains "$($campaign.Name)/$childName") { continue }

            $failures.Add("$($campaign.Name)/$childName advanced progression since $($child.Parent) (level $($parentState.Level) XP $($parentState.Xp) -> level $($child.Level) XP $($child.Xp)) while its skill-use counters stayed at $($child.UseSum). Kills or a clear resolved, so at least one tracked skill's counter should have advanced with them; a counter frozen at its previous value is well-formed and passes every other gate, which is why this one exists. Settle skill counters in the exchange that used them (Resident Core, Turn-State Settlement step 4).") | Out-Null
        }

        # --- Contract 9: the chronicle's Record block lists every Event it -
        # defines. The subjects list and the Event bodies are two statements of
        # the same fact, and only the bodies get written during play, so the
        # list silently falls behind. This is a writer's obligation exactly
        # like Contract 2's index drift, and it fails the same way: quietly,
        # while every structural gate still passes.
        #
        # Three separate omissions were found the first time anyone counted --
        # EVT-000085 and EVT-000086 from the Profile 1.7/1.8 migrations, and
        # EVT-000162 through EVT-000168 from a checkpoint and a profile
        # adoption. Nothing had ever compared the two, and the gap surfaced
        # only because test_progression_audit_contract derives a fixture from
        # the high-water Event and requires it to be the last subject.
        #
        # Live ledgers only: immutable checkpoints are byte-frozen and a
        # historical omission inside one is not repairable (Rules 13.2).
        $chroniclePath = Join-Path $campaign.FullName '160_CAMPAIGN_CHRONICLE.md'
        if (Test-Path -LiteralPath $chroniclePath -PathType Leaf) {
            $chronicleText = (Get-Content -LiteralPath $chroniclePath -Raw) -replace "`r`n", "`n"
            $subjectsBlock = [regex]::Match($chronicleText, '(?ms)^subjects:\n(.*?)^```')
            if ($subjectsBlock.Success) {
                $definedEvents = [regex]::Matches($chronicleText, '(?m)^id: (EVT-\d{6})$') |
                    ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique
                $listedEvents = [regex]::Matches($subjectsBlock.Groups[1].Value, 'EVT-\d{6}') |
                    ForEach-Object { $_.Value } | Sort-Object -Unique
                $unlisted = @($definedEvents | Where-Object { $listedEvents -notcontains $_ })
                if ($unlisted.Count -gt 0) {
                    $shown = ($unlisted | Select-Object -First 8) -join ', '
                    if ($unlisted.Count -gt 8) { $shown += ", ... ($($unlisted.Count) total)" }
                    $failures.Add("campaigns/$($campaign.Name)/160_CAMPAIGN_CHRONICLE.md defines Events its Record block does not list as subjects: $shown. The subjects list and the Event bodies are two statements of the same fact; add each Event to the list in the same change that writes it (011 Section 8).") | Out-Null
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

    # --- Contract 7: every declared world profile declares a version and a
    # freeze status (Rules 14.6; Decision 074). Save compatibility depends on
    # the profile version, so an undeclared version or freeze status makes
    # every checkpoint in that world untrustworthy.
    $worldsRoot = Join-Path $Root 'worlds'
    if (Test-Path -LiteralPath $worldsRoot -PathType Container) {
        foreach ($world in Get-ChildItem -LiteralPath $worldsRoot -Directory) {
            $profilePath = Join-Path $world.FullName '206_WORLD_RULE_PROFILE.md'
            if (-not (Test-Path -LiteralPath $profilePath -PathType Leaf)) { continue }
            $profileText = Get-Content -LiteralPath $profilePath -Raw
            if ($profileText -notmatch '(?m)^\*\*Profile Version:\*\*[ \t]*\S') {
                $failures.Add("worlds/$($world.Name)/206_WORLD_RULE_PROFILE.md declares no Profile Version; save compatibility depends on it (Rules 14.6; Decision 074).") | Out-Null
            }
            if ($profileText -notmatch '(?m)^\*\*Compatibility Status:\*\*[ \t]*(frozen|workshop draft)') {
                $failures.Add("worlds/$($world.Name)/206_WORLD_RULE_PROFILE.md declares no Compatibility Status (frozen | workshop draft); an undeclared freeze status leaves every recorded profile version untrustworthy (Rules 14.6; Decision 074).") | Out-Null
            }
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

# Checkpoints that genuinely captured stale skill counters, corrected in live
# canon afterward. A checkpoint's bytes are immutable (Rules Section 13.2), so
# the defect cannot be repaired where it happened and the exemption is the only
# honest way to keep Contract 8 enforcing on everything after it. Each entry
# names the correction that carries the true counts forward.
#
#   gatefall_pendragon_001/900_CHECKPOINT_0028
#       The failure Contract 8 was written from. The Cicero Gate clear
#       (EVT-000119-EVT-000120) resolved three Rupture casts, one Flash Step,
#       one Keen Sense activation and two Dagger Mastery applications, none
#       recorded. Corrected in live canon by EVT-000127: Rupture 13->16,
#       Flash Step 5->6, Keen Sense 0->1, Dagger Mastery 0->2. No mastery
#       threshold crossed and no resolved roll changed -- the rolls were always
#       right, only the bookkeeping was stale.
$staleSkillCounterExceptions = @(
    'gatefall_pendragon_001/900_CHECKPOINT_0028'
)

$failures = Test-CheckpointContract -Root $root -SupersededOriginals $supersededOriginals -StaleSkillCounterExceptions $staleSkillCounterExceptions

if ($failures.Count -gt 0) {
    Write-Host "Checkpoint contract FAILED ($($failures.Count) error(s))"
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

# --- Regression fixture: the known failure classes must stay caught -----------
# Two defects are reproduced under the fixture root. The narrated-gate original:
# a three-digit ordinal, a manifest self-reporting a validator PASS that never
# ran, and omitted required ledgers. And the stale-field class: a child
# checkpoint whose XP advanced while its skill counter stayed frozen at the
# parent's value. If the contract stops catching either, this test fails.
$fixtureRoot = Join-Path $root 'tools/tests/fixtures/nonconforming_checkpoint'
if (-not (Test-Path -LiteralPath $fixtureRoot -PathType Container)) {
    Write-Host 'Checkpoint contract FAILED: regression fixture tools/tests/fixtures/nonconforming_checkpoint/ is missing.'
    exit 1
}

$fixtureFailures = Test-CheckpointContract -Root $fixtureRoot -SupersededOriginals @() -StaleSkillCounterExceptions @()
$expectedNeedles = @(
    'canonical four-digit checkpoint form',
    'self-reports a validation verdict',
    'omits the required ledger 100_CHARACTER_SHEET.md',
    'records no world_rule_profile',
    'skill-use counters stayed at'
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
