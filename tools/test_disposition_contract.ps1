[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
. (Join-Path $PSScriptRoot "lib/FixtureRepository.ps1")

# Why this test exists
#
# Decision 091 made Want, Fear, Secret and Voice REQUIRED canonical state on any
# Character a Runtime will play, and nothing read the requirement. That is the
# shape `docs/DEVELOPMENT_WORKFLOW.md` names as this repository's most-repeated
# defect and Decision 055 sites structurally: an obligation with no enforcement
# point holds only by assumption, and at rest it is indistinguishable from a
# mechanism that is simply quiet. F-028 recorded the same thing from the other
# side -- the loading machinery was correct and there was nothing to load.
#
# Decision 092 then made coverage ENGINE-GENERAL. There is nothing to opt into;
# a campaign declares only where its obligation begins. Three properties are
# now under test, and the third is new:
#
#   1. The gate FIRES. A covered Character with no disposition, or with a
#      disposition and no agenda, is rejected.
#   2. The gate is CORRECTLY NARROW. It is silent on a Character below the
#      declared baseline and on a declared referent -- a gate that opened red
#      against four campaigns' casts would be switched off, and backfilling a
#      cast is play's work under save discipline, not a validator's.
#   3. SILENCE FAILS TOWARD THE OBLIGATION. A campaign declaring no baseline is
#      fully covered, never uncovered. This is the property that separates an
#      engine-general default from an opt-in, and it is the one F-002 is a
#      standing warning about: a mechanism whose absence reads as "nothing was
#      due" is unreachable while every gate stays green.
#
# Cases run against isolated copies of the real repository and assert the REAL
# validator's verdict on its durable message text. A gate whose firing has never
# been demonstrated is indistinguishable from one that cannot fire.

function Invoke-Validator {
    param([string]$RepositoryRoot)

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $RepositoryRoot -CoreOnly 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

# The subject campaign. The baseline is resolved from the ledger rather than
# pinned: it is set immediately below a real active Character so that one entity
# falls inside coverage and its predecessors fall outside. A hardcoded
# identifier would rot into a false pass the first time the cast grows past it
# -- F-013's defect class, which this version found in five more places than
# F-013 recorded.
$campaign = "gatefall_pendragon_001"
$startupRelative = "campaigns/$campaign/090_CAMPAIGN_STARTUP.md"
$ledgerRelative = "campaigns/$campaign/130_NPCS_AND_FACTIONS.md"

$ledgerText = Get-Content -LiteralPath (Join-Path $root $ledgerRelative) -Raw
$characterIds = @(
    [regex]::Matches($ledgerText, '(?ms)^id: (?<id>ENT-\d{6})\r?$(?<body>.*?)^```') |
        Where-Object {
            $_.Groups['body'].Value -match '(?m)^type:[ \t]*Character[ \t]*$' -and
            $_.Groups['body'].Value -match '(?m)^status:[ \t]*active[ \t]*$'
        } |
        ForEach-Object { $_.Groups['id'].Value } |
        Sort-Object
)
if ($characterIds.Count -lt 2) {
    throw "Fewer than two active Characters in $ledgerRelative; the prospective-coverage cases have nothing to straddle."
}
$subject = $characterIds[-1]                       # inside coverage
$below = $characterIds[0]                          # outside coverage
$baseline = 'ENT-{0:D6}' -f ([int]$subject.Substring(4) - 1)

# Rewrite the campaign's declared baseline. An empty BaselineId REMOVES the
# declaration, which under Decision 092 must mean fully covered -- the property
# case D-11 exists to prove. The line is replaced rather than appended to,
# because two baselines in one file is not a state the engine defines.
function Set-CampaignBaseline {
    param([string]$FixtureRoot, [string]$BaselineId)

    $path = Join-Path $FixtureRoot $startupRelative
    $text = Get-Content -LiteralPath $path -Raw
    if ([string]::IsNullOrEmpty($BaselineId)) {
        $text = [regex]::Replace($text, '(?m)^disposition_baseline:[^\r\n]*\r?\n', '')
    } else {
        $text = [regex]::Replace($text, '(?m)^disposition_baseline:[^\r\n]*$', "disposition_baseline: $BaselineId")
    }
    [System.IO.File]::WriteAllText($path, $text)
}

# Insert lines into a named entity's canonical_state. Anchored on the entity's
# own id so the edit cannot silently land in a neighbouring block if the ledger
# is reordered.
function Add-CanonicalStateLines {
    param([string]$Text, [string]$EntityId, [string[]]$Lines)

    $pattern = '(?ms)(^id: ' + [regex]::Escape($EntityId) + '\r?$.*?^canonical_state:\r?$)'
    $inserted = [regex]::Replace($Text, $pattern, { param($m) $m.Groups[1].Value + "`n" + ($Lines -join "`n") }, 1)
    if ($inserted -eq $Text) {
        throw "Could not find a canonical_state block for $EntityId in the fixture ledger."
    }
    return $inserted
}

# Strip any disposition the subject's LIVE record already carries, so each case
# below asserts a CONSTRUCTED state rather than inheriting one. Without this the
# suite silently depends on the newest Character in the ledger happening to be
# backlog -- which stopped being true the moment Decision 092 coverage was
# authored for a freshly created NPC, and turned D-01, D-05, D-07 and D-10 into
# false failures against a ledger that had just become MORE correct. A fixture
# selects by property, never by live value.
function Remove-CanonicalStateDisposition {
    param([string]$Text, [string]$EntityId)

    $pattern = '(?ms)(^id: ' + [regex]::Escape($EntityId) + '?$.*?)(?=^```)'
    return [regex]::Replace($Text, $pattern, {
        param($m)
        $block = $m.Groups[1].Value
        foreach ($field in @('want','fear','secret','voice','agenda','beliefs','disposition_class')) {
            # A field line plus any folded continuation lines beneath it.
            $block = [regex]::Replace($block, '(?ms)^[ 	]{2}' + $field + ':.*?(?=^[ 	]{2}[A-Za-z_]+:|^[A-Za-z_]+:|\z)', '')
        }
        return $block
    }, 1)
}

$agenda = @(
    '  agenda: "Working her way back onto a licensed roster on her own terms — trading on the Ironline refusal as evidence of judgement rather than hiding it."'
)
$disposition = @(
    '  want: "To get back on the boards without being a body on someone else''s roster."',
    '  fear: "That the shoulder never comes right, and eleven months becomes the rest of it."',
    '  secret: "She has not told anyone how bad the shoulder still is. **Known to:** nobody."',
    '  voice: "Short sentences, no hedging. Names the practical objection and stops talking."'
)
$full = $disposition + $agenda

$failures = [System.Collections.Generic.List[string]]::new()
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-disposition-" + [guid]::NewGuid().ToString("N"))
$fixture = Join-Path $tempRoot "repo"

try {
    New-Item -ItemType Directory -Path $tempRoot | Out-Null
    New-FixtureRepository -SourceRoot $root -DestinationRoot $fixture | Out-Null

    $restorePoint = New-FixtureRestorePoint -Root $fixture -Paths @($startupRelative, $ledgerRelative)

    $baselineRun = Invoke-Validator $fixture
    if ($baselineRun.ExitCode -ne 0) {
        throw "The unmodified fixture does not validate, so no case below proves anything:`n$($baselineRun.Output)"
    }

    # Every case is (declared baseline) x (what the subject's record carries).
    # `Expect` is asserted on message text, never on the exit code alone.
    # `Baseline` of $null removes the declaration entirely.
    $cases = @(
        @{ Name = 'D-01 covered Character with no disposition'
           Baseline = $baseline; Target = $subject; Lines = @()
           ShouldFail = $true;  Expect = 'is missing want, fear, secret, voice' }

        @{ Name = 'D-02 covered Character with all four fields and an agenda'
           Baseline = $baseline; Target = $subject; Lines = $full
           ShouldFail = $false; Expect = $null }

        @{ Name = 'D-03 covered Character declaring itself a referent'
           Baseline = $baseline; Target = $subject; Lines = @('  disposition_class: referent')
           ShouldFail = $false; Expect = $null }

        @{ Name = 'D-04 disposition_class outside the vocabulary'
           Baseline = $baseline; Target = $subject; Lines = @('  disposition_class: bystander')
           ShouldFail = $true;  Expect = 'it is one of played or referent' }

        @{ Name = 'D-05 partial disposition names only what is missing'
           Baseline = $baseline; Target = $subject; Lines = @($disposition[0], $disposition[3])
           ShouldFail = $true;  Expect = 'is missing fear, secret' }

        @{ Name = 'D-06 an empty required field is not a present one'
           Baseline = $baseline; Target = $subject
           Lines = @($disposition[0], $disposition[1], $disposition[3], '  secret: ""') + $agenda
           ShouldFail = $true;  Expect = 'is missing secret' }

        # Decision 092 point 4. The agenda leg is what makes this construct
        # falsifiable at all: of commitments, supply, needs and agendas, it is
        # the only one whose absence a gate can see, because its creation is
        # bound to something else that is checkable.
        @{ Name = 'D-07 a disposition with no agenda is a want with no pursuit'
           Baseline = $baseline; Target = $subject; Lines = $disposition
           ShouldFail = $true;  Expect = 'carries a disposition and no agenda' }

        @{ Name = 'D-08 an empty agenda is not an agenda'
           Baseline = $baseline; Target = $subject; Lines = $disposition + @('  agenda: ""')
           ShouldFail = $true;  Expect = 'carries a disposition and no agenda' }

        # The narrowness half. If either of these failed, the gate would have
        # turned a documented backlog into a build break.
        @{ Name = 'D-09 the cast below the baseline carries no obligation'
           Baseline = $baseline; Target = $subject; Lines = $full
           ShouldFail = $false; Expect = $null; MustNotMention = $below }

        @{ Name = 'D-10 an explicitly played Character still owes the fields'
           Baseline = $baseline; Target = $subject; Lines = @('  disposition_class: played')
           ShouldFail = $true;  Expect = 'is missing want, fear, secret, voice' }

        # Decision 092 point 2, and the property that distinguishes an
        # engine-general obligation from an opt-in. Removing the declaration
        # must WIDEN coverage to the whole cast, never disable it.
        @{ Name = 'D-11 no declared baseline means fully covered, not uncovered'
           Baseline = $null; Target = $subject; Lines = $full
           ShouldFail = $true;  Expect = 'engine default' }

        @{ Name = 'D-12 a baseline that is not an entity identifier'
           Baseline = 'the current cast'; Target = $subject; Lines = $full
           ShouldFail = $true;  Expect = 'must be an ENT- identifier' }
    )

    foreach ($case in $cases) {
        Restore-FixtureFiles -Root $fixture -RestorePoint $restorePoint
        try {
            Set-CampaignBaseline -FixtureRoot $fixture -BaselineId $case.Baseline
            $ledgerPath = Join-Path $fixture $ledgerRelative
            $text = Get-Content -LiteralPath $ledgerPath -Raw
            $text = Remove-CanonicalStateDisposition $text $case.Target
            if ($case.Lines.Count -gt 0) {
                $text = Add-CanonicalStateLines $text $case.Target $case.Lines
            }
            [System.IO.File]::WriteAllText($ledgerPath, $text)
            $result = Invoke-Validator $fixture
        } finally {
            Restore-FixtureFiles -Root $fixture -RestorePoint $restorePoint
        }

        if ($case.ShouldFail) {
            if ($result.ExitCode -eq 0) {
                $failures.Add("$($case.Name): expected the validator to reject this state, but it passed.") | Out-Null
            } elseif ($result.Output -notmatch [regex]::Escape($case.Expect)) {
                $failures.Add("$($case.Name): rejected, but not for the authored reason. Expected '$($case.Expect)'. Got:`n$($result.Output)") | Out-Null
            }
        } elseif ($result.ExitCode -ne 0) {
            $failures.Add("$($case.Name): expected this state to be accepted, but the validator rejected it:`n$($result.Output)") | Out-Null
        }

        if ($case.ContainsKey('MustNotMention') -and $result.Output -match [regex]::Escape($case.MustNotMention)) {
            $failures.Add("$($case.Name): the validator named $($case.MustNotMention), which sits below the declared baseline and owes nothing:`n$($result.Output)") | Out-Null
        }
    }

    $drifted = Assert-FixtureRestored -Root $fixture -RestorePoint $restorePoint
    if ($drifted.Count -gt 0) {
        $failures.Add("Fixture leak: $($drifted -join ', ') was not restored to its baseline bytes, so every case after the first ran against unknown state.") | Out-Null
    }
    $residual = Invoke-Validator $fixture
    if ($residual.ExitCode -ne 0) {
        $failures.Add("Fixture leak: the shared fixture no longer validates after the cases ran:`n$($residual.Output)") | Out-Null
    }
} finally {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
}

if ($failures.Count -gt 0) {
    Write-Host "Disposition contract FAILED ($($failures.Count) case(s))" -ForegroundColor Red
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

Write-Host "Disposition contract PASSED (12 cases; baseline straddled at $baseline)"

# Coverage is engine-general, so what is worth reporting is no longer whether
# any world opted in -- it is how much of the live cast sits above its own
# campaign's baseline and is therefore actually bound.
$bound = 0
$backlog = 0
foreach ($campaignDirectory in (Get-ChildItem -LiteralPath (Join-Path $root "campaigns") -Directory | Sort-Object Name)) {
    $startup = Join-Path $campaignDirectory.FullName "090_CAMPAIGN_STARTUP.md"
    $baselineNumber = 0
    if ((Test-Path -LiteralPath $startup -PathType Leaf) -and
        (Get-Content -LiteralPath $startup -Raw) -match '(?m)^disposition_baseline:[ \t]*"?(ENT-\d{6})"?[ \t]*$') {
        $baselineNumber = [int]$Matches[1].Substring(4)
    }
    $ledger = Join-Path $campaignDirectory.FullName "130_NPCS_AND_FACTIONS.md"
    if (-not (Test-Path -LiteralPath $ledger -PathType Leaf)) { continue }
    foreach ($match in [regex]::Matches((Get-Content -LiteralPath $ledger -Raw), '(?ms)^id: (?<id>ENT-\d{6})\r?$(?<body>.*?)^```')) {
        if ($match.Groups['body'].Value -notmatch '(?m)^type:[ \t]*Character[ \t]*$') { continue }
        if ([int]$match.Groups['id'].Value.Substring(4) -gt $baselineNumber) { $bound++ } else { $backlog++ }
    }
}
Write-Host "  Coverage is engine-general (Decision 092). Characters bound today: $bound; below a declared baseline: $backlog."
if ($bound -eq 0) {
    Write-Host "  Note: every recorded Character sits below its campaign's baseline, so the gate binds only what play writes next." -ForegroundColor Yellow
    Write-Host "  That is the intended adoption path: the Resident Core authors a disposition at first play rather than deferring it."
}
exit 0
