[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")
# Outside the repository, like every other suite in this directory.
#
# This wrote its fixture to <repo>/tmp/, and an interrupted run leaves the whole
# copied tree behind inside the working tree, where the next `git add -A` sweeps
# it into a commit. That already happened: 669 files of a progression-audit
# fixture are committed under tmp/progression-audit-6c5c3685... as of 8dfe8f4.
# A test fixture has no business being reachable by a commit at all.
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-progression-audit-" + [guid]::NewGuid().ToString("N"))
$utf8 = [System.Text.UTF8Encoding]::new($false)

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw $Message }
}

function Get-Text {
    param([string]$Path)
    return [System.IO.File]::ReadAllText($Path)
}

function Set-Text {
    param([string]$Path, [string]$Text)
    [System.IO.File]::WriteAllText($Path, $Text, $utf8)
}

function Replace-Once {
    param([string]$Path, [string]$Old, [string]$New)
    $text = Get-Text $Path
    $count = ([regex]::Matches($text, [regex]::Escape($Old))).Count
    Assert-True ($count -eq 1) "Mutation precondition drifted in $Path for: $Old (found $count)"
    Set-Text $Path $text.Replace($Old, $New)
}

function Replace-RegexOnce {
    param([string]$Path, [string]$Pattern, [string]$Replacement)
    $text = Get-Text $Path
    $matches = [regex]::Matches($text, $Pattern)
    Assert-True ($matches.Count -eq 1) "Mutation precondition drifted in $Path for regex: $Pattern (found $($matches.Count))"
    Set-Text $Path ([regex]::Replace($text, $Pattern, $Replacement, 1))
}

# These fixtures are DERIVED from live state, never hardcoded. Counter values, the registry
# high-water mark, and the chronicle's subject list all advance with ordinary play, so pinning
# them to a snapshot makes this contract fail after every session for reasons unrelated to the
# invariant under test. Each helper below reads the current value and mutates relative to it.
function Get-CounterLine {
    param([string]$Path, [string]$CounterPath)
    $text = Get-Text $Path
    $pattern = '- \{ path: ' + [regex]::Escape($CounterPath) + ', baseline_value: (\d+), baseline_as_of: (EVT-\d{6}), current_value: (\d+) \}'
    $matches = [regex]::Matches($text, $pattern)
    Assert-True ($matches.Count -eq 1) "Expected exactly one '$CounterPath' counter in $Path (found $($matches.Count))."
    $m = $matches[0]
    return [pscustomobject]@{
        Line     = $m.Value
        Baseline = [int]$m.Groups[1].Value
        AsOf     = $m.Groups[2].Value
        Current  = [int]$m.Groups[3].Value
    }
}

function New-CounterLine {
    param([pscustomobject]$Counter, [int]$Current)
    return "- { path: $($Counter.Line -replace '^- \{ path: ([^,]+),.*$', '$1'), baseline_value: $($Counter.Baseline), baseline_as_of: $($Counter.AsOf), current_value: $Current }"
}

function Get-RegistryHighWater {
    param([string]$Path)
    $text = Get-Text $Path
    $m = [regex]::Match($text, '\| Event \| `EVT-` \| Event \| EVT-(\d{6}) \|')
    Assert-True $m.Success "Could not read the Event high-water mark from the ID registry."
    return [int]$m.Groups[1].Value
}

# Progression candidates, read out of the sheet rather than named by a literal.
#
# The candidate mutations below used to name a key AND pin its status and
# evidence count: `twin_fang` at `ratified`, `dimensional_weapon_control` at
# `tracking` with exactly two references. Both were true on the day they were
# written and neither is an invariant -- ordinary play ratified the second one
# at `EVT-000436` and added its third reference, the literal stopped matching,
# and the suite failed on correct canon. That is `F-018`'s class, and it is the
# same defect `F-013` recorded one layer down: a value copied out of something
# that moves, with nothing comparing the two.
#
# What the assertions actually need is a candidate with a PROPERTY -- one at or
# over the domain's evidence threshold, one whose key the profile declares
# pre-authored. Select on the property and play may rename, re-rank, ratify or
# re-evidence anything it likes.
function Get-ProgressionCandidates {
    param([string]$Path)
    $pattern = '(?ms)^(?<block>      - domain: (?<domain>\S+)\r?\n' +
               '        key: (?<key>\S+)\r?\n' +
               '        signature: (?<signature>\S+)\r?\n' +
               '        status: (?<status>\S+)\r?\n' +
               '        evidence:\r?\n(?<evidence>(?:^          - \S+[^\r\n]*\r?\n)+))'
    $found = @()
    foreach ($m in [regex]::Matches((Get-Text $Path), $pattern)) {
        $found += [pscustomobject]@{
            Block    = $m.Groups['block'].Value
            Domain   = $m.Groups['domain'].Value
            Key      = $m.Groups['key'].Value
            Status   = $m.Groups['status'].Value
            Evidence = @([regex]::Matches($m.Groups['evidence'].Value, '(?m)^          - (?<ref>\S+)') |
                         ForEach-Object { $_.Groups['ref'].Value })
        }
    }
    return $found
}

