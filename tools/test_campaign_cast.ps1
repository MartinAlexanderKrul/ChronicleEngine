[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# The cast roster is the readiness-weight answer to "who exists". Its whole value
# is that it is complete and current: a roster missing the NPC who entered the
# campaign last is worse than no roster, because readiness would carry a
# confident list that silently omits exactly who a live session is about to meet.
# These tests pin completeness, currency detection, and the bound that keeps the
# roster an index rather than a second copy of the ledger.

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$generator = Join-Path $PSScriptRoot "generate_campaign_cast.ps1"
$temporaryParent = [System.IO.Path]::GetTempPath()
$temporaryRoot = Join-Path $temporaryParent ("chronicle-campaign-cast-" + [guid]::NewGuid().ToString("N"))

$castRelative = "campaigns/gatefall_pendragon_001/135_CAST_IN_PLAY.md"
$ledgerRelative = "campaigns/gatefall_pendragon_001/130_NPCS_AND_FACTIONS.md"

function Invoke-Generator {
    param([switch]$Check)

    $arguments = @("-NoProfile", "-ExecutionPolicy", "Bypass", "-File", $generator,
        "-RepositoryRoot", $temporaryRoot)
    if ($Check) {
        $arguments += "-Check"
    }
    $previousErrorAction = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $output = & powershell @arguments 2>&1 | ForEach-Object { $_.ToString() }
    $exitCode = $LASTEXITCODE
    $ErrorActionPreference = $previousErrorAction
    return [pscustomobject]@{
        ExitCode = $exitCode
        Output = ($output -join "`n")
    }
}

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) {
        throw $Message
    }
}

function Get-Text {
    param([string]$RelativePath)
    return [System.IO.File]::ReadAllText((Join-Path $temporaryRoot $RelativePath))
}

function Set-Text {
    param([string]$RelativePath, [string]$Content)
    [System.IO.File]::WriteAllText(
        (Join-Path $temporaryRoot $RelativePath),
        $Content,
        (New-Object System.Text.UTF8Encoding($false))
    )
}

