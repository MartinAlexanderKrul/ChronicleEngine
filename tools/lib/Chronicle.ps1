# Decision 094 -- a campaign's chronicle is its live `160_CAMPAIGN_CHRONICLE.md`
# plus every sealed volume of it. The first seal pass moved EVT-000056 through
# EVT-001000 into `sealed/160_CAMPAIGN_CHRONICLE.vol01.md`, and each of those
# Events kept every obligation it had. So anything that reads Events to check
# or measure them -- a validator leg, a contract suite, an analysis tool --
# reads them all, oldest volume first and the live file last, which is the
# order they were written in.
#
# A reader that opens only the live file after a seal silently stops seeing
# most of the campaign's history, and a suite pinned to an early Event reports
# it missing. That is the failure this exists to prevent.

Set-StrictMode -Version Latest

function Get-ChronicleFiles {
    param([Parameter(Mandatory)][string]$CampaignRoot)

    $files = [System.Collections.Generic.List[string]]::new()
    $sealed = Join-Path $CampaignRoot "sealed"
    if (Test-Path -LiteralPath $sealed -PathType Container) {
        foreach ($volume in @(Get-ChildItem -LiteralPath $sealed -File -Filter "160_CAMPAIGN_CHRONICLE.vol*.md" | Sort-Object Name)) {
            $files.Add($volume.FullName) | Out-Null
        }
    }
    $live = Join-Path $CampaignRoot "160_CAMPAIGN_CHRONICLE.md"
    if (Test-Path -LiteralPath $live -PathType Leaf) {
        $files.Add($live) | Out-Null
    }
    return $files.ToArray()
}

function Get-ChronicleText {
    param([Parameter(Mandatory)][string]$CampaignRoot)

    $parts = foreach ($file in (Get-ChronicleFiles -CampaignRoot $CampaignRoot)) {
        [System.IO.File]::ReadAllText($file)
    }
    return ($parts -join "`n")
}

# The one file that holds a given piece of chronicle text, for a fixture that
# must mutate a specific Event wherever a seal has put it.
function Get-ChronicleFileContaining {
    param(
        [Parameter(Mandatory)][string]$CampaignRoot,
        [Parameter(Mandatory)][string]$Text
    )

    $holders = @(Get-ChronicleFiles -CampaignRoot $CampaignRoot | Where-Object {
        [System.IO.File]::ReadAllText($_).Contains($Text)
    })
    if ($holders.Count -ne 1) {
        throw "Expected exactly one chronicle file under $CampaignRoot to hold '$Text'; found $($holders.Count)."
    }
    return $holders[0]
}
