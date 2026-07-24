[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$validator = Join-Path $PSScriptRoot "validate_repository.ps1"
$requiredLedgers = @(
    "100_CHARACTER_SHEET.md",
    "110_WORLD_LEDGER.md",
    "120_INVENTORY_AND_OWNERSHIP.md",
    "130_NPCS_AND_FACTIONS.md",
    "140_OBJECTIVES.md",
    "160_CAMPAIGN_CHRONICLE.md",
    "170_CHANGELOG.md",
    "180_CURRENT_STATE.md"
)

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw $Message }
}

function Assert-Equal {
    param($Actual, $Expected, [string]$Message)
    if ($Actual -ne $Expected) {
        throw "$Message`nExpected: $Expected`nActual:   $Actual"
    }
}

function Assert-Contains {
    param([string]$Text, [string]$Expected, [string]$Message)
    if ($Text -notlike "*$Expected*") {
        throw "$Message`nExpected output to contain: $Expected`nActual output:`n$Text"
    }
}

function Get-Text {
    param([string]$Path)
    return [System.IO.File]::ReadAllText($Path)
}

function Set-Text {
    param([string]$Path, [string]$Text)
    [System.IO.File]::WriteAllText($Path, $Text, [System.Text.UTF8Encoding]::new($false))
}

function Replace-ExactlyOnce {
    param(
        [string]$Path,
        [string]$Pattern,
        [string]$Replacement,
        [string]$Case
    )

    $text = Get-Text $Path
    $matches = [regex]::Matches($text, $Pattern)
    Assert-Equal $matches.Count 1 "$Case mutation precondition drifted."
    Set-Text $Path ([regex]::Replace($text, $Pattern, $Replacement, 1))
}

function Invoke-Validator {
    param([string]$RepositoryRoot)

    $output = & powershell -NoProfile -ExecutionPolicy Bypass -File $validator `
        -RepositoryRoot $RepositoryRoot 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{
        ExitCode = $LASTEXITCODE
        Output = ($output -join "`n")
    }
}

function Copy-ValidationRepository {
    param([string]$Destination)

    New-Item -ItemType Directory -Path $Destination | Out-Null
    foreach ($name in @("system", "worlds", "campaigns")) {
        Copy-Item -LiteralPath (Join-Path $root $name) -Destination $Destination -Recurse
    }
}

