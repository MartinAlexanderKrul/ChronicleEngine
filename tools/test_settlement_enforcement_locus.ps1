[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Why this test exists
#
# `docs/450_GAMEPLAY_REDEFINITION/450_GENERATIVE_LAYER_ANALYSIS.md` costs two
# variants of a settlement change and says outright that its recommendation
# rests on one leg it had not proved: that the gates enforcing Turn-State
# Settlement fire at the promotion barrier and at Event granularity, not at the
# resolved exchange. It asked for this test before the ruling rather than after,
# on the grounds that a ruling taken on a reading is a ruling taken on nothing.
#
# This is a MEASUREMENT, not an invariant about how the engine ought to behave.
# It pins where enforcement actually sits today, so the ruling is taken on
# evidence and so a later change that moves the locus -- in either direction --
# is reported rather than discovered. It does not claim per-exchange settlement
# is wrong, or that the cadence sentence should move. The design question stays
# the owner's; this only answers what is checkable.
#
# What was measured on 2026-08-20:
#
#   Mutation A   the cadence sentence alone, "every resolved exchange"
#                rewritten to "each Event boundary".
#                Ten card-reading suites run. ZERO changed verdict.
#
#   Mutation B   the entire `# Turn-State Settlement` section deleted,
#                all 887 tokens of it.
#                FOUR suites go red, every one a literal string-presence
#                assertion on the card. The repository validator stays GREEN.
#
# The finding the two produce together: deleting the engine's whole per-exchange
# settlement procedure from the only layer that runs every turn changes no
# behavioural verdict anywhere in the repository. The obligation is carried by
# prose, and the four suites that notice its absence are checking that the prose
# is still present.
#
# `system/RUNTIME_CONTEXT_BUDGETS.yaml` recorded the same shape from the other
# side -- "a resident sentence that looks like prose is usually a gate's
# assertion wearing prose" -- after two displacement attempts were rejected by
# `test_npc_channel_contract.ps1`. This enumerates that coupling for settlement
# instead of discovering it one red suite at a time.
#
# A note on scope, because the first draft of this file got it wrong. Only a
# suite that READS the card can change verdict when the card changes, so
# `test_checkpoint_contract` and `test_participation_audit_contract` are not in
# the sweep: neither opens the file. Running them under mutation cost 64 seconds
# and proved nothing their source does not already prove. Contract 1 derives the
# reader set from the tree rather than trusting that judgement, so a suite that
# starts reading the card joins the sweep by being found, not by being
# remembered.

$root = Split-Path -Parent $PSScriptRoot
$cardRelative = "docs/AI_GAMEPLAY_RESIDENT_CORE.md"
$utf8 = [System.Text.UTF8Encoding]::new($false)
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")

# Everything below runs against a FIXTURE COPY of the repository, and the reason
# is `test_all.ps1`. It discovers `test_*.ps1` automatically and runs up to
# twelve of them concurrently, so a suite that mutated the real resident card --
# as the first working version of this file did -- would hand every other suite
# reading that card a torn view for the twenty seconds each round takes. The
# failures would land on innocent suites, vary run to run, and point nowhere
# near here.
#
# Copying also removes the interrupt hazard. A `finally` restores the card when
# a child throws; it does NOT run when the process is killed, and an earlier
# draft of this file left the card mutated in the working tree after a timeout.
# A fixture cannot leave the repository in that state at all.
#
# Suites resolve their own root as the parent of their $PSScriptRoot, so running
# a copy of the suite from the fixture's tools/ makes it read the fixture's card
# with no cooperation needed from the suite itself.
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-settlement-locus-" + [guid]::NewGuid().ToString("N"))

$problems = New-Object System.Collections.Generic.List[string]

# `test_name_collision_check` reads the card and is deliberately held out of the
# sweep: it builds an 84 MB fixture and costs 19 seconds a run, against an
# assertion living in *Unnamed Is Not Absent* that neither mutation can reach.
# Verified green under Mutation B on 2026-08-20 and excluded on that evidence
# rather than on the argument -- the argument has a hole worth naming, since an
# `Assert-NotContains` could go red on a reworded cadence while surviving the
# deletion. If that suite ever gains a settlement assertion, drop it from here
# rather than reasoning about it again.
$heldOut = @('test_name_collision_check')

# Measured 2026-08-20. These are the sets this test pins.
$expectedReaders = @(
    'test_commitment_contract'
    'test_context_preservation_contract'
    'test_gatefall_quest_contract'
    'test_gatefall_recovery_contract'
    'test_name_collision_check'
    'test_npc_channel_contract'
    'test_opportunity_supply_contract'
    'test_player_agency_contract'
    'test_reikon_runtime_contract'
    'test_world_authoring_default'
    'validate_repository'
)
$expectedRedCadence = @()
$expectedRedSection = @(
    'test_commitment_contract'
    'test_gatefall_recovery_contract'
    'test_opportunity_supply_contract'
    'test_reikon_runtime_contract'
)

function Invoke-Suite {
    param([string]$Name, [string]$FromTools)
    # Child suites write their failure to stderr. Under $ErrorActionPreference =
    # 'Stop' that surfaces as a terminating NativeCommandError and aborts the
    # sweep at the FIRST red suite -- precisely the set this test enumerates, so
    # it would report one member and stop. The repository's own Invoke-Validator
    # helpers relax the preference for the same reason.
    $previous = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $FromTools "$Name.ps1") *> $null
    $code = $LASTEXITCODE
    $ErrorActionPreference = $previous
    return $code
}

