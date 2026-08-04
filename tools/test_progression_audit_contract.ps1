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

    # The new production checks intentionally block the current live campaign
    # until F-015 receives a corrective checkpoint. This suite needs a valid
    # control before it can mutate one relationship at a time, so normalize
    # only those already-diagnosed render/provenance defects in the isolated
    # copy. Once live canon is repaired these replacements simply do nothing.
    $fixtureCharacter = Get-Text $character
    $fixtureCharacter = $fixtureCharacter.Replace(
        '  game_date: "2026-08-15 ~16:30 -05:00"',
        '  game_date: "2026-08-15 16:45 -05:00"')
    $fixtureCharacter = $fixtureCharacter.Replace(
        '**DMG 128 standard before reduction** at effective Strength 66',
        '**DMG 129 standard before reduction** at effective Strength 67')
    $fixtureCharacter = [regex]::Replace(
        $fixtureCharacter,
        '`\(66 \+ 22\)[^0-9]+1\.45 = 127\.6`',
        '`(67 + 22) x 1.45 = 129.05`')
    $fixtureCharacter = $fixtureCharacter.Replace(
        '**DMG 112 standard before reduction** at effective Strength 66',
        '**DMG 113 standard before reduction** at effective Strength 67')
    $fixtureCharacter = [regex]::Replace(
        $fixtureCharacter,
        '`\(66 \+ 11\)[^0-9]+1\.45 = 111\.65`',
        '`(67 + 11) x 1.45 = 113.1`')
    $fixtureCharacter = $fixtureCharacter.Replace(
        '**DMG 100 standard before reduction** at effective Intelligence 61',
        '**DMG 99 standard before reduction** at effective Intelligence 61')
    Set-Text $character $fixtureCharacter

    $fixtureCurrent = Get-Text (Join-Path $tempRoot "campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md")
    $fixtureCurrent = $fixtureCurrent.Replace(
        '**Live canon is promoted through `EVT-000404`.**',
        '**Live canon is promoted through `EVT-000406`.**')
    Set-Text (Join-Path $tempRoot "campaigns/gatefall_pendragon_001/180_CURRENT_STATE.md") $fixtureCurrent

    $baseline = Invoke-Validation $tempRoot
    Assert-True ($baseline.ExitCode -eq 0) "Normalized Data Model 0.1.6 control repository did not validate:`n$($baseline.Output)"

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

    Replace-Once $character "      mana_recovery_mode: resting" "      mana_recovery_mode: light"
    $badRecoveryMode = Invoke-Validation $tempRoot
    Assert-True ($badRecoveryMode.ExitCode -ne 0 -and $badRecoveryMode.Output -like "*mana_recovery_mode must be active or resting*") `
        "A Health-only recovery mode was accepted for Mana:`n$($badRecoveryMode.Output)"
    Replace-Once $character "      mana_recovery_mode: light" "      mana_recovery_mode: resting"

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

    Replace-Once $character `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: ratified" `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: tracking"
    $threshold = Invoke-Validation $tempRoot
    # The count is the profile's declared evidence_threshold, so the message carries
    # the number rather than the word "three".
    Assert-True ($threshold.ExitCode -ne 0 -and $threshold.Output -like "*distinct evidence references but remains tracking*") `
        "A three-scene candidate left in tracking was not rejected:`n$($threshold.Output)"
    Replace-Once $character `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: tracking" `
        "        key: twin_fang`n        signature: two-equipped-quickknives.same-target.separate-strikes`n        status: ratified"

    Replace-Once $character `
        "        key: dimensional_weapon_control`n        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release`n        status: tracking`n        evidence:`n          - EVT-000069#private-summon-and-grip-drill`n          - EVT-000070#ashfield-pocket-swap-feint" `
        "        key: dimensional_weapon_control`n        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release`n        status: pending-ratification`n        evidence:`n          - EVT-000069#private-summon-and-grip-drill`n          - EVT-000070#ashfield-pocket-swap-feint`n          - EVT-000120#fixture-third-dimensional-scene"
    $authoredThreshold = Invoke-Validation $tempRoot
    Assert-True ($authoredThreshold.ExitCode -ne 0 -and $authoredThreshold.Output -like "*is declared pre-authored*requires automatic ratification*") `
        "A pre-authored three-scene candidate was allowed to remain pending:`n$($authoredThreshold.Output)"
    Replace-Once $character `
        "        key: dimensional_weapon_control`n        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release`n        status: pending-ratification`n        evidence:`n          - EVT-000069#private-summon-and-grip-drill`n          - EVT-000070#ashfield-pocket-swap-feint`n          - EVT-000120#fixture-third-dimensional-scene" `
        "        key: dimensional_weapon_control`n        signature: instant-withdrawal.mid-motion.weapon-line-change-or-release`n        status: tracking`n        evidence:`n          - EVT-000069#private-summon-and-grip-drill`n          - EVT-000070#ashfield-pocket-swap-feint"

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
schema_version: "0.1.6"
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
    $ladder = @("E", "D", "C", "B", "A", "S")
    $profileText = Get-Text "worlds/gatefall/206_WORLD_RULE_PROFILE.md"
    $authoredCeiling = $null
    $bestIndex = -1
    foreach ($header in [regex]::Matches($profileText, '(?m)^\|[ \t]*Skill[ \t]*\|.*\|[ \t]*$')) {
        foreach ($cell in $header.Value.Trim('|').Split('|')) {
            $rankCell = [regex]::Match($cell.Trim(), '^(?<rank>[EDCBAS])(?:[ \t]*\(native\))?$')
            if (-not $rankCell.Success) { continue }
            $index = [array]::IndexOf($ladder, $rankCell.Groups['rank'].Value)
            if ($index -gt $bestIndex) { $bestIndex = $index; $authoredCeiling = $rankCell.Groups['rank'].Value }
        }
    }
    Assert-True ($null -ne $authoredCeiling) "No Section 7.3 ladder table with Rank column headers could be read from the profile."
    $liveFlashRank = [regex]::Match((Get-Text $character), '"Flash Step \[([EDCBAS])-Rank\]')
    Assert-True $liveFlashRank.Success "Flash Step renders no Rank in skills_known; fixture precondition drifted."
    $flashRank = $liveFlashRank.Groups[1].Value
    $ceilingIndex = [array]::IndexOf($ladder, $authoredCeiling)
    Assert-True ($ceilingIndex -lt $ladder.Count - 1) `
        "The authored ladder reaches the top of the Rank order, so there is no unauthored Rank to test the ceiling with."
    $aboveRank = $ladder[$ceilingIndex + 1]
    Replace-Once $character "`"Flash Step [$flashRank-Rank]" "`"Flash Step [$aboveRank-Rank]"
    $unauthoredRank = Invoke-Validation $tempRoot
    Assert-True ($unauthoredRank.ExitCode -ne 0 -and $unauthoredRank.Output -like "*exceeds its authored category ladder*") `
        "A skill standing above its authored ladder was accepted; Section 7.2 eligibility is unenforced:`n$($unauthoredRank.Output)"
    Replace-Once $character "`"Flash Step [$aboveRank-Rank]" "`"Flash Step [$flashRank-Rank]"

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
