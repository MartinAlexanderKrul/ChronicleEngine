[CmdletBinding()]
param(
    [switch]$Quiet,
    # Suites to run at once. Half the cores, capped at twelve.
    #
    # Measured on 24 cores, whole suite: 1 -> 330 s, 3 -> 134 s, 4 -> 121 s,
    # 6 -> 108 s, 8 -> 91 s, 12 -> 83 s. The curve flattens because the suites
    # contend for disk, not CPU -- several still copy fixture trees -- so the
    # return past a dozen is small and the risk of thrashing a slower disk is
    # not. Raise it explicitly if the machine has the spindles for it.
    [int]$Throttle = 0,
    # Run one suite at a time, as this script used to. Kept for bisecting a
    # failure that only appears under concurrency.
    [switch]$Serial
)

# Tier 3 — the development regression suite (Recommendation R9).
#
# Runs every fixture and behavioural contract test. This is NOT a gameplay save
# gate: saving runs Tier 2 (`validate_checkpoint.ps1`), which is the one command
# the Save Algorithm, the save skill, the README, and the start guide name.
#
# The audit's target for this tier is under twenty seconds. This reports its own
# total so the gap stays visible rather than assumed.
#
# History, because the note that used to be here drew the wrong conclusion and
# that cost the next reader time. It reported the suite at 150 s, blamed
# "distributed interpretation across roughly a thousand lines of PowerShell",
# and concluded incremental optimization was exhausted -- that only porting the
# collection pass to a real parser (R10) could reach the target. Re-measured at
# 334 s, that was wrong about the cause. Three things were the cause:
#
#   1. `New-LineIndex` in validate_repository.ps1 built its offset array with
#      `[regex]::Matches` plus `| Out-Null` per newline -- a Match allocation
#      and a pipeline construction 34,658 times per run. 2.65 s of a 5.7 s
#      validation, 83% of the scan, on a gate this suite invokes ~35 times.
#      String.IndexOf does the same work in 0.04 s. It was hidden underneath
#      the quadratic line-number lookup fixed in the same pass, which is why
#      the earlier profile stopped one layer short of it.
#   2. test_commitment_settlement_gate.ps1 copied the whole 84 MB tree once per
#      case, sixteen times, to append one YAML block to one ledger.
#   3. This runner ran 31 suites one at a time on a 24-core machine.
#
# What remains after those is genuinely distributed, and R10 is the next lever
# if the target has to be met exactly.
#
# This also used to abort the whole run at the first failing suite. Under
# $ErrorActionPreference = "Stop", `2>&1` on a native command turns that
# command's stderr into a terminating error, so one failing suite took the
# report for the other thirty with it. Suites now run as processes with their
# streams redirected to files, and a suite's exit code is the only thing that
# decides its verdict.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$toolsRoot = $PSScriptRoot
$suites = Get-ChildItem -LiteralPath $toolsRoot -Filter "test_*.ps1" |
    Where-Object { $_.Name -ne "test_all.ps1" } |
    Sort-Object Name

if ($suites.Count -eq 0) {
    Write-Host "Tier 3 regression suite FAILED: no test_*.ps1 found in tools/" -ForegroundColor Red
    exit 1
}

if ($Serial) {
    $Throttle = 1
} elseif ($Throttle -le 0) {
    $Throttle = [math]::Max(1, [math]::Min([int]([Environment]::ProcessorCount / 2), 12))
}

$streamRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("chronicle-tier3-" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $streamRoot | Out-Null

$results = [System.Collections.Generic.List[object]]::new()
$running = [System.Collections.Generic.List[object]]::new()
$queue = [System.Collections.Generic.Queue[object]]::new()
foreach ($suite in $suites) { $queue.Enqueue($suite) }

function Complete-Suite {
    param($Job)

    $Job.Process.WaitForExit()
    $Job.Watch.Stop()

    # A suite is judged on its exit code alone. Text on stderr is not a failure
    # -- Python writes progress there -- and treating it as one is what made
    # passing suites look like crashes.
    $output = ""
    foreach ($stream in @($Job.OutPath, $Job.ErrorPath)) {
        if (Test-Path -LiteralPath $stream) {
            $text = [System.IO.File]::ReadAllText($stream)
            if (-not [string]::IsNullOrWhiteSpace($text)) { $output += $text }
        }
    }

    return [pscustomobject]@{
        Suite = $Job.Name
        Passed = ($Job.Process.ExitCode -eq 0)
        Seconds = [math]::Round($Job.Watch.Elapsed.TotalSeconds, 1)
        Output = $output.TrimEnd()
    }
}

$total = [Diagnostics.Stopwatch]::StartNew()

while ($queue.Count -gt 0 -or $running.Count -gt 0) {
    while ($running.Count -lt $Throttle -and $queue.Count -gt 0) {
        $suite = $queue.Dequeue()
        $outPath = Join-Path $streamRoot ($suite.BaseName + ".out")
        $errorPath = Join-Path $streamRoot ($suite.BaseName + ".err")
        $process = Start-Process -FilePath "powershell" `
            -ArgumentList @("-NoProfile", "-ExecutionPolicy", "Bypass", "-File", $suite.FullName) `
            -RedirectStandardOutput $outPath -RedirectStandardError $errorPath `
            -NoNewWindow -PassThru
        # Reading .Handle caches it, which is what makes .ExitCode readable once
        # the process is gone. Without this touch ExitCode comes back empty, and
        # empty is not zero: every suite in the run reports FAIL while passing.
        $null = $process.Handle
        $running.Add([pscustomobject]@{
            Name = $suite.Name
            Process = $process
            Watch = [Diagnostics.Stopwatch]::StartNew()
            OutPath = $outPath
            ErrorPath = $errorPath
        }) | Out-Null
    }

    $finished = @($running | Where-Object { $_.Process.HasExited })
    if ($finished.Count -eq 0) {
        Start-Sleep -Milliseconds 50
        continue
    }

    foreach ($job in $finished) {
        $result = Complete-Suite $job
        $results.Add($result) | Out-Null
        $running.Remove($job) | Out-Null

        if (-not $result.Passed) {
            Write-Host "FAIL  $($result.Suite)" -ForegroundColor Red
        } elseif (-not $Quiet) {
            Write-Host ("pass  {0,-44} {1,6}s" -f $result.Suite, $result.Seconds) -ForegroundColor DarkGray
        }
    }
}

$total.Stop()
Remove-Item -LiteralPath $streamRoot -Recurse -Force -ErrorAction SilentlyContinue

# The OBSERVATION channel (F-018).
#
# A suite asserts invariants: things that must hold in every reachable state. It
# also, sometimes, notices something true about the live campaign right now -- a
# board with no postings, a dry supply of concealed records. Those are worth
# saying and are NOT contract failures: an empty board is a state Section 9.10's
# own settlement rules produce, and no edit to the suite or the repository can
# clear it. Asserted as failures they made a green suite impossible for reasons
# only play could fix, which is what F-018 recorded.
#
# Any suite may write `OBSERVATION: <text>` to stdout. They are collected here
# from every suite, pass or fail, and reported apart from the verdict -- a
# passing suite's output is otherwise discarded, so without this they would be
# invisible in an aggregate run.
$observations = @(
    $results | Sort-Object Suite | ForEach-Object {
        $suiteName = $_.Suite
        [regex]::Matches($_.Output, '(?m)^OBSERVATION:[ \t]*(?<text>.+?)[ \t]*$') |
            ForEach-Object { [pscustomobject]@{ Suite = $suiteName; Text = $_.Groups['text'].Value } }
    }
)

if ($observations.Count -gt 0) {
    Write-Host ""
    Write-Host "Observations (live campaign state, not contract failures):" -ForegroundColor Yellow
    foreach ($observation in $observations) {
        Write-Host ("  [{0}] {1}" -f $observation.Suite, $observation.Text) -ForegroundColor Yellow
    }
}

# Completion order is not name order once suites overlap, so the failure report
# is sorted back into an order a reader can diff against a previous run.
$failures = @($results | Where-Object { -not $_.Passed } | Sort-Object Suite)

if ($failures.Count -gt 0) {
    Write-Host ""
    foreach ($failure in $failures) {
        Write-Host "--- $($failure.Suite) ---" -ForegroundColor Red
        Write-Host $failure.Output
        Write-Host ""
    }
    Write-Host "Tier 3 regression suite FAILED ($($failures.Count) of $($results.Count) suites) in $([math]::Round($total.Elapsed.TotalSeconds,1))s" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Tier 3 regression suite PASSED ($($results.Count) suites) in $([math]::Round($total.Elapsed.TotalSeconds,1))s" -ForegroundColor Green
if ($total.Elapsed.TotalSeconds -ge 20) {
    $slowest = ($results | Sort-Object Seconds -Descending | Select-Object -First 1)
    Write-Host ("  Note: over Recommendation R9's twenty-second target. The floor is now the slowest single suite, {0} at {1}s, which no amount of concurrency divides." -f $slowest.Suite, $slowest.Seconds) -ForegroundColor Yellow
}
exit 0