function Get-RedSet {
    param([string[]]$Suites, [string]$FromTools)
    $red = New-Object System.Collections.Generic.List[string]
    foreach ($suite in $Suites) {
        if ((Invoke-Suite -Name $suite -FromTools $FromTools) -ne 0) { $red.Add($suite) | Out-Null }
    }
    # The empty case needs the comma operator and an explicit [string[]] cast,
    # and both halves matter. `return @()` emits nothing, the call site binds
    # $null to a [string[]] parameter, and PowerShell hands the function a
    # one-element array holding $null -- which compares as a red suite named ''.
    # Contract 2's expected set is empty, so that bug failed the one contract
    # this file exists for, every run, for a reason with nothing to do with the
    # engine. An all-green sweep is this test's headline result; it has to be
    # representable.
    return , ([string[]]@($red.ToArray() | Sort-Object))
}

function Compare-Set {
    param([string[]]$Observed, [string[]]$Expected, [string]$Label, [string]$ExtraHint, [string]$MissingHint)
    foreach ($name in @($Observed | Where-Object { $Expected -notcontains $_ })) {
        $problems.Add("$Label`: '$name' went red and the recorded set does not contain it. $ExtraHint") | Out-Null
    }
    foreach ($name in @($Expected | Where-Object { $Observed -notcontains $_ })) {
        $problems.Add("$Label`: '$name' stayed green and the recorded set expects it red. $MissingHint") | Out-Null
    }
}

# --- Contract 0: the behavioural instrument is live --------------------------
#
# Without this, every green below is worthless. Contracts 2 and 3 argue from
# behavioural gates NOT changing verdict, and a gate that cannot fail does not
# change verdict either.
#
# The instrument is `test_checkpoint_contract`'s stale-counter check: a child
# checkpoint whose XP advanced while its skill counter stayed frozen at the
# parent's value -- the exact stale-settlement class this question is about,
# proved catchable by that suite's own regression fixture under
# `tools/tests/fixtures/nonconforming_checkpoint/`.
#
# This CITES that suite rather than re-running its fixture. An earlier draft
# dot-sourced it to call Test-CheckpointContract directly, and the result was a
# contract that could not report: the dot-sourced script calls `exit` on any
# failure, so every way of breaking Contract 0's subject terminated this file
# before its own message was reached. A check whose failure path is unreachable
# is the thing this repository keeps writing gates to avoid.
$checkpointSuite = Join-Path $PSScriptRoot 'test_checkpoint_contract.ps1'
if ((Invoke-Suite -Name 'test_checkpoint_contract' -FromTools $PSScriptRoot) -ne 0) {
    $problems.Add("Contract 0: test_checkpoint_contract is red, so the behavioural instrument is not in a state to prove anything. Fix it first; every 'stayed green' result below is vacuous until then.") | Out-Null
} elseif (-not (Select-String -LiteralPath $checkpointSuite -Pattern 'skill-use counters stayed at' -Quiet)) {
    $problems.Add("Contract 0: test_checkpoint_contract no longer names the stale-counter regression, so nothing proves it still catches a counter frozen across a checkpoint pair. Every 'stayed green' result below is vacuous until this is repaired.") | Out-Null
}

