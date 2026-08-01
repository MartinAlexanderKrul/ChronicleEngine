[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$runner = Join-Path $PSScriptRoot "generate_validation_evidence.ps1"
$target = "docs/430_RUNTIME_PERSISTENCE_VALIDATION/432_GATEFALL_PROTOTYPE_LOG.md"

# Why this test exists
#
# Version 0.3 postmortem, Finding 4: operational metadata decays wherever
# nothing reads it. The prototype log drifted twenty-eight checkpoints and five
# decisions behind live state -- inside the document the postmortem depends on
# -- and then drifted four checkpoints further within a day of being reconciled
# by hand. The worlds-and-campaigns index and the campaign cast roster never
# drifted, because both are generated and checked. This applies that pattern to
# the derivable half of the validation record.
#
# What the suite pins is the split. A generator that also emitted verdicts or
# evidence classes would be authoritative and wrong -- the limit Decision 071
# recorded when the same question was put to the index -- so the boundary
# between generated fact and hand-written judgment is itself under test.

$failures = [System.Collections.Generic.List[string]]::new()

function Invoke-Runner {
    param([string]$RepositoryRoot, [switch]$Check)
    $arguments = @("-NoProfile", "-ExecutionPolicy", "Bypass", "-File", $runner,
                   "-RepositoryRoot", $RepositoryRoot)
    if ($Check) { $arguments += "-Check" }
    $output = & powershell @arguments 2>&1 | ForEach-Object { $_.ToString() }
    return [pscustomobject]@{ ExitCode = $LASTEXITCODE; Output = ($output -join "`n") }
}

# --- Leg 1: the live record is synchronized -------------------------------
$live = Invoke-Runner -RepositoryRoot $root -Check
if ($live.ExitCode -ne 0) {
    $failures.Add("The live validation evidence block is stale. Run generate_validation_evidence.ps1. Output: $($live.Output)") | Out-Null
}

# --- Leg 2: staleness is actually detected --------------------------------
#
# A -Check that cannot fail is indistinguishable from one that always passes,
# which is the whole failure class this work exists to close. Mutate a copy and
# require rejection.
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-evidence-" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $tempRoot | Out-Null
try {
    foreach ($name in @("campaigns", "docs", "tools")) {
        Copy-Item -LiteralPath (Join-Path $root $name) -Destination $tempRoot -Recurse
    }

    $copyTarget = Join-Path $tempRoot $target
    $text = [System.IO.File]::ReadAllText($copyTarget)

    # Bend one derived figure, exactly as a hand edit or an unabsorbed session
    # would. The check must notice.
    $mutated = [regex]::Replace($text, '(?m)^\*\*Checkpoints:\*\* \d+', '**Checkpoints:** 3', 1)
    if ($mutated -eq $text) {
        $failures.Add("Could not find the generated checkpoint count to mutate; the block shape has changed and this test no longer proves anything.") | Out-Null
    } else {
        [System.IO.File]::WriteAllText($copyTarget, $mutated)
        $stale = Invoke-Runner -RepositoryRoot $tempRoot -Check
        if ($stale.ExitCode -eq 0) {
            $failures.Add("A mutated evidence block passed -Check; staleness is not detected.") | Out-Null
        } elseif ($stale.Output -notmatch 'stale') {
            $failures.Add("Staleness was rejected but not reported as staleness. Output: $($stale.Output)") | Out-Null
        }

        # --- Leg 3: regeneration is idempotent and repairs the mutation ----
        $repair = Invoke-Runner -RepositoryRoot $tempRoot
        if ($repair.ExitCode -ne 0) {
            $failures.Add("Regeneration failed on a mutated copy: $($repair.Output)") | Out-Null
        }
        $again = Invoke-Runner -RepositoryRoot $tempRoot -Check
        if ($again.ExitCode -ne 0) {
            $failures.Add("Regeneration did not restore a synchronized block: $($again.Output)") | Out-Null
        }
        $second = Invoke-Runner -RepositoryRoot $tempRoot
        if ($second.Output -notmatch 'already current') {
            $failures.Add("Regeneration is not idempotent; a second run changed the file again. Output: $($second.Output)") | Out-Null
        }
    }

    # --- Leg 4: a missing marker pair fails loudly rather than silently ----
    $markerRoot = Join-Path $tempRoot "no-markers"
    New-Item -ItemType Directory -Path $markerRoot | Out-Null
    foreach ($name in @("campaigns", "docs", "tools")) {
        Copy-Item -LiteralPath (Join-Path $root $name) -Destination $markerRoot -Recurse
    }
    $markerTarget = Join-Path $markerRoot $target
    $strippedText = [System.IO.File]::ReadAllText($markerTarget) -replace '<!-- BEGIN GENERATED: evidence-state -->', ''
    [System.IO.File]::WriteAllText($markerTarget, $strippedText)
    $missing = Invoke-Runner -RepositoryRoot $markerRoot -Check
    if ($missing.ExitCode -eq 0) {
        $failures.Add("A document with no generated-block markers passed -Check; the block could be deleted entirely and nothing would notice.") | Out-Null
    }
} finally {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
}

# --- Leg 5: judgment stays outside the generated block --------------------
#
# The split is the point. If a verdict ever lands inside the markers, a
# generator is deciding something only a reader can.
$liveText = [System.IO.File]::ReadAllText((Join-Path $root $target))
$blockMatch = [regex]::Match($liveText, '(?s)<!-- BEGIN GENERATED: evidence-state -->(.*?)<!-- END GENERATED: evidence-state -->')
if (-not $blockMatch.Success) {
    $failures.Add("The live prototype log carries no generated evidence-state block.") | Out-Null
} else {
    $block = $blockMatch.Groups[1].Value
    foreach ($word in @('Verdict:', 'Observed pass', 'Result:', 'Matrix cases:')) {
        if ($block -match [regex]::Escape($word)) {
            $failures.Add("The generated block contains '$word', which is judgment. Generated content must stay to derivable fact (Decision 071).") | Out-Null
        }
    }
    if ($block -notmatch 'not generated') {
        $failures.Add("The generated block does not state its own boundary, so a reader cannot tell which half is derived.") | Out-Null
    }
}

if ($failures.Count -gt 0) {
    Write-Host "Validation evidence generation FAILED ($($failures.Count) case(s))" -ForegroundColor Red
    foreach ($failure in $failures) { Write-Host "  - $failure" }
    exit 1
}

Write-Host "Validation evidence generation PASSED"
exit 0
