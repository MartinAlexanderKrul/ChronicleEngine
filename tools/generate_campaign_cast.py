#!/usr/bin/env python3
"""Generate each campaign's derived cast roster from its NPC ledger.

Why this exists
---------------
A campaign's NPC ledger is authoritative and far too large to preload -- Gatefall
is over 250 KB against a readiness ceiling that cannot hold a tenth of it -- so
every derived operation plan lists it `available_on_demand` and readiness never
opens it. That is correct for the *records*. It also meant readiness knew nothing
about *who exists*: the only NPC material a resumed session carried was whatever
prose a writer had hand-copied into Current State, which in the live prototype
was one relationship out of thirty-eight entities.

This emits the index that gap needs: one line per entity, naming it, what it is,
where it was last placed, and whether it holds a relationship with the
protagonist. Not the record -- the record is still fetched at the encounter, and
the resident core requires that fetch. This is the list that makes the fetch
possible: a Runtime cannot request a record for an NPC it does not know exists,
and cannot notice it has invented one.

The artifact is derived and disposable (`templates/000_TEMPLATE_CONVENTIONS.md`
Section 8). It carries no identifier, establishes no canon, and is regenerated
from the ledger rather than edited. `--check` proves it is synchronized, the same
contract `generate_runtime_index.py` holds for the worlds-and-campaigns index.
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path
from typing import Any

sys.dont_write_bytecode = True

try:
    import yaml
except ModuleNotFoundError:
    print(
        "Campaign cast generation FAILED "
        "(PyYAML is unavailable; install tools/requirements.txt).",
        file=sys.stderr,
    )
    sys.exit(2)

from validate_runtime_configuration import (
    load_single_fenced_yaml,
    normalize_repo_path,
    read_text,
    resolve_repo_path,
)


FENCE = re.compile(r"(?ms)^```ya?ml[ \t]*\r?\n(.*?)^```[ \t]*$")
ENTITY_REFERENCE = re.compile(r"^ENT-\d{6}$")
EMBEDDED_REFERENCE = re.compile(r"ENT-\d{6}")
CAST_FILE = "135_CAST_IN_PLAY.md"
NPC_LEDGER = "130_NPCS_AND_FACTIONS.md"
# Deliberately short. The roster's job is to name the cast, not to retell it: a
# location that runs to a paragraph belongs in the record the encounter fetches.
LOCATION_LIMIT = 64

# Decision 091's character model, in the order the Resident Core reads them.
DISPOSITION_FIELDS = ("want", "fear", "secret", "voice")

# A disposition field runs to a paragraph in the ledger -- Owen's `want` is four
# sentences with two Event citations -- so the cell carries its LEAD, not the
# field. Every authored disposition in the live corpus opens with a bolded
# thesis: "**To be judged on what someone watched him do.**", "**Something for
# Nadia.**", "**Unauthored.**". That opening is a hand-written precis and is
# better than anything truncation produces, so it is what this reads.
#
# The fallback exists so an unbolded field still renders something, and it is
# deliberately worse-looking: a machine-cut clause next to a column of authored
# leads reads as unfinished, which is the correct signal about the record.
DISPOSITION_LEAD = re.compile(r"^\s*\*\*(?P<lead>[^*].*?)\*\*", re.DOTALL)
DISPOSITION_LIMIT = 96

# A field may be authored and still say that canon establishes nothing -- the
# ledger's convention is an explicit `**Unauthored.**` or `**Unestablished.**`,
# which is better than an empty field because it distinguishes a gap canon owns
# from one an author overlooked, and tells a Runtime to author at the turn
# (Decision 092).
#
# The coverage counters below are the BACKFILL WORKLIST, so they must not count
# those as covered. Doing so reported a cast as fully authored when a third of it
# had been deliberately marked as having nothing to author from, which is exactly
# the reading the worklist exists to prevent.
DISPOSITION_UNESTABLISHED = re.compile(
    r"^\s*(?:\*\*)?(?:Unauthored|Unestablished|Not established|Barely established)",
    re.IGNORECASE,
)


def parse_blocks(path: Path) -> list[dict[str, Any]]:
    """Every well-formed mapping block in a ledger, in file order.

    A block that does not parse is skipped rather than fatal: block structure is
    owned by `validate_object_blocks.py`, and this generator must not become a
    second, weaker opinion about it.
    """
    blocks: list[dict[str, Any]] = []
    for body in FENCE.findall(read_text(path)):
        try:
            parsed = yaml.safe_load(body)
        except yaml.YAMLError:
            continue
        if isinstance(parsed, dict):
            blocks.append(parsed)
    return blocks


def display_name(block: dict[str, Any]) -> str | None:
    aliases = block.get("aliases")
    if not isinstance(aliases, list):
        return None
    current = None
    for alias in aliases:
        if not isinstance(alias, dict):
            continue
        name = alias.get("name")
        if not isinstance(name, str) or not name.strip():
            continue
        if alias.get("quality") == "current":
            return name.strip()
        current = current or name.strip()
    return current


def name_table(root: Path, campaign: str, world: str) -> dict[str, str]:
    """Identifier -> display name, across the files a location can point into."""
    names: dict[str, str] = {}
    sources = [
        f"{campaign}/{NPC_LEDGER}",
        f"{campaign}/100_CHARACTER_SHEET.md",
        f"{campaign}/110_WORLD_LEDGER.md",
        f"{world}/210_PLACES.md",
        f"{world}/220_NOTABLE_FIGURES.md",
    ]
    for source in sources:
        path = resolve_repo_path(root, source)
        if not path.is_file():
            continue
        for block in parse_blocks(path):
            identifier = block.get("id")
            if not isinstance(identifier, str):
                continue
            name = display_name(block)
            if name and identifier not in names:
                names[identifier] = name
    return names


def collapse(value: str) -> str:
    return " ".join(str(value).split())


def render_location(value: Any, names: dict[str, str]) -> str:
    """A location cell.

    The field is heterogeneous by design: canon records either a bare entity
    reference or prose that names a place the world has not made an entity. Both
    are legitimate, so both are rendered -- a reference resolves to its name, and
    prose is trimmed to its leading clause.
    """
    if value is None:
        return "unrecorded"
    text = collapse(value)
    if not text:
        return "unrecorded"
    if ENTITY_REFERENCE.match(text):
        return names.get(text, text)
    embedded = EMBEDDED_REFERENCE.search(text)
    if embedded and embedded.group(0) in names:
        return names[embedded.group(0)]
    clause = re.split(r"[;(]", text, maxsplit=1)[0].strip().rstrip(",")
    if len(clause) > LOCATION_LIMIT:
        clause = clause[: LOCATION_LIMIT - 1].rstrip() + "…"
    return clause or "unrecorded"


def render_disposition(value: Any) -> str:
    """One disposition cell: the field's bolded lead, or a trimmed first clause."""
    if value is None:
        return ""
    text = collapse(value)
    if not text:
        return ""
    lead = DISPOSITION_LEAD.match(text)
    clause = lead.group("lead").strip() if lead else re.split(r"(?<=[.!?]) ", text, maxsplit=1)[0].strip()
    # Trailing punctuation is noise once the cell is the whole statement, but a
    # lead ending in "?" or "!" is saying something and keeps it.
    clause = clause.rstrip(".").strip()
    if len(clause) > DISPOSITION_LIMIT:
        clause = clause[: DISPOSITION_LIMIT - 1].rstrip() + "…"
    return clause


