[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
. (Join-Path $PSScriptRoot "lib/SealedVolumes.ps1")

# Decision 094 -- sealed volumes.
#
# Two halves, and each is proven to fail when its subject is removed.
#
#  1. The freeze. `Get-SealedVolumeFailures` compares every live volume against
#     each checkpoint's copy, and polices names, numbering and deletion. Run on a
#     fixture of a few hundred bytes, because the check reads only sealed/ and
#     saves/, so copying the repository would test nothing extra.
#  2. The seal. `tools/seal_campaign.py retire` rewrites a field and must keep
#     every Event the old value cited (Decision 085's reference obligation), and
#     must refuse to write into a volume a checkpoint already holds.

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw $Message }
}

$utf8 = [System.Text.UTF8Encoding]::new($false)
function Set-Text { param([string]$Path, [string]$Text)
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $Path) | Out-Null
    [System.IO.File]::WriteAllText($Path, $Text, $utf8)
}

$temp = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-sealed-" + [guid]::NewGuid().ToString("N"))
try {
    # --- 1. The freeze ------------------------------------------------------
    $campaign = Join-Path $temp "campaigns/example"
    Set-Text (Join-Path $campaign "160_CAMPAIGN_CHRONICLE.md") "# live`n"
    $volume = Join-Path $campaign "sealed/160_CAMPAIGN_CHRONICLE.vol01.md"
    Set-Text $volume "# Sealed Volume 01`n`nverbatim history`n"
    $capture = Join-Path $campaign "saves/900_CHECKPOINT_0001/sealed/160_CAMPAIGN_CHRONICLE.vol01.md"
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $capture) | Out-Null
    Copy-Item -LiteralPath $volume -Destination $capture

    $control = @(Get-SealedVolumeFailures -Root $temp)
    Assert-True ($control.Count -eq 0) "Control fixture is not clean: $($control -join ' | ')"

    $original = [System.IO.File]::ReadAllBytes($volume)
    try {
        Set-Text $volume "# Sealed Volume 01`n`nverbatim history, edited`n"
        $found = @(Get-SealedVolumeFailures -Root $temp)
        Assert-True (($found -join ' ') -match 'differs from its copy in 900_CHECKPOINT_0001') "An edit to a captured volume was not caught."
    } finally { [System.IO.File]::WriteAllBytes($volume, $original) }

    $stray = Join-Path $campaign "sealed/notes.md"
    try {
        Set-Text $stray "x"
        Assert-True ((@(Get-SealedVolumeFailures -Root $temp) -join ' ') -match 'not a sealed volume name') "A stray file in sealed/ was not caught."
    } finally { Remove-Item -LiteralPath $stray -Force }

    $gap = Join-Path $campaign "sealed/160_CAMPAIGN_CHRONICLE.vol03.md"
    try {
        Set-Text $gap "x"
        Assert-True ((@(Get-SealedVolumeFailures -Root $temp) -join ' ') -match 'without gaps') "A gap in volume numbering was not caught."
    } finally { Remove-Item -LiteralPath $gap -Force }

    $orphan = Join-Path $campaign "sealed/140_OBJECTIVES.vol01.md"
    try {
        Set-Text $orphan "x"
        Assert-True ((@(Get-SealedVolumeFailures -Root $temp) -join ' ') -match 'does not have: 140_OBJECTIVES\.md') "A volume for a ledger the campaign lacks was not caught."
    } finally { Remove-Item -LiteralPath $orphan -Force }

    Remove-Item -LiteralPath $volume -Force
    try {
        Assert-True ((@(Get-SealedVolumeFailures -Root $temp) -join ' ') -match 'missing from the live campaign') "Deleting a volume the latest checkpoint holds was not caught."
    } finally { [System.IO.File]::WriteAllBytes($volume, $original) }

    Assert-True (@(Get-SealedVolumeFailures -Root $temp).Count -eq 0) "Fixture was not restored between cases."

    # The validator runs the check; the live repository satisfies it.
    $validator = Get-Content -Raw -LiteralPath (Join-Path $PSScriptRoot "validate_repository.ps1")
    Assert-True ($validator -match 'Get-SealedVolumeFailures\s+-Root\s+\$root') "validate_repository.ps1 does not run the sealed-volume check."
    $live = @(Get-SealedVolumeFailures -Root $root)
    Assert-True ($live.Count -eq 0) "The live repository fails the sealed-volume check: $($live -join ' | ')"

    # --- 2. The seal --------------------------------------------------------
    $python = if (Get-Command python3 -ErrorAction SilentlyContinue) { "python3" } else { "python" }
    $tool = Join-Path $PSScriptRoot "seal_campaign.py"
    $sealCampaign = Join-Path $temp "campaigns/sealtest"
    $ledger = @(
        '# NPCs - Test'
        ''
        '## Record'
        ''
        '```yaml'
        'id: REC-000001'
        'role: canonical ledger'
        '```'
        ''
        '### ENT-000002 - Someone'
        ''
        '```yaml'
        'id: ENT-000002'
        'canonical_state:'
        '  situation: "Met at `EVT-000010`. Then at `EVT-000011`,'
        '  a continuation at the parent''s indentation, which PyYAML accepts."'
        '  want: "unchanged"'
        '```'
        ''
        '### ENT-000003 - Someone Indexed'
        ''
        '```yaml'
        'id: ENT-000003'
        'canonical_state:'
        '  situation: "Seen at `EVT-000020`."'
        '  moved_by_events: "`EVT-000001`'
        '  `EVT-000002`"'
        '```'
        ''
    ) -join "`n"
    Set-Text (Join-Path $sealCampaign "130_NPCS_AND_FACTIONS.md") $ledger
    $spec = Join-Path $temp "spec.yaml"
    Set-Text $spec (@(
        'retire:'
        '  - ledger: 130_NPCS_AND_FACTIONS.md'
        '    record: ENT-000002'
        '    field: canonical_state.situation'
        '    value: "Now at `EVT-000011` only."'
        '  - ledger: 130_NPCS_AND_FACTIONS.md'
        '    record: ENT-000003'
        '    field: canonical_state.situation'
        '    value: "Nothing current."'
    ) -join "`n")

    & $python $tool retire --campaign $sealCampaign --spec $spec | Out-Null
    Assert-True ($LASTEXITCODE -eq 0) "seal_campaign.py retire failed on a well-formed fixture."
    $after = [System.IO.File]::ReadAllText((Join-Path $sealCampaign "130_NPCS_AND_FACTIONS.md"))
    Assert-True ($after -match '(?m)^moved_by_events:.*EVT-000010') "The retired value's Event citation was not kept in moved_by_events (Decision 085)."
    Assert-True ($after -notmatch 'continuation at the parent') "The whole multi-line value was not retired."
    Assert-True ($after -match 'want: "unchanged"') "A neighbouring field was disturbed."
    # A record that already keeps its index under canonical_state gets the
    # citation there, not a second top-level index beside it.
    $indexed = [regex]::Match($after, '(?ms)^id: ENT-000003\r?\n.*?^```').Value
    Assert-True (([regex]::Matches($indexed, '(?m)^\s*moved_by_events:')).Count -eq 1) "A second moved_by_events index was created beside the existing one."
    Assert-True ($indexed -match '(?s)  moved_by_events: ".*EVT-000020.*"') "The citation was not added to the record's existing index."
    $sealedVolume = Join-Path $sealCampaign "sealed/130_NPCS_AND_FACTIONS.vol01.md"
    Assert-True ((Test-Path -LiteralPath $sealedVolume) -and ([System.IO.File]::ReadAllText($sealedVolume) -match 'continuation at the parent')) "The old value was not sealed verbatim."

    # Once a checkpoint holds vol01, the next pass must open vol02.
    $held = Join-Path $sealCampaign "saves/900_CHECKPOINT_0001/sealed/130_NPCS_AND_FACTIONS.vol01.md"
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $held) | Out-Null
    Copy-Item -LiteralPath $sealedVolume -Destination $held
    Set-Text $spec (@(
        'retire:'
        '  - ledger: 130_NPCS_AND_FACTIONS.md'
        '    record: ENT-000002'
        '    field: canonical_state.want'
        '    value: "changed"'
    ) -join "`n")
    & $python $tool retire --campaign $sealCampaign --spec $spec | Out-Null
    Assert-True ($LASTEXITCODE -eq 0) "A second seal pass failed."
    Assert-True (Test-Path -LiteralPath (Join-Path $sealCampaign "sealed/130_NPCS_AND_FACTIONS.vol02.md")) "A pass after capture wrote into the frozen volume instead of opening vol02."
    Assert-True ([System.Linq.Enumerable]::SequenceEqual([System.IO.File]::ReadAllBytes($sealedVolume), [System.IO.File]::ReadAllBytes($held))) "The captured volume was modified by a later pass."

    Write-Host "Sealed volume contract PASSED"
} finally {
    Remove-Item -LiteralPath $temp -Recurse -Force -ErrorAction SilentlyContinue
}
