[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

# Why this gate exists
#
# Every other budget in system/RUNTIME_CONTEXT_BUDGETS.yaml measures a LOAD --
# what a declared operation pulls into context on purpose. None measured a READ:
# one agent opening one file to find something out.
#
# That is a different limit and it fails silently. A load over budget trips a
# gate; a read over cap returns a truncated view with no error, so the reader
# does not know what it did not see. `100_CHARACTER_SHEET.md` reached 247,496
# bytes -- roughly twice the cap -- while readiness measured a flat ~10,000
# tokens for it the whole time, because readiness reads that file by field
# selector. Nothing was wrong with the load. The file had simply become
# unreadable, and the way that surfaced was a person trying to open it.
#
# The rule is NOT "every file stays small". A chronicle is append-only by design
# and will pass a million bytes correctly. The rule is that an over-cap file must
# declare how it is read in bounded pieces, and that declaration must exist where
# a reader will find it.
#
# So there are exactly two conforming states for a live file:
#   1. under the cap, or
#   2. over the cap AND listed in `read_cap.bounded_read_required` with a `how`.
#
# Anything else fails, in either direction: an undeclared over-cap file, or a
# declaration for a file that no longer needs one (which would rot into a list
# nobody trusts).

function Fail { param([string]$Message) throw $Message }

$budgetPath = Join-Path $root 'system/RUNTIME_CONTEXT_BUDGETS.yaml'
if (-not (Test-Path -LiteralPath $budgetPath -PathType Leaf)) {
    Fail "system/RUNTIME_CONTEXT_BUDGETS.yaml is missing; the read cap has no owner."
}
$budgetText = Get-Content -LiteralPath $budgetPath -Raw

# Parse the read_cap block. Anchored to a top-level key so a nested `read_cap:`
# elsewhere cannot shadow it -- the same mistake test_runtime_context_budget.ps1
# made with `resident:` and had to fix.
$capBlock = [regex]::Match($budgetText, '(?ms)^read_cap:\r?\n(?<body>.*?)(?=^\S)')
if (-not $capBlock.Success) { Fail "No top-level `read_cap:` block in RUNTIME_CONTEXT_BUDGETS.yaml." }
$body = $capBlock.Groups['body'].Value

$capMatch = [regex]::Match($body, '(?m)^\s*tokens:\s*(?<v>\d+)')
if (-not $capMatch.Success) { Fail "read_cap declares no `tokens:` value." }
$cap = [int]$capMatch.Groups['v'].Value

$ratioMatch = [regex]::Match($body, '(?m)^\s*tokens_per_byte:\s*(?<v>[0-9.]+)')
if (-not $ratioMatch.Success) { Fail "read_cap declares no `tokens_per_byte:` ratio." }
$ratio = [double]$ratioMatch.Groups['v'].Value

# A parse yielding nonsense would make every assertion below vacuous.
if ($cap -lt 4000 -or $cap -gt 400000) { Fail "Parsed read cap ($cap) is outside any plausible range; the parse is wrong." }
if ($ratio -le 0.01 -or $ratio -ge 1) { Fail "Parsed tokens_per_byte ($ratio) is implausible; the parse is wrong." }

$declared = @{}
foreach ($m in [regex]::Matches($body, '(?m)^\s*-\s*file:\s*(?<f>\S+)\s*\r?\n\s*how:\s*(?<h>.+)$')) {
    $declared[$m.Groups['f'].Value.Trim()] = $m.Groups['h'].Value.Trim()
}
if ($declared.Count -lt 1) { Fail "read_cap.bounded_read_required is empty; this gate would pass vacuously." }

# Live files only. Checkpoints are byte-immutable under Rules Section 13.3, so an
# over-cap snapshot is not a defect; exports and tmp are derived.
# Exclusions are matched on the path RELATIVE to $root, never the absolute path.
# This gate must give the same answer run from the repository or from a worktree
# under `.claude/worktrees/`, and an absolute-path exclusion for nested worktrees
# silently matches every file when the gate itself is running inside one -- which
# enumerated zero files and would have passed vacuously but for the floor below.
$exts = @('.md', '.yaml', '.yml', '.ps1', '.py')
$live = @()
foreach ($f in (Get-ChildItem -LiteralPath $root -Recurse -File)) {
    if ($exts -notcontains $f.Extension) { continue }
    $rel = $f.FullName.Substring($root.Length + 1).Replace('\', '/')
    if ($rel -match '(^|/)saves/')      { continue }
    if ($rel -match '(^|/)exports/')    { continue }
    if ($rel -match '(^|/)tmp/')        { continue }
    if ($rel -match '^\.claude/worktrees/') { continue }
    # Any dot-prefixed path segment is scratch, not canon: `.git`, `.tmp`,
    # `.tmp/checkpoint-recovery`, and the `.900_CHECKPOINT_*.staging-*` /
    # `_RELAY` directories the rollback path leaves behind. This repository
    # already treats dot-prefixed as scratch -- `generate_validation_evidence.py`
    # excludes exactly these from its `saves/` glob after they broke a run
    # (F-010). Matching only `tmp/` missed `.tmp/`, which is where the recovery
    # artifacts actually live, and the gate failed on files no reader will open.
    if ($rel -match '(^|/)\.[^/]+/') { continue }
    $live += [pscustomobject]@{ Path = $rel; Bytes = $f.Length }
}
if ($live.Count -lt 50) { Fail "Only $($live.Count) live files enumerated; the scan is wrong and this gate would pass vacuously." }

$over = @()
foreach ($f in $live) {
    $tokens = [math]::Round($f.Bytes * $ratio)
    if ($tokens -gt $cap) {
        $over += [pscustomobject]@{ Path = $f.Path; Bytes = $f.Bytes; Tokens = $tokens }
    }
}

$undeclared = @($over | Where-Object { -not $declared.ContainsKey($_.Path) })
if ($undeclared.Count -gt 0) {
    $lines = $undeclared | Sort-Object Bytes -Descending | ForEach-Object {
        "  {0,7} tokens ({1}x cap)  {2}" -f $_.Tokens, [math]::Round($_.Tokens / $cap, 1), $_.Path
    }
    Fail (@(
        "$($undeclared.Count) live file(s) exceed the $cap-token read cap with no declared bounded read path:"
        $lines
        "A reader opening one of these gets a truncated view and no error."
        "Either bring the file under the cap, or add it to read_cap.bounded_read_required in"
        "system/RUNTIME_CONTEXT_BUDGETS.yaml with a `how:` naming the selector, id, or fence a reader must use."
    ) -join "`n")
}

# The reverse: a declaration for a file that is now under the cap, or gone. Left
# in place, the list becomes something nobody trusts -- F-013's class.
$overPaths = @($over | ForEach-Object { $_.Path })
$stale = @($declared.Keys | Where-Object { $overPaths -notcontains $_ })
if ($stale.Count -gt 0) {
    Fail (@(
        "read_cap.bounded_read_required lists $($stale.Count) file(s) that no longer need a declaration:"
        ($stale | ForEach-Object { "  $_" })
        "Each is now under the cap or absent. Remove the entry; a list carrying dead rows stops being read."
    ) -join "`n")
}

# The mandatory reading list may not name a file a session cannot read. This is
# the concrete instance the cap was ruled on: docs/INDEX.md said "Every new
# session should begin by reading the files below" and two entries were 3x and
# 2.7x the cap -- including the ADR log, which is where a session learns what has
# already been decided.
$indexPath = Join-Path $root 'docs/INDEX.md'
if (Test-Path -LiteralPath $indexPath -PathType Leaf) {
    $indexText = Get-Content -LiteralPath $indexPath -Raw
    $listed = @([regex]::Matches($indexText, '(?m)^\d+\.\s+(?<p>[^\s]+\.md)\s*$') | ForEach-Object { $_.Groups['p'].Value })
    $badListed = @()
    foreach ($p in $listed) {
        $full = Join-Path $root $p
        if (-not (Test-Path -LiteralPath $full -PathType Leaf)) { continue }
        $tok = [math]::Round((Get-Item -LiteralPath $full).Length * $ratio)
        if ($tok -gt $cap) { $badListed += "  {0,7} tokens ({1}x cap)  {2}" -f $tok, [math]::Round($tok / $cap, 1), $p }
    }
    if ($badListed.Count -gt 0) {
        Fail (@(
            "docs/INDEX.md instructs a session to read file(s) it cannot read in one pass:"
            $badListed
            "Name the bounded read path in the index entry instead of asking for the whole file."
        ) -join "`n")
    }
}

Write-Host "Read cap contract PASSED"
Write-Host "  cap: $cap tokens at $ratio tokens/byte"
Write-Host "  live files scanned: $($live.Count); over cap: $($over.Count); all declared"
exit 0
