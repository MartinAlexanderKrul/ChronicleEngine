#!/usr/bin/env python3
"""Structured validation of live Persistent Object Blocks (Recommendation R10).

`validate_repository.ps1` locates and checks these blocks with regular
expressions. That proves fields are *present*; it cannot prove the block is
well-formed YAML, and the survey behind this gate found real defects it had
been reporting clean: two Events whose description embedded a bare ``` fence
and so truncated their own block, four multi-paragraph values that were not
parseable as written, three misnested keys, and a duplicate key carrying two
different values where a parser silently keeps one.

This gate parses each block with a real YAML parser and checks the structural
facts regex cannot see:

  * the block parses at all, and is a mapping;
  * no duplicate keys anywhere in it;
  * exactly one object identifier per block;
  * required fields carry the right *type*, not merely a matching line;
  * provenance is a mapping that owns its own date fields, so a record whose
    dates never landed inside it fails instead of passing unnoticed;
  * status is one of the values the repository actually uses.

Meaning stays where it was: identifier allocation, cross-references, counter
arithmetic, and canon rules remain with the existing validator. This adds the
structural floor beneath them.

All reads are UTF-8 explicitly, per R10.
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
        "Object block validation FAILED "
        "(PyYAML is unavailable; install tools/requirements.txt).",
        file=sys.stderr,
    )
    sys.exit(2)


FENCE = re.compile(r"(?ms)^```ya?ml[ \t]*\r?\n(.*?)^```[ \t]*$")
ID_LINE = re.compile(r"(?m)^[ \t]*id:[ \t]*\S")
OBJECT_ID = re.compile(r"^(ENT|REC|EVT|REL)-\d{6}$")

REQUIRED_STRING_FIELDS = ("canonical_record", "schema_version", "status")
PROVENANCE_REQUIRED = ("source", "game_date", "real_date")
LEGACY_PROVENANCE = ("date", "record_time", "timestamp")
KNOWN_STATUSES = {
    "active", "archived", "terminated", "deceased", "unused",
    "complete", "completed", "failed", "abandoned", "superseded",
}
# A top-level `game_date` is NOT a misnesting: under Decision 077 an Event
# carries the fiction time it occurred at the top level, while
# `provenance.game_date` records the fiction time the record was written. Both
# are correct and both appear together across the whole live chronicle. The
# misnesting R10 names is a date field that landed outside provenance *instead
# of* inside it, which the provenance-required check below already catches.

SCANNED_ROOTS = ("campaigns", "worlds", "system")


def live_markdown(root: Path) -> list[Path]:
    found: list[Path] = []
    for base in SCANNED_ROOTS:
        directory = root / base
        if not directory.is_dir():
            continue
        for path in sorted(directory.rglob("*.md")):
            relative = path.relative_to(root).as_posix()
            if "/saves/" in relative or "/.saves/" in relative:
                continue
            found.append(path)
    return found


class UniqueKeyLoader(yaml.SafeLoader):
    """SafeLoader that refuses duplicate mapping keys instead of keeping the last."""


def _construct_mapping(loader: UniqueKeyLoader, node: yaml.MappingNode, deep: bool = False):
    mapping: dict[Any, Any] = {}
    for key_node, value_node in node.value:
        key = loader.construct_object(key_node, deep=deep)
        if key in mapping:
            raise yaml.constructor.ConstructorError(
                "while constructing a mapping",
                node.start_mark,
                f"found duplicate key {key!r}",
                key_node.start_mark,
            )
        mapping[key] = loader.construct_object(value_node, deep=deep)
    return mapping


UniqueKeyLoader.add_constructor(
    yaml.resolver.BaseResolver.DEFAULT_MAPPING_TAG, _construct_mapping
)


def validate_block(
    display: str, line: int, body: str, schema_version: str, failures: list[str]
) -> None:
    where = f"{display}:{line}"
    try:
        data = yaml.load(body, Loader=UniqueKeyLoader)
    except yaml.YAMLError as error:
        problem = getattr(error, "problem", None) or str(error).strip().splitlines()[0]
        mark = getattr(error, "problem_mark", None)
        at = f" near block line {mark.line + 1}" if mark is not None else ""
        failures.append(f"{where} object block does not parse as YAML{at}: {problem}")
        return

    if not isinstance(data, dict):
        failures.append(
            f"{where} object block is {type(data).__name__}, not a mapping"
        )
        return

    identifier = data.get("id")
    if not isinstance(identifier, str):
        failures.append(f"{where} object block id must be a string")
        return
    if not OBJECT_ID.match(identifier):
        failures.append(
            f"{where} object id {identifier!r} is not a six-digit ENT/REC/EVT/REL identifier"
        )
        return

    declared_ids = len(ID_LINE.findall(body))
    if declared_ids != 1:
        failures.append(
            f"{where} object {identifier} block declares {declared_ids} id fields; "
            "the schema expects exactly one object per block"
        )

    for field in REQUIRED_STRING_FIELDS:
        value = data.get(field)
        if value is None:
            failures.append(f"{where} object {identifier} is missing required field '{field}'")
        elif not isinstance(value, str):
            failures.append(
                f"{where} object {identifier} field '{field}' is "
                f"{type(value).__name__}, expected a string"
            )

    status = data.get("status")
    if isinstance(status, str) and status not in KNOWN_STATUSES:
        failures.append(
            f"{where} object {identifier} declares unknown status {status!r}; "
            f"known values are {sorted(KNOWN_STATUSES)}"
        )

    declared_schema = data.get("schema_version")
    if isinstance(declared_schema, str) and declared_schema != schema_version:
        failures.append(
            f"{where} object {identifier} declares schema_version {declared_schema!r} "
            f"but live canon must conform to Data Model {schema_version}"
        )

    provenance = data.get("provenance")
    if provenance is None:
        failures.append(f"{where} object {identifier} is missing required field 'provenance'")
        return
    if not isinstance(provenance, dict):
        failures.append(
            f"{where} object {identifier} provenance is "
            f"{type(provenance).__name__}, expected a mapping"
        )
        return
    for field in PROVENANCE_REQUIRED:
        if field not in provenance:
            failures.append(
                f"{where} object {identifier} provenance is missing required field '{field}'"
            )
        elif not isinstance(provenance[field], (str, int)):
            failures.append(
                f"{where} object {identifier} provenance field '{field}' is "
                f"{type(provenance[field]).__name__}, expected a scalar"
            )
    for field in LEGACY_PROVENANCE:
        if field in provenance:
            failures.append(
                f"{where} object {identifier} provenance uses legacy field '{field}'; "
                f"Data Model {schema_version} requires game_date/real_date"
            )


def validate(root: Path, schema_version: str) -> tuple[list[str], int]:
    failures: list[str] = []
    blocks = 0
    for path in live_markdown(root):
        display = path.relative_to(root).as_posix()
        text = path.read_text(encoding="utf-8")
        for match in FENCE.finditer(text):
            body = match.group(1)
            if not ID_LINE.search(body):
                continue
            blocks += 1
            line = text[: match.start()].count("\n") + 1
            validate_block(display, line, body, schema_version, failures)
    return failures, blocks


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repository-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--schema-version", default="0.1.5")
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()

    root = Path(args.repository_root).resolve()
    failures, blocks = validate(root, args.schema_version)
    if failures:
        print(f"Object block validation FAILED ({len(failures)} error(s))")
        for failure in failures:
            print(f"  - {failure}")
        return 1
    if not args.quiet:
        print("Object block validation PASSED")
        print(f"  Structured object blocks: {blocks}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