function Set-CandidateStatus {
    param([string]$Block, [string]$Status)
    $rewritten = [regex]::Replace($Block, '(?m)^(        status: )\S+$', ('${1}' + $Status), 1)
    Assert-True ($rewritten -ne $Block) "Could not rewrite a progression candidate's status line."
    return $rewritten
}

# Parsed exactly the way validate_repository.ps1 parses it, from the same file:
# the threshold and the pre-authored key set are the profile's to declare, and
# restating either here would be the second copy that F-013 warns about.
function Get-ProgressionRatificationPolicy {
    param([string]$ProfilePath)
    $text = Get-Text $ProfilePath
    Assert-True ($text -match '(?m)^      evidence_threshold:\s*(\d+)\s*$') `
        "The profile declares no progression evidence_threshold; the ratification mutations cannot be derived."
    $threshold = [int]$Matches[1]
    $preAuthored = @()
    if ($text -match '(?ms)^      pre_authored_result_keys:\r?\n(?<keys>(?:^        - [^\r\n]*\r?\n)+)') {
        $preAuthored = @([regex]::Matches($Matches['keys'], '(?m)^        - (?<key>\S+)\s*$') |
                         ForEach-Object { $_.Groups['key'].Value })
    }
    return [pscustomobject]@{ Threshold = $threshold; PreAuthoredKeys = $preAuthored }
}

function Invoke-Validation {
    param([string]$RepositoryRoot)
    # -CoreOnly: every assertion here is about progression candidates, counters,
    # and audit linkage, all of which live in the structural scan. The three
    # composite gates cost a PowerShell and a Python launch each and are covered
    # by their own suites.
    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $RepositoryRoot -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

try {
    New-Item -ItemType Directory -Path $tempRoot | Out-Null
    # Live progression state only. Under -CoreOnly the manifest-resolving
    # runtime-configuration gate does not run, so checkpoint history is not read.
    New-FixtureRepository -SourceRoot $root -DestinationRoot $tempRoot `
        -Directories @("system", "worlds", "campaigns") | Out-Null

    $character = Join-Path $tempRoot "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
    $chronicle = Join-Path $tempRoot "campaigns/gatefall_pendragon_001/160_CAMPAIGN_CHRONICLE.md"
    $registry = Join-Path $tempRoot "system/ID_REGISTRY.md"
    $profile = Join-Path $tempRoot "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
    $runtime = Join-Path $root "docs/AI_GAMEPLAY_RUNTIME_PROFILE.md"

    # Live canon is taken as it stands, and is required to validate.
    #
    # Seven hardcoded repairs used to sit here, normalizing the F-015 render and
    # provenance defects that were live when those gates were written, on the
    # stated promise that "once live canon is repaired these replacements simply
    # do nothing." Live canon was repaired and they do nothing: every one of the
    # seven strings is now absent. A `.Replace` that no longer matches cannot say
    # so -- it is a pinned live-state literal with the failure mode removed and
    # the staleness kept, which is worse than the version that fails loudly.
    # Removed under `F-018`; if a live defect ever needs suppressing again it
    # belongs in the flag file with a repair owner, not silently in a fixture.
    $baseline = Invoke-Validation $tempRoot
    Assert-True ($baseline.ExitCode -eq 0) "Normalized Data Model 0.1.7 control repository did not validate:`n$($baseline.Output)"

    # Checkpoint 0070's repair audit exposed values that were duplicated in a
    # prose rendering and structured state without any gate comparing them.
    # These mutations prove the production validator rejects that class now.
    $keenUses = Get-CounterLine $character 'skills.keen_sense.successful_uses'
    $keenPattern = '("Keen Sense \[[EDCBAS]-Rank\][^\r\n]*?\*\*Uses )' + $keenUses.Current + '(\s+)'
    Replace-RegexOnce $character $keenPattern ('${1}' + ($keenUses.Current + 1) + '${2}')
    $renderDrift = Invoke-Validation $tempRoot
    Assert-True ($renderDrift.ExitCode -ne 0 -and $renderDrift.Output -like "*Keen Sense*renders successful_uses $($keenUses.Current + 1)*tracked current_value is $($keenUses.Current)*") `
        "A skills_known rendering that disagrees with its authoritative counter was accepted:`n$($renderDrift.Output)"
    $wrongKeenPattern = '("Keen Sense \[[EDCBAS]-Rank\][^\r\n]*?\*\*Uses )' + ($keenUses.Current + 1) + '(\s+)'
    Replace-RegexOnce $character $wrongKeenPattern ('${1}' + $keenUses.Current + '${2}')

    # Whichever authorized mode the Bearer currently stands in, `light` is not one
    # of them. Pinning the precondition to `resting` was the same F-018 literal:
    # the mode moves with play between `active` and `resting` and neither value
    # is the invariant under test -- the domain check is.
    $manaMode = [regex]::Match((Get-Text $character), '(?m)^(?<indent>[ \t]+)mana_recovery_mode: (?<mode>\S+)[ \t]*$')
    Assert-True $manaMode.Success "No mana_recovery_mode found on the character sheet; fixture precondition drifted."
    Assert-True ($manaMode.Groups['mode'].Value -ne 'light') `
        "Live canon already carries the Health-only mode this mutation introduces; the check would assert nothing."
    $manaOriginal = $manaMode.Groups['indent'].Value + "mana_recovery_mode: " + $manaMode.Groups['mode'].Value
    $manaInvalid = $manaMode.Groups['indent'].Value + "mana_recovery_mode: light"
    Replace-Once $character $manaOriginal $manaInvalid
    $badRecoveryMode = Invoke-Validation $tempRoot
    Assert-True ($badRecoveryMode.ExitCode -ne 0 -and $badRecoveryMode.Output -like "*mana_recovery_mode must be active or resting*") `
        "A Health-only recovery mode was accepted for Mana:`n$($badRecoveryMode.Output)"
    Replace-Once $character $manaInvalid $manaOriginal

    $weaponPreview = [regex]::Match((Get-Text $character), '(?<prefix>weapon power (?<power>\d+).*?effective chassis[^0-9]*(?<chassis>\d+(?:\.\d+)?).*?DMG )(?<damage>\d+)(?<suffix> standard before reduction.*?at effective Strength (?<stat>\d+))')
    Assert-True $weaponPreview.Success "No equipped weapon preview found; fixture precondition drifted."
    $wrongDamage = [int]$weaponPreview.Groups['damage'].Value + 1
    Replace-Once $character $weaponPreview.Value ($weaponPreview.Groups['prefix'].Value + $wrongDamage + $weaponPreview.Groups['suffix'].Value)
    $badDamage = Invoke-Validation $tempRoot
    Assert-True ($badDamage.ExitCode -ne 0 -and $badDamage.Output -like "*equipped weapon renders DMG $wrongDamage but Section 6.2 derives*") `
        "A stale equipped-weapon damage preview was accepted:`n$($badDamage.Output)"
    Replace-Once $character ($weaponPreview.Groups['prefix'].Value + $wrongDamage + $weaponPreview.Groups['suffix'].Value) $weaponPreview.Value

    $currentState = Join-Path $tempRoot "campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md"
    $currentSource = [regex]::Match((Get-Text $currentState), '(?m)^  source: (EVT-\d{6})$')
    Assert-True $currentSource.Success "Current State provenance source is missing; fixture precondition drifted."
    $wrongPromotionNumber = [int]$currentSource.Groups[1].Value.Substring(4) - 1
    $wrongPromotion = "EVT-{0:D6}" -f $wrongPromotionNumber
    Replace-Once $currentState "**Live canon is promoted through ``$($currentSource.Groups[1].Value)``.**" "**Live canon is promoted through ``$wrongPromotion``.**"
    $badPromotion = Invoke-Validation $tempRoot
    Assert-True ($badPromotion.ExitCode -ne 0 -and $badPromotion.Output -like "*says live canon is promoted through $wrongPromotion*provenance source is $($currentSource.Groups[1].Value)*") `
        "A stale Current State promotion boundary was accepted:`n$($badPromotion.Output)"
    Replace-Once $currentState "**Live canon is promoted through ``$wrongPromotion``.**" "**Live canon is promoted through ``$($currentSource.Groups[1].Value)``.**"

    Assert-True ((Get-Text $profile).Contains('progression-batch-settlement')) `
        "Gatefall Profile 1.26 does not preserve promotion-time non-combat progression batching."
    Assert-True ((Get-Text $profile).Contains('Promotion reconciliation.')) `
        "Gatefall Profile 1.26 does not preserve known combat-skill counter reconciliation."
    Assert-True ((Get-Text $profile).Contains('Mandatory ratification gate.')) `
        "Gatefall Profile 1.26 does not preserve the next-scene ratification gate."
    Assert-True ((Get-Text $runtime).Contains('mandatory readiness and next-scene gate')) `
        "The Save Algorithm does not preserve pending ratification as a next-scene gate."
    Assert-True ((Get-Text $runtime).Contains('re-count every known combat skill activation')) `
        "The Save Algorithm does not execute the combat-skill double-check at the promotion barrier."

    $rupture = Get-CounterLine $character 'skills.rupture.successful_uses'
    Replace-Once $character $rupture.Line (New-CounterLine $rupture ($rupture.Current + 1))
    $drift = Invoke-Validation $tempRoot
    Assert-True ($drift.ExitCode -ne 0 -and $drift.Output -like "*plus Event deltas*requires $($rupture.Current)*") `
        "Counter arithmetic drift was not rejected:`n$($drift.Output)"
    Replace-Once $character (New-CounterLine $rupture ($rupture.Current + 1)) $rupture.Line

    $policy = Get-ProgressionRatificationPolicy $profile
    $candidates = Get-ProgressionCandidates $character
    Assert-True ($candidates.Count -gt 0) "No progression candidates could be read from the character sheet."

    # A candidate carrying the threshold must not sit in `tracking`. Any resolved
    # candidate at or over the threshold proves it; a pre-authored key is excluded
    # so exactly one rule fires and the message names the candidate we moved.
    $trackingTarget = @($candidates | Where-Object {
        $_.Evidence.Count -ge $policy.Threshold -and
        $_.Status -ne 'tracking' -and
        $policy.PreAuthoredKeys -notcontains $_.Key
    }) | Select-Object -First 1
    Assert-True ($null -ne $trackingTarget) `
        "No resolved, non-pre-authored candidate carries the domain's $($policy.Threshold)-reference threshold; the tracking-at-threshold mutation has nothing to target."
    $trackingMutated = Set-CandidateStatus $trackingTarget.Block 'tracking'
    Replace-Once $character $trackingTarget.Block $trackingMutated
    $threshold = Invoke-Validation $tempRoot
    Assert-True ($threshold.ExitCode -ne 0 -and $threshold.Output -like "*'$($trackingTarget.Domain)/$($trackingTarget.Key)' has at least $($policy.Threshold) distinct evidence references but remains tracking*") `
        "A candidate at the $($policy.Threshold)-reference threshold left in tracking was not rejected:`n$($threshold.Output)"
    Replace-Once $character $trackingMutated $trackingTarget.Block

    # A pre-authored key at the threshold ratifies automatically; anything short of
    # `ratified` is a defect. The key comes from the profile's own declaration, so
    # adding or renaming one moves this mutation with it.
    Assert-True ($policy.PreAuthoredKeys.Count -gt 0) `
        "The profile declares no pre_authored_result_keys; the automatic-ratification mutation has nothing to target."
    $preTarget = @($candidates | Where-Object { $policy.PreAuthoredKeys -contains $_.Key }) | Select-Object -First 1
    Assert-True ($null -ne $preTarget) `
        "The profile declares pre-authored result keys ($($policy.PreAuthoredKeys -join ', ')) but the character sheet carries no candidate with one."
    $preMutated = Set-CandidateStatus $preTarget.Block 'pending-ratification'
    if ($preTarget.Evidence.Count -lt $policy.Threshold) {
        # Borrow Event ids already cited by other candidates in this same file, so
        # the added references are guaranteed to resolve to defined Events.
        $eol = if ($preTarget.Block -match "`r`n") { "`r`n" } else { "`n" }
        $ownIds = @($preTarget.Evidence | ForEach-Object { ($_ -split '#')[0] })
        $donorIds = @($candidates | ForEach-Object { $_.Evidence } |
            ForEach-Object { ($_ -split '#')[0] } |
            Where-Object { $ownIds -notcontains $_ } | Select-Object -Unique)
        $needed = $policy.Threshold - $preTarget.Evidence.Count
        Assert-True ($donorIds.Count -ge $needed) `
            "Not enough distinct evidence Events in the sheet to raise '$($preTarget.Key)' to the $($policy.Threshold)-reference threshold."
        $added = (($donorIds | Select-Object -First $needed |
            ForEach-Object { "          - $_#fixture-threshold-scene" }) -join $eol) + $eol
        $preMutated = [regex]::Replace($preMutated,
            '(?ms)(^        evidence:\r?\n(?:^          - [^\r\n]*\r?\n)+)', ('${1}' + $added), 1)
    }
    Replace-Once $character $preTarget.Block $preMutated
    $authoredThreshold = Invoke-Validation $tempRoot
    Assert-True ($authoredThreshold.ExitCode -ne 0 -and $authoredThreshold.Output -like "*'$($preTarget.Domain)/$($preTarget.Key)' is declared pre-authored*requires automatic ratification*") `
        "A pre-authored candidate at the threshold was allowed to remain unratified:`n$($authoredThreshold.Output)"
    Replace-Once $character $preMutated $preTarget.Block

    # Allocate the fixture Event one past the live high-water mark, whatever it currently is.
    $highWater = Get-RegistryHighWater $registry
    $liveId = 'EVT-{0:D6}' -f $highWater
    $fixtureId = 'EVT-{0:D6}' -f ($highWater + 1)

    Replace-Once $registry "| Event | ``EVT-`` | Event | $liveId |" "| Event | ``EVT-`` | Event | $fixtureId |"
    $registryText = Get-Text $registry
    $marker = "# Allocation Invariants"
    Assert-True ($registryText.Contains($marker)) "Registry allocation marker is missing."
    $registryText = $registryText.Replace($marker, "| $fixtureId | Event | progression-audit contract fixture |`r`n`r`n---`r`n`r`n$marker")
    Set-Text $registry $registryText

    # Line-ending agnostic: the chronicle is CRLF in git but edits may land LF.
    $chronicleText = Get-Text $chronicle
    $subjectsPattern = '(  - ' + [regex]::Escape($liveId) + ')(\r?\n```)'
    $subjectsMatches = [regex]::Matches($chronicleText, $subjectsPattern)
    Assert-True ($subjectsMatches.Count -eq 1) "Expected exactly one '$liveId' at the end of the chronicle subject list (found $($subjectsMatches.Count))."
    $eol = $subjectsMatches[0].Groups[2].Value.Substring(0, $subjectsMatches[0].Groups[2].Value.Length - 3)
    Set-Text $chronicle ([regex]::Replace($chronicleText, $subjectsPattern, ('$1' + $eol + "  - $fixtureId" + '$2'), 1))
    $event = @"

---

## $fixtureId - Progression Audit Contract Fixture

``````yaml
id: $fixtureId
canonical_record: REC-000079
schema_version: "0.1.7"
status: active
provenance:
  source: session-3-gameplay
  game_date: "2026-08-04 06:01 -05:00"
  real_date: "2026-07-27"
type: Event
kind: dangerous-scene-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"
participants:
  - ENT-000125
description: "Fixture exchange."
``````
"@
    Set-Text $chronicle ((Get-Text $chronicle) + $event)

    $missingAudit = Invoke-Validation $tempRoot
    Assert-True ($missingAudit.ExitCode -ne 0 -and $missingAudit.Output -like "*has no 'gatefall.skill_formation' progression audit*") `
        "A dangerous-scene settlement without an audit was not rejected:`n$($missingAudit.Output)"

    # The fixture carries a `gatefall.skill_credit` none alongside the
    # formation none. These are two independent contracts that happen to share
    # the `progression_audits` block: formation asks whether the scene opened a
    # candidate technique (Decision 080), skill_credit asks whether it credited
    # the Bearer's existing skills (Decision 090). A dangerous-scene settlement
    # naming the Bearer owes an answer to both, and a fixture that answers only
    # one is not a valid settlement to be testing the other against.
    Replace-Once $chronicle `
        'participants:
  - ENT-000125
description: "Fixture exchange."' `
        'participants:
  - ENT-000125
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
  - subject: ENT-000125
    domain: gatefall.skill_credit
    result: none
description: "Fixture exchange."'
    $audited = Invoke-Validation $tempRoot
    Assert-True ($audited.ExitCode -eq 0) "A dangerous-scene settlement with an explicit none audit did not validate:`n$($audited.Output)"

    # Decision 090's own contract, tested on the same fixture: drop the
    # skill_credit none and the settlement must be rejected. This is the check
    # that would have caught EVT-000327 and EVT-000332 had it existed -- both
    # were complete solo dungeon clears carrying `counter_deltas: []`.
    Replace-Once $chronicle `
        '  - subject: ENT-000125
    domain: gatefall.skill_credit
    result: none
description: "Fixture exchange."' `
        'description: "Fixture exchange."'
    $missingCredit = Invoke-Validation $tempRoot
    Assert-True ($missingCredit.ExitCode -ne 0 -and $missingCredit.Output -like "*skill credit coverage set*") `
        "A dangerous-scene settlement crediting no skill and asserting no explicit none was not rejected:`n$($missingCredit.Output)"
    Replace-Once $chronicle `
        '    domain: gatefall.skill_formation
    result: none
description: "Fixture exchange."' `
        '    domain: gatefall.skill_formation
    result: none
  - subject: ENT-000125
    domain: gatefall.skill_credit
    result: none
description: "Fixture exchange."'

    Replace-Once $chronicle `
        'kind: dangerous-scene-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    $batchAudited = Invoke-Validation $tempRoot
    Assert-True ($batchAudited.ExitCode -eq 0) "A promotion-time progression batch with an explicit audit did not validate:`n$($batchAudited.Output)"

    Replace-Once $chronicle `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: work-scene-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    Replace-Once $chronicle `
        'participants:
  - ENT-000125
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
  - subject: ENT-000125
    domain: gatefall.skill_credit
    result: none
description: "Fixture exchange."' `
        'participants:
  - ENT-000125
description: "Fixture exchange."'
    # `work-scene-settlement` is outside Decision 090's coverage set, so
    # stripping the skill_credit none with the rest is correct here rather than
    # incidental: a work scene resolved no dangerous encounter and owes no
    # skill-credit assertion.
    #
    # A work scene carries no audit of its own -- Section 7.1 defers its
    # classification -- but deferral is a promise the barrier must keep. With no
    # settlement Event behind it, the note has nowhere to land, which is the
    # state that let a qualifying practice scene pass unnoticed for a whole
    # campaign. This assertion previously expected a clean validate here; that
    # expectation was the bug, and it is inverted deliberately.
    $deferredWork = Invoke-Validation $tempRoot
    Assert-True ($deferredWork.ExitCode -ne 0 -and $deferredWork.Output -like "*sit after the last*settlement*") `
        "A work scene deferring classification with no promotion-barrier settlement behind it was accepted; the deferral is unenforced:`n$($deferredWork.Output)"

    Replace-Once $chronicle `
        'kind: work-scene-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    Replace-Once $chronicle `
        'participants:
  - ENT-000125
description: "Fixture exchange."' `
        'participants:
  - ENT-000125
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
  - subject: ENT-000125
    domain: gatefall.skill_credit
    result: none
description: "Fixture exchange."'

    # Anchored on the fixture's own description line. Without it this matches every
    # real audit block in the chronicle (19 and counting), so the mutation precondition
    # fails after any session that records one.
    Replace-Once $chronicle `
        'progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
  - subject: ENT-000125
    domain: gatefall.skill_credit
    result: none
description: "Fixture exchange."' `
        'counter_deltas:
  - subject: ENT-000125
    counter: skills.twin_fang.successful_uses
    delta: 1
progression_audits:
  - subject: ENT-000125
    domain: gatefall.skill_formation
    result: none
  - subject: ENT-000125
    domain: gatefall.skill_credit
    result: none
description: "Fixture exchange."'
    $twinFang = Get-CounterLine $character 'skills.twin_fang.successful_uses'
    $unappliedDelta = Invoke-Validation $tempRoot
    Assert-True ($unappliedDelta.ExitCode -ne 0 -and $unappliedDelta.Output -like "*plus Event deltas*requires $($twinFang.Current + 1)*") `
        "An Event counter delta without the stored update was not rejected:`n$($unappliedDelta.Output)"

    Replace-Once $character $twinFang.Line (New-CounterLine $twinFang ($twinFang.Current + 1))
    $twinRenderPattern = '("Twin Fang \[[EDCBAS]-Rank\][^\r\n]*?\*\*Successful uses )' + $twinFang.Current + '(\s+)'
    Replace-RegexOnce $character $twinRenderPattern ('${1}' + ($twinFang.Current + 1) + '${2}')
    $reconciled = Invoke-Validation $tempRoot
    Assert-True ($reconciled.ExitCode -eq 0) "A reconciled Event delta and stored counter did not validate:`n$($reconciled.Output)"

    # --- The promotion barrier owes a settlement Event ---------------------
    #
    # Section 7.1 defers non-combat classification to the barrier, which must
    # create a progression-batch-settlement Event carrying the audit result.
    # No barrier ever did: neither settlement kind appeared as an Event kind in
    # any campaign, so the deferred half of the audit had never run and a
    # qualifying practice scene looked exactly like a non-qualifying one.
    #
    # Note what the fixture above proves and does not. It writes its own Event
    # with a settlement kind, so it only ever exercised the branch that fires
    # once such an Event exists -- an input real play never produced. This
    # covers the branch that actually failed: a play Event left unsettled.
    Replace-Once $chronicle `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: scene
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    $unsettledPlay = Invoke-Validation $tempRoot
    Assert-True ($unsettledPlay.ExitCode -ne 0 -and $unsettledPlay.Output -like "*sit after the last*settlement*") `
        "A play Event with no promotion-barrier settlement behind it was not rejected; the deferred half of Section 7.1 is unenforced:`n$($unsettledPlay.Output)"

    Replace-Once $chronicle `
        'kind: scene
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    $settled = Invoke-Validation $tempRoot
    Assert-True ($settled.ExitCode -eq 0) "A settled promotion barrier did not validate:`n$($settled.Output)"

    # A bookkeeping Event closes no scene and must not demand a settlement.
    Replace-Once $chronicle `
        'kind: progression-batch-settlement
importance: minor
game_date: "2026-08-04 06:01 -05:00"' `
        'kind: ruling
importance: minor
game_date: "2026-08-04 06:01 -05:00"'
    $exempt = Invoke-Validation $tempRoot
    Assert-True ($exempt.ExitCode -eq 0) "A bookkeeping Event was treated as an unsettled play scene:`n$($exempt.Output)"

    # --- Section 7.2's scope ratchet needs its counter to exist ------------
    #
    # Profile 1.31 makes scope = max(formula, scope_floor). A scope skill with
    # no stored floor silently degrades to the bare formula, which is the exact
    # arithmetic that made ascension a downgrade before 1.31. The counter
    # recording an absence is load-bearing, so its absence must fail.
    $keenFloor = Get-CounterLine $character 'skills.keen_sense.scope_floor'
    Assert-True ($null -ne $keenFloor) "Keen Sense has no scope_floor counter to remove; fixture precondition drifted."

    Replace-Once $character ("      " + $keenFloor.Line + "`n") ""
    $missingFloor = Invoke-Validation $tempRoot
    Assert-True ($missingFloor.ExitCode -ne 0 -and $missingFloor.Output -like "*missing a scope_floor tracked_counters entry*") `
        "A scope skill with no scope_floor counter was accepted; the Section 7.2 ratchet is unenforced:`n$($missingFloor.Output)"

    Set-Text $character ((Get-Text $character) -replace 'tracked_counters:', ("tracked_counters:`n      " + $keenFloor.Line))
    $restoredFloor = Invoke-Validation $tempRoot
    Assert-True ($restoredFloor.ExitCode -eq 0) "A restored scope_floor counter did not validate:`n$($restoredFloor.Output)"

    # --- Profile 1.33 Stat Passive Rank is derived, never stored -----------
    #
    # Section 4.4 derives Flux Sight's Rank from base Perception, clamped by
    # System Rank + 1. A rendered Rank that contradicts that derivation is
    # drift even if every other field remains valid.
    #
    # The live Rank is read rather than written down, per this file's own rule
    # above. It was pinned as C-Rank against "Perception 44 ... its System-Rank-D
    # ceiling", and both halves went stale in the same session: Perception
    # reached 54 and System Rank reached C, taking Flux Sight to B. The mutation
    # then failed its own precondition, so the contract stopped reporting on the
    # invariant and started reporting on the snapshot.
    $liveFluxRank = [regex]::Match((Get-Text $character), 'Flux Sight \[([EDCBAS])-Rank\]')
    Assert-True $liveFluxRank.Success "Flux Sight renders no Rank; fixture precondition drifted."
    $fluxRank = $liveFluxRank.Groups[1].Value
    # Any Rank other than the derived one is drift. E unless E is what it already
    # derives to, in which case S -- the two ends of the ladder, so the wrong
    # value is never accidentally the right one.
    $wrongRank = if ($fluxRank -eq 'E') { 'S' } else { 'E' }
    Replace-Once $character "Flux Sight [$fluxRank-Rank]" "Flux Sight [$wrongRank-Rank]"
    $wrongPassiveRank = Invoke-Validation $tempRoot
    Assert-True ($wrongPassiveRank.ExitCode -ne 0 -and $wrongPassiveRank.Output -like "*does not render derived Rank $fluxRank*") `
        "A Stat Passive with a rendered Rank contradicting its base Stat was accepted:`n$($wrongPassiveRank.Output)"
    Replace-Once $character "Flux Sight [$wrongRank-Rank]" "Flux Sight [$fluxRank-Rank]"

    # Stat Passives have successful_uses only. A mastery counter would create
    # a second growth axis explicitly forbidden by Section 4.4.
    $fluxUses = Get-CounterLine $character 'skills.flux_sight.successful_uses'
    Assert-True ($null -ne $fluxUses) "Flux Sight has no successful_uses counter; fixture precondition drifted."
    $forbiddenMasteryLine = '      - { path: skills.flux_sight.mastery_progress, baseline_value: 0, baseline_as_of: EVT-000188, current_value: 0 }'
    Set-Text $character ((Get-Text $character) -replace [regex]::Escape($fluxUses.Line), ($fluxUses.Line + "`n" + $forbiddenMasteryLine))
    $forbiddenPassiveMastery = Invoke-Validation $tempRoot
    Assert-True ($forbiddenPassiveMastery.ExitCode -ne 0 -and $forbiddenPassiveMastery.Output -like "*carries forbidden stored mastery_progress state*") `
        "A Stat Passive with forbidden mastery state was accepted:`n$($forbiddenPassiveMastery.Output)"
    Replace-Once $character ($forbiddenMasteryLine + "`n") ""

    $restoredPassive = Invoke-Validation $tempRoot
    Assert-True ($restoredPassive.ExitCode -eq 0) "Restored Stat Passive state did not validate:`n$($restoredPassive.Output)"

    # --- Profile 1.35 Section 7.2 ascension eligibility --------------------
    #
    # A skill may not stand at a Rank its Section 7.3 ladder does not author.
    # Eligibility withholds the offer, so a Rank above the authored ceiling can
    # only mean the guard was bypassed -- and an accepted ascension has already
    # spent mastery that Rules Section 13.2 forbids reopening. The ceiling is
    # the only half of eligibility a validator can see, so it must bite.
    # The skills_known render line is the one the validator reads; the sheet's
    # other two Flash Step mentions are historical narration. The opening quote
    # of the YAML list entry is unique to the live row and is ASCII, which the
    # mastery glyphs are not.
    #
    # Live Rank read, not written down -- per this file's own rule above, and for
    # the reason the Flux Sight leg further up had to be repaired: a skill's Rank
    # advances with play, and a pinned one turns this leg into an assertion about
    # a snapshot. The mutation is one rung above whatever the skill currently
    # stands at, which is the minimal violation of the authored ceiling and the
    # same thing the old literal C-to-B pair expressed.
    # The violation must sit above the *authored ceiling*, not merely above the
    # skill's current Rank. Those were the same thing while the ladders stopped
    # at C and Flash Step stood at D; Section 7.3 now authors through B-Rank, so
    # bumping a C-Rank Flash Step one rung lands on a legal B and asserts
    # nothing. Target the first genuinely unauthored rung instead (F-013).
    #
    # The ceiling is READ FROM THE PROFILE'S OWN TABLES, not written down here.
    # It was the literal "C", then the literal "B", and each move needed a hand
    # edit in two places -- this file and `validate_repository.ps1` -- which is
    # two copies of one fact that can agree with each other while both disagree
    # with the profile. That is precisely the F-013 failure, and F-013 recorded
    # closing it as still-open work. Both sides now parse the same thing: the
    # highest Rank appearing as a column header across Section 7.3's ladder
    # tables. If the guard and the profile ever disagree, this leg fails.
    # Profile 1.81 authored S-Rank -- the top of the Rank order -- for every
    # skill in all three tables. "One rung above the authored ceiling" therefore
    # names no Rank that exists, and this leg could no longer build a violation
    # at all. It said so and failed rather than skipping, which is the only
    # acceptable behaviour, and this is the repair.
    #
    # The violation is now CONSTRUCTED rather than found: blank one skill's
    # top-Rank cell in the fixture profile, then hold that skill at the Rank the
    # cell used to author. That tests the same property the old form did -- a
    # skill standing above what its ladder authors is rejected -- and it cannot
    # go stale as the ladders grow, because the leg makes its own gap instead of
    # borrowing one the profile happened to leave open.
    #
    # It also tests the guard's per-skill reading, which is what replaced the
    # world-wide ceiling in `validate_repository.ps1` for exactly this reason.
    # Both sides still parse the profile rather than restating it; nothing here
    # is a second copy of a fact the profile owns.
    $ladder = @("E", "D", "C", "B", "A", "S")
    $flashRow = [regex]::Match((Get-Text $profile), '(?m)^\|[ \t]*\*\*Flash Step\*\*[ \t]*\*\(native.*\|[ \t]*$')
    $flashCells = $flashRow.Value.TrimEnd().TrimEnd('|').Split('|')
    $topCell = $flashCells[$flashCells.Count - 1].Trim()
    Assert-True ($topCell -and $topCell -notmatch 'no grant above native') `
        "Flash Step's top ladder cell authors nothing, so blanking it constructs no violation."

    # The Rank that cell authors: the last Rank column header of the table it is
    # in, read from the profile rather than written down.
    $capabilityHeader = [regex]::Match((Get-Text $profile), '(?m)^\|[ 	]*Skill[ 	]*\|[ 	]*Native effect[ 	]*\|[^
]*\|[ 	]*$')
    Assert-True $capabilityHeader.Success "The Section 7.3 capability-axis table header could not be read from the profile."
    $headerCells = $capabilityHeader.Value.TrimEnd().TrimEnd('|').Split('|')
    $topRank = $headerCells[$headerCells.Count - 1].Trim()
    Assert-True ($ladder -contains $topRank) "The capability table's last column is not a Rank column: '$topRank'."

    $liveFlashRank = [regex]::Match((Get-Text $character), '"Flash Step \[([EDCBAS])-Rank\]')
    Assert-True $liveFlashRank.Success "Flash Step renders no Rank in skills_known; fixture precondition drifted."
    $flashRank = $liveFlashRank.Groups[1].Value
    Assert-True ($flashRank -ne $topRank) `
        "Flash Step already stands at the ladder's top Rank, so blanking that cell would test a legal state."

    Replace-RegexOnce $profile '(?m)^(\|[ \t]*\*\*Flash Step\*\*[ \t]*\*\(native.*\|)[^|]*\|[ \t]*$' '$1 |'
    Replace-Once $character "`"Flash Step [$flashRank-Rank]" "`"Flash Step [$topRank-Rank]"
    $unauthoredRank = Invoke-Validation $tempRoot
    Assert-True ($unauthoredRank.ExitCode -ne 0 -and $unauthoredRank.Output -like "*exceeds its authored category ladder*") `
        "A skill standing above its authored ladder was accepted; Section 7.2 eligibility is unenforced:`n$($unauthoredRank.Output)"

    # A skill restored to its own Rank while the cell is still blank must pass:
    # the guard is a ceiling on what is HELD, not a completeness check on the
    # table. Without this the leg would pass equally if the guard rejected every
    # blank cell outright, which is a different rule.
    Replace-Once $character "`"Flash Step [$topRank-Rank]" "`"Flash Step [$flashRank-Rank]"
    $blankCellOnly = Invoke-Validation $tempRoot
    Assert-True ($blankCellOnly.ExitCode -eq 0) `
        "A blanked ladder cell was rejected on its own; the guard is not reading the Rank held:`n$($blankCellOnly.Output)"

    Replace-RegexOnce $profile '(?m)^(\|[ \t]*\*\*Flash Step\*\*[ \t]*\*\(native.*\|)[ \t]*\|[ \t]*$' ('$1 ' + $topCell + ' |')

    $restoredLadder = Invoke-Validation $tempRoot
    Assert-True ($restoredLadder.ExitCode -eq 0) "A skill restored to its authored Rank did not validate:`n$($restoredLadder.Output)"

    Write-Host "Progression audit contract tests PASSED" -ForegroundColor Green
} finally {
    # The guard stays, anchored on the system temp directory the fixture now
    # lives in: a recursive force-delete of a path built from a variable is worth
    # confining to the one place it is allowed to act.
    $resolvedTmp = [System.IO.Path]::GetFullPath($tempRoot)
    $resolvedSystemTmp = [System.IO.Path]::GetFullPath([System.IO.Path]::GetTempPath())
    if ($resolvedTmp.StartsWith($resolvedSystemTmp, [System.StringComparison]::OrdinalIgnoreCase) -and
        (Test-Path -LiteralPath $resolvedTmp)) {
        Remove-Item -LiteralPath $resolvedTmp -Recurse -Force
    }
}