def escape_cell(value: str) -> str:
    return value.replace("|", "\\|")


def build_rows(
    root: Path, campaign: str, world: str, protagonist: str | None
) -> tuple[list[str], int, int]:
    ledger = resolve_repo_path(root, f"{campaign}/{NPC_LEDGER}")
    blocks = parse_blocks(ledger)
    names = name_table(root, campaign, world)

    # A relationship is only listed when it reaches the protagonist. An NPC-to-NPC
    # tie is real canon, but it is not what a narrator needs before speaking as
    # this NPC to this player.
    relationships: dict[str, list[str]] = {}
    relationship_count = 0
    for block in blocks:
        identifier = block.get("id")
        if not isinstance(identifier, str) or not identifier.startswith("REL-"):
            continue
        endpoints = block.get("endpoints")
        if not isinstance(endpoints, list) or protagonist not in endpoints:
            continue
        relationship_count += 1
        for endpoint in endpoints:
            if isinstance(endpoint, str) and endpoint != protagonist:
                relationships.setdefault(endpoint, []).append(identifier)

    rows: list[str] = []
    disposition_rows: list[str] = []
    entity_count = 0
    characters = 0
    fully_authored = 0
    unauthored = 0
    for block in blocks:
        identifier = block.get("id")
        if not isinstance(identifier, str) or not identifier.startswith("ENT-"):
            continue
        entity_count += 1
        state = block.get("canonical_state")
        state = state if isinstance(state, dict) else {}
        kind = collapse(block.get("subtype") or block.get("type") or "unrecorded")
        status = collapse(block.get("lifecycle") or block.get("status") or "unrecorded")
        tie = ", ".join(f"`{value}`" for value in sorted(relationships.get(identifier, [])))
        name = escape_cell(display_name(block) or identifier)
        rows.append(
            "| `{id}` | {name} | {kind} | {status} | {location} | {tie} |".format(
                id=identifier,
                name=name,
                kind=escape_cell(kind),
                status=escape_cell(status),
                location=escape_cell(render_location(state.get("location"), names)),
                tie=tie or "—",
            )
        )

        # Characters only. A gear vendor, a Gate site and an institution are all
        # ENT- entities with a legitimate place in the roster above, and none of
        # them wants, fears or hides anything -- Decision 092 scopes disposition
        # coverage to a Character a Runtime will play, and so does this table.
        if collapse(block.get("type") or "") != "Character":
            continue
        characters += 1
        cells = [render_disposition(state.get(field)) for field in DISPOSITION_FIELDS]
        authored = sum(
            1 for cell in cells
            if cell and not DISPOSITION_UNESTABLISHED.match(cell)
        )
        if authored == len(DISPOSITION_FIELDS):
            fully_authored += 1
        elif authored == 0:
            unauthored += 1
        disposition_rows.append(
            "| `{id}` | {name} | {cells} |".format(
                id=identifier,
                name=name,
                cells=" | ".join(escape_cell(cell) if cell else "—" for cell in cells),
            )
        )

    coverage = {
        "characters": characters,
        "full": fully_authored,
        "none": unauthored,
        "partial": characters - fully_authored - unauthored,
    }
    return rows, disposition_rows, entity_count, relationship_count, coverage