# --- Contract 1: the set of suites that can notice a card change -------------
#
# Derived from the tree, not trusted from the list above. A card mutation can
# only change the verdict of a suite that opens the card, so this set bounds the
# whole question -- and it is the structural claim the analysis rests on: card
# text is held in place by string presence and by nothing else.
$readers = @(
    Get-ChildItem -LiteralPath $PSScriptRoot -Filter '*.ps1' -File |
        Where-Object { $_.BaseName -ne 'test_settlement_enforcement_locus' } |
        Where-Object { Select-String -LiteralPath $_.FullName -Pattern ([regex]::Escape($cardRelative)) -Quiet } |
        ForEach-Object { $_.BaseName }
) | Sort-Object

foreach ($name in @($readers | Where-Object { $expectedReaders -notcontains $_ })) {
    $problems.Add("Contract 1: '$name' now reads the resident card and is not in the recorded reader set. Add it, then re-measure both mutation sets -- it may be a new coupling the settlement ruling has to pay for.") | Out-Null
}
foreach ($name in @($expectedReaders | Where-Object { $readers -notcontains $_ })) {
    $problems.Add("Contract 1: '$name' no longer reads the resident card. Remove it from the recorded reader set and say in the changelog what stopped holding that text in place.") | Out-Null
}

$sweep = @($readers | Where-Object { $heldOut -notcontains $_ })
if ($sweep.Count -eq 0) {
    $problems.Add("Contract 1: the sweep is empty, so Contracts 2 and 3 would pass vacuously.") | Out-Null
}