function Get-DirectoryDigest {
    param([string]$Path)

    $lines = foreach ($file in Get-ChildItem -LiteralPath $Path -Recurse -File | Sort-Object FullName) {
        $relative = $file.FullName.Substring($Path.Length).TrimStart([char[]]"\/").Replace('\', '/')
        $hash = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash
        "$relative`t$hash"
    }
    $bytes = [System.Text.Encoding]::UTF8.GetBytes(($lines -join "`n"))
    $sha = [System.Security.Cryptography.SHA256]::Create()
    try {
        return ([System.BitConverter]::ToString($sha.ComputeHash($bytes))).Replace("-", "")
    } finally {
        $sha.Dispose()
    }
}

function Get-RegistryHighWater {
    param([string]$RegistryPath, [ValidateSet("ENT", "REC", "EVT", "REL")][string]$Prefix)

    $kind = @{
        ENT = "Entity"
        REC = "Record"
        EVT = "Event"
        REL = "Relationship"
    }[$Prefix]
    $text = Get-Text $RegistryPath
    $match = [regex]::Match(
        $text,
        "(?m)^\|\s*$kind\s*\|.*\|\s*$Prefix-(\d{6})\s*\|\s*$"
    )
    Assert-True $match.Success "Registry high-water mark for $Prefix is missing."
    return [int]$match.Groups[1].Value
}

function Add-RegistryAllocation {
    param(
        [string]$RegistryPath,
        [ValidateSet("ENT", "REC", "EVT", "REL")][string]$Prefix,
        [int]$Start,
        [int]$End,
        [string]$Purpose
    )

    $kind = @{
        ENT = "Entity"
        REC = "Record"
        EVT = "Event"
        REL = "Relationship"
    }[$Prefix]
    $text = Get-Text $RegistryPath
    $oldHighWater = Get-RegistryHighWater $RegistryPath $Prefix
    Assert-Equal $Start ($oldHighWater + 1) "$Prefix allocation must begin above the registry high-water mark."
    Assert-True ($End -ge $Start) "$Prefix allocation range is inverted."

    $oldId = "{0}-{1:D6}" -f $Prefix, $oldHighWater
    $newId = "{0}-{1:D6}" -f $Prefix, $End
    $highWaterPattern = "(?m)^\|\s*$kind\s*\|.*\|\s*$([regex]::Escape($oldId))\s*\|\s*\r?$"
    $highWaterLine = [regex]::Match($text, $highWaterPattern)
    Assert-True $highWaterLine.Success "Registry high-water row for $Prefix is missing."
    $updatedHighWaterLine = $highWaterLine.Value.Replace($oldId, $newId)
    $text = $text.Remove($highWaterLine.Index, $highWaterLine.Length).Insert(
        $highWaterLine.Index,
        $updatedHighWaterLine
    )

    $startId = "{0}-{1:D6}" -f $Prefix, $Start
    $range = if ($Start -eq $End) { $startId } else { "$startId - $newId" }
    $row = "| $range | $kind | $Purpose |`r`n"
    $nextHeading = [regex]::Match($text, '(?m)^# Allocation Invariants')
    Assert-True $nextHeading.Success "Registry Allocation Log end marker is missing."
    $text = $text.Insert($nextHeading.Index, $row + "`r`n")
    Set-Text $RegistryPath $text
}

function Get-ManifestProfile {
    param([string]$ManifestPath)

    $text = Get-Text $ManifestPath
    $none = [regex]::Match($text, '(?m)^[ \t]*world_rule_profile:[ \t]*"?(none[^"\r\n]*)"?[ \t]*\r?$')
    if ($none.Success) {
        return [pscustomobject]@{ Kind = "none"; World = $null; Version = $null; FreezeStatus = $null }
    }

    $mapping = [regex]::Match(
        $text,
        '(?ms)^[ \t]*world_rule_profile:[ \t]*\r?\n[ \t]+world:[ \t]*"?([^"\r\n]+)"?[ \t]*\r?\n[ \t]+version:[ \t]*"?([^"\r\n]+)"?[ \t]*\r?\n[ \t]+freeze_status:[ \t]*"?([^"\r\n]+)"?[ \t]*\r?$'
    )
    Assert-True $mapping.Success "Manifest profile metadata is neither structured nor explicit none."
    return [pscustomobject]@{
        Kind = "profile"
        World = $mapping.Groups[1].Value.Trim()
        Version = $mapping.Groups[2].Value.Trim()
        FreezeStatus = $mapping.Groups[3].Value.Trim().ToLowerInvariant()
    }
}

function Get-ProfileReadiness {
    param(
        [string]$ManifestPath,
        [AllowNull()][string]$ProfilePath,
        [ValidateSet("none", "additive", "migrating")][string]$VersionChange = "none"
    )

    $saved = Get-ManifestProfile $ManifestPath
    $hasProfile = -not [string]::IsNullOrWhiteSpace($ProfilePath) -and
        (Test-Path -LiteralPath $ProfilePath -PathType Leaf)

    if ($saved.Kind -eq "none") {
        if ($hasProfile) { return "halt-profile-presence-mismatch" }
        return "ready-no-profile"
    }
    if (-not $hasProfile) { return "halt-profile-missing" }
    if ($saved.FreezeStatus -ne "frozen") { return "halt-unfrozen-not-save-trustworthy" }

    $profileText = Get-Text $ProfilePath
    $version = [regex]::Match($profileText, '(?m)^\*\*Profile Version:\*\*[ \t]*([^\r\n]+)')
    $status = [regex]::Match($profileText, '(?m)^\*\*Compatibility Status:\*\*[ \t]*(frozen|workshop draft)')
    Assert-True $version.Success "Active profile has no Profile Version."
    Assert-True $status.Success "Active profile has no Compatibility Status."
    if ($status.Groups[1].Value -ne "frozen") { return "halt-active-profile-unfrozen" }

    $activeVersion = $version.Groups[1].Value.Trim()
    if ($saved.Version -eq $activeVersion) { return "ready-matching-frozen" }
    if ($VersionChange -eq "additive") { return "halt-additive-upgrade-no-recomputation" }
    if ($VersionChange -eq "migrating") { return "halt-explicit-migration-required" }
    return "halt-version-mismatch:$($saved.Version)-to-$activeVersion"
}

function Restore-NamedCheckpoint {
    param(
        [string]$Command,
        [string]$CampaignPath,
        [string]$RegistryPath
    )

    $match = [regex]::Match($Command, '^/load[ \t]+(900_CHECKPOINT_\d{4})$')
    Assert-True $match.Success "Named load requires exactly one canonical checkpoint name."
    $checkpointName = $match.Groups[1].Value
    $checkpointPath = Join-Path $CampaignPath "saves/$checkpointName"
    Assert-True (Test-Path -LiteralPath $checkpointPath -PathType Container) "Named checkpoint does not exist: $checkpointName"

    $registryHash = (Get-FileHash -LiteralPath $RegistryPath -Algorithm SHA256).Hash
    foreach ($ledger in $requiredLedgers) {
        Copy-Item -LiteralPath (Join-Path $checkpointPath $ledger) `
            -Destination (Join-Path $CampaignPath $ledger) -Force
    }
    Assert-Equal (Get-FileHash -LiteralPath $RegistryPath -Algorithm SHA256).Hash $registryHash `
        "Named restoration rolled the repository registry backward."
    return $checkpointName
}

function Get-CommandDispatch {
    param([string]$Command)

    $profileText = Get-Text (Join-Path $root "docs/AI_GAMEPLAY_RUNTIME_PROFILE.md")
    $rows = [regex]::Matches(
        $profileText,
        '(?m)^\|\s*`([^`]+)`\s*\|[^|]*\|\s*([^|]+?)\s*\|\r?$'
    )
    $row = @($rows | Where-Object { $_.Groups[1].Value -eq $Command })
    Assert-Equal $row.Count 1 "Runtime command row is missing or duplicated: $Command"
    return $row[0].Groups[2].Value.Trim()
}

function New-BranchFromCheckpoint {
    param(
        [string]$RepositoryRoot,
        [string]$SourceCampaignName,
        [string]$CheckpointName,
        [string]$BranchCampaignName,
        [string]$BranchName
    )

    $sourceCampaign = Join-Path $RepositoryRoot "campaigns/$SourceCampaignName"
    $checkpoint = Join-Path $sourceCampaign "saves/$CheckpointName"
    $branchCampaign = Join-Path $RepositoryRoot "campaigns/$BranchCampaignName"
    $registryPath = Join-Path $RepositoryRoot "system/ID_REGISTRY.md"
    $sourceDigest = Get-DirectoryDigest $checkpoint
    $sourceLiveDigest = Get-DirectoryDigest $sourceCampaign

    New-Item -ItemType Directory -Path $branchCampaign | Out-Null
    $definitionPattern = '(?m)^[ \t]*id:[ \t]*((ENT|REC|EVT|REL)-\d{6})[ \t]*(?:#.*)?\r?$'
    $idsByPrefix = @{ ENT = @(); REC = @(); EVT = @(); REL = @() }
    foreach ($ledger in $requiredLedgers) {
        $text = Get-Text (Join-Path $checkpoint $ledger)
        foreach ($match in [regex]::Matches($text, $definitionPattern)) {
            $prefix = $match.Groups[2].Value
            $idsByPrefix[$prefix] += $match.Groups[1].Value
        }
    }
    foreach ($prefix in @("ENT", "REC", "EVT", "REL")) {
        $idsByPrefix[$prefix] = @($idsByPrefix[$prefix] | Sort-Object -Unique)
    }

    $map = @{}
    foreach ($prefix in @("ENT", "REC", "EVT", "REL")) {
        if ($idsByPrefix[$prefix].Count -eq 0) { continue }
        $start = (Get-RegistryHighWater $registryPath $prefix) + 1
        for ($index = 0; $index -lt $idsByPrefix[$prefix].Count; $index++) {
            $map[$idsByPrefix[$prefix][$index]] = "{0}-{1:D6}" -f $prefix, ($start + $index)
        }
        Add-RegistryAllocation -RegistryPath $registryPath -Prefix $prefix -Start $start `
            -End ($start + $idsByPrefix[$prefix].Count - 1) `
            -Purpose "Version 0.3 disposable branch validation: $BranchCampaignName"
    }

    foreach ($ledger in $requiredLedgers) {
        $text = Get-Text (Join-Path $checkpoint $ledger)
        foreach ($oldId in @($map.Keys | Sort-Object)) {
            $text = $text.Replace($oldId, $map[$oldId])
        }
        if ($ledger -eq "180_CURRENT_STATE.md") {
            $text = $text.Replace("saves/$CheckpointName/", "saves/900_CHECKPOINT_0000/")
        }
        Set-Text (Join-Path $branchCampaign $ledger) $text
    }

    $baseline = Join-Path $branchCampaign "saves/900_CHECKPOINT_0000"
    New-Item -ItemType Directory -Path $baseline -Force | Out-Null
    foreach ($ledger in $requiredLedgers) {
        Copy-Item -LiteralPath (Join-Path $branchCampaign $ledger) -Destination $baseline
    }

    $sourceManifest = Get-Text (Join-Path $checkpoint "900_SAVE_MANIFEST.md")
    foreach ($oldId in @($map.Keys | Sort-Object)) {
        $sourceManifest = $sourceManifest.Replace($oldId, $map[$oldId])
    }
    $sourceManifest = $sourceManifest.Replace(
        "campaigns/$SourceCampaignName",
        "campaigns/$BranchCampaignName"
    )
    $sourceManifest = $sourceManifest.Replace($CheckpointName, "900_CHECKPOINT_0000")
    $sourceManifest = [regex]::Replace(
        $sourceManifest,
        '(?m)^[ \t]*parent_save:[^\r\n]*',
        "  parent_save: campaigns/$SourceCampaignName/saves/$CheckpointName"
    )
    $sourceManifest = [regex]::Replace(
        $sourceManifest,
        '(?m)^[ \t]*canonical_continuation:[^\r\n]*',
        "  canonical_continuation: false"
    )
    $sourceManifest = [regex]::Replace(
        $sourceManifest,
        '(?m)^[ \t]*branch:[^\r\n]*',
        "  branch: `"$BranchName`""
    )
    Set-Text (Join-Path $baseline "900_SAVE_MANIFEST.md") $sourceManifest

    $indexPath = Join-Path $RepositoryRoot "system/WORLDS_AND_CAMPAIGNS.md"
    $indexText = Get-Text $indexPath
    $indexText += "`r`n| ``campaigns/$BranchCampaignName/`` | ``worlds/gatefall/`` | Validation Fork | Disposable | ``900_CHECKPOINT_0000`` | 2026-07-24 |`r`n"
    Set-Text $indexPath $indexText

    Assert-Equal (Get-DirectoryDigest $checkpoint) $sourceDigest "Branch creation mutated the source checkpoint."
    Assert-Equal (Get-DirectoryDigest $sourceCampaign) $sourceLiveDigest "Branch creation mutated the original campaign."
    return [pscustomobject]@{
        CampaignPath = $branchCampaign
        RegistryPath = $registryPath
        IdMap = $map
        OriginalProtagonist = "ENT-000125"
        BranchProtagonist = $map["ENT-000125"]
        ParentCheckpoint = "campaigns/$SourceCampaignName/saves/$CheckpointName"
    }
}

function Add-DisposableEvent {
    param(
        [string]$CampaignPath,
        [string]$RegistryPath,
        [string]$Purpose
    )

    $number = (Get-RegistryHighWater $RegistryPath "EVT") + 1
    Add-RegistryAllocation -RegistryPath $RegistryPath -Prefix "EVT" -Start $number -End $number -Purpose $Purpose
    $eventId = "EVT-{0:D6}" -f $number
    $chroniclePath = Join-Path $CampaignPath "160_CAMPAIGN_CHRONICLE.md"
    $chronicle = Get-Text $chroniclePath
    $chronicle += @"

## Disposable Validation Event

``````yaml
id: $eventId
canonical_record: $(([regex]::Match($chronicle, '(?m)^id:[ \t]*(REC-\d{6})')).Groups[1].Value)
schema_version: "0.1.2"
status: active
provenance:
  source: $eventId
  event_time: "2026-07-24"
  record_time: "2026-07-24T00:00:00Z"
type: Event
scope: campaign
canonical_state:
  description: "Disposable Version 0.3 restart validation event."
``````
"@
    Set-Text $chroniclePath $chronicle
    return $eventId
}

function Invoke-RestartFromBaseline {
    param([string]$CampaignPath, [string]$RegistryPath)

    $baseline = Join-Path $CampaignPath "saves/900_CHECKPOINT_0000"
    Assert-True (Test-Path -LiteralPath $baseline -PathType Container) "/restart baseline precondition failed."
    $registryHash = (Get-FileHash -LiteralPath $RegistryPath -Algorithm SHA256).Hash
    foreach ($ledger in $requiredLedgers) {
        Copy-Item -LiteralPath (Join-Path $baseline $ledger) `
            -Destination (Join-Path $CampaignPath $ledger) -Force
    }
    Assert-Equal (Get-FileHash -LiteralPath $RegistryPath -Algorithm SHA256).Hash $registryHash `
        "/restart rolled the registry backward."
}

$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-v03-validation-" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $tempRoot | Out-Null

try {
    # P-01 through P-04: real validator runs against isolated repository copies.
    $presenceCases = @(
        @{
            Id = "P-01"
            Path = "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
            Pattern = '(?m)^  location: ENT-000087\r?\n'
            Replacement = ""
            Expected = "active Character ENT-000125 must declare exactly one canonical_state.location"
        },
        @{
            Id = "P-02"
            Path = "campaigns/gatefall_pendragon_001/100_CHARACTER_SHEET.md"
            Pattern = '(?m)^(  location: ENT-000087\r?\n)'
            Replacement = "`$1  location: ENT-000086`r`n"
            Expected = "object ENT-000125 declares more than one location"
        },
        @{
            Id = "P-03"
            Path = "campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md"
            Pattern = '(?ms)(id: ENT-000054.*?location: )"carried by ENT-000051"'
            Replacement = '$1"carried by ENT-000051 at ENT-000087"'
            Expected = "carried-by location that is not the bare 'carried by ENT-######' form"
        },
        @{
            Id = "P-04"
            Path = "campaigns/reikon_awakening_001/120_INVENTORY_AND_OWNERSHIP.md"
            Pattern = '(?ms)(id: ENT-000054.*?location: )"carried by ENT-000051"'
            Replacement = '$1"carried by ENT-999999"'
            Expected = "references ENT-999999, above registry high-water mark"
        }
    )
    foreach ($case in $presenceCases) {
        $caseRoot = Join-Path $tempRoot $case.Id
        Copy-ValidationRepository $caseRoot
        Replace-ExactlyOnce -Path (Join-Path $caseRoot $case.Path) -Pattern $case.Pattern `
            -Replacement $case.Replacement -Case $case.Id
        $result = Invoke-Validator $caseRoot
        Assert-True ($result.ExitCode -ne 0) "$($case.Id) unexpectedly passed repository validation."
        Assert-Contains $result.Output $case.Expected "$($case.Id) failed for the wrong reason."
        Write-Host "$($case.Id) validator output:"
        Write-Host $result.Output
        Write-Host "$($case.Id) PASSED - validator rejected disposable state: $($case.Expected)"
    }

    # WRP-01 through WRP-05: readiness against real captured manifests and the
    # live Gatefall profile. The Gatefall profile is frozen at version 1.0
    # (Decision 074, Rules Section 14.6), so the matching and mismatch cases are
    # derived from the live profile's actual frozen version rather than by
    # rewriting the profile's freeze status. The captured-manifest cases use real
    # immutable checkpoints: Gatefall 0004 (workshop-draft, pre-freeze) and
    # Prototype Alpha 0001 (explicit no-profile). Only the manifest side — a
    # metadata snapshot the harness legitimately synthesizes — is edited.
    $profileRoot = Join-Path $tempRoot "profiles"
    New-Item -ItemType Directory -Path $profileRoot | Out-Null
    $manifest = Join-Path $profileRoot "900_SAVE_MANIFEST.md"
    $profile = Join-Path $profileRoot "206_WORLD_RULE_PROFILE.md"
    $ckpt0004Manifest = Join-Path $root "campaigns/gatefall_pendragon_001/saves/900_CHECKPOINT_0004/900_SAVE_MANIFEST.md"
    $liveProfileSource = Join-Path $root "worlds/gatefall/206_WORLD_RULE_PROFILE.md"

    # The matching/mismatch cases only mean what they claim if the live profile is
    # actually frozen. Read its real version so the cases track live authoring
    # rather than assuming 1.0, and derive the next version for the mismatch cases.
    $liveProfileText = Get-Text $liveProfileSource
    $liveVersionMatch = [regex]::Match($liveProfileText, '(?m)^\*\*Profile Version:\*\*[ \t]*([^\r\n]+)')
    Assert-True $liveVersionMatch.Success "Live Gatefall profile declares no Profile Version."
    Assert-True ([regex]::IsMatch($liveProfileText, '(?m)^\*\*Compatibility Status:\*\*[ \t]*frozen')) `
        "WRP readiness cases require the live Gatefall profile to be frozen (Decision 074)."
    $liveVersion = $liveVersionMatch.Groups[1].Value.Trim()
    $bumpParts = $liveVersion.Split('.')
    $bumpParts[-1] = ([int]$bumpParts[-1] + 1).ToString()
    $bumpedVersion = ($bumpParts -join '.')
    $manifestVersionPattern = '(?m)^([ \t]+version: ")[^"\r\n]*(")'
    $profileVersionPattern = '(?m)^(\*\*Profile Version:\*\* )' + [regex]::Escape($liveVersion) + '(?=\s*$)'

    # WRP-01 matching frozen: a manifest captured as frozen at the live version
    # restores clean against the live frozen profile.
    Copy-Item -LiteralPath $ckpt0004Manifest -Destination $manifest -Force
    Copy-Item -LiteralPath $liveProfileSource -Destination $profile -Force
    Replace-ExactlyOnce $manifest 'freeze_status: workshop-draft' 'freeze_status: frozen' "WRP-01 manifest freeze"
    Replace-ExactlyOnce $manifest $manifestVersionPattern ('${1}' + $liveVersion + '${2}') "WRP-01 manifest version"
    Assert-Equal (Get-ProfileReadiness $manifest $profile) "ready-matching-frozen" "WRP-01 readiness outcome is wrong."
    Write-Host "WRP-01 PASSED - manifest frozen at $liveVersion matches the live frozen profile."

    # WRP-02 version mismatch: same frozen capture, live profile advanced one version.
    Replace-ExactlyOnce $profile $profileVersionPattern ('${1}' + $bumpedVersion) "WRP-02 profile version"
    Assert-Equal (Get-ProfileReadiness $manifest $profile) "halt-version-mismatch:$liveVersion-to-$bumpedVersion" "WRP-02 did not halt on mismatch."
    Write-Host "WRP-02 PASSED - a $liveVersion capture against a $bumpedVersion profile halts at readiness."

    # WRP-03 unfrozen capture: real pre-freeze checkpoint 0004 (workshop-draft).
    Copy-Item -LiteralPath $ckpt0004Manifest -Destination $manifest -Force
    Copy-Item -LiteralPath $liveProfileSource -Destination $profile -Force
    Assert-Equal (Get-ProfileReadiness $manifest $profile) "halt-unfrozen-not-save-trustworthy" "WRP-03 did not halt on an unfrozen capture."
    Write-Host "WRP-03 PASSED - workshop-draft capture halted with the not-save-trustworthy outcome."

    # WRP-04 no-profile world: real Prototype Alpha (Verra) explicit none.
    Copy-Item -LiteralPath (Join-Path $root "campaigns/prototype_alpha/saves/900_CHECKPOINT_0001/900_SAVE_MANIFEST.md") -Destination $manifest -Force
    Assert-Equal (Get-ProfileReadiness $manifest $null) "ready-no-profile" "WRP-04 did not accept explicit no-profile metadata."
    Write-Host "WRP-04 PASSED - explicit no-profile state is ready under engine defaults."

    # WRP-05 additive vs migrating: same mismatch under each declared change class.
    Copy-Item -LiteralPath $ckpt0004Manifest -Destination $manifest -Force
    Copy-Item -LiteralPath $liveProfileSource -Destination $profile -Force
    Replace-ExactlyOnce $manifest 'freeze_status: workshop-draft' 'freeze_status: frozen' "WRP-05 manifest freeze"
    Replace-ExactlyOnce $manifest $manifestVersionPattern ('${1}' + $liveVersion + '${2}') "WRP-05 manifest version"
    Replace-ExactlyOnce $profile $profileVersionPattern ('${1}' + $bumpedVersion) "WRP-05 profile version"
    Assert-Equal (Get-ProfileReadiness $manifest $profile -VersionChange additive) "halt-additive-upgrade-no-recomputation" "WRP-05 additive outcome is wrong."
    Assert-Equal (Get-ProfileReadiness $manifest $profile -VersionChange migrating) "halt-explicit-migration-required" "WRP-05 migrating outcome is wrong."
    Write-Host "WRP-05 PASSED - additive and migrating mismatches produce distinct readiness halts."

    # Named load: select 0003 while 0004 exists, restore all eight exact bytes,
    # preserve registry high-water state, and reject unknown targets.
    $restoreRoot = Join-Path $tempRoot "named-load"
    Copy-ValidationRepository $restoreRoot
    $campaign = Join-Path $restoreRoot "campaigns/gatefall_pendragon_001"
    $registry = Join-Path $restoreRoot "system/ID_REGISTRY.md"
    foreach ($ledger in $requiredLedgers) {
        Add-Content -LiteralPath (Join-Path $campaign $ledger) -Value "`nDISPOSABLE-NEWER-LIVE-STATE"
    }
    $selected = Restore-NamedCheckpoint "/load 900_CHECKPOINT_0003" $campaign $registry
    Assert-Equal $selected "900_CHECKPOINT_0003" "Named load selected the wrong checkpoint."
    Assert-True ($selected -ne "900_CHECKPOINT_0004") "Named load silently selected the latest checkpoint."
    foreach ($ledger in $requiredLedgers) {
        $liveHash = (Get-FileHash -LiteralPath (Join-Path $campaign $ledger) -Algorithm SHA256).Hash
        $savedHash = (Get-FileHash -LiteralPath (Join-Path $campaign "saves/$selected/$ledger") -Algorithm SHA256).Hash
        Assert-Equal $liveHash $savedHash "Named restoration leaked newer live state into $ledger."
    }
    $beforeUnknown = Get-DirectoryDigest $campaign
    try {
        Restore-NamedCheckpoint "/load 900_CHECKPOINT_9999" $campaign $registry | Out-Null
        throw "Unknown named checkpoint unexpectedly restored."
    } catch {
        Assert-Contains $_.Exception.Message "does not exist" "Unknown load failed for the wrong reason."
    }
    Assert-Equal (Get-DirectoryDigest $campaign) $beforeUnknown "Failed named load mutated the campaign."
    Write-Host "RESTORE PASSED - 0003 restored byte-for-byte, 0004 was not substituted, registry preserved."

    # Dispatcher rows must remain thin links to the existing procedures.
    $saveDispatch = Get-CommandDispatch "/save [label]"
    Assert-Contains $saveDispatch "Checkpoint Persistence" "/save no longer dispatches to checkpoint persistence."
    Assert-Contains $saveDispatch "Save Algorithm" "/save no longer dispatches to the Save Algorithm."
    Assert-Equal (Get-CommandDispatch "/load <checkpoint>") "Returning Sessions + Fork (Decision 053)" "/load dispatch drifted."
    Assert-Equal (Get-CommandDispatch "/branch [name]") "Fork (Decision 053)" "/branch dispatch drifted."
    Assert-Equal (Get-CommandDispatch "/restart") "Redo (Decision 053)" "/restart dispatch drifted."
    Write-Host "DISPATCH PASSED - save/load/branch/restart remain thin procedure dispatchers."

    # Branch and restart execute only inside a disposable full repository copy.
    $branchRoot = Join-Path $tempRoot "branch-restart"
    Copy-ValidationRepository $branchRoot
    $branch = New-BranchFromCheckpoint -RepositoryRoot $branchRoot `
        -SourceCampaignName "gatefall_pendragon_001" `
        -CheckpointName "900_CHECKPOINT_0004" `
        -BranchCampaignName "gatefall_pendragon_v03_validation" `
        -BranchName "v03-capability-validation"
    Assert-True ($branch.BranchProtagonist -ne $branch.OriginalProtagonist) "Fork reused the original protagonist identifier."
    $branchManifest = Get-Text (Join-Path $branch.CampaignPath "saves/900_CHECKPOINT_0000/900_SAVE_MANIFEST.md")
    Assert-Contains $branchManifest $branch.ParentCheckpoint "Fork lineage does not name the parent checkpoint."
    Assert-Contains $branchManifest "canonical_continuation: false" "Fork is incorrectly marked as the canonical continuation."
    $branchValidation = Invoke-Validator $branchRoot
    Assert-Equal $branchValidation.ExitCode 0 "Disposable branch failed repository validation.`n$($branchValidation.Output)"

    $protagonistBeforeRestart = $branch.BranchProtagonist
    $discardedEvent = Add-DisposableEvent $branch.CampaignPath $branch.RegistryPath "Version 0.3 disposable pre-restart history"
    $highWaterBeforeRestart = Get-RegistryHighWater $branch.RegistryPath "EVT"
    Invoke-RestartFromBaseline $branch.CampaignPath $branch.RegistryPath
    foreach ($ledger in $requiredLedgers) {
        $liveHash = (Get-FileHash -LiteralPath (Join-Path $branch.CampaignPath $ledger) -Algorithm SHA256).Hash
        $baselineHash = (Get-FileHash -LiteralPath (Join-Path $branch.CampaignPath "saves/900_CHECKPOINT_0000/$ledger") -Algorithm SHA256).Hash
        Assert-Equal $liveHash $baselineHash "/restart did not restore baseline bytes for $ledger."
    }
    Assert-Equal (Get-RegistryHighWater $branch.RegistryPath "EVT") $highWaterBeforeRestart "/restart rolled back the EVT high-water mark."
    $characterText = Get-Text (Join-Path $branch.CampaignPath "100_CHARACTER_SHEET.md")
    Assert-Contains $characterText "id: $protagonistBeforeRestart" "/restart changed the branch protagonist identity."
    Assert-True ($characterText -notlike "*$discardedEvent*") "Discarded post-baseline event leaked into restored character state."

    $freshEvent = Add-DisposableEvent $branch.CampaignPath $branch.RegistryPath "Version 0.3 disposable post-restart history"
    Assert-True ($freshEvent -ne $discardedEvent) "Restart reused a retired event identifier."
    Assert-Equal ([int]$freshEvent.Substring(4)) ($highWaterBeforeRestart + 1) "Post-restart event was not allocated monotonically."
    $restartValidation = Invoke-Validator $branchRoot
    Assert-Equal $restartValidation.ExitCode 0 "Restarted disposable branch failed repository validation.`n$($restartValidation.Output)"
    Write-Host "BRANCH/RESTART PASSED - identity, lineage, baseline restoration, retirement, and monotonic registry behavior verified."

    Write-Host "Version 0.3 runtime/persistence validation tests PASSED" -ForegroundColor Green
} finally {
    if (Test-Path -LiteralPath $tempRoot -PathType Container) {
        $resolvedTemp = (Resolve-Path -LiteralPath $tempRoot).Path
        $systemTemp = [System.IO.Path]::GetTempPath().TrimEnd([char[]]"\/")
        Assert-True $resolvedTemp.StartsWith($systemTemp, [System.StringComparison]::OrdinalIgnoreCase) `
            "Refusing to remove validation path outside the system temp directory: $resolvedTemp"
        Remove-Item -LiteralPath $resolvedTemp -Recurse -Force
    }
}