def render(
    campaign: str,
    rows: list[str],
    disposition_rows: list[str],
    entities: int,
    relationships: int,
    coverage: dict[str, int],
) -> str:
    lines = [
        "# Chronicle Engine",
        "",
        f"## Cast in Play — `{campaign}/`",
        "",
        f"**File:** `{campaign}/{CAST_FILE}`",
        "**Status:** Active",
        "**Authority:** Non-canonical derived artifact",
        "**Generated by:** `tools/generate_campaign_cast.ps1`",
        "",
        "---",
        "",
        "# Purpose",
        "",
        f"Every entity recorded in `{NPC_LEDGER}`, one row each. This is the "
        "readiness-weight index of who exists; it is **not** the record. Before an "
        "NPC's first line in a scene, load that entity's block, and any "
        "relationship it holds with the protagonist, from the ledger itself "
        "(Resident Core, *Load a Recorded NPC Before Playing It*).",
        "",
        "Rows are generated and never edited directly. Update the ledger, then "
        "regenerate. Where this file and the ledger disagree, the ledger governs.",
        "",
        "A blank relationship cell means no relationship with the protagonist is "
        "recorded — not that the two have never met. Location is last-recorded "
        "canon, not a live position.",
        "",
        "---",
        "",
        "# Cast",
        "",
        "| Entity | Name | Kind | Status | Last recorded location | With protagonist |",
        "|---|---|---|---|---|---|",
    ]
    lines.extend(rows)
    lines.extend(
        [
            "",
            "---",
            "",
            "# Disposition",
            "",
            "What each Character wants, fears, hides, and sounds like: the lead of "
            "each field, taken from the record (Data Model Section 7.7, Decision "
            "091). **This is not the record** — load the entity block before the "
            "NPC's first line, as *Play the Character, Not a Filtered You* requires. "
            "It is the surface that makes the whole cast affordable to know at "
            "once, against a per-NPC fetch that costs orders of magnitude more.",
            "",
            "A blank cell is a field the ledger does not author. Below the "
            "campaign's declared `disposition_baseline` that is expected rather "
            "than a defect — coverage is prospective (Decision 092) — but it is "
            "still an NPC that can only answer, so the blanks are the backfill "
            "worklist and are printed rather than hidden.",
            "",
            "| Entity | Name | Want | Fear | Secret | Voice |",
            "|---|---|---|---|---|---|",
        ]
    )
    lines.extend(disposition_rows)
    lines.extend(
        [
            "",
            "---",
            "",
            "# Maintenance",
            "",
            "- Generation schema: `1.1`.",
            f"- Entities: {entities}. Protagonist relationships: {relationships}.",
            f"- Characters: {coverage['characters']}. Disposition authored in full: "
            f"{coverage['full']}; partial: {coverage['partial']}; none: "
            f"{coverage['none']}. A field declaring itself unauthored or "
            "unestablished counts as not authored here — the count is the "
            "backfill worklist, not a completeness score.",
            "- Run `tools/generate_campaign_cast.ps1` after any change to "
            f"`{NPC_LEDGER}`; the save operation plan runs it at every checkpoint.",
            "- Run `tools/generate_campaign_cast.ps1 -Check` to verify byte-for-byte "
            "synchronization. Repository validation runs the same check.",
            "",
        ]
    )
    return "\n".join(lines)