# --- Contracts 2 and 3: the two mutations ------------------------------------
try {
    # The fixture carries the validators' readable inputs plus the three
    # directories a card-reading suite needs: docs/ for the card, engine/ for
    # the Decisions, Rules, Data Model and Runtime those suites cross-check it
    # against, and tools/ so each suite resolves the fixture as its own root.
    #
    # tools/ is copied outside New-FixtureRepository because that helper prunes
    # to the extensions the validators parse -- .md, .yaml, .yml, .json, .txt --
    # and .ps1 is not among them, so a helper-copied tools/ arrives empty.
    New-FixtureRepository -SourceRoot $root -DestinationRoot $tempRoot `
        -Directories @("campaigns", "system", "worlds", "docs", "engine") -IncludeSaves | Out-Null
    Copy-Item -LiteralPath (Join-Path $root "tools") -Destination $tempRoot -Recurse -Force
    foreach ($rootFile in @("README.md", "AGENTS.md", ".gitattributes")) {
        $source = Join-Path $root $rootFile
        if (Test-Path -LiteralPath $source -PathType Leaf) {
            Copy-Item -LiteralPath $source -Destination (Join-Path $tempRoot $rootFile) -Force
        }
    }

    # `test_npc_channel_contract` checks that the two skill trees are mirrored,
    # so both have to be present or it is red for a reason no mutation caused --
    # which the control round below caught the first time this fixture was built.
    #
    # Copied leaf-by-leaf rather than as `.claude`, because `.claude/worktrees/`
    # is where EnterWorktree puts working copies of this repository. A recursive
    # copy of the parent would pull an entire checkout into the fixture, and when
    # the suite runs inside such a worktree, itself into itself.
    foreach ($skillTree in @(".agents/skills", ".claude/skills")) {
        $source = Join-Path $root $skillTree
        if (Test-Path -LiteralPath $source -PathType Container) {
            $target = Join-Path $tempRoot $skillTree
            New-Item -ItemType Directory -Path (Split-Path -Parent $target) -Force | Out-Null
            Copy-Item -LiteralPath $source -Destination $target -Recurse -Force
        }
    }

    $fixtureTools = Join-Path $tempRoot "tools"
    $card = Join-Path $tempRoot $cardRelative
    if (-not (Test-Path -LiteralPath $card -PathType Leaf)) {
        throw "The fixture has no resident card at $cardRelative; the copy did not produce a usable tree."
    }

    # The control round. Every mutation result below is a DIFFERENCE from this,
    # so a suite that is red in the untouched fixture for its own reasons -- a
    # file the copy did not carry, a path it resolves differently -- would be
    # silently counted as a mutation casualty. This is also what keeps the
    # fixture honest as the tree changes around it.
    $controlRed = Get-RedSet -Suites $sweep -FromTools $fixtureTools
    foreach ($name in $controlRed) {
        $problems.Add("Control round: '$name' is red in the UNMUTATED fixture, so nothing can be attributed to a mutation. The fixture is missing something that suite reads; add it to the copy above.") | Out-Null
    }
    if ($controlRed.Count -gt 0) { $sweep = @() }

    $original = [System.IO.File]::ReadAllBytes($card)
    $text = [System.Text.Encoding]::UTF8.GetString($original) -replace "`r`n", "`n"

    # Contract 2 -- the cadence, and nothing else.
    #
    # Rewriting WHEN settlement happens while leaving every step, every field and
    # every obligation in place. If any gate enforced the exchange as the
    # settlement boundary, this is the mutation it would object to.
    $cadence = 'After every resolved exchange and before yielding, settle every changed field.'
    if ($text -notlike "*$cadence*") {
        $problems.Add("Contract 2 PRECONDITION: the cadence sentence is not in the card, so the mutation could not be applied and its result would be meaningless. If it was deliberately reworded, update this test with the new wording and re-measure both sets.") | Out-Null
    } elseif ($sweep.Count -gt 0) {
        [System.IO.File]::WriteAllText($card, $text.Replace($cadence, 'At each Event boundary and before promotion, settle every changed field.'), $utf8)
        Compare-Set -Observed (Get-RedSet -Suites $sweep -FromTools $fixtureTools) -Expected $expectedRedCadence `
            -Label 'Contract 2 (cadence rewritten)' `
            -ExtraHint "Something now enforces the exchange as the settlement boundary. That is the leg the settlement ruling turns on -- re-read it before ruling." `
            -MissingHint "Unreachable: the recorded cadence set is empty."
        [System.IO.File]::WriteAllBytes($card, $original)
    }

    # Contract 3 -- the whole section, all 887 tokens of it.
    #
    # Anchored on both ends and required to match exactly once, so a card
    # reorganisation fails the precondition rather than silently deleting the
    # wrong span.
    $pattern = '(?ms)^# Turn-State Settlement\r?\n.*?(?=^# Characterization Settlement)'
    if ([regex]::Matches($text, $pattern).Count -ne 1) {
        $problems.Add("Contract 3 PRECONDITION: '# Turn-State Settlement' through '# Characterization Settlement' did not match exactly once. The card was reorganised; re-anchor this mutation and re-measure.") | Out-Null
    } elseif ($sweep.Count -gt 0) {
        [System.IO.File]::WriteAllText($card, [regex]::Replace($text, $pattern, ''), $utf8)
        Compare-Set -Observed (Get-RedSet -Suites $sweep -FromTools $fixtureTools) -Expected $expectedRedSection `
            -Label 'Contract 3 (section deleted)' `
            -ExtraHint "A suite gained an assertion on this section. Variant A's displacement cost went up by one; record it." `
            -MissingHint "Its assertion on this section is gone or no longer reachable, so a gate that used to hold this text in place no longer does."
    }
}
finally {
    # The whole tree goes, so there is nothing to restore and nothing a killed
    # process can leave behind in the repository. A leaked fixture costs disk in
    # the system temp directory and nothing else -- deliberately not <repo>/tmp/,
    # which is how 669 files of a sibling suite's fixture reached this
    # repository's history.
    if (Test-Path -LiteralPath $tempRoot) {
        Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}

if ($problems.Count -gt 0) {
    Write-Host "Settlement enforcement locus FAILED ($($problems.Count) finding(s))"
    foreach ($problem in $problems) { Write-Host "  - $problem" }
    exit 1
}

Write-Host "Settlement enforcement locus PASSED"
Write-Host "  Contract 0  the stale-counter gate still fails on a frozen counter"
Write-Host "  Contract 1  $($readers.Count) suites read the resident card; $($sweep.Count) swept"
Write-Host "  Contract 2  cadence moved to an Event boundary: 0 of $($sweep.Count) changed verdict"
Write-Host "  Contract 3  section deleted: $($expectedRedSection.Count) red, all string-presence; the validator stayed green"
Write-Host "  Locus: the promotion barrier and the Event. Nothing enforces the exchange."
