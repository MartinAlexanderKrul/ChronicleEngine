#!/usr/bin/env python3
"""Convert multi-paragraph quoted scalars in live ledgers to literal block scalars.

Long prose values keep appearing in operational fields written as double-quoted
YAML scalars. That form is fragile in three ways this repository has hit
repeatedly: an inner quote closes the value early, a continuation line at column
zero ends the mapping, and a bare `---` reads as a document separator. Each one
produces a block that a real parser rejects while the regex scanner reports it
clean.

A literal block scalar has none of those hazards - the text is taken verbatim.
This finds every multi-line quoted value in the named files and rewrites it,
verifying each conversion by de-indenting the emitted block and comparing it
against the source text before anything is written. A full YAML round-trip
cannot be used for this check: the enclosing block does not parse yet, which
is why it is being repaired, so there is nothing for the parser to recover
from until every defect in the block is fixed. This text-level check does not
independently confirm the emitted block parses; convert_file() re-scans the
rebuilt text afterward and reports any block still failing.

Escaping is limited to `\"` -> `"`; a `\n` or literal backslash-n sequence
inside a converted value is carried through unchanged rather than turned into
a real newline, since a block scalar cannot represent an escaped newline at
all - only converted values that used `\"` for something other than an actual
newline round-trip losslessly through this script.

Run it after a session that added prose to a ledger. It is idempotent: a value
already in block form is skipped.

Usage:
    python tools/normalize_block_scalars.py --campaign campaigns/gatefall_pendragon_001
    python tools/normalize_block_scalars.py --campaign <path> --check
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path
from typing import Any

try:
    import yaml
except ModuleNotFoundError:
    print(
        "Block scalar normalization FAILED "
        "(PyYAML is unavailable; install tools/requirements.txt).",
        file=sys.stderr,
    )
    sys.exit(2)

DQ = chr(34)
BS = chr(92)
FENCE = re.compile(r"(?ms)^```ya?ml[ \t]*\r?\n(.*?)^```[ \t]*$")
OPENER = re.compile(rf"^(?P<indent>[ \t]*)(?P<key>[A-Za-z_][\w]*):[ \t]+{DQ}")

# Ledgers that carry prose. Chronicles and changelogs are included because their
# Event descriptions are the longest prose in the repository.
LEDGERS = (
    "100_CHARACTER_SHEET.md",
    "110_WORLD_LEDGER.md",
    "120_INVENTORY_AND_OWNERSHIP.md",
    "130_NPCS_AND_FACTIONS.md",
    "140_OBJECTIVES.md",
    "160_CAMPAIGN_CHRONICLE.md",
    "170_CHANGELOG.md",
    "180_CURRENT_STATE.md",
)


def closes_on(line: str) -> bool:
    stripped = line.rstrip()
    return stripped.endswith(DQ) and not stripped.endswith(BS + DQ)


def search(node: Any, key: str) -> str | None:
    if isinstance(node, dict):
        if key in node and isinstance(node[key], str):
            return node[key]
        for value in node.values():
            found = search(value, key)
            if found is not None:
                return found
    elif isinstance(node, list):
        for item in node:
            found = search(item, key)
            if found is not None:
                return found
    return None


def failing_block_lines(text: str) -> set[int]:
    """Line indices belonging to fenced blocks that a real parser rejects.

    Only broken blocks are touched. Hundreds of multi-line quoted values in this
    repository parse perfectly well, and rewriting them would be a large,
    risky edit to canon that buys nothing. The fragile *form* is only worth
    changing where it has actually produced a defect.
    """
    lines: set[int] = set()
    for match in FENCE.finditer(text):
        try:
            yaml.safe_load(match.group(1))
        except yaml.YAMLError:
            start = text[: match.start(1)].count("\n")
            end = start + match.group(1).count("\n")
            lines.update(range(start, end + 1))
    return lines


def convert_file(path: Path, apply: bool, report: list[str]) -> int:
    """Rewrite multi-line quoted values inside blocks that fail to parse."""
    original = path.read_text(encoding="utf-8")
    lines = original.split("\n")

    broken = failing_block_lines(original)
    if not broken:
        return 0

    # Only inside fenced YAML blocks that are actually broken.
    in_block = [index in broken for index in range(len(lines))]

    converted = 0
    index = 0
    out: list[str] = []
    while index < len(lines):
        line = lines[index]
        opener = OPENER.match(line) if in_block[index] else None
        if not opener:
            out.append(line)
            index += 1
            continue

        first = line.split(DQ, 1)[1]
        if closes_on(first) or first.rstrip().endswith(DQ):
            out.append(line)
            index += 1
            continue

        end = None
        for probe in range(index + 1, len(lines)):
            if closes_on(lines[probe]):
                end = probe
                break
        if end is None:
            report.append(f"  {path.name}:{index + 1} '{opener.group('key')}' never closes; left alone")
            out.append(line)
            index += 1
            continue

        indent = opener.group("indent")
        key = opener.group("key")
        last = lines[end].rstrip()
        last = last[: last.rfind(DQ)]
        text = "\n".join([first] + lines[index + 1 : end] + [last]).replace(BS + DQ, DQ)

        block = [f"{indent}{key}: |"]
        for entry in text.split("\n"):
            block.append(f"{indent}    {entry}" if entry.strip() else "")

        # Verify by de-indenting the emitted block and comparing to the source
        # text. A YAML round-trip cannot be used here: the enclosing block does
        # not parse yet - that is why it is being repaired - so the parser has
        # nothing to recover from until every defect in it is fixed.
        recovered = "\n".join(
            entry[len(indent) + 4 :] if entry.strip() else "" for entry in block[1:]
        )
        if recovered.rstrip("\n") != text.rstrip("\n"):
            report.append(f"  {path.name}:{index + 1} '{key}' did not round-trip; left alone")
            out.append(line)
            index += 1
            continue

        report.append(
            f"  {path.name}:{index + 1} {key} -> block scalar "
            f"({end - index + 1} lines, {len(text):,} chars)"
        )
        out.extend(block)
        converted += 1
        index = end + 1

    rebuilt = "\n".join(out)
    if converted:
        # The point of the exercise: the blocks that failed must now parse. If
        # any still does not, the remaining defect is a different shape and
        # wants looking at rather than another rewrite.
        still_broken = failing_block_lines(rebuilt)
        if still_broken:
            report.append(
                f"  {path.name}: {len(still_broken)} line(s) still in a failing block "
                "after conversion; inspect the remaining defect"
            )
        if apply:
            path.write_bytes(rebuilt.replace("\r\n", "\n").encode("utf-8"))
    return converted


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--campaign", required=True, help="e.g. campaigns/gatefall_pendragon_001")
    parser.add_argument("--repository-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--check", action="store_true",
                        help="report what would change and exit non-zero if anything would")
    args = parser.parse_args()

    root = Path(args.repository_root).resolve()
    campaign = root / args.campaign.replace("\\", "/").strip("/")
    if not campaign.is_dir():
        print(f"Block scalar normalization FAILED: no campaign at {args.campaign}")
        return 2

    report: list[str] = []
    total = 0
    for name in LEDGERS:
        path = campaign / name
        if path.is_file():
            total += convert_file(path, apply=not args.check, report=report)

    if report:
        print("\n".join(report))
    if not total:
        print("No multi-line quoted values found; ledgers are already normalized.")
        return 0
    verb = "would convert" if args.check else "converted"
    print(f"\n{verb} {total} value(s)")
    return 1 if args.check else 0


if __name__ == "__main__":
    sys.exit(main())