try {
    New-Item -ItemType Directory -Path $temporaryRoot | Out-Null
    foreach ($directory in @("campaigns", "system", "worlds")) {
        Copy-Item -LiteralPath (Join-Path $repositoryRoot $directory) -Destination $temporaryRoot -Recurse
    }

    $baseline = Invoke-Generator -Check
    Assert-True ($baseline.ExitCode -eq 0) "The checked-in cast rosters are not synchronized:`n$($baseline.Output)"

    # Completeness: every ENT- defined in the ledger must have a row. This is the
    # assertion that fails if the generator ever starts filtering the cast.
    $ledger = Get-Text $ledgerRelative
    $cast = Get-Text $castRelative
    $declared = [regex]::Matches($ledger, '(?m)^id:[ \t]*(ENT-\d{6})[ \t]*$') |
        ForEach-Object { $_.Groups[1].Value } |
        Sort-Object -Unique
    Assert-True ($declared.Count -gt 0) "Test precondition failed: the Gatefall NPC ledger declares no entities."
    foreach ($identifier in $declared) {
        Assert-True ($cast -match [regex]::Escape("``$identifier``")) "Cast roster omits $identifier, which the NPC ledger defines."
    }

    # The protagonist's own relationships must be visible, or the roster cannot
    # tell a Runtime which entities carry a REL- worth loading with the record.
    Assert-True ($cast -match 'REL-000066') "Cast roster omits the protagonist relationship on Owen Callahan."
    Assert-True ($cast -notmatch 'REL-000062') "Cast roster lists an institutional relationship that names no campaign entity row."

    # A bound, not a preference: the roster is an index. If it ever grows past a
    # few hundred bytes per entity it has stopped indexing and started copying,
    # and it is sitting on a readiness surface that is already over its warning.
    #
    # Scoped to the `# Cast` section, which is the part the readiness surface
    # actually loads -- `campaign_readiness_headings` in the campaign startup
    # names that heading and nothing else in the file. The bound previously
    # measured the whole file, which was the same thing until schema 1.1 added a
    # `# Disposition` section that readiness does not carry. Left file-wide it
    # would have been charging the readiness budget for bytes readiness never
    # sees, and it was 20 bytes per entity from failing on that basis.
    $entityCount = $declared.Count
    $castSection = [regex]::Match($cast, '(?ms)^# Cast$.*?(?=^# )')
    Assert-True $castSection.Success "Test precondition failed: the roster has no '# Cast' section to bound."
    $castBytes = [System.Text.Encoding]::UTF8.GetByteCount($castSection.Value)
    Assert-True (($castBytes / $entityCount) -lt 250) "Cast index costs $([int]($castBytes / $entityCount)) bytes per entity; it is copying the ledger rather than indexing it."

    # --- Schema 1.1: the disposition surface -------------------------------
    #
    # F-028: Decision 091 made Want/Fear/Secret/Voice canonical state and the
    # loading machinery was already correct -- what blocked it reaching play was
    # cost. Backfilling one NPC took his record to 165 bytes under its ratchet,
    # and the entity dispatch fetches ~29,000 tokens to let him speak once. This
    # section is the affordable read: the lead of each field, for the whole cast,
    # in one file that readiness does not even have to carry.
    #
    # So the assertion is that it EXISTS and is POPULATED. `-Check` cannot see
    # this: it compares the file against the generator's own output, so a render
    # that stopped emitting disposition entirely would agree with itself and pass.
    $dispositionSection = [regex]::Match($cast, '(?ms)^# Disposition$.*?(?=^# )')
    Assert-True $dispositionSection.Success "The roster has no '# Disposition' section; the character model has no affordable read (F-028, Decision 091)."
    Assert-True ($dispositionSection.Value -match '(?m)^\| Entity \| Name \| Want \| Fear \| Secret \| Voice \|') "The disposition table does not carry Decision 091's four fields."

    # A known-covered Character renders authored leads, and a known-uncovered one
    # renders blanks. Both directions matter: a table that rendered every cell as
    # authored, or every cell as blank, would satisfy a presence check and tell a
    # Runtime nothing. Selected by property from the file rather than by name, so
    # ordinary backfill does not fail this.
    #
    # A populated cell is detected as "contains a letter", never as "is not an
    # em-dash". This file is BOM-less UTF-8 and Windows PowerShell 5.1 decodes a
    # .ps1 without a BOM as ANSI, so a literal em-dash in the pattern is mojibake
    # that matches nothing -- and the first draft of this leg used one, which made
    # the authored-row check count every row as authored and pass vacuously. The
    # repository's own gate convention says keep patterns ASCII; this is why.
    $dispositionRows = [regex]::Matches($dispositionSection.Value, '(?m)^\| `(ENT-\d{6})` \|(?<cells>.*)\|[ \t]*$')
    $populated = {
        param($match)
        # Drop the Name column; what remains is Want, Fear, Secret, Voice.
        $cells = @($match.Groups['cells'].Value -split '\|')
        @($cells[1..($cells.Count - 1)] | Where-Object { $_ -match '[A-Za-z]' }).Count
    }
    # A record canon does not establish is DECLARED, not left blank. The ledger's
    # own convention for it is an explicit `**Unauthored.**` / `**Unestablished.**`
    # value -- which is strictly better than an empty field, because it says the
    # gap is canon's rather than an author's oversight and tells a Runtime to
    # author at the turn (Decision 092).
    #
    # This leg first asserted that some row was EMPTY, and went red the moment the
    # cast was backfilled that way: every cell was populated, and a check meant to
    # prove unauthored records stay visible failed because they had been made
    # visible in the better of the two forms. The property is "an unestablished
    # record is distinguishable from an established one", and the em-dash was only
    # ever one way of carrying it.
    $declaredUnestablished = '^\s*(\*\*)?(Unauthored|Unestablished|Not established|Barely established)'
    $authoredRows = @($dispositionRows | Where-Object {
        (& $populated $_) -eq 4 -and $_.Groups['cells'].Value -notmatch $declaredUnestablished
    })
    $blankRows = @($dispositionRows | Where-Object {
        $cells = @($_.Groups['cells'].Value -split '\|')
        $fields = @($cells[1..($cells.Count - 1)])
        @($fields | Where-Object { $_ -notmatch '[A-Za-z]' -or $_ -match $declaredUnestablished }).Count -eq $fields.Count
    })
    Assert-True ($authoredRows.Count -gt 0) "No Character in the disposition table carries all four fields; the extractor is reading the wrong shape."
    Assert-True ($blankRows.Count -gt 0) "No Character in the disposition table is blank or declared unestablished, so a record canon does not establish is indistinguishable from one it does. Either the cast is genuinely fully authored -- in which case this leg has outlived its subject and should be retired deliberately -- or a walk-on has been given invented interiority."

    # The disposition surface gets its own bound, and it is measured PER CELL
    # rather than per Character.
    #
    # It was per Character first, at 200 bytes, and that was the wrong quantity:
    # it moves with how much of the cast is authored, not with what the bound is
    # protecting against. A cast that is two-thirds blank costs almost nothing
    # per Character and one that is fully authored costs three times as much,
    # with identical cells. Backfilling the cast took it from 158 to 213 and
    # failed a check that had nothing to say about the change.
    #
    # What the bound is actually for is that a cell carries a LEAD and not the
    # whole field, and that is a property of the cell. The generator caps a lead
    # at DISPOSITION_LIMIT (96) plus an ellipsis, so a cell materially over that
    # means the extractor stopped extracting -- which is precisely the mutation
    # this suite verifies against, and which produced ~600-byte cells.
    $cellLengths = @()
    foreach ($row in $dispositionRows) {
        $cells = @($row.Groups['cells'].Value -split '\|')
        foreach ($cell in @($cells[1..($cells.Count - 1)])) {
            $cellLengths += [System.Text.Encoding]::UTF8.GetByteCount($cell.Trim())
        }
    }
    Assert-True ($cellLengths.Count -gt 0) "Test precondition failed: no disposition cells were parsed."
    $longest = ($cellLengths | Measure-Object -Maximum).Maximum
    $mean = [int](($cellLengths | Measure-Object -Average).Average)
    Assert-True ($longest -le 140) "A disposition cell runs to $longest bytes; the generator caps a lead at 96 plus an ellipsis, so the extractor is carrying the field rather than its lead."
    Assert-True ($mean -le 90) "Disposition cells average $mean bytes; individually short enough but collectively long enough that this has stopped being an index."

    # Currency: a new entity in the ledger must make the checked-in roster stale.
    $newEntity = @"

### ENT-999999 — Test Fixture Bystander

``````yaml
id: ENT-999999
canonical_record: REC-000077
schema_version: "0.1.7"
status: active
type: Character
subtype: fixture
aliases:
  - name: "Test Fixture Bystander"
    quality: current
canonical_state:
  location: "a fixture location"
``````
"@
    Set-Text -RelativePath $ledgerRelative -Content ($ledger + $newEntity)
    $stale = Invoke-Generator -Check
    Assert-True ($stale.ExitCode -ne 0) "A new ledger entity left the cast roster reported as synchronized."
    Assert-True ($stale.Output -match 'is not synchronized') "Stale cast roster failed for the wrong reason:`n$($stale.Output)"

    $regenerated = Invoke-Generator
    Assert-True ($regenerated.ExitCode -eq 0) "Regeneration failed after a ledger change:`n$($regenerated.Output)"
    Assert-True ((Get-Text $castRelative) -match 'ENT-999999') "Regenerated roster omits the newly added entity."

    $confirm = Invoke-Generator -Check
    Assert-True ($confirm.ExitCode -eq 0) "Regenerated roster does not pass its own check:`n$($confirm.Output)"

    # Determinism: the same ledger must produce the same bytes, or the check gate
    # becomes noise and gets disabled.
    $first = Get-Text $castRelative
    Invoke-Generator | Out-Null
    Assert-True ((Get-Text $castRelative) -ceq $first) "Cast roster generation is not deterministic."

    Write-Host "Campaign cast regression tests PASSED" -ForegroundColor Green
    exit 0
}
finally {
    $resolvedTemporaryParent = [System.IO.Path]::GetFullPath($temporaryParent)
    $resolvedTemporaryRoot = [System.IO.Path]::GetFullPath($temporaryRoot)
    if (
        $resolvedTemporaryRoot.StartsWith($resolvedTemporaryParent, [System.StringComparison]::OrdinalIgnoreCase) -and
        (Split-Path -Leaf $resolvedTemporaryRoot).StartsWith("chronicle-campaign-cast-")
    ) {
        Remove-Item -LiteralPath $resolvedTemporaryRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}
