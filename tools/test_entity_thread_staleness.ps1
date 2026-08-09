[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# Entity state fields that assert a THREAD's state go stale, and nothing notices.
#
# `F-029` records two instances found within an hour of each other, both only
# because an owner corrected a disposition authored from the stale field:
#
#   * `ENT-000139` (Owen) -- `open_questions` read "He has not told Priya,
#     Julian, or Renata anything", with a standing instruction not to narrate
#     the conversation as having happened. Written at the `EVT-000271` anchor,
#     superseded by `EVT-000291` the same day, believed seven in-fiction days
#     later.
#   * `ENT-000182` (Reyna) -- `situation` read "Named, not yet met... No direct
#     contact with Alexander or Owen yet" four in-fiction days after
#     `EVT-000409`, which the PROSE IN THE SAME BLOCK describes in bold as MET.
#
# Sweeping the ledger with the heuristic below then found four more of the same
# shape (`ENT-000185` Soraya, `ENT-000186` Grant, `ENT-000187` Iris, `ENT-000188`
# Theo -- all reading "Named, not yet met" days after being met and recruited).
# Six real defects out of eight candidates on the first run.
#
# THE HEURISTIC, and why it is only that. Both instances share one shape: the
# field was written at an anchor, a later Event in the SAME entity block
# superseded it, and nothing revised the field. So the check compares the newest
# Event a field cites against the newest Event anywhere in that entity's block,
# and requires the field to also contain negative thread-state language. A field
# describing the ACTOR ("careful and fair rather than grasping") does not expire.
# A field asserting a THREAD ("not yet met", "has not told") does.
#
# WHY THIS EMITS AND NEVER FAILS. Two of the eight first-run candidates were
# correct -- Marnie's six messages really are still unanswered, and Renata's
# field is historical prose that happened to match. A gate that fails on those
# would be failing on live campaign state, which `F-018` rules a contract test
# may not do: only play can change them, and no edit to this suite or the
# repository can. The observation is the deliverable.

$repo = Split-Path -Parent $PSScriptRoot

# LIVE ledgers only. An immutable checkpoint under `saves/` is byte-frozen by
# contract and is *supposed* to hold the state as it stood; a stale thread field
# inside one is history, not a defect, and re-recording it is forbidden. The
# first run of this sweep walked them and produced 40 KB of noise about
# checkpoints 0049 onward.
$ledgers = @(
    Get-ChildItem -LiteralPath (Join-Path $repo "campaigns") -Filter "130_NPCS_AND_FACTIONS.md" -Recurse -ErrorAction SilentlyContinue |
        Where-Object { $_.FullName -notmatch '[\\/]saves[\\/]' }
)

if ($ledgers.Count -eq 0) {
    Write-Host "Entity thread staleness: no NPC ledgers found; nothing to sweep" -ForegroundColor Green
    exit 0
}

# Negative thread-state language. Deliberately a closed list: an open-ended
# "sounds pending" test would flag most prose in the file.
$pendingPattern = "not yet|has not|hasn't|have not|no direct contact|do not narrate|until it is actually played|awaiting|yet to|still to|not been"

# Fields that carry thread state. `personality`, `voice`, `want` and the rest
# describe the actor and are deliberately excluded.
$threadFields = @('situation', 'open_questions', 'knowledge')

function Get-MaxEvent {
    param([string]$Text)
    $m = [regex]::Matches($Text, 'EVT-(\d{6})')
    if ($m.Count -eq 0) { return 0 }
    $max = 0
    foreach ($x in $m) { $v = [int]$x.Groups[1].Value; if ($v -gt $max) { $max = $v } }
    return $max
}

$suspects = 0
$scanned = 0

foreach ($ledger in $ledgers) {
    $campaign = $ledger.Directory.Name
    $lines = @([System.IO.File]::ReadAllText($ledger.FullName, [System.Text.Encoding]::UTF8) -split "`r?`n")

    $starts = @()
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match '^###\s+(ENT-\d{6})') { $starts += [pscustomobject]@{ Id = $Matches[1]; Index = $i } }
    }

    for ($b = 0; $b -lt $starts.Count; $b++) {
        $scanned++
        $from = $starts[$b].Index
        $to = if ($b -lt $starts.Count - 1) { $starts[$b + 1].Index - 1 } else { $lines.Count - 1 }
        $blockMax = Get-MaxEvent ($lines[$from..$to] -join "`n")

        foreach ($field in $threadFields) {
            $fieldLines = @($lines[$from..$to] | Where-Object { $_ -match "^\s{2}$field\s*:" })
            if ($fieldLines.Count -eq 0) { continue }
            $fieldText = $fieldLines -join ' '
            if ($fieldText -notmatch $pendingPattern) { continue }
            $fieldMax = Get-MaxEvent $fieldText
            if ($fieldMax -le 0 -or $blockMax -le $fieldMax) { continue }

            $suspects++
            Write-Output ("OBSERVATION: {0}/{1} `{2}` asserts a pending thread and cites at most EVT-{3}, while its own block cites EVT-{4}. Verify against the chronicle before authoring from it (F-029)." -f `
                $campaign, $starts[$b].Id, $field, ([int]$fieldMax).ToString('D6'), ([int]$blockMax).ToString('D6'))
        }
    }
}

Write-Output ("OBSERVATION: entity thread-staleness sweep covered {0} entities across {1} ledger(s); {2} field(s) worth verifying." -f $scanned, $ledgers.Count, $suspects)
Write-Host "Entity thread staleness swept: $scanned entities, $suspects field(s) flagged for verification" -ForegroundColor Green