def campaign_targets(root: Path, requested: list[str] | None) -> list[Path]:
    startups = sorted((root / "campaigns").glob("*/090_CAMPAIGN_STARTUP.md"))
    if not requested:
        return startups
    wanted = {normalize_repo_path(value).split("/")[-1] for value in requested}
    return [startup for startup in startups if startup.parent.name in wanted]


def generate(root: Path, requested: list[str] | None, check: bool) -> tuple[int, list[str]]:
    messages: list[str] = []
    failures: list[str] = []
    for startup in campaign_targets(root, requested):
        config_failures: list[str] = []
        config = load_single_fenced_yaml(startup, config_failures)
        if config is None:
            failures.extend(config_failures)
            continue
        campaign = normalize_repo_path(str(config.get("campaign", "")))
        world = normalize_repo_path(str(config.get("world", "")))
        protagonist = config.get("default_protagonist")
        if not campaign or not world:
            failures.append(f"{startup.as_posix()}: campaign and world are required")
            continue
        if not resolve_repo_path(root, f"{campaign}/{NPC_LEDGER}").is_file():
            continue
        rows, disposition_rows, entities, relationships, coverage = build_rows(
            root, campaign, world, protagonist if isinstance(protagonist, str) else None
        )
        expected = render(
            campaign, rows, disposition_rows, entities, relationships, coverage
        )
        output = resolve_repo_path(root, f"{campaign}/{CAST_FILE}")
        if check:
            actual = read_text(output) if output.is_file() else ""
            if actual.replace("\r\n", "\n") != expected:
                failures.append(
                    f"{campaign}/{CAST_FILE} is not synchronized with {NPC_LEDGER}"
                )
            continue
        output.write_text(expected, encoding="utf-8", newline="\n")
        messages.append(
            f"Generated {campaign}/{CAST_FILE} "
            f"({entities} entities, {len(expected.encode('utf-8'))} bytes)"
        )
    return (1 if failures else 0), (failures if failures else messages)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repository-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--campaign", action="append", dest="campaigns")
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()

    root = Path(args.repository_root).resolve()
    try:
        code, messages = generate(root, args.campaigns, args.check)
    except (OSError, ValueError) as exc:
        print(f"Campaign cast generation FAILED: {exc}", file=sys.stderr)
        return 2

    if code:
        print(f"Campaign cast generation FAILED ({len(messages)} error(s))", file=sys.stderr)
        for message in messages:
            print(f"  - {message}", file=sys.stderr)
        print(
            "  Run tools/generate_campaign_cast.ps1 to regenerate.",
            file=sys.stderr,
        )
        return 1
    if args.check:
        print("Campaign cast generation check PASSED")
        return 0
    for message in messages:
        print(message)
    return 0


if __name__ == "__main__":
    sys.exit(main())
