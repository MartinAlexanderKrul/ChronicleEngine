[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

# Why this gate exists
#
# `.gitattributes` has declared `* text=auto eol=lf` -- LF in the index AND in
# the working tree -- since the endings policy was written, and it records two
# occasions when mixed endings produced false readings: "a concealed-record
# count that read 0 against a CRLF ledger while the identical pattern read 5
# against an LF one", and a test_progression_audit_contract diagnosis "sent down
# two blind alleys because `git checkout` and `git worktree` silently rewrote
# endings and broke different assertions than the real defect."
#
# The policy was never enforced against the WORKING TREE, and that is the gap it
# closes. `text=auto` normalises on compare, so a working file that is CRLF on
# disk while the index holds LF is reported CLEAN by `git status`. Git is
# satisfied; every tool in tools/ reads raw bytes and is not.
#
# It happened again on 2026-08-14. A play session left
# 160_CAMPAIGN_CHRONICLE.md CRLF in the working tree with LF in the index.
# `^kind:[ \t]*combat[ \t]*$` then matched 0 events instead of 36 -- `$` in .NET
# multiline mode matches before the `\n`, and the `\r` sits in the way. The
# boss-kill rule in validate_repository.ps1 skipped every Event in the campaign
# and validation reported PASSED: not because the records were sound, but
# because the check was not running.
#
# THAT IS WHY THIS IS ITS OWN GATE RATHER THAN A NOTE. A stale value fails one
# assertion. A CRLF file silently disables every multi-line anchor reading it,
# so a green suite underneath one proves nothing, and the failure surfaces
# somewhere unrelated to its cause.
#
# TWO THINGS ARE DELIBERATELY NOT RESTATED HERE.
#
# The policy is parsed from `.gitattributes`, never copied into this file -- a
# gate carrying its own duplicate of a rule that lives elsewhere is F-013's
# defect, which this repository has already met on a ladder ceiling, a budget
# literal and a test fixture.
#
# Which files are TEXT is likewise git's answer, not this gate's. Asking
# `git ls-files --eol` yields git's own reading of the attributes per path,
# including `-text` for the declared binaries and for anything it detects as
# binary. An extension allowlist maintained here would be the same duplication
# one level down, and would silently stop covering any new file type.

function Fail { param([string]$Message) throw $Message }

# --- 1. The policy has to exist before it can be enforced -------------------

$attrPath = Join-Path $root '.gitattributes'
if (-not (Test-Path -LiteralPath $attrPath -PathType Leaf)) {
    Fail ".gitattributes is missing; the line-ending policy has no owner and this gate would pass vacuously."
}
$attrText = Get-Content -LiteralPath $attrPath -Raw

$policy = [regex]::Match($attrText, '(?m)^\s*(?<glob>\S+)\s+[^\r\n]*\beol=(?<eol>\w+)')
if (-not $policy.Success) {
    Fail ".gitattributes declares no eol= policy; this gate has nothing to enforce and would pass vacuously."
}
$policyGlob = $policy.Groups['glob'].Value
$policyEol = $policy.Groups['eol'].Value
if ($policyEol -ne 'lf') {
    Fail "The declared policy is eol=$policyEol, which this gate does not know how to check. Update the gate with the policy."
}

# --- 2. Tracked files: git's inventory, git's per-path attributes -----------
#
# `git ls-files --eol` emits one row per tracked path:
#     i/lf    w/crlf  attr/text=auto eol=lf   <TAB>path
# `i/` is the index, `w/` the working tree. Both must read lf. `mixed` is worse
# than `crlf`: inconsistent endings inside a single file, so a pattern can match
# some records and skip others in the same read.

Push-Location $root
try {
    $rows = @(git ls-files --eol)
    if ($LASTEXITCODE -ne 0) { Fail "git ls-files --eol failed; cannot read the tracked inventory." }

    $untracked = @(git ls-files --others --exclude-standard)
    if ($LASTEXITCODE -ne 0) { Fail "git ls-files --others failed; cannot read the untracked inventory." }
}
finally { Pop-Location }

$checked = 0
$offenders = @()

foreach ($row in $rows) {
    if ($row -notmatch '^i/(?<i>\S*)\s+w/(?<w>\S*)\s+attr/(?<attr>.*?)\s*\t(?<path>.+)$') { continue }
    $i = $matches['i']; $w = $matches['w']; $path = $matches['path']

    # Not text by git's own reckoning -- declared `-text` (the PDFs) or detected
    # binary. The policy exempts these, so this gate does too.
    if ($i -eq '-text' -or $w -eq '-text') { continue }

    # A file with no line endings at all (single line, or empty) cannot offend.
    if ($i -eq 'none' -and $w -eq 'none') { $checked++; continue }

    $checked++
    if ($i -ne 'lf' -or $w -ne 'lf') {
        $offenders += [pscustomobject]@{ Path = $path; Index = $i; Worktree = $w; Tracked = $true }
    }
}

# --- 3. Untracked-but-not-ignored files ------------------------------------
#
# The tracked sweep cannot see a file that has just been written and not yet
# added, which is exactly how this defect arrives. Ignored paths are excluded by
# `--exclude-standard`, so scratch trees stay out on git's judgement, not a
# pattern list maintained here.

foreach ($rel in $untracked) {
    $full = Join-Path $root $rel
    if (-not (Test-Path -LiteralPath $full -PathType Leaf)) { continue }

    $bytes = [IO.File]::ReadAllBytes($full)
    if ($bytes.Length -eq 0) { continue }

    $crlf = 0; $lf = 0; $nul = $false
    for ($n = 0; $n -lt $bytes.Length; $n++) {
        if ($bytes[$n] -eq 0) { $nul = $true; break }
        if ($bytes[$n] -eq 10) {
            $lf++
            if ($n -gt 0 -and $bytes[$n - 1] -eq 13) { $crlf++ }
        }
    }
    if ($nul) { continue }   # binary, on the same test git applies

    $checked++
    if ($crlf -gt 0) {
        $w = if ($crlf -eq $lf) { 'crlf' } else { 'mixed' }
        $offenders += [pscustomobject]@{ Path = $rel; Index = '-'; Worktree = $w; Tracked = $false }
    }
}

# --- 4. Refuse to pass on an empty sweep -----------------------------------
#
# The failure this gate exists to catch is a check that reports success because
# it never ran. It would be an poor joke to reproduce that here.

if ($checked -lt 100) {
    Fail "Only $checked files were examined; the enumeration is broken and this gate would pass vacuously."
}

if ($offenders.Count -gt 0) {
    # @() around every filtered collection: with exactly one offender these
    # collapse to a bare object, and `.Count` on a bare object is a StrictMode
    # error -- which would crash the gate precisely when it had found the single
    # newly-broken file it exists to report.
    $shown = @($offenders | Sort-Object Worktree, Path | Select-Object -First 40)
    $lines = @($shown | ForEach-Object { "  i/{0,-5} w/{1,-5} {2}" -f $_.Index, $_.Worktree, $_.Path })
    if ($offenders.Count -gt $shown.Count) {
        $lines += "  ... and $($offenders.Count - $shown.Count) more"
    }

    $idxBad = @($offenders | Where-Object { $_.Index -ne 'lf' -and $_.Index -ne '-' }).Count

    Fail (@(
        "$($offenders.Count) file(s) violate the '$policyGlob' eol=$policyEol policy:"
        ""
        $lines
        ""
        "This is not a cosmetic offence. Multi-line anchors in tools/ are load-bearing,"
        "and a `$-anchored pattern cannot match a line that ends in CR -- so the checks"
        "reading these files stop firing and report success. git will not warn you:"
        "text=auto normalises on compare, so `git status` calls a CRLF working file"
        "clean while the index holds LF. 'mixed' is worse still: a pattern can match"
        "some records in a file and silently skip others."
        ""
        $(if ($idxBad -gt 0) {
            "$idxBad of these are wrong IN THE INDEX (i/ is not lf), so the committed"
            "bytes are the problem, not just the checkout. Renormalise and commit."
        } else {
            "Every offender is LF in the index, so the committed canon is already correct"
            "and only the checkout is wrong. Rewriting the working files to LF leaves the"
            "index byte-identical -- which is why .gitattributes takes no exception for"
            "the frozen checkpoints under saves/: normalising them changes no canon."
        })
        ""
        "Fix: rewrite the offending files with LF endings, then confirm with"
        "  git ls-files --eol <path>     -> must read  i/lf  w/lf"
    ) -join "`n")
}

Write-Host "Line endings contract PASSED"
Write-Host "  policy: '$policyGlob' eol=$policyEol, parsed from .gitattributes"
Write-Host "  text-ness: git's own per-path attributes, not an extension list"
Write-Host "  files examined: $checked ($($rows.Count) tracked rows, $($untracked.Count) untracked); offenders: 0"
exit 0
